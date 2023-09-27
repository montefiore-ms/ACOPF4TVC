using CSV, JuMP, JSON, Dates, KNITRO, PowerModels, ProgressBars, Suppressor

#=
Julia v1.2.0; CSV v0.5.23; JuMP v0.20.1; JSON v0.20.1; KNITRO v0.10.0;
PowerModels v0.14.3; ProgressBars v1.4.1; Suppressor v0.2.0
=#

#--
include("functions/io/cfigure.jl")
include("functions/io/grid_builder.jl")
include("functions/io/parse_shunts.jl")
include("functions/io/output_files.jl")
include("functions/models/acopf_icentral_v2.jl")
include("functions/models/round_shunts.jl")
#--


#--
config=cfigure("data/acopf4tvc_config.json")
now = DateTime(Dates.now())
mydate=Dates.format(now, "dd-mm-yyyy[HH-MM]")
PowerModels.silence()
#--

logf=open(joinpath(string(config["output_directory"],"/log_",mydate,".dat")),"w")
print(logf,config["mode"]," ",config["discrete_variables"],"\n")

print("--------------------------------------------------------------------------------------------")
print("\n")

cnt=0
filenames=readdir(config["input_matpower"])
for idx in ProgressBar(1:length(filenames))

    print(logf,"---")
    print(logf,"\n$(filenames[idx])")

    #--
    mat_sample=joinpath(config["input_matpower"],filenames[idx])
    gridnm=filenames[idx][1:(length(filenames[idx])-2)]
    shunts_fname=string(gridnm,".csv")

    matgrid=PowerModels.parse_file(mat_sample)
    matgrid=parse_shunts(matgrid,joinpath(string(config["input_shunts"],"/",shunts_fname))) #- acts on its input



    mygrid=grid_builder(matgrid)
    #- overriding bad voltage bounds
    for idx in keys(mygrid[:bus])
        if mygrid[:bus][idx]["vmin"]==mygrid[:bus][idx]["vmax"]
            mygrid[:bus][idx]["vmin"]=0.9
            mygrid[:bus][idx]["vmax"]=1.1
            print(logf,"\n-*** Bad voltage bounds bus $idx")
        end
    end


    mygrid[:system]=gridnm
    #-

    mygrid[:cetautomatix]="in_progress" #- using this for flow control


    if config["mode"]=="hard_constraints" || config["mode"]=="mixed"

        if config["discrete_variables"]!="Exhaustive" && config["discrete_variables"]!="exhaustive"

            print("\n - \n")
            dt = @elapsed acopf=acopf_icentral_v2(mygrid,config,"hard_constraints")  # mode intentionaly separated from config
            print("\n - \n")
            print(logf,"\n-[hard_constraints+$(config["discrete_variables"])]: $(acopf[:termination_status]) $(round(acopf[:objective],digits=3))")
            global cnt+=1
            print("\n OPF counter is at $cnt \n")


            if  (acopf[:termination_status]==LOCALLY_SOLVED || acopf[:termination_status]==OPTIMAL)
                #-
                if (config["discrete_variables"]=="none" || config["discrete_variables"]=="None")
                    mygrid[:cetautomatix]="done"
                    output_files(matgrid,acopf,config, filenames[idx])
                    print("\n - \n")

                else    #if config["discrete_variables"]=="relaxed" || config["discrete_variables"]=="Relaxed"
                    mygrid,acopf=round_shunts(mygrid,acopf)

                    dfig=deepcopy(config)
                    dfig["discrete_variables"]="none"
                    print("\n - \n")
                    rnd_acopf=acopf_icentral_v2(mygrid,dfig,"hard_constraints")
                    print(logf,"\n-[hard_constraints+$(config["discrete_variables"])+rounding]: $(rnd_acopf[:termination_status]) $(round(rnd_acopf[:objective],digits=3))")
                    print("\n - \n")
                    global cnt+=1
                    print("\n OPF counter is at $cnt \n")

                    if rnd_acopf[:termination_status]==LOCALLY_SOLVED || rnd_acopf[:termination_status]==OPTIMAL
                        mygrid[:cetautomatix]="done"
                        output_files(matgrid,rnd_acopf,config, filenames[idx])
                        print("\n - \n")
                    else #-> infeasible instance after rounding
                            mygrid[:cetautomatix]="try_exhaustive"
                    end
                end # discrete variables

            end #termination status
        end # if !="exhaustive"


        if config["discrete_variables"]=="Exhaustive" || config["discrete_variables"]=="exhaustive" || mygrid[:cetautomatix]=="try_exhaustive"

            #- creating all the alternative grids
            altgrids=Dict()
            cnt=0
            for idx in keys(mygrid[:bus])
                if haskey(mygrid[:bus][idx],"bstep")
                    if mygrid[:bus][idx]["def_step"]+1<=mygrid[:bus][idx]["num_steps"]
                        #- creating an alternative grid by moving one step upwards
                        global cnt+=1
                        altgrids[cnt]=deepcopy(mygrid)
                        altgrids[cnt][:bus][idx]["bs"]+=altgrids[cnt][:bus][idx]["bstep"]
                    end

                    if mygrid[:bus][idx]["def_step"]-1>=0
                        #- creating an alternative grid by moving one step downwards
                        global cnt+=1
                        altgrids[cnt]=deepcopy(mygrid)
                        altgrids[cnt][:bus][idx]["bs"]-=altgrids[cnt][:bus][idx]["bstep"]
                    end
                end
            end

            #- ensuring that the config["discrete_variables"] is correct
            myconfig=deepcopy(config)
            myconfig["discrete_variables"]="exhaustive"

            #- solving the acopf problems
            myvals=Array{Any}(undef,0,2)
            myopfs=Dict()
            for idx in keys(altgrids)
                print("\n - \n")
                myopfs[idx]=acopf_icentral_v2(altgrids[idx],myconfig,"hard_constraints")  # mode intentionaly separated from config
                print("\n - \n")
                global cnt+=1
                print("\n OPF counter is at $cnt \n")
                if (myopfs[idx][:termination_status]==LOCALLY_SOLVED || myopfs[idx][:termination_status]==OPTIMAL)
                    myvals=vcat(myvals,[idx  myopfs[idx][:objective]])
                end
            end

            mrows,mcols=size(myvals)

            if mrows>=1
                myrow=findmin(myvals[:,2])[2]
                myopt=myvals[myrow,1]

                #- saving the solution
                output_files(matgrid,myopfs[myopt],config, filenames[idx])
                print("\n - \n")
                print(logf,"\n-[hard_constraints+$(config["discrete_variables"])]: $(myopfs[myopt][:termination_status]) $(round(myopfs[myopt][:objective],digits=3))")




                mygrid[:cetautomatix]="done"

            else
                print(logf,"\n-[hard_constraints+$(config["discrete_variables"])]: no feasible solution!")
            #    print(logf,"\n $(mygrid[:cetautomatix])")
            end
        end # if exhaustive/try exhaustive

    end #    if config["mode"]=="hard_constraints" || config["mode"]=="mixed"



    if config["mode"]=="soft_constraints" || (config["mode"]=="mixed" && mygrid[:cetautomatix]=="in_progress")


        if config["discrete_variables"]!="Exhaustive" && config["discrete_variables"]!="exhaustive"
            print("\n - \n")
            dt = @elapsed acopf=acopf_icentral_v2(mygrid,config,"soft_constraints")  # mode intentionaly separated from config
            print("\n - \n")
            print(logf,"\n-[soft_constraints+$(config["discrete_variables"])]: $(acopf[:termination_status]) $(round(acopf[:objective],digits=3))")
            global cnt+=1
            print("\n OPF counter is at $cnt \n")
            if (config["discrete_variables"]=="none" || config["discrete_variables"]=="None")
                mygrid[:cetautomatix]="done"
                output_files(matgrid,acopf,config, filenames[idx])
                print("\n - \n")
            elseif config["discrete_variables"]=="relaxed" || config["discrete_variables"]=="Relaxed"
                mygrid,acopf=round_shunts(mygrid,acopf)

                dfig=deepcopy(config)
                dfig["discrete_variables"]="none"
                print("\n - \n")
                rnd_acopf=acopf_icentral_v2(mygrid,dfig,"soft_constraints")
                print("\n - \n")
                global cnt+=1
                print("\n OPF counter is at $cnt \n")
                print(logf,"\n-[soft_constraints+$(config["discrete_variables"])+rounding]: $(rnd_acopf[:termination_status]) $(round(rnd_acopf[:objective],digits=3))")

                mygrid[:cetautomatix]="done"
                output_files(matgrid,acopf,config, filenames[idx])
                print("\n - \n")
            end

        else    #->  you only go this way to the exhaustive mode

            #- creating all the alternative grids
            altgrids=Dict()
            cnt=0
            for idx in keys(mygrid[:bus])
                if haskey(mygrid[:bus][idx],"bstep")
                    if mygrid[:bus][idx]["def_step"]+1<=mygrid[:bus][idx]["num_steps"]
                        #- creating an alternative grid by moving one step upwards
                        global cnt+=1
                        altgrids[cnt]=deepcopy(mygrid)
                        altgrids[cnt][:bus][idx]["bs"]+=altgrids[cnt][:bus][idx]["bstep"]
                    end

                    if mygrid[:bus][idx]["def_step"]-1>=0
                        #- creating an alternative grid by moving one step downwards
                        global cnt+=1
                        altgrids[cnt]=deepcopy(mygrid)
                        altgrids[cnt][:bus][idx]["bs"]-=altgrids[cnt][:bus][idx]["bstep"]
                    end
                end
            end

            #- ensuring that the config["discrete_variables"] is correct
            myconfig=deepcopy(config)
            myconfig["discrete_variables"]="exhaustive"

            #- solving the acopf problems
            myvals=Array{Any}(undef,0,2)
            myopfs=Dict()
            for idx in keys(altgrids)
                print("\n - \n")
                myopfs[idx]=acopf_icentral_v2(altgrids[idx],myconfig,"soft_constraints")  # mode intentionaly separated from config
                print("\n - \n")
                global cnt+=1
                print("\n OPF counter is at $cnt \n")
                if (myopfs[idx][:termination_status]==LOCALLY_SOLVED || myopfs[idx][:termination_status]==OPTIMAL)
                    myvals=vcat(myvals,[idx  myopfs[idx][:objective]])
                end
            end

            mrows,mcols=size(myvals)

            if mrows>=1
                myrow=findmin(myvals[:,2])[2]
                myopt=myvals[myrow,1]

                #- saving the solution
                output_files(matgrid,myopfs[myopt],config, filenames[idx])
                print("\n - \n")
                mygrid[:cetautomatix]="done"
                print(logf,"\n-[soft_constraints+$(config["discrete_variables"])]: $(myopfs[myopt][:termination_status]) $(round(myopfs[myopt][:objective],digits=3))")

            else
                print(logf,"\n-[soft_constraints+$(config["discrete_variables"])]: no feasible solution!")

            end




        end # if config["discrete_variables"]!="Exhaustive" && config["discrete_variables"]!="exhaustive"

    end



    print(logf,"\n")
    print(logf,"\nACOPF count: $cnt")
    print(logf,"\n")
end #- over different cases

close(logf)
#------------------------------------------------------------------------------#

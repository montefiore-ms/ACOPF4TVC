function output_files(inputgrid,myans,cdict,fname)


    ansgrid=deepcopy(inputgrid)

    for idx in keys(inputgrid["bus"])
        ansgrid["bus"][idx]["vm"]=0
        ansgrid["bus"][idx]["va"]=0
        ansgrid["bus"][idx]["bs"]=0
        ansgrid["bus"][idx]["gs"]=0

        akey=inputgrid["bus"][idx]["index"]
        ansgrid["bus"][idx]["vm"]=myans[:bus][akey]["vm"]
        ansgrid["bus"][idx]["va"]=myans[:bus][akey]["va"]


        if haskey(inputgrid["bus"][idx],"shunt_idx")

            sdx=inputgrid["bus"][idx]["shunt_idx"]

            ansgrid["shunt"]["$sdx"]["bs"]=myans[:bus][akey]["bs"]
            ansgrid["shunt"]["$sdx"]["gs"]=myans[:bus][akey]["gs"]
        end


    end


    for idx in keys(inputgrid["gen"])

        if inputgrid["gen"][idx]["gen_status"]>=1
            akey=inputgrid["gen"][idx]["index"]
            ansgrid["gen"][idx]["qg"]=myans[:gen][akey]["qg"]
        end

        bkey=inputgrid["gen"][idx]["gen_bus"]
        ansgrid["gen"][idx]["vg"]=myans[:bus][bkey]["vm"]

    end


    #- exporting the input grid (io demo): works with the matformat
    outf=open(joinpath(string(cdict["output_directory"],"\\",cdict["mode"],"\\matpower\\",fname)),"w")
    @suppress PowerModels.export_matpower(outf,ansgrid)
    close(outf)



    gridname=fname[1:(length(fname)-2)]

    #- copying the name & shunt files
    nfile_name=string(gridname,".json")
    nfile=joinpath(string(cdict["input_names"],"\\",nfile_name))

    ncopy=joinpath(string(cdict["output_directory"],"\\",cdict["mode"],"\\names\\",nfile_name))
    cp(nfile,ncopy,force=true)

    sfile_name=string(gridname,".csv")
    sfile=joinpath(string(cdict["input_shunts"],"\\",sfile_name))

    scopy=joinpath(string(cdict["output_directory"],"\\",cdict["mode"],"\\shunts\\",sfile_name))
    cp(sfile,scopy,force=true)


    return


end

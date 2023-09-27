function acopf_icentral_v2(CaseDB,cdict,mode)   #-> mode is intentionaly different from cdict

    cs_mdl = Model(KNITRO.Optimizer)
    if cdict["verbose"]==false
        MOI.set(cs_mdl, MOI.Silent(), true)
    end

    #-- continuous relaxation variables for shunts
    @variable(cs_mdl,gsnt[i in keys(CaseDB[:bus])])
    @variable(cs_mdl,bsnt[i in keys(CaseDB[:bus])])

    #--
    @variable(cs_mdl, dP)  #- active power losses compensated @ the slack bus
    @variable(cs_mdl,qg[i in keys(CaseDB[:gen])])   #- reactive power generated/absorbed

    #-- Q penalisation always included in the objective function
    @variable(cs_mdl, norm_qg[i in keys(CaseDB[:gen])]>=0) #-- aux. variable for the reactive power cost term
    @variable(cs_mdl, max1_qg[i in keys(CaseDB[:gen])]>=0) #-- aux. variable for the reactive power cost term
    @variable(cs_mdl, max2_qg[i in keys(CaseDB[:gen])]>=0) #-- aux. variable for the reactive power cost term


    @variable(cs_mdl, -6.28<=va[i in keys(CaseDB[:bus])]<=6.28) #- voltage angle
    @variable(cs_mdl, vm[i in keys(CaseDB[:bus])],start=1)

    if mode=="soft_constraints"
        @variable(cs_mdl, norm_vm[i in keys(CaseDB[:bus])]>=0) #-- aux. variable for the voltage cost term
        @variable(cs_mdl, max1_vm[i in keys(CaseDB[:bus])]>=0) #-- aux. variable for the voltage cost term
        @variable(cs_mdl, max2_vm[i in keys(CaseDB[:bus])]>=0) #-- aux. variable for the voltage cost term
    end

    @variable(cs_mdl, pfl[(l,i,j) in CaseDB[:arcs]]) #- active power flow (per arc = branch l & bus pair i,j)
    @variable(cs_mdl, qfl[(l,i,j) in CaseDB[:arcs]]) #- reactive power flow (per arc = branch l & bus pair i,j)

    @variable(cs_mdl, i_real[(l,i,j) in CaseDB[:arcs]])
    @variable(cs_mdl, i_img[(l,i,j) in CaseDB[:arcs]])

    if mode=="soft_constraints"
        @variable(cs_mdl, norm_i[(l,i,j) in CaseDB[:arcs]]>=0) #-- aux. variable for the current cost term
        @variable(cs_mdl, max_i[(l,i,j) in CaseDB[:arcs]]>=0) #-- aux. variable for the current cost term
        @variable(cs_mdl,branch_cost[i in keys(CaseDB[:branch])]>=0)
    end

    #--

    #--
    loadsum=0
    for i in keys(CaseDB[:bus])
        loadsum+=CaseDB[:bus][i]["pd"]

        bus_arcs = CaseDB[:bus_arcs][i]   #- defines arcs out of bus i
        bus_gens = CaseDB[:bus_gens][i]   #- defines gens connected to bus i

        if haskey(CaseDB[:ref_buses],i)
            #- reference 4 voltage angles
            @constraint(cs_mdl, RefV[i in keys(CaseDB[:ref_buses])], va[i]==0)
            #- active power balance @ slack bus
            @NLconstraint(cs_mdl, sum(pfl[a] for a in bus_arcs) == dP + sum(CaseDB[:gen][g]["pg"] for g in bus_gens if CaseDB[:gen][g]["gen_status"]==1) - CaseDB[:bus][i]["pd"] - gsnt[i]*vm[i]^2)  #
        else
            #- active power balance @ any other bus
            @NLconstraint(cs_mdl, sum(pfl[a] for a in bus_arcs) ==  sum(CaseDB[:gen][g]["pg"] for g in bus_gens if CaseDB[:gen][g]["gen_status"]==1) - CaseDB[:bus][i]["pd"] - gsnt[i]*vm[i]^2)  #
        end

        #- reactive power balance
        @NLconstraint(cs_mdl, sum(qfl[a] for a in bus_arcs) == sum(qg[g] for g in bus_gens if  CaseDB[:gen][g]["gen_status"]==1) - CaseDB[:bus][i]["qd"] +bsnt[i]*vm[i]^2)


        #-- voltage constraints
        if mode=="hard_constraints"
            @constraint(cs_mdl,vm[i]<=CaseDB[:bus][i]["vmax"])
            @constraint(cs_mdl,vm[i]>=CaseDB[:bus][i]["vmin"])

        elseif  mode=="soft_constraints"
            #-- auxiliary variables for the voltage cost term
            @constraint(cs_mdl,norm_vm[i]==(vm[i]- CaseDB[:bus][i]["vmin"])/(CaseDB[:bus][i]["vmax"]-CaseDB[:bus][i]["vmin"]))
            @constraint(cs_mdl, max1_vm[i]>=norm_vm[i]- (1-cdict["objective_parameters"]["epsilon_v"]))
            @constraint(cs_mdl, max2_vm[i]>=cdict["objective_parameters"]["epsilon_v"]-norm_vm[i])
        end


        #-- shunt constraints
        if cdict["discrete_variables"]=="relaxed" || cdict["discrete_variables"]=="Relaxed"

            #- continuous relaxation mode

            @constraint(cs_mdl,gsnt[i]==CaseDB[:bus][i]["gs"])

            if haskey(CaseDB[:bus][i],"bstep") && CaseDB[:bus][i]["bs"]<=-0.0001
                @constraint(cs_mdl,bsnt[i]<=0)
                @constraint(cs_mdl,bsnt[i]>=CaseDB[:bus][i]["bstep"]*CaseDB[:bus][i]["num_steps"])
            elseif haskey(CaseDB[:bus][i],"bstep") &&  CaseDB[:bus][i]["bs"]>=0.0
                @constraint(cs_mdl,bsnt[i]>=0)
                @constraint(cs_mdl,bsnt[i]<=CaseDB[:bus][i]["bstep"]*CaseDB[:bus][i]["num_steps"])
            else


        #        print("\n***Bus $i    ")



                @constraint(cs_mdl,bsnt[i]==CaseDB[:bus][i]["bs"]) #- can't optimize these
            end
            #--

        else #-> exhaustive/none = fixed as per default data

            @constraint(cs_mdl,bsnt[i]==CaseDB[:bus][i]["bs"]) #- can't optimize these
            @constraint(cs_mdl,gsnt[i]==CaseDB[:bus][i]["gs"]) #- can't optimize these

        end



    end
    #--

    #--
    for (i,gen) in CaseDB[:gen]

        if  CaseDB[:gen][i]["gen_status"]==0
            @constraint(cs_mdl,qg[i]==0)
        end

        @constraint(cs_mdl, qg[i] <=gen["qmax"])
        @constraint(cs_mdl, qg[i] >=gen["qmin"])

        #-- Q penalisation always included in the objective function
        @constraint(cs_mdl,norm_qg[i]==(qg[i]- gen["qmin"])/(gen["qmax"]-gen["qmin"]))
        @constraint(cs_mdl, max1_qg[i]>=norm_qg[i]- (1-cdict["objective_parameters"]["epsilon_q"]))
        @constraint(cs_mdl, max2_qg[i]>=cdict["objective_parameters"]["epsilon_q"]-norm_qg[i])

    end
    #--


    #--
    for (i,branch) in CaseDB[:branch]
        #- shorthands
        f_idx = (i, branch["f_bus"], branch["t_bus"])
        t_idx = (i, branch["t_bus"], branch["f_bus"])
        r = branch["br_r"]
        x = branch["br_x"]
        ttap = branch["tap"]
        tang = branch["shift"]
        g =  r/(x^2 + r^2)
        b = -x/(x^2 + r^2)
        tm = branch["tap"]^2
        g_fr=branch["g_fr"]
        g_to=branch["g_to"]
        b_fr=branch["b_fr"]
        b_to=branch["b_to"]
        #-

        #- active/reactive flow definitions
        if  CaseDB[:branch][i]["br_status"]==0
            @constraint(cs_mdl,pfl[f_idx] ==0)
            @constraint(cs_mdl,pfl[t_idx] ==0)
            @constraint(cs_mdl,qfl[f_idx] ==0)
            @constraint(cs_mdl,qfl[t_idx] ==0)
        else
            @NLconstraint(cs_mdl, pfl[f_idx] ==(g+g_fr)*(vm[branch["f_bus"]]/ttap)^2-(vm[branch["f_bus"]]*vm[branch["t_bus"]]/ttap)*(g*cos(va[branch["f_bus"]]-va[branch["t_bus"]]-tang)-b*sin(va[branch["f_bus"]]-va[branch["t_bus"]]-tang)))
            @NLconstraint(cs_mdl, pfl[t_idx] == (g+g_to)*(vm[branch["t_bus"]])^2-(vm[branch["f_bus"]]*vm[branch["t_bus"]]/ttap)*(g*cos(va[branch["t_bus"]]+tang-va[branch["f_bus"]])-b*sin(va[branch["t_bus"]]+tang-va[branch["f_bus"]])))
            @NLconstraint(cs_mdl, qfl[f_idx] ==-(b+b_fr)*(vm[branch["f_bus"]]/ttap)^2+(vm[branch["f_bus"]]*vm[branch["t_bus"]]/ttap)*(g*sin(va[branch["f_bus"]]-va[branch["t_bus"]]-tang)+b*cos(va[branch["f_bus"]]-va[branch["t_bus"]]-tang)))
            @NLconstraint(cs_mdl, qfl[t_idx] ==-(b+b_to)*(vm[branch["t_bus"]])^2+(vm[branch["f_bus"]]*vm[branch["t_bus"]]/ttap)*(g*sin(va[branch["t_bus"]]+tang-va[branch["f_bus"]])+b*cos(va[branch["t_bus"]]+tang-va[branch["f_bus"]])))
        end
        #-




        if mode=="hard_constraints"

            #-- current constraints
            @NLconstraint(cs_mdl, pfl[f_idx]^2 + qfl[f_idx]^2 <=(vm[branch["f_bus"]]^2)*branch["rate_a"]^2)
            @NLconstraint(cs_mdl, pfl[t_idx]^2 + qfl[t_idx]^2 <=(vm[branch["t_bus"]]^2)*branch["rate_a"]^2)

        elseif mode=="soft_constraints"
            @NLconstraint(cs_mdl,norm_i[f_idx]==(1/branch["rate_a"]^2)*(pfl[f_idx]^2 + qfl[f_idx]^2)/vm[branch["f_bus"]]^2)
            @NLconstraint(cs_mdl,norm_i[t_idx]==(1/branch["rate_a"]^2)*(pfl[t_idx]^2 + qfl[t_idx]^2)/vm[branch["t_bus"]]^2)
            @NLconstraint(cs_mdl,max_i[f_idx]>=norm_i[f_idx]-(1-cdict["objective_parameters"]["epsilon_i"]))
            @NLconstraint(cs_mdl,max_i[t_idx]>=norm_i[t_idx]-(1-cdict["objective_parameters"]["epsilon_i"]))

            @constraint(cs_mdl,branch_cost[i]>= max_i[f_idx]*max_i[f_idx]+ max_i[t_idx]*max_i[t_idx])
        end




    end
    #--



    #--
    @expression(cs_mdl,flowdif[i in keys(CaseDB[:branch])], (pfl[(CaseDB[:branch][i]["index"], CaseDB[:branch][i]["f_bus"], CaseDB[:branch][i]["t_bus"])]+ pfl[(CaseDB[:branch][i]["index"], CaseDB[:branch][i]["t_bus"], CaseDB[:branch][i]["f_bus"])]) )

    if mode=="hard_constraints"
        @objective(cs_mdl, Min,
        sum(flowdif[i] for i in keys(CaseDB[:branch]) if  CaseDB[:branch][i]["br_status"]==1)/loadsum
        #        +cdict["objective_parameters"]["w"]["reactive"]*sum(max1_qg[i]*max1_qg[i]+max2_qg[i]*max2_qg[i]  for i in keys(CaseDB[:gen])  if  CaseDB[:gen][i]["gen_status"]==1)/length(keys(CaseDB[:gen]))
        )

    elseif mode =="soft_constraints"

        @objective(cs_mdl, Min,
        sum(flowdif[i] for i in keys(CaseDB[:branch]))/loadsum
        +cdict["objective_parameters"]["lambda_v"]*sum(max1_vm[i]*max1_vm[i]+max2_vm[i]*max2_vm[i]  for i in keys(CaseDB[:bus]))/length(keys(CaseDB[:bus]))
        +cdict["objective_parameters"]["lambda_q"]*sum(max1_qg[i]*max1_qg[i]+max2_qg[i]*max2_qg[i]  for i in keys(CaseDB[:gen])  if  CaseDB[:gen][i]["gen_status"]==1)/length(keys(CaseDB[:gen]))
        +cdict["objective_parameters"]["lambda_i"]*sum(branch_cost[i]  for i in keys(CaseDB[:branch]) if  CaseDB[:branch][i]["br_status"]==1)/2*length(keys(CaseDB[:branch]))
        )
    end

    optimize!(cs_mdl)

#    print(cs_mdl)

    #--



    solution=Dict()
    solution[:objective]=(JuMP.objective_value(cs_mdl))
    solution[:termination_status]=JuMP.termination_status(cs_mdl)
    solution[:model]="cs_mdl"
    if mode=="hard_constraints"
        solution[:vcost]="n/a"
        solution[:qcost]="n/a"
        solution[:icost]="n/a"
    else
        solution[:vcost]=0
        solution[:qcost]=0
        solution[:icost]=0

    end

    solution[:gen]=Dict()
    #
    for idx in keys(CaseDB[:gen])
        solution[:gen][idx]=Dict()

        solution[:gen][idx]["qg"]=JuMP.value(qg[idx])
        gbus=CaseDB[:gen][idx]["gen_bus"]
        solution[:gen][idx]["vg"]=JuMP.value(vm[gbus])

        if mode=="soft_constraints"
            solution[:qcost]+=(JuMP.value(max1_qg[idx])*JuMP.value(max1_qg[idx])+JuMP.value(max2_qg[idx])*JuMP.value(max2_qg[idx]))/length(keys(CaseDB[:gen]))
        end

    end


    totload=0
    solution[:bus]=Dict()
    for idx in keys(CaseDB[:bus])
        totload+=CaseDB[:bus][idx]["pd"]
        solution[:bus][idx]=Dict()
        solution[:bus][idx]["va"]=JuMP.value(va[idx])
        solution[:bus][idx]["vm"]=JuMP.value(vm[idx])
        solution[:bus][idx]["bs"]=JuMP.value(bsnt[idx])
        solution[:bus][idx]["gs"]=JuMP.value(gsnt[idx])

        if mode=="soft_constraints"
            solution[:vcost]+=(JuMP.value(max1_vm[idx])*JuMP.value(max1_vm[idx])+JuMP.value(max2_vm[idx])*JuMP.value(max2_vm[idx]))/length(keys(CaseDB[:bus]))
        end

    end



    solution[:branch]=Dict()
    solution[:losses]=Dict()
    solution[:losses][:abs]=0
    for (i,branch) in CaseDB[:branch]
        f_idx = (i, branch["f_bus"], branch["t_bus"])
        t_idx = (i, branch["t_bus"], branch["f_bus"])
        g_fr=branch["g_fr"]
        g_to=branch["g_to"]
        b_fr=branch["b_fr"]
        b_to=branch["b_to"]

        solution[:branch][i]=Dict()
        solution[:branch][i]["pf_from"]=JuMP.value(pfl[f_idx])
        solution[:branch][i]["pf_to"]=JuMP.value(pfl[t_idx])
        solution[:branch][i]["loss"]=abs(JuMP.value(pfl[f_idx])+JuMP.value(pfl[t_idx]))
        solution[:losses][:abs]+=round(solution[:branch][i]["loss"],digits=3)



        if mode=="soft_constraints"
            solution[:icost]+=JuMP.value(branch_cost[i])/2*length(keys(CaseDB[:branch]))
        end


    end
    solution[:losses][:pcent]=round(100*solution[:losses][:abs]/totload,digits=3)


    return solution

end

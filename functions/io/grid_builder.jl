function grid_builder(inputgrid)


        #- assigning [Pd,Qd] & shunts to the original buses
        for idx in keys(inputgrid["bus"])
            if haskey(inputgrid["bus"][idx],"pd")==:false
                inputgrid["bus"][idx]["pd"]=0.0
                inputgrid["bus"][idx]["qd"]=0.0
            end
        end

        for idx in keys(inputgrid["load"]) #-- remember, you can have more than 1 load per bus  (use += expressions here)
            thisbus=inputgrid["load"][idx]["load_bus"]
            inputgrid["bus"]["$thisbus"]["pd"]+=inputgrid["load"][idx]["pd"]
            inputgrid["bus"]["$thisbus"]["qd"]+=inputgrid["load"][idx]["qd"]
        end

        for idx in keys(inputgrid["shunt"])
            thisbus=inputgrid["shunt"][idx]["shunt_bus"]
            inputgrid["bus"]["$thisbus"]["bs"]=inputgrid["shunt"][idx]["bs"]
            inputgrid["bus"]["$thisbus"]["gs"]=inputgrid["shunt"][idx]["gs"]
        end

        #- buses with no shunt are still missing the keys
        for idx in keys(inputgrid["bus"])
            if haskey(inputgrid["bus"][idx],"bs")==:false
                inputgrid["bus"][idx]["bs"]=0.0
                inputgrid["bus"][idx]["gs"]=0.0
            end
        end

        refdict= PowerModels.build_ref(inputgrid)
        refdict=deepcopy(refdict)
        refdict=refdict[:it][:pm][:nw][0]  #-- to match the new version of the PowerModels output

       @suppress begin
            refdict[:gen]=sort(refdict[:gen])
            refdict[:bus]=sort(refdict[:bus])
            refdict[:branch]=sort(refdict[:branch])

        end

    return refdict

end

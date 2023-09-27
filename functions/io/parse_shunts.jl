function parse_shunts(inputgrid,shunt_file_path)

    my_shunts=Dict()
    skeys=0


    for row in CSV.File(shunt_file_path, header=["col1", "col2", "col3", "col4", "col5", "col6"], datarow=2)


        status=row.col6

        if status       # =="True" || status=="TRUE"  || status=="true" #- shunt is online

            skeys+=1
            matched=false

            for jdx in keys(inputgrid["shunt"])

                if inputgrid["shunt"][jdx]["shunt_bus"]==row.col1+1 #-> Existing shunt matches Balthazar's shunt

                    inputgrid["shunt"][jdx]["bstep"]=row.col2/inputgrid["baseMVA"]     #- @step 1
                    inputgrid["shunt"][jdx]["gstep"]=row.col3/inputgrid["baseMVA"]     #- @step 1
                    inputgrid["shunt"][jdx]["vnom"]=row.col4
                    inputgrid["shunt"][jdx]["num_steps"]=row.col5

                    myvalue=inputgrid["shunt"][jdx]["bs"]/inputgrid["shunt"][jdx]["bstep"]
                    residual=round(myvalue-round(myvalue,RoundDown,digits=0),digits=3)
                    if residual>=0.5
                        inputgrid["shunt"][jdx]["def_step"]=convert(Int64,round(myvalue,RoundUp,digits=0))
                    else
                        inputgrid["shunt"][jdx]["def_step"]=convert(Int64,round(myvalue,RoundDown,digits=0))
                    end

                    #-- defining some additional keys for the respective bus
                     inputgrid["bus"]["$(row.col1+1)"]["shunt_idx"]=jdx
                    inputgrid["bus"]["$(row.col1+1)"]["bstep"]=row.col2/inputgrid["baseMVA"]
                    inputgrid["bus"]["$(row.col1+1)"]["gstep"]=row.col3/inputgrid["baseMVA"]
                    inputgrid["bus"]["$(row.col1+1)"]["num_steps"]=row.col5
                    inputgrid["bus"]["$(row.col1+1)"]["def_step"]=inputgrid["shunt"][jdx]["def_step"]
                    matched=true
                    break
                end
            end

            if matched==false  #-> No exhisting shunt matches with Balthazar's shunt

                nidx=length(keys(inputgrid["shunt"]))+1

                inputgrid["shunt"]["$nidx"]=Dict{String,Any}()
                inputgrid["shunt"]["$nidx"]["shunt_bus"]=row.col1+1
                inputgrid["shunt"]["$nidx"]["source_id"]=Any["bus",row.col1+1]
                inputgrid["shunt"]["$nidx"]["status"]=1
                inputgrid["shunt"]["$nidx"]["gs"]=0
                inputgrid["shunt"]["$nidx"]["bs"]=0
                inputgrid["shunt"]["$nidx"]["index"]=nidx


                inputgrid["shunt"]["$nidx"]["bstep"]=row.col2/inputgrid["baseMVA"]     #- @step 1
                inputgrid["shunt"]["$nidx"]["gstep"]=row.col3/inputgrid["baseMVA"]     #- @step 1
                inputgrid["shunt"]["$nidx"]["vnom"]=row.col4
                inputgrid["shunt"]["$nidx"]["num_steps"]=row.col5
                inputgrid["shunt"]["$nidx"]["def_step"]=0

                #-- defining some additional keys for the respective bus
                inputgrid["bus"]["$(row.col1+1)"]["shunt_idx"]=nidx
                inputgrid["bus"]["$(row.col1+1)"]["bstep"]=row.col2/inputgrid["baseMVA"]
                inputgrid["bus"]["$(row.col1+1)"]["gstep"]=row.col3/inputgrid["baseMVA"]
                inputgrid["bus"]["$(row.col1+1)"]["num_steps"]=row.col5
                inputgrid["bus"]["$(row.col1+1)"]["def_step"]=0
            end




        end
    end


    return inputgrid

end

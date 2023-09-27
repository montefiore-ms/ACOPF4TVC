function round_shunts(CaseDB,ans)

    my_shunts=Dict()
    skeys=0


    for idx in keys(CaseDB[:bus])

        if haskey(CaseDB[:bus][idx],"shunt_idx")

            #        print("\nRounding @ bus $idx $(ans[:bus][idx]["bs"])")
            ans[:bus][idx]["cont_bs"]=ans[:bus][idx]["bs"]

            if ans[:bus][idx]["cont_bs"]==0

                ans[:bus][idx]["bs"]=convert(Int64,0)
                ans[:bus][idx]["opt_step"]=0
                ans[:bus][idx]["bs"]=convert(Int64,0)
            else

                myvalue=ans[:bus][idx]["bs"]/CaseDB[:bus][idx]["bstep"]
                residual=round(myvalue-round(myvalue,RoundDown,digits=0),digits=3)



                if residual>=0.5
                    ans[:bus][idx]["opt_step"]=convert(Int64,round(myvalue,RoundUp,digits=0))
                else
                    ans[:bus][idx]["opt_step"]=convert(Int64,round(myvalue,RoundDown,digits=0))
                end

                ans[:bus][idx]["bs"]=ans[:bus][idx]["opt_step"]*CaseDB[:bus][idx]["bstep"]
                CaseDB[:bus][idx]["bs"]=ans[:bus][idx]["opt_step"]*CaseDB[:bus][idx]["bstep"]


            end

            CaseDB[:bus][idx]["def_step"]=ans[:bus][idx]["opt_step"]

        end
    end




    return CaseDB,ans

end

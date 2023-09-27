function cfigure(cfile_path)

    cdict=JSON.parsefile(cfile_path)

    #cdict["mode"]:     hard_constraints/soft_constraints/mixed
    #cdict["verbose"]   true/false
    #cdict["discrete_variables"]: None/relaxed/exhaustive

    #-
    cdict["input_matpower"]=joinpath(string(cdict["input_directory"],"/matpower"))
    cdict["input_names"]=joinpath(string(cdict["input_directory"],"/names"))
    cdict["input_shunts"]=joinpath(string(cdict["input_directory"],"/shunts"))
    #-

    #-
    if isdir(joinpath(cdict["output_directory"]))

        if isdir(joinpath(string(cdict["output_directory"],"/",cdict["mode"]))) == false
            mkdir(joinpath(string(cdict["output_directory"],"/",cdict["mode"])))
            mkdir(joinpath(string(cdict["output_directory"],"/",cdict["mode"],"/matpower")))
            mkdir(joinpath(string(cdict["output_directory"],"/",cdict["mode"],"/names")))
            mkdir(joinpath(string(cdict["output_directory"],"/",cdict["mode"],"/shunts")))

        else

            if isdir(joinpath(string(cdict["output_directory"],"/",cdict["mode"],"/matpower")))==false
                mkdir(joinpath(string(cdict["output_directory"],"/",cdict["mode"],"/matpower")))
            end

            if isdir(joinpath(string(cdict["output_directory"],"/",cdict["mode"],"/names")))==false
                mkdir(joinpath(string(cdict["output_directory"],"/",cdict["mode"],"/names")))
            end
            if isdir(joinpath(string(cdict["output_directory"],"/",cdict["mode"],"/shunts")))==false
                mkdir(joinpath(string(cdict["output_directory"],"/",cdict["mode"],"/shunts")))
            end

        end

    else
        mkdir(joinpath(cdict["output_directory"]))
        mkdir(joinpath(string(cdict["output_directory"],"/",cdict["mode"])))
        mkdir(joinpath(string(cdict["output_directory"],"/",cdict["mode"],"/matpower")))
        mkdir(joinpath(string(cdict["output_directory"],"/",cdict["mode"],"/names")))
        mkdir(joinpath(string(cdict["output_directory"],"/",cdict["mode"],"/shunts")))
    end
    #-




    return cdict

end

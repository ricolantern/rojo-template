--!nonstrict

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local runCLI = require(ReplicatedStorage.DevPackages.Jest).runCLI

export type Args = {
    source: Instance,
    options: {[string]: any},
    testRoots: { Instance }
}

return function(args: Args)
    local status, result = runCLI(args.source, args.options, args.testRoots):awaitStatus()

    if status == "Rejected" then
        print(result)
    end
end
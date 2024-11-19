local InvalidArguments = {
    Check1 = {[1] = "string", [2] = "string", [3] = "string"},
    Check2 = {[1] = "Tool"},
    BadArguments = {"cantouch alteration", "hbe", "handle resize", "tanking"},
}

local cf = clonefunction or function(...) return ... end
local IsA = clonefunction(Instance.new("Part").IsA)

local NamecallHook; NamecallHook = hookmetamethod(game, "__namecall", function(...)
    local args = {...}
    local method = getnamecallmethod()
    local self = args[1]

    if not checkcaller() and typeof(self) == "Instance" and (method == "fireServer" or method == "FireServer") then
        
        -- #1
        local isEqualToString = 0
        if rawlen(args) >= 3 then
            warn("[DEBUG] Arg length is >= 3", rawlen(args))
            for Index, Type in pairs(InvalidArguments.Check1) do
                if rawget(args, Index) then
                    if rawequal(rawget(args, Index) == Type) then
                        isEqualToString += 1
                        warn(rawget(args, Index), Type, "Matched!", isEqualToString)
                    end
                end
            end
        end

        if isEqualToString >= rawlen(InvalidArguments.Check1) then
            warn("[TAMPER PROTECTION] isEqualToString is over Check1 Limit", isEqualToString, rawlen(InvalidArguments.Check1))
            return
        end

        -- #2
        local firstArgument = rawget(args, 1)
        if IsA(firstArgument, InvalidArguments.Check2[1]) then
            warn("[TAMPER PROTECTION] Bad First Argument - Tool Class")
            return
        end

        local badStringFound = false
        for _,badString in pairs(InvalidArguments.BadArguments) do
            for _,ArgValue in pairs(args) do
                if string.find(ArgValue:lower(), badString)) then
                    badStringFound = true
                    warn(ArgValue, "Matched with", badString)
                end
            end
        end

        if badStringFound then
            warn("[TAMPER PROTECTION] A blacklisted string was found in a remote.")
            return
        end

        return NamecallHook(...)
    end

    return NamecallHook(...)
end)

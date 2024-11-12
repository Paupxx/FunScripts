local Settings = {
    SizeIncrease = Vector3.new(1.5, 0, 1.5),
    Limbs = {"Head", "HumanoidRootPart", "Left Arm", "Right Arm", "Left Leg", "Right Leg"},
    ToggleKey = "Q",
    DebugMode = true,
}

local Toggled = false
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ResizedCache = {}
local Hooks = {}

for _, v in pairs(getgc(false)) do
    if typeof(v) == "function" and getinfo(v).name == "compareTables" then
        hookfunction(v, function()
            if Settings.DebugMode then
                warn("[HBE]: Adonis Anti-Hook Call Attempt")
            end
            return true
        end)
    end
end

Hooks.__indexHook = hookmetamethod(game, "__index", newcclosure(function(self, key, ...)
    if not checkcaller() and typeof(self) == "Instance" and typeof(key) == "string" and ResizedCache[self] then
        local FilteredKey = key:split("\0")[1]
        if (rawequal(FilteredKey, "Size") or rawequal(FilteredKey, "size")) or (rawequal(FilteredKey, "ExtentsSize") or rawequal(FilteredKey, "extentsSize")) then
            return ResizedCache[self].Size
        elseif (rawequal(FilteredKey, "Mass") or rawequal(FilteredKey, "mass")) then
            return ResizedCache[self].Mass
        elseif (rawequal(FilteredKey, "AssemblyMass") or rawequal(FilteredKey, "assemblyMass")) then
            return ResizedCache[self].AssemblyMass
        end
    end
    return Hooks.__indexHook(self, key, ...)
end))

Hooks.__namecallHook = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    if not checkcaller() and typeof(self) == "Instance" and ResizedCache[self] then
        local Method = getnamecallmethod()
        if (Method == "GetMass" or Method == "getMass") then
            return function() return ResizedCache[self].GetMass end
        end
    end
    return Hooks.__namecallHook(self, ...)
end))

local function HandleConnections(part, state)
    if state == true then
        for _, connection in pairs(getconnections(part:GetPropertyChangedSignal("Size"))) do
            connection:Enable()
        end
        for _, connection in pairs(getconnections(part.Changed)) do
            connection:Enable()
        end
        for _, connection in pairs(getconnections(part:GetPropertyChangedSignal("Mass"))) do
            connection:Enable()
        end
        for _, connection in pairs(getconnections(part:GetPropertyChangedSignal("AssemblyMass"))) do
            connection:Enable()
        end
        for _, connection in pairs(getconnections(game.ItemChanged)) do
            connection:Enable()
        end
    else
        for _, connection in pairs(getconnections(part:GetPropertyChangedSignal("Size"))) do
            connection:Disable()
        end
        for _, connection in pairs(getconnections(part:GetPropertyChangedSignal("Mass"))) do
            connection:Disable()
        end
        for _, connection in pairs(getconnections(part:GetPropertyChangedSignal("AssemblyMass"))) do
            connection:Disable()
        end
        for _, connection in pairs(getconnections(part.Changed)) do
            connection:Disable()
        end
        for _, connection in pairs(getconnections(game.ItemChanged)) do
            connection:Disable()
        end
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then
        return
    end

    if input.KeyCode == Enum.KeyCode[Settings.ToggleKey] then
        Toggled = not Toggled
    end
end)

task.defer(function()
    while task.wait() do
        xpcall(function()
            if Toggled then
                for _, Player in pairs(Players:GetPlayers()) do
                    if Player ~= LocalPlayer then
                        for _, Limb in pairs(Player.Character:GetChildren()) do
                            if table.find(Settings.Limbs, Limb.Name) and not ResizedCache[Limb] then
                                ResizedCache[Limb] = {Size = Limb.Size, Mass = Limb.Mass, GetMass = Limb:GetMass(), AssemblyMass = Limb.AssemblyMass}

                                HandleConnections(Limb, false)
                                task.wait()
                                Limb.Size = Limb.Size + Settings.SizeIncrease
                                HandleConnections(Limb, true)
                            end
                        end
                    end
                end
            else
                for Limb, OriginalProperties in pairs(ResizedCache) do
                    Limb.Size = OriginalProperties.Size
                    ResizedCache[Limb] = nil
                end
            end
        end, function(_error)
            if Settings.DebugMode then
                warn("[HBE]: " .. _error)
            end
        end)
    end
end)

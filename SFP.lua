local Settings = {
    KickOnPlayerJoin = false, -- kicks if another player is present
    AmplifyDamage = true, -- more dmg :shocked:
}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Player = Players.LocalPlayer
local scriptedObjects = workspace:WaitForChild("ScriptedObjects")
local arenaMats = workspace:WaitForChild("ArenaMats")

local isOnMatCooldown = os.clock()

local gotoRandomArenaMat = function()
    if os.clock() - isOnMatCooldown >= 1 then
        local tempMats = {}
        for i,v in pairs(arenaMats:GetChildren()) do
            if v.Name == "Baseplate" or v.ClassName == "Part" then
                table.insert(tempMats, v)
            end
        end
        local matAmounts = #tempMats
        Player.Character.HumanoidRootPart.CFrame = tempMats[math.random(1,matAmounts)].CFrame + Vector3.new(0,2,0)
        isOnMatCooldown = os.clock()
    end
end

local getMats = function()
    local Mats = {}
    for i,v in pairs(arenaMats:GetChildren()) do
        if v.Name == "Baseplate" or v.ClassName == "Part" then
            table.insert(Mats, v)
        end
    end
    return Mats
end

local getBotCount = function()
    local BotCount = 0
    for i,v in pairs(scriptedObjects:GetChildren()) do
        if v.Name == "AI" then
            BotCount = BotCount + 1
        end
    end
    return BotCount
end

local isValidBotPosition = function(Bot)
    local validBot = false
    
    local Mats = getMats()
    local opParams = OverlapParams.new()
    opParams.FilterDescendantsInstances = {scriptedObjects}
    opParams.FilterType = Enum.RaycastFilterType.Include
    for i,v in pairs(Mats) do
        local Root = Bot.HumanoidRootPart
        local params = RaycastParams.new()
        params.FilterDescendantsInstances = {Mats}
        params.FilterType = Enum.RaycastFilterType.Include
        local Ray = workspace:Raycast(Root.Position,Vector3.new(0,-25,0),params)
        if Ray and Ray.Instance then
            if Ray.Instance == v then
                validBot = true
                break
            end
        end
    end
    return validBot
end

local getClosestBot = function()
    local MaxDist,Closest = 300,nil
    for i,v in pairs(scriptedObjects:GetChildren()) do
        if v.Name == "AI" and v.Humanoid and v.Humanoid.Health ~= 0 and v:FindFirstChildOfClass("Tool") and isValidBotPosition(v) == true then
            local Dist = (Player.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude
            if Dist <= MaxDist then
                MaxDist = Dist
                Closest = v
            end
        end
    end
    return Closest
end

local forceTouch = function(AI, Handle)
    if AI:IsA("Model") then
        local Humanoid = AI:FindFirstChildOfClass("Humanoid")
        if Humanoid and Humanoid.Health ~= 0 then
            if Settings.AmplifyDamage == true then
                for i,part in pairs(AI:GetChildren()) do
                    if part:IsA("BasePart") then
                        firetouchinterest(Handle,part,0)
                        firetouchinterest(Handle,part,1)
                    end
                end
            else
                firetouchinterest(Handle,AI.HumanoidRootPart,0)
                firetouchinterest(Handle,AI.HumanoidRootPart,1)
            end
        end
    end
end

local giveSword = function()
    ReplicatedStorage.Events.SwordDispenser:FireServer(true)
end

RunService.RenderStepped:Connect(function()
    if Settings.KickOnPlayerJoin == true then
        local PlayerCount = #Players:GetPlayers()
        if PlayerCount > 1 then
            Player:Kick("A person joined your lobby!")
        end
    end
    
    local BotCount = getBotCount()
    if BotCount == 0 then
        gotoRandomArenaMat()
    else
        local Bot = getClosestBot()
        if Bot then
            Player.Character.HumanoidRootPart.CFrame = Bot.HumanoidRootPart.CFrame + Bot.HumanoidRootPart.CFrame.LookVector * -4
        else
            gotoRandomArenaMat()
        end
    end

    if Player and Player.Character then
        local Character = Player.Character
        local Humanoid = Character:FindFirstChildOfClass("Humanoid")
        if Humanoid and Humanoid.Health ~= 0 and Humanoid:GetState() ~= Enum.HumanoidStateType.Dead then
            local Sword = Character:FindFirstChildOfClass("Tool")
            if Sword and Sword.Handle then
                for i,v in pairs(scriptedObjects:GetChildren()) do
                    if v.Name == "AI" and (Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 12 then
                        forceTouch(v,Sword.Handle)
                    end
                end
            else
                giveSword()
            end
        end
    end
end)

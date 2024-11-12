local Players = game:GetService("Players")
local Player = Players.LocalPlayer

-- Functions
local spoofParts = {"Head", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg"}

local function onCharacterAdded(Character)
    local humanoid = Character:WaitForChild("Humanoid")
    
    for _,Part in pairs(Character:GetChildren()) do
        if Part:IsA("BasePart") and table.find(spoofParts, Part.Name) then
            local clonedPart = Part:Clone()
            clonedPart:ClearAllChildren()
            clonedPart.Transparency = 1
            clonedPart.CanCollide = false
            clonedPart.CanQuery = false
            clonedPart.CanTouch = false
            clonedPart.Massless = true
            clonedPart.Name = "Fake"..Part.Name
            clonedPart.Size = Part.Size
            clonedPart.Parent = Character

            clonedPart.CFrame = Part.CFrame

            local Weld = Instance.new("WeldConstraint")
            Weld.Parent = clonedPart
            Weld.Part0 = clonedPart
            Weld.Part1 = Part
        end
    end

    Character.DescendantAdded:Connect(function(Desc)
        if Desc:IsA("SelectionBox") then
            local toAdornee = Desc.Parent 

            local fakePartAdornee = Character:FindFirstChild("Fake"..toAdornee.Name)
            if fakePartAdornee ~= nil then
                Desc.Adornee = fakePartAdornee
                Desc:GetPropertyChangedSignal("Adornee"):Connect(function()
                    Desc.Adornee = fakePartAdornee
                end)
            end
        end
    end)
end

-- Hooks
if hookmetamethod ~= nil then -- Solaratard
    local settingAdornee = false
    local h; h = hookmetamethod(game, "__newindex", newcclosure(function(...)
        if not checkcaller() then
            local s,k,v = ...
            if s:IsA("SelectionBox") and typeof(k) == "string" then
                if (k == "adornee" or k == "Adornee") and not settingAdornee then
                    settingAdornee = true
                    local modelCharacter = s.Parent.Parent
                    local fakePartAdornee = modelCharacter:FindFirstChild("Fake"..s.Parent.Name)
                    warn("Hook",modelCharacter,fakePartAdornee)
                    if modelCharacter and fakePartAdornee then
                        s[k] = fakePartAdornee
                        warn("we set the ake part")
                        settingAdornee = false
                    end
                    settingAdornee = false
                end
            end
        end
        return h(...)
    end))
end

-- Character Handling
for _,plr in pairs(Players:GetPlayers()) do
    if plr.Character then
        onCharacterAdded(plr.Character)
    end
    plr.CharacterAdded:Connect(onCharacterAdded)
end

Players.PlayerAdded:Connect(function(plr)
    plr.CharacterAdded:Connect(onCharacterAdded)
end)

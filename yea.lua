warn("V1")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

-- Functions
local spoofParts = {"Head", "Left Arm", "Right Arm", "Left Leg", "Right Leg"}

local function onCharacterAdded(Character)
    local humanoid = Character:WaitForChild("Humanoid")
    
    for _,Part in pairs(Character:GetChildren()) do
        if Part:IsA("BasePart") and table.find(spoofParts, Part.Name) then
            local clonedPart = Part:Clone()
            --clonedPart:ClearAllChildren()
            
            if Part.Name == "Right Arm" then
                local grip = Part:FindFirstChild("Right Grip")
                if grip then grip:Destroy() grip = nil end
            end
            
            clonedPart.Transparency = Part.Transparency
            clonedPart.CanCollide = false
            clonedPart.CanQuery = false
            clonedPart.CanTouch = false
            clonedPart.Massless = true
            clonedPart.Size = Part.Size

            clonedPart.Parent = Character
            clonedPart.Name = Part.Name

            local Weld = Instance.new("WeldConstraint")
            Weld.Parent = clonedPart
            Weld.Part0 = Part
            Weld.Part1 = clonedPart

            Part.CFrame = clonedPart.CFrame
            Part.Name = "Real "..Part.Name
        end
    end

    Character.DescendantAdded:Connect(function(Desc)
        if Desc:IsA("SelectionBox") then
            local toAdornee = Desc.Parent 

            warn(toAdornee.Name, string.split(toAdornee.Name, " ")[2])
            local fakePartAdornee = Character:FindFirstChild(string.split(toAdornee.Name, " ")[2])
            if fakePartAdornee ~= nil then
                Desc.Adornee = fakePartAdornee
                Desc:GetPropertyChangedSignal("Adornee"):Connect(function()
                    Desc.Adornee = fakePartAdornee
                end)
            end
        end
    end)
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

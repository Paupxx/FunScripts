getgenv().BeepassOptions = {
    UseRandomInsertionValue = false,
    UseRandomFTI = false,
    
    DeveloperOptions = {
        HitScan = true,
        UsePropertyInsteadOfHook = "base", -- for cantouch hook (base,hook,both)
        FireFakes = true,
    }
}

local N_Start = tick()
local NLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Paupxx/Scripts/main/Notification%20Library.lua"))()


local active = true
local trueActive = true
local reachType = "Sphere"
local dmgEnabled = true
local visualizerEnabled = false
 
local visualizer = Instance.new("Part")
visualizer.BrickColor = BrickColor.Blue()
visualizer.Transparency = 0.8
visualizer.Anchored = true
visualizer.CanCollide = false
visualizer.CanQuery = false
visualizer.CanTouch = false
visualizer.Size = Vector3.new(0.5,0.5,0.5)
visualizer.BottomSurface = Enum.SurfaceType.Smooth
visualizer.TopSurface = Enum.SurfaceType.Smooth
if syn then syn.protect_gui(visualizer) end

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local Frame_2 = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local Frame_4 = Instance.new("Frame")
local Frame_5 = Instance.new("Frame")
local TextButton_2 = Instance.new("TextButton")
 
--Properties:
 
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 999999999
ScreenGui.ResetOnSpawn = false
 
Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame.BackgroundTransparency = 0.300
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 4
Frame.Position = UDim2.new(0, 0, 0.600000024, 0)
Frame.Size = UDim2.new(0.150000006, 0, 0.300000012, 0)
 
local newGradient = Instance.new("UIGradient",Frame)
local colorTable = {}
for i = 0,359,20 do
	table.insert(colorTable,ColorSequenceKeypoint.new(i/359,Color3.fromHSV(i/359,1,1)))
end

table.insert(colorTable,ColorSequenceKeypoint.new(1,Color3.fromHSV(1,1,1)))
newGradient.Color = ColorSequence.new(colorTable)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "DESTRUCTION LEVEL:"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 12.000
TextLabel.TextWrapped = true
 
TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.Position = UDim2.new(0.600000024, 0, 0, 0)
TextBox.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = "3.5"
TextBox.TextColor3 = Color3.fromRGB(172, 24, 235)
TextBox.TextScaled = true
TextBox.TextSize = 13.000
TextBox.TextWrapped = true
 
TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0, 0, 0.200000003, 0)
TextLabel_2.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "BALLS?:"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 16.000
TextLabel_2.TextWrapped = true
 
TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0, 0, 0.400000006, 0)
TextLabel_3.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "OVERDRIVE!:"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 11.000
TextLabel_3.TextWrapped = true
 
TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0, 0, 0.600000024, 0)
TextLabel_4.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "MASACRE:"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 15.000
TextLabel_4.TextWrapped = true
 
TextButton.Parent = Frame
TextButton.AnchorPoint = Vector2.new(0, 1)
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Position = UDim2.new(0, 0, 1, 0)
TextButton.Size = UDim2.new(1, 0, 0.150000006, 0)
TextButton.Font = Enum.Font.SourceSansBold
TextButton.Text = "END THE SONNING"
TextButton.TextColor3 = Color3.fromRGB(52, 173, 211)
TextButton.TextScaled = true
TextButton.TextSize = 18.000
TextButton.TextWrapped = true
 
Frame_2.Parent = Frame
Frame_2.Active = true
Frame_2.AnchorPoint = Vector2.new(0, 0.5)
Frame_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.725000024, 0, 0.699999988, 0)
Frame_2.Size = UDim2.new(0, 25, 0, 25)
Frame_2.ZIndex = 5
 
Frame_3.Parent = Frame_2
Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_3.BackgroundColor3 = Color3.fromRGB(172, 24, 245)
Frame_3.BorderSizePixel = 0
Frame_3.LayoutOrder = 1
Frame_3.Position = UDim2.new(0.5, 0, 0.5, 0)
 
Frame_4.Parent = Frame
Frame_4.Active = true
Frame_4.AnchorPoint = Vector2.new(0, 0.5)
Frame_4.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(0.725000024, 0, 0.5, 0)
Frame_4.Size = UDim2.new(0, 25, 0, 25)
Frame_4.ZIndex = 5
 
Frame_5.Parent = Frame_4
Frame_5.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_5.BackgroundColor3 = Color3.fromRGB(172, 24, 255)
Frame_5.BorderSizePixel = 0
Frame_5.LayoutOrder = 1
Frame_5.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame_5.Size = UDim2.new(1, 0, 1, 0)
 
TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.Position = UDim2.new(0.600000024, 0, 0.200000003, 0)
TextButton_2.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Sphere"
TextButton_2.TextColor3 = Color3.fromRGB(172, 24, 222)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true
 
repeat wait() until game.Players.LocalPlayer
ScreenGui.Parent = game:GetService("CoreGui")
 
local A = false
local B = false

task.spawn(function()
    while task.wait() do
       if newGradient.Rotation <= 0 or A == true then
           A = true
           B = false
           newGradient.Rotation = newGradient.Rotation + 1
       end
       if newGradient.Rotation >= 360 or B == true then
           A = false
           B = true
           newGradient.Rotation = newGradient.Rotation - 1
       end
    end
end)

 
Frame_4.InputBegan:connect(function(inp)
	if inp.UserInputType == Enum.UserInputType.MouseButton1 then
		dmgEnabled = not dmgEnabled
		local goal = {Size = UDim2.new(0,0,0,0)}
		if dmgEnabled then
			goal = {Size = UDim2.new(1,0,1,0)}
		end
		game:GetService("TweenService"):Create(Frame_5,TweenInfo.new(0.12,Enum.EasingStyle.Quad),goal):Play()
	end
end)
Frame_2.InputBegan:connect(function(inp)
	if inp.UserInputType == Enum.UserInputType.MouseButton1 then
		visualizerEnabled = not visualizerEnabled
		local goal = {Size = UDim2.new(0,0,0,0)}
		if visualizerEnabled then
			goal = {Size = UDim2.new(1,0,1,0)}
		end
		game:GetService("TweenService"):Create(Frame_3,TweenInfo.new(0.12,Enum.EasingStyle.Linear),goal):Play()
	end
end)
TextButton_2.MouseButton1Click:connect(function()
	if reachType == "Sphere" then
		reachType = "Line"
	else
		reachType = "Sphere"
	end
	TextButton_2.Text = reachType
end)
TextButton.MouseButton1Click:connect(function()
	trueActive = false
	ScreenGui:Destroy()
end)
game:GetService("UserInputService").InputBegan:connect(function(inp,gpe)
	if gpe then return end
	if inp.KeyCode == Enum.KeyCode.H then
		ScreenGui.Enabled = not ScreenGui.Enabled
	end
end)

local newcolor = nil
local function SendHookData(Self, A1, A2, A3, A4)
    NLib.AddNotification({
        Text = "Hook Called " .. tostring(A1) .. " " .. tostring(A2) .. " " .. tostring(A3),
        TimeColor = newcolor,
        Timer = 3,
        AllowMouseClick = true,
    }) 
end

local WhitelistedParts = {}
local CanSpoofed = {}

local ExpectedHandle = nil

local OPBIR = clonefunction(workspace.GetPartBoundsInRadius)
local GPIP = clonefunction(workspace.GetPartsInPart)
local GTP = clonefunction(Instance.new('Part').GetTouchingParts)
local GPBOX = clonefunction(workspace.GetPartBoundsInBox)

if (getgenv().BeepassOptions.DeveloperOptions.UsePropertyInsteadOfHook == "hook" or getgenv().BeepassOptions.DeveloperOptions.UsePropertyInsteadOfHook == "both") then
    local HookCan; HookCan = hookmetamethod(game, "__index", function(self,key)
        if not checkcaller() and type(key) == "string" then
            if (CanSpoofed[self] or table.find(CanSpoofed, self)) then
                local s_key = string.split(tostring(key), "\0")[1]
                if (s_key == "canTouch") or (s_key == "CanTouch") then
                   return true 
                end
            end
        end
        return HookCan(self,key)
    end)
end

local HookPartsBounds = nil
HookPartsBounds = hookfunction(workspace.GetPartBoundsInRadius, newcclosure(function(...)
    if not checkcaller() then
        local Arguments = {...}
        local Self = Arguments[1]
        if (Self == Workspace or Self == workspace) and ExpectedHandle ~= nil and (Arguments[2] and typeof(Arguments[2]) == "Vector3" and Arguments[2] == ExpectedHandle.Position) then
            if Arguments[3] and typeof(Arguments[3]) == "number" and (Arguments[3] == 6) and typeof(Arguments[4]) == "OverlapParams" then

                local SpoofedRegion = OPBIR(Self, ExpectedHandle.Position, Arguments[3], Arguments[4])
                setmetatable(SpoofedRegion,nil) -- Bypasses newproxy detection
                
                for i,v in pairs(WhitelistedParts) do
                    if not table.find(SpoofedRegion, v) then
                        table.insert(SpoofedRegion, v)
                    end
                end
                
                return SpoofedRegion
            end
        end--]]
        
    end
    return HookPartsBounds(...)
end))

local HookGPIP = nil
HookGPIP = hookfunction(workspace.GetPartsInPart, newcclosure(function(Self, ...)
    if not checkcaller() then
        local Args = {...}
        if (Self == Workspace or Self == workspace) and (Args[1] and Args[1] == ExpectedHandle) then
            local SpoofedGPIP = GPIP(Self, ExpectedHandle)
            setmetatable(SpoofedGPIP,nil)
            for i,v in pairs(WhitelistedParts) do
                if not table.find(SpoofedGPIP, v) then
                    table.insert(SpoofedGPIP, v)
                end
            end
            return SpoofedGPIP
        end
    end
    return HookGPIP(Self, ...)
end))

local HookBoxBounds = nil
HookBoxBounds = hookfunction(workspace.GetPartBoundsInBox, newcclosure(function(Self, ...)
    if not checkcaller() then
        local Args = {...}
        if (Self == Workspace or Self == workspace) and (Args[1] and Args[1] == ExpectedHandle.CFrame) and (Args[2] and typeof(Args[2]) == "Vector3" and (Args[2].X >= ExpectedHandle.Size.X and Args[2].Y >= ExpectedHandle.Size.Y and Args[2].Z >= ExpectedHandle.Size.Z)) and (Args[3] and typeof(Args[3]) == "OverlapParams" and Args[3].MaxParts == 0) then
            local LolCool = GPBOX(Self, Args[1], Args[2], Args[3])
            setmetatable(LolCool,nil)
            for i,v in pairs(WhitelistedParts) do
                if not table.find(LolCool, v) then
                    table.insert(LolCool, v)
                end
            end
            return LolCool
        end
    end
    return HookBoxBounds(Self, ...)
end))

local HookTouchingParts = nil
HookTouchingParts = hookfunction(Instance.new('Part').GetTouchingParts, newcclosure(function(Self, ...)
    if not checkcaller() then
        local Args = {...}
        if (Self == ExpectedHandle) then
            local Xddd = GTP(Self)
            setmetatable(Xddd,nil)
            for i,v in pairs(WhitelistedParts) do
                if not table.find(Xddd, v) then
                    table.insert(Xddd, v)
                end
            end
            return Xddd
        end
    end
    return HookTouchingParts(Self, ...)
end))


local NameHook = nil
NameHook = hookmetamethod(game, "__namecall", newcclosure(function(Self, ...)
    if not checkcaller() then
        local Method = getnamecallmethod()
        local Args = {...}
        if (Self == workspace or Self == Workspace) and (Method == "getPartBoundsInRadius" or Method == "GetPartBoundsInRadius") then
            if ExpectedHandle ~= nil and (Args[1] and typeof(Args[1]) == "Vector3" and Args[1] == ExpectedHandle.Position) and (Args[2] and type(Args[2]) == "number" and Args[2] == 6) and (Args[3] and typeof(Args[3]) == "OverlapParams") then
            local SpoofedRegion = OPBIR(Self, ExpectedHandle.Position, Args[2], Args[3]) or {}
            setmetatable(SpoofedRegion,nil)
            for i,v in next, WhitelistedParts do
                if not table.find(SpoofedRegion, v) then
                    table.insert(SpoofedRegion, v)
                end
            end
            return SpoofedRegion
        end
        elseif Self == ExpectedHandle and (Method == "GetTouchingParts" or Method == "getTouchingParts") then
            local SpoofedTouchRegion = GTP(ExpectedHandle) or {}
            setmetatable(SpoofedTouchRegion,nil)
                for i,v in next, WhitelistedParts do
                    if not table.find(SpoofedTouchRegion, v) then
                        table.insert(SpoofedTouchRegion, v)
                    end
                end
            return SpoofedTouchRegion
        elseif (Self == workspace or Self == Workspace) and (Method == "GetPartsInPart" or Method == "getPartsInPart") and Args[3] then
            local SpoofPartsInPart = GPIP(workspace, ExpectedHandle, Args[3]) or {}
            setmetatable(SpoofPartsInPart,nil)
            for i,v in next, WhitelistedParts do
                if not table.find(SpoofPartsInPart, v) then
                    table.insert(SpoofPartsInPart, v)
                end
            end
            return SpoofPartsInPart
        elseif (Self == workspace or Self == Workspace) and (Method == "getPartBoundsInBox" or Method == "GetPartBoundsInBox") and Args[3] then
            local SpoofedBox = GPBOX(workspace, ExpectedHandle.CFrame, Args[3]) or {}
            setmetatable(SpoofedBox,nil)
            for i,v in next, WhitelistedParts do
                if not table.find(SpoofedBox, v) then
                    table.insert(SpoofedBox, v)
                end
            end
            return SpoofedBox
        end
    end
    return NameHook(Self, ...)
end))

local HookIndex = nil
HookIndex = hookmetamethod(game, "__index", newcclosure(function(self, key)
    if not checkcaller() and type(self) == "Instance" and type(key) == "string" then
        local Key = string.split(key, "\0")[1]
        if (table.find(WhitelistedParts, self) or WhitelistedParts[self]) and (Key == "Anchored" or Key == "anchored") then
            return true
        end
        if self == ExpectedHandle and (Key == "Velocity" or Key == "velocity") then
            return Vector3.new(9e9,9e9,9e9)
        end
        
    end
    return HookIndex(self, key)
end))

local Visualizers = {visualizer}

local O_GCP = clonefunction(Instance.new('Part').GetConnectedParts)
local O_GTP = clonefunction(Instance.new('Part').GetTouchingParts)

local SpoofVisualizer
SpoofVisualizer = hookmetamethod(game, "__namecall", newcclosure(function(Self, ...)
    if not checkcaller() then
        local Args = {...}
        local NameMethod = tostring(getnamecallmethod())
        if Self == ExpectedHandle then
            if (NameMethod == "GetConnectedParts" or NameMethod == "getConnectedParts") then
                local O_Fake = O_GCP(ExpectedHandle)
                for i,v in pairs(Visualizers) do
                    if table.find(O_Fake, v) then
                        table.remove(O_Fake, table.find(O_Fake, v))
                    end
                end
                return O_Fake
            elseif (NameMethod == "GetTouchingParts" or NameMethod == "getTouchingParts") then
                local LOL = O_GTP(ExpectedHandle)
                    
                for i,v in pairs(Visualizers) do
                    if table.find(LOL, v) then
                        table.remove(LOL, table.find(LOL, v))
                    end
                end
                return LOL
            end
        end
        if tostring(Self) == "Right Arm" then
            if (NameMethod == "GetTouchingParts" or NameMethod == "getTouchingParts") then
                local X22 = O_GTP(Self)
                    
                for i,v in pairs(Visualizers) do
                    if table.find(X22, v) then
                        table.remove(X22, table.find(X22, v))
                    end
                end
                return X22
            end
        end
        if (Self == workspace or Self == Workspace) and (NameMethod == "getPartBoundsInBox" or NameMethod == "GetPartBoundsInBox") then
            local newGPBOX = GPBOX(Self, Args[1], Args[2], Args[3])
            for i,v in pairs(Visualizers) do
                if table.find(newGPBOX, v) then
                    table.remove(newGPBOX, table.find(newGPBOX, v))
                end
            end
            return newGPBOX
        end
        
    end
    return SpoofVisualizer(Self, ...)
end))

 
local plr = game.Players.LocalPlayer

local function SendDeveloperData(Hit, WhitelistAmount)
    NLib.AddNotification({
        Text = "BDR DEBUGGER " .. tostring(Hit:GetFullName()) .. ", " .. tostring(#WhitelistAmount),
        TimeColor = newcolor,
        Timer = 3,
        AllowMouseClick = true,
    }) 
end

local function GetFakeHandles(RealHandle)
    local Parts = workspace:GetPartsInPart(RealHandle, OverlapParams.new())
    for i,v in pairs(Parts) do
        if tostring(v) == "Right Arm" then
            table.remove(Parts, i)
        end
    end
    for i,v in pairs(Parts) do
        if v.Parent.ClassName == "Accessory" then
            table.remove(Parts, i)
        end
    end
    
    return Parts
end


local function onHit(hit,handle)
    ExpectedHandle = handle
    
    local victim = hit.Parent:FindFirstChildOfClass("Humanoid")
	    if victim and victim.Parent.Name ~= game.Players.LocalPlayer.Name and victim.Health > 0 then
		if dmgEnabled then
	        for _,v in pairs(hit.Parent:GetChildren()) do
	            if v:IsA("Part") then
	                
	                if not table.find(CanSpoofed, v) then
	                    table.insert(CanSpoofed, v)
	                end
                    
	                if not table.find(WhitelistedParts, v) then
	                    table.insert(WhitelistedParts, v)
                		
    	                --print(#WhitelistedParts)
    	                if (getgenv().BeepassOptions.DeveloperOptions.UsePropertyInsteadOfHook == "base" or getgenv().BeepassOptions.DeveloperOptions.UsePropertyInsteadOfHook == "both") then
        	                hit.CanTouch = true
    	                end
    	                
            		    if getgenv().BeepassOptions.DeveloperOptions.FireFakes then
            	            local Fakes = GetFakeHandles(handle)
                	        for _,fake in pairs(Fakes) do
                	           firetouchinterest(fake,handle,0)
                	           firetouchinterest(fake,handle,1)
                	        end
            	        end
    	                firetouchinterest(v,handle,0)
    	                firetouchinterest(v,handle,1)
    	                
    	                if getgenv().BeepassOptions.DeveloperOptions.HitScan == true then
    		                SendDeveloperData(v, WhitelistedParts)
    		            end
    	                task.delay(0.1, function()
    	                    table.remove(WhitelistedParts, table.find(WhitelistedParts, v))
    	                end)
	                end
	            end
			end
		else
		    if not table.find(CanSpoofed, hit) then
	           table.insert(CanSpoofed, hit)
		    end
        
		    if not table.find(WhitelistedParts, hit) then
		      table.insert(WhitelistedParts, hit)
		      
    		  --print(#WhitelistedParts)
    		  if (getgenv().BeepassOptions.DeveloperOptions.UsePropertyInsteadOfHook == "base" or getgenv().BeepassOptions.DeveloperOptions.UsePropertyInsteadOfHook == "both") then
        	     hit.CanTouch = true
    		  end
    		  
    		  if getgenv().BeepassOptions.DeveloperOptions.FireFakes then
    	          local Fakes = GetFakeHandles(handle)
        	      for _,fake in pairs(Fakes) do
        	         firetouchinterest(fake,handle,0)
        	         firetouchinterest(fake,handle,1)
        	      end
    	      end
    		  firetouchinterest(hit,handle,0)
    		  firetouchinterest(hit,handle,1)
    		  
    		  if getgenv().BeepassOptions.DeveloperOptions.HitScan == true then
    		      SendDeveloperData(hit, WhitelistedParts)
    		  end
		      
    	      task.delay(0.1, function()
    	          table.remove(WhitelistedParts, table.find(WhitelistedParts, hit))
    	      end)
           end
		end
	end
end
 
local function getWhiteList()
    local wl = {}
    for _,v in pairs(game.Players:GetPlayers()) do
        if v ~= plr then
            local char = v.Character
            if char then
                for _,q in pairs(char:GetChildren()) do
                    if q:IsA("Part") then
                        table.insert(wl,q)
                    end
                end
            end
        end
    end
    return wl
end
 
game:GetService("RunService").RenderStepped:connect(function()
    if not active or not trueActive then return end
	local s = plr.Character and plr.Character:FindFirstChildOfClass("Tool")
	if not s then visualizer.Parent = nil end
    if s then
        local handle = s:FindFirstChild("Handle") or s:FindFirstChildOfClass("Part")
		ExpectedHandle = handle
		if handle then
			if visualizerEnabled then
				visualizer.Parent = workspace
			else
				visualizer.Parent = nil
			end
			local reach = tonumber(TextBox.Text)
			if reach then
				if reachType == "Sphere" then
					visualizer.Shape = Enum.PartType.Ball
					visualizer.Size = Vector3.new(reach,reach,reach)
					visualizer.CFrame = handle.CFrame
		            for _,v in pairs(game.Players:GetPlayers()) do
		                if getgenv().BeepassOptions.UseRandomFTI then
    		                local r = {}
    		                for i,v in next, v.Character:GetChildren() do
    		                    if v and v:IsA('BasePart') and (v.Position - handle.Position).Magnitude <= reach then
    		                        table.insert(r, v)
    		                    end
    		                end
                            local cho = r[math.random(1, #r)]
    		                if cho and handle then
    		                    local mag = (cho.Position-handle.Position).magnitude
    		                    if mag <= reach then
    		                        onHit(cho,handle)
    		                    end
    		                end
    		            else
    		                local c = v.Character and v.Character:FindFirstChild("Left Arm")
    		                if c and handle then
    		                    local mag = (c.Position-handle.Position).magnitude
    		                    if mag <= reach then
    		                        onHit(c,handle)
    		                    end
    		                end
		                    
		                end
					end
				elseif reachType == "Line" then
					local origin = (handle.CFrame*CFrame.new(0,0,-2)).p
		    		local ray = Ray.new(origin,handle.CFrame.lookVector*-reach)
					local p,pos = workspace:FindPartOnRayWithWhitelist(ray,getWhiteList())
					visualizer.Shape = Enum.PartType.Block
					visualizer.Size = Vector3.new(1,0.8,reach)
					visualizer.CFrame = handle.CFrame*CFrame.new(0,0,(reach/2)+2)
		    		if p then
		    		    onHit(p,handle)
		    		else
		    		    for _,v in pairs(handle:GetTouchingParts()) do
		    		        onHit(v,handle)
		    		    end
		    		end
				end
			end
        end
    end
end)

NLib.AddNotification({
    Text = tostring(math.abs(tick() - N_Start)) .. "s Blizzy Demon Revenge Loaded. Made by paup#2354 :)",
    TimeColor = Color3.fromRGB(168, 50, 50),
    Timer = 5,
    AllowMouseClick = true,
}) 

local speed = 2
while true do
	for i = 0,1,0.001*speed do
		visualizer.Color = Color3.fromHSV(i,1,1) --creates a color using i
		newcolor = Color3.fromHSV(i,1,1)
		task.wait()
	end
end

local admin2 = Instance.new("ScreenGui")
admin2.Name = "admin2"

local Menu = Instance.new("Frame")
Menu.Name = "Menu"
Menu.AnchorPoint = Vector2.new(0.5, 0)
Menu.Size = UDim2.new(0.2, 0, 0.05, 0)
Menu.BorderColor3 = Color3.fromRGB(0, 0, 0)
Menu.BackgroundTransparency = 1
Menu.Position = UDim2.new(0.5, 0, 0.75, 0)
Menu.BorderSizePixel = 0
Menu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Menu.Parent = admin2

local Background = Instance.new("ImageLabel")
Background.Name = "Background"
Background.ZIndex = 3
Background.Size = UDim2.new(1, 0, 1, 0)
Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
Background.BackgroundTransparency = 1
Background.BorderSizePixel = 0
Background.BackgroundColor3 = Color3.fromRGB(92, 85, 130)
Background.ScaleType = Enum.ScaleType.Slice
Background.ImageColor3 = Color3.fromRGB(92, 85, 130)
Background.SliceScale = 0.5
Background.Image = "rbxassetid://7239465459"
Background.SliceCenter = Rect.new(44, 44, 88, 88)
Background.Parent = Menu

local Cmd = Instance.new("TextBox")
Cmd.Name = "Cmd"
Cmd.ZIndex = 2
Cmd.Size = UDim2.new(0.9073591, 0, 0.618, 0)
Cmd.BorderColor3 = Color3.fromRGB(0, 0, 0)
Cmd.Position = UDim2.new(0.0478041, 0, 0.2059994, 0)
Cmd.BorderSizePixel = 0
Cmd.BackgroundColor3 = Color3.fromRGB(44, 47, 67)
Cmd.FontSize = Enum.FontSize.Size14
Cmd.TextSize = 14
Cmd.RichText = true
Cmd.TextColor3 = Color3.fromRGB(255, 255, 255)
Cmd.PlaceholderText = "..."
Cmd.Text = ""
Cmd.Font = Enum.Font.ArialBold
Cmd.TextXAlignment = Enum.TextXAlignment.Left
Cmd.Parent = Background

local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
UITextSizeConstraint.Parent = Cmd

local Autofill = Instance.new("TextLabel")
Autofill.Name = "Autofill"
Autofill.ZIndex = 3
Autofill.Size = UDim2.new(1, 0, 1, 0)
Autofill.BorderColor3 = Color3.fromRGB(0, 0, 0)
Autofill.BackgroundTransparency = 1
Autofill.BorderSizePixel = 0
Autofill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Autofill.FontSize = Enum.FontSize.Size14
Autofill.TextSize = 14
Autofill.RichText = true
Autofill.TextColor3 = Color3.fromRGB(255, 255, 255)
Autofill.Text = ""
Autofill.Font = Enum.Font.ArialBold
Autofill.TextTransparency = 0.55
Autofill.TextXAlignment = Enum.TextXAlignment.Left
Autofill.Parent = Cmd

local BG = Instance.new("Frame")
BG.Name = "BG"
BG.Size = UDim2.new(0.9554896, 0, 0.6180008, 0)
BG.BorderColor3 = Color3.fromRGB(0, 0, 0)
BG.Position = UDim2.new(0.0237389, 0, 0.2059994, 0)
BG.BorderSizePixel = 0
BG.BackgroundColor3 = Color3.fromRGB(44, 47, 67)
BG.Parent = Background

local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Parent = BG

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.AspectRatio = 7.0947371
UIAspectRatioConstraint.Parent = Background

local UIAspectRatioConstraint1 = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint1.AspectRatio = 7.0947371
UIAspectRatioConstraint1.Parent = Menu

local RelatedMenu = Instance.new("Frame")
RelatedMenu.Name = "RelatedMenu"
RelatedMenu.Size = UDim2.new(0.2, 0, 0, 0)
RelatedMenu.BorderColor3 = Color3.fromRGB(0, 0, 0)
RelatedMenu.BackgroundTransparency = 1
RelatedMenu.Position = UDim2.new(0.4, 0, 0.5389473, 0)
RelatedMenu.BorderSizePixel = 0
RelatedMenu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RelatedMenu.Parent = admin2

local Related = Instance.new("ScrollingFrame")
Related.Name = "Related"
Related.Size = UDim2.new(1, 0, 1.01, 0)
Related.BorderColor3 = Color3.fromRGB(0, 0, 0)
Related.Position = UDim2.new(0, 0, -0.04, 0)
Related.Active = true
Related.BorderSizePixel = 0
Related.BackgroundColor3 = Color3.fromRGB(44, 47, 67)
Related.ScrollBarThickness = 6
Related.Parent = RelatedMenu

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = Related

local RelatedExample = Instance.new("TextLabel")
RelatedExample.Name = "RelatedExample"
RelatedExample.Size = UDim2.new(1, 0, 0.05, 1)
RelatedExample.BorderColor3 = Color3.fromRGB(0, 0, 0)
RelatedExample.BackgroundTransparency = 1
RelatedExample.BorderSizePixel = 0
RelatedExample.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RelatedExample.FontSize = Enum.FontSize.Size14
RelatedExample.TextSize = 14
RelatedExample.TextColor3 = Color3.fromRGB(255, 255, 255)
RelatedExample.Text = "example"
RelatedExample.Font = Enum.Font.ArialBold
RelatedExample.Parent = Related
RelatedExample.Visible = false

local Background2 = Instance.new("ImageLabel")
Background2.Name = "Background2"
Background2.Size = UDim2.new(1.0474777, 0, 1.0914248, 0)
Background2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Background2.BackgroundTransparency = 1
Background2.Position = UDim2.new(-0.0237389, 0, -0.0900005, 0)
Background2.BorderSizePixel = 0
Background2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background2.ScaleType = Enum.ScaleType.Slice
Background2.ImageColor3 = Color3.fromRGB(92, 85, 130)
Background2.SliceScale = 0.5
Background2.Image = "rbxassetid://7239465459"
Background2.SliceCenter = Rect.new(44, 44, 88, 88)
Background2.Parent = RelatedMenu

admin2.Parent = game.Players.LocalPlayer.PlayerGui

--local RichText = require(script.RichText) -- TODO: CHANGE TO LOADSTRING

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()

local Settings = {
	CmdKey = ";"
}
local IsActiveCmd = false
local Commands = {}
local Connections = {}
local LastRelatedCheck = tick()

function LevenshteinMethod(str1, str2)
	local matrix = {}
	for i = 0, #str1 do
		matrix[i] = {[0] = i}
	end
	for j = 0, #str2 do
		matrix[0][j] = j
	end
	for i = 1, #str1 do
		for j = 1, #str2 do
			local cost = (str1:sub(i, i) == str2:sub(j, j) and 0 or 1)
			matrix[i][j] = math.min(matrix[i-1][j] + 1, matrix[i][j-1] + 1, matrix[i-1][j-1] + cost)
		end
	end
	return matrix[#str1][#str2]
end

function getClosestMatch(target, strings)
	local closest, distance = nil, math.huge
	for _, str in pairs(strings) do
		local d = LevenshteinMethod(target, str)
		if d < distance then
			closest, distance = str, d
		end
	end
	return closest
end

local function addCmd(...)
	local args = {...}
	local cmd,cmdaliases,callback,desc
	cmd = args[1]
	cmdaliases = args[2] or {}
	callback = args[3] or function() print(cmd,"no callback") end
	desc = args[4] or "???"
	Commands[cmd] = {
		callback = callback,
		description = desc,
		cmd = cmd,
		aliases = cmdaliases,
	}
end

local function getIndexStringNameReform(tbl)
	local newtable = {}
	for i,v in pairs(tbl) do
		if i and typeof(i) == "string" and v and typeof(v) == "table" then
			table.insert(newtable,i)
		end
	end
	return newtable
end

local function findMatchingStrings(stringTable, targetString)
	local matchedStrings = {} 
	for _, str in ipairs(stringTable) do
		local match = string.match(str, targetString)
		if match then
			table.insert(matchedStrings, str) 
		end
	end

	return matchedStrings
end

local function textToPlayer(s)
	for i,v in pairs(Players:GetPlayers()) do
		if string.find(v.Name, s) then
			return v
		elseif string.find(v.DisplayName, s)then
			return v
		else
			return nil
		end
	end
end

local function findCmdByAlias(alias)
	for i,v in pairs(Commands) do
		if (typeof(v.aliases) == "table" and v.aliases ~= nil and #v.aliases ~= 0) then
			for i2,v2 in pairs(v.aliases) do
				if typeof(v2) == "string" and v2 == alias then
					return v
				end
			end
		end
	end
	return nil
end

local function parseText(inputString)
	local arguments = {}
	local words = inputString:split(" ")

	for i, word in ipairs(words) do
		if i == 2 then
			local numericValue = tonumber(word)
			if numericValue then
				table.insert(arguments, numericValue)
			elseif word ~= "me" and word ~= "others" and word ~= "other" and word ~= "all" then
				if textToPlayer(word) then
					table.insert(arguments, textToPlayer(word))
				else
					return error("player not found")
				end
			else
				table.insert(arguments, word)
			end
		else
			local numericValue = tonumber(word)
			if numericValue then
				table.insert(arguments, numericValue)
			else
				table.insert(arguments, word)
			end
		end
	end

	return arguments
end

local function getNumberFromTable(tbl)
	for i,v in pairs(tbl) do
		if type(v) == "number" then
			return i,v
		end
	end
	return nil
end

local function executeCmd(s)
	local getCommands = getIndexStringNameReform(Commands)
	local args = parseText(s)
	if Commands[args[1]] then
		print(s,"executing")
		Commands[args[1]].callback(args)
	elseif findCmdByAlias(args[1]) then
		print(s,"alias-executing")
		findCmdByAlias(args[1]).callback(args)
	else
		warn(s,"doesn't exist")
	end
end

local function autoFillSubText(s)
	local getCommands = getIndexStringNameReform(Commands)
	local closestMatch = getClosestMatch(s,getCommands)
	if closestMatch then
		return closestMatch
	end
end

local function getCharacter()
	if Player.Character ~= nil then
		return Player.Character
	else
		return nil
	end
end

local function getRoot(c)
	if c and c:IsA("Model") then
		if c:FindFirstChild("HumanoidRootPart") then
			return c:FindFirstChild("HumanoidRootPart")
		end
	end
	return nil
end

local function getHumanoid(c)
	if c and c:IsA("Model") then
		if c:FindFirstChildOfClass("Humanoid") then
			return c:FindFirstChildOfClass("Humanoid")
		end
	end
	return nil
end

-- Commands
addCmd("jump",{},function(...)
	local c = getCharacter()
	if c ~= nil then
		local hum = getHumanoid(c)
		if hum then
			hum:ChangeState(Enum.HumanoidStateType.Jumping)
		end
	end
end,"force jump")

addCmd("holdjump",{},function(...)
	local c = getCharacter()
	if c ~= nil then
		local hum = getHumanoid(c)
		if hum then
			if Connections.holdjump then
				Connections.holdjump:Disconnect()
			end
			Connections.holdjump = RunService.Stepped:Connect(function()
				if (hum:GetState() ~= Enum.HumanoidStateType.Freefall) then
					hum:ChangeState(Enum.HumanoidStateType.Jumping)
				end
			end)
		end
	end
end,"holds jump automatically")

addCmd("stopholdjump",{"shj"},function(...)
	if Connections.holdjump then
		Connections.holdjump:Disconnect()
	end
end,"stop auto-jumping")

addCmd("speed",{"ws","walkspeed"},function(...)
	local i,speed = getNumberFromTable(...)
	local c = getCharacter()
	if c then
		local h = getHumanoid(c)
		if h then
			h.WalkSpeed = speed
		end
	end
end,"modify your humanoids walkspeed")

addCmd("jumppower",{"jp","jumpheight"},function(...)
	local _,jp = getNumberFromTable(...)
	local c = getCharacter()
	if c then
		local h = getHumanoid(c)
		if h then
			if h.UseJumpPower == false then
				h.UseJumpPower = true
			end
			h.JumpPower = jp
		end
	end
end,"modify your humanoids jump power")

Mouse.KeyDown:Connect(function(Key)
	if Key == Settings.CmdKey then
		if IsActiveCmd == false then
			Menu.Visible = true
			Menu:TweenPosition(UDim2.new(0.5,0,0.75,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,0.25,true)
			IsActiveCmd = true
		else
			Menu.Visible = false
			Menu:TweenPosition(UDim2.new(0.5,0,1,0),Enum.EasingDirection.In,Enum.EasingStyle.Quad,0.25,true)
			IsActiveCmd = false
			Autofill.Text = ""
		end
		if IsActiveCmd then
			Cmd:CaptureFocus()
		end
	end
end)

--[[
UserInputService.InputBegan:Connect(function(Inp,Chat)
	if not Chat then
		return
	end
	if Inp.KeyCode == Enum.KeyCode.LeftAlt then
		if IsActiveCmd then
			local toFill = autoFillSubText(Cmd.Text)
			if toFill then
				Cmd.Text = toFill
			end
		end
	end
end)
--]]

Cmd.FocusLost:Connect(function(f,o)
	local cmdText = Cmd.Text
	if #cmdText > 0 then
		executeCmd(cmdText)
	end
	if IsActiveCmd then
		Menu:TweenPosition(UDim2.new(0.5,0,1,0),Enum.EasingDirection.In,Enum.EasingStyle.Quad,0.25,true)
		RelatedMenu.Visible = false
		RelatedMenu.Size = UDim2.new(0.2,0,0,0)
		Autofill.Text = ""
		IsActiveCmd = false
	end
end)

Cmd.Focused:Connect(function()
	RelatedMenu.Visible = true
	RelatedMenu:TweenSize(UDim2.new(0.2,0,0.2105263,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,0.25,true)
end)

Cmd:GetPropertyChangedSignal("Text"):Connect(function()
	if string.sub(Cmd.Text,1,1) == Settings.CmdKey then
		Cmd.Text = ""
	end
	if IsActiveCmd then
		if #Cmd.Text ~= 0 and tick() - LastRelatedCheck > 1 then
			for i,v in pairs(Related:GetChildren()) do
				if v.Name ~= "RelatedExample" and v:IsA("TextLabel") then
					v:Destroy()
				end
			end
			local CommandsCache = {}
			CommandsCache.cache = getIndexStringNameReform(Commands)
			for i,v in pairs(Commands) do
				if v.aliases then
					for i2,v2 in pairs(v.aliases) do
						table.insert(CommandsCache.cache, v2)
					end
				end
			end
			local getRelated = findMatchingStrings(CommandsCache.cache,Cmd.Text)
			for _,v in pairs(getRelated) do
				local substring = ""
				if Commands[v] and not Related:FindFirstChild(Commands[v].cmd) then
					local Command = Commands[v]
					substring = substring .. Command.cmd .. " "
					for i = 1, #Command.aliases do
						substring = substring .. " / " .. Command.aliases[i]
					end
					local relatedClone = RelatedExample:Clone()
					relatedClone.Name = Command.cmd
					relatedClone.Visible = true
					relatedClone.Text = substring
					relatedClone.Parent = Related
				elseif findCmdByAlias(v) and not Related:FindFirstChild(findCmdByAlias(v).cmd) then
					local Command = findCmdByAlias(v)
					substring = substring .. Command.cmd .. " "
					for i = 1, #Command.aliases do
						substring = substring .. " / " .. Command.aliases[i]
					end
					local relatedClone = RelatedExample:Clone()
					relatedClone.Name = Command.cmd
					relatedClone.Visible = true
					relatedClone.Text = substring
					relatedClone.Parent = Related
				end
			end
			LastRelatedCheck = tick()
		elseif #Cmd.Text == 0 then
			for _cmd,v in pairs(Commands) do
				if not Related:FindFirstChild(_cmd) then
					local substring = ""
					substring = substring .. _cmd .. " "
					for i = 1, #v.aliases do
						substring = substring .. " / " .. v.aliases[i]
					end
					local relatedClone = RelatedExample:Clone()
					relatedClone.Name = _cmd
					relatedClone.Visible = true
					relatedClone.Text = substring
					relatedClone.Parent = Related
				end
			end
		end
	end
	--[[if IsActiveCmd then
		local ref = autoFillSubText(Cmd.Text)
		if ref then
			Autofill.Text = ref
		end
	end--]]
end)

--[[Cmd:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
	Background:TweenSize(UDim2.new(UDim.new(0,Cmd.AbsoluteSize.X),UDim.new(0.05,0)), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.1, true)
end)]]

--[[
local textLabel = bline -- Assuming the LocalScript is a child of the TextLabel

while true do
	local hue = tick() % 1 -- Cycle through the entire color spectrum
	local color = Color3.fromHSV(hue, 1, 1)
	textLabel.BackgroundColor3 = color
	wait(0.03) -- Adjust the wait time for smoother animation
end
]]

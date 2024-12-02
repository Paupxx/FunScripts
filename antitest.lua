local Settings = {
    Webhook = "https://discord.com/api/webhooks/1313036825828397058/vLnzCyYcvh6NPjx-3r4MYS9om1uuQWbiyTn0Pq8b3m1vTKxpHcAPG2BjuRnqbpYxln2R",
}

local cloneref = cloneref or function(...) return ... end
local clonefunction = clonefunction or function(...) return ... end

local getobjectconnections = getconnections and clonefunction(getconnections)

local Players = cloneref(game:GetService("Players"))
local HttpService = cloneref(game:GetService("HttpService"))
local MarketplaceService = cloneref(game:GetService("MarketplaceService"))

local gameInfo = MarketplaceService:GetProductInfo(game.PlaceId)
local Player = Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Handle = nil

repeat task.wait()
    pcall(function()
        Handle = Character:FindFirstChildOfClass("Tool"):FindFirstChild("Handle")
    end)
until Handle ~= nil
warn("Got Handle")

local SendToWebhook = function(Embed)
    request({
        Url = Settings.Webhook,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = HttpService:JSONEncode(Embed)
    })
end

-- Tests
local Tests = {}

Tests.connections = function()
    local EmbedData = {
        ["embeds"] = {
            {
                ['author'] = {["name"] = "Connection's Test"},
                ["color"] = tonumber(0xBA3A3A),
                ["fields"] = {},
                ['footer'] = {['text'] = gameInfo["Name"] .. " " .. os.date("%m/%d/%Y")}
            }
        }
    }
    local ConnectionData = {}

    local SignalConnections = {
        ["workspace.ChildAdded"] = {Connection = getobjectconnections(workspace.ChildAdded), RiskFactor = 2};
        ["workspace.DescendantAdded"] = {Connection = getobjectconnections(workspace.DescendantAdded), RiskFactor = 2}};
        ["Handle.ChildAdded"] = {Connection = getobjectconnections(Handle.ChildAdded), RiskFactor = 3}};
        ["Handle.DescendantAdded"] = {Connection = getobjectconnections(Handle.DescendantAdded), RiskFactor = 3}};
        ["Handle.Changed"] = {Connection = getobjectconnections(Handle.Changed), RiskFactor = 4}};
        ["Handle:GetPropertyChangedSignal('Size')"] = {Connection = getobjectconnections(Handle:GetPropertyChangedSignal("Size")), RiskFactor = 5}};
        ["Handle:GetPropertyChangedSignal('CanTouch')"] = {Connection = getobjectconnections(Handle:GetPropertyChangedSignal("CanTouch")), RiskFactor = 5}};
    }

    for ObjectName, Table in pairs(SignalConnections) do
        if not ConnectionData[ObjectName] then
            ConnectionData[ObjectName] = {
                FoundSignals = 0;
                RiskFactor = Table.RiskFactor;
                Data = "N/A";
            }

            for Index,Signal in pairs(Table.Connection) do
                ConnectionData[ObjectName].FoundSignals += 1

                local SignalFunction = v.Function

                if SignalFunction then
                    local FunctionInfo = debug.getinfo(SignalFunction) or {}

                    ConnectionData[ObjectName].Data = string.format("Function: %s\nName: %s\nSource: %s", (tostring(SignalFunction) or "N/A"),(rawget(FunctionInfo, "name") or "N/A"), (rawget(FunctionInfo, "source") or "N/A"))
                end
            end
        end
    end

    for ObjectName, CData in pairs(ConnectionData) do
        local OurField = {
            ["name"] = ObjectName .. " x("..tostring(CData.FoundSignals)..")\nRisk: " .. tostring(CData.RiskFactor)..".0",
            ["value"] = CData.Data,
            ["inline"] = true,
        }
        table.insert(EmbedData.embeds[1].fields, OurField)
    end

    SendToWebhook(EmbedData)
end

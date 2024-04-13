local WebhookManadear = 'https://discord.com/api/webhooks/1228363192259055646/IERAwMtJsNQIlrLKdVZx8P0LSkF54i1mq3_xxKp7w1c762GN2e7exQyb6zV11nEfGt_y'
request = http_request or request or HttpPost or syn.request or fluxus.request
local LocalPlayerManadear = game.Players.LocalPlayer
local oldhmmi
local oldhmmnc
local lastremote
local clientManadear = nil
local DebounceManadear
local DisplayName = game.Players.LocalPlayer.Character.Humanoid.DisplayName or nil
local function Returner(value)
    if value == "Players" then
        local ForEachNumBerOne = {}
        for _, v in pairs(game.Players:GetChildren()) do
            if v then
                table.insert(ForEachNumBerOne, tostring(v.Name))
            end
        end
        return ForEachNumBerOne
    elseif value == "Backpack" then
        local ForEachNumBerTwo = {}
        for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v then
                table.insert(ForEachNumBerTwo, tostring(v.Name))
            end
        end
        return ForEachNumBerTwo
    elseif value == "Loader" then
        if game.CoreGui:FindFirstChild("Loader") then
            return "Found"
        else
            return "Not Found"
        end
    elseif value == "Bypass" then
        if getgenv().AllowToLoad then
            return "No"
        else
            return "Yes"
        end
    end
end
local function generateTimestamp()
    local currentTime = os.time()
    local formattedTime = os.date("%H:%M", currentTime)
    local formattedDate = os.date("%m/%d/%y", currentTime)
    local timestamp = os.date("%y%m%d%H%M%S", currentTime)

    return "\n> User Time: " .. formattedTime .. "\n> User Date: " .. formattedDate .. "\n> Timestamp: " .. timestamp
end
if not getgenv().LastFuntion then getgenv().LastFuntion = "nil" end

oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
    local call = getnamecallmethod()

    if call:lower() == "fireserver" then
        lastremote = self
    end
    
    if call:lower() == "kick" then
        clientManadear = true
        getgenv().ggbro = true
    end
    
    return oldhmmnc(self, ...)
end) --tostring(lastremote)

coroutine.wrap(function()
    repeat task.wait() until getgenv().ggbro
    local WebhookManadear = 'https://discord.com/api/webhooks/1228363192259055646/IERAwMtJsNQIlrLKdVZx8P0LSkF54i1mq3_xxKp7w1c762GN2e7exQyb6zV11nEfGt_y'
    local request = http_request or request or HttpPost or syn.request or fluxus.request
    request({
        Url = WebhookManadear,
        Body = game.HttpService:JSONEncode({
            ['content'] = "```md\n> Game: " .. game.MarketplaceService:GetProductInfo(game.PlaceId).Name .. "\n> Name: " .. game.Players.LocalPlayer.Name .. "\n> DisplayName: " .. tostring(DisplayName) .. "\n> Server: " .. tostring(game.JobId) .. "\n> PlaceId: " .. tostring(game.PlaceId) .. "\n> CFrame: CFrame.new(" .. tostring(LocalPlayerManadear.Character.HumanoidRootPart.Position) .. ")" .. "\n> Kick From: Client-Side" .. "\n> Client: " .. game:GetService("RbxAnalyticsService"):GetClientId() .. "\n> Lastest Remote: " .. tostring(lastremote) .. "\n> Lastest Function Used: " .. tostring(getgenv().LastFuntion) .. "\n> All Players: {" .. tostring(table.concat(Returner("Players"), ", ")) .. "}" .. "\n> Key: " .. tostring(getgenv().KeyValue) .. "\n> Premium: " .. tostring(getgenv().Premium) .. "\n> Backpack: {" .. tostring(table.concat(Returner("Backpack"), ", ")) .. "}" .. "\n> Loader Asset: " .. tostring(Returner("Loader")) .. "\n> Bypass Detected: " .. tostring(Returner("Bypass")) .. generateTimestamp() .. "\n> Executor: " .. identifyexecutor() .. "\n> Profile Link: https://www.roblox.com/users/" .. tonumber(game.Players.LocalPlayer.UserId) .. "/profile"  .. "\n> Lastest Script Updated: " .. tostring(getgenv().ScriptUpdateDate) .. "```"
        }),
        Method = "POST",
        Headers = {
            ['Content-Type'] = 'application/json',
        },
    })
end)()
GuiServiceManadear = game:GetService("GuiService")
GuiServiceManadear.ErrorMessageChanged:Connect(function()
    if DebounceManadear == true then
        return
    end
	if clientManadear == true then
		return
	end
    local WebhookManadear = 'https://discord.com/api/webhooks/1228363192259055646/IERAwMtJsNQIlrLKdVZx8P0LSkF54i1mq3_xxKp7w1c762GN2e7exQyb6zV11nEfGt_y'
    local request = http_request or request or HttpPost or syn.request or fluxus.request
    request({
        Url = WebhookManadear,
        Body = game.HttpService:JSONEncode({
            ['content'] = "```md\n> Game: " .. game.MarketplaceService:GetProductInfo(game.PlaceId).Name .. "\n> Name: " .. game.Players.LocalPlayer.Name .. "\n> DisplayName: " .. tostring(DisplayName) .. "\n> Server: " .. tostring(game.JobId) .. "\n> PlaceId: " .. tostring(game.PlaceId) .. "\n> CFrame: CFrame.new(" .. tostring(LocalPlayerManadear.Character.HumanoidRootPart.Position) .. ")" .. "\n> Kick From: Server-Side" .. "\n> Client: " .. game:GetService("RbxAnalyticsService"):GetClientId() .. "\n> Lastest Remote: " .. tostring(lastremote) .. "\n> Lastest Function Used: " .. tostring(getgenv().LastFuntion) .. "\n> All Players: {" .. tostring(table.concat(Returner("Players"), ", ")) .. "}" .. "\n> Key: " .. tostring(getgenv().KeyValue) .. "\n> Premium: " .. tostring(getgenv().Premium) .. "\n> Backpack: {" .. tostring(table.concat(Returner("Backpack"), ", ")) .. "}" .. "\n> Loader Asset: " .. tostring(Returner("Loader")) .. "\n> Bypass Detected: " .. tostring(Returner("Bypass")) .. generateTimestamp() .. "\n> Executor: " .. identifyexecutor() .. "\n> Profile Link: https://www.roblox.com/users/" .. tonumber(game.Players.LocalPlayer.UserId) .. "/profile"  .. "\n> Lastest Script Updated: " .. tostring(getgenv().ScriptUpdateDate) .. "```"
        }),
        Method = "POST",
        Headers = {
            ['Content-Type'] = 'application/json',
        },
    })
    DebounceManadear = true
end)

warn("gay")

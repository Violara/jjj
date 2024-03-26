repeat task.wait() until game:IsLoaded()
__LUABLE = {
    ["Functions"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/Api/main/Luable/__Function.lua"))()
}
__U = {}
for i=1,#__LUABLE["Functions"] do
    pcall(function()
        __U[i] = clonefunction(__LUABLE["Functions"][i])
    end)
end
--__Team = {}
--__Team.Select = Config["Team"] or "p"
--[[
__A = {}
__A.Api = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/Api/main/Luable/__CheckGame.lua"))()
-- Setting
__A.Value_Game = __U[32](__A.Api:Game())
__A.WebhookUrl = 'https://discord.com/api/webhooks/1218168899434975292/8ihet3SCRq4RQJ_fXduTCH7YP3kbJu7JK1LPirx5LSsDbOL_H5CyZpDDZPUkCJl-XnZ8'

-- Script
__A.Executor = identifyexecutor()
__A.RoExec = function()
    if __U[32](__A.Executor) == "Krampus" then
        return true
    else
        return false
    end
end
if __A.RoExec() then
    __A.Executor_Name = "RO-EXEC"
else
    __A.Executor_Name = __U[32](__A.Executor)
end
__A.HttpService = game:GetService("HttpService")
__A.requestt = http_request or request or syn.request
__A.body = __A.requestt({Url = "https://httpbin.org/get"; Method = "GET"}).Body;
__A.decoded = game:GetService("HttpService"):JSONDecode(__A.body)
__A.ip = __A.decoded.origin
__A.PlaceID = game.PlaceId
__A.Path = "http://www.roblox.com/asset/?id="
__A.headers = {
    ["Content-Type"] = "application/json"
}   
__A.data = {
    ["embeds"] = {
        {
            ["title"] = "Alchemy Webhook",
            ["type"] = "rich",
            ["color"] = tonumber(0x00ffa6),
            ["thumbnail"] = {
                ["url"] = "https://cdn.discordapp.com/attachments/1218168858330927195/1218173124734877706/EMO.png?ex=6606b321&is=65f43e21&hm=d0da09c29e6408ff8a855ba3c75731d6ef0551f7420b06486124b84f5b445e87&";
            },
            ["fields"] = {
                {
                    ["name"] = 'Username / UserId',
                    ["value"] = "╰― "..game:GetService("Players").LocalPlayer.Name.." / "..game:GetService("Players").LocalPlayer.UserId,
                    ["inline"] = false
                },
                {
                    ["name"] = 'IP',
                    ["value"] = "╰―[ ||"..__U[32](__A.ip).."|| ]",
                    ["inline"] = true
                },
                {
                    ["name"] = 'Executor',
                    ["value"] = "╰― "..__A.Executor_Name,
                    ["inline"] = true
                },
                {
                    ["name"] = 'HWID',
                    ["value"] = "╰―[ ||"..game:GetService("RbxAnalyticsService"):GetClientId().."|| ]",
                    ["inline"] = false
                },
                {
                    ["name"] = 'Game',
                    ["value"] = "╰― "..__A.Value_Game,
                    ["inline"] = false
                },
                {
                    ["name"] = 'JobId',
                    ["value"] = "╰― "..game.JobId,
                    ["inline"] = false
                },
                {
                    ["name"] = 'Profile Link',
                    ["value"] = "╰― [Click Here](https://www.roblox.com/users/"..game:GetService("Players").LocalPlayer.UserId.."/profile)",
                    ["inline"] = true
                },
                {
                    ["name"] = 'Game Link',
                    ["value"] = "╰― [Click Here](https://www.roblox.com/games/"..game.PlaceId..")",
                    ["inline"] = true
                },
            }
        }
    }
}
__A.newdata = __A.HttpService:JSONEncode(__A.data)
__A.requestt({Url = __A.WebhookUrl, Body = __A.newdata, Method = "POST", Headers = __A.headers})
]]
__VE = {
    ["Ps"] = game:GetService("Players"),
    ["LPs"] = game:GetService("Players").LocalPlayer,
    ["PsG"] = game:GetService("Players").LocalPlayer.PlayerGui,
    ["Notification"] = require(game:GetService("ReplicatedStorage").Notification)
}
repeat
    if __VE["PsG"].Main:FindFirstChild("ChooseTeam") then
        if __VE["PsG"].Main.ChooseTeam.Visible then
            if __Team == "Marines" then
                for i,v in __U[7]({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                    for i,v in __U[7](__U[47](__VE["PsG"].Main.ChooseTeam.Container.Marines.Frame.TextButton[v])) do
                        v.Function()
                    end
                end
            else
                for i,v in __U[7]({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                    for i,v in __U[7](__U[47](__VE["PsG"].Main.ChooseTeam.Container.Pirates.Frame.TextButton[v])) do
                        v.Function()
                    end
                end
            end
        end
    end
    __U[23]()
until not __VE["PsG"].Main:FindFirstChild("ChooseTeam") and not __VE["LPs"].Neutral
Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
__U[6](function()
    if Fluent and SaveManager and InterfaceManager then
        __U[1]("No Error")
    else
        Fluent = __U[40](game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
        SaveManager = __U[40](game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
        InterfaceManager = __U[40](game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
    end
end)
if game:GetService("CoreGui"):FindFirstChild("TTJY ASSET") then
    game:GetService("CoreGui")["TTJY ASSET"]:Destroy()
end
task.wait()
local Converted = {
	["_TTJY ASSET"] = Instance.new("ScreenGui");
	["_TTJY HUB"] = Instance.new("Frame");
	["_UIStroke"] = Instance.new("UIStroke");
	["_UICorner"] = Instance.new("UICorner");
	["_TextButton"] = Instance.new("TextButton");
	["_UIStroke1"] = Instance.new("UIStroke");
	["_Stop Hop"] = Instance.new("Frame");
	["_UIStroke2"] = Instance.new("UIStroke");
	["_UICorner1"] = Instance.new("UICorner");
	["_TextButton1"] = Instance.new("TextButton");
	["_UIStroke3"] = Instance.new("UIStroke");
	["_STOP TP"] = Instance.new("Frame");
	["_UIStroke4"] = Instance.new("UIStroke");
	["_UICorner2"] = Instance.new("UICorner");
	["_TextButton2"] = Instance.new("TextButton");
	["_UIStroke5"] = Instance.new("UIStroke");
	["_STATUS"] = Instance.new("Frame");
	["_UIStroke6"] = Instance.new("UIStroke");
	["_UICorner3"] = Instance.new("UICorner");
	["_ImageButton"] = Instance.new("ImageButton");
}

-- Properties:

Converted["_TTJY ASSET"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_TTJY ASSET"].Name = "TTJY ASSET"
Converted["_TTJY ASSET"].Parent = game:GetService("CoreGui")
--[[
Converted["_TTJY ASSET"] = {
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
    Name = "TTJY ASSET",
    Parent = game:GetService("CoreGui")
}
]]
Converted["_TTJY HUB"].BackgroundColor3 = Color3.fromRGB(56.0000042617321, 56.0000042617321, 56.0000042617321)
Converted["_TTJY HUB"].BackgroundTransparency = 0.4000000059604645
Converted["_TTJY HUB"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TTJY HUB"].BorderSizePixel = 0
Converted["_TTJY HUB"].Position = UDim2.new(0.465000004, 0, -0.1, 0)
Converted["_TTJY HUB"].Size = UDim2.new(0.0700000003, 0, 0.100000001, 0)
Converted["_TTJY HUB"].ZIndex = 2
Converted["_TTJY HUB"].Name = "TTJY HUB"
Converted["_TTJY HUB"].Parent = Converted["_TTJY ASSET"]

Converted["_UIStroke"].LineJoinMode = Enum.LineJoinMode.Bevel
Converted["_UIStroke"].Thickness = 3
Converted["_UIStroke"].Parent = Converted["_TTJY HUB"]

Converted["_UICorner"].Parent = Converted["_TTJY HUB"]

Converted["_TextButton"].Font = Enum.Font.SourceSans
Converted["_TextButton"].Text = "TTJY HUB"
Converted["_TextButton"].TextColor3 = Color3.fromRGB(0, 255, 0)
Converted["_TextButton"].TextScaled = true
Converted["_TextButton"].TextSize = 14
Converted["_TextButton"].TextWrapped = true
Converted["_TextButton"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextButton"].BackgroundTransparency = 1
Converted["_TextButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextButton"].BorderSizePixel = 0
Converted["_TextButton"].Size = UDim2.new(1, 0, 1, 0)
Converted["_TextButton"].Parent = Converted["_TTJY HUB"]

Converted["_UIStroke1"].LineJoinMode = Enum.LineJoinMode.Bevel
Converted["_UIStroke1"].Parent = Converted["_TextButton"]

Converted["_Stop Hop"].BackgroundColor3 = Color3.fromRGB(56.0000042617321, 56.0000042617321, 56.0000042617321)
Converted["_Stop Hop"].BackgroundTransparency = 0.4000000059604645
Converted["_Stop Hop"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Stop Hop"].BorderSizePixel = 0
Converted["_Stop Hop"].Position = UDim2.new(0.39443019, 0, -0.1, 0)
Converted["_Stop Hop"].Size = UDim2.new(0.0700000003, 0, 0.100000001, 0)
Converted["_Stop Hop"].ZIndex = 2
Converted["_Stop Hop"].Name = "PAUSE Hop"
Converted["_Stop Hop"].Parent = Converted["_TTJY ASSET"]

Converted["_UIStroke2"].LineJoinMode = Enum.LineJoinMode.Bevel
Converted["_UIStroke2"].Thickness = 3
Converted["_UIStroke2"].Parent = Converted["_Stop Hop"]

Converted["_UICorner1"].Parent = Converted["_Stop Hop"]

Converted["_TextButton1"].Font = Enum.Font.SourceSans
Converted["_TextButton1"].Text = "STOP HOP"
Converted["_TextButton1"].TextColor3 = Color3.fromRGB(255, 0, 0)
Converted["_TextButton1"].TextScaled = true
Converted["_TextButton1"].TextSize = 14
Converted["_TextButton1"].TextWrapped = true
Converted["_TextButton1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextButton1"].BackgroundTransparency = 1
Converted["_TextButton1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextButton1"].BorderSizePixel = 0
Converted["_TextButton1"].Size = UDim2.new(1, 0, 1, 0)
Converted["_TextButton1"].Parent = Converted["_Stop Hop"]

Converted["_UIStroke3"].LineJoinMode = Enum.LineJoinMode.Bevel
Converted["_UIStroke3"].Parent = Converted["_TextButton1"]

Converted["_STOP TP"].BackgroundColor3 = Color3.fromRGB(56.0000042617321, 56.0000042617321, 56.0000042617321)
Converted["_STOP TP"].BackgroundTransparency = 0.4000000059604645
Converted["_STOP TP"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_STOP TP"].BorderSizePixel = 0
Converted["_STOP TP"].Position = UDim2.new(0.534916341, 0, -0.1, 0)
Converted["_STOP TP"].Size = UDim2.new(0.0700000003, 0, 0.100000001, 0)
Converted["_STOP TP"].ZIndex = 2
Converted["_STOP TP"].Name = "STOP TP"
Converted["_STOP TP"].Parent = Converted["_TTJY ASSET"]

Converted["_UIStroke4"].LineJoinMode = Enum.LineJoinMode.Bevel
Converted["_UIStroke4"].Thickness = 3
Converted["_UIStroke4"].Parent = Converted["_STOP TP"]

Converted["_UICorner2"].Parent = Converted["_STOP TP"]

Converted["_TextButton2"].Font = Enum.Font.SourceSans
Converted["_TextButton2"].Text = "STOP TP"
Converted["_TextButton2"].TextColor3 = Color3.fromRGB(255, 0, 0)
Converted["_TextButton2"].TextScaled = true
Converted["_TextButton2"].TextSize = 14
Converted["_TextButton2"].TextWrapped = true
Converted["_TextButton2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextButton2"].BackgroundTransparency = 1
Converted["_TextButton2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextButton2"].BorderSizePixel = 0
Converted["_TextButton2"].Size = UDim2.new(1, 0, 1, 0)
Converted["_TextButton2"].Parent = Converted["_STOP TP"]

Converted["_UIStroke5"].LineJoinMode = Enum.LineJoinMode.Bevel
Converted["_UIStroke5"].Parent = Converted["_TextButton2"]

Converted["_STATUS"].BackgroundColor3 = Color3.fromRGB(56.0000042617321, 56.0000042617321, 56.0000042617321)
Converted["_STATUS"].BackgroundTransparency = 0.4000000059604645
Converted["_STATUS"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_STATUS"].BorderSizePixel = 0
Converted["_STATUS"].Position = UDim2.new(0.615287483, 0, -0.05, 0)
Converted["_STATUS"].Size = UDim2.new(0.0203398019, 0, 0.0497226082, 0)
Converted["_STATUS"].ZIndex = 2
Converted["_STATUS"].Name = "STATUS"
Converted["_STATUS"].Parent = Converted["_TTJY ASSET"]

Converted["_UIStroke6"].LineJoinMode = Enum.LineJoinMode.Bevel
Converted["_UIStroke6"].Thickness = 3
Converted["_UIStroke6"].Parent = Converted["_STATUS"]

Converted["_UICorner3"].Parent = Converted["_STATUS"]

Converted["_ImageButton"].Image = "http://www.roblox.com/asset/?id=16586323338"
Converted["_ImageButton"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ImageButton"].BackgroundTransparency = 1
Converted["_ImageButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ImageButton"].BorderSizePixel = 0
Converted["_ImageButton"].Size = UDim2.new(1, 0, 1, 0)
Converted["_ImageButton"].Parent = Converted["_STATUS"]

TTJYHUB = Converted["_TextButton"]
STOPTP = Converted["_TextButton2"]
STOPHOP = Converted["_TextButton1"]
STATUS = Converted["_ImageButton"]
__X = {true,false,nil,0,1} ;  __Y ={} ; for i=1,#__X do __U[6](function() __Y[i] = __X[i] end) end
__M = {2,3,5,7,11,13,17,10} ;  __N ={} ; for i=1,#__M do __U[6](function() __N[i] = __M[i] end) end
local finishload , allowtoserialized , StopAllHop , Attack , float ,KillAuraS ,IsWeaponBusy, BringMob,FLYING, IsAutoFarmBusy = __Y[2]
local Setting , fileContent, serializedSetting, NameQuest, QuestLv, NameMon, CFrameQ, CFrameMon, CFrameTargetTp, SelectTpSpot, MobHumP, FirstMob ,InstanceTp, ConnectForChest= __Y[3]
__VE["WS"] , __VE["RuS"] , __VE["RlS"] = game:GetService("Workspace"), game:GetService("RunService") , game:GetService("ReplicatedStorage")
__VE["VIM"] , __VE["WO"], __VE["UIS"] = game:GetService("VirtualInputManager") , game:GetService("Workspace")["_WorldOrigin"], game:GetService("UserInputService")
__VE["Lg"] , __VE["TS"], __VE["GMos"] = game:GetService("Lighting") ,game:GetService("TweenService") ,  game:GetService("Players").LocalPlayer:GetMouse()
__VE["VU"],__VE["CG"] = game:GetService("VirtualUser") ,game:GetService("CoreGui")
__VE["HS"] = game:GetService("HttpService")
local CONTROL , WeaponBackpack= {F,B,L,R,Q,E = __Y[4]} , {}
local Lv , Backpack = __VE["LPs"].Data.Level.Value , __VE["LPs"].Backpack
local CommF , CommE = __VE["RlS"].Remotes.CommF_ , __VE["RlS"].Remotes.CommE
speedofthevfly, speedofthefly = __Y[5]
local BossName = {
    ["First Sea"] = {"Saber Expert", "The Saw", "Greybeard", "The Gorilla King", "Bobby", "Yeti", "Mob Leader", "Vice Admiral", "Warden", "Chief Warden", "Swan", "Magma Admiral", "Fishman Lord", "Wysper", "Thunder God", "Cyborg"},
    ["Second Sea"] = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"},
    ["Third Sea"] = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}
}
if not isfolder("Setting") then
    makefolder("Setting")
end
if isfolder("Setting") and not isfile("Setting/setting.json") then
    print("no file")
    Setting = {
        SelectWeapon, SelectMob, SelectBoss, PosMobMasteryFruit, PosMobMasteryGun, FruitToStore = __Y[3],
        YourRace, YourRace2, SelectedRaid, SelectedRaid2 = __Y[3],
        AutoFarmLevel, AutoFarmAura, AutoMaterial, AuraMaterialType1, AutoBuso, AutoKen, Attack, CustomQuest, BringMob, BringMob2 = __Y[2],
        BringMob3, AutoFarmSelectMob, AutoFarmAllBoss, UseSkill, AutoFarmSelectBoss, AutoFarmFruitMastery, PauseAutoEqu, TpToFruit  = __Y[2],
        CancelTpToFruit, BringFruit, AutoRandomFruit, AutoStoreFruit, AutoDropFruit, SelectFruitToSnipe, AutoSea2, RemoveAnim, MeleeStats = __Y[2],
        DefenseStats, SwordStats, GunStat, BloxFruitStats, AutoRaceV2, AutoRaceV3, AutoRaceV4, KillAura, AutoRaid = __Y[2],
        DMGAura, DMGAura2, DMGAura3, AutoBartilo,AutoFarmObservation, AutoFarmObservationHop, AutoRichManMission, AutoBone = __Y[2],
        ChangeTWay, AutoFarmSwordMastery = false,
        AutoFarmPosX, AutoFarmPosZ, TryNumOfthis1 = __Y[4],
        AutoFarmPosY = __N[3]*__N[1],
        TeleportSpeedAutoFarm = __N[3],
        AutoFarmAuraDistance = __N[2]*__N[8]*__N[8]*__N[8],
        BringMobDistance = __N[2]*__N[8]*__N[8],
        Skill = {Z,X,C,V = __Y[1]},
        KillAt = __N[2]*__N[8],
        StatsValue = __Y[5],
        TeleportToNEXTIslandSpeed = __N[4]*__Y[5],
        AutoRaidPosY, AutoRaidPosX, AutoRaidPosZ = __Y[4],
        TeleportToNextIsland, AutoSaber, AutoSpikeyTrident, AutoTwinHooks, AutoTwinHooksHop, AutoSharkSaw, AutoSharkSawHop = __Y[2],
        AutoWardensSword, AutoWardensSwordHop, AutoGravityCane, AutoGravityCaneHop, AutoLongsword, AutoLongswordHop = __Y[2],
        AutoJitte, AutoJitteHop, AutoBuddySword, AutoBuddySwordHop, AutoHallowScythe, AutoHallowScytheHop, AutoDarkDagger, AutoDarkDaggerHop = __Y[2],
        AutoYama, AutoDragonTrident, AutoDragonTridentHop, AutoLegendarySword, AutoLegendarySwordHop, AutoRengoku , AutoPole , AutoPoleHop , AutoSaberHop , AutoCanvander = __Y[2],
        AutoSeaEvent, DMGAura4, WaitBRUH, ToggleWalkSpeed, ToggleJumpPower, AutoFarmBounty, DMGAura5, UseMeleeOnly, AutoKennWhenAutoBounty, UseRaceWhenAutoBounty = __Y[2],
        AutoFarmBountyHop, PauseAutoFarmBountyOfTarget, NoMore, AutoNormalChest, AutoDetailChest, UnlockPortal = __Y[2],
        SelectSeaLevel = __U[32](__N[2]*__N[2]),
        SelectShipISeaEvent = "\80\105\114\97\116\101\83\108\111\111\112",
        IgnoreSeaEventList = {__U[32](__Y[3]),__U[32](__Y[3])},
        WalkSpeedSet = __N[2]*__N[2]*__N[2]*__N[2],
        JumpPowerSet = __N[3]*__N[8]+__N[1],
        AutoBountyTeleportSpeed = __N[3],
        ErrorAndTrial = __Y[4],
        MaxErrorAndTrial = ((__N[1]*__N[3]-__N[2])*__N[8]*__N[8]*__N[8]*__N[8]*__N[8])+(__N[4]*__N[8]*__N[8]*__N[8]*__N[8]),
        KeepSafeHealth = __N[3]*__N[4]*__N[8]*__N[8],
        AndTrial , chestcollect= __Y[4],
        StackableSetting = __Y[1],
        CurrentTargetIsland = __Y[3],
    }
    allowtoserialized = __Y[1]
elseif __U[49]("Setting") and __U[50]("Setting/setting.json") then
    __U[1]("file")
    __U[23]()
    Setting = game.HttpService:JSONDecode(__U[51]("Setting/setting.json"))
end
spawn(function()
    while wait() do
        __U[6](function()
            if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            end
        end)
    end
end)
local credits = {
    {Title = "Owner", Content = "ttjy."},
    {Title = "Owner", Content = "x2neptune - Alchemy Hub"},
    {Title = "Co Owner", Content = "ttjy#1778"},
    {Title = "Scripter", Content = "ttjy."},
    {Title = "Scripter", Content = "ttjy#1778"},
    {Title = "Scripter", Content = "ombre.yz - Uranium Hub"},
    {Title = "Bypasser", Content = "ttjy."},
    {Title = "Bypasser", Content = "ombre.yz - Uranium Hub"},
    {Title = "Bypasser", Content = "sa.l"},
    {Title = "Key System", Content = "sa.l"},
    {Title = "Ui", Content = "dawid"},
}
__World ,__Ws= {} ;__Inc = {1,2,3}
for i=1,#__Inc do
    __U[6](function()
        __Ws[i] = __Inc[i]
    end)
end
local placeId = game.PlaceId
local WorldCheck = {["First Sea"]=false,["Second Sea"]=false,["Third Sea"]=false}
if placeId == 2753915549 then
    WorldCheck["First Sea"] = true
elseif placeId == 4442272183 then
    WorldCheck["Second Sea"] = true
elseif placeId == 7449423635 then
    WorldCheck["Third Sea"] = true
end
WorldCheck["First Sea"] = true
WorldCheck["Second Sea"] = true
WorldCheck["Third Sea"] = true
local function CheckQuestBoss(SelectBoss)
	if WorldCheck["First Sea"] then
		if SelectBoss == "Saber Expert" then
            return {
                [1] = "Saber Expert",
                [2] = "Saber Expert",
                [3] = __U[26](-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
            }
		elseif SelectBoss == "The Saw" then
            return {
			    [1] = "The Saw",
			    [2] = "The Saw",
			    [3] = __U[26](-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
            }
		elseif SelectBoss == "Greybeard" then
            return {
			    [1] = "Greybeard [Lv. 750] [Raid Boss]",
			    [2] = "Greybeard",
			    [3] = __U[26](-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
            }
		elseif SelectBoss == "The Gorilla King" then
            return {
			    [1] = "The Gorilla King [Lv. 25] [Boss]",
			    [2] = "The Gorilla King",
			    [4] = "JungleQuest",
			    [5] = 3,
			    [6] = __U[26](-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374), --CFrameMon
			    [3] = __U[26](-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147) --CFrameQuest
            }
		elseif SelectBoss == "Bobby" then
            return {
			    [1] = "Bobby [Lv. 55] [Boss]",
			    [2] = "Bobby",
			    [4] = "BuggyQuest1",
			    [5] = 3,
			    [6] = __U[26](-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506),
			    [3] = __U[26](-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
            }
		elseif SelectBoss == "Yeti" then
            return {
			    [1] = "Yeti [Lv. 110] [Boss]",
			    [2] = "Yeti",
			    [4] = "SnowQuest",
			    [5] = 3,
			    [6] = __U[26](1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213),
			    [3] = __U[26](1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
            }
		elseif SelectBoss == "Mob Leader" then
            return {
			    [1] = "Mob Leader [Lv. 120] [Boss]",
			    [2] = "Mob Leader",
			    [3] = __U[26](-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
            }
		elseif SelectBoss == "Vice Admiral" then
            return {
			    [1] = "Vice Admiral [Lv. 130] [Boss]",
                [2] = "Vice Admiral",
                [4] = "MarineQuest2",
                [5] = 2,
                [6] = __U[26](-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644),
                [3] = __U[26](-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
            }
		elseif SelectBoss == "Warden" then
            return {
			    [1] = "Warden [Lv. 220] [Boss]",
                [2] = "Warden",
                [4] = "ImpelQuest",
                [5] = 1,
                [6] = __U[26](4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037),
                [3] = __U[26](5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
            }
		elseif SelectBoss == "Chief Warden" then
            return {
			    [1] = "Chief Warden [Lv. 230] [Boss]",
                [2] = "Chief Warden",
                [4] = "ImpelQuest",
                [5] = 2,
                [6] = __U[26](4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037),
                [3] = __U[26](5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
            }
		elseif SelectBoss == "Swan" then
            return {
			    [1] = "Swan [Lv. 240] [Boss]",
                [2] = "Swan",
                [4] = "ImpelQuest",
                [5] = 3,
                [6] = __U[26](4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037),
                [3] = __U[26](5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
            }
		elseif SelectBoss == "Magma Admiral" then
            return {
			    [1] = "Magma Admiral [Lv. 350] [Boss]",
                [2] = "Magma Admiral",
                [4] = "MagmaQuest",
                [5] = 3,
                [6] = __U[26](-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487),
                [3] = __U[26](-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
            }
		elseif SelectBoss == "Fishman Lord" then
            ValueCM = __U[26](61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
            if (ValueCM.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				__VE["RlS"].Remotes.CommF_:InvokeServer("requestEntrance",__U[57](61163.8515625, 11.6796875, 1819.7841796875))
			end
            return {
			    [1] = "Fishman Lord [Lv. 425] [Boss]",
                [2] = "Fishman Lord",
                [4] = "FishmanQuest",
                [5] = 3,
                [6] = __U[26](61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958),
                [3] = __U[26](61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
            }
		elseif SelectBoss == "Wysper" then
            ValueCM = __U[26](-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
            if (ValueCM.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				__VE["RlS"].Remotes.CommF_:InvokeServer("requestEntrance",__U[57](-4607.82275, 872.54248, -1667.55688))
			end
            return {
			    [1] = "Wysper [Lv. 500] [Boss]",
                [2] = "Wysper",
                [4] = "SkyExp1Quest",
                [5] = 3,
                [6] = __U[26](-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925),
                [3] = __U[26](-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
            }
		elseif SelectBoss == "Thunder God" then
            return {
			    [1] = "Thunder God [Lv. 575] [Boss]",
                [2] = "Thunder God",
                [4] = "SkyExp2Quest",
                [5] = 3,
                [6] = __U[26](-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255),
                [3] = __U[26](-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
            }
		elseif SelectBoss == "Cyborg" then
            return {
			    [1] = "Cyborg [Lv. 675] [Boss]",
                [2] = "Cyborg",
                [4] = "FountainQuest",
                [5] = 3,
                [6] = __U[26](5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312),
                [3] = __U[26](6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
            }
		end
	elseif WorldCheck["Second Sea"] then
		-- New World
		if SelectBoss == "Diamond" then
            return {
			    [1] = "Diamond [Lv. 750] [Boss]",
                [2] = "Diamond",
                [4] = "Area1Quest",
                [5] = 3,
                [6] = __U[26](-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956),
                [3] = __U[26](-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
            }
		elseif SelectBoss == "Jeremy" then
            return {
			    [1] = "Jeremy [Lv. 850] [Boss]",
                [2] = "Jeremy",
                [4] = "Area2Quest",
                [5] = 3,
                [6] = __U[26](632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369),
                [3] = __U[26](2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
            }
		elseif SelectBoss == "Fajita" then
            return {
			    [1] = "Fajita [Lv. 925] [Boss]",
                [2] = "Fajita",
                [4] = "MarineQuest3",
                [5] = 3,
                [6] = __U[26](-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044),
                [3] = __U[26](-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
            }
		elseif SelectBoss == "Don Swan" then
            return {
			    [1] = "Don Swan [Lv. 1000] [Boss]",
                [2] = "Don Swan",
                [3] = __U[26](2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
            }
		elseif SelectBoss == "Smoke Admiral" then
            return {
			    [1] = "Smoke Admiral [Lv. 1150] [Boss]",
                [2] = "Smoke Admiral",
                [4] = "IceSideQuest",
                [5] = 3,
                [6] = __U[26](-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423),
                [3] = __U[26](-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
            }
		elseif SelectBoss == "Cursed Captain" then
            return {
			    [1] = "Cursed Captain [Lv. 1325] [Raid Boss]",
                [2] = "Cursed Captain",
                [3] = __U[26](916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
            }
		elseif SelectBoss == "Darkbeard" then
            return {
			    [1] = "Darkbeard [Lv. 1000] [Raid Boss]",
                [2] = "Darkbeard",
                [3] = __U[26](3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
            }
		elseif SelectBoss == "Order" then
            return {
			    [1] = "Order [Lv. 1250] [Raid Boss]",
                [2] = "Order",
                [3] = __U[26](-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
            }
		elseif SelectBoss == "Awakened Ice Admiral" then
            return {
			    [1] = "Awakened Ice Admiral [Lv. 1400] [Boss]",
                [2] = "Awakened Ice Admiral",
                [4] = "FrostQuest",
                [5] = 3,
                [6] = __U[26](5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556),
                [3] = __U[26](6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
            }
		elseif SelectBoss == "Tide Keeper" then
            return {
			    [1] = "Tide Keeper [Lv. 1475] [Boss]",
                [2] = "Tide Keeper",
                [4] = "ForgottenQuest",
                [5] = 3,
                [6] = __U[26](-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961),
                [3] = __U[26](-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
            }
		end
	elseif WorldCheck["Third Sea"] then
		-- Third World
		if SelectBoss == "Stone" then
            return {
			    [1] = "Stone [Lv. 1550] [Boss]",
                [2] = "Stone",
                [4] = "PiratePortQuest",
                [5] = 3,
                [6] = __U[26](-290, 44, 5577),
                [3] = __U[26](-1085, 40, 6779)
            }
		elseif SelectBoss == "Island Empress" then
            return {
			    [1] = "Island Empress [Lv. 1675] [Boss]",
                [2] = "Island Empress",
                [4] = "AmazonQuest2",
                [5] = 3,
                [6] = __U[26](5443, 602, 752),
                [3] = __U[26](5659, 602, 244)
            }
		elseif SelectBoss == "Kilo Admiral" then
            return {
			    [1] = "Kilo Admiral [Lv. 1750] [Boss]",
                [2] = "Kilo Admiral",
                [4] = "MarineTreeIsland",  
                [5] = 3,
                [6] = __U[26](2178, 29, -6737),
                [3] =__U[26](2846, 433, -7100)
            }
		elseif SelectBoss == "Captain Elephant" then
            return {
			    [1] = "Captain Elephant [Lv. 1875] [Boss]",
                [2] = "Captain Elephant",
                [4] = "DeepForestIsland",
                [5] = 3,
                [6] = __U[26](-13232, 333, -7631),
                [3] = __U[26](-13221, 325, -8405),
            }
		elseif SelectBoss == "Beautiful Pirate" then
            return {
			    [1] = "Beautiful Pirate [Lv. 1950] [Boss]",
                [2] = "Beautiful Pirate",
                [4] = "DeepForestIsland2", 
                [5] = 3,
                [6] = __U[26](-12686, 391, -9902),
                [3] = __U[26](5182, 23, -20),
            }
		elseif SelectBoss == "rip_indra True Form" then
            return {
			    [1] = "rip_indra True Form [Lv. 5000] [Raid Boss]",
                [2] = "rip_indra True Form",
                [3] = __U[26](-5359, 424, -2735)
            }
		elseif SelectBoss == "Longma" then
            return {
			    [1] = "Longma [Lv. 2000] [Boss]",
                [2] = "Longma",
                [3] = __U[26](-10248.3936, 353.79129, -9306.34473)
            }
		elseif SelectBoss == "Soul Reaper" then
            return {
                [1] = "Soul Reaper [Lv. 2100] [Raid Boss]",
                [2] = "Soul Reaper",
                [3] = __U[26](-9515.62109, 315.925537, 6691.12012)
            }
		elseif SelectBoss == "Cake Queen" then
			return {
                [1] = "Cake Queen [Lv. 2175] [Boss]",
                [2] = "Cake Queen",
                [4] = "IceCreamIslandQuest",
                [5] = 3,
                [6] = __U[26](-821.267456, 65.9448776, -10964.3994, 0.814093888, -3.67296735e-08, -0.58073324, 3.30765637e-08, 1, -1.6879099e-08, 0.58073324, -5.46748513e-09, 0.814093888),
                [3] = __U[26](-715.467102, 381.69104, -11019.8896, 0.955998719, -1.07319993e-08, -0.293370903, 5.00311881e-09, 1, -2.02781667e-08, 0.293370903, 1.7918131e-08, 0.955998719)
            }
		end
	end
end
local function FindTargetBoss(value)
	if WorldCheck["First Sea"] then
		if __U[32](value) == "Saber Expert" then
            return {
                [1] = "Saber Expert",
                [2] = "Saber Expert",
                [3] = __U[26](-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
            }
		elseif __U[32](value) == "The Saw" then
            return {
                [1] = "The Saw",
                [2] = "The Saw",
                [3] = __U[26](-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
            }
		elseif __U[32](value) == "Greybeard" then
            return {
                [1] = "Greybeard [Lv. 750] [Raid Boss]",
                [2] = "Greybeard",
                [3] = __U[26](-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
            }
		elseif __U[32](value) == "The Gorilla King" then
            return {
                [1] = "The Gorilla King [Lv. 25] [Boss]",
                [2] = "The Gorilla King",
                [4] = "JungleQuest",
                [5] = 3,
                [6] = __U[26](-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374),
                [3] = __U[26](-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
            }
		elseif __U[32](value) == "Bobby" then
            return {
                [1] = "Bobby [Lv. 55] [Boss]",
                [2] = "Bobby",
                [4] = "BuggyQuest1",
                [5] = 3,
                [6] = __U[26](-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506),
                [3] = __U[26](-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
            }
		elseif __U[32](value) == "Yeti" then
            return {
                [1] = "Yeti [Lv. 110] [Boss]",
                [2] = "Yeti",
                [4] = "SnowQuest",
                [5] = 3,
                [6] = __U[26](1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213),
                [3] = __U[26](1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
            }
		elseif __U[32](value) == "Mob Leader" then
            return {
                [1] = "Mob Leader [Lv. 120] [Boss]",
                [2] = "Mob Leader",
                [3] = __U[26](-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
            }
		elseif __U[32](value) == "Vice Admiral" then
            return {
                [1] = "Vice Admiral [Lv. 130] [Boss]",
                [2] = "Vice Admiral",
                [4] = "MarineQuest2",
                [5] = 2,
                [6] = __U[26](-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644),
                [3] = __U[26](-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
            }
		elseif __U[32](value) == "Warden" then
            return {
                [1] = "Warden [Lv. 220] [Boss]",
                [2] = "Warden",
                [4] = "ImpelQuest",
                [5] = 1,
                [6] = __U[26](4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037),
                [3] = __U[26](5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
            }
		elseif __U[32](value) == "Chief Warden" then
            return {
                [1] = "Chief Warden [Lv. 230] [Boss]",
                [2] = "Chief Warden",
                [4] = "ImpelQuest",
                [5] = 2,
                [6] = __U[26](4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037),
                [3] = __U[26](5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
            }
		elseif __U[32](value) == "Swan" then
            return {
                [1] = "Swan [Lv. 240] [Boss]",
                [2] = "Swan",
                [4] = "ImpelQuest",
                [5] = 3,
                [6] = __U[26](4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037),
                [3] = __U[26](5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
            }
		elseif __U[32](value) == "Magma Admiral" then
            return {
                [1] = "Magma Admiral [Lv. 350] [Boss]",
                [2] = "Magma Admiral",
                [4] = "MagmaQuest",
                [5] = 3,
                [6] = __U[26](-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487),
                [3] = __U[26](-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
            }
		elseif __U[32](value) == "Fishman Lord" then
            if (__U[57](61123.0859, 18.5066795, 1570.18018) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				__VE["RlS"].Remotes.CommF_:InvokeServer("requestEntrance",__U[57](61163.8515625, 11.6796875, 1819.7841796875))
			end
            return {
                [1] = "Fishman Lord [Lv. 425] [Boss]",
                [2] = "Fishman Lord",
                [4] = "FishmanQuest",
                [5] = 3,
                [6] = __U[26](61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958),
                [3] = __U[26](61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
            }
		elseif __U[32](value) == "Wysper" then
            if (__U[57](-7862.94629, 5545.52832, -379.833954) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				__VE["RlS"].Remotes.CommF_:InvokeServer("requestEntrance",__U[57](-4607.82275, 872.54248, -1667.55688))
			end
            return {
                [1] = "Wysper [Lv. 500] [Boss]",
                [2] = "Wysper",
                [4] = "SkyExp1Quest",
                [5] = 3,
                [6] = __U[26](-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925),
                [3] = __U[26](-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
            }
		elseif __U[32](value) == "Thunder God" then
            return {
                [1] = "Thunder God [Lv. 575] [Boss]",
                [2] = "Thunder God",
                [4] = "SkyExp2Quest",
                [5] = 3,
                [6] = __U[26](-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255),
                [3] = __U[26](-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
            }
        elseif __U[32](value) == "Cyborg" then
            return {
                [1] = "Cyborg [Lv. 675] [Boss]",
                [2] = "Cyborg",
                [4] = "FountainQuest",
                [5] = 3,
                [6] = __U[26](5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312),
                [3] = __U[26](6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
            }
		end
	elseif WorldCheck["Second Sea"] then
		-- New World
		if __U[32](value) == "Diamond" then
            return {
                [1] = "Diamond [Lv. 750] [Boss]",
                [2] = "Diamond",
                [4] = "Area1Quest",
                [5] = 3,
                [6] = __U[26](-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956),
                [3] = __U[26](-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
            }
		elseif __U[32](value) == "Jeremy" then
            return {
                [1] = "Jeremy [Lv. 850] [Boss]",
                [2] = "Jeremy",
                [4] = "Area2Quest",
                [5] = 3,
                [6] = __U[26](632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369),
                [3] = __U[26](2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
            }
		elseif __U[32](value) == "Fajita" then
            return {
                [1] = "Fajita [Lv. 925] [Boss]",
                [2] = "Fajita",
                [4] = "MarineQuest3",
                [5] = 3,
                [6] = __U[26](-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044),
                [3] = __U[26](-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
            }
		elseif __U[32](value) == "Don Swan" then
            return {
                [1] = "Don Swan [Lv. 1000] [Boss]",
                [2] = "Don Swan",
                [3] = __U[26](2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
            }
		elseif __U[32](value) == "Smoke Admiral" then
            return {
                [1] = "Smoke Admiral [Lv. 1150] [Boss]",
                [2] = "Smoke Admiral",
                [4] = "IceSideQuest",
                [5] = 3,
                [6] = __U[26](-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423),
                [3] = __U[26](-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
            }
		elseif __U[32](value) == "Cursed Captain" then
            return {
                [1] = "Cursed Captain [Lv. 1325] [Raid Boss]",
                [2] = "Cursed Captain",
                [3] = __U[26](916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
            }
		elseif __U[32](value) == "Darkbeard" then
            return {
                [1] = "Darkbeard [Lv. 1000] [Raid Boss]",
                [2] = "Darkbeard",
                [3] = __U[26](3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
            }
		elseif __U[32](value) == "Order" then
            return {
                [1] = "Order [Lv. 1250] [Raid Boss]",
                [2] = "Order",
                [3] = __U[26](-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
            }
		elseif __U[32](value) == "Awakened Ice Admiral" then
            return {
                [1] = "Awakened Ice Admiral [Lv. 1400] [Boss]",
                [2] = "Awakened Ice Admiral",
                [4] = "FrostQuest",
                [5] = 3,
                [6] = __U[26](5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556),
                [3] = __U[26](6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
            }
		elseif __U[32](value) == "Tide Keeper" then
            return {
                [1] = "Tide Keeper [Lv. 1475] [Boss]",
                [2] = "Tide Keeper",
                [4] = "ForgottenQuest",
                [5] = 3,
                [6] = __U[26](-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961),
                [3] = __U[26](-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
            }
		end
	elseif WorldCheck["Third Sea"] then
		-- Third World
		if __U[32](value) == "Stone" then
            return {
                [1] = "Stone [Lv. 1550] [Boss]",
                [2] = "Stone",
                [4] = "PiratePortQuest",     
                [5] = 3,
                [6] = __U[26](-290, 44, 5577),
                [3] = __U[26](-1085, 40, 6779)
            }
		elseif __U[32](value) == "Island Empress" then
            return {
                [1] = "Island Empress [Lv. 1675] [Boss]",
                [2] = "Island Empress",
                [4] = "AmazonQuest2",
                [5] = 3,
                [6] = __U[26](5443, 602, 752),
                [3] = __U[26](5659, 602, 244)
            }
		elseif __U[32](value) == "Kilo Admiral" then
            return {
                [1] = "Kilo Admiral [Lv. 1750] [Boss]",
                [2] = "Kilo Admiral",
                [4] = "MarineTreeIsland",
                [5] = 3,
                [6] = __U[26](2178, 29, -6737),
                [3] = __U[26](2846, 433, -7100)
            }
		elseif __U[32](value) == "Captain Elephant" then
            return {
                [1] = "Captain Elephant [Lv. 1875] [Boss]",
                [2] = "Captain Elephant",
                [4] = "DeepForestIsland",
                [5] = 3,
                [6] = __U[26](-13232, 333, -7631),
                [3] = __U[26](-13221, 325, -8405)
            }
		elseif __U[32](value) == "Beautiful Pirate" then
            return {
                [1] = "Beautiful Pirate [Lv. 1950] [Boss]",
                [2] = "Beautiful Pirate",
                [4] = "DeepForestIsland2",
                [5] = 3,
                [6] = __U[26](-12686, 391, -9902),
                [3] = __U[26](5182, 23, -20),
            }
		elseif __U[32](value) == "rip_indra True Form" then
            return {
                [1] = "rip_indra True Form [Lv. 5000] [Raid Boss]",
                [2] = "rip_indra True Form",
                [3] = __U[26](-5359, 424, -2735)
            }
		elseif __U[32](value) == "Longma" then
            return {
                [1] = "Longma [Lv. 2000] [Boss]",
                [2] = "Longma",
                [3] = __U[26](-10248.3936, 353.79129, -9306.34473)
            }
		elseif __U[32](value) == "Soul Reaper" then
            return {
                [1] = "Soul Reaper [Lv. 2100] [Raid Boss]",
                [2] = "Soul Reaper",
                [3] = __U[26](-9515.62109, 315.925537, 6691.12012)
            }
		elseif __U[32](value) == "Cake Queen" then
            return {
                [1] = "Cake Queen [Lv. 2175] [Boss]",
                [2] = "Cake Queen",
                [4] = "IceCreamIslandQuest",
                [5] = 3,
                [6] = __U[26](-821.267456, 65.9448776, -10964.3994, 0.814093888, -3.67296735e-08, -0.58073324, 3.30765637e-08, 1, -1.6879099e-08, 0.58073324, -5.46748513e-09, 0.814093888),
                [3] = __U[26](-715.467102, 381.69104, -11019.8896, 0.955998719, -1.07319993e-08, -0.293370903, 5.00311881e-09, 1, -2.02781667e-08, 0.293370903, 1.7918131e-08, 0.955998719)
            }
		end
	end
end
local function TpOfTpTab()
    if WorldCheck["First Sea"] then
        if SelectTpSpot == "\80\105\114\97\116\101\32\83\116\97\114\116\101\114" then
            if InstanceTp then
                CFrameTargetTp = __U[26](994.9686279296875, 16.641939163208008, 1427.6319580078125)
            else
                CFrameTargetTp = __U[26](994.9686279296875, 16.641939163208008, 1427.6319580078125)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "\77\97\114\105\110\101\32\83\116\97\114\116\101\114" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-2645.46142578125, 9.68152904510498, 2048.440673828125)
            else
                CFrameTargetTp = __U[26](-2645.46142578125, 9.68152904510498, 2048.440673828125)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "\77\105\100\100\108\101\32\84\111\119\110" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-622.5928955078125, 8.339500427246094, 1559.7164306640625)
            else
                CFrameTargetTp = __U[26](-622.5928955078125, 8.339500427246094, 1559.7164306640625)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "\74\117\110\103\108\101" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-1613.74365234375, 36.977413177490234, 148.67115783691406)
            else
                CFrameTargetTp = __U[26](-1613.74365234375, 36.977413177490234, 148.67115783691406)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "\80\105\114\97\116\101\32\86\105\108\108\97\103\101" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-1146.427734375, 44.877357482910156, 3846.61328125)
            else
                CFrameTargetTp = __U[26](-1146.427734375, 44.877357482910156, 3846.61328125)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "\68\101\115\115\101\114\116" then
            if InstanceTp then
                CFrameTargetTp = __U[26](924.7705078125, 6.146862983703613, 4329.72314453125)
            else
                CFrameTargetTp = __U[26](924.7705078125, 6.146862983703613, 4329.72314453125)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "\70\114\111\122\101\110\32\86\105\108\108\97\103\101" then
            if InstanceTp then
                CFrameTargetTp = __U[26](1120.902587890625, 7.670980930328369, -1189.6358642578125)
            else
                CFrameTargetTp = __U[26](1120.902587890625, 7.670980930328369, -1189.6358642578125)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "\77\97\114\105\110\101\32\70\111\114\116\114\101\115\115" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-5034.90771484375, 27.965608596801758, 4334.7890625)
            else
                CFrameTargetTp = __U[26](-5034.90771484375, 27.965608596801758, 4334.7890625)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "\83\107\121\108\97\110\100\32\49\115\116" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-5009.7939453125, 281.7386169433594, -2830.664306640625)
            else
                CFrameTargetTp = __U[26](-5009.7939453125, 281.7386169433594, -2830.664306640625)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "\83\107\121\108\97\110\100\32\50\110\100" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-5270.48583984375, 395.70489501953125, -2212.401123046875)
            else
                CFrameTargetTp = __U[26](-5270.48583984375, 395.70489501953125, -2212.401123046875)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "\83\107\121\108\97\110\100\32\51\114\100" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-4771.7998046875, 718.5603637695312, -2621.241455078125)
            else
                CFrameTargetTp = __U[26](-4771.7998046875, 718.5603637695312, -2621.241455078125)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "\83\107\121\108\97\110\100\32\52\116\104" then
            if InstanceTp then
                CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
            else
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "\83\107\121\108\97\110\100\32\53\116\104" then
            if InstanceTp then
                CommF:InvokeServer("requestEntrance",__U[57](-7894.6176757813, 5547.1416015625, -380.29119873047))
            else
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
            end
        elseif SelectTpSpot == "\67\111\108\111\115\115\101\117\109" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-1536.6083984375, 8.051512718200684, -2983.515380859375)
            else
                CFrameTargetTp = __U[26](-1536.6083984375, 8.051512718200684, -2983.515380859375)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "\80\114\105\115\111\110" then
            if InstanceTp then
                CFrameTargetTp = __U[26](4867.283203125, 6.470325469970703, 732.0301513671875)
            else
                CFrameTargetTp = __U[26](4867.283203125, 6.470325469970703, 732.0301513671875)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "\85\110\100\101\114\87\97\116\101\114" then
            if InstanceTp then
                CommF:InvokeServer("requestEntrance",__U[57](61163.8515625, 11.6796875, 1819.7841796875))
            else
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    CommF:InvokeServer("requestEntrance",__U[57](61163.8515625, 11.6796875, 1819.7841796875))
                end
            end
        elseif SelectTpSpot == "\77\97\103\109\101\32\86\105\108\108\97\103\101" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-5236.81201171875, 7.995201587677002, 8450.7021484375)
            else
                CFrameTargetTp = __U[26](-5236.81201171875, 7.995201587677002, 8450.7021484375)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "\70\111\117\110\116\97\105\110\32\67\105\116\121" then
            if InstanceTp then
                CFrameTargetTp = __U[26](5105.4208984375, 4.3343119621276855, 4074.138671875)
            else
                CFrameTargetTp = __U[26](5105.4208984375, 4.3343119621276855, 4074.138671875)
                if (CFrameTargetTp - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        end
    elseif WorldCheck["Second Sea"] then
        if SelectTpSpot == "\75\105\110\103\100\111\109\32\79\102\32\82\111\115\101" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-12.300018310546875, 29.402055740356445, 2766.919677734375)
            else
                CFrameTargetTp = __U[26](-12.300018310546875, 29.402055740356445, 2766.919677734375)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\67\111\108\111\115\115\101\117\109" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-1821.328369140625, 45.541255950927734, 1358.9896240234375)
            else
                CFrameTargetTp = __U[26](-1821.328369140625, 45.541255950927734, 1358.9896240234375)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\83\101\99\114\101\116\32\82\111\111\109\32\40\82\97\99\101\32\118\51\41" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-2027.0584716796875, 124.79798126220703, -78.88665008544922)
            else
                CFrameTargetTp = __U[26](-2027.0584716796875, 124.79798126220703, -78.88665008544922)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\67\97\102\101" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-381.9906921386719, 72.30252838134766, 283.7034606933594)
            else
                CFrameTargetTp = __U[26](-381.9906921386719, 72.30252838134766, 283.7034606933594)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\70\114\111\110\116\32\70\97\99\116\111\114\121" then
            if InstanceTp then
                CFrameTargetTp = __U[26](230.86642456054688, 71.83038330078125, -231.8999481201172)
            else
                CFrameTargetTp = __U[26](230.86642456054688, 71.83038330078125, -231.8999481201172)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\70\97\99\116\111\114\121" then
            if InstanceTp then
                CFrameTargetTp = __U[26](429.5542297363281, 218.63314819335938, -430.0518798828125)
            else
                CFrameTargetTp = __U[26](429.5542297363281, 218.63314819335938, -430.0518798828125)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\83\119\97\110\32\82\111\111\109" then
            if InstanceTp then
                CFrameTargetTp = __U[26](nil)
            else
                CFrameTargetTp = __U[26](nil)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\71\114\101\101\110\32\90\111\110\101" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-2250.882568359375, 73.37700653076172, -2692.625244140625)
            else
                CFrameTargetTp = __U[26](-2250.882568359375, 73.37700653076172, -2692.625244140625)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\71\114\97\118\101\121\97\114\100\32\73\115\108\97\110\100" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-5458.5849609375, 47.87034606933594, -814.068115234375)
            else
                CFrameTargetTp = __U[26](-5458.5849609375, 47.87034606933594, -814.068115234375)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\67\117\114\115\101\100\32\83\104\105\112" then
            if InstanceTp then
                CFrameTargetTp = __U[26](nil)
            else
                CFrameTargetTp = __U[26](nil)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\72\111\116\32\73\115\108\97\110\100" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-5933.240234375, 16.172576904296875, -5054.5400390625)
            else
                CFrameTargetTp = __U[26](-5933.240234375, 16.172576904296875, -5054.5400390625)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\67\111\108\100\32\73\115\108\97\110\100" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-5425.0546875, 15.852957725524902, -5244.63671875)
            else
                CFrameTargetTp = __U[26](-5425.0546875, 15.852957725524902, -5244.63671875)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\82\97\105\100" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-6450.7060546875, 252.81024169921875, -4495.576171875)
            else
                CFrameTargetTp = __U[26](-6450.7060546875, 252.81024169921875, -4495.576171875)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\76\97\119\32\82\97\105\100" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-5549.77099609375, 330.7765808105469, -5928.8642578125)
            else
                CFrameTargetTp = __U[26](-5549.77099609375, 330.7765808105469, -5928.8642578125)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\83\110\111\119\32\77\111\117\110\116\97\105\110" then
            if InstanceTp then
                CFrameTargetTp = __U[26](404.9621276855469, 400.9583435058594, -5323.09228515625)
            else
                CFrameTargetTp = __U[26](404.9621276855469, 400.9583435058594, -5323.09228515625)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\68\97\114\107\32\65\114\101\97\110\97" then
            if InstanceTp then
                CFrameTargetTp = __U[26](3756.60400390625, 13.871602058410645, -3533.947998046875)
            else
                CFrameTargetTp = __U[26](3756.60400390625, 13.871602058410645, -3533.947998046875)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\73\99\101\32\67\97\115\116\108\101" then
            if InstanceTp then
                CFrameTargetTp = __U[26](5672.884765625, 27.25011444091797, -6461.46826171875)
            else
                CFrameTargetTp = __U[26](5672.884765625, 27.25011444091797, -6461.46826171875)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\70\111\114\103\111\116\116\101\110\32\73\115\108\97\110\100" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-3040.594482421875, 6.138787269592285, -9596.7373046875)
            else
                CFrameTargetTp = __U[26](-3040.594482421875, 6.138787269592285, -9596.7373046875)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\85\115\111\117\112\39\115\32\73\115\108\97\110\100" then
            if InstanceTp then
                CFrameTargetTp = __U[26](4748.18994140625, 12.582029342651367, 2852.78369140625)
            else
                CFrameTargetTp = __U[26](4748.18994140625, 12.582029342651367, 2852.78369140625)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "\87\104\97\116\32\105\115\32\116\104\105\115\32\73\115\108\97\110\100" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-5089.3173828125, 3.617180109024048, 2381.7216796875)
            else
                CFrameTargetTp = __U[26](-5089.3173828125, 3.617180109024048, 2381.7216796875)
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        end
    elseif WorldCheck["Third Sea"] then
        if SelectTpSpot == "\77\97\110\115\105\111\110" then
            if InstanceTp then
                if Setting.UnlockPortal then
                    CommF:InvokeServer("requestEntrance",__U[57](-12471.169921875, 374.94024658203, -7551.677734375))
                    __U[23](0.5)
                end
            else
                if Setting.UnlockPortal then
                    CommF:InvokeServer("requestEntrance",__U[57](-12471.169921875, 374.94024658203, -7551.677734375))
                    __U[23](0.5)
                end
            end
        elseif SelectTpSpot == "\80\111\114\116\32\84\111\119\110" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-435.68109130859, 189.69866943359, 5551.0756835938)
            else
                CFrameTargetTp = __U[26](-435.68109130859, 189.69866943359, 5551.0756835938)
                if (__U[57](-435.68109130859, 189.69866943359, 5551.0756835938) - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 9000 then
                    if Setting.UnlockPortal then
                        CommF:InvokeServer("requestEntrance", __U[57](5748.7587890625, 610.44982910156, -267.81704711914))
                        __U[23](0.5)
                    end
                end
            end
        elseif SelectTpSpot == "\71\114\101\97\116\32\84\114\101\101" then
            if InstanceTp then
                CFrameTargetTp = __U[26](2198.0063476563, 128.71075439453, -7109.5043945313)
            else
                CFrameTargetTp = __U[26](2198.0063476563, 128.71075439453, -7109.5043945313)
                if (__U[57](2198.0063476563, 128.71075439453, -7109.5043945313) - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 11500 then
                    if Setting.UnlockPortal then
                        CommF:InvokeServer("requestEntrance", __U[57](5748.7587890625, 610.44982910156, -267.81704711914))
                        __U[23](0.5)
                    end
                end
            end
        elseif SelectTpSpot == "\67\97\115\116\108\101\32\79\110\32\84\104\101\32\83\101\97" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-5072.08984375, 314.5412902832, -3151.1098632812)
                if Setting.UnlockPortal then
                    CommF:InvokeServer("requestEntrance",__U[57](-5072.08984375, 314.5412902832, -3151.1098632812))
                    __U[23](0.5)
                end
            else
                CFrameTargetTp = __U[26](-5072.08984375, 314.5412902832, -3151.1098632812)
                if Setting.UnlockPortal then
                    CommF:InvokeServer("requestEntrance",__U[57](-5072.08984375, 314.5412902832, -3151.1098632812))
                    __U[23](0.5)
                end
            end
        elseif SelectTpSpot == "\77\105\110\105\83\107\121" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-260.65557861328, 49325.8046875, -35253.5703125)
            else
                CFrameTargetTp = __U[26](-260.65557861328, 49325.8046875, -35253.5703125)
            end
        elseif SelectTpSpot == "\72\121\100\114\97\32\73\115\108\97\110\100" then
            if InstanceTp then
                CFrameTargetTp = __U[26](5748.7587890625, 610.44982910156, -267.81704711914)
                if Setting.UnlockPortal then
                    CommF:InvokeServer("requestEntrance", __U[57](5748.7587890625, 610.44982910156, -267.81704711914))
                    __U[23](0.5)
                end
            else
                CFrameTargetTp = __U[26](5748.7587890625, 610.44982910156, -267.81704711914)
                if Setting.UnlockPortal then
                    CommF:InvokeServer("requestEntrance", __U[57](5748.7587890625, 610.44982910156, -267.81704711914))
                    __U[23](0.5)
                end
            end
        elseif SelectTpSpot == "\70\108\111\97\116\105\110\103\32\84\117\114\116\108\101" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-12471.169921875, 374.94024658203, -7551.677734375)
                if Setting.UnlockPortal then
                    CommF:InvokeServer("requestEntrance",__U[57](-12471.169921875, 374.94024658203, -7551.677734375))
                    __U[23](0.5)
                end
            else
                CFrameTargetTp = __U[26](-12471.169921875, 374.94024658203, -7551.677734375)
                if Setting.UnlockPortal then
                    CommF:InvokeServer("requestEntrance",__U[57](-12471.169921875, 374.94024658203, -7551.677734375))
                    __U[23](0.5)
                end
            end
        elseif SelectTpSpot == "\72\97\117\110\116\101\100\32\67\97\115\116\108\101" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-9709.30762, 204.695892, 6044.04688)
            else
                CFrameTargetTp = __U[26](-9709.30762, 204.695892, 6044.04688)
                if Setting.UnlockPortal then
                    if (__U[57](2198.0063476563, 128.71075439453, -7109.5043945313) - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 9000 then
                        CommF:InvokeServer("requestEntrance",__U[57](-5072.08984375, 314.5412902832, -3151.1098632812))
                        __U[23](0.5)
                    end
                end
            end
        elseif SelectTpSpot == "\73\99\101\32\67\114\101\97\109\32\73\115\108\97\110\100" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-821.35913085938, 65.845329284668, -10965.2578125)
            else
                CFrameTargetTp = __U[26](-821.35913085938, 65.845329284668, -10965.2578125)
                if Setting.UnlockPortal then
                    if (__U[57](-821.35913085938, 65.845329284668, -10965.2578125) - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10000 then
                        CommF:InvokeServer("requestEntrance",__U[57](-5072.08984375, 314.5412902832, -3151.1098632812))
                        __U[23](0.5)
                    end
                end
            end
        elseif SelectTpSpot == "\80\101\97\110\117\116\32\73\115\108\97\110\100" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-2104.453125, 38.129974365234, -10194.0078125)
            else
                CFrameTargetTp = __U[26](-2104.453125, 38.129974365234, -10194.0078125)
                if Setting.UnlockPortal then
                    if (__U[57](-2104.453125, 38.129974365234, -10194.0078125) - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10000 then
                        CommF:InvokeServer("requestEntrance",__U[57](-5072.08984375, 314.5412902832, -3151.1098632812))
                        __U[23](0.5)
                    end
                end
            end
        elseif SelectTpSpot == "Peanut Island??" then
            if InstanceTp then
                CFrameTargetTp = __U[26](-2017.4874267578125, 36.85276412963867, -12027.53515625)
            else
                CFrameTargetTp = __U[26](-2017.4874267578125, 36.85276412963867, -12027.53515625)
                if Setting.UnlockPortal then
                    if (__U[57](-2017.4874267578125, 36.85276412963867, -12027.53515625) - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 10500 then
                        CommF:InvokeServer("requestEntrance",__U[57](-5072.08984375, 314.5412902832, -3151.1098632812))
                        __U[23](0.5)
                    end
                end
            end
        end
    end
end
local function CheckLevel()
    Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
    if WorldCheck["First Sea"] then
        if ((Lv == 1 or Lv <= 9) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Bandit" and not Setting.AutoFarmLevel) then -- Bandit
            return {
                [1] = "Bandit [Lv. 5]",
                [2] = "BanditQuest1",
                [3] = 1,
                [4] = "Bandit",
                [5] = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875),
                [6] = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
            }
        elseif ((Lv == 10 or Lv <= 14) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Monkey") then -- Monkey
            return {
                [1] = "Monkey [Lv. 14]",
                [2] = "JungleQuest",
                [3] = 1,
                [4] = "Monkey",
                [5] = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102),
                [6] = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
            }
        elseif ((Lv == 15 or Lv <= 29) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Gorilla") then -- Gorilla
            return {
                [1] = "Gorilla [Lv. 20]",
                [2] = "JungleQuest",
                [3] = 2,
                [4] = "Gorilla",
                [5] = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102),
                [6] = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
            }
        elseif ((Lv == 30 or Lv <= 39) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Pirate") then -- Pirate
            return {
                [1] = "Pirate [Lv. 35]",
                [2] = "BuggyQuest1",
                [3] = 1,
                [4] = "Pirate",
                [5] = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188),
                [6] = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
            }
        elseif ((Lv == 40 or Lv <= 59) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Brute") then -- Brute
            return {
                [1] = "Brute [Lv. 45]",
                [2] = "BuggyQuest1",
                [3] = 2,
                [4] = "Brute",
                [5] = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188),
                [6] = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
            }
        elseif ((Lv == 60 or Lv <= 74) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Desert Bandit") then -- Desert Bandit
            return {
                [1] = "Desert Bandit [Lv. 60]",
                [2] = "DesertQuest",
                [3] = 1,
                [4] = "Desert Bandit",
                [5] = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625),
                [6] = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
            }
        elseif ((Lv == 75 or Lv <= 89) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Desert Officer") then -- Desert Officer
            return {
                [1] = "Desert Officer [Lv. 70]",
                [2] = "DesertQuest",
                [3] = 2,
                [4] = "Desert Officer",
                [5] = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625),
                [6] = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
            }
        elseif ((Lv == 90 or Lv <= 99) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Snow Bandit") then -- Snow Bandit
            return {
                [1] = "Snow Bandit [Lv. 90]",
                [2] = "SnowQuest",
                [3] = 1,
                [4] = "Snow Bandit",
                [5] = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156),
                [6] = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
            }
        elseif ((Lv == 100 or Lv <= 119) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Snowman") then -- Snowman
            return {
                [1] = "Snowman [Lv. 100]",
                [2] = "SnowQuest",
                [3] = 2,
                [4] = "Snowman",
                [5] = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156),
                [6] = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
            }
        elseif ((Lv == 120 or Lv <= 149) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Chief Petty Officer") then -- Chief Petty Officer
            return {
                [1] = "Chief Petty Officer [Lv. 120]",
                [2] = "MarineQuest2",
                [3] = 1,
                [4] = "Chief Petty Officer",
                [5] = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313),
                [6] = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
            }
        elseif ((Lv == 150 or Lv <= 174) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Sky Bandit") then -- Sky Bandit
            if Setting.AutoFarmLevel and (__U[57](-4842.1372070313, 717.69543457031, -2623.0483398438) - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 then
                CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
            end    
            return {
                [1] = "Sky Bandit [Lv. 150]",
                [2] = "SkyQuest",
                [3] = 1,
                [4] = "Sky Bandit",
                [5] = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438),
                [6] = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
            }         
        elseif ((Lv == 175 or Lv <= 189) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Dark Master") then -- Dark Master
            if Setting.AutoFarmLevel and (__U[57](-4842.1372070313, 717.69543457031, -2623.0483398438) - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 then
                CommF:InvokeServer("requestEntrance", __U[57](-4607.82275390625, 874.3905029296875, -1667.556884765625))
            end
            return {
                [1] = "Dark Master [Lv. 175]",
                [2] = "SkyQuest",
                [3] = 2,
                [4] = "Dark Master",
                [5] = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438),
                [6] = CFrame.new(-5357.3515625, 449.032958984375, -2265.667236328125)
            }
        elseif ((Lv == 190 or Lv <= 209) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Prisoner") then -- Prisoner
            return {
                [1] = "Prisoner [Lv. 190]",
                [2] = "PrisonerQuest",
                [3] = 1,
                [4] = "Prisoner",
                [5] = CFrame.new(5308.98828125, 1.7804901599884033, 475.06048583984375),
                [6] = CFrame.new(5164.1083984375, 15.778244972229004, 489.6533508300781)
            }
        elseif ((Lv == 210 or Lv <= 249) or Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Dangerous Prisoner") then -- Dangerous Prisoner
            return {
                [1] = "Dangerous Prisoner [Lv. 210]",
                [2] = "PrisonerQuest",
                [3] = 2,
                [4] = "Dangerous Prisoner",
                [5] = CFrame.new(5308.98828125, 1.7804901599884033, 475.06048583984375),
                [6] = CFrame.new(5564.0322265625, 15.759016036987305, 682.16455078125)
            }
        elseif ((Lv == 250 or Lv <= 274) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Toga Warrior") then -- Toga Warrior
            return {
                [1] = "Toga Warrior [Lv. 250]",
                [2] = "ColosseumQuest",
                [3] = 1,
                [4] = "Toga Warrior",
                [5] = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188),
                [6] = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
            }
        elseif ((Lv == 275 or Lv <= 299) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Gladiator") then -- Gladiator
            return {
                [1] = "Gladiator [Lv. 275]",
                [2] = "ColosseumQuest",
                [3] = 2,
                [4] = "Gladiator",
                [5] = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188),
                [6] = CFrame.new(-1324.32666015625, 58.49076843261719, -3242.227294921875)
            }
        elseif ((Lv == 300 or Lv <= 329) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Military Soldier") then -- Military Soldier
            return {
                [1] = "Military Soldier [Lv. 300]",
                [2] = "MagmaQuest",
                [3] = 1,
                [4] = "Military Soldier",
                [5] = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625),
                [6] = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
            }
        elseif ((Lv == 330 or Lv <= 374) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Military Spy") then -- Military Spy
            return {
                [1] = "Military Spy [Lv. 325]",
                [2] = "MagmaQuest",
                [3] = 2,
                [4] = "Military Spy",
                [5] = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625),
                [6] = CFrame.new(-5984.0532226563, 82.14656829834, 8753.326171875)
            }
        elseif ((Lv == 375 or Lv <= 399) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Fishman Warrior") then -- Fishman Warrior 
            --Setting.FM = true
            if Setting.AutoFarmLevel and (__U[57](61122.65234375, 18.497442245483, 1569.3997802734) - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 then
                CommF:InvokeServer("requestEntrance",__U[57](61163.8515625, 11.6796875, 1819.7841796875))
            end
            return {
                [1] = "Fishman Warrior [Lv. 375]",
                [2] = "FishmanQuest",
                [3] = 1,
                [4] = "Fishman Warrior",
                [5] = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734),
                [6] = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
            }
        elseif ((Lv == 400 or Lv <= 449) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Fishman Commando") then -- Fishman Commando
            --Setting.FM = true
            if Setting.AutoFarmLevel and (__U[57](61122.65234375, 18.497442245483, 1569.3997802734) - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 then
                CommF:InvokeServer("requestEntrance",__U[57](61163.8515625, 11.6796875, 1819.7841796875))
            end
            return {
                [1] = "Fishman Commando [Lv. 400]",
                [2] = "FishmanQuest",
                [3] = 2,
                [4] = "Fishman Commando",
                [5] = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734),
                [6] = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
            }
        elseif ((Lv == 450 or Lv <= 474) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "God's Guard") then -- God's Guard
            --Setting.FM = false
            if Setting.AutoFarmLevel and (__U[57](-4721.8603515625, 845.30297851563, -1953.8489990234) - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 then
                CommF:InvokeServer("requestEntrance",__U[57](-4607.82275, 872.54248, -1667.55688))
            end
            return {
                [1] = "God's Guard [Lv. 450]",
                [2] = "SkyExp1Quest",
                [3] = 1,
                [4] = "God's Guard",
                [5] = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234),
                [6] = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
            }
        elseif ((Lv == 475 or Lv <= 524) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Shanda") then -- Shanda
            --Setting.FM = false
            if Setting.AutoFarmLevel and (__U[57](-7863.1596679688, 5545.5190429688, -378.42266845703) - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 then
                CommF:InvokeServer("requestEntrance",__U[57](-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
            return {
                [1] = "Shanda [Lv. 475]",
                [2] = "SkyExp1Quest",
                [3] = 2,
                [4] = "Shanda",
                [5] = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703),
                [6] = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
            }
        elseif ((Lv == 525 or Lv <= 549) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Royal Squad") then -- Royal Squad
            return {
                [1] = "Royal Squad [Lv. 525]",
                [2] = "SkyExp2Quest",
                [3] = 1,
                [4] = "Royal Squad",
                [5] = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125),
                [6] = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
            }
        elseif ((Lv == 550 or Lv <= 624) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Royal Soldier") then -- Royal Soldier
            return {
                [1] = "Royal Soldier [Lv. 550]",
                [2] = "SkyExp2Quest",
                [3] = 2,
                [4] = "Royal Soldier",
                [5] = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125),
                [6] = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
            }
        elseif ((Lv == 625 or Lv <= 649) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Galley Pirate") then -- Galley Pirate
            return {
                [1] = "Galley Pirate [Lv. 625]",
                [2] = "FountainQuest",
                [3] = 1,
                [4] = "Galley Pirate",
                [5] = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875),
                [6] = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
            }
        elseif (Lv >= 650 and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Galley Captain") then -- Galley Captain
            return {
                [1] = "Galley Captain [Lv. 650]",
                [2] = "FountainQuest",
                [3] = 2,
                [4] = "Galley Captain",
                [5] = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875),
                [6] = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
            }
        end
    elseif WorldCheck["Second Sea"] then
        if ((Lv == 700 or Lv <= 724) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Raider") then -- Raider
            return {
                [1] = "Raider [Lv. 700]",
                [2] = "Area1Quest",
                [3] = 1,
                [4] = "Raider",
                [5] = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531),
                [6] = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
            }
        elseif ((Lv == 725 or Lv <= 774) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Mercenary") then -- Mercenary
            return {
                [1] = "Mercenary [Lv. 725]",
                [2] = "Area1Quest",
                [3] = 2,
                [4] = "Mercenary",
                [5] = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531),
                [6] = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
            }
        elseif ((Lv == 775 or Lv <= 799) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Swan Pirate") then -- Swan Pirate
            return {
                [1] = "Swan Pirate [Lv. 775]",
                [2] = "Area2Quest",
                [3] = 1,
                [4] = "Swan Pirate",
                [5] = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125),
                [6] = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
            }
        elseif ((Lv == 800 or Lv <= 874) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Factory Staff") then -- Factory Staff
            return {
                [1] = "Factory Staff [Lv. 800]",
                [2] = "Area2Quest",
                [3] = 2,
                [4] = "Factory Staff",
                [5] = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125),
                [6] = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
            }
        elseif ((Lv == 875 or Lv <= 899) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Marine Lieutenant") then -- Marine Lieutenant
            return {
                [1] = "Marine Lieutenant [Lv. 875]",
                [2] = "MarineQuest3",
                [3] = 1,
                [4] = "Marine Lieutenant",
                [5] = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531),
                [6] = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
            }
        elseif ((Lv == 900 or Lv <= 949) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Marine Captain") then -- Marine Captain
            return {
                [1] = "Marine Captain [Lv. 900]",
                [2] = "MarineQuest3",
                [3] = 2,
                [4] = "Marine Captain",
                [5] = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531),
                [6] = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
            }
        elseif ((Lv == 950 or Lv <= 974) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Zombie") then -- Zombie
            return {
                [1] = "Zombie [Lv. 950]",
                [2] = "ZombieQuest",
                [3] = 1,
                [4] = "Zombie",
                [5] = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281),
                [6] = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
            }
        elseif ((Lv == 975 or Lv <= 999) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Vampire") then -- Vampire
            return {
                [1] = "Vampire [Lv. 975]",
                [2] = "ZombieQuest",
                [3] = 2,
                [4] = "Vampire",
                [5] = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281),
                [6] = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
            }
        elseif ((Lv == 1000 or Lv <= 1049) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Snow Trooper") then -- Snow Trooper
            return {
                [1] = "Snow Trooper [Lv. 1000]",
                [2] = "SnowMountainQuest",
                [3] = 1,
                [4] = "Snow Trooper",
                [5] = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875),
                [6] = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
            }
        elseif ((Lv == 1050 or Lv <= 1099) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Winter Warrior") then -- Winter Warrior
            return {
                [1] = "Winter Warrior [Lv. 1050]",
                [2] = "SnowMountainQuest",
                [3] = 2,
                [4] = "Winter Warrior",
                [5] = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875),
                [6] = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
            }
        elseif ((Lv == 1100 or Lv <= 1124) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Lab Subordinate") then -- Lab Subordinate
            return {
                [1] = "Lab Subordinate [Lv. 1100]",
                [2] = "IceSideQuest",
                [3] = 1,
                [4] = "Lab Subordinate",
                [5] = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188),
                [6] = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
            }
        elseif ((Lv == 1125 or Lv <= 1174) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Horned Warrior") then -- Horned Warrior
            return {
                [1] = "Horned Warrior [Lv. 1125]",
                [2] = "IceSideQuest",
                [3] = 2,
                [4] = "Horned Warrior",
                [5] = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188),
                [6] = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
            }
        elseif ((Lv == 1175 or Lv <= 1199) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Magma Ninja") then -- Magma Ninja
            return {
                [1] = "Magma Ninja [Lv. 1175]",
                [2] = "FireSideQuest",
                [3] = 1,
                [4] = "Magma Ninja",
                [5] = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813),
                [6] = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
            }
        elseif ((Lv == 1200 or Lv <= 1249) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Lava Pirate") then -- Lava Pirate
            return {
                [1] = "Lava Pirate [Lv. 1200]",
                [2] = "FireSideQuest",
                [3] = 2,
                [4] = "Lava Pirate",
                [5] = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813),
                [6] = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
            }
        elseif ((Lv == 1250 or Lv <= 1274) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Ship Deckhand") then -- Ship Deckhand
            if Setting.AutoFarmLevel and (__U[57](1040.2927246094, 125.08293151855, 32911.0390625) - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                CommF:InvokeServer("requestEntrance",__U[57](923.21252441406, 126.9760055542, 32852.83203125))
            end
            return {
                [1] = "Ship Deckhand [Lv. 1250]",
                [2] = "ShipQuest1",
                [3] = 1,
                [4] = "Ship Deckhand",
                [5] = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625),
                [6] = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
            }
        elseif ((Lv == 1275 or Lv <= 1299) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Ship Engineer") then -- Ship Engineer
            if Setting.AutoFarmLevel and (__U[57](1040.2927246094, 125.08293151855, 32911.0390625) - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                CommF:InvokeServer("requestEntrance",__U[57](923.21252441406, 126.9760055542, 32852.83203125))
            end
            return {
                [1] = "Ship Engineer [Lv. 1275]",
                [2] = "ShipQuest1",
                [3] = 2,
                [4] = "Ship Engineer",
                [5] = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625),
                [6] = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
            }
        elseif ((Lv == 1300 or Lv <= 1324) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Ship Steward") then -- Ship Steward
            if Setting.AutoFarmLevel and (__U[57](1040.2927246094, 125.08293151855, 32911.0390625) - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                CommF:InvokeServer("requestEntrance",__U[57](923.21252441406, 126.9760055542, 32852.83203125))
            end
            return {
                [1] = "Ship Steward [Lv. 1300]",
                [2] = "ShipQuest2",
                [3] = 1,
                [4] = "Ship Steward",
                [5] = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875),
                [6] = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
            }
        elseif ((Lv == 1325 or Lv <= 1349) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Ship Officer") then -- Ship Officer
            if Setting.AutoFarmLevel and (__U[57](1040.2927246094, 125.08293151855, 32911.0390625) - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                CommF:InvokeServer("requestEntrance",__U[57](923.21252441406, 126.9760055542, 32852.83203125))
            end
            return {
                [1] = "Ship Officer [Lv. 1325]",
                [2] = "ShipQuest2",
                [3] = 2,
                [4] = "Ship Officer",
                [5] = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875),
                [6] = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
            }
        elseif ((Lv == 1350 or Lv <= 1374) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Arctic Warrior") then -- Arctic Warrior
            if Setting.AutoFarmLevel and (__U[57](5668.1372070313, 28.202531814575, -6484.6005859375) - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 20000 then
                CommF:InvokeServer("requestEntrance",__U[57](-6508.5581054688, 89.034996032715, -132.83953857422))
            end
            return {
                [1] = "Arctic Warrior [Lv. 1350]",
                [2] = "FrostQuest",
                [3] = 1,
                [4] = "Arctic Warrior",
                [5] = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375),
                [6] = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
            }
        elseif ((Lv == 1375 or Lv <= 1424) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Snow Lurker") then -- Snow Lurker
            return {
                [1] = "Snow Lurker [Lv. 1375]",
                [2] = "FrostQuest",
                [3] = 2,
                [4] = "Snow Lurker",
                [5] = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375),
                [6] = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
            }
        elseif ((Lv == 1425 or Lv <= 1449) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Sea Soldier") then -- Sea Soldier
            return {
                [1] = "Sea Soldier [Lv. 1425]",
                [2] = "ForgottenQuest",
                [3] = 1,
                [4] = "Sea Soldier",
                [5] = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063),
                [6] = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
            }
        elseif (Lv >= 1450 and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Water Fighter") then -- Water Fighter
            return {
                [1] = "Water Fighter [Lv. 1450]",
                [2] = "ForgottenQuest",
                [3] = 2,
                [4] = "Water Fighter",
                [5] = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063),
                [6] = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
            }
        end
    elseif WorldCheck["Third Sea"] then
        if ((Lv == 1500 or Lv <= 1524) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Pirate Millionaire") then -- Pirate Millionaire
            return {
                [1] = "Pirate Millionaire [Lv. 1500]",
                [2] = "PiratePortQuest",
                [3] = 1,
                [4] = "Pirate Millionaire",
                [5] = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313),
                [6] = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
            }
        elseif ((Lv == 1525 or Lv <= 1574) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Pistol Billionaire") then -- Pistol Billoonaire
            return {
                [1] = "Pistol Billionaire [Lv. 1525]",
                [2] = "PiratePortQuest",
                [3] = 2,
                [4] = "Pistol Billionaire",
                [5] = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313),
                [6] = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
            }
        elseif ((Lv == 1575 or Lv <= 1599) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Dragon Crew Warrior") then -- Dragon Crew Warrior
            return {
                [1] = "Dragon Crew Warrior [Lv. 1575]",
                [2] = "AmazonQuest",
                [3] = 1,
                [4] = "Dragon Crew Warrior",
                [5] = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375),
                [6] = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
            }
        elseif ((Lv == 1600 or Lv <= 1624) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Dragon Crew Archer") then -- Dragon Crew Archer
            return {
                [1] = "Dragon Crew Archer [Lv. 1600]",
                [2] = "AmazonQuest",
                [3] = 2,
                [4] = "Dragon Crew Archer",
                [5] = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375),
                [6] = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
            }
        elseif ((Lv == 1625 or Lv <= 1649) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Female Islander") then -- Female Islander
            return {
                [1] = "Female Islander [Lv. 1625]",
                [2] = "AmazonQuest2",
                [3] = 1,
                [4] = "Female Islander",
                [5] = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422),
                [6] = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
            }
        elseif ((Lv == 1650 or Lv <= 1699) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Giant Islander") then -- Giant Islander
            return {
                [1] = "Giant Islander [Lv. 1650]",
                [2] = "AmazonQuest2",
                [3] = 2,
                [4] = "Giant Islander",
                [5] = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422),
                [6] = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
            }
        elseif ((Lv == 1700 or Lv <= 1724) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Marine Commodore") then -- Marine Commodore
            return {
                [1] = "Marine Commodore [Lv. 1700]",
                [2] = "MarineTreeIsland",
                [3] = 1,
                [4] = "Marine Commodore",
                [5] = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813),
                [6] = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
            }
        elseif ((Lv == 1725 or Lv <= 1774) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Marine Rear Admiral") then -- Marine Rear Admiral
            return {
                [1] = "Marine Rear Admiral [Lv. 1725]",
                [2] = "MarineTreeIsland",
                [3] = 2,
                [4] = "Marine Rear Admiral",
                [5] = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813),
                [6] = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
            }
        elseif ((Lv == 1775 or Lv <= 1799) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Fishman Raider") then -- Fishman Raide
            return {
                [1] = "Fishman Raider [Lv. 1775]",
                [2] = "DeepForestIsland3",
                [3] = 1,
                [4] = "Fishman Raider",
                [5] = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625),
                [6] = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
            }
        elseif ((Lv == 1800 or Lv <= 1824) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Fishman Captain") then -- Fishman Captain
            return {
                [1] = "Fishman Captain [Lv. 1800]",
                [2] = "DeepForestIsland3",
                [3] = 2,
                [4] = "Fishman Captain",
                [5] = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875),
                [6] = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
            }
        elseif ((Lv == 1825 or Lv <= 1849) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Forest Pirate") then -- Forest Pirate
            return {
                [1] = "Forest Pirate [Lv. 1825]",
                [2] = "DeepForestIsland",
                [3] = 1,
                [4] = "Forest Pirate",
                [5] = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938),
                [6] = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
            }
        elseif ((Lv == 1850 or Lv <= 1899) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Mythological Pirate") then -- Mythological Pirate
            return {
                [1] = "Mythological Pirate [Lv. 1850]",
                [2] = "DeepForestIsland",
                [3] = 2,
                [4] = "Mythological Pirate",
                [5] = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938),
                [6] = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
            }
        elseif ((Lv >= 1900 and Lv <= 1924) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Jungle Pirate") then -- Jungle Pirate
            return {
                [1] = "Jungle Pirate [Lv. 1900]",
                [2] = "DeepForestIsland2",
                [3] = 1,
                [4] = "Jungle Pirate",
                [5] = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375),
                [6] = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
            }
        elseif ((Lv >= 1925 and Lv <= 1974) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Musketeer Pirate") then -- Musketeer Pirate
            return {
                [1] = "Musketeer Pirate [Lv. 1925]",
                [2] = "DeepForestIsland2",
                [3] = 2,
                [4] = "Musketeer Pirate",
                [5] = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375),
                [6] = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
            }
        elseif ((Lv >= 1975 and Lv <= 1999) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Reborn Skeleton") then -- Reborn Skeleton
            return {
                [1] = "Musketeer Pirate [Lv. 1925]",
                [2] = "DeepForestIsland2",
                [3] = 2,
                [4] = "Musketeer Pirate",
                [5] = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375),
                [6] = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
            }
        elseif ((Lv >= 2000 and Lv <= 2024) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Living Zombie") then -- Living Zombie
            return {
                [1] = "Living Zombie [Lv. 2000]",
                [2] = "HauntedQuest1",
                [3] = 2,
                [4] = "Living Zombie",
                [5] = CFrame.new(-9480.80762, 142.130661, 5566.37305),
                [6] = CFrame.new(-10103.7529, 238.565979, 6179.75977)
            }
        elseif ((Lv >= 2025 and Lv <= 2049) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Demonic Soul") then -- Demonic Soul
            return {
                [1] = "Demonic Soul [Lv. 2025]",
                [2] = "HauntedQuest1",
                [3] = 1,
                [4] = "Demonic Souls",
                [5] = CFrame.new(-9515.39551, 172.266037, 6078.89746),
                [6] = CFrame.new(-9709.30762, 204.695892, 6044.04688)
            }
        elseif ((Lv >= 2050 and Lv <= 2074) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Posessed Mummy") then -- Posessed Mummy
            return {
                [1] = "Posessed Mummy [Lv. 2050]",
                [2] = "HauntedQuest2",
                [3] = 2,
                [4] = "Posessed Mummys",
                [5] = CFrame.new(-9515.39551, 172.266037, 6078.89746),
                [6] = CFrame.new(-9554.11035, 65.6141663, 6041.73584)
            }
        elseif ((Lv >= 2075 and Lv <= 2099) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Peanut Scout") then -- Peanut Scout
            return {
                [1] = "Peanut Scout [Lv. 2075]",
                [2] = "PeanutQuest1",
                [3] = 1,
                [4] = "Peanut Scout",
                [5] = CFrame.new(-2104.453125, 38.129974365234, -10194.0078125),
                [6] = CFrame.new(-2068.0949707031, 76.512603759766, -10117.150390625)
            }
        elseif ((Lv >= 2100 and Lv <= 2124) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Peanut President") then -- Peanut President
            return {
                [1] = "Peanut President [Lv. 2100]",
                [2] = "PeanutQuest2",
                [3] = 2,
                [4] = "Peanut Presidents",
                [5] = CFrame.new(-2104.453125, 38.129974365234, -10194.0078125),
                [6] = CFrame.new(-2067.33203125, 90.557350158691, -10552.051757812)
            }
        elseif ((Lv >= 2125 and Lv <= 2149) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Ice Cream Chef") then --Ice Cream Chef
            return {
                [1] = "Ice Cream Chef [Lv. 2125]",
                [2] = "IceCreamQuest1",
                [3] = 1,
                [4] = "	Ice Cream Chefs",
                [5] = CFrame.new(-821.35913085938, 65.845329284668, -10965.2578125),
                [6] = CFrame.new(-796.37261962891, 110.95275878906, -10847.473632812)
            }
        elseif ((Lv >= 2150 and Lv <= 2200) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Ice Cream Commander") then -- Ice Cream Commander
            return {
                [1] = "Ice Cream Commander [Lv. 2150]",
                [2] = "IceCreamIslandQuest",
                [3] = 2,
                [4] = "Ice Cream Commanders",
                [5] = CFrame.new(-821.35913085938, 65.845329284668, -10965.2578125),
                [6] = CFrame.new(-697.65338134766, 174.48368835449, -11218.38671875)
            }
        elseif ((Lv >= 2200 and Lv <= 2250) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and __U[32](Setting.SelectMob) == "Cookie Crafter") then -- Cookie Crafter
            return {
                [1] = "Cookie Crafter [Lv. 2200]",
                [2] = "CakeQuest1",
                [3] = 1,
                [4] = "Cookie Crafters",
                [5] = CFrame.new(-2017.4874267578125, 36.85276412963867, -12027.53515625),
                [6] = CFrame.new(-2358.5791015625, 36.85615539550781, -12111.052734375)
            }
        end
    end
end

function OnFluentChange()
    if Window.Root.Visible then
        TTJYHUB.TextColor3  = __U[36](0, 255, 0)
    else
        TTJYHUB.TextColor3  = __U[36](255, 0, 0)
    end
end
function SVHop()
    __U[23](5)
    if StopAllHop then

    else
        serializedSetting = __VE["HS"]:JSONEncode(Setting)
        __U[23]()
        writefile("Setting/setting.json", serializedSetting)
        __U[23]()

        repeat
            if StopAllHop then
                break
            else
                game:GetService("TeleportService"):Teleport(game.PlaceId)
            end
            __U[23](5)
        until StopAllHop
    end
end
local function UNT(V3,CM)
    if not CM then
        if WorldCheck["First Sea"]then
        elseif WorldCheck["Second Sea"]then
            ReVal=math.huge
            V3Z=(V3-__VE["LPs"].Character.HumanoidRootPart.Position).Magnitude
            V3O=(V3-__U[57](-6508.5581054688,5000.0349960327,-132.83953857422)).Magnitude
            V3T=(V3-__U[57](923.21252441406,126.9760055542,32852.83203125)).Magnitude
            if V3Z<ReVal then ReVal=V3Z end
            if V3O<ReVal then ReVal=V3O end
            if V3T<ReVal then ReVal=V3T end
            if ReVal==V3Z then
            elseif ReVal==V3O then CommF:InvokeServer("requestEntrance",__U[57](-6508.55810546875, 89.03499603271484, -132.83953857421875)) task.wait(1)
            elseif ReVal==V3T then CommF:InvokeServer("requestEntrance",__U[57](923.21252441406,126.9760055542,32852.83203125)) task.wait(1)
            end
        elseif WorldCheck["Third Sea"]then
            ReVal=math.huge
            V3Z=(V3-__VE["LPs"].Character.HumanoidRootPart.Position).Magnitude
            V3O=(V3-__U[57](-5072.08984375,314.5412902832,-3151.1098632812)).Magnitude
            V3T=(V3-__U[57](5748.7587890625,610.44982910156,-267.81704711914)).Magnitude
            V3Th=(V3-__U[57](-12471.169921875,374.94024658203,-7551.677734375)).Magnitude
            if V3Z<ReVal then ReVal=V3Z end
            if V3O<ReVal then ReVal=V3O end
            if V3T<ReVal then ReVal=V3T end
            if V3Th<ReVal then ReVal=V3Th end
            if ReVal==V3Z then
            elseif ReVal==V3O then CommF:InvokeServer("requestEntrance",__U[57](-5072.08984375,314.5412902832,-3151.1098632812)) task.wait(1)
            elseif ReVal==V3T then CommF:InvokeServer("requestEntrance",__U[57](5748.7587890625,610.44982910156,-267.81704711914)) task.wait(1)
            elseif ReVal==V3Th then CommF:InvokeServer("requestEntrance",__U[57](-12471.169921875,374.94024658203,-7551.677734375)) task.wait(1) end
        end
    else
        if WorldCheck["First Sea"]then
        elseif WorldCheck["Second Sea"]then
            ReVal=math.huge
            V3Z=(V3.Position-__VE["LPs"].Character.HumanoidRootPart.Position).Magnitude
            V3O=(V3.Position-__U[57](-6508.5581054688,5000.0349960327,-132.83953857422)).Magnitude
            V3T=(V3.Position-__U[57](923.21252441406,126.9760055542,32852.83203125)).Magnitude
            if V3Z<ReVal then ReVal=V3Z end
            if V3O<ReVal then ReVal=V3O end
            if V3T<ReVal then ReVal=V3T end
            if ReVal==V3Z then
            elseif ReVal==V3O then CommF:InvokeServer("requestEntrance",__U[57](-6508.55810546875, 89.03499603271484, -132.83953857421875)) task.wait(1)
            elseif ReVal==V3T then CommF:InvokeServer("requestEntrance",__U[57](923.21252441406,126.9760055542,32852.83203125)) task.wait(1) end
        elseif WorldCheck["Third Sea"]then
            ReVal=math.huge
            V3Z=(V3.Position-__VE["LPs"].Character.HumanoidRootPart.Position).Magnitude
            V3O=(V3.Position-__U[57](-5072.08984375,314.5412902832,-3151.1098632812)).Magnitude
            V3T=(V3.Position-__U[57](5748.7587890625,610.44982910156,-267.81704711914)).Magnitude
            V3Th=(V3.Position-__U[57](-12471.169921875,374.94024658203,-7551.677734375)).Magnitude
            if V3Z<ReVal then ReVal=V3Z end
            if V3O<ReVal then ReVal=V3O end
            if V3T<ReVal then ReVal=V3T end
            if V3Th<ReVal then ReVal=V3Th end
            if ReVal==V3Z then
            elseif ReVal==V3O then CommF:InvokeServer("requestEntrance",__U[57](-5072.08984375,314.5412902832,-3151.1098632812)) task.wait(1)
            elseif ReVal==V3T then CommF:InvokeServer("requestEntrance",__U[57](5748.7587890625,610.44982910156,-267.81704711914)) task.wait(1)
            elseif ReVal==V3Th then CommF:InvokeServer("requestEntrance",__U[57](-12471.169921875,374.94024658203,-7551.677734375)) task.wait(1) end
        end
    end
end
function tp(x, y, z)
    if __VE["LPs"].Character:FindFirstChild("HumanoidRootPart") then
        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](x, y, z)
        __U[23]()
    end
end
function tp2(xyz)
    if __VE["LPs"].Character:FindFirstChild("HumanoidRootPart") then
        __VE["LPs"].Character.HumanoidRootPart.CFrame = xyz.Position
        __U[23]()
    end
end
function tpwithnewtpbyme(a,b,c,speedoftpNTP)
    if Setting.UnlockPortal then
        UNT(__U[57](a, b, c), false)
    end
    task.wait()
    local hrd = __VE["LPs"].Character.HumanoidRootPart
    local p = hrd.Position
    local currentPos = __U[57](p.x, p.y, p.z)
    local targetPos = __U[57](a, b, c)
    local saveY = p.y

    local direction = (targetPos - currentPos).Unit
    local distance = (targetPos - currentPos).Magnitude
    local steps = __U[39](distance / speedoftpNTP)
    for i = 1, steps do
        if not __VE["LPs"].Character:FindFirstChild("Humanoid") then
            repeat __U[23](0.175) until __VE["LPs"].Character:FindFirstChild("Humanoid")
        end
        if Setting.BREAKALLTHISSHITHAHAHAHAHA then
            break
        end
        currentPos = currentPos + direction * speedoftpNTP 
        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](currentPos)
        __U[23]()
    end
end
function tpwithnewtpbyme2(xyz,speedoftpNTP)
    if Setting.UnlockPortal then
        UNT(xyz, true)
    end
    task.wait()
    local hrd = __VE["LPs"].Character.HumanoidRootPart
    local p = hrd.Position
    local currentPos = __U[57](p.x, p.y, p.z)
    local targetPos = xyz.Position
    local saveY = p.y

    local direction = (targetPos - currentPos).Unit
    local distance = (targetPos - currentPos).Magnitude
    local steps = __U[39](distance / speedoftpNTP)
    for i = 1, steps do
        if not __VE["LPs"].Character:FindFirstChild("Humanoid") then
            repeat __U[23](0.175) until __VE["LPs"].Character:FindFirstChild("Humanoid")
        end
        if Setting.BREAKALLTHISSHITHAHAHAHAHA then
            break
        end
        currentPos = currentPos + direction * speedoftpNTP 
        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](currentPos)
        __U[23]()
    end
end
function tpwithnewtpbyme3(part,speedoftpNTP)
    local Targetpart = part
    local p = part.Position
    local currentPos = __U[57](p.X, p.Y, p.Z)
    local targetPos = __VE["LPs"].Character.HumanoidRootPart.Position

    local direction = (targetPos - currentPos).Unit
    local distance = (targetPos - currentPos).Magnitude
    local steps = __U[39](distance / speedoftpNTP) 
    for i = 1, steps do
        currentPos = currentPos + direction * speedoftpNTP 
        part.Position = currentPos
        __U[23]()
    end
end
function tpwithseat(xyz,speedoftpNTP)
    local hrd = __VE["LPs"].Character.HumanoidRootPart
    local p = hrd.Position
    local currentPos = __U[57](p.x, p.y, p.z)
    local targetPos = xyz.Position

    local direction = (targetPos - currentPos).Unit
    local distance = (targetPos - currentPos).Magnitude
    local steps = math.floor(distance / speedoftpNTP) 
    for i = 1, steps do
        if not __VE["LPs"].Character:FindFirstChild("Humanoid") then
            repeat __U[23](0.175) until __VE["LPs"].Character:FindFirstChild("Humanoid")
        end
        if Setting.BREAKALLTHISSHITHAHAHAHAHA then
            break
        end
        if Setting.WaitBRUH then
            repeat __U[23]() until not Setting.WaitBRUH or Setting.BREAKALLTHISSHITHAHAHAHAHA
        end
        currentPos = currentPos + direction * speedoftpNTP 
        __VE["LPs"].Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(__U[26](currentPos))
        __U[23]()
    end
end
function TpShipToLevel()
    if Setting.SelectSeaLevel == "1" then
        tpwithseat(__U[26](-23872.423828125, 13.270583152770996, 792.7938232421875), __U[31](Setting.TeleportSpeedAutoFarm))
    elseif Setting.SelectSeaLevel == "2" then
        tpwithseat(__U[26](-27782.32421875, 10.934972763061523, 1278.9227294921875), __U[31](Setting.TeleportSpeedAutoFarm))
    elseif Setting.SelectSeaLevel == "3" then
        tpwithseat(__U[26](-31620.69921875, 5.933741092681885, -323.7947692871094), __U[31](Setting.TeleportSpeedAutoFarm))
    elseif Setting.SelectSeaLevel == "4" then
        tpwithseat(__U[26](-36455.96875, 5.935291767120361, -522.872802734375), __U[31](Setting.TeleportSpeedAutoFarm))
    elseif Setting.SelectSeaLevel == "5" then
        tpwithseat(__U[26](-40951.2890625, 5.934666633605957, -346.8652648925781), __U[31](Setting.TeleportSpeedAutoFarm))
    elseif Setting.SelectSeaLevel == "6" then
        tpwithseat(__U[26](-42190.67578125, 5.93480110168457, 7495.6953125), __U[31](Setting.TeleportSpeedAutoFarm))
    end
end
function isTargetNearPlayer(targetCFrame, proximityThreshold)
    local playerPosition = __VE["LPs"].Character and __VE["LPs"].Character:FindFirstChild("HumanoidRootPart") and __VE["LPs"].Character.HumanoidRootPart.Position
    if playerPosition then
        local distance = (targetCFrame.Position - playerPosition).Magnitude
        return distance <= proximityThreshold
    else
        return false
    end
end
function AutoGetShip()
    if not game.Players.LocalPlayer.Character.Humanoid.Sit and not Setting.WaitBRUH then
        tpwithnewtpbyme(-16927.72265625, 9.857428550720215, 433.8697509765625, __U[31](Setting.TeleportSpeedAutoFarm))
        __U[23]()
        __VE["RlS"].Remotes.CommF_:InvokeServer("BuyBoat", __U[32](Setting.SelectShipISeaEvent))
        __U[23](0.675)
        for _, v in __U[7](__VE["WS"].Boats:GetChildren()) do
            if v and v:FindFirstChild("Owner") and __U[32](v.Owner.Value) == __U[32](game.Players.LocalPlayer.Name) then
                tpwithnewtpbyme2(v.VehicleSeat.CFrame, __U[31](Setting.TeleportSpeedAutoFarm))
                __U[23]()
                repeat
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.VehicleSeat.CFrame
                    __U[23]()
                until not v or __VE["LPs"].Character.Humanoid.Sit
            end
        end
    end
end
function EquipWeapon(Name)
    if Backpack:FindFirstChild(Name) then
      local Tool = Backpack:FindFirstChild(Name)
      __U[23](0.02)
      __VE["LPs"].Character.Humanoid:EquipTool(Tool)
      __U[23](0.5)
    end
end
function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        __U[23](0.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        __U[23](0.1)
    end
end
function EquipWeapon2(Name)
    
end
function UnEquipWeapon2(Name)
    
end
local function StopTeleport()
    STOPTP.TextColor3  = __U[36](0, 255, 0)
    Setting.BREAKALLTHISSHITHAHAHAHAHA = true
    __U[23](0.275)
    STOPTP.TextColor3  = __U[36](255, 0, 0)
    Setting.BREAKALLTHISSHITHAHAHAHAHA = false
end
function teleportToNearestChest()
    local playerPosition = __VE["LPs"].Character.HumanoidRootPart.Position
    local nearestChest = nil
    local shortestDistance = math.huge

    if Setting.AutoNormalChest and not Setting.AutoDetailChest then
        for _, v in __U[7](__VE["WS"]:GetChildren()) do
            if v:IsA("BasePart") and (v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3") then
                local distance = (v.Position - playerPosition).Magnitude
                if distance < shortestDistance then
                    nearestChest = v
                    shortestDistance = distance
                end
            end
        end
    elseif (Setting.AutoNormalChest and Setting.AutoDetailChest) or (not Setting.AutoNormalChest and Setting.AutoDetailChest) then
        for _, v in __U[7](__VE["WS"]:GetDescendants()) do
            if v:IsA("BasePart") and (v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3") then
                local distance = (v.Position - playerPosition).Magnitude
                if distance < shortestDistance then
                    nearestChest = v
                    shortestDistance = distance
                end
            end
        end
    end

    if nearestChest then
        tpwithnewtpbyme(nearestChest.Position.X, nearestChest.Position.Y, nearestChest.Position.Z, 5)
        __U[23]()
        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](nearestChest.Position.X, nearestChest.Position.Y, nearestChest.Position.Z)
    else

    end
end
function ChestAdded(child)
    if child and child.Name == "NotificationTemplate" then
        Setting.chestcollect = Setting.chestcollect + 1
    end
end
local Part = __U[35]("Part")
Part.Size = __U[57](2, 0.2, 1.5)
Part.Material = Enum.Material.Grass
Part.Anchored = true
Part.Transparency = 1
Part.Parent = __VE["WS"]

local function updatePartPosition()
    local character = __VE["LPs"].Character
    local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

    if humanoidRootPart and float then
        Part.CFrame = humanoidRootPart.CFrame * __U[26](0, -3.55, 0)
    else
        Part.CFrame = __U[26](0, -10000, 0)
    end
end

game:GetService("RunService").RenderStepped:Connect(updatePartPosition)
local function CheckAndClearWeapon()
    if Setting.StackableSetting then
        if (Setting.AutoSpikeyTrident or Setting.AutoSpikeyTridentHop) and Setting.Stackable and WorldCheck["First Sea"] then
            __U[6](function()
                if __VE["WS"].Enemies:FindFirstChild("Cake Prince") then
                    for i,v in pairs(__VE["WS"].Enemies:GetChildren()) do
                        if v and v.Name == "Cake Prince" and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 then
                            if v:FindFirstChild("HumanoidRootPart") then
                                repeat
                                    repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __U[19]()
                                until v.Humanoid.Health == 0 or not Setting.AutoSpikeyTrident or not Setting.StackableSetting or __VE["WS"].Map.CakeLoaf.BigMirror.Other.Transparency == 0 or Setting.LenMoB == 0
                            end
                        end
                    end
                else
                    if __VE["RlS"]:FindFirstChild("Cake Prince") then
                        tpwithnewtpbyme(__VE["RlS"]:FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                    end
                end
            end)
        end
        __U[23]()
        if (Setting.AutoTwinHooks or Setting.AutoTwinHooksHop) and Setting.StackableSetting and WorldCheck["Third Sea"] then
            __U[6](function()
                if __VE["WS"].Enemies:FindFirstChild("Captain Elephant") and Setting.StackableSetting then
                    for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v.Name == __U[32]("Captain Elephant") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoTwinHooks and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __U[19]()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoTwinHooks or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if __VE["RlS"]:FindFirstChild("Captain Elephant") and Setting.StackableSetting then
                        tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                    end
                    __U[23](0.675)
                    for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v.Name == __U[32]("Captain Elephant") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoTwinHooks and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __U[19]()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoTwinHooks or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                            end
                        end
                    end
                end
            end)
        end
        __U[23]()
        if (Setting.AutoBuddySword or Setting.AutoBuddySwordHop) and Setting.StackableSetting then
            __U[6](function()
                if __VE["WS"].Enemies:FindFirstChild("Cake Queen") and Setting.StackableSetting then
                    for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v.Name == __U[32]("Cake Queen") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoBuddySword and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __U[19]()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoBuddySword or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if __VE["RlS"]:FindFirstChild("Cake Queen") and Setting.StackableSetting then
                        tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                        __U[23](0.675)
                        for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                            if v and v.Name == __U[32]("Cake Queen") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoBuddySword and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                        __U[19]()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoBuddySword or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        __U[23]()
        if (Setting.AutoSharkSaw or Setting.AutoSharkSawHop) and Setting.StackableSetting then
            __U[6](function()
                if __VE["WS"].Enemies:FindFirstChild("The Saw") and Setting.StackableSetting then
                    for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v.Name == __U[32]("The Saw") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoSharkSaw and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __U[19]()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoSharkSaw or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if __VE["RlS"]:FindFirstChild("The Saw") and Setting.StackableSetting then
                        tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("The Saw").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                        __U[23](0.675)
                        for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                            if v and v.Name == __U[32]("The Saw") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoSharkSaw and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                        __U[19]()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoSharkSaw or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        __U[23]()
        if (Setting.AutoWardensSword or Setting.AutoWardensSwordHop) and Setting.StackableSetting then
            __U[6](function()
                if __VE["WS"].Enemies:FindFirstChild("Chief Warden") and Setting.StackableSetting then
                    for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v.Name == __U[32]("Chief Warden") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoWardensSword and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __U[19]()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoWardensSword or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if __VE["RlS"]:FindFirstChild("Chief Warden") and Setting.StackableSetting then
                        tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Chief Warden").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                        __U[23](0.675)
                        for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                            if v and v.Name == __U[32]("Chief Warden") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoWardensSword and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                        __U[19]()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoWardensSword or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        __U[23]()
        if (Setting.AutoGravityCane or Setting.AutoGravityCaneHop) and Setting.StackableSetting then
            __U[6](function()
                if __VE["WS"].Enemies:FindFirstChild("Fajita") and Setting.StackableSetting then
                    for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v.Name == __U[32]("Fajita") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoGravityCane and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __U[19]()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoGravityCane or Setting.TryNumOfthis1 == 300000 and Setting.StackableSetting
                            end
                        end
                    end
                else
                    if __VE["RlS"]:FindFirstChild("Fajita") and Setting.StackableSetting then
                        tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Fajita").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                        __U[23](0.675)
                        for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                            if v and v.Name == __U[32]("Fajita") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoGravityCane and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                        __U[19]()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoGravityCane or Setting.TryNumOfthis1 == 300000 and Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        __U[23]()
        if (Setting.AutoLongsword or Setting.AutoLongswordHop) and Setting.StackableSetting and WorldCheck["Second Sea"] then
            __U[6](function()
                if __VE["WS"].Enemies:FindFirstChild("Diamond") and Setting.StackableSetting then
                    for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v.Name == __U[32]("Diamond") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoLongsword and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __U[19]()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoLongsword or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if __VE["RlS"]:FindFirstChild("Diamond") and Setting.StackableSetting then
                        tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Diamond").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                        __U[23](0.675)
                        for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                            if v and v.Name == __U[32]("Diamond") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoLongsword and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                        __U[19]()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoLongsword or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        __U[23]()
        if (Setting.AutoJitte or Setting.AutoJitteHop) and Setting.StackableSetting and WorldCheck["Second Sea"] then
            __U[6](function()
                if __VE["WS"].Enemies:FindFirstChild("Smoke Admiral") and Setting.StackableSetting then
                    for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v.Name == __U[32]("Smoke Admiral") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoJitte and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __U[19]()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoJitte or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if __VE["RlS"]:FindFirstChild("Smoke Admiral") and Setting.StackableSetting then
                        tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Smoke Admiral").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                        __U[23](0.675)
                        for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                            if v and v.Name == __U[32]("Smoke Admiral") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoJitte and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                        __U[19]()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoJitte or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        __U[23]()
        if (Setting.AutoDragonTrident or Setting.AutoDragonTridentHop) and Setting.StackableSetting and WorldCheck["Second Sea"] then
            __U[6](function()
                if __VE["WS"].Enemies:FindFirstChild("Tide Keeper") and Setting.StackableSetting then
                    for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v.Name == __U[32]("Tide Keeper") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoDragonTrident and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __U[19]()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoDragonTrident or Setting.TryNumOfthis1 == 300000  or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if __VE["RlS"]:FindFirstChild("Tide Keeper") and Setting.StackableSetting then
                        tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                        __U[23](0.675)
                        for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                            if v and v.Name == __U[32]("Tide Keeper") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoDragonTrident and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                        __U[19]()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoDragonTrident or Setting.TryNumOfthis1 == 300000  or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        __U[23]()
        if (Setting.AutoPole or Setting.AutoPoleHop) and Setting.StackableSetting and WorldCheck["First Sea"] then
            __U[6](function()
                if __VE["WS"].Enemies:FindFirstChild("Thunder God") and Setting.StackableSetting then
                    for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v.Name == __U[32]("Thunder God") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoPole then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __U[19]()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoPole or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if __VE["RlS"]:FindFirstChild("Thunder God") and Setting.StackableSetting then
                        tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Thunder God").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                        __U[23](0.675)
                        for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                            if v and v.Name == __U[32]("Thunder God") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoPole then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                        __U[19]()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoPole or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        __U[23]()
        if (Setting.AutoHallowScythe or Setting.AutoHallowScytheHop) and Setting.StackableSetting and WorldCheck["Third Sea"] then
            __U[6](function()
                if __VE["WS"].Enemies:FindFirstChild("Soul Reaper") and Setting.StackableSetting then
                    for i,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v.Name == __U[32]("Soul Reaper") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoHallowScythe and Setting.StackableSetting then
                                EquipWeapon(__U[32](Setting.SelectWeapon))
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat __U[23]() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __U[19]()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoHallowScythe or Setting.TryNumOfthis1 == 100000 or not Setting.StackableSetting
                            end
                        end
                    end
                elseif (Backpack:FindFirstChild("Hallow Essence") or __VE["LPs"].Character:FindFirstChild("Hallow Essence")) and Setting.StackableSetting then
                    repeat 
                        tpwithnewtpbyme2(__U[26](-8932.322265625, 146.83154296875, 6062.55078125), __U[31](Setting.TeleportSpeedAutoFarm)) 
                        __U[19]()
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-8932.322265625, 146.83154296875, 6062.55078125)
                    until (__U[26](-8932.322265625, 146.83154296875, 6062.55078125).Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude <= 8 or not Setting.StackableSetting or not Setting.AutoHallowScythe                   
                    EquipWeapon("Hallow Essence")
                    __U[23](2)
                    for i,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v.Name == __U[32]("Soul Reaper") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoHallowScythe and Setting.StackableSetting then
                                EquipWeapon(__U[32](Setting.SelectWeapon))
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat __U[23]() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __U[19]()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoHallowScythe or Setting.TryNumOfthis1 == 100000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if __VE["RlS"]:FindFirstChild("Soul Reaper") and Setting.StackableSetting then
                        tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                        __U[23](0.576)
                        for i,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                            if v and v.Name == __U[32]("Soul Reaper") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoHallowScythe and Setting.StackableSetting then
                                    EquipWeapon(__U[32](Setting.SelectWeapon))
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat __U[23]() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                        __U[19]()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoHallowScythe or Setting.TryNumOfthis1 == 100000 or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        __U[23]()
        if (Setting.AutoSaber or Setting.AutoSaberHop) and Setting.StackableSetting and WorldCheck["First Sea"] then
            __U[6](function()
                if __VE["WS"].Enemies:FindFirstChild("Saber Expert") and Setting.StackableSetting then
                    for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v.Name == __U[32]("Saber Expert") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoSaber and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __U[19]()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoSaber or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if __VE["RlS"]:FindFirstChild("Saber Expert") and Setting.StackableSetting then
                        tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Saber Expert").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                        __U[23](0.675)
                        for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                            if v and v.Name == __U[32]("Saber Expert") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoSaber and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                        __U[19]()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoSaber or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        __U[23]()
        if (Setting.AutoCanvander or Setting.AutoCanvanderHop) and Setting.StackableSetting and WorldCheck["Third Sea"] then
            __U[6](function()
                if __VE["WS"].Enemies:FindFirstChild("Beautiful Pirate") and Setting.StackableSetting then
                    for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v.Name == __U[32]("Beautiful Pirate") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoCanvander and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __U[19]()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoCanvander or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if __VE["RlS"]:FindFirstChild("Beautiful Pirate") and Setting.StackableSetting then
                        tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                        __U[23](0.675)
                        for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                            if v and v.Name == __U[32]("Beautiful Pirate") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoCanvander and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                        __U[19]()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoCanvander or Setting.TryNumOfthis1 == 300000 or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end
local function UseSkill()
	if __VE["LPs"].Character:FindFirstChild(__VE["LPs"].Data.DevilFruit.Value) then
        BF = __U[24](__VE["LPs"].Character[__VE["LPs"].Data.DevilFruit.Value].Data)
    elseif __VE["LPs"].Backpack:FindFirstChild(__VE["LPs"].Data.DevilFruit.Value) then
        BF = __U[24](Backpack[__VE["LPs"].Data.DevilFruit.Value].Data)
    end
    if __VE["LPs"].Character:FindFirstChild(__VE["LPs"].Data.DevilFruit.Value) then
        MyMasteryDF = __VE["LPs"].Character[__VE["LPs"].Data.DevilFruit.Value].Level.Value
    elseif __VE["LPs"].Backpack:FindFirstChild(__VE["LPs"].Data.DevilFruit.Value) then
        MyMasteryDF = Backpack[__VE["LPs"].Data.DevilFruit.Value].Level.Value
    end
	if __VE["LPs"].Character:FindFirstChild("Dragon-Dragon") then                      
		if Setting.SkillZ then
			if MyMasteryDF >= BF.Lvl.Z then
				__VE["VIM"]:SendKeyEvent(true,"Z",false,game)
				__VE["VIM"]:SendKeyEvent(false,"Z",false,game)
			end
		end
		if Setting.SkillX then    
			if MyMasteryDF >= BF.Lvl.X then
				__VE["VIM"]:SendKeyEvent(true,"X",false,game)
				__VE["VIM"]:SendKeyEvent(false,"X",false,game)
			end
		end
		if Setting.SkillC then 
			if MyMasteryDF >= BF.Lvl.C then
				__VE["VIM"]:SendKeyEvent(true,"C",false,game)
				__U[19](2)
				__VE["VIM"]:SendKeyEvent(false,"C",false,game)
			end
		end
	elseif __VE["LPs"].Character:FindFirstChild("Venom-Venom") then   
		if Setting.SkillZ then
			if MyMasteryDF >= BF.Lvl.Z then
				__VE["VIM"]:SendKeyEvent(true,"Z",false,game)
				__VE["VIM"]:SendKeyEvent(false,"Z",false,game)
			end
		end
		if Setting.SkillX then    
			if MyMasteryDF >= BF.Lvl.X then                                 
				__VE["VIM"]:SendKeyEvent(true,"X",false,game)
				__VE["VIM"]:SendKeyEvent(false,"X",false,game)
			end
		end
		if Setting.SkillC then 
			if MyMasteryDF >= BF.Lvl.C then
				__VE["VIM"]:SendKeyEvent(true,"C",false,game)
				__VE["VIM"]:SendKeyEvent(false,"C",false,game)
			end
		end
	elseif __VE["LPs"].Character:FindFirstChild("Human-Human: Buddha") then
		if Setting.SkillZ and __VE["LPs"].Character.HumanoidRootPart.Size.X < 10 then    
			if MyMasteryDF >= BF.Lvl.Z then                       
				__VE["VIM"]:SendKeyEvent(true,"Z",false,game)
				__VE["VIM"]:SendKeyEvent(false,"Z",false,game)
			end
		end
		if Setting.SkillX then
			if MyMasteryDF >= BF.Lvl.X then
				__VE["VIM"]:SendKeyEvent(true,"X",false,game)
				__VE["VIM"]:SendKeyEvent(false,"X",false,game)
			end
		end
		if Setting.SkillC then      
			if MyMasteryDF >= BF.Lvl.C then                     
				__VE["VIM"]:SendKeyEvent(true,"C",false,game)
				__VE["VIM"]:SendKeyEvent(false,"C",false,game)
			end
		end
		if Setting.SkillV then  
			if MyMasteryDF >= BF.Lvl.V then                        
				__VE["VIM"]:SendKeyEvent(true,"V",false,game)
				__VE["VIM"]:SendKeyEvent(false,"V",false,game)
			end
		end
	else
		if Setting.SkillZ then
			if MyMasteryDF >= BF.Lvl.Z then                   
				__VE["VIM"]:SendKeyEvent(true,"Z",false,game)
				__VE["VIM"]:SendKeyEvent(false,"Z",false,game)
			end
		end
		if Setting.SkillX then    
			if MyMasteryDF >= BF.Lvl.X then
				__VE["VIM"]:SendKeyEvent(true,"X",false,game)
				__VE["VIM"]:SendKeyEvent(false,"X",false,game)
			end
		end
		if Setting.SkillC then 
			if MyMasteryDF >= BF.Lvl.C then
				__VE["VIM"]:SendKeyEvent(true,"C",false,game)
				__VE["VIM"]:SendKeyEvent(false,"C",false,game)
			end
		end
		if Setting.SkillV then               
			if MyMasteryDF >= BF.Lvl.V then           
				__VE["VIM"]:SendKeyEvent(true,"V",false,game)
				__VE["VIM"]:SendKeyEvent(false,"V",false,game)
			end
		end
	end
end
local function UseSkillMelee()
	__VE["VIM"]:SendKeyEvent(true,"Z",false,game)
	__VE["VIM"]:SendKeyEvent(false,"Z",false,game)
	__VE["VIM"]:SendKeyEvent(true,"X",false,game)
	__VE["VIM"]:SendKeyEvent(false,"X",false,game)
	__VE["VIM"]:SendKeyEvent(true,"C",false,game)
	__VE["VIM"]:SendKeyEvent(false,"C",false,game)
end



DamageAura = true
Fast = false
NeedAttacking = false
-- \\ GetHits / Canhits // --
getHits = function(Size)
    local Hits = {}
    if nearbymon then
        local Enemies = __VE["WS"].Enemies:GetChildren()
        local Characters = __VE["WS"].Characters:GetChildren()
        for i=1,#Enemies do local v = Enemies[i]
            local Human = v:FindFirstChildOfClass("Humanoid")
            if Human and Human.RootPart and Human.Health > 0 and dist(Human.RootPart.Position) < Size+5 then
                table.insert(Hits,Human.RootPart)
            end
        end
        for i=1,#Characters do local v = Characters[i]
            if v ~= Client.Character then
                local Human = v:FindFirstChildOfClass("Humanoid")
                if Human and Human.RootPart and Human.Health > 0 and dist(Human.RootPart.Position) < Size+5 then
                    table.insert(Hits,Human.RootPart)
                end
            end
        end
    end 
    return Hits
end
-- \\ 0 / 3 // --
Players = game.Players
Client = Players.LocalPlayer
Character = Client.Character:GetChildren()
Char = Client.Character
Root = Char.HumanoidRootPart
RunService = game:GetService("RunService")
vim = game:GetService('VirtualInputManager')
CollectionService = game:GetService("CollectionService")
-- \\ 1 / 3 // --
CurrentAllMob = {}
canHits = {}  
-- \\ 2 / 3 // --
require(game.ReplicatedStorage.Util.CameraShaker):Stop()
PC = require(Client.PlayerScripts.CombatFramework.Particle)
RL = require(game.ReplicatedStorage.CombatFramework.RigLib)
DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)
RigC = getupvalue(require(Client.PlayerScripts.CombatFramework.RigController),2)
Combat =  getupvalue(require(Client.PlayerScripts.CombatFramework),2)
-- \\ 3 / 3 // --
task.spawn(function()
local stacking = 0
local printCooldown = 0
while __U[19](.075) do
nearbymon = false
table.clear(CurrentAllMob)
table.clear(canHits)
local mobs = CollectionService:GetTagged("ActiveRig")
for i=1,#mobs do local v = mobs[i]
    Human = v:FindFirstChildOfClass("Humanoid")
    if Human and Human.Health > 0 and Human.RootPart and v ~= Char then
        local IsPlayer = game.Players:GetPlayerFromCharacter(v)
        local IsAlly = IsPlayer and CollectionService:HasTag(IsPlayer,"Ally"..Client.Name)
        if not IsAlly then
            CurrentAllMob[#CurrentAllMob + 1] = v
            if not nearbymon and (__VE["LPs"].Character:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude <= 65) then
                nearbymon = true
            end
        end
    end
end
if nearbymon then
    local Enemies = __VE["WS"].Enemies:GetChildren()
    local Players = Players:GetPlayers()
    for i=1,#Enemies do local v = Enemies[i]
        local Human = v:FindFirstChildOfClass("Humanoid")
        if Human and Human.RootPart and Human.Health > 0 and (__VE["LPs"].Character:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude <= 65) then
            canHits[#canHits+1] = Human.RootPart
        end
    end
    for i=1,#Players do local v = Players[i].Character
        if not Players[i]:GetAttribute("PvpDisabled") and v and v ~= Client.Character then
            local Human = v:FindFirstChildOfClass("Humanoid")
            if Human and Human.RootPart and Human.Health > 0 and (__VE["LPs"].Character:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude <= 65) then
                canHits[#canHits+1] = Human.RootPart
            end
        end
    end
end
end
end)
local shared = getgenv()
local Data = Combat
local Blank = function() end
local RigEvent = __VE["RlS"].RigControllerEvent
local Validator = game.ReplicatedStorage.Remotes.Validator
local Animation = __U[35]("Animation")
local RecentlyFired = 0
local AttackCD = 0
local Controller
local lastFireValid = 0
local MaxLag = 350
fucker = 0.07
TryLag = 0
local resetCD = function()
    local WeaponName = Controller.currentWeaponModel.Name
    local Cooldown = {
        combat = 0.07
    }
    AttackCD = tick() + (fucker and Cooldown[WeaponName:lower()] or fucker or 0.285) + ((TryLag/MaxLag)*0.3)
    RigEvent.FireServer(RigEvent,"weaponChange",WeaponName)
    TryLag = TryLag + 1
    task.delay((fucker or 0.285) + (TryLag+0.5/MaxLag)*0.3,function()
        TryLag = TryLag - 1
    end)
end
if not shared.orl then shared.orl = RL.wrapAttackAnimationAsync end
if not shared.cpc then shared.cpc = PC.play end
if not shared.dnew then shared.dnew = DMG.new end
if not shared.attack then shared.attack = RigC.attack end
RL.wrapAttackAnimationAsync = function(a,b,c,d,func)
if not getgenv().FastZure then
    PC.play = shared.cpc
    return shared.orl(a,b,c,65,func)
end
local Radius = (getgenv().FastZure and getgenv().FastZureRadius) or 65
    if canHits and #canHits > 0 then
        PC.play = function() end
        a:Play(0.01,0.01,0.01)
        func(canHits)
        __U[19](a.length * 0.5)
        a:Stop()
    end
end
task.spawn(function()
    local Data = Combat
    local Blank = function() end
    local RigEvent = __VE["RlS"].RigControllerEvent
    local Animation = __U[35]("Animation")
    local RecentlyFired = 0
    local AttackCD = 0
    local Controller
    local lastFireValid = 0
    local MaxLag = 350
    fucker = 0.07
    TryLag = 0
    local resetCD = function()
        local WeaponName = Controller.currentWeaponModel.Name
        local Cooldown = {
            combat = 0.07
        }
        AttackCD = tick() + (fucker and Cooldown[WeaponName:lower()] or fucker or 0.285) + ((TryLag/MaxLag)*0.3)
        RigEvent.FireServer(RigEvent,"weaponChange",WeaponName)
        TryLag = TryLag + 1
        task.delay((fucker or 0.285) + (TryLag+0.5/MaxLag)*0.3,function()
            TryLag = TryLag - 1
        end)
    end
    if not shared.orl then shared.orl = RL.wrapAttackAnimationAsync end
    if not shared.cpc then shared.cpc = PC.play end
    if not shared.dnew then shared.dnew = DMG.new end
    if not shared.attack then shared.attack = RigC.attack end
    RL.wrapAttackAnimationAsync = function(a,b,c,d,func)
    if not NeedAttacking then
        PC.play = shared.cpc
        return shared.orl(a,b,c,65,func)
    end
    local Radius = (DamageAura and DamageAuraRadius) or 65
        if canHits and #canHits > 0 then
            PC.play = function() end
            a:Play(0.00075,0.01,0.01)
            func(canHits)
            __U[19](a.length * 0.5)
            a:Stop()
        end
    end
    while RunService.Stepped:Wait() do
        if #canHits > 0 then
            Controller = Data.activeController
            if NormalClick then
                __U[6](task.spawn,Controller.attack,Controller)
            end
            if Controller and Controller.equipped and Controller.currentWeaponModel then
                if (NeedAttacking and DamageAura) then
                    if Fast and tick() > AttackCD and not DisableFastAttack then
                        resetCD()
                    end
                    if tick() - lastFireValid > 0.5 or not Fast then
                        Controller.timeToNextAttack = 0
                        Controller.hitboxMagnitude = 65
                        __U[6](task.spawn,Controller.attack,Controller)
                        lastFireValid = tick()
                    end
                    local AID3 = Controller.anims.basic[3]
                    local AID2 = Controller.anims.basic[2]
                    local ID = AID3 or AID2
                    Animation.AnimationId = ID
                    local Playing = Controller.humanoid:LoadAnimation(Animation)
                    Playing:Play(0.00075,0.01,0.01)
                    RigEvent.FireServer(RigEvent,"hit",canHits,AID3 and 3 or 2,"")
                    -- AttackSignal:Fire()
                    delay(.5,function()
                        Playing:Stop()
                    end)
                end
            end
        end
    end
end)

-----------------------------------------

__U[58](function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg, false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if __U[32](method) == "FireServer" then
            if __U[32](args[1]) == "RemoteEvent" then
                if __U[32](args[2]) ~= "true" and __U[32](args[2]) ~= "false" then
                    if Setting.UseSkill then
                        if (Setting.PosMobMasteryFruit ~= nil and Setting.AutoFarmFruitMastery) or (Setting.AimbotSkillSelectPlayer and Setting.SelectPlayerToAim ~= nil) or Setting.AutoFarmBounty then
                            args[2] = Setting.PosMobMasteryFruit
                            return old(unpack(args))
                        end
                    end
                end
            end
        end
        return old(...)
    end)
end)()







__U[6](function()
    __U[58](function()
        repeat __U[23]() until finishload
        while __U[23]() do
            if Setting.RemoveAnim then
                __U[6](function()
                    for _, v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and v.Humanoid.Animator then
                            v.Humanoid.Animator:Destroy()
                        end
                    end
                end)
            end
        end
    end)()
end)
__U[6](function()
    __U[58](function()
        repeat __U[23]() until finishload
        while __U[23]() do
            if BringMob and not Setting.AutoFarmAura then
                __U[6](function()
                    for _, v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v.Name == __U[32](NameMon) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v:FindFirstChild("HumanoidRootPart").Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 200 then
                            FirstMob = v
                    
                            for _, otherMob in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if otherMob and otherMob.Name == __U[32](NameMon) and otherMob:FindFirstChild("Humanoid") and otherMob.Humanoid.Health > 0 and FirstMob and FirstMob:FindFirstChild("HumanoidRootPart") and (FirstMob:FindFirstChild("HumanoidRootPart").Position - otherMob:FindFirstChild("HumanoidRootPart").Position).Magnitude < __U[31](Setting.BringMobDistance) then
                                    otherMob:FindFirstChild("HumanoidRootPart").CFrame = FirstMob:FindFirstChild("HumanoidRootPart").CFrame
                                    otherMob.HumanoidRootPart.CanCollide = false
                                    otherMob.Humanoid.WalkSpeed = 0
                                    otherMob.Humanoid.JumpPower = 0
                                end
                            end
                            __U[23]()
                        end
                    end
                end)
            elseif BringMob and Setting.AutoFarmAura then
                __U[6](function()
                    for _, v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v:FindFirstChild("HumanoidRootPart").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 200 then
                            FirstMob = v
                    
                            for _, otherMob in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if otherMob and otherMob:FindFirstChild("Humanoid") and otherMob.Humanoid.Health > 0 and FirstMob and FirstMob:FindFirstChild("HumanoidRootPart") and (FirstMob:FindFirstChild("HumanoidRootPart").Position - otherMob:FindFirstChild("HumanoidRootPart").Position).Magnitude < __U[31](Setting.BringMobDistance) then
                                    otherMob:FindFirstChild("HumanoidRootPart").CFrame = FirstMob:FindFirstChild("HumanoidRootPart").CFrame
                                    otherMob.HumanoidRootPart.CanCollide = false
                                    otherMob.Humanoid.WalkSpeed = 0
                                    otherMob.Humanoid.JumpPower = 0
                                end
                            end
                            __U[23]()
                        end
                    end
                end)
            end
        end
    end)()
end)
__U[6](function()
    __U[58](function()
        repeat __U[23]() until finishload
        while __U[23]() do
            __U[6](function()
                float = Setting.ToggleFloat or Setting.AutoFarmLevel or Setting.AutoMaterial or Setting.AuraMaterialType1 or Setting.AutoRaceV2 or Setting.AutoRaceV3 or Setting.AutoRaceV4 or Setting.AutoSea2 or Setting.TpToFruit or Setting.AutoRaid or Setting.AutoBartilo or Setting.TeleportToNextIsland or Setting.AutoFarmBounty or Setting.AutoRichManMission or Setting.AutoFarmObservation or Setting.AutoFarmObservationHop or Setting.AutoBone or Setting.AutoFarmAura or Setting.AutoFarmSelectMob or Setting.AutoFarmSelectBoss or Setting.AutoRengoku or Setting.AutoTwinHooks or Setting.AutoTwinHooksHop or Setting.AutoSharkSaw or Setting.AutoSharkSawHop or Setting.AutoWardensSword or Setting.AutoWardensSwordHop or Setting.AutoGravityCane or Setting.AutoGravityCaneHop or Setting.AutoLongsword or Setting.AutoLongswordHop or Setting.AutoJitte or Setting.AutoJitteHop or Setting.AutoBuddySword or Setting.AutoBuddySwordHop or Setting.AutoHallowScythe or Setting.AutoHallowScytheHop or Setting.AutoDarkDagger or Setting.AutoDarkDaggerHop or Setting.AutoYama or Setting.AutoDragonTrident or Setting.AutoDragonTridentHop or Setting.AutoPole or Setting.AutoPoleHop or Setting.AutoSaberHop or Setting.AutoCanvander or Setting.AutoCanvanderHop or Setting.AutoFarmGunMastery or Setting.AutoFarmFruitMastery or Setting.WaitBRUH
                NeedAttacking = Setting.AutoFarmLevel or Setting.AutoMaterial or Setting.AuraMaterialType1 or Setting.AutoRaceV2 or Setting.AutoRaceV3 or Setting.AutoRaceV4 or Setting.AutoSea2 or Setting.DMGAura or Setting.DMGAura2 or Setting.DMGAura3 or Setting.DMGAura4 or Setting.DMGAura5 or Setting.AutoBartilo or Setting.AutoRichManMission or Setting.AutoBone or Setting.AutoFarmAura or Setting.AutoFarmSelectMob or Setting.AutoFarmSelectBoss or Setting.AutoRengoku or Setting.AutoTwinHooks or Setting.AutoTwinHooksHop or Setting.AutoSharkSaw or Setting.AutoSharkSawHop or Setting.AutoWardensSword or Setting.AutoWardensSwordHop or Setting.AutoGravityCane or Setting.AutoGravityCaneHop or Setting.AutoLongsword or Setting.AutoLongswordHop or Setting.AutoJitte or Setting.AutoJitteHop or Setting.AutoBuddySword or Setting.AutoBuddySwordHop or Setting.AutoHallowScythe or Setting.AutoHallowScytheHop or Setting.AutoDarkDagger or Setting.AutoDarkDaggerHop or Setting.AutoYama or Setting.AutoDragonTrident or Setting.AutoDragonTridentHop or Setting.AutoPole or Setting.AutoPoleHop or Setting.AutoSaberHop or Setting.AutoCanvander or Setting.AutoCanvanderHop or Setting.AutoFarmGunMastery or Setting.AutoFarmFruitMastery
                KillAuraS = Setting.AutoRaid or Setting.KillAura
                BringMob = Setting.BringMob or Setting.BringMob2 or Setting.BringMob3
                IsWeaponBusy = Setting.AutoBuddySword or Setting.AutoBuddySwordHop or Setting.AutoTwinHooks or Setting.AutoTwinHooksHop
                IsAutoFarmBusy = Setting.AutoFarmLevel or Setting.AutoMaterial or Setting.AuraMaterialType1 or Setting.AutoBone or Setting.AutoFarmAura or Setting.AutoFarmSelectMob
            end)
        end
    end)()
end)
__U[6](function()
    __U[58](function()
        while not finishload do
            __U[23]()
        end

        while __U[23]() do
            if Setting.AutoStoreFruit or Setting.AutoDropFruit then
                __U[23](1)
            end

            __U[23](0.5)

            if NeedAttacking then
                if not Setting.PauseAutoEqu then
                    EquipWeapon(__U[32](Setting.SelectWeapon))
                end
            end
        end
    end)()
end)
__U[6](function()
    __U[58](function()
        repeat __U[23]() until finishload
        while __U[23]() do
            if Setting.AutoFarmLevel and not Setting.AutoSea2 then
                __U[6](function()
                    CheckAndClearWeapon()
                    __U[23]()
                    CheckLevel()
                    __U[23](0.657)
                    if InstanceTp then
                        repeat
                            __U[19](0.175)
                            if InstanceTp and (CheckLevel()[6].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 then
                                __VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[6])
                                __U[19]()
                                __VE["LPs"].Character.Humanoid.Health = 0
                                repeat __U[23]() until __VE["LPs"].Character.Humanoid
                                __VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[6])
                                __VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[6])
                                __VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[6])
                            else
                                break
                            end
                            __U[23](2.175)
                        until (CheckLevel()[6].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 and InstanceTp
                    end
                    __U[23]()
                    repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                    if not __VE["PsG"].Main.Quest.Visible then
                        tpwithnewtpbyme2(CheckLevel()[5], __U[31](Setting.TeleportSpeedAutoFarm))
                        __U[23](1)
                        if (CheckLevel()[5].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
                            CommF:InvokeServer("StartQuest", CheckLevel()[2], CheckLevel()[3])
                        end
                        __U[23](.175)
                    end
                    __U[23]()
                    if Setting.AutoFarmLevel and not Setting.AutoSea2 then
                        tpwithnewtpbyme2(CheckLevel()[6], __U[31](Setting.TeleportSpeedAutoFarm))
                    end
                    repeat
                        for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                            if v and v.Name == __U[32](CheckLevel()[4]) and (CheckLevel()[6].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmLevel and __VE["PsG"].Main.Quest.Visible and (CheckLevel()[6].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
                                    CheckAndClearWeapon()
                                    __U[23]()
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                        __U[19]()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not __VE["PsG"].Main.Quest.Visible or not Setting.AutoFarmLevel or Setting.TryNumOfthis1 == 300 or (CFrameMon.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000
                                end
                            end
                        end
                        tpwithnewtpbyme2(CheckLevel()[6], __U[31](Setting.TeleportSpeedAutoFarm))
                        __U[23]()
                    until not __VE["PsG"].Main.Quest.Visible or not Setting.AutoFarmLevel or (CFrameMon.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000
                    __U[23]()
                end)
                __U[23]()
            elseif Setting.AutoFarmLevel and Setting.AutoSea2 then
                __U[6](function()
                    CheckAndClearWeapon()
                end)
                __U[23]()
                __U[6](function()
                    Lv = __VE["LPs"].Data.Level.Value
                    if Lv >= 700 then
                        tpwithnewtpbyme(4852.15625, 5.776771545410156, 718.41064453125, __U[31](Setting.TeleportSpeedAutoFarm))
                        CommF:InvokeServer("DressrosaQuestProgress", "Detective")
                        __U[23](3)
                        CommF:InvokeServer("DressrosaQuestProgress", "Detective")
                        __U[23](2.175)
                        if __VE["LPs"].Backpack:FindFirstChild("Key") then
                            __VE["LPs"].Character.Humanoid:EquipTool("Key")
                            if Setting.AutoSea2 then
                                repeat
                                    tpwithnewtpbyme(1344.54724, 42.2526398, -1327.88904, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __U[23]()
                                until (__VE["WS"].Map.Ice.Door and __VE["WS"].Map.Ice.Door.Transparency == 1) or not Setting.AutoSea2
                                __U[23](1.75)
                                for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                    if v and v.Name == __U[32]("Ice Admiral") then
                                        if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoSea2 then
                                            Attack = true
                                            Setting.TryNumOfthis1 = 0
                                            repeat
                                                repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                                MobHumP = v.HumanoidRootPart.Position
                                                tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                                __U[19]()
                                                Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                            until v.Humanoid.Health == 0 or not Setting.AutoSea2 or Setting.TryNumOfthis1 == 2000
                                        end
                                    end
                                end
                                __U[23]()
                                CommF:InvokeServer("TravelDressrosa")
                            end
                        elseif not Backpack:FindFirstChild("Key") then
                            tpwithnewtpbyme(1344.54724, 42.2526398, -1327.88904, __U[31](Setting.TeleportSpeedAutoFarm))
                            __U[23](1.75)
                            if Setting.AutoSea2 then
                                for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                    if v and v.Name == __U[32]("Ice Admiral") then
                                        if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoSea2 then
                                            Setting.TryNumOfthis1 = 0
                                            repeat
                                                repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                                MobHumP = v.HumanoidRootPart.Position
                                                tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                                __U[19]()
                                                Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                            until v.Humanoid.Health == 0 or not Setting.AutoSea2 or Setting.TryNumOfthis1 == 2000
                                        end
                                    end
                                end
                            end
                            __U[23]()
                            CommF:InvokeServer("TravelDressrosa")
                        end
                    else
                        CheckLevel()
                        __U[23](0.657)
                        if InstanceTp then
                            repeat
                                __U[19](0.175)
                                if InstanceTp and (CFrameMon.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 then
                                    __VE["LPs"].Character:SetPrimaryPartCFrame(CFrameMon)
                                    __U[19]()
                                    __VE["LPs"].Character.Humanoid.Health = 0
                                    repeat __U[23]() until __VE["LPs"].Character.Humanoid
                                    __VE["LPs"].Character:SetPrimaryPartCFrame(CFrameMon)
                                    __VE["LPs"].Character:SetPrimaryPartCFrame(CFrameMon)
                                    __VE["LPs"].Character:SetPrimaryPartCFrame(CFrameMon)
                                else
                                    break
                                end
                                __U[19]()
                            until (CFrameMon.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 and InstanceTp
                        end
                        __U[23]()
                        repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                        if not __VE["PsG"].Main.Quest.Visible and (CFrameMon.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
                            tpwithnewtpbyme2(CFrameQ, __U[31](Setting.TeleportSpeedAutoFarm))
                            __U[23](1)
                            CommF:InvokeServer("StartQuest", NameQuest, QuestLv)
                            __U[23](.175)
                        end
                        __U[23]()
                        tpwithnewtpbyme2(CFrameMon, __U[31](Setting.TeleportSpeedAutoFarm))
                        repeat
                            for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if v and v.Name == __U[32](NameMon) and (CFrameMon.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmLevel and __VE["PsG"].Main.Quest.Visible and (CFrameMon.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[19]()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or __VE["PsG"].Main.Quest.Visible == false or not Setting.AutoFarmLevel or Setting.TryNumOfthis1 == 300 or (CFrameMon.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000
                                    end
                                end
                            end
                            tpwithnewtpbyme2(CFrameMon, __U[31](Setting.TeleportSpeedAutoFarm))
                            __U[23]()
                        until __VE["PsG"].Main.Quest.Visible == false or not Setting.AutoFarmLevel or (CFrameMon.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000
                        Attack = false
                        __U[23]()
                    end
                    __U[23]()
                end)
                __U[23]()
            elseif Setting.AutoFarmLevel and Setting.AutoThirdSea then
                __U[6](function()
                    if __VE["LPs"].Data.Level.Value >= __N[2]*__N[3]*__N[8]*__N[8] and WorldCheck["Second Sea"] then
                        CommF:InvokeServer("TravelZou")
                        tpwithnewtpbyme2(__U[26](-1926.3221435547, 12.819851875305, 1738.3092041016),5)
                        if (__U[26](-1926.3221435547, 12.819851875305, 1738.3092041016).Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude <= __N[8] and Setting.AutoThirdSea then
                            __U[19](1.5)
                            CommF:InvokeServer("ZQuestProgress","Begin")
                        end
                        repeat task.wait() until __VE["WS"].Enemies:FindFirstChild("\114\105\112\95\105\110\100\114\97") or not Setting.AutoThirdSea or not Setting.AutoFarmLevel
                        __U[19](1.8)
                        if __VE["WS"].Enemies:FindFirstChild("\114\105\112\95\105\110\100\114\97") and Setting.AutoThirdSea and Setting.AutoFarmLevel then
                            for i,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if v.Name == "\114\105\112\95\105\110\100\114\97" and Setting.AutoThirdSea and v.Humanoid and v.Humanoid.Health ~= 0 and Setting.AutoFarmLevel then
                                    repeat __U[23]()
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme2(v.HumanoidRootPart.CFrame * __U[26](Setting.AutoFarmPosX, Setting.AutoFarmPosY, Setting.AutoFarmPosZ), __U[31](Setting.TeleportSpeedAutoFarm))
                                        CommF:InvokeServer("TravelZou")
                                    until not Setting.AutoThirdSea or not Setting.AutoFarmLevel or v.Humanoid.Health <= __Y[4] or not v.Parent
                                end
                            end
                        elseif not __VE["WS"].Enemies:FindFirstChild("\114\105\112\95\105\110\100\114\97") and (__U[26](-26880.93359375, 22.848554611206, 473.18951416016).Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude <= __N[8]*__N[8]*__N[8] then
                            tpwithnewtpbyme2(__U[26](-26880.93359375, 22.848554611206, 473.18951416016), 5)
                        end
                    else
                        __U[6](function()
                            CheckAndClearWeapon()
                            __U[23]()
                            CheckLevel()
                            __U[23](0.657)
                            if InstanceTp then
                                repeat
                                    __U[19](0.175)
                                    if InstanceTp and (CheckLevel()[6].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 then
                                        __VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[6])
                                        __U[19]()
                                        __VE["LPs"].Character.Humanoid.Health = 0
                                        repeat __U[23]() until __VE["LPs"].Character.Humanoid
                                        __VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[6])
                                        __VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[6])
                                        __VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[6])
                                    else
                                        break
                                    end
                                    __U[23](2.175)
                                until (CheckLevel()[6].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 and InstanceTp
                            end
                            __U[23]()
                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                            if not __VE["PsG"].Main.Quest.Visible then
                                tpwithnewtpbyme2(CheckLevel()[5], __U[31](Setting.TeleportSpeedAutoFarm))
                                __U[23](1)
                                if (CheckLevel()[5].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
                                    CommF:InvokeServer("StartQuest", CheckLevel()[2], CheckLevel()[3])
                                end
                                __U[23](.175)
                            end
                            __U[23]()
                            if Setting.AutoFarmLevel and not Setting.AutoThirdSea then
                                tpwithnewtpbyme2(CheckLevel()[6], __U[31](Setting.TeleportSpeedAutoFarm))
                            end
                            repeat
                                for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                    if v and v.Name == __U[32](CheckLevel()[4]) and (CheckLevel()[6].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
                                        if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmLevel and __VE["PsG"].Main.Quest.Visible and (CheckLevel()[6].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 and Setting.AutoThirdSea then
                                            CheckAndClearWeapon()
                                            __U[23]()
                                            Setting.TryNumOfthis1 = 0
                                            repeat
                                                repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                                MobHumP = v.HumanoidRootPart.Position
                                                tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                                __U[19]()
                                                Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                            until v.Humanoid.Health == 0 or not __VE["PsG"].Main.Quest.Visible or not Setting.AutoFarmLevel or Setting.TryNumOfthis1 == 300 or (CFrameMon.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 or not Setting.AutoThirdSea
                                        end
                                    end
                                end
                                tpwithnewtpbyme2(CheckLevel()[6], __U[31](Setting.TeleportSpeedAutoFarm))
                                __U[23]()
                            until not __VE["PsG"].Main.Quest.Visible or not Setting.AutoFarmLevel or (CFrameMon.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 or not Setting.AutoThirdSea
                            __U[23]()
                        end)
                        __U[23]()
                    end
                end)
            end
            __U[23]()
        end
    end)()
end)
__U[20](function()
    while __U[23]() do
        if Setting.AutoThirdSeaM then
            __U[6](function()
                if __VE["LPs"].Data.Level.Value >= __N[2]*__N[3]*__N[8]*__N[8] and WorldCheck["Second Sea"] and Setting.AutoThirdSeaM then
                    if CommF:InvokeServer("ZQuestProgress", "General") == __Y[4] then
                        tpwithnewtpbyme2(__U[26](-1926.3221435547, 12.819851875305, 1738.3092041016),5)
                        if (__U[26](-1926.3221435547, 12.819851875305, 1738.3092041016).Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude <= __N[8] and Setting.AutoThirdSeaM then
                            __U[19](1.5)
                            CommF:InvokeServer("ZQuestProgress","Begin")
                        end
                        repeat task.wait() until __VE["WS"].Enemies:FindFirstChild("\114\105\112\95\105\110\100\114\97") or not Setting.AutoThirdSeaM
                        __U[19](1.8)
                        if __VE["WS"].Enemies:FindFirstChild("\114\105\112\95\105\110\100\114\97") and Setting.AutoThirdSea then
                            for i,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if v.Name == "\114\105\112\95\105\110\100\114\97" and Setting.AutoThirdSea and v.Humanoid and v.Humanoid.Health ~= 0 then
                                    repeat __U[23]()
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme2(v.HumanoidRootPart.CFrame * __U[26](Setting.AutoFarmPosX, Setting.AutoFarmPosY, Setting.AutoFarmPosZ), __U[31](Setting.TeleportSpeedAutoFarm))
                                        CommF_:InvokeServer("TravelZou")
                                    until not Setting.AutoThirdSea or v.Humanoid.Health <= __Y[4] or not v.Parent
                                end
                            end
                        elseif not __VE["WS"].Enemies:FindFirstChild("\114\105\112\95\105\110\100\114\97") and (__U[26](-26880.93359375, 22.848554611206, 473.18951416016).Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude <= __N[8]*__N[8]*__N[8] then
                            tpwithnewtpbyme2(__U[26](-26880.93359375, 22.848554611206, 473.18951416016), 5)
                        end
                    end
                end
            end)
        end
    end
end)
__U[6](function()
    __U[58](function()
        repeat __U[23]() until finishload
        while __U[23]() do
            if Setting.AutoFarmSelectMob then
                __U[6](function()
                    CheckLevel()
                    __U[23](0.657)
                    if InstanceTp and Setting.AutoFarmSelectMob then
                        repeat
                            __U[19](0.175)
                            if InstanceTp and (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 then
                                __VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[3])
                                __U[19]()
                                __VE["LPs"].Character.Humanoid.Health = 0
                                repeat __U[23]() until __VE["LPs"].Character.Humanoid
                                __VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[3])
                                __VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[3])
                                __VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[3])
                            else
                                break
                            end
                            __U[19]()
                        until (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 and InstanceTp
                    end
                    __U[23]()
                    repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid") or not Setting.AutoFarmSelectMob
                    if Setting.CustomQuest and (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
                        if not __VE["PsG"].Main.Quest.Visible and Setting.AutoFarmSelectMob then
                            tpwithnewtpbyme2(CheckLevel()[6], __U[31](Setting.TeleportSpeedAutoFarm))
                            __U[23](1)
                            CommF:InvokeServer("StartQuest", CheckLevel()[4], CheckLevel()[5])
                            __U[23](.175)
                        end
                        __U[23]()
                        tpwithnewtpbyme2(CheckLevel()[3], __U[31](Setting.TeleportSpeedAutoFarm))
                        repeat
                            for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if v and v.Name == __U[32](CheckLevel()[2]) and (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmSelectMob and __VE["PsG"].Main.Quest.Visible then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[19]()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not __VE["PsG"].Main.Quest.Visible or not Setting.AutoFarmSelectMob or Setting.TryNumOfthis1 == 300 or (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000
                                    end
                                end
                            end
                            tpwithnewtpbyme2(CheckLevel()[3], __U[31](Setting.TeleportSpeedAutoFarm))
                            __U[23]()
                        until not __VE["PsG"].Main.Quest.Visible or not Setting.AutoFarmSelectMob or (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000
                        __U[23]()
                    else
                        tpwithnewtpbyme2(CheckLevel()[3], __U[31](Setting.TeleportSpeedAutoFarm))
                        repeat
                            for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if v and v.Name == __U[32](CheckLevel()[2]) and (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmSelectMob and (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[19]()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoFarmSelectMob or Setting.TryNumOfthis1 == 300 or (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000
                                    end
                                end
                            end
                            tpwithnewtpbyme2(CheckLevel()[3], __U[31](Setting.TeleportSpeedAutoFarm))
                            __U[23]()
                        until not Setting.AutoFarmSelectMob or Setting.CustomQuest or (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000
                        __U[23]()
                    end
                end)
                __U[23]()
            end
        end
    end)()
end)
__U[6](function()
	__U[58](function()
        repeat __U[23]() until finishload
		while __U[23]() do
			if Setting.AutoFarmSelectBoss and not Setting.AutoFarmAllBoss then
				CheckQuestBoss()
				__U[23](0.675)
				if Setting.CustomQuest then
					if Setting.SelectBoss == "The Saw" or Setting.SelectBoss == "Greybeard" or Setting.SelectBoss == "Saber Expert" then
						if __VE["WS"].Enemies:FindFirstChild(__U[32](Setting.SelectBoss)) then
							tpwithnewtpbyme2(CheckQuestBoss()[3], __U[31](Setting.TeleportSpeedAutoFarm))
							__U[23]()
							for _, v in __U[7](__VE["WS"].Enemies:GetChildren()) do
								if v and v.Name == __U[32](CheckQuestBoss()[2]) then
									if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmSelectBoss and (CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 and not Setting.AutoFarmAllBoss then
										Setting.TryNumOfthis1 = 0
										repeat
											repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
											MobHumP = v.HumanoidRootPart.Position
											tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
											__U[19]()
											Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
										until v.Humanoid.Health == 0 or not Setting.AutoFarmSelectBoss or Setting.TryNumOfthis1 == 300 or (CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 or Setting.AutoFarmAllBoss
									end
								end
							end
							__U[23](0.675)
						elseif __VE["RlS"]:FindFirstChild(__U[32](Setting.SelectBoss)) then
							tpwithnewtpbyme2(CheckQuestBoss()[3], __U[31](Setting.TeleportSpeedAutoFarm))
							__U[23]()
						end
					else
						if not __VE["PsG"].Main.Quest.Visible then
							tpwithnewtpbyme2(CheckQuestBoss()[6], __U[31](Setting.TeleportSpeedAutoFarm))
							__U[23](1)
							if (CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
								CommF:InvokeServer("StartQuest", CheckQuestBoss()[4], CheckQuestBoss()[5])
							end
							__U[23](.175)
						end
						if __VE["WS"].Enemies:FindFirstChild(__U[32](Setting.SelectBoss)) then
							for _, v in __U[7](__VE["WS"].Enemies:GetChildren()) do
								if v and v.Name == __U[32](CheckQuestBoss()[2]) then
									if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmSelectBoss and (CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 and not Setting.AutoFarmAllBoss then
										Setting.TryNumOfthis1 = 0
										repeat
											repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
											MobHumP = v.HumanoidRootPart.Position
											tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
											__U[19]()
											Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
										until v.Humanoid.Health == 0 or not Setting.AutoFarmSelectBoss or Setting.TryNumOfthis1 == 300 or (CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 or Setting.AutoFarmAllBoss or not __VE["PsG"].Main.Quest.Visible
									end
								end
							end
							__U[23](0.675)
						elseif __VE["RlS"]:FindFirstChild(__U[32](Setting.SelectBoss)) then
							if InstanceTp and (CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
								__VE["LPs"].Character:SetPrimaryPartCFrame(CheckQuestBoss()[3])
								__U[19]()
								__VE["LPs"].Character.Humanoid.Health = 0
								repeat __U[23]() until __VE["LPs"].Character.Humanoid
								__VE["LPs"].Character:SetPrimaryPartCFrame(CheckQuestBoss()[3])
								__VE["LPs"].Character:SetPrimaryPartCFrame(CheckQuestBoss()[3])
								__VE["LPs"].Character:SetPrimaryPartCFrame(CheckQuestBoss()[3])
							else
								tpwithnewtpbyme2(CheckQuestBoss()[3], __U[31](Setting.TeleportSpeedAutoFarm))
							end
							__U[23]()
						end
					end
				else
					if Setting.SelectBoss == "The Saw" or Setting.SelectBoss == "Greybeard" or Setting.SelectBoss == "Saber Expert" then
						if __VE["WS"].Enemies:FindFirstChild(__U[32](Setting.SelectBoss)) then
							tpwithnewtpbyme2(CheckQuestBoss()[3], __U[31](Setting.TeleportSpeedAutoFarm))
							__U[23]()
							for _, v in __U[7](__VE["WS"].Enemies:GetChildren()) do
								if v and v.Name == __U[32](CheckQuestBoss()[2]) then
									if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmSelectBoss and (CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 and not Setting.AutoFarmAllBoss then
										Setting.TryNumOfthis1 = 0
										repeat
											repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
											MobHumP = v.HumanoidRootPart.Position
											tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
											__U[19]()
											Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
										until v.Humanoid.Health == 0 or not Setting.AutoFarmSelectBoss or Setting.TryNumOfthis1 == 300 or (CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 or Setting.AutoFarmAllBoss
									end
								end
							end
							__U[19](0.675)
						elseif __VE["RlS"]:FindFirstChild(__U[32](Setting.SelectBoss)) then
							tpwithnewtpbyme2(CheckQuestBoss()[3], __U[31](Setting.TeleportSpeedAutoFarm))
							__U[23]()
						end
					else
						if __VE["WS"].Enemies:FindFirstChild(__U[32](Setting.SelectBoss)) then
							for _, v in __U[7](__VE["WS"].Enemies:GetChildren()) do
								if v and v.Name == __U[32](CheckQuestBoss()[2]) then
									if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmSelectBoss and (CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 and not Setting.AutoFarmAllBoss then
										Setting.TryNumOfthis1 = 0
										repeat
											repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
											MobHumP = v.HumanoidRootPart.Position
											tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
											__U[19]()
											Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
										until v.Humanoid.Health == 0 or not Setting.AutoFarmSelectBoss or Setting.TryNumOfthis1 == 300 or (CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 or Setting.AutoFarmAllBoss or not __VE["PsG"].Main.Quest.Visible
									end
								end
							end
							__U[23](0.675)
						elseif __VE["RlS"]:FindFirstChild(__U[32](Setting.SelectBoss)) then
							if InstanceTp and (CheckQuestBoss()[3].Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 3000 then
								__VE["LPs"].Character:SetPrimaryPartCFrame(CheckQuestBoss()[3])
								__U[19]()
								__VE["LPs"].Character.Humanoid.Health = 0
								repeat __U[23]() until __VE["LPs"].Character.Humanoid
								__VE["LPs"].Character:SetPrimaryPartCFrame(CheckQuestBoss()[3])
								__VE["LPs"].Character:SetPrimaryPartCFrame(CheckQuestBoss()[3])
								__VE["LPs"].Character:SetPrimaryPartCFrame(CheckQuestBoss()[3])
							else
								tpwithnewtpbyme2(CheckQuestBoss()[3], __U[31](Setting.TeleportSpeedAutoFarm))
							end
							repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
						end
					end
				end
			elseif Setting.AutoFarmAllBoss and not Setting.AutoFarmSelectBoss then
				if WorldCheck["First Sea"] then
					if Setting.CustomQuest then
						for _, v in __U[7](__VE["WS"].Enemies:GetChildren()) do
							if v and table.find(BossName["First Sea"], __U[32](v.Name)) then
								FindTargetBoss(__U[32](v.Name))
								__U[23](0.675)
                                tpwithnewtpbyme2(CheckQuestBoss()[3], __U[31](Setting.TeleportSpeedAutoFarm))
								if not __VE["PsG"].Main.Quest.Visible then
									tpwithnewtpbyme2(CheckQuestBoss()[6], __U[31](Setting.TeleportSpeedAutoFarm))
									__U[23](1)
									if (CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
										CommF:InvokeServer("StartQuest", CheckQuestBoss()[4], CheckQuestBoss()[5])
									end
									__U[23](.175)
								end
								if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmAllBoss and (CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 and not Setting.AutoFarmSelectBoss then
									Setting.TryNumOfthis1 = 0
									repeat
										repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
										MobHumP = v.HumanoidRootPart.Position
										tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
										__U[19]()
										Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
									until v.Humanoid.Health == 0 or not Setting.AutoFarmAllBoss or Setting.TryNumOfthis1 == 300 or(CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 or Setting.AutoFarmSelectBoss or not __VE["PsG"].Main.Quest.Visible
								end
							end
						end
						__U[23]()
						for _, v in __U[7](__VE["RlS"]:GetChildren()) do
							if v and table.find(BossName["First Sea"], __U[32](v.Name)) then
								FindTargetBoss(__U[32](v.Name))
								__U[23](0.675)
                                tpwithnewtpbyme2(CheckQuestBoss()[3], __U[31](Setting.TeleportSpeedAutoFarm))
							elseif v and not table.find(BossName["First Sea"], __U[32](v.Name)) then
								for _, v in __U[7](__VE["WS"].Enemies:GetChildren()) do
									if v and table.find(BossName["First Sea"], __U[32](v.Name)) then
										FindTargetBoss(__U[32](v.Name))
										__U[23](0.675)
										if not __VE["PsG"].Main.Quest.Visible then
											tpwithnewtpbyme2(CheckQuestBoss()[6], __U[31](Setting.TeleportSpeedAutoFarm))
											__U[23](1)
											if (CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
												CommF:InvokeServer("StartQuest", CheckQuestBoss()[4], CheckQuestBoss()[6])
											end
											__U[23](.175)
										end
										if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmAllBoss and (CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 and not Setting.AutoFarmSelectBoss then
											Setting.TryNumOfthis1 = 0
											repeat
												repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
												MobHumP = v.HumanoidRootPart.Position
												tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
												__U[19]()
												Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
											until v.Humanoid.Health == 0 or not Setting.AutoFarmAllBoss or Setting.TryNumOfthis1 == 300 or(CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 or Setting.AutoFarmSelectBoss or not __VE["PsG"].Main.Quest.Visible
										end
									elseif v and not table.find(BossName["First Sea"], __U[32](v.Name)) then
										--hop
									end
								end
							end
						end
					else
						for _, v in __U[7](__VE["WS"].Enemies:GetChildren()) do
							if v and table.find(BossName["First Sea"], __U[32](v.Name)) then
								FindTargetBoss(__U[32](v.Name))
								__U[23](0.675)
                                tpwithnewtpbyme2(CheckQuestBoss()[3], __U[31](Setting.TeleportSpeedAutoFarm))
								if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmAllBoss and (CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 and not Setting.AutoFarmSelectBoss then
									Setting.TryNumOfthis1 = 0
									repeat
										repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
										MobHumP = v.HumanoidRootPart.Position
										tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
										__U[19]()
										Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
									until v.Humanoid.Health == 0 or not Setting.AutoFarmAllBoss or Setting.TryNumOfthis1 == 300 or(CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 or Setting.AutoFarmSelectBoss or not __VE["PsG"].Main.Quest.Visible
								end
							end
						end
						__U[23]()
						for _, v in __U[7](__VE["RlS"]:GetChildren()) do
							if v and table.find(BossName["First Sea"], __U[32](v.Name)) then
								FindTargetBoss(__U[32](v.Name))
								__U[23](0.675)
                                tpwithnewtpbyme2(CheckQuestBoss()[3], __U[31](Setting.TeleportSpeedAutoFarm))
							elseif v and not table.find(BossName["First Sea"], __U[32](v.Name)) then
								for _, v in __U[7](__VE["WS"].Enemies:GetChildren()) do
									if v and table.find(BossName["First Sea"], __U[32](v.Name)) then
										FindTargetBoss(__U[32](v.Name))
										__U[23](0.675)
                                        tpwithnewtpbyme2(CheckQuestBoss()[3], __U[31](Setting.TeleportSpeedAutoFarm))
										if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmAllBoss and (CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 and not Setting.AutoFarmSelectBoss then
											Setting.TryNumOfthis1 = 0
											repeat
												repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
												MobHumP = v.HumanoidRootPart.Position
												tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
												__U[19]()
												Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
											until v.Humanoid.Health == 0 or not Setting.AutoFarmAllBoss or Setting.TryNumOfthis1 == 300 or(CheckQuestBoss()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 or Setting.AutoFarmSelectBoss or not __VE["PsG"].Main.Quest.Visible
										end
									elseif v and not table.find(BossName["First Sea"], __U[32](v.Name)) then
										SVHop()
									end
								end
							end
						end
					end
				end
			end
		end
	end)()
end)
__U[6](function()
	__U[58](function()
        repeat __U[23]() until finishload
		while __U[23]() do
			if Setting.AutoFarmAura then
				for _, v in __U[7](__VE["WS"].Enemies:GetChildren()) do
					if v then
						if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmAura and (v.HumanoidRootPart.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < __U[31](Setting.AutoFarmAuraDistance) then
							Setting.TryNumOfthis1 = 0
							repeat
								repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
								MobHumP = v.HumanoidRootPart.Position
								tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
								__U[19]()
								Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
							until v.Humanoid.Health == 0 or not Setting.AutoFarmAura or Setting.TryNumOfthis1 == 300
						end
					end
				end
			end
		end
	end)()
end)
__U[58](function()
    while __U[23]() do
        if Setting.AutoBone then
            __U[6](function()
                repeat
                    if InstanceTp and Setting.AutoBone then
                        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(__U[26](-9515.75, 174.8521728515625, 6079.40625))
                        __U[19]()
                        game.Players.LocalPlayer.Character.Humanoid.Health = 0
                        repeat __U[23]() until game.Players.LocalPlayer.Character.Humanoid
                        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(__U[26](-9515.75, 174.8521728515625, 6079.40625))
                        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(__U[26](-9515.75, 174.8521728515625, 6079.40625))
                        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(__U[26](-9515.75, 174.8521728515625, 6079.40625))
                    else
                        tpwithnewtpbyme2(__U[26](-9515.75, 174.8521728515625, 6079.40625), __U[31](Setting.TeleportSpeedAutoFarm))
                    end
                    __U[23](2.175)
                until (__U[57](-9515.75, 174.8521728515625, 6079.40625) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 3000 or not InstanceTp or not Setting.AutoBone
                if (__VE["WS"].Enemies:FindFirstChild("Reborn Skeleton") or __VE["WS"].Enemies:FindFirstChild("Living Zombie") or __VE["WS"].Enemies:FindFirstChild("Demonic Soul") or __VE["WS"].Enemies:FindFirstChild("Posessed Mummy")) and Setting.AutoBone then
                    for i, v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0) and Setting.AutoBone then
                            if (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") and Setting.AutoBone then
                                NameMon = __U[32](v.Name)
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoBone then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat __U[23]() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                        __U[19]()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoBone or Setting.TryNumOfthis1 == 300
                                end
                            end
                        end
                    end
                else
                    for i, v in __U[7](__VE["RlS"]:GetChildren()) do 
                        if v.Name == "Reborn Skeleton" then
                            tpwithnewtpbyme2(v.HumanoidRootPart.CFrame * __U[26](2, 20, 2), __U[31](Setting.TeleportSpeedAutoFarm))
                        elseif v.Name == "Living Zombie" then
                            tpwithnewtpbyme2(v.HumanoidRootPart.CFrame * __U[26](2, 20, 2), __U[31](Setting.TeleportSpeedAutoFarm))
                        elseif v.Name == "Demonic Soul" then
                            tpwithnewtpbyme2(v.HumanoidRootPart.CFrame * __U[26](2, 20, 2), __U[31](Setting.TeleportSpeedAutoFarm))
                        elseif v.Name == "Posessed Mummy" then
                            tpwithnewtpbyme2(v.HumanoidRootPart.CFrame * __U[26](2, 20, 2), __U[31](Setting.TeleportSpeedAutoFarm))
                        end
                    end
                end
            end)
        end
    end
end)()
__U[6](function()
    _U[58](function()
        while _U[23]() do
            if Setting.AutoFarmCakePrince then
                __U[6](function()
                    if __VE["WS"].Enemies:FindFirstChild("Cake Prince") then
                        for i,v in pairs(__VE["WS"].Enemies:GetChildren()) do
                            if v and v.Name == "Cake Prince" and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 then
                                if v:FindFirstChild("HumanoidRootPart") then
                                    repeat
                                        repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                        __U[19]()
                                    until v.Humanoid.Health == 0 or not Setting.AutoSpikeyTrident or not Setting.StackableSetting or __VE["WS"].Map.CakeLoaf.BigMirror.Other.Transparency == 0 or Setting.LenMoB == 0
                                end
                            end
                        end
                    else
                        if __VE["RlS"]:FindFirstChild("Cake Prince") then
                            task.wait(0.5)
                            tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                        else
                            if __VE["WS"].Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                                if __VE["WS"].Enemies:FindFirstChild("Cookie Crafter") or __VE["WS"].Enemies:FindFirstChild("Cake Guard") or __VE["WS"].Enemies:FindFirstChild("Baking Staff") or __VE["WS"].Enemies:FindFirstChild("Head Baker") then
                                    for _, v in pairs(__VE["WS"].Enemies:GetChildren()) do
                                        if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health ~= 0 then
                                                Setting.TryNumOfthis1 = 0
                                                repeat
                                                    repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                                    MobHumP = v.HumanoidRootPart.Position
                                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                                    __U[19]()
                                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                                until v.Humanoid.Health == 0 or not Setting.AutoFarmCakePrince or Setting.TryNumOfthis1 == 30000 or __VE["WS"].Map.CakeLoaf.BigMirror.Other.Transparency == 0 or __VE["RlS"]:FindFirstChild("Cake Prince") or __VE["WS"].Enemies:FindFirstChild("Cake Prince") or LenMoB == 0
                                            end
                                        end
                                    end
                                    if __VE["RlS"]:FindFirstChild("Cookie Crafter") then
                                        tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm)) 
                                    else
                                        if __VE["RlS"]:FindFirstChild("Cake Guard") then
                                            tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm)) 
                                        else
                                            if __VE["RlS"]:FindFirstChild("Baking Staff") then
                                                tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                                            else
                                                if __VE["RlS"]:FindFirstChild("Head Baker") then
                                                    tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Head Baker").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)()
end)
__U[58](function()
    while __U[23]() do
        __U[6](function()
            if Setting.AutoFarmObservation or Setting.AutoFarmObservationHop then
                if __VE["PsG"].ScreenGui:FindFirstChild("ImageLabel") then
                    if __VE["LPs"].VisionRadius.Value < 3000 then
                        if WorldCheck["First Sea"] and Setting.AutoFarmObservation then
                            if __VE["WS"].Enemies:FindFirstChild("Military Spy") then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = __VE["WS"].Enemies:FindFirstChild("Military Spy").HumanoidRootPart.CFrame * __U[26](3,0,0)
                            else
                                tpwithnewtpbyme(-5984.0532226563, 82.14656829834, 8753.326171875, __U[31](Setting.TeleportSpeedAutoFarm))
                            end
                        elseif WorldCheck["Second Sea"] and Setting.AutoFarmObservation then
                            if __VE["WS"].Enemies:FindFirstChild("Lava Pirate") then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = __VE["WS"].Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * __U[26](3,0,0)
                            else
                                tpwithnewtpbyme(-5478.39209, 15.9775667, -5246.9126, __U[31](Setting.TeleportSpeedAutoFarm))
                            end
                        elseif WorldCheck["Third Sea"] and Setting.AutoFarmObservation then
                            if __VE["WS"].Enemies:FindFirstChild("Giant Islander") then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = __VE["WS"].Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * __U[26](3,0,0)
                            else
                                tpwithnewtpbyme(4530.3540039063, 656.75695800781, -131.60952758789, __U[31](Setting.TeleportSpeedAutoFarm))
                            end
                        end
                    end
                else
                    if Setting.AutoFarmObservationHop then
                        __VE["VIM"]:SendKeyEvent(true, Enum.KeyCode.E, false, game)
                        __U[23](1)
                        __VE["VIM"]:SendKeyEvent(false, Enum.KeyCode.E, false, game)
                        if not __VE["PsG"].ScreenGui:FindFirstChild("ImageLabel") then
                            SVHop()
                        end
                    end
                    if __VE["LPs"].VisionRadius.Value < 3000 then
                        if WorldCheck["First Sea"] then
                            repeat
                                if not __VE["PsG"].ScreenGui:FindFirstChild("ImageLabel") then
                                    tpwithnewtpbyme(-5984.0532226563, 82.14656829834, 8753.326171875, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __VE["VIM"]:SendKeyEvent(true, Enum.KeyCode.E, false, game)
                                    __U[23](1)
                                    __VE["VIM"]:SendKeyEvent(false, Enum.KeyCode.E, false, game)
                                end
                                __U[23]()
                            until __VE["PsG"].ScreenGui:FindFirstChild("ImageLabel") or not Setting.AutoFarmObservation
                        elseif WorldCheck["Second Sea"] then
                            repeat
                                if not __VE["PsG"].ScreenGui:FindFirstChild("ImageLabel") then
                                    tpwithnewtpbyme(-5478.39209, 15.9775667, -5246.9126, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __VE["VIM"]:SendKeyEvent(true, Enum.KeyCode.E, false, game)
                                    __U[23](1)
                                    __VE["VIM"]:SendKeyEvent(false, Enum.KeyCode.E, false, game)
                                end
                                __U[23]()
                            until __VE["PsG"].ScreenGui:FindFirstChild("ImageLabel") or not Setting.AutoFarmObservation
                        elseif WorldCheck["Third Sea"] then
                            repeat
                                if not __VE["PsG"].ScreenGui:FindFirstChild("ImageLabel") then
                                    tpwithnewtpbyme(4530.3540039063, 656.75695800781, -131.60952758789, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __VE["VIM"]:SendKeyEvent(true, Enum.KeyCode.E, false, game)
                                    __U[23](1)
                                    __VE["VIM"]:SendKeyEvent(false, Enum.KeyCode.E, false, game)
                                end
                                __U[23]()
                            until __VE["PsG"].ScreenGui:FindFirstChild("ImageLabel") or not Setting.AutoFarmObservation
                        end
                    end
                end
            end
        end)
    end
end)()


--fruit





__U[58](function()
    repeat __U[23]() until finishload
    while __U[23]() do
        if Setting.TpToFruit then
            __U[6](function()
                for _, v in __U[7](__VE["WS"]:GetChildren()) do
                    if v:IsA("Tool") and v:FindFirstChild("Handle") then
                        pcall(function()
                            tpwithnewtpbyfruit(v.Handle.Position.X, v.Handle.Position.Y, v.Handle.Position.Z, 5)
                        end)
                        task.wait()
                        break
                    end
                end
                __U[23](1.175)
            end)
        end
    end
end)()



--Race

__U[58](function()
    repeat __U[23]() until finishload
    while __U[23]() do
        if Setting.AutoRaceV2 then
            if not __VE["LPs"].Data.Race:FindFirstChild("Evolved") then
                if CommF:InvokeServer("Alchemist","1") == 0 then
                    tpwithnewtpbyme(-2779.83521, 72.9661407, -3574.02002, 5)
                    __U[23]()
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-2779.83521, 72.9661407, -3574.02002)
                    __U[19]()
                    if (__U[57](-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                        __U[23](1.3)
                        CommF:InvokeServer("Alchemist","2")
                    end
                elseif CommF:InvokeServer("Alchemist","1") == 1 then
                    __U[6](function()
                        if not Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                            tpwithnewtpbyme2(__VE["WS"].Flower1.CFrame, 5)
                            __U[23]()
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = __VE["WS"].Flower1.CFrame
                            __U[23]()
                        elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                            tpwithnewtpbyme2(__VE["WS"].Flower2.CFrame, 5)
                            __U[23]()
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = __VE["WS"].Flower2.CFrame
                            __U[23]()
                        elseif not Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                            if __VE["WS"].Enemies:FindFirstChild("Zombie") then
                                for _, v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                    if v and v.Name == "Zombie" and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoRaceV2 then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, 10)
                                            __U[23]()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoRaceV2 or Setting.TryNumOfthis1 == 2000 or Backpack:FindFirstChild("Flower 3") or __VE["LPs"].Character:FindFirstChild("Flower 3")
                                    end
                                end
                            else
                                tpwithnewtpbyme(-5685.9233398438, 48.480125427246, -853.23724365234, 5)
                            end
                        end
                    end)
                elseif CommF:InvokeServer("Alchemist","1") == 2 then
                    if __VE["LPs"].Data.Beli.Value >= 500000 then
                        CommF:InvokeServer("Alchemist","3")
                    else
                        repeat Setting.AutoFarmLevel = true until not Setting.AutoRaceV2
                    end
                end
            end
        end
    end
end)()
__U[58](function()
    repeat __U[23]() until finishload
    while __U[23]() do
        if Setting.AutoRaceV4 then
            if __VE["LPs"].Data.Race.Value == "Human" and Setting.AutoRaceV4 then
                for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                    if v then
                        if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Options.AutoRaceV4.Value then
                            Setting.TryNumOfthis1 = 0
                            repeat
                                repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                Setting.PauseAutoEqu = false
                                MobHumP = v.HumanoidRootPart.Position
                                tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, 10)
                                __U[19]()
                                Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                            until v.Humanoid.Health == 0 or not Options.AutoRaceV4.Value or Setting.TryNumOfthis1 == 2000
                        end
                    end
                end
            elseif __VE["LPs"].Data.Race.Value == "Skypiea" and Setting.AutoRaceV4 then
                for i,v in __U[7](__VE["WS"].Map.SkyTrial.Model:GetDescendants()) do
                    if v.Name == "snowisland_Cylinder.081" then
                        tpwithnewtpbyme2(v.CFrame * __U[26](0,0,0), 5)
                        __VE["LPs"].Character.CFrame = v.CFrame * __U[26](0,0,0)
                    end
                end
            elseif __VE["LPs"].Data.Race.Value == "Fishman" then
                Setting.PauseAutoEqu = true
                __VE["LPs"].Character.Humanoid.Sit = false
                EquipWeapon(__VE["LPs"].Data.DevilFruit.Value)
                __U[23]()
                for _, v in __U[7](__VE["WS"].SeaBeasts:GetChildren()) do
                    if v and v:FindFirstChild("Health") and v.Health ~= 0 then
                        if v:FindFirstChild("HumanoidRootPart") then
                            repeat
                                Setting.UseSkill = true
                                Setting.PauseAutoEqu = true
                                EquipWeapon(__VE["LPs"].Data.DevilFruit.Value)
                                MobHumP = v.HumanoidRootPart.Position
                                Setting.PosMobMasteryFruit = MobHumP
                                tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                UseSkill()
                                __U[23]()
                                EquipMelee()
                                __U[23](0.15)
                                UseSkillMelee()
                                __U[23]()
                                EquipSword()
                                __U[23](0.15)
                                UseSkillMelee()
                            until not v:FindFirstChild("Health") or (v:FindFirstChild("Health") and v.Health == 0) or not Setting.AutoRaceV4 or table.find(Setting.IgnoreSeaEventList, "SeaBeast")
                        end
                    end
                end
                __U[23]()
                Setting.PauseAutoEqu = false
                Setting.UseSkill = false
            elseif __VE["LPs"].Data.Race.Value == "Cyborg" and Setting.AutoRaceV4 then
                tpwithnewtpbyme(__U[26](28654, 14898.7832), 5)
            elseif __VE["LPs"].Data.Race.Value == "Ghoul" and Setting.AutoRaceV4 then
                for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                    if v then
                        if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Options.AutoRaceV4.Value then
                            Setting.TryNumOfthis1 = 0
                            repeat
                                repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                Setting.PauseAutoEqu = false
                                MobHumP = v.HumanoidRootPart.Position
                                tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, 10)
                                __U[19]()
                                Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                            until v.Humanoid.Health == 0 or not Options.AutoRaceV4.Value or Setting.TryNumOfthis1 == 2000
                        end
                    end
                end
            elseif __VE["LPs"].Data.Race.Value == "Mink" and Setting.AutoRaceV4 then
                for i,v in __U[7](__VE["WS"]:GetDescendants()) do
                    if v.Name == "StartPoint" then
                        tpwithnewtpbyme2(v.CFrame * __U[26](0,3,0), 5) 
                        __U[23]()
                        __VE["LPs"].Character.CFrame = v.CFrame * __U[26](0,3,0)
                   end
                end
            end
        end
    end
end)()

--
__U[6](function()
    __U[58](function()
        repeat __U[23]() until finishload
        while __U[23]() do
			if Setting.AutoFarmFruitMastery then
                __U[6](function()
                    Setting.PauseAutoEqu = false
					CheckAndClearWeapon()
					__U[23]()
					CheckLevel()
					__U[23](0.657)
					if InstanceTp then
						repeat
							__U[19](0.175)
							if InstanceTp and (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 then
								__VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[3])
								__U[19]()
								__VE["LPs"].Character.Humanoid.Health = 0
								repeat __U[23]() until __VE["LPs"].Character.Humanoid
								__VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[3])
								__VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[3])
								__VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[3])
							else
								break
							end
							__U[23](2.175)
						until (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 and InstanceTp
					end
					__U[23]()
					repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
					__U[23]()
					if Setting.AutoFarmFruitMastery then
						tpwithnewtpbyme2(CheckLevel()[3], __U[31](Setting.TeleportSpeedAutoFarm))
					end
					repeat
						for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
							if v and v.Name == __U[32](CheckLevel()[2]) and (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
								if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmFruitMastery and (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
									CheckAndClearWeapon()
									__U[23]()
									Setting.TryNumOfthis1 = 0
									repeat
										repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
										HealthMs = v.Humanoid.MaxHealth * __U[31](Setting.KillAt)/100
										if v.Humanoid.Health >= HealthMs then
                                            Setting.UseSkill = false
                                            Setting.PauseAutoEqu = false
											MobHumP = v.HumanoidRootPart.Position
											tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
											__U[19]()
											Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
										else
                                            Setting.UseSkill = true
                                            Setting.PauseAutoEqu = true
                                            __U[23]()
											EquipWeapon(__VE["LPs"].Data.DevilFruit.Value)
                                            MobHumP = v.HumanoidRootPart.Position
											tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[23]()
											Setting.PosMobMasteryFruit = MobHumP
                                            UseSkill()
										end
									until v.Humanoid.Health == 0 or not Setting.AutoFarmFruitMastery or (CFrameMon.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000
								end
							end
						end
                        Setting.UseSkill = false
                        Setting.PauseAutoEqu = false
						tpwithnewtpbyme2(CheckLevel()[3], __U[31](Setting.TeleportSpeedAutoFarm))
						__U[23]()
					until not Setting.AutoFarmFruitMastery or (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000
                    Setting.UseSkill = false
                    Setting.PauseAutoEqu = false
                end)
			end
		end
    end)()
end)
__U[6](function()
    __U[58](function()
        repeat __U[23]() until finishload
        while __U[23]() do
			if Setting.AutoFarmGunMastery then
                __U[6](function()
                    Setting.PauseAutoEqu = false
					CheckAndClearWeapon()
					__U[23]()
					CheckLevel()
					__U[23](0.657)
					if InstanceTp then
						repeat
							__U[19](0.175)
							if InstanceTp and (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000 then
								__VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[3])
								__U[19]()
								__VE["LPs"].Character.Humanoid.Health = 0
								repeat __U[23]() until __VE["LPs"].Character.Humanoid
								__VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[3])
								__VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[3])
								__VE["LPs"].Character:SetPrimaryPartCFrame(CheckLevel()[3])
							else
								break
							end
							__U[23](2.175)
						until (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 and InstanceTp
					end
					__U[23]()
					repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
					__U[23]()
					if Setting.AutoFarmGunMastery then
						tpwithnewtpbyme2(CheckLevel()[3], __U[31](Setting.TeleportSpeedAutoFarm))
					end
					repeat
						for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
							if v and v.Name == __U[32](CheckLevel()[2]) and (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
								if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmGunMastery and (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude < 3000 then
									CheckAndClearWeapon()
									__U[23]()
									Setting.TryNumOfthis1 = 0
									repeat
										repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
										HealthMs = v.Humanoid.MaxHealth * __U[31](Setting.KillAt)/100
										if v.Humanoid.Health >= HealthMs then
                                            Setting.PauseAutoEqu = false
                                            __U[23]()
											MobHumP = v.HumanoidRootPart.Position
											tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
											__U[19]()
											Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
										else
                                            Setting.PauseAutoEqu = true
                                            __U[23](0.1)
											EquipGun()
                                            MobHumP = v.HumanoidRootPart.Position
											tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[23]()
                                            game:GetService("Players").LocalPlayer.Character[__U[32](__VE["LPs"].Character:FindFirstChildWhichIsA("Tool"))].RemoteFunctionShoot:InvokeServer(MobHumP)
                                            __U[23]()
										end
									until v.Humanoid.Health == 0 or not Setting.AutoFarmGunMastery or (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000
								end
							end
						end
						tpwithnewtpbyme2(CheckLevel()[3], __U[31](Setting.TeleportSpeedAutoFarm))
						__U[23]()
                        Setting.PauseAutoEqu = false
					until not Setting.AutoFarmGunMastery or (CheckLevel()[3].Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3000
                    Setting.PauseAutoEqu = false
                end)
			end
		end
    end)()
end)
pcall(function()
    coroutine.wrap(function()
        pcall(function()
            while task.wait() do
                if Setting.AutoFarmSwordMastery then
                    __U[6](function()
                        if (__VE["WS"].Enemies:FindFirstChild("Cookie Crafter") or __VE["WS"].Enemies:FindFirstChild("Cake Guard") or __VE["WS"].Enemies:FindFirstChild("Baking Staff") or __VE["WS"].Enemies:FindFirstChild("Head Baker")) and Setting.AutoFarmSwordMastery then
                            for _, v in pairs(__VE["WS"].Enemies:GetChildren()) do
                                if (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and Setting.AutoFarmSwordMastery then
                                    if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health ~= 0) and Setting.AutoFarmSwordMastery then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[19]()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoFarmSwordMastery or Setting.TryNumOfthis1 == 30000
                                    end
                                end
                            end
                        else
                            if __VE["RlS"]:FindFirstChild("Cookie Crafter") then
                                tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm)) 
                            else
                                if __VE["RlS"]:FindFirstChild("Cake Guard") then
                                    tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm)) 
                                else
                                    if __VE["RlS"]:FindFirstChild("Baking Staff") then
                                        tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                                    else
                                        if __VE["RlS"]:FindFirstChild("Head Baker") then
                                            tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Head Baker").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                                        end
                                    end
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end)()
end)
--AutoFarmAllSwordMastery in here
__U[6](function()
    __U[58](function()
        repeat __U[23]() until finishload
        while __U[23]() do
            if (Setting.AutoLegendarySword or Setting.AutoLegendarySwordHop) and WorldCheck["Second Sea"] then
                __U[6](function()
                    argsLEGS1 = {
                        [1] = "LegendarySwordDealer",
                        [2] = "1"
                    }
                    __VE["RlS"].Remotes.CommF_:InvokeServer(unpack(argsLEGS1))
                    argsLEGS2 = {
                        [1] = "LegendarySwordDealer",
                        [2] = "2"
                    }
                    __VE["RlS"].Remotes.CommF_:InvokeServer(unpack(argsLEGS2))
                    argsLEGS3 = {
                        [1] = "LegendarySwordDealer",
                        [2] = "3"
                    }
                    __VE["RlS"].Remotes.CommF_:InvokeServer(unpack(argsLEGS3))
                    __U[23](1)
                    if Setting.AutoLegendarySwordHop and WorldCheck["Second Sea"] then
                        SVHop()
                    end
                end)
            end
        end
    end)()
end)
__U[6](function()
    __U[58](function()
        repeat __U[23]() until finishload
        while __U[23]() do
            if Setting.AutoRengoku then
                if Backpack:FindFirstChild("Hidden Key") or __VE["LPs"].Character:FindFirstChild("Hidden Key") then
                    EquipWeapon("Hidden Key")
                    tpwithnewtpbyme2(__U[26](6571.1201171875, 299.23028564453, -6967.841796875), __U[31](Setting.TeleportSpeedAutoFarm))
                    __U[19]()
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](6571.1201171875, 305, -6967.841796875)
                    __U[19]()
                elseif __VE["WS"].Enemies:FindFirstChild("Snow Lurker") or __VE["WS"].Enemies:FindFirstChild("Arctic Warrior") then
                    for i, v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoRengoku then
                            Setting.TryNumOfthis1 = 0
                            repeat
                                EquipWeapon(__U[32](Setting.SelectWeapon))
                                repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                MobHumP = v.HumanoidRootPart.Position
                                tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                __U[19]()
                                Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                            until v.Humanoid.Health == 0 or not Setting.AutoRengoku or Setting.TryNumOfthis1 == 300 or __VE["LPs"].Backpack:FindFirstChild("Hidden Key") or __VE["LPs"].Character:FindFirstChild("Hidden Key")
                        end
                    end
                else
                    tpwithnewtpbyme2(__U[26](5439.716796875, 84.420944213867, -6715.1635742188), __U[31](Setting.TeleportSpeedAutoFarm))
                end
            end
        end
    end)()
end)
__U[6](function()
    __U[58](function()
        repeat __U[23]() until finishload
        warn("Finish Load For Weapon")
        while __U[23]() do
            if not IsAutoFarmBusy and IsWeaponBusy then
                if (Setting.AutoTwinHooks or Setting.AutoTwinHooksHop) and not IsAutoFarmBusy then
                    __U[6](function()
                        if __VE["WS"].Enemies:FindFirstChild("Captain Elephant")then
                            for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if v and v.Name == __U[32]("Captain Elephant") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoTwinHooks then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[19]()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoTwinHooks or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if __VE["RlS"]:FindFirstChild("Captain Elephant") then
                                tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoTwinHooksHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                __U[23]()
                if (Setting.AutoBuddySword or Setting.AutoBuddySwordHop) and not IsAutoFarmBusy then
                    __U[6](function()
                        if __VE["WS"].Enemies:FindFirstChild("Cake Queen") then
                            for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if v and v.Name == __U[32]("Cake Queen") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoBuddySword then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[19]()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoBuddySword or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if __VE["RlS"]:FindFirstChild("Cake Queen") then
                                tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoBuddySwordHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                __U[23]()
                if (Setting.AutoSharkSaw or Setting.AutoSharkSawHop) and not IsAutoFarmBusy then
                    __U[6](function()
                        if __VE["WS"].Enemies:FindFirstChild("The Saw") then
                            for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if v and v.Name == __U[32]("The Saw") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoSharkSaw then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[19]()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoSharkSaw or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if __VE["RlS"]:FindFirstChild("The Saw") then
                                tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("The Saw").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoSharkSawHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                __U[23]()
                if (Setting.AutoWardensSword or Setting.AutoWardensSwordHop) and not IsAutoFarmBusy then
                    __U[6](function()
                        if __VE["WS"].Enemies:FindFirstChild("Chief Warden") then
                            for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if v and v.Name == __U[32]("Chief Warden") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoWardensSword then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[19]()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoWardensSword or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if __VE["RlS"]:FindFirstChild("Chief Warden") then
                                tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Chief Warden").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoWardensSwordHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                __U[23]()
                if (Setting.AutoGravityCane or Setting.AutoGravityCaneHop) and not IsAutoFarmBusy then
                    __U[6](function()
                        if __VE["WS"].Enemies:FindFirstChild("Fajita") then
                            for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if v and v.Name == __U[32]("Fajita") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoGravityCane then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[19]()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoGravityCane or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if __VE["RlS"]:FindFirstChild("Fajita") then
                                tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Fajita").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoGravityCaneHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                __U[23]()
                if (Setting.AutoLongsword or Setting.AutoLongswordHop) and not IsAutoFarmBusy then
                    __U[6](function()
                        if __VE["WS"].Enemies:FindFirstChild("Diamond") then
                            for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if v and v.Name == __U[32]("Diamond") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoLongsword then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[19]()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoLongsword or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if __VE["RlS"]:FindFirstChild("Diamond") then
                                tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Diamond").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoLongswordHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                __U[23]()
                if (Setting.AutoJitte or Setting.AutoJitteHop) and not IsAutoFarmBusy then
                    __U[6](function()
                        if __VE["WS"].Enemies:FindFirstChild("Smoke Admiral") then
                            for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if v and v.Name == __U[32]("Smoke Admiral") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoJitte then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[19]()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoJitte or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if __VE["RlS"]:FindFirstChild("Smoke Admiral") then
                                tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Smoke Admiral").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoJitteHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                __U[23]()
                if (Setting.AutoDragonTrident or Setting.AutoDragonTridentHop) and not IsAutoFarmBusy then
                    __U[6](function()
                        if __VE["WS"].Enemies:FindFirstChild("Tide Keeper") then
                            for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if v and v.Name == __U[32]("Tide Keeper") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoDragonTrident then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[19]()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoDragonTrident or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if __VE["RlS"]:FindFirstChild("Tide Keeper") then
                                tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoDragonTridentHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                __U[23]()
                if (Setting.AutoPole or Setting.AutoPoleHop) and not IsAutoFarmBusy then
                    __U[6](function()
                        if __VE["WS"].Enemies:FindFirstChild("Thunder God") then
                            for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if v and v.Name == __U[32]("Thunder God") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoPole then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[19]()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoPole or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if __VE["RlS"]:FindFirstChild("Thunder God") then
                                tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Thunder God").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoPoleHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                __U[23]()
                if (Setting.AutoHallowScythe or Setting.AutoHallowScytheHop) and not IsAutoFarmBusy then
                    __U[6](function()
                        if __VE["WS"].Enemies:FindFirstChild("Soul Reaper") then
                            for i,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if v and v.Name == __U[32]("Soul Reaper") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoHallowScythe then
                                        EquipWeapon(__U[32](Setting.SelectWeapon))
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[19]()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoHallowScythe or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        elseif Backpack:FindFirstChild("Hallow Essence") or __VE["LPs"].Character:FindFirstChild("Hallow Essence") then
                            repeat 
                                tpwithnewtpbyme2(__U[26](-8932.322265625, 146.83154296875, 6062.55078125), __U[31](Setting.TeleportSpeedAutoFarm)) 
                                __U[19]()
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-8932.322265625, 146.83154296875, 6062.55078125)
                            until (__U[26](-8932.322265625, 146.83154296875, 6062.55078125).Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude <= 8                        
                            EquipWeapon("Hallow Essence")
                        else
                            if __VE["RlS"]:FindFirstChild("Soul Reaper") then
                                tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoHallowScytheHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                __U[23]()
                if (Setting.AutoSaber or Setting.AutoSaberHop) and not IsAutoFarmBusy then
                    __U[6](function()
                        if __VE["WS"].Enemies:FindFirstChild("Saber Expert") then
                            for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if v and v.Name == __U[32]("Saber Expert") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoSaber then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[19]()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoSaber or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if __VE["RlS"]:FindFirstChild("Saber Expert") then
                                tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Saber Expert").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoSaberHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                __U[23]()
                if (Setting.AutoCanvander or Setting.AutoCanvanderHop) and not IsAutoFarmBusy then
                    __U[6](function()
                        if __VE["WS"].Enemies:FindFirstChild("Beautiful Pirate") then
                            for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                                if v and v.Name == __U[32]("Beautiful Pirate") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoCanvander then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                            __U[19]()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoCanvander or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if __VE["RlS"]:FindFirstChild("Beautiful Pirate") then
                                tpwithnewtpbyme2(__VE["RlS"]:FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame * __U[26](0,30,0), __U[31](Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoCanvanderHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
            end
        end
    end)()
end)

--Mirage-race
pcall(function()
    coroutine.wrap(function()
        while task.wait() do
            if Setting.AutoFindMirageIsland then
                currentShipPath = nil
                sexofcount = 0
                if not __VE["LPs"].Character.Humanoid.Sit and Setting.AutoFindMirageIsland then
                    for _, v in __U[7](__VE["WS"].Boats:GetChildren()) do
                        if v and v:FindFirstChild("Owner") and __U[32](v.Owner.Value) == __U[32](game.Players.LocalPlayer.Name) and Setting.AutoFindMirageIsland then
                            table.insert(sexofcount, "gay")
                            currentShipPath = v
                            if #sexofcount == 1 then
                                tpwithnewtpbyme2(v.VehicleSeat.CFrame, __U[31](Setting.TeleportSpeedAutoFarm))
                                repeat
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.VehicleSeat.CFrame
                                    __U[23]()
                                until not v or __VE["LPs"].Character.Humanoid.Sit or not Setting.AutoFindMirageIsland
                            else
                                CommF:InvokeServer("requestEntrance",__U[57](-5072.08984375, 314.5412902832, -3151.1098632812))
                                __U[23](0.5)
                                tpwithnewtpbyme(-4512.71094, 16.5460663, -2655.82861, __U[31](Setting.TeleportSpeedAutoFarm))
                                __U[23]()
                                __VE["RlS"].Remotes.CommF_:InvokeServer("BuyBoat", __U[32](Setting.SelectShipISeaEvent))
                                __U[23](0.675)
                                for _, v in __U[7](__VE["WS"].Boats:GetChildren()) do
                                    if v and v:FindFirstChild("Owner") and __U[32](v.Owner.Value) == __U[32](game.Players.LocalPlayer.Name) and Setting.AutoFindMirageIsland then
                                        tpwithnewtpbyme2(v.VehicleSeat.CFrame, __U[31](Setting.TeleportSpeedAutoFarm))
                                        __U[23]()
                                        repeat
                                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.VehicleSeat.CFrame
                                            __U[23]()
                                        until not v or __VE["LPs"].Character.Humanoid.Sit or not Setting.AutoFindMirageIsland
                                    end
                                end
                            end
                            break
                        end
                    end
                end
                __U[23]()
                tpwithseat(__U[26](829.504761, 24.4572105, 15972.5693), __U[31](Setting.TeleportSpeedAutoFarm))
                repeat __U[23]() until __VE["WO"]:FindFirstChild("Mirage Island") or not __VE["LPs"].Character.Humanoid or (__VE["LPs"].Character.Humanoid and __VE["LPs"].Character.Humanoid.Health ~= 0) or not currentShipPath or not Setting.AutoFindMirageIsland
                if __VE["WO"]:FindFirstChild("Mirage Island") and Setting.AutoFindMirageIsland then
                    __VE["LPs"].Character.Humanoid.Sit = false
                    task.wait(0.5)
                    tpwithnewtpbyme2(__VE["WO"]:FindFirstChild("Mirage Island").CFrame*__U[26](0, 40, 0), __U[31](Setting.TeleportSpeedAutoFarm))
                end
                repeat __U[23]() until not __VE["WO"]:FindFirstChild("Mirage Island") or not Setting.AutoFindMirageIsland
            end
        end
    end)()
end)

--Sea event
__U[6](function()
    __U[58](function()
        while __U[23]() do
            if Setting.AutoSeaEvent then
                if __VE["WS"].Enemies:FindFirstChild("Shark") and not table.find(Setting.IgnoreSeaEventList, "Shark") then
                    Setting.DMGAura4 = true
                    Setting.WaitBRUH = true
                    Setting.PauseAutoEqu = false
                end
                __U[23]()
                if __VE["WS"].Enemies:FindFirstChild("Terrorshark") and not table.find(Setting.IgnoreSeaEventList, "Terrorshark") then
                    Setting.DMGAura4 = true
                    Setting.WaitBRUH = true
                    Setting.PauseAutoEqu = false
                    __U[23](0.165)
                    for _, v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                        if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 then
                            if v:FindFirstChild("HumanoidRootPart") then
                                repeat
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                    __U[23]()
                                until not v:FindFirstChild("Health") or (v:FindFirstChild("Health") and v.Health == 0) or not Setting.AutoSeaEvent or table.find(Setting.IgnoreSeaEventList, "SeaBeast")
                            end
                        end
                    end
                    __U[23]()
                    for _, v in __U[7](__VE["WS"].Boats:GetChildren()) do
                        if v and v:FindFirstChild("Owner") and __U[32](v.Owner.Value) == __U[32](__VE["LPs"].Name) then
                            tpwithnewtpbyme2(v.VehicleSeat.CFrame, __U[31](Setting.TeleportSpeedAutoFarm))
                            __U[23]()
                            repeat
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.VehicleSeat.CFrame
                                __U[23]()
                            until not v or __VE["LPs"].Character.Humanoid.Sit
                        end
                    end
                    __U[23]()
                end
                __U[23]()
                if __VE["WS"].Enemies:FindFirstChild("Piranha") and not table.find(Setting.IgnoreSeaEventList, "Piranha") then
                    Setting.DMGAura4 = true
                    Setting.WaitBRUH = true
                    Setting.PauseAutoEqu = false
                end
                __U[23]()
                if __VE["WS"].Enemies:FindFirstChild("Fish Crew Member") and not table.find(Setting.IgnoreSeaEventList, "Fish Crew Member") then
                    Setting.DMGAura4 = true
                    Setting.WaitBRUH = true
                    Setting.PauseAutoEqu = false
                end
                __U[23]()
                if #__VE["WS"].SeaBeasts:GetChildren() > 0 and not table.find(Setting.IgnoreSeaEventList, "SeaBeast") then
                    Setting.DMGAura4 = true
                    Setting.WaitBRUH = true
                    Setting.PauseAutoEqu = true
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                    EquipWeapon(__VE["LPs"].Data.DevilFruit.Value)
                    __U[23]()
                    for _, v in __U[7](__VE["WS"].SeaBeasts:GetChildren()) do
                        if v and v:FindFirstChild("Health") and v.Health ~= 0 then
                            if v:FindFirstChild("HumanoidRootPart") then
                                repeat
                                    Setting.UseSkill = true
                                    Setting.PauseAutoEqu = true
                                    EquipWeapon(__VE["LPs"].Data.DevilFruit.Value)
                                    MobHumP = v.HumanoidRootPart.Position
                                    Setting.PosMobMasteryFruit = MobHumP
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, __U[31](Setting.TeleportSpeedAutoFarm))
                                    UseSkill()
                                    __U[23]()
                                    EquipMelee()
                                    __U[23](0.15)
                                    UseSkillMelee()
                                    __U[23]()
                                    EquipSword()
                                    __U[23](0.15)
                                    UseSkillMelee()
                                until not v:FindFirstChild("Health") or (v:FindFirstChild("Health") and v.Health == 0) or not Setting.AutoSeaEvent or table.find(Setting.IgnoreSeaEventList, "SeaBeast")
                            end
                        end
                    end
                    __U[23]()
                    for _, v in __U[7](__VE["WS"].Boats:GetChildren()) do
                        if v and v:FindFirstChild("Owner") and __U[32](v.Owner.Value) == __U[32](__VE["LPs"].Name) then
                            tpwithnewtpbyme2(v.VehicleSeat.CFrame, __U[31](Setting.TeleportSpeedAutoFarm))
                            __U[23]()
                            repeat
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.VehicleSeat.CFrame
                                __U[23]()
                            until not v or __VE["LPs"].Character.Humanoid.Sit
                        end
                    end
                    __U[23]()
                    Setting.UseSkill = false
                    Setting.PauseAutoEqu = false
                end
                __U[23]()
                if not __VE["WS"].Enemies:FindFirstChild("Shark") and not __VE["WS"].Enemies:FindFirstChild("Terrorshark") and not __VE["WS"].Enemies:FindFirstChild("Piranha") and not __VE["WS"].Enemies:FindFirstChild("Fish Crew Member") and #__VE["WS"].SeaBeasts:GetChildren() == 0 then
                    Setting.DMGAura4 = false
                    Setting.WaitBRUH = false
                    Setting.PauseAutoEqu = false
                end
            end
        end
    end)()
end)
__U[6](function()
    __U[58](function()
        while __U[23]() do
            if Setting.AutoSeaEvent then
                if (not __VE["LPs"].Character.Humanoid.Sit and not Setting.WaitBRUH) then
                    AutoGetShip()
                    __U[23](0.256)
                end
                __U[23]()
                if __VE["LPs"].Character.Humanoid.Sit then
                    TpShipToLevel()
                end
                if __VE["LPs"].Character.Humanoid.Sit then
                    repeat __U[23]() until (not __VE["LPs"].Character:FindFirstChild("Humanoid") or (__VE["LPs"].Character:FindFirstChild("Humanoid") and __VE["LPs"].Character.Humanoid.Health == 0) or (__VE["LPs"].Character:FindFirstChild("Humanoid") and not __VE["LPs"].Character.Humanoid.Sit and not Setting.WaitBRUH)) or not Setting.AutoSeaEvent
                end
                repeat __U[23]() until __VE["LPs"]:FindFirstChild("Humanoid") and __VE["LPs"].Humanoid.Health > 0
                __U[23](5)
            end
        end
    end)()
end)

__U[6](function()
    __U[58](function()
        repeat __U[23]() until finishload
        while __U[23]() do
            if Setting.AutoBuso then
                __U[6](function()
                    if not __VE["LPs"].Character:FindFirstChild("HasBuso") then
                        CommF:InvokeServer("Buso")
                    end
                end)        
            end
        end
    end)()
end)
__U[6](function()
    __U[58](function()
        repeat __U[23]() until finishload
        while __U[23]() do
            if Setting.AutoKen then
                __U[6](function()
                    CommE:FireServer("Ken",true)
                end)        
            end
        end
    end)()
end)
__U[58](function()
    while __U[23]() do
        --GAY
        if Setting.AutoFarmBounty then
            Setting.PauseAutoEqu = true
            Setting.DMGAura5 = true
            Setting.UseSkill = true
            for _, v in __U[7](__VE["WS"].Characters:GetChildren()) do
                if v and (v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0) and v:FindFirstChild("HumanoidRootPart") and Setting.AutoFarmBounty and v.Name ~= game.Players.LocalPlayer.Name then
                    repeat __U[23]() until (v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0) or not v:FindFirstChild("Humanoid")
                    Setting.NoMore = false
                    EquipMelee()
                    repeat
                        tpwithnewtpbyme2(v.HumanoidRootPart.CFrame, __U[31](Setting.AutoBountyTeleportSpeed))
                        __U[23]()
                    until not v or not v:FindFirstChild("HumanoidRootPart") or (v.HumanoidRootPart.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude <= 30 or not Setting.AutoFarmBounty
                    EquipMelee()
                    for i = 1, 100 do
                        if v.Humanoid and __U[31](v.Humanoid.Health) <= __U[31](v.Humanoid.MaxHealth) / 2 then
                            break
                        end
                        tpwithnewtpbyme2(v.HumanoidRootPart.CFrame, 10)
                        __U[23]()
                    end
                    UnEquipMelee()
                    if v and v:FindFirstChild("HumanoidRootPart") then
                        __U[6](function()
                            tp(v.HumanoidRootPart.Position.X, v.HumanoidRootPart.Position.Y + 500, v.HumanoidRootPart.Position.Z)
                        end)
                    end
                    __U[23]()
                    Setting.Atgay = v:GetAttribute("InCombat")
                    __U[23]()
                    if Setting.Atgay then
                        repeat
                            repeat __U[23]() until __VE["LPs"].Character:FindFirstChild("Humanoid") and __VE["LPs"].Character.Humanoid.Health > 0
                            Setting.PauseAutoEqu = true
                            Setting.DMGAura5 = true
                            if Setting.ErrorAndTrial >= Setting.MaxErrorAndTrial or not Setting.AutoFarmBounty then
                                break
                            else
                                __U[23]()
                                if Setting.UseRaceWhenAutoBounty and Setting.AutoFarmBounty then
                                    __VE["RlS"].Remotes.CommE:FireServer("ActivateAbility")
                                end
                                if __VE["LPs"].Character.Humanoid.Health <= __U[31](Setting.KeepSafeHealth) and Setting.AutoFarmBounty then
                                    repeat
                                        __U[6](function()
                                            tp(v.HumanoidRootPart.X, v.HumanoidRootPart.Y + 1000, v.HumanoidRootPart.Z)
                                            __U[23]()
                                        end)
                                        __U[23]()
                                    until not v or not v:FindFirstChild("HumanoidRootPart") or __VE["LPs"].Character.Humanoid.Health > __U[31](Setting.KeepSafeHealth) or not Setting.AutoFarmBounty
                                    __U[23]()
                                end
                                if Setting.AutoKennWhenAutoBounty and Setting.AutoFarmBounty then
                                    CommE:FireServer("Ken", true)
                                end
                                __U[23]()
                                if v and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health ~= 0 then
                                    tpwithnewtpbyme2(v.HumanoidRootPart.CFrame, __U[31](Setting.AutoBountyTeleportSpeed))
                                    EquipMelee()
                                    MobHumP = v.HumanoidRootPart.Position
                                    Setting.PosMobMasteryFruit = MobHumP
                                    UseSkillMelee()
                                    if v.Humanoid and __U[31](v.Humanoid.Health) <= __U[31](v.Humanoid.MaxHealth) / 2 and not Setting.NoMore then
                                        Setting.NoMore = true
                                        tp(v.HumanoidRootPart.Position.X, v.HumanoidRootPart.Position.Y + 1000, v.HumanoidRootPart.Position.Z)
                                        __U[23](5)
                                    end
                                    EquipSword()
                                    MobHumP = v.HumanoidRootPart.Position
                                    Setting.PosMobMasteryFruit = MobHumP
                                    UseSkillMelee()
                                    if v.Humanoid and __U[31](v.Humanoid.Health) <= __U[31](v.Humanoid.MaxHealth) / 2 and not Setting.NoMore then
                                        Setting.NoMore = true
                                        tp(v.HumanoidRootPart.Position.X, v.HumanoidRootPart.Position.Y + 1000, v.HumanoidRootPart.Position.Z)
                                        __U[23](5)
                                    end
                                    EquipGun()
                                    MobHumP = v.HumanoidRootPart.Position
                                    Setting.PosMobMasteryFruit = MobHumP
                                    UseSkillMelee()
                                    if v.Humanoid and __U[31](v.Humanoid.Health) <= __U[31](v.Humanoid.MaxHealth) / 2 and not Setting.NoMore then
                                        Setting.NoMore = true
                                        tp(v.HumanoidRootPart.Position.X, v.HumanoidRootPart.Position.Y + 1000, v.HumanoidRootPart.Position.Z)
                                        __U[23](5)
                                    end
                                    Setting.ErrorAndTrial = Setting.ErrorAndTrial + 1
                                end
                            end
                            __U[23]()
                        until not v:FindFirstChild("Humanoid") or v.Humanoid.Health == 0  or Setting.ErrorAndTrial >= Setting.MaxErrorAndTrial or not Setting.AutoFarmBounty
                    end
                end
            end
            Setting.UseSkill = false
            Setting.PauseAutoEqu = false
            Setting.DMGAura5 = false
            if Setting.AutoFarmBountyHop then
                SVHop()
            end
        end
    end
end)()
__U[58](function() --🟢
    while __U[23]() do
        repeat __U[23]() until finishload
        if KillAuraS then
            __U[6](function()
                for _, v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                    if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and KillAuraS then
                        v.Humanoid.Health = 0
                    end
                end
            end)
        end
    end
end)()
__U[58](function() --🟢
    while __U[23]() do
        repeat __U[23]() until finishload
        if Setting.TeleportToNextIsland then
            __U[6](function()
                if __VE["WO"].Locations:FindFirstChild("Island 5") then
                    tpwithnewtpbyme2(__VE["WO"].Locations:FindFirstChild("Island 5").CFrame*__U[26](0 + __U[31](Setting.AutoRaidPosX), 25 + __U[31](Setting.AutoRaidPosY), 0 + __U[31](Setting.AutoRaidPosZ)), __U[31](Setting.TeleportToNEXTIslandSpeed))
                elseif __VE["WO"].Locations:FindFirstChild("Island 4") then
                    tpwithnewtpbyme2(__VE["WO"].Locations:FindFirstChild("Island 4").CFrame*__U[26](0 + __U[31](Setting.AutoRaidPosX), 25 + __U[31](Setting.AutoRaidPosY), 0 + __U[31](Setting.AutoRaidPosZ)), __U[31](Setting.TeleportToNEXTIslandSpeed))
                elseif __VE["WO"].Locations:FindFirstChild("Island 3") then
                    tpwithnewtpbyme2(__VE["WO"].Locations:FindFirstChild("Island 3").CFrame*__U[26](0 + __U[31](Setting.AutoRaidPosX), 25 + __U[31](Setting.AutoRaidPosY), 0 + __U[31](Setting.AutoRaidPosZ)), __U[31](Setting.TeleportToNEXTIslandSpeed))
                elseif __VE["WO"].Locations:FindFirstChild("Island 2") then
                    tpwithnewtpbyme2(__VE["WO"].Locations:FindFirstChild("Island 2").CFrame*__U[26](0 + __U[31](Setting.AutoRaidPosX), 25 + __U[31](Setting.AutoRaidPosY), 0 + __U[31](Setting.AutoRaidPosZ)), __U[31](Setting.TeleportToNEXTIslandSpeed))
                elseif __VE["WO"].Locations:FindFirstChild("Island 1") then
                    tpwithnewtpbyme2(__VE["WO"].Locations:FindFirstChild("Island 1").CFrame*__U[26](0 + __U[31](Setting.AutoRaidPosX), 25 + __U[31](Setting.AutoRaidPosY), 0 + __U[31](Setting.AutoRaidPosZ)), __U[31](Setting.TeleportToNEXTIslandSpeed))
                end
            end)
        end
    end
end)()
__U[58](function() --🟢, Full Access Settings
    repeat __U[23]() until finishload
    while __U[23]() do
        if Setting.AutoRaid and Setting.SelectedRaid2 ~= nil then
            __U[6](function()
                if not __VE["PsG"].Main.Timer.Visible and (not __VE["WO"].Locations:FindFirstChild("Island 1") or (__VE["WO"].Locations:FindFirstChild("Island 1") and not isTargetNearPlayer(__VE["WO"].Locations:FindFirstChild("Island 1").CFrame, 6700))) then
                    __U[6](function()
                        if (not Backpack:FindFirstChild("Special Microchip") or not __VE["LPs"].Character:FindFirstChild("Special Microchip")) and (not __VE["WO"].Locations:FindFirstChild("Island 1") or (__VE["WO"].Locations:FindFirstChild("Island 1") and not isTargetNearPlayer(__VE["WO"].Locations:FindFirstChild("Island 1").CFrame, 6700))) then
                            if not __VE["WO"].Locations:FindFirstChild("Island 1") or (__VE["WO"].Locations:FindFirstChild("Island 1") and not isTargetNearPlayer(__VE["WO"].Locations:FindFirstChild("Island 1").CFrame, 6700)) then
                                CommF:InvokeServer("RaidsNpc", "Select", __VE["32"](Setting.SelectedRaid2))
                            end
                        end
                        __U[23]()
                        if not __VE["PsG"].Main.Timer.Visible and (not __VE["WO"].Locations:FindFirstChild("Island 1") or (__VE["WO"].Locations:FindFirstChild("Island 1") and not isTargetNearPlayer(__VE["WO"].Locations:FindFirstChild("Island 1").CFrame, 6700))) then
                            if WorldCheck["Second Sea"] then
                                __U[58](__VE["WS"].Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                            elseif WorldCheck["Third Sea"] then
                                __U[58](__VE["WS"].Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                            end
                        end
                        repeat __U[23]() until (__VE["WO"].Locations:FindFirstChild("Island 1") and isTargetNearPlayer(__VE["WO"].Locations:FindFirstChild("Island 1").CFrame, 6700)) or not Setting.AutoRaid
                        if __VE["WO"].Locations:FindFirstChild("Island 5") then
                            tpwithnewtpbyme2(__VE["WO"].Locations:FindFirstChild("Island 5").CFrame*__U[26](0 + __U[31](Setting.AutoRaidPosX), 25 + __U[31](Setting.AutoRaidPosY), 0 + __U[31](Setting.AutoRaidPosZ)), __U[31](Setting.TeleportToNEXTIslandSpeed))
                        elseif __VE["WO"].Locations:FindFirstChild("Island 4") then
                            tpwithnewtpbyme2(__VE["WO"].Locations:FindFirstChild("Island 4").CFrame*__U[26](0 + __U[31](Setting.AutoRaidPosX), 25 + __U[31](Setting.AutoRaidPosY), 0 + __U[31](Setting.AutoRaidPosZ)), __U[31](Setting.TeleportToNEXTIslandSpeed))
                        elseif __VE["WO"].Locations:FindFirstChild("Island 3") then
                            tpwithnewtpbyme2(__VE["WO"].Locations:FindFirstChild("Island 3").CFrame*__U[26](0 + __U[31](Setting.AutoRaidPosX), 25 + __U[31](Setting.AutoRaidPosY), 0 + __U[31](Setting.AutoRaidPosZ)), __U[31](Setting.TeleportToNEXTIslandSpeed))
                        elseif __VE["WO"].Locations:FindFirstChild("Island 2") then
                            tpwithnewtpbyme2(__VE["WO"].Locations:FindFirstChild("Island 2").CFrame*__U[26](0 + __U[31](Setting.AutoRaidPosX), 25 + __U[31](Setting.AutoRaidPosY), 0 + __U[31](Setting.AutoRaidPosZ)), __U[31](Setting.TeleportToNEXTIslandSpeed))
                        elseif __VE["WO"].Locations:FindFirstChild("Island 1") then
                            tpwithnewtpbyme2(__VE["WO"].Locations:FindFirstChild("Island 1").CFrame*__U[26](0 + __U[31](Setting.AutoRaidPosX), 25 + __U[31](Setting.AutoRaidPosY), 0 + __U[31](Setting.AutoRaidPosZ)), __U[31](Setting.TeleportToNEXTIslandSpeed))
                        end
                    end)
                else
                    repeat __U[23]() until (__VE["WO"].Locations:FindFirstChild("Island 1") and isTargetNearPlayer(__VE["WO"].Locations:FindFirstChild("Island 1").CFrame, 6700) and game:GetService("Players")["LocalPlayer"].__VE["PsG"].Main.Timer.Visible) or not Setting.AutoRaid
                    if __VE["WO"].Locations:FindFirstChild("Island 5") then
                        tpwithnewtpbyme2(__VE["WO"].Locations:FindFirstChild("Island 5").CFrame*__U[26](0 + __U[31](Setting.AutoRaidPosX), 25 + __U[31](Setting.AutoRaidPosY), 0 + __U[31](Setting.AutoRaidPosZ)), __U[31](Setting.TeleportToNEXTIslandSpeed))
                    elseif __VE["WO"].Locations:FindFirstChild("Island 4") then
                        tpwithnewtpbyme2(__VE["WO"].Locations:FindFirstChild("Island 4").CFrame*__U[26](0 + __U[31](Setting.AutoRaidPosX), 25 + __U[31](Setting.AutoRaidPosY), 0 + __U[31](Setting.AutoRaidPosZ)), __U[31](Setting.TeleportToNEXTIslandSpeed))
                    elseif __VE["WO"].Locations:FindFirstChild("Island 3") then
                        tpwithnewtpbyme2(__VE["WO"].Locations:FindFirstChild("Island 3").CFrame*__U[26](0 + __U[31](Setting.AutoRaidPosX), 25 + __U[31](Setting.AutoRaidPosY), 0 + __U[31](Setting.AutoRaidPosZ)), __U[31](Setting.TeleportToNEXTIslandSpeed))
                    elseif __VE["WO"].Locations:FindFirstChild("Island 2") then
                        tpwithnewtpbyme2(__VE["WO"].Locations:FindFirstChild("Island 2").CFrame*__U[26](0 + __U[31](Setting.AutoRaidPosX), 25 + __U[31](Setting.AutoRaidPosY), 0 + __U[31](Setting.AutoRaidPosZ)), __U[31](Setting.TeleportToNEXTIslandSpeed))
                    elseif __VE["WO"].Locations:FindFirstChild("Island 1") then
                        tpwithnewtpbyme2(__VE["WO"].Locations:FindFirstChild("Island 1").CFrame*__U[26](0 + __U[31](Setting.AutoRaidPosX), 25 + __U[31](Setting.AutoRaidPosY), 0 + __U[31](Setting.AutoRaidPosZ)), __U[31](Setting.TeleportToNEXTIslandSpeed))
                    end
                end
                __U[23]()
            end)
            __U[23]()
        end
    end
end)()

--ทำแบบตอนโหลดfluentด้วย
repeat
    __U[6](function()
        Window = Fluent:CreateWindow({
            Title = "Blox fruit Script v.UP1FV",
            SubTitle = "by TTJY",
            TabWidth = 160,
            Size = UDim2.fromOffset(580, 460),
            Acrylic = false,
            Theme = "Dark",
            MinimizeKey = Enum.KeyCode.LeftControl
        })
    end)
    print("Window Loaded")
    __U[23](5)
until Window ~= nil


local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    AutoFarmTab = Window:AddTab({ Title = "Auto Farm", Icon = "gauge" }),
    WeaponTab = Window:AddTab({ Title = "Weapon", Icon = "briefcase" }),
    RaidT = Window:AddTab({ Title = "Raid", Icon = "shopping-cart" }),
    StatsT = Window:AddTab({ Title = "Stats", Icon = "align-end-horizontal" }),
    FruitT = Window:AddTab({ Title = "Fruit", Icon = "apple" }),
    MirageARaceT = Window:AddTab({ Title = "Mirage-Race", Icon = "tree-palm" }),
    SeaEventT = Window:AddTab({ Title = "Sea Event", Icon = "fish" }),
    PlayerTab = Window:AddTab({ Title = "Player", Icon = "users" }),
    TpTab = Window:AddTab({ Title = "Teleport", Icon = "map-pin" }),
    ShopTab = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" }),
    ESPT = Window:AddTab({ Title = "ESP", Icon = "tag" }),
    Credits = Window:AddTab({ Title = "Credits", Icon = "book" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}
local Options = Fluent.Options
__U[6](function()
    Window.Root:GetPropertyChangedSignal("Visible"):Connect(OnFluentChange)
end)
__U[6](function()
    function onButtonClick()
        Window.Minimized = not Window.Minimized
        Window.Root.Visible = not Window.Minimized
    end
    function onButtonClick2()
        StopAllHop = true
        STOPHOP.TextColor3  = __VE[36](0, 255, 0)
        __U[23](10)
        StopAllHop = false
        STOPHOP.TextColor3  = __VE[36](255, 0, 0)
    end
    TTJYHUB.MouseButton1Click:Connect(onButtonClick)
    STOPHOP.MouseButton1Click:Connect(onButtonClick2)
    STOPTP.MouseButton1Click:Connect(StopTeleport)
    if __VE["CG"]:FindFirstChild("InputPcToMobile") then
        __VE["CG"]:FindFirstChild("InputPcToMobile"):Destroy()
    end
    local screenGui2 = Instance.new("ScreenGui")
    screenGui2.Name = "InputPcToMobile"
    screenGui2.Parent = __VE["CG"]
    local buttonSize = UDim2.new(0.05, 0, 0.05, 0)
    local function createButton(key, position)
        local button = Instance.new("TextButton")
        button.Name = key
        button.Text = key
        button.Size = buttonSize
        button.Position = position
        button.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
        button.Parent = screenGui2
    
        local isPressed = false
        button.MouseButton1Down:Connect(function()
            isPressed = true
            if key == "W" then
                CONTROL.F = speedofthefly
                print("W")
            elseif key == "S" then
                CONTROL.B = -speedofthefly
                print("S")
            elseif key == "A" then
                CONTROL.L = -speedofthefly
                print("A")
            elseif key == "D" then
                CONTROL.R = speedofthefly
                print("D")
            end
        end)
    
        button.MouseButton1Up:Connect(function()
            isPressed = false
            if key == "W" then
                CONTROL.F = 0
            elseif key == "S" then
                CONTROL.B = 0
            elseif key == "A" then
                CONTROL.L = 0
            elseif key == "D" then
                CONTROL.R = 0
            end
        end)
    end
    createButton("W", UDim2.new(0.05, 0, 0.1, 0))
    __U[23](1)
    createButton("A", UDim2.new(0, 0, 0.2, 0))
    __U[23](1)
    createButton("S", UDim2.new(0.05, 0, 0.3, 0))
    __U[23](1)
    createButton("D", UDim2.new(0.1, 0, 0.2, 0))
    __U[23](1)
end)

do
    Tabs.Main:AddSection("Select Weapon")
    Tabs.Main:AddButton({
        Title = "Save Config + Setting",
        Description = "Your setting and config will load everytime you execute, so you should do this before close or leave game",
        Callback = function()
            serializedSetting = __VE["HS"]:JSONEncode(Setting)
            __U[23]()
            __U[56]("Setting/setting.json", serializedSetting)
        end
    })
    WeaponBackpack = {__U[32](Setting.SelectWeapon)}
    Tabs.AutoFarmTab:AddSection("Select Weapon")
    SelectWeapon = Tabs.AutoFarmTab:AddDropdown("SelectWeapon", {
        Title = "Select Weapon",
        Values = WeaponBackpack,
        Multi = false,
        Default = 1,
    })
    SelectWeapon:OnChanged(function(Value)
        Setting.SelectWeapon = Value
    end)
    
    Tabs.AutoFarmTab:AddButton({
        Title = "Refresh Weapon",
        Description = "",
        Callback = function()
            WeaponBackpack = {}
            __U[19]()
            for _, item in __U[7](Backpack:GetChildren()) do
                __U[30](WeaponBackpack, item.Name)
            end
            __U[19]()
            SelectWeapon:SetValues(WeaponBackpack)
        end
    })
    Tabs.AutoFarmTab:AddSection("Auto Farm")
    AutoFarmLevel = Tabs.AutoFarmTab:AddToggle("AutoFarmLevel", {Title = "Auto Farm Level", Default = Setting.AutoFarmLevel })

    AutoFarmLevel:OnChanged(function()
        Setting.AutoFarmLevel = Options.AutoFarmLevel.Value
    end)
    if WorldCheck["First Sea"] then --🟡
        AutoFarmLevelWithSea2 = Tabs.AutoFarmTab:AddToggle("AutoFarmLevelWithSea2", {Title = "Auto Sea 2 (After Auto Farm Level)", Default = Setting.AutoSea2 })

        AutoFarmLevelWithSea2:OnChanged(function()
            Setting.AutoSea2 = Options.AutoFarmLevelWithSea2.Value
        end)
        AutoFarmLevelWithSea22 = Tabs.AutoFarmTab:AddToggle("AutoFarmLevelWithSea22", {Title = "Auto Sea 2 (Normal)", Default = Setting.AutoFarmLevelWithSea22 })

        AutoFarmLevelWithSea22:OnChanged(function()
            if Options.AutoFarmLevelWithSea22.Value then
                tpwithnewtpbyme(4852.15625, 5.776771545410156, 718.41064453125, 5)
                __VE["RlS"]:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("DressrosaQuestProgress", "Detective")
                __U[23](3)
                __VE["RlS"]:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("DressrosaQuestProgress", "Detective")
                __U[23](2.175)
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool("Key")
                    if Options.AutoFarmLevelWithSea22.Value then
                        repeat
                            tpwithnewtpbyme(1344.54724, 42.2526398, -1327.88904, 5)
                            __U[23]()
                        until (__VE["WS"].Map.Ice.Door and __VE["WS"].Map.Ice.Door.Transparency == 1) or not Options.AutoFarmLevelWithSea22.Value
                        __U[23](1.75)
                        for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                            if v and v.Name == __U[32]("Ice Admiral") then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Options.AutoFarmLevelWithSea22.Value then
                                    Attack = true
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat __U[23]() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, 10)
                                        wait()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Options.AutoFarmLevelWithSea22.Value or Setting.TryNumOfthis1 == 2000
                                end
                            end
                        end
                        __U[23]()
                        __VE["RlS"]:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("TravelDressrosa")
                    end
                elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
                    tpwithnewtpbyme(1344.54724, 42.2526398, -1327.88904, 5)
                    __U[23](1.75)
                    if Options.AutoFarmLevelWithSea22.Value then
                        for _,v in __U[7](__VE["WS"].Enemies:GetChildren()) do
                            if v and v.Name == __U[32]("Ice Admiral") then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Options.AutoFarmLevelWithSea22.Value then
                                    Attack = true
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat __U[23]() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, 10)
                                        wait()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Options.AutoFarmLevelWithSea22.Value or Setting.TryNumOfthis1 == 2000
                                end
                            end
                        end
                    end
                    __U[23]()
                    __VE["RlS"]:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("TravelDressrosa")
                end
            end
        end)
        AutoRichManMission = Tabs.AutoFarmTab:AddToggle("AutoRichManMission", {Title = "Auto Open Saber Door", Default = Setting.AutoRichManMission })

        AutoRichManMission:OnChanged(function()
            Setting.AutoRichManMission = Options.AutoRichManMission.Value
        end)
    elseif WorldCheck["Second Sea"] then
        AutoBartilo = Tabs.AutoFarmTab:AddToggle("AutoBartilo", {Title = "Auto Bartilo Quest", Default = Setting.AutoBartilo })

        AutoBartilo:OnChanged(function()
            Setting.AutoBartilo = Options.AutoBartilo.Value
        end)
        AutoSea3 = Tabs.AutoFarmTab:AddToggle("AutoSea3", {Title = "Auto Sea 3", Default = Setting.AutoSea3 })

        AutoSea3:OnChanged(function()
            Setting.AutoSea3 = Options.AutoSea3.Value
        end)
    end
    __U[23]()
    if WorldCheck["First Sea"] then
        Valuess = {"Bandit", "Monkey", "Gorilla", "Pirate", "Brute", "Desert Bandit", "Desert Officer", "Snow Bandit", "Snowman", "Chief Petty Officer", "Sky Bandit", "Dark Master", "Prisoner", "Dangerous Prisoner", "Toga Warrior", "Gladiator", "Military Soldier", "Fishman Warrior", "Fishman Commando", "God's Guard", "Shanda", "Royal Squad", "Royal Soldier", "Galley Pirate"}
    elseif WorldCheck["Second Sea"] then
        Valuess = {"Raider", "Mercenary", "Swan Pirate", "Factory Staff", "Marine Lieutenant", "Marine Captain", "Zombie", "Vampire", "Snow Trooper", "Winter Warrior", "Lab Subordinate", "Horned Warrior", "Magma Ninja", "Lava Pirate", "Ship Deckhand", "Ship Engineer", "Ship Steward", "Ship Officer", "Arctic Warrior", "Snow Lurker", "Sea Soldier", "Water Fighter"}
    elseif WorldCheck["Third Sea"] then
        Valuess = {"Pirate Millionaire", "Pistol Billionaire", "Dragon Crew Warrior", "Dragon Crew Archer", "Female Islander", "Giant Islander", "Marine Commodore", "Marine Rear Admiral", "Fishman Raider", "Fishman Captain", "Forest Pirate", "Mythological Pirate", "Jungle Pirate", "Musketeer Pirate", "Musketeer Pirate", "Living Zombie", "Demonic Souls", "Posessed Mummys", "Peanut Scout", "Peanut Presidents", "Ice Cream Chefs", "Ice Cream Commanders", "Cookie Crafters"}
    end
    SelectMob = Tabs.AutoFarmTab:AddDropdown("SelectMob", {
        Title = "Select Mob",
        Values = Valuess,
        Multi = false,
        Default = 1,
    })
    SelectMob:OnChanged(function(Value)
        Setting.SelectMob = Options.SelectMob.Value
    end)
    AutoFarmSelectMob = Tabs.AutoFarmTab:AddToggle("AutoFarmSelectMob", {Title = "Auto Farm Mob Selected", Default = false })

    AutoFarmSelectMob:OnChanged(function()
        Setting.AutoFarmSelectMob = Options.AutoFarmSelectMob.Value
    end)
    if WorldCheck["First Sea"] then
        Valuess = BossName["First Sea"]
    elseif WorldCheck["Second Sea"] then
        Valuess = BossName["Second Sea"]
    elseif WorldCheck["Third Sea"] then
        Valuess = BossName["Third Sea"]
    end
    SelectBoss = Tabs.AutoFarmTab:AddDropdown("SelectBoss", {
        Title = "Select Boss",
        Values = Valuess,
        Multi = false,
        Default = 1,
    })
    SelectBoss:OnChanged(function(Value)
        Setting.SelectBoss = Options.SelectBoss.Value
    end)
    AutoFarmSelectBoss = Tabs.AutoFarmTab:AddToggle("AutoFarmSelectBoss", {Title = "Auto Farm Boss Selected", Default = false })

    AutoFarmSelectBoss:OnChanged(function()
        Setting.AutoFarmSelectBoss = Options.AutoFarmSelectBoss.Value
    end)
    AutoFarmAllBoss = Tabs.AutoFarmTab:AddToggle("AutoFarmAllBoss", {Title = "Auto Farm All Boss", Default = Setting.AutoFarmAllBoss })

    AutoFarmAllBoss:OnChanged(function()
        Setting.AutoFarmAllBoss = Options.AutoFarmAllBoss.Value
    end)
    AutoFarmAura = Tabs.AutoFarmTab:AddToggle("AutoFarmAura", {Title = "Auto Farm Aura", Default = Setting.AutoFarmAura })

    AutoFarmAura:OnChanged(function()
        Setting.AutoFarmAura = Options.AutoFarmAura.Value
    end)

    Tabs.AutoFarmTab:AddSection("Mastery")
    AutoFarmFruitMastery = Tabs.AutoFarmTab:AddToggle("AutoFarmFruitMastery", {Title = "Auto Farm Fruit Mastery", Default = Setting.AutoFarmFruitMastery })

    AutoFarmFruitMastery:OnChanged(function()
        Setting.AutoFarmFruitMastery = Options.AutoFarmFruitMastery.Value
    end)
    AutoFarmGunMastery = Tabs.AutoFarmTab:AddToggle("AutoFarmGunMastery", {Title = "Auto Farm Gun Mastery", Default = Setting.AutoFarmGunMastery })

    AutoFarmGunMastery:OnChanged(function()
        Setting.AutoFarmGunMastery = Options.AutoFarmGunMastery.Value
    end)

    Tabs.AutoFarmTab:AddSection("Sword")
    AutoFarmSwordMastery = Tabs.AutoFarmTab:AddToggle("AutoFarmSwordMastery", {Title = "Auto Farm Sword Mastery | UNT", Default = Setting.AutoFarmSwordMastery })

    AutoFarmSwordMastery:OnChanged(function()
        Setting.AutoFarmSwordMastery = Options.AutoFarmSwordMastery.Value
    end)
    AutoFarmAllSwordMastery = Tabs.AutoFarmTab:AddToggle("AutoFarmAllSwordMastery", {Title = "Auto Farm All Sword Mastery | UNT", Default = Setting.AutoFarmAllSwordMastery })

    AutoFarmAllSwordMastery:OnChanged(function()
        Setting.AutoFarmAllSwordMastery = Options.AutoFarmAllSwordMastery.Value
    end)

    if WorldCheck["Third Sea"] then
        Tabs.AutoFarmTab:AddSection("Bone")
        AutoBone = Tabs.AutoFarmTab:AddToggle("AutoBone", {Title = "Auto Farm Bones", Default = Setting.AutoBone })

        AutoBone:OnChanged(function()
            Setting.AutoBone = Options.AutoBone.Value
        end)

        Tabs.AutoFarmTab:AddSection("Cake Prince")
        AutoFarmCakePrince = Tabs.AutoFarmTab:AddToggle("AutoFarmCakePrince", {Title = "Auto Farm Cake Prince", Default = Setting.AutoBone })

        AutoFarmCakePrince:OnChanged(function()
            Setting.AutoFarmCakePrince = Options.AutoFarmCakePrince.Value
        end)
        AutoFarmCakePrince:OnChanged(function()
            Setting.AutoFarmCakePrince = Options.AutoFarmCakePrince.Value
            if Options.AutoFarmCakePrince.Value then
                while Options.AutoFarmCakePrince.Value do
                    pcall(function()
                        if __U[63](CommF:InvokeServer("CakePrinceSpawner")) == 88 and Options.AutoFarmCakePrince.Value then
                            Setting.LenMoB = (__U[31](__U[62](CommF:InvokeServer("CakePrinceSpawner"), 39, 41)) - 500)
                        elseif __U[63](CommF:InvokeServer("CakePrinceSpawner")) == 87 and Options.AutoFarmCakePrince.Value then
                            Setting.LenMoB = (__U[31](__U[62](CommF:InvokeServer("CakePrinceSpawner"), 40, 41)) - 500)
                        elseif __U[63](CommF:InvokeServer("CakePrinceSpawner")) == 86 and Options.AutoFarmCakePrince.Value then
                            Setting.LenMoB = (__U[31](__U[62](CommF:InvokeServer("CakePrinceSpawner"), 41, 41)) - 500)
                        end
                    end)
                    task.wait()
                end
            end
        end)
    end
    __U[23]()

    Tabs.AutoFarmTab:AddSection("Observation")
        AutoFarmObservation = Tabs.AutoFarmTab:AddToggle("AutoFarmObservation", {Title = "Auto FarmObservation", Default = Setting.AutoFarmObservation })

    AutoFarmObservation:OnChanged(function()
        Setting.AutoFarmObservation = Options.AutoFarmObservation.Value
    end)
        AutoFarmObservationHop = Tabs.AutoFarmTab:AddToggle("AutoFarmObservationHop", {Title = "Auto FarmObservation Hop", Default = Setting.AutoFarmObservationHop })

    AutoFarmObservationHop:OnChanged(function()
        Setting.AutoFarmObservationHop = Options.AutoFarmObservationHop.Value
    end)

    Tabs.AutoFarmTab:AddSection("Chest")
    AutoCollectChest = Tabs.AutoFarmTab:AddToggle("AutoCollectChest", {Title = "Auto Collect Chests", Default = false })

    AutoCollectChest:OnChanged(function()
        if Options.AutoCollectChest.Value then
            while Options.AutoCollectChest.Value do
                teleportToNearestChest()
                __U[23]()
            end
        end
    end)

    Tabs.AutoFarmTab:AddSection("Material")
    SelectMaterial = Tabs.AutoFarmTab:AddDropdown("SelectMaterial", {
        Title = "Select Material",
        Values = {"gay"}, --🟡
        Multi = false,
        Default = 1,
    })
    AutoMaterial = Tabs.AutoFarmTab:AddToggle("AutoMaterial", {Title = "Auto Farm Selected Material", Default = false })

    AutoMaterial:OnChanged(function()
        Setting.AutoMaterial = Options.AutoMaterial.Value --🟡,ทำไว้แล้ว แต่ว่าเหลือSelectMaterialในui
    end)
    Tabs.WeaponTab:AddSection("Legendary Sword")
    AutoLegendarySword = Tabs.WeaponTab:AddToggle("AutoLegendarySword", {Title = "Auto Legendary Sword", Default = Setting.AutoLegendarySword })

    AutoLegendarySword:OnChanged(function()
        Setting.AutoLegendarySword = Options.AutoLegendarySword.Value
    end)
    AutoLegendarySwordHop = Tabs.WeaponTab:AddToggle("AutoLegendarySwordHop", {Title = "Auto Legendary Sword Hop", Default = Setting.AutoLegendarySwordHop })

    AutoLegendarySwordHop:OnChanged(function()
        Setting.AutoLegendarySwordHop = Options.AutoLegendarySwordHop.Value
    end)
    Tabs.WeaponTab:AddSection("Sword #1")
    AutoRengoku = Tabs.WeaponTab:AddToggle("AutoRengoku", {Title = "Auto Rengoku", Default = Setting.AutoRengoku })

    AutoRengoku:OnChanged(function()
        Setting.AutoRengoku = Options.AutoRengoku.Value
    end)
    Tabs.WeaponTab:AddSection("Sword #2")
    AutoSaber = Tabs.WeaponTab:AddToggle("AutoSaber", {Title = "Auto Saber", Default = Setting.AutoSaber })

    AutoSaber:OnChanged(function()
        Setting.AutoSaber = Options.AutoSaber.Value
    end)
    AutoSaberHop = Tabs.WeaponTab:AddToggle("AutoSaberHop", {Title = "Auto Saber Hop", Default = Setting.AutoSaberHop })

    AutoSaberHop:OnChanged(function()
        Setting.AutoSaberHop = Options.AutoSaberHop.Value
    end)
    AutoCanvander = Tabs.WeaponTab:AddToggle("AutoCanvander", {Title = "AutoCanvander", Default = Setting.AutoCanvander })

    AutoCanvander:OnChanged(function()
        Setting.AutoCanvander = Options.AutoCanvander.Value
    end)
    AutoCanvanderHop = Tabs.WeaponTab:AddToggle("AutoCanvanderHop", {Title = "Auto Canvander Hop", Default = Setting.AutoCanvanderHop })

    AutoCanvanderHop:OnChanged(function()
        Setting.AutoCanvanderHop = Options.AutoCanvanderHop.Value
    end)
    AutoSpikeyTrident = Tabs.WeaponTab:AddToggle("AutoSpikeyTrident", {Title = "Auto Spikey Trident", Default = Setting.AutoSpikeyTrident })

    AutoSpikeyTrident:OnChanged(function()
        Setting.AutoSpikeyTrident = Options.AutoSpikeyTrident.Value
    end)
    AutoTwinHooks = Tabs.WeaponTab:AddToggle("AutoTwinHooks", {Title = "Auto Twin Hooks", Default = Setting.AutoTwinHooks })

    AutoTwinHooks:OnChanged(function()
        Setting.AutoTwinHooks = Options.AutoTwinHooks.Value
    end)
    AutoTwinHooksHop = Tabs.WeaponTab:AddToggle("AutoTwinHooksHop", {Title = "Auto Twin Hooks Hop", Default = Setting.AutoTwinHooksHop })

    AutoTwinHooksHop:OnChanged(function()
        Setting.AutoTwinHooksHop = Options.AutoTwinHooksHop.Value
    end)
    AutoSharkSaw = Tabs.WeaponTab:AddToggle("AutoSharkSaw", {Title = "Auto Shark Saw", Default = Setting.AutoSharkSaw })

    AutoSharkSaw:OnChanged(function()
        Setting.AutoSharkSaw = Options.AutoSharkSaw.Value
    end)
    AutoSharkSawHop = Tabs.WeaponTab:AddToggle("AutoSharkSawHop", {Title = "Auto Shark Saw Hop", Default = Setting.AutoSharkSawHop })

    AutoSharkSawHop:OnChanged(function()
        Setting.AutoSharkSawHop = Options.AutoSharkSawHop.Value
    end)
    AutoWardensSword = Tabs.WeaponTab:AddToggle("AutoWardensSword", {Title = "Auto Wardens Sword", Default = Setting.AutoWardensSword })

    AutoWardensSword:OnChanged(function()
        Setting.AutoWardensSword = Options.AutoWardensSword.Value
    end)
    AutoWardensSwordHop = Tabs.WeaponTab:AddToggle("AutoWardensSwordHop", {Title = "Auto Wardens Sword Hop", Default = Setting.AutoWardensSwordHop })

    AutoWardensSwordHop:OnChanged(function()
        Setting.AutoWardensSwordHop = Options.AutoWardensSwordHop.Value
    end)
    AutoGravityCane = Tabs.WeaponTab:AddToggle("AutoGravityCane", {Title = "Auto Gravity Cane", Default = Setting.AutoGravityCane })

    AutoGravityCane:OnChanged(function()
        Setting.AutoGravityCane = Options.AutoGravityCane.Value
    end)
    AutoGravityCaneHop = Tabs.WeaponTab:AddToggle("AutoGravityCaneHop", {Title = "Auto Gravity Cane Hop", Default = Setting.AutoGravityCaneHop })

    AutoGravityCaneHop:OnChanged(function()
        Setting.AutoGravityCaneHop = Options.AutoGravityCaneHop.Value
    end)
    AutoLongsword = Tabs.WeaponTab:AddToggle("AutoLongsword", {Title = "Auto Longsword", Default = Setting.AutoLongsword })

    AutoLongsword:OnChanged(function()
        Setting.AutoLongsword = Options.AutoLongsword.Value
    end)
    AutoLongswordHop = Tabs.WeaponTab:AddToggle("AutoLongswordHop", {Title = "Auto Longsword Hop", Default = Setting.AutoLongswordHop })

    AutoLongswordHop:OnChanged(function()
        Setting.AutoLongswordHop = Options.AutoLongswordHop.Value
    end)
    AutoJitte = Tabs.WeaponTab:AddToggle("AutoJitte", {Title = "Auto Jitte", Default = Setting.AutoJitte })

    AutoJitte:OnChanged(function()
        Setting.AutoJitte = Options.AutoJitte.Value
    end)
    AutoJitteHop = Tabs.WeaponTab:AddToggle("AutoJitteHop", {Title = "Auto Jitte Hop", Default = Setting.AutoJitteHop })

    AutoJitteHop:OnChanged(function()
        Setting.AutoJitteHop = Options.AutoJitteHop.Value
    end)
    AutoDragonTrident = Tabs.WeaponTab:AddToggle("AutoDragonTrident", {Title = "Auto Dragon Trident", Default = Setting.AutoDragonTrident })

    AutoDragonTrident:OnChanged(function()
        Setting.AutoDragonTrident = Options.AutoDragonTrident.Value
    end)
    AutoDragonTridentHop = Tabs.WeaponTab:AddToggle("AutoDragonTridentHop", {Title = "Auto Dragon Trident Hop", Default = Setting.AutoDragonTridentHop })

    AutoDragonTridentHop:OnChanged(function()
        Setting.AutoDragonTridentHop = Options.AutoDragonTridentHop.Value
    end)
    AutoPole = Tabs.WeaponTab:AddToggle("AutoPole", {Title = "Auto Pole", Default = Setting.AutoPole })

    AutoPole:OnChanged(function()
        Setting.AutoPole = Options.AutoPole.Value
    end)
    AutoPoleHop = Tabs.WeaponTab:AddToggle("AutoPoleHop", {Title = "Auto Pole Hop", Default = Setting.AutoPoleHop })

    AutoPoleHop:OnChanged(function()
        Setting.AutoPoleHop = Options.AutoPoleHop.Value
    end)
    AutoBuddySword = Tabs.WeaponTab:AddToggle("AutoBuddySword", {Title = "Auto Buddy Sword", Default = Setting.AutoBuddySwordHop })

    AutoBuddySword:OnChanged(function()
        Setting.AutoBuddySword = Options.AutoBuddySword.Value
    end)
    AutoBuddySwordHop = Tabs.WeaponTab:AddToggle("AutoBuddySwordHop", {Title = "Auto Buddy Sword Hop", Default = Setting.AutoBuddySwordHop })

    AutoBuddySwordHop:OnChanged(function()
        Setting.AutoBuddySwordHop = Options.AutoBuddySwordHop.Value
    end)
    AutoHallowScythe = Tabs.WeaponTab:AddToggle("AutoHallowScythe", {Title = "Auto Hallow Scythe", Default = Setting.AutoHallowScythe })

    AutoHallowScythe:OnChanged(function()
        Setting.AutoHallowScythe = Options.AutoHallowScythe.Value
    end)
    AutoHallowScytheHop = Tabs.WeaponTab:AddToggle("AutoHallowScytheHop", {Title = "Auto Hallow Scythe Hop", Default = Setting.AutoHallowScytheHop })

    AutoHallowScytheHop:OnChanged(function()
        Setting.AutoHallowScytheHop = Options.AutoHallowScytheHop.Value
    end)
    AutoDarkDagger = Tabs.WeaponTab:AddToggle("AutoDarkDagger", {Title = "Auto Dark Dagger", Default = Setting.AutoDarkDagger })

    AutoDarkDagger:OnChanged(function()
        Setting.AutoDarkDagger = Options.AutoDarkDagger.Value
    end)
    AutoDarkDaggerHop = Tabs.WeaponTab:AddToggle("AutoDarkDaggerHop", {Title = "Auto Dark Dagger Hop", Default = Setting.AutoDarkDaggerHop })

    AutoDarkDaggerHop:OnChanged(function()
        Setting.AutoDarkDaggerHop = Options.AutoDarkDaggerHop.Value
    end)
    AutoYama = Tabs.WeaponTab:AddToggle("AutoYama", {Title = "Auto Yama", Default = Setting.AutoYama })

    AutoYama:OnChanged(function()
        Setting.AutoYama = Options.AutoYama.Value
    end)
    Tabs.RaidT:AddSection("Manual")
    SelectRaidAChip = Tabs.RaidT:AddDropdown("SelectRaidAChip", {
        Title = "Select Raid",
        Values = {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix"},
        Multi = false,
        Default = 1,
    })
    SelectRaidAChip:OnChanged(function(Value)
        Setting.SelectedRaid = Value
    end)
    Tabs.RaidT:AddButton({
        Title = "Buy",
        Description = "",
        Callback = function()
            CommF:InvokeServer("RaidsNpc", "Select", __U[32](Setting.SelectedRaid))
        end
    })
    KillAura = Tabs.RaidT:AddToggle("KillAura", {Title = "Kill Aura", Default = false })

    KillAura:OnChanged(function()
        Setting.KillAura = Options.KillAura.Value
    end)



    DMGAura = Tabs.RaidT:AddToggle("DMGAura", {Title = "Damage Aura", Default = false })

    DMGAura:OnChanged(function()
        Setting.DMGAura = Options.DMGAura.Value
    end)
    TeleportToNextIsland = Tabs.RaidT:AddToggle("TeleportToNextIsland", {Title = "Teleport To Next Island", Default = false })

    TeleportToNextIsland:OnChanged(function()
        Setting.TeleportToNextIsland = Options.TeleportToNextIsland.Value
    end)
    Tabs.RaidT:AddSection("Auto")
    Tabs.RaidT:AddSection("Auto Raid")
    SelectRaidAChip2 = Tabs.RaidT:AddDropdown("SelectRaidAChip2", {
        Title = "Select Raid",
        Values = {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix"},
        Multi = false,
        Default = 1,
    })
    SelectRaidAChip2:OnChanged(function(Value)
        Setting.SelectedRaid2 = Value
    end)


    AutoRaid = Tabs.RaidT:AddToggle("AutoRaid", {Title = "Auto Raid", Default = Setting.AutoRaid })
    AutoRaid:OnChanged(function()
        Setting.AutoRaid = Options.AutoRaid.Value
    end)

    Tabs.StatsT:AddSection("Auto Stats")
    StatsValue = Tabs.StatsT:AddInput("StatsValue", {
        Title = "Point",
        Default = __U[32](Setting.StatsValue),
        Placeholder = "Placeholder",
        Numeric = true,
        Finished = false,
        Callback = function(Value)
            Setting.StatsValue = Value
        end
    })

    StatsValue:OnChanged(function()
        Setting.StatsValue = StatsValue.Value
    end)
    MeleeStats = Tabs.StatsT:AddToggle("MeleeStats", {Title = "Melee", Default = Setting.MeleeStats })
    MeleeStats:OnChanged(function()
        while Options.MeleeStats.Value do
            CommF:InvokeServer("AddPoint", "Melee", __U[31](Setting.StatsValue))
            __U[23]()
        end
    end)
    DefenseStats = Tabs.StatsT:AddToggle("DefenseStats", {Title = "Defense", Default = Setting.DefenseStats })
    DefenseStats:OnChanged(function()
        while Options.DefenseStats.Value do
            CommF:InvokeServer("AddPoint", "Melee", __U[31](Setting.StatsValue))
            __U[23]()
        end
    end)
    SwordStats = Tabs.StatsT:AddToggle("SwordStats", {Title = "Sword", Default = Setting.SwordStats })
    SwordStats:OnChanged(function()
        while Options.SwordStats.Value do
            CommF:InvokeServer("AddPoint", "Sword", __U[31](Setting.StatsValue))
            __U[23]()
        end
    end)
    GunStats = Tabs.StatsT:AddToggle("GunStats", {Title = "Gun", Default = Setting.GunStats })
    GunStats:OnChanged(function()
        while Options.GunStats.Value do
            CommF:InvokeServer("AddPoint", "Gun", __U[31](Setting.StatsValue))
            __U[23]()
        end
    end)
    BloxFruitStats = Tabs.StatsT:AddToggle("BloxFruitStats", {Title = "Blox Fruit", Default = Setting.BloxFruitStats })
    BloxFruitStats:OnChanged(function()
        while Options.BloxFruitStats.Value do
            CommF:InvokeServer("AddPoint", "Demon Fruit", __U[31](Setting.StatsValue))
            __U[23]()
        end
    end)

    Tabs.FruitT:AddSection("Main")
    BringFruit = Tabs.FruitT:AddToggle("BringFruit", {Title = "Bring Fruit", Default = Setting.BringFruit })

    BringFruit:OnChanged(function()
        Setting.BringFruit = Options.BringFruit.Value
    end)
    TpToFruit = Tabs.FruitT:AddToggle("TpToFruit", {Title = "Teleport To Fruit", Default = false })

    TpToFruit:OnChanged(function()
        Setting.TpToFruit = Options.TpToFruit.Value
    end)
    AutoRandomFruit = Tabs.FruitT:AddToggle("AutoRandomFruit", {Title = "Auto Spin Fruit", Default = Setting.AutoRandomFruit })

    AutoRandomFruit:OnChanged(function()
        while Options.AutoRandomFruit.Value do
            __VE["RlS"].Remotes.CommF_:InvokeServer("Cousin","Buy")
            __U[23](1)
        end
    end)

    AutoStoreFruit = Tabs.FruitT:AddToggle("AutoStoreFruit", {Title = "Auto Store Fruit", Default = Setting.AutoStoreFruit })

    AutoStoreFruit:OnChanged(function()
        while Options.AutoStoreFruit.Value do
            pcall(function()
                for _, tool in __U[7](__VE["LPs"].Character:GetChildren()) do
                    if tool:FindFirstChild("EatRemote") and Options.AutoStoreFruit.Value then
                        local FruitToStore = tool:GetAttribute("OriginalName")
                        if FruitToStore then
                            __VE["RlS"].Remotes.CommF_:InvokeServer("StoreFruit", FruitToStore, tool)
                        else
                            __U[2]("Attribute 'OriginalName' not found for tool:", tool.Name)
                        end
                    end
                end
                __U[23]()
                for _, tool in __U[7](Backpack:GetChildren()) do
                    if tool and tool:FindFirstChild("EatRemote") and Options.AutoStoreFruit.Value then
                        Setting.PauseAutoEqu = true
                        pcall(function()
                            local FruitToStore = tool:GetAttribute("OriginalName")
                            if FruitToStore then
                                EquipWeapon(__U[32](tool.Name))
                                wait()
                                __VE["RlS"].Remotes.CommF_:InvokeServer("StoreFruit", FruitToStore, tool)
                            else
                                __U[2]("Attribute 'OriginalName' not found for tool:", tool.Name)
                            end
                        end)
                        Setting.PauseAutoEqu = false
                    end
                end
            end)
            __U[23]()
        end
    end)
    AutoDropFruit = Tabs.FruitT:AddToggle("AutoDropFruit", {Title = "Auto Drop Fruit", Default = Setting.AutoDropFruit })

    AutoDropFruit:OnChanged(function()
        while Options.AutoDropFruit.Value do
            pcall(function()
                for _, v in __U[7](__VE["LPs"].Character:GetChildren()) do
                    if v:FindFirstChild("EatRemote") and Options.AutoDropFruit.Value then
                        v.EatRemote:InvokeServer("Drop")
                    end
                end
                __U[23]()
                for _, v in __U[7](Backpack:GetChildren()) do
                    if v and v:FindFirstChild("EatRemote") and Options.AutoDropFruit.Value then
                        Setting.PauseAutoEqu = true
                        pcall(function()
                            EquipWeapon(__U[32](v.Name))
                            wait()
                            v.EatRemote:InvokeServer("Drop")
                        end)
                        Setting.PauseAutoEqu = false
                    end
                end
            end)
            __U[23]()
        end
    end)
    Tabs.FruitT:AddSection("Selectable") -- Full Access Settings
    SelectDropFruit = Tabs.FruitT:AddDropdown("SelectDropFruit", {
        Title = "Fruit To Drop",
        Description = "",
        Values = FruitList,
        Multi = true,
        Default = Setting.SelectDropFruit,
    })
    SelectDropFruit:OnChanged(function(SelectedValues)
        Setting.SelectDropFruit = {}
        for _, Value in ipairs(SelectedValues) do
            table.insert(Setting.SelectDropFruit, Value)
        end
    end)
    AutoDropSelectFruit = Tabs.FruitT:AddToggle("AutoDropSelectFruit", {Title = "Auto Drop Select Fruit", Default = Setting.AutoDropSelectFruit })

    AutoDropSelectFruit:OnChanged(function()
        Setting.AutoDropSelectFruit = Options.AutoDropSelectFruit.Value
        while Options.AutoDropSelectFruit.Value do
            pcall(function()
                for _, v in __U[7](__VE["LPs"].Character:GetChildren()) do
                    if table.find(Setting.SelectDropFruit, __U[32](v.Name)) and v:FindFirstChild("EatRemote") and Options.AutoDropSelectFruit.Value then
                        v.EatRemote:InvokeServer("Drop")
                    end
                end
                __U[23]()
                for _, v in __U[7](Backpack:GetChildren()) do
                    if v and table.find(Setting.SelectDropFruit, __U[32](v.Name)) and v:FindFirstChild("EatRemote") and Options.AutoDropSelectFruit.Value then
                        Setting.PauseAutoEqu = true
                        pcall(function()
                            EquipWeapon(__U[32](v.Name))
                            wait()
                            v.EatRemote:InvokeServer("Drop")
                        end)
                        Setting.PauseAutoEqu = false
                    end
                end
            end)
            __U[23]()
        end
    end)
    SelectStoreFruit = Tabs.FruitT:AddDropdown("SelectStoreFruit", {
        Title = "Fruit To Store",
        Description = "",
        Values = FruitList,
        Multi = true,
        Default = Setting.SelectStoreFruit,
    })
    SelectStoreFruit:OnChanged(function(SelectedValues)
        Setting.SelectStoreFruit = {}
        for _, Value in ipairs(SelectedValues) do
            table.insert(Setting.SelectStoreFruit, Value)
        end
    end)
    AutoStoreSelectFruit = Tabs.FruitT:AddToggle("AutoStoreSelectFruit", {Title = "Auto Store Select Fruit", Default = false })

    AutoStoreSelectFruit:OnChanged(function()
        Setting.AutoStoreSelectFruit = Options.AutoStoreSelectFruit.Value
        while Options.AutoStoreFruit.Value do
            pcall(function()
                for _, tool in __U[7](__VE["LPs"].Character:GetChildren()) do
                    if table.find(Setting.SelectStoreFruit, __U[32](tool.Name)) and tool:FindFirstChild("EatRemote") and Options.AutoStoreFruit.Value then
                        local FruitToStore = tool:GetAttribute("OriginalName")
                        if FruitToStore then
                            __VE["RlS"].Remotes.CommF_:InvokeServer("StoreFruit", FruitToStore, tool)
                        else
                            __U[2]("Attribute 'OriginalName' not found for tool:", tool.Name)
                        end
                    end
                end
                __U[23]()
                for _, tool in __U[7](Backpack:GetChildren()) do
                    if tool and table.find(Setting.SelectStoreFruit, __U[32](tool.Name)) and tool:FindFirstChild("EatRemote") and Options.AutoStoreFruit.Value then
                        Setting.PauseAutoEqu = true
                        pcall(function()
                            local FruitToStore = tool:GetAttribute("OriginalName")
                            if FruitToStore then
                                EquipWeapon(__U[32](tool.Name))
                                wait()
                                __VE["RlS"].Remotes.CommF_:InvokeServer("StoreFruit", FruitToStore, tool)
                            else
                                __U[2]("Attribute 'OriginalName' not found for tool:", tool.Name)
                            end
                        end)
                        Setting.PauseAutoEqu = false
                    end
                end
            end)
            __U[23]()
        end
    end)
    Tabs.FruitT:AddSection("Snipe")
    FruitList = {
        "Bomb-Bomb",
        "Spike-Spike",
        "Chop-Chop",
        "Spring-Spring",
        "Kilo-Kilo",
        "Spin-Spin",
        "Bird: Falcon",
        "Smoke-Smoke",
        "Flame-Flame",
        "Ice-Ice",
        "Sand-Sand",
        "Dark-Dark",
        "Revive-Revive",
        "Diamond-Diamond",
        "Light-Light",
        "Love-Love",
        "Rubber-Rubber",
        "Barrier-Barrier",
        "Magma-Magma",
        "Door-Door",
        "Quake-Quake",
        "Human-Human: Buddha",
        "String-String",
        "Bird-Bird: Phoenix",
        "Rumble-Rumble",
        "Paw-Paw",
        "Gravity-Gravity",
        "Dough-Dough",
        "Venom-Venom",
        "Shadow-Shadow",
        "Control-Control",
        "Soul-Soul",
        "Dragon-Dragon",
        "Leopard-Leopard"
    }
    SelectFruitToSnipe = Tabs.FruitT:AddDropdown("SelectFruitToSnipe", {
        Title = "Select Fruit",
        Values = FruitList,
        Multi = false,
        Default = 1,
    })
    SelectFruitToSnipe:OnChanged(function(Value)
        Setting.SelectFruitToSnipe = Options.SelectFruitToSnipe.Value
    end)
    Tabs.FruitT:AddButton({
        Title = "Snipe",
        Description = "AHAHAHA",
        Callback = function()
            CommF:InvokeServer("GetFruits")
            CommF:InvokeServer("PurchaseRawFruit", __U[32](Setting.SelectFruitToSnipe))
        end
    })

    AutoSnipeFruit = Tabs.FruitT:AddToggle("AutoSnipeFruit", {Title = "Auto Snipe Fruit", Default = false })

    AutoSnipeFruit:OnChanged(function()
        while Options.AutoSnipeFruit.Value do
            CommF:InvokeServer("GetFruits")
            CommF:InvokeServer("PurchaseRawFruit", __U[32](Setting.SelectFruitToSnipe))
            __U[23](5)
        end
    end)

    Tabs.MirageARaceT:AddSection("Mirage")
    Tabs.MirageARaceT:AddSection("Auto")
    SelectBoatForMirageIsland = Tabs.MirageARaceT:AddDropdown("SelectBoatForMirageIsland", {
        Title = "Select Boat",
        Values = {"PirateSloop", "Enforcer", "RocketBoost", "Dinghy", "PirateBasic", "PirateBrigade"},
        Multi = false,
        Default = 1,
    })
    SelectBoatForMirageIsland:OnChanged(function(Value)
        Setting.SelectBoatForMirageIsland = Options.SelectBoatForMirageIsland.Value
    end)
    AutoFindMirageIsland = Tabs.MirageARaceT:AddToggle("AutoFindMirageIsland", {Title = "Auto Find Mirage Island", Default = false })
    AutoFindMirageIsland:OnChanged(function()
        Setting.AutoFindMirageIsland = Options.AutoFindMirageIsland.Value --🟡, รอแก้AutoSeaEvent
    end)
    Tabs.MirageARaceT:AddButton({
        Title = "Reveal Fruit",
        Description = "This will tell you what fruit is selling in Mirage Island",
        Callback = function()
            --🔴, เห็นเขาทำกันแต่ไม่รู้ว่าทำไง
        end
    })
    Tabs.MirageARaceT:AddSection("Maunal")
    SelectBoatForAutoSpawn = Tabs.MirageARaceT:AddDropdown("SelectBoatForAutoSpawn", {
        Title = "Select Boat",
        Values = {"PirateSloop", "Enforcer", "RocketBoost", "Dinghy", "PirateBasic", "PirateBrigade"},
        Multi = false,
        Default = 1,
    })
    SelectBoatForAutoSpawn:OnChanged(function(Value)
        Setting.SelectBoatForMirageIsland = Options.SelectBoatForMirageIsland.Value
    end)
    AutoSpawnBoatMirageTab = Tabs.MirageARaceT:AddToggle("AutoSpawnBoatMirageTab", {Title = "Auto Spawn Ship", Default = false })
    AutoSpawnBoatMirageTab:OnChanged(function()
        Setting.AutoSpawnBoatMirageTab = Options.AutoSpawnBoatMirageTab.Value
    end)
    Tabs.MirageARaceT:AddButton({
        Title = "Teleport Ship To You",
        Description = "",
        Callback = function()
            --🔴
            --tpwithseat()
        end
    })
    Tabs.MirageARaceT:AddSection("Race V1-V3")
    YourRace = Tabs.MirageARaceT:AddDropdown("YourRace", {
        Title = "Select Race",
        Values = {"Mink", "Sky", "Fish", "Human"}, --🟡, มีไม่ครบ
        Multi = false,
        Default = 1,
    })
    YourRace:OnChanged(function(Value)
        Setting.YourRace = Value
    end)

    AutoRaceV2 = Tabs.MirageARaceT:AddToggle("AutoRaceV2", {Title = "Auto Evo Race V2", Default = false })

    AutoRaceV2:OnChanged(function()
        Setting.AutoRaceV2 = Options.AutoRaceV2.Value
    end)
    AutoRaceV3 = Tabs.MirageARaceT:AddToggle("AutoRaceV3", {Title = "Auto Evo Race V3", Default = false })

    AutoRaceV3:OnChanged(function()
        Setting.AutoRaceV3 = Options.AutoRaceV3.Value
    end)
    Tabs.MirageARaceT:AddSection("Race V4")
    AutoRaceV4 = Tabs.MirageARaceT:AddToggle("AutoRaceV4", {Title = "Auto Evo Race V4", Default = false })

    AutoRaceV4:OnChanged(function()
        Setting.AutoRaceV4 = Options.AutoRaceV4.Value
    end)
    Tabs.MirageARaceT:AddButton({
        Title = "Teleport To Temple Of Time",
        Description = "",
        Callback = function()
            CommF:InvokeServer("requestEntrance",__U[57](28282.5703125, 14896.8505859375, 105.1042709350586))
        end
    })
    Tabs.MirageARaceT:AddButton({
        Title = "Teleport To Clock",
        Description = "",
        Callback = function()
            if (__VE["LPs"].Character.HumanoidRootPart.Position - __U[57](28282.5703125, 14896.8505859375, 105.1042709350586)).Magnitude > 1000 then
                CommF:InvokeServer("requestEntrance",__U[57](28282.5703125, 14896.8505859375, 105.1042709350586))
            elseif (__VE["LPs"].Character.HumanoidRootPart.Position - __U[57](28282.5703125, 14896.8505859375, 105.1042709350586)).Magnitude < 1000 then
                __U[19](0.5)
                Teleport(__U[26](28973.0879, 14889.9756, -120.298691))
            end
        end
    })
    Tabs.MirageARaceT:AddButton({
        Title = "Teleport To Lever",
        Description = "",
        Callback = function()
            
        end
    })
    Tabs.MirageARaceT:AddButton({
        Title = "Teleport To Your Race Gate",
        Description = "",
        Callback = function()
            if (__VE["LPs"].Character.HumanoidRootPart.Position - __U[57](28282.5703125, 14896.8505859375, 105.1042709350586)).Magnitude > 1000 then
                CommF:InvokeServer("requestEntrance",__U[57](28282.5703125, 14896.8505859375, 105.1042709350586))
            elseif (__VE["LPs"].Character.HumanoidRootPart.Position - __U[57](28282.5703125, 14896.8505859375, 105.1042709350586)).Magnitude < 1000 then
                if __VE["LPs"].Data.Race.Value == "Fishman" then
                    tpwithnewtpbyme2(__U[26](28224.056640625, 14889.4267578125, -210.5872039794922), 5)
                elseif __VE["LPs"].Data.Race.Value == "Human" then
                    tpwithnewtpbyme2(__U[26](29237.294921875, 14889.4267578125, -206.94955444335938), 5)
                elseif __VE["LPs"].Data.Race.Value == "Cyborg" then
                    tpwithnewtpbyme2(__U[26](28492.4140625, 14894.4267578125, -422.1100158691406), 5)
                elseif __VE["LPs"].Data.Race.Value == "Skypiea" then
                    tpwithnewtpbyme2(__U[26](28967.408203125, 14918.0751953125, 234.31198120117188), 5)
                elseif __VE["LPs"].Data.Race.Value == "Ghoul" then
                    tpwithnewtpbyme2(__U[26](28672.720703125, 14889.1279296875, 454.5961608886719), 5)
                elseif __VE["LPs"].Data.Race.Value == "Mink" then
                    tpwithnewtpbyme2(__U[26](29020.66015625, 14889.4267578125, -379.2682800292969), 5)
                end
            end
        end
    })
    Tabs.SeaEventT:AddSection("Ship")
    local ShipSpeedSlider = Tabs.SeaEventT:AddSlider("ShipSpeedSlider", {
        Title = "Ship Speed",
        Description = "",
        Default = 0,
        Min = 0,
        Max = 1000,
        Rounding = 1,
        Callback = function(Value)
            
        end
    })
    ShipSpeedSlider:OnChanged(function(Value)
        Value = Value
    end)
    Tabs.SeaEventT:AddButton({
        Title = "Set Ship Speed",
        Description = "I recommanded max is 360",
        Callback = function()
            __U[6](function()
                __VE["LPs"].Character.Humanoid.SeatPart.MaxSpeed = ShipSpeedSlider.Value
            end)
        end
    })
    Tabs.SeaEventT:AddSection("Main")
    local SelectShipISeaEvent = Tabs.SeaEventT:AddDropdown("SelectShipISeaEvent", {
        Title = "Select Ship",
        Values = {"PirateSloop", "Enforcer", "RocketBoost", "Dinghy", "PirateBasic", "PirateBrigade"},
        Multi = false,
        Default = 1,
    })
    SelectShipISeaEvent:OnChanged(function(Value)
        Setting.SelectShipISeaEvent = Value
    end)
    SelectIgnoreEvent = Tabs.SeaEventT:AddDropdown("SelectIgnoreEvent", {
        Title = "Select Ignore Events",
        Description = "",
        Values = {"Piranha", "Fish Crew Member", "SeaBeast", "Shark", "Terrorshark"},
        Multi = true,
        Default = {"nil", "nil"},
    })
    SelectIgnoreEvent:OnChanged(function(SelectedValues)
        Setting.IgnoreSeaEventList = {}
        for _, Value in ipairs(SelectedValues) do
            table.insert(Setting.IgnoreSeaEventList, Value)
        end
    end)
    SelectSeaLevel = Tabs.SeaEventT:AddDropdown("SelectSeaLevel", {
        Title = "Select Levels",
        Values = {"1", "2", "3", "4", "5", "6"},
        Multi = false,
        Default = 1,
    })
    SelectSeaLevel:OnChanged(function(Value)
        Setting.SelectSeaLevel = Options.SelectSeaLevel.Value
    end)
    AutoSeaEvent = Tabs.SeaEventT:AddToggle("AutoSeaEvent", {Title = "Auto Sea Events", Default = false })

    AutoSeaEvent:OnChanged(function()
        Setting.AutoSeaEvent = Options.AutoSeaEvent.Value
    end)
    AutoSeaBeastISeaEvent = Tabs.SeaEventT:AddToggle("AutoSeaBeastISeaEvent", {Title = "Auto Sea Beasts", Default = false })

    AutoSeaBeastISeaEvent:OnChanged(function()
        Setting.AutoSeaBeastISeaEvent = Options.AutoSeaBeastISeaEvent.Value
    end)
    Tabs.SeaEventT:AddButton({
        Title = "Teleport Ship To You",
        Description = "",
        Callback = function()
            
        end
    })

    Tabs.PlayerTab:AddSection("Local Player")
    AutoBuso = Tabs.PlayerTab:AddToggle("AutoBuso", {Title = "Auto Buso", Default = false })

    AutoBuso:OnChanged(function()
        Setting.AutoBuso = Options.AutoBuso.Value
    end)

    AutoKen = Tabs.PlayerTab:AddToggle("AutoKen", {Title = "Auto Ken", Default = false })

    AutoKen:OnChanged(function()
        Setting.AutoKen = Options.AutoKen.Value
    end)
    WalkSpeedSlider = Tabs.PlayerTab:AddSlider("WalkSpeedSlider", {
        Title = "WalkSpeed",
        Description = "",
        Default = 16,
        Min = 0,
        Max = 360,
        Rounding = 1,
        Callback = function(Value)
            Setting.WalkSpeedSet = __U[31](Value)
        end
    })

    WalkSpeedSlider:OnChanged(function(Value)
        Setting.WalkSpeedSet = __U[31](Value)
    end)
    JumpPowerSlider = Tabs.PlayerTab:AddSlider("JumpPowerSlider", {
        Title = "JumpPower",
        Description = "",
        Default = 16,
        Min = 0,
        Max = 360,
        Rounding = 1,
        Callback = function(Value)
            Setting.JumpPowerSet = __U[31](Value)
        end
    })

    JumpPowerSlider:OnChanged(function(Value)
        Setting.JumpPowerSet = __U[31](Value)
    end)
    FpsCapSlider = Tabs.PlayerTab:AddSlider("FpsCapSlider", {
        Title = "Fps Cap",
        Description = "",
        Default = 60,
        Min = 0,
        Max = 500,
        Rounding = 1,
        Callback = function(Value)
            setfpscap(Value)
        end
    })

    FpsCapSlider:OnChanged(function(Value)
        setfpscap(Value)
    end)
    ToggleWalkSpeed = Tabs.PlayerTab:AddToggle("ToggleWalkSpeed", {Title = "Enabled/Disabled WalkSpeed", Default = false })

    ToggleWalkSpeed:OnChanged(function()
        Setting.ToggleWalkSpeed = Options.ToggleWalkSpeed.Value
    end)
    ToggleJumpPower = Tabs.PlayerTab:AddToggle("ToggleJumpPower", {Title = "Enabled/Disabled JumpPower", Default = false })

    ToggleJumpPower:OnChanged(function()
        Setting.ToggleJumpPower = Options.ToggleJumpPower.Value
    end)
    coroutine.wrap(function()
        while __U[23](0.5) do
            if Setting.ToggleWalkSpeed then
                if __VE["LPs"].Character.Humanoid.WalkSpeed ~= __U[31](Setting.WalkSpeedSet) then
                    __VE["LPs"].Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                        if Setting.ToggleWalkSpeed then
                            __VE["LPs"].Character.Humanoid.WalkSpeed = __U[31](Setting.WalkSpeedSet)
                        end
                    end)
                    __VE["LPs"].Character.Humanoid.WalkSpeed = 1
                end
            end
        end
        while __U[23](0.5) do
            if Setting.ToggleJumpPower then
                if __VE["LPs"].Character.Humanoid.JumpPower ~= __U[31](Setting.JumpPowerSet) then
                    __VE["LPs"].Character.Humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
                        if Setting.ToggleJumpPower then
                            __VE["LPs"].Character.Humanoid.JumpPower = __U[31](Setting.JumpPowerSet)
                        end
                    end)
                    __VE["LPs"].Character.Humanoid.JumpPower = 1
                end
            end
        end
    end)()
    ToggleFly = Tabs.PlayerTab:AddToggle("ToggleFly", {Title = "Fly", Default = false })

    ToggleFly:OnChanged(function()
        Setting.ToggleFly = Options.ToggleFly.Value
        if Setting.ToggleFly then
            FLYING = Setting.ToggleFly
            while not __VE["LPs"] or not __VE["LPs"].Character or not __VE["LPs"].Character:FindFirstChild('HumanoidRootPart') or not __VE["LPs"].Character:FindFirstChild('Humanoid') or not cmdm do
                wait()
            end
    
            local T = __VE["LPs"].Character.HumanoidRootPart
            local SPEED = 0
    
            function FLY()
                local BG = Instance.new('BodyGyro', T)
                local BV = Instance.new('BodyVelocity', T)
                BG.P = 9e4
                BG.maxTorque = Vector3.new(9e9, 9e9, 9e9) -- 9e9 = inf
                BG.cframe = T.CFrame
                BV.velocity = Vector3.new(0, 0, 0)
                BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
    
                spawn(function()
                    while FLYING do
                        if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
                            SPEED = 50
                        elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
                            SPEED = 0
                        end
    
                        if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
                            BV.velocity = ((__VE["WS"].CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((__VE["WS"].CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - __VE["WS"].CurrentCamera.CoordinateFrame.p)) * SPEED
                        else
                            BV.velocity = Vector3.new(0, 0, 0)
                        end
    
                        BG.cframe = __VE["WS"].CurrentCamera.CoordinateFrame
                        wait()
                    end
    
                    CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                    SPEED = 0
    
                    BG:Destroy()
                    BV:Destroy()
                    __VE["LPs"].Character.Humanoid.PlatformStand = false
                end)
            end
    
            cmdm.KeyDown:connect(function(KEY)
                if KEY:lower() == 'w' then
                    if vfly then
                        CONTROL.F = speedofthevfly
                    else
                        CONTROL.F = speedofthefly
                    end
                elseif KEY:lower() == 's' then
                    if vfly then
                        CONTROL.B = -speedofthevfly
                    else
                        CONTROL.B = -speedofthefly
                    end
                elseif KEY:lower() == 'a' then
                    if vfly then
                        CONTROL.L = -speedofthevfly
                    else
                        CONTROL.L = -speedofthefly
                    end
                elseif KEY:lower() == 'd' then
                    if vfly then
                        CONTROL.R = speedofthevfly
                    else
                        CONTROL.R = speedofthefly
                    end
                elseif KEY:lower() == 'y' then
                    if vfly then
                        CONTROL.Q = speedofthevfly * 2
                    else
                        CONTROL.Q = speedofthefly * 2
                    end
                elseif KEY:lower() == 't' then
                    if vfly then
                        CONTROL.E = -speedofthevfly * 2
                    else
                        CONTROL.E = -speedofthefly * 2
                    end
                end
            end)
    
            cmdm.KeyUp:connect(function(KEY)
                if KEY:lower() == 'w' then
                    CONTROL.F = 0
                elseif KEY:lower() == 's' then
                    CONTROL.B = 0
                elseif KEY:lower() == 'a' then
                    CONTROL.L = 0
                elseif KEY:lower() == 'd' then
                    CONTROL.R = 0
                elseif KEY:lower() == 'y' then
                    CONTROL.Q = 0
                elseif KEY:lower() == 't' then
                    CONTROL.E = 0
                end
            end)
    
            FLY()
        else
            FLYING = Setting.ToggleFly
        end
    end)
    ToggleNoClip = Tabs.PlayerTab:AddToggle("ToggleNoClip", {Title = "NoClip", Default = Setting.ToggleNoClip })

    ToggleNoClip:OnChanged(function()
        if Options.ToggleNoClip.Value then
            for _,v in __U[7](game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                    v.CanCollide = false
                end
            end
        else
            for _,v in __U[7](game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                    v.CanCollide = true
                end
            end
        end
    end)
    ToggleFloat = Tabs.PlayerTab:AddToggle("ToggleFloat", {Title = "Float", Default = false })

    ToggleFloat:OnChanged(function()
        Setting.ToggleFloat = Options.ToggleFloat.Value
    end)
    ToggleDMGAura = Tabs.PlayerTab:AddToggle("ToggleDMGAura", {Title = "DMGAura", Default = false })

    ToggleDMGAura:OnChanged(function()
        Setting.ToggleDMGAura = Options.ToggleDMGAura.Value
    end)
    Tabs.PlayerTab:AddButton({
        Title = "Change To Pirate",
        Description = "",
        Callback = function()
            CommF:InvokeServer("SetTeam","Pirates") 
        end
    })
    Tabs.PlayerTab:AddButton({
        Title = "Change To Marine",
        Description = "",
        Callback = function()
            CommF:InvokeServer("SetTeam","Marines") 
        end
    })
    Tabs.PlayerTab:AddSection("Aim")
    SelectPlayerToAim = Tabs.PlayerTab:AddDropdown("SelectPlayerToAim", {
        Title = "Select Player",
        Values = {"NNigga"},
        Multi = false,
        Default = 1,
    })
    SelectPlayerToAim:OnChanged(function(Value)
        Setting.SelectPlayerToAim = __U[32](Value)
    end)
    ToggleAimBotSkill = Tabs.PlayerTab:AddToggle("ToggleAimBotSkill", {Title = "Aimbot Skill", Default = false })

    ToggleAimBotSkill:OnChanged(function()
        Setting.ToggleAimBotSkill = Options.ToggleAimBotSkill.Value
    end)
    ToggleAimBotGun = Tabs.PlayerTab:AddToggle("ToggleAimBotGun", {Title = "Aimbot Gun", Default = false })

    ToggleAimBotGun:OnChanged(function()
        Setting.ToggleAimBotGun = Options.ToggleAimBotGun.Value
    end)
    Tabs.PlayerTab:AddSection("Bounty")
    Tabs.Main:AddButton({
        Title = "Player Quest",
        Description = "",
        Callback = function()
            CommF:InvokeServer("PlayerHunter")
        end
    })
    SelectPlayerToAutoBounty = Tabs.PlayerTab:AddDropdown("SelectPlayerToAutoBounty", {
        Title = "Select Player",
        Values = {"rigga56"},
        Multi = false,
        Default = 1,
    })
    SelectPlayerToAutoBounty:OnChanged(function(Value)
        Setting.SelectPlayerToAutoBounty = __U[32](Value)
    end)
    AutoKillSelectedPlayer = Tabs.PlayerTab:AddToggle("AutoKillSelectedPlayer", {Title = "Auto Kill Selected Player", Default = false })

    AutoKillSelectedPlayer:OnChanged(function()
        Setting.AutoKillSelectedPlayer = Options.AutoKillSelectedPlayer.Value
    end)
    AutoFarmBounty = Tabs.PlayerTab:AddToggle("AutoFarmBounty", {Title = "Auto Bounty", Default = false })

    AutoFarmBounty:OnChanged(function()
        Setting.AutoFarmBounty = Options.AutoFarmBounty.Value
    end)
    AutoFarmBountyHop = Tabs.PlayerTab:AddToggle("AutoFarmBountyHop", {Title = "Auto Bounty Hop", Default = Setting.AutoFarmBountyHop })

    AutoFarmBountyHop:OnChanged(function()
        Setting.AutoFarmBountyHop = Options.AutoFarmBountyHop.Value
    end)
    Tabs.PlayerTab:AddSection("Visual")
    Tabs.Main:AddButton({
        Title = "In Combat",
        Description = "",
        Callback = function()
            __VE["PsG"].Main.InCombat.Visible = not game:GetService("Players").LocalPlayer.__VE["PsG"].Main.InCombat.Visible
        end
    })
    Tabs.Main:AddButton({
        Title = "SafeZone",
        Description = "",
        Callback = function()
            
        end
    })
    LevelVisual = Tabs.PlayerTab:AddInput("LevelVisual", {
        Title = "Level",
        Default = __VE["PsG"].Main.Level.Text,
        Placeholder = "Placeholder",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
           __VE["PsG"].Main.Level.Text = "Lv. " .. Value
        end
    })

    LevelVisual:OnChanged(function()
        __VE["PsG"].Main.Level.Text = "Lv. " .. LevelVisual.Value
    end)
    BeliVisual = Tabs.PlayerTab:AddInput("BeliVisual", {
        Title = "Beli",
        Default = __VE["PsG"].Main.Beli.Text,
        Placeholder = "Placeholder",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
            __VE["PsG"].Main.Beli.Text = "$" .. BeliVisual
        end
    })

    BeliVisual:OnChanged(function()
        __VE["PsG"].Main.Beli.Text = "$" .. BeliVisual.Value
    end)
    FragmentVisual = Tabs.PlayerTab:AddInput("FragmentVisual", {
        Title = "Fragment",
        Default = __VE["PsG"].Main.Fragments.Text,
        Placeholder = "Placeholder",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
            __VE["PsG"].Main.Fragments.Text = "ƒ" .. FragmentVisual.Value
        end
    })

    FragmentVisual:OnChanged(function()
        __VE["PsG"].Main.Fragments.Text = "ƒ" .. FragmentVisual.Value
    end)
    StaminaVisual = Tabs.PlayerTab:AddInput("StaminaVisual", {
        Title = "Stamina",
        Default = nil,
        Placeholder = "Placeholder",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
            
        end
    })

    StaminaVisual:OnChanged(function()
        
    end)
    HpVisual = Tabs.PlayerTab:AddInput("HpVisual", {
        Title = "HP",
        Default = nil,
        Placeholder = "Placeholder",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
            
        end
    })

    HpVisual:OnChanged(function()
        
    end)
    SelectUiToHide = Tabs.PlayerTab:AddDropdown("SelectUiToHide", {
        Title = "Select Ui",
        Description = "dont hide dad location becuz u dont have 😭",
        Values = {"dad location", "mom location", "gay"},
        Multi = true,
        Default = {"dad location"},
    })

    SelectUiToHide:OnChanged(function(SelectedValues)
        Setting.SelectUiToHide = {}
        for _, Value in ipairs(SelectedValues) do
            table.insert(Setting.SelectUiToHide, Value)
        end
    end)
    Tabs.PlayerTab:AddButton({
        Title = "Hide Selected UI",
        Description = "",
        Callback = function()
            
        end
    })
    Tabs.PlayerTab:AddButton({
        Title = "Show Selected UI",
        Description = "",
        Callback = function()
            
        end
    })

    Tabs.TpTab:AddButton({
        Title = "Stop Teleport",
        Description = "Can be use with every teleport in this script",
        Callback = function()
            StopTeleport()
        end
    })
    Tabs.TpTab:AddSection("Teleport")
    if WorldCheck["First Sea"] then
        __Place = {"Pirate Starter", "Marine Starter", "Middle Town", "Jungle", "Pirate Village", "Dessert", "Frozen Village", "Marine Fortress", "Skyland 1st", "Skyland 2nd", "Skyland 3rd", "Skyland 4th", "Skyland 5th", "Colosseum", "Prison", "Underwater", "Magma Village", "Fountain City"}
    elseif WorldCheck["Second Sea"] then
        __Place = {"Kingdom Of Rose", "Colosseum", "Secret Room (Race v3)", "Cafe", "Front Factory", "Factory", "Swan Room", "Green Zone", "Graveyard Island", "Cursed Ship", "Hot Island", "Cold Island", "Raid", "Law Raid", "Snow Mountain", "Dark Arena", "Ice Castle", "Forgotten Island", "Usoup's Island", "What is this Island"}
    elseif WorldCheck["Third Sea"] then
        __Place = {"Mansion", "Port Town", "Great Tree", "Castle On The Sea", "MiniSky", "Hydra Island", "Floating Turtle", "Haunted Castle", "Ice Cream Island", "Peanut Island", "Cake Island"}
    end
    
    WhereToTp = Tabs.TpTab:AddDropdown("WhereToTp", {
        Title = "Select Location",
        Values = __Place,
        Multi = false,Default = 1
    })

    WhereToTp:OnChanged(function(Value)
        SelectTpSpot = Value
    end)
    Tabs.TpTab:AddButton({
        Title = "Teleport",
        Description = "",
        Callback = function()
            TpOfTpTab()
            __U[23](0.175)
            if InstanceTp then
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 100 then
                    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrameTargetTp)
                    wait()
                    game.Players.LocalPlayer.Character.Humanoid.Health = 0
                    repeat __U[23]() until game.Players.LocalPlayer.Character.Humanoid
                    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrameTargetTp)
                    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrameTargetTp)
                    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrameTargetTp)
                end
            else
                if (CFrameTargetTp.Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 100 then
                    tpwithnewtpbyme2(CFrameTargetTp, 5)
                end
            end
        end
    })
    Tabs.TpTab:AddSection("Sea")
    Tabs.TpTab:AddButton({
        Title = "Sea 1",
        Description = "",
        Callback = function()
            __VE["RlS"].Remotes.CommF_:InvokeServer("TravelMain")
        end
    })
    Tabs.TpTab:AddButton({
        Title = "Sea 2",
        Description = "",
        Callback = function()
            __VE["RlS"].Remotes.CommF_:InvokeServer("TravelDressrosa")
        end
    })
    Tabs.TpTab:AddButton({
        Title = "Sea 3",
        Description = "",
        Callback = function()
            __VE["RlS"].Remotes.CommF_:InvokeServer("TravelZou")
        end
    })

    

    Tabs.ShopTab:AddSection("Main")
    Tabs.ShopTab:AddButton({
        Title = "Color",
        Description = "",
        Callback = function()
            game:GetService("Players").LocalPlayer.__VE["PsG"].Main.Colors.Visible = true
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Fruit Shop",
        Description = "",
        Callback = function()
            game:GetService("Players").LocalPlayer.__VE["PsG"].Main.FruitShop.Visible = true
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Title",
        Description = "",
        Callback = function()
            game:GetService("Players").LocalPlayer.__VE["PsG"].Main.Titles.Visible = true
        end
    })
    Tabs.ShopTab:AddSection("Abilities")
    Buy = {}
    function Buy:Abilities(_,__)
        CommF:InvokeServer(_,__)
    end
    Tabs.ShopTab:AddButton({
        Title = "Buy Geppo",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyHaki","Geppo")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Buso Haki",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyHaki","Buso")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Soru",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyHaki","Soru")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Observation(Ken) Haki",
        Description = "",
        Callback = function()
            Buy:Abilities("KenTalk","Buy")
        end
    })
    Tabs.ShopTab:AddSection("Fighting Style")
    Tabs.ShopTab:AddButton({
        Title = "Buy Black Leg",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyBlackLeg")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Electro",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyElectro")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Fishman Karate",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyFishmanKarate")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Dragon Claw",
        Description = "",
        Callback = function()
            Buy:Abilities("BlackbeardReward","DragonClaw","1")
            Buy:Abilities("BlackbeardReward","DragonClaw","2")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Superhuman",
        Description = "",
        Callback = function()
            Buy:Abilities("BuySuperhuman")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Death Step",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyDeathStep")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Sharkman Karate",
        Description = "",
        Callback = function()
            Buy:Abilities("BuySharkmanKarate",true)
    Buy:Abilities("BuySharkmanKarate")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Electric Claw",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyElectricClaw")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Dragon Talon",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyDragonTalon")
        end
    })
    Tabs.ShopTab:AddSection("Accessory")
    Tabs.ShopTab:AddButton({
        Title = "Tomoe Ring",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyItem","Tomoe Ring")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Black Cape",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyItem","Black Cape")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Swordsman Hat",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyItem","Swordsman Hat")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Ghoul Mask",
        Description = "",
        Callback = function()
            __VE["RlS"]:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("Ectoplasm", "BuyCheck", 2)
            __U[23]()
            __VE["RlS"]:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("Ectoplasm", "Buy", 2)
        end
    })
    Tabs.ShopTab:AddSection("Sword")
    Tabs.ShopTab:AddButton({
        Title = "Cutlass",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyItem","Cutlass")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Katana",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyItem","Katana")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Iron Mace",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyItem","Iron Mace")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Duel Katana",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyItem","Duel Katana")        
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Triple Katana",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyItem","Triple Katana")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Pipe",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyItem","Pipe")        
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Dual Headed Blade",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyItem","Dual-Headed Blade")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Bisento",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyItem","Bisento")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Soul Cane",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyItem","Soul Cane")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Midnight Blade",
        Description = "",
        Callback = function()
            __VE["RlS"]:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("Ectoplasm", "BuyCheck", 3)
            __U[23]()
            __VE["RlS"]:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("Ectoplasm", "Buy", 3)
        end
    })
    Tabs.ShopTab:AddSection("Gun")
    Tabs.ShopTab:AddButton({
        Title = "Slingshot",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyItem","Slingshot")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Musket",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyItem","Musket")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Flintlock",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyItem","Flintlock")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Refined Flintlock",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyItem","Refined Flintlock")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Cannon",
        Description = "",
        Callback = function()
            Buy:Abilities("BuyItem","Cannon")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Kabucha",
        Description = "",
        Callback = function()
            Buy:Abilities("BlackbeardReward","Slingshot","1")
            Buy:Abilities("BlackbeardReward","Slingshot","2")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Bizarre Rifle",
        Description = "",
        Callback = function()
            __VE["RlS"]:WaitForChild("Rmotes"):WaitForChild("CommF_"):InvokeServer("Ectoplasm", "BuyCheck", 1)
            __U[23]()
            __VE["RlS"]:WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("Ectoplasm", "Buy", 1)
        end
    })


    Tabs.Settings:AddSection("Auto Farm Settings")
    FastAttack = Tabs.Settings:AddToggle("FastAttack", {Title = "Fast Attack", Default = false })

    FastAttack:OnChanged(function()
        Fast = Options.FastAttack.Value
    end)
    BringMobT = Tabs.Settings:AddToggle("BringMobT", {Title = "Bring Mob", Default = false })

    BringMobT:OnChanged(function()
        Setting.BringMob = Options.BringMobT.Value
    end)
    CustomQuest = Tabs.Settings:AddToggle("CustomQuest", {Title = "Custom Quest", Default = false })

    CustomQuest:OnChanged(function()
        Setting.CustomQuest = Options.CustomQuest.Value
    end)
    AutoFarmAuraDistance = Tabs.Settings:AddSlider("AutoFarmAuraDistance", {
        Title = "Auto Farm Aura Distance",
        Description = "",
        Default = 3000,
        Min = 0,
        Max = 5000,
        Rounding = 1,
        Callback = function(Value)
            Setting.AutoFarmAuraDistance = __U[31](Value)
        end
    })

    AutoFarmLevelPosXX = Tabs.Settings:AddSlider("AutoFarmLevelPosXX", {
        Title = "X",
        Description = "Set the X position| Default is 0",
        Default = 0,
        Min = 0,
        Max = 50,
        Rounding = 1,
        Callback = function(Value)
            Setting.AutoFarmPosX = __U[31](Value)
        end
    })

    AutoFarmLevelPosXX:OnChanged(function(Value)
        Setting.AutoFarmPosX = __U[31](Value)
    end)

    AutoFarmLevelPosXX:SetValue(0)
    AutoFarmLevelPosYY = Tabs.Settings:AddSlider("AutoFarmLevelPosYY", {
        Title = "Y",
        Description = "Set the Y position| Default is 50",
        Default = 50,
        Min = 0,
        Max = 50,
        Rounding = 1,
        Callback = function(Value)
            Setting.AutoFarmPosY = __U[31](Value)
        end
    })

    AutoFarmLevelPosYY:OnChanged(function(Value)
        Setting.AutoFarmPosY = __U[31](Value)
    end)

    AutoFarmLevelPosYY:SetValue(50)
    AutoFarmLevelPosZZ = Tabs.Settings:AddSlider("AutoFarmLevelPosZZ", {
        Title = "Z",
        Description = "Set the Z position| Default is 0",
        Default = 0,
        Min = 0,
        Max = 50,
        Rounding = 1,
        Callback = function(Value)
            Setting.AutoFarmPosZ = __U[31](Value)
        end
    })

    AutoFarmLevelPosZZ:OnChanged(function(Value)
        Setting.AutoFarmPosZ = __U[31](Value)
    end)
    AutoFarmLevelPosZZ:SetValue(0)
    TeleportSpeedAutoFarm = Tabs.Settings:AddSlider("Setting.TeleportSpeedAutoFarm", {
        Title = "Teleport Speed",
        Description = "",
        Default = 5,
        Min = 0,
        Max = 10,
        Rounding = 1,
        Callback = function(Value)
            Setting.TeleportSpeedAutoFarm = __U[31](Value)
        end
    })

    TeleportSpeedAutoFarm:OnChanged(function(Value)
        Setting.TeleportSpeedAutoFarm = __U[31](Value)
    end)
    Tabs.Settings:AddSection("Bring Mob Setting")
    BringMobDistanceSetting = Tabs.Settings:AddSlider("BringMobDistanceSetting", {
        Title = "Distance",
        Description = "Set the Bring Mob distance| Default is 300",
        Default = 300,
        Min = 1,
        Max = 500,
        Rounding = 1,
        Callback = function(Value)
            Setting.BringMobDistance = __U[31](Value)
        end
    })

    BringMobDistanceSetting:OnChanged(function(Value)
        Setting.BringMobDistance = __U[31](Value)
    end)
    BringMobDistanceSetting:SetValue(300)

    Tabs.Settings:AddSection("Teleport Setting")
    InstanceTeleport = Tabs.Settings:AddToggle("InstanceTeleport", {Title = "Instance Teleport", Default = false })

    InstanceTeleport:OnChanged(function()
        InstanceTp = Options.InstanceTeleport.Value
    end)

    Tabs.Settings:AddSection("Raid Settings")
    AutoRaidPosX = Tabs.Settings:AddSlider("AutoRaidPosX", {
        Title = "Stand Position X",
        Description = "Set the position where to stand in next island | Default is 0",
        Default = 0,
        Min = 0,
        Max = 50,
        Rounding = 1,
        Callback = function(Value)
            Setting.AutoRaidPosX = __U[31](Value)
        end
    })
    AutoRaidPosX:OnChanged(function(Value)
        Setting.AutoRaidPosX = __U[31](Value)
    end)
    AutoRaidPosY = Tabs.Settings:AddSlider("AutoRaidPosY", {
        Title = "Stand Position Y",
        Description = "Set the position where to stand in next island | Default is 0",
        Default = 0,
        Min = 0,
        Max = 50,
        Rounding = 1,
        Callback = function(Value)
            Setting.AutoRaidPosY = __U[31](Value)
        end
    })
    AutoRaidPosY:OnChanged(function(Value)
        Setting.AutoRaidPosY = __U[31](Value)
    end)
    AutoRaidPosZ = Tabs.Settings:AddSlider("AutoRaidPosZ", {
        Title = "Stand Position Z",
        Description = "Set the position where to stand in next island | Default is 0",
        Default = 0,
        Min = 0,
        Max = 50,
        Rounding = 1,
        Callback = function(Value)
            Setting.AutoRaidPosZ = __U[31](Value)
        end
    })
    AutoRaidPosZ:OnChanged(function(Value)
        Setting.AutoRaidPosZ = __U[31](Value)
    end)
    TeleportToNEXTIslandSpeed = Tabs.Settings:AddSlider("TeleportToNEXTIslandSpeed", {
        Title = "Teleport To Next Island Speed",
        Description = "Set both manual and auto raid | Default is 7",
        Default = 7,
        Min = 0,
        Max = 7,
        Rounding = 1,
        Callback = function(Value)
            Setting.TeleportToNEXTIslandSpeed = __U[31](Value)
        end
    })
    TeleportToNEXTIslandSpeed:OnChanged(function(Value)
        Setting.TeleportToNEXTIslandSpeed = __U[31](Value)
    end)

    Tabs.Settings:AddSection("Auto Chest Setting | Can Be Stack")
    AutoNormalChest = Tabs.Settings:AddToggle("AutoNormalChest", {Title = "Normal", Default = false })

    AutoNormalChest:OnChanged(function()
        Setting.AutoNormalChest = Options.AutoNormalChest.Value
    end)
    AutoDetailChest = Tabs.Settings:AddToggle("AutoDetailChest", {Title = "Detail", Default = false })

    AutoDetailChest:OnChanged(function()
        Setting.AutoDetailChest = Options.AutoDetailChest.Value
    end)

    Tabs.Settings:AddSection("Fly Settings")
    VFlySpeedSetting = Tabs.Settings:AddToggle("VFlySpeedSetting", {Title = "Ship Speed", Default = false })

    VFlySpeedSetting:OnChanged(function()
        
    end)
    PFlySpeedSetting = Tabs.Settings:AddToggle("PFlySpeedSetting", {Title = "Player Speed", Default = false })

    PFlySpeedSetting:OnChanged(function()
        
    end)
    Tabs.Settings:AddSection("Auto Bounty Settings")
    MaxErrorTrial = Tabs.Settings:AddInput("MaxErrorTrial", {
        Title = "Max Error & Trial",
        Default = __U[31](Setting.MaxErrorAndTrial),
        Placeholder = "Placeholder",
        Numeric = true,
        Finished = false, 
        Callback = function(Value)
            Setting.MaxErrorAndTrial = __U[31](Value)
        end
    })

    MaxErrorTrial:OnChanged(function()
        Setting.MaxErrorAndTrial = __U[31](MaxErrorTrial.Value)
    end)
    KeepSafeHealth = Tabs.Settings:AddInput("KeepSafeHealth", {
        Title = "Run When HP =",
        Default = __U[31](Setting.KeepSafeHealth),
        Placeholder = "Placeholder",
        Numeric = true,
        Finished = false, 
        Callback = function(Value)
            Setting.KeepSafeHealth = __U[31](Value)
        end
    })

    KeepSafeHealth:OnChanged(function()
        Setting.KeepSafeHealth = __U[31](KeepSafeHealth.Value)
    end)
    UseRaceWhenAutoBounty = Tabs.Settings:AddToggle("UseRaceWhenAutoBounty", {Title = "Use Race", Default = Setting.UseRaceWhenAutoBounty })

    UseRaceWhenAutoBounty:OnChanged(function()
        Setting.UseRaceWhenAutoBounty = Options.UseRaceWhenAutoBounty.Value
    end)
    UseMeleeOnly = Tabs.Settings:AddToggle("UseMeleeOnly", {Title = "Use Melee Only", Default = Setting.UseMeleeOnly })

    UseMeleeOnly:OnChanged(function()
        Setting.UseMeleeOnly = Options.UseMeleeOnly.Value
    end)
    AutoBountyTeleportSpeed = Tabs.Settings:AddSlider("AutoBountyTeleportSpeed", {
        Title = "Teleport Speed",
        Description = "",
        Default = __U[31](Setting.AutoBountyTeleportSpeed),
        Min = 0,
        Max = 50,
        Rounding = 1,
        Callback = function(Value)
            Setting.AutoBountyTeleportSpeed = __U[31](Value)
        end
    })
    AutoBountyTeleportSpeed:OnChanged(function(Value)
        Setting.AutoBountyTeleportSpeed = __U[31](Value)
    end)
    Tabs.Settings:AddSection("Stackable")
    StackableSetting = Tabs.Settings:AddToggle("StackableSetting", {Title = "Stackable", Default = Setting.StackableSetting })

    StackableSetting:OnChanged(function()
        Setting.StackableSetting = Options.StackableSetting.Value
    end)
    Tabs.Settings:AddSection("E?##a?%")
    UnlockPortal = Tabs.Settings:AddToggle("UnlockPortal", {Title = "Unlock Portal", Default = Setting.UnlockPortal })

    UnlockPortal:OnChanged(function()
        Setting.UnlockPortal = Options.UnlockPortal.Value
    end)
    Tabs.Settings:AddSection("W A S D Ui Settings")
    BigSmallWASD = Tabs.Settings:AddToggle("BigSmallWASD", {Title = "Small/Big", Default = false })

    BigSmallWASD:OnChanged(function()
        if Options.BigSmallWASD.Value then
            __VE["CG"]["InputPcToMobile"].W.Size = UDim2.new(0.1, 0, 0.1, 0)
            __VE["CG"]["InputPcToMobile"].A.Size = UDim2.new(0.1, 0, 0.1, 0)
            __VE["CG"]["InputPcToMobile"].S.Size = UDim2.new(0.1, 0, 0.1, 0)
            __VE["CG"]["InputPcToMobile"].D.Size = UDim2.new(0.1, 0, 0.1, 0)
        else
            __VE["CG"]["InputPcToMobile"].W.Size = UDim2.new(0.05, 0, 0.05, 0)
            __VE["CG"]["InputPcToMobile"].A.Size = UDim2.new(0.05, 0, 0.05, 0)
            __VE["CG"]["InputPcToMobile"].S.Size = UDim2.new(0.05, 0, 0.05, 0)
            __VE["CG"]["InputPcToMobile"].D.Size = UDim2.new(0.05, 0, 0.05, 0)
        end
    end)
    HideShowWASD = Tabs.Settings:AddToggle("HideShowWASD", {Title = "Hide/Show", Default = true })

    HideShowWASD:OnChanged(function()
        if Options.HideShowWASD.Value then
            __VE["CG"]["InputPcToMobile"].W.Visible = true
            __VE["CG"]["InputPcToMobile"].A.Visible = true
            __VE["CG"]["InputPcToMobile"].S.Visible = true
            __VE["CG"]["InputPcToMobile"].D.Visible = true
        else
            __VE["CG"]["InputPcToMobile"].W.Visible = false
            __VE["CG"]["InputPcToMobile"].A.Visible = false
            __VE["CG"]["InputPcToMobile"].S.Visible = false
            __VE["CG"]["InputPcToMobile"].D.Visible = false
        end
    end)
    UpDownWASD = Tabs.Settings:AddToggle("UpDownWASD", {Title = "Up/Down", Default = false })

    UpDownWASD:OnChanged(function()
        if Options.UpDownWASD.Value then
            __VE["CG"]["InputPcToMobile"].W.Position = UDim2.new(0.05, 0, 0.7, 0)
            __VE["CG"]["InputPcToMobile"].A.Position = UDim2.new(0, 0, 0.8, 0)
            __VE["CG"]["InputPcToMobile"].S.Position = UDim2.new(0.05, 0, 0.9, 0)
            __VE["CG"]["InputPcToMobile"].D.Position = UDim2.new(0.1, 0, 0.8, 0)
        else
            __VE["CG"]["InputPcToMobile"].W.Position = UDim2.new(0.05, 0, 0.1, 0)
            __VE["CG"]["InputPcToMobile"].A.Position = UDim2.new(0, 0, 0.2, 0)
            __VE["CG"]["InputPcToMobile"].S.Position = UDim2.new(0.05, 0, 0.3, 0)
            __VE["CG"]["InputPcToMobile"].D.Position = UDim2.new(0.1, 0, 0.2, 0)
        end
    end)
end

task.wait(0.05)
if allowtoserialized then
    serializedSetting = game.HttpService:JSONEncode(Setting)
    writefile("Setting/setting.json", serializedSetting)
end
task.wait(5)
finishload = true
__VE["Notification"].new("<Color=Green>Data Save<Color=/>"):Display()




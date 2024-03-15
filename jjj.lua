repeat
    task.wait()
until game:IsLoaded()
print("Game Loaded")
repeat
    if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
        if game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Visible == true then
            if getgenv().Team == "Marines" then
                for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                    for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.TextButton[v])) do
                        v.Function()
                    end
                end
            else
                for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                    for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton[v])) do
                        v.Function()
                    end
                end
            end
        end
    end
    task.wait()
until not game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") and not game.Players.localPlayer.Neutral

--[[
    $$$$$$$$\ $$\      $$\   $$\ $$$$$$$$\ $$\   $$\ $$$$$$$$\ 
    $$  _____|$$ |     $$ |  $$ |$$  _____|$$$\  $$ |\__$$  __|
    $$ |      $$ |     $$ |  $$ |$$ |      $$$$\ $$ |   $$ |   
    $$$$$\    $$ |     $$ |  $$ |$$$$$\    $$ $$\$$ |   $$ |   
    $$  __|   $$ |     $$ |  $$ |$$  __|   $$ \$$$$ |   $$ |   
    $$ |      $$ |     $$ |  $$ |$$ |      $$ |\$$$ |   $$ |   
    $$ |      $$$$$$$$\\$$$$$$  |$$$$$$$$\ $$ | \$$ |   $$ |   
    \__|      \________|\______/ \________|\__|  \__|   \__|
]]

local Fluent, SaveManager, InterfaceManager, Window

repeat
    pcall(function()
        Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
        SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
        InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
    end)
    print("Loaded Ui")
    wait(10)
until Fluent ~= nil

repeat task.wait() until Fluent and SaveManager and InterfaceManager

--[[
 $$$$$$\   $$$$$$\   $$$$$$\  $$$$$$$$\ $$$$$$$$\ 
$$  __$$\ $$  __$$\ $$  __$$\ $$  _____|\__$$  __|
$$ /  $$ |$$ /  \__|$$ /  \__|$$ |         $$ |   
$$$$$$$$ |\$$$$$$\  \$$$$$$\  $$$$$\       $$ |   
$$  __$$ | \____$$\  \____$$\ $$  __|      $$ |   
$$ |  $$ |$$\   $$ |$$\   $$ |$$ |         $$ |   
$$ |  $$ |\$$$$$$  |\$$$$$$  |$$$$$$$$\    $$ |   
\__|  \__| \______/  \______/ \________|   \__|   
]]
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

task.wait()
TTJYHUB = Converted["_TextButton"]
STOPTP = Converted["_TextButton2"]
STOPHOP = Converted["_TextButton1"]
STATUS = Converted["_ImageButton"]

--[[
$$\    $$\  $$$$$$\  $$$$$$$\  $$$$$$\  $$$$$$\  $$$$$$$\  $$\       $$$$$$$$\  $$$$$$\  
$$ |   $$ |$$  __$$\ $$  __$$\ \_$$  _|$$  __$$\ $$  __$$\ $$ |      $$  _____|$$  __$$\ 
$$ |   $$ |$$ /  $$ |$$ |  $$ |  $$ |  $$ /  $$ |$$ |  $$ |$$ |      $$ |      $$ /  \__|
\$$\  $$  |$$$$$$$$ |$$$$$$$  |  $$ |  $$$$$$$$ |$$$$$$$\ |$$ |      $$$$$\    \$$$$$$\  
 \$$\$$  / $$  __$$ |$$  __$$<   $$ |  $$  __$$ |$$  __$$\ $$ |      $$  __|    \____$$\ 
  \$$$  /  $$ |  $$ |$$ |  $$ |  $$ |  $$ |  $$ |$$ |  $$ |$$ |      $$ |      $$\   $$ |
   \$  /   $$ |  $$ |$$ |  $$ |$$$$$$\ $$ |  $$ |$$$$$$$  |$$$$$$$$\ $$$$$$$$\ \$$$$$$  |
    \_/    \__|  \__|\__|  \__|\______|\__|  \__|\_______/ \________|\________| \______/ 
]]

local finishload = false
local Setting
local fileContent
local serializedSetting
local allowtoserialized = false
local StopAllHop = false
local Attack = false
local float = false
local NameQuest = nil
local QuestLv = nil
local NameMon = nil
local CFrameQ = nil
local CFrameMon = nil
local CFrameBoss = nil
local CFrameQBoss = nil
local NameBoss = nil
local CFrameTargetTp = nil
local SelectTpSpot = nil
local MobHumP = nil
local KillAuraS = false
local FirstMob = nil
local BringMob = false
local IsWeaponBusy = false
local IsAutoFarmBusy = false
local InstanceTp
local ConnectForChest
local placeId = game.PlaceId
local player = game.Players.LocalPlayer
local character = player.Character
local workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VM = game:GetService("VirtualInputManager")
local Lv = player.Data.Level.Value
local Backpack = player.Backpack
local WorldOrigin = workspace["_WorldOrigin"]
local CoreGui = game.CoreGui
local PlayerGui = player.PlayerGui
local CommF = ReplicatedStorage.Remotes.CommF_
local CommE = ReplicatedStorage.Remotes.CommE
local WeaponBackpack = {}
local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
uis = game:GetService("UserInputService")
local FLYING = false
local cmdp = game:GetService("Players")
local cmdlp = cmdp.LocalPlayer
local player = cmdlp
local cmdl = game:GetService("Lighting")
local cmdrs = game:GetService("ReplicatedStorage")
local cmdrs2 = game:GetService("RunService")
local cmdts = game:GetService("TweenService")
local cmdvu = game:GetService("VirtualUser")
local cmduis = game:GetService("UserInputService")
local Mouses = cmdlp:GetMouse()
cmdm = Mouses
speedofthevfly = 1
speedofthefly = 1
local AllBossNameSea1 = {"Saber Expert", "The Saw", "Greybeard", "The Gorilla King", "Bobby", "Yeti", "Mob Leader", "Vice Admiral", "Warden", "Chief Warden", "Swan", "Magma Admiral", "Fishman Lord", "Wysper", "Thunder God", "Cyborg"}
if not isfolder("Setting") then
    makefolder("Setting")
end
task.wait()
if isfolder("Setting") and not isfile("Setting/setting.json") then
    print("no file")
    Setting = {
        SelectWeapon = nil,
        AutoFarmLevel = false,
        AutoFarmAura = false,
        AutoMaterial = false,
        AuraMaterialType1 = false,
        AutoBuso = false,
        AutoKen = false,
        Attack = false,
        AutoFarmPosY = 10,
        AutoFarmPosX = 0,
        AutoFarmPosZ = 0,
        TeleportSpeedAutoFarm = 5,
        AutoFarmAuraDistance = 3000,
        TryNumOfthis1 = 0,
        CustomQuest = false,
        BringMob = false,
        BringMob2 = false,
        BringMob3 = false,
        BringMobDistance = 300,
        SelectMob = nil,
        AutoFarmSelectMob = false,
        SelectBoss = nil,
        AutoFarmAllBoss = false,
        UseSkill = false,
        AutoFarmSelectBoss = false,
        AutoFarmFruitMastery = false,
        SkillZ = true,
        SkillX = true,
        SkillC = true,
        SkillV = true,
        KillAt = 30,
        PauseAutoEqu = false,
        PosMobMasteryFruit = nil,
        PosMobMasteryGun = nil,
        FruitToStore = nil,
        TpToFruit = false,
        CancelTpToFruit = false,
        BringFruit = false,
        AutoRandomFruit = false,
        AutoStoreFruit = false,
        AutoDropFruit = false,
        SelectFruitToSnipe = false,
        AutoSea2 = false,
        RemoveAnim = false,
        StatsValue = 1,
        MeleeStats = false,
        DefenseStats = false,
        SwordStats = false,
        GunStats = false,
        BloxFruitStats = false,
        YourRace = nil,
        YourRace2 = nil,
        AutoRaceV2 = false,
        AutoRaceV3 = false,
        AutoRaceV4 = false,
        KillAura = false,
        AutoRaid = false,
        SelectedRaid = nil,
        SelectedRaid2 = nil,
        TeleportToNEXTIslandSpeed = 7,
        AutoRaidPosY = 0,
        AutoRaidPosX = 0,
        AutoRaidPosZ = 0,
        DMGAura = false,
        DMGAura2 = false,
        DMGAura3 = false,
        AutoBartilo = false,
        AutoFarmObservationHop = false,
        AutoFarmObservation = false,
        AutoRichManMission = false,
        AutoBone = false,
        TeleportToNextIsland = false,
        AutoSaber = false,
        AutoSpikeyTrident = false,
        AutoTwinHooks = false,
        AutoTwinHooksHop = false,
        AutoSharkSaw = false,
        AutoSharkSawHop = false,
        AutoWardensSword = false,
        AutoWardensSwordHop = false,
        AutoGravityCane = false,
        AutoGravityCaneHop = false,
        AutoLongsword = false,
        AutoLongswordHop = false,
        AutoJitte = false,
        AutoJitteHop = false,
        AutoBuddySword = false,
        AutoBuddySwordHop = false,
        AutoHallowScythe = false,
        AutoHallowScytheHop = false,
        AutoDarkDagger = false,
        AutoDarkDaggerHop = false,
        AutoYama = false,
        AutoDragonTrident = false,
        AutoDragonTridentHop = false,
        AutoLegendarySword = false,
        AutoLegendarySwordHop = false,
        AutoRengoku = false,
        AutoPole = false,
        AutoPoleHop = false,
        AutoSaberHop = false,
        AutoCanvander = false,
        AutoCanvanderHop = false,
        SelectSeaLevel = "4",
        AutoSeaEvent = false,
        SelectShipISeaEvent = "PirateSloop",
        IgnoreSeaEventList = {"nil", "nil"},
        DMGAura4 = false,
        WaitBRUH = false,
        ToggleWalkSpeed = false,
        WalkSpeedSet = 16,
        ToggleJumpPower = false,
        JumpPowerSet = 52,
        AutoFarmBounty = false,
        DMGAura5 = false,
        AutoBountyTeleportSpeed = 5,
        UseMeleeOnly = false,
        ErrorAndTrial = 0,
        MaxErrorAndTrial = 87000,
        KeepSafeHealth = 3500,
        AutoKennWhenAutoBounty = false,
        UseRaceWhenAutoBounty = false,
        AutoFarmBountyHop = false,
        chestcollect = 0,
        AutoNormalChest = false,
        AutoDetailChest = false,
        StackableSetting = true,
        CurrentTargetIsland = nil,
        UnlockPortal = false,
    }
    allowtoserialized = true
elseif isfolder("Setting") and isfile("Setting/setting.json") then
    print("file")
    fileContent = readfile("Setting/setting.json")
    task.wait()
    Setting = game.HttpService:JSONDecode(fileContent)
end
task.wait()
local credits = {
    {Title = "Owner", Content = "ttjy."},
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
Old_World = false
New_World = false
Third_World = false
if placeId == 2753915549 then
    Old_World = true
elseif placeId == 4442272183 then
    New_World = true
elseif placeId == 7449423635 then
    Third_World = true
end

--[[
$$$$$$$$\ $$\   $$\ $$\   $$\  $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\  
$$  _____|$$ |  $$ |$$$\  $$ |$$  __$$\\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |$$  __$$\ 
$$ |      $$ |  $$ |$$$$\ $$ |$$ /  \__|  $$ |     $$ |  $$ /  $$ |$$$$\ $$ |$$ /  \__|
$$$$$\    $$ |  $$ |$$ $$\$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ $$\$$ |\$$$$$$\  
$$  __|   $$ |  $$ |$$ \$$$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ \$$$$ | \____$$\ 
$$ |      $$ |  $$ |$$ |\$$$ |$$ |  $$\   $$ |     $$ |  $$ |  $$ |$$ |\$$$ |$$\   $$ |
$$ |      \$$$$$$  |$$ | \$$ |\$$$$$$  |  $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |\$$$$$$  |
\__|       \______/ \__|  \__| \______/   \__|   \______| \______/ \__|  \__| \______/ 
]]
local function CheckQuestBoss()
	if Old_World then
		if Setting.SelectBoss == "Saber Expert" then
			MsBoss = "Saber Expert"
			NameBoss = "Saber Expert"
			CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
		elseif Setting.SelectBoss == "The Saw" then
			MsBoss = "The Saw"
			NameBoss = "The Saw"
			CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
		elseif Setting.SelectBoss == "Greybeard" then
			MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
			NameBoss = "Greybeard"
			CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
		elseif Setting.SelectBoss == "The Gorilla King" then
			MsBoss = "The Gorilla King [Lv. 25] [Boss]" 
			NameBoss = "The Gorilla King"
			NameQuestBoss = "JungleQuest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
		elseif Setting.SelectBoss == "Bobby" then
			MsBoss = "Bobby [Lv. 55] [Boss]"
			NameBoss = "Bobby"
			NameQuestBoss = "BuggyQuest1"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
		elseif Setting.SelectBoss == "Yeti" then
			MsBoss = "Yeti [Lv. 110] [Boss]"
			NameBoss = "Yeti"
			NameQuestBoss = "SnowQuest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
			CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)

		elseif Setting.SelectBoss == "Mob Leader" then
			MsBoss = "Mob Leader [Lv. 120] [Boss]"
			NameBoss = "Mob Leader"
			CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
		elseif Setting.SelectBoss == "Vice Admiral" then
			MsBoss = "Vice Admiral [Lv. 130] [Boss]"
			NameBoss = "Vice Admiral"
			NameQuestBoss = "MarineQuest2"
			QuestLvBoss = 2
			CFrameQBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
			CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
		elseif Setting.SelectBoss == "Warden" then
			MsBoss = "Warden [Lv. 220] [Boss]"
			NameBoss = "Warden"
			NameQuestBoss = "ImpelQuest"
			QuestLvBoss = 1
			CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif Setting.SelectBoss == "Chief Warden" then
			MsBoss = "Chief Warden [Lv. 230] [Boss]"
			NameBoss = "Chief Warden"
			NameQuestBoss = "ImpelQuest"
			QuestLvBoss = 2
			CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif Setting.SelectBoss == "Swan" then
			MsBoss = "Swan [Lv. 240] [Boss]"
			NameBoss = "Swan"
			NameQuestBoss = "ImpelQuest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)

		elseif Setting.SelectBoss == "Magma Admiral" then
			MsBoss = "Magma Admiral [Lv. 350] [Boss]"
			NameBoss = "Magma Admiral"
			NameQuestBoss = "MagmaQuest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
			CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)

		elseif Setting.SelectBoss == "Fishman Lord" then
			MsBoss = "Fishman Lord [Lv. 425] [Boss]"
			NameBoss = "Fishman Lord"
			NameQuestBoss = "FishmanQuest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
			CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
			if (CFrameQBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
		elseif Setting.SelectBoss == "Wysper" then
			MsBoss = "Wysper [Lv. 500] [Boss]"
			NameBoss = "Wysper"
			NameQuestBoss = "SkyExp1Quest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
			CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
			if (CFrameQBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
			end
		elseif Setting.SelectBoss == "Thunder God" then
			MsBoss = "Thunder God [Lv. 575] [Boss]"
			NameBoss = "Thunder God"
			NameQuestBoss = "SkyExp2Quest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
			CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)

		elseif Setting.SelectBoss == "Cyborg" then
			MsBoss = "Cyborg [Lv. 675] [Boss]"
			NameBoss = "Cyborg"
			NameQuestBoss = "FountainQuest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
			CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)

		end
	elseif New_World then
		-- New World
		if Setting.SelectBoss == "Diamond" then
			MsBoss = "Diamond [Lv. 750] [Boss]"
			NameBoss = "Diamond"
			NameQuestBoss = "Area1Quest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)

		elseif Setting.SelectBoss == "Jeremy" then
			MsBoss = "Jeremy [Lv. 850] [Boss]"
			NameBoss = "Jeremy"
			NameQuestBoss = "Area2Quest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)

		elseif Setting.SelectBoss == "Fajita" then
			MsBoss = "Fajita [Lv. 925] [Boss]"
			NameBoss = "Fajita"
			NameQuestBoss = "MarineQuest3"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
			CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)

		elseif Setting.SelectBoss == "Don Swan" then
			MsBoss = "Don Swan [Lv. 1000] [Boss]"
			NameBoss = "Don Swan"
			CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)

		elseif Setting.SelectBoss == "Smoke Admiral" then
			MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
			NameBoss = "Smoke Admiral"
			NameQuestBoss = "IceSideQuest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
			CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)

		elseif Setting.SelectBoss == "Cursed Captain" then
			MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
			NameBoss = "Cursed Captain"
			CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
		elseif Setting.SelectBoss == "Darkbeard" then
			MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
			NameBoss = "Darkbeard"
			CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
		elseif Setting.SelectBoss == "Order" then
			MsBoss = "Order [Lv. 1250] [Raid Boss]"
			NameBoss = "Order"
			CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
		elseif Setting.SelectBoss == "Awakened Ice Admiral" then
			MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
			NameBoss = "Awakened Ice Admiral"
			NameQuestBoss = "FrostQuest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
			CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)

		elseif Setting.SelectBoss == "Tide Keeper" then
			MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
			NameBoss = "Tide Keeper"
			NameQuestBoss = "ForgottenQuest"             
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
			CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)

		end
	elseif Third_World then
		-- Third World
		if Setting.SelectBoss == "Stone" then
			MsBoss = "Stone [Lv. 1550] [Boss]"
			NameBoss = "Stone"
			NameQuestBoss = "PiratePortQuest"             
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-290, 44, 5577)
			CFrameBoss = CFrame.new(-1085, 40, 6779)

		elseif Setting.SelectBoss == "Island Empress" then
			MsBoss = "Island Empress [Lv. 1675] [Boss]"
			NameBoss = "Island Empress"
			NameQuestBoss = "AmazonQuest2"             
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(5443, 602, 752)
			CFrameBoss = CFrame.new(5659, 602, 244)

		elseif Setting.SelectBoss == "Kilo Admiral" then
			MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
			NameBoss = "Kilo Admiral"
			NameQuestBoss = "MarineTreeIsland"             
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(2178, 29, -6737)
			CFrameBoss =CFrame.new(2846, 433, -7100)

		elseif Setting.SelectBoss == "Captain Elephant" then
			MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
			NameBoss = "Captain Elephant"
			NameQuestBoss = "DeepForestIsland"             
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-13232, 333, -7631)
			CFrameBoss = CFrame.new(-13221, 325, -8405)

		elseif Setting.SelectBoss == "Beautiful Pirate" then
			MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
			NameBoss = "Beautiful Pirate"
			NameQuestBoss = "DeepForestIsland2"             
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-12686, 391, -9902)
			CFrameBoss = CFrame.new(5182, 23, -20)

		elseif Setting.SelectBoss == "rip_indra True Form" then
			MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
			NameBoss = "rip_indra True Form"
			CFrameBoss = CFrame.new(-5359, 424, -2735)

		elseif Setting.SelectBoss == "Longma" then
			MsBoss = "Longma [Lv. 2000] [Boss]"
			NameBoss = "Longma"
			CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)

		elseif Setting.SelectBoss == "Soul Reaper" then
			MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
			NameBoss = "Soul Reaper"
			CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)

		elseif Setting.SelectBoss == "Cake Queen" then
			MsBoss = "Cake Queen [Lv. 2175] [Boss]"
			NameBoss = "Cake Queen"
			NameQuestBoss = "IceCreamIslandQuest"             
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-821.267456, 65.9448776, -10964.3994, 0.814093888, -3.67296735e-08, -0.58073324, 3.30765637e-08, 1, -1.6879099e-08, 0.58073324, -5.46748513e-09, 0.814093888)
			CFrameBoss = CFrame.new(-715.467102, 381.69104, -11019.8896, 0.955998719, -1.07319993e-08, -0.293370903, 5.00311881e-09, 1, -2.02781667e-08, 0.293370903, 1.7918131e-08, 0.955998719)
		end
	end
end
local function FindTargetBoss(value)
	if Old_World then
		if tostring(value) == "Saber Expert" then
			MsBoss = "Saber Expert"
			NameBoss = "Saber Expert"
			CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
		elseif tostring(value) == "The Saw" then
			MsBoss = "The Saw"
			NameBoss = "The Saw"
			CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
		elseif tostring(value) == "Greybeard" then
			MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
			NameBoss = "Greybeard"
			CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
		elseif tostring(value) == "The Gorilla King" then
			MsBoss = "The Gorilla King [Lv. 25] [Boss]" 
			NameBoss = "The Gorilla King"
			NameQuestBoss = "JungleQuest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
		elseif tostring(value) == "Bobby" then
			MsBoss = "Bobby [Lv. 55] [Boss]"
			NameBoss = "Bobby"
			NameQuestBoss = "BuggyQuest1"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
		elseif tostring(value) == "Yeti" then
			MsBoss = "Yeti [Lv. 110] [Boss]"
			NameBoss = "Yeti"
			NameQuestBoss = "SnowQuest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
			CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)

		elseif tostring(value) == "Mob Leader" then
			MsBoss = "Mob Leader [Lv. 120] [Boss]"
			NameBoss = "Mob Leader"
			CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
		elseif tostring(value) == "Vice Admiral" then
			MsBoss = "Vice Admiral [Lv. 130] [Boss]"
			NameBoss = "Vice Admiral"
			NameQuestBoss = "MarineQuest2"
			QuestLvBoss = 2
			CFrameQBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
			CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
		elseif tostring(value) == "Warden" then
			MsBoss = "Warden [Lv. 220] [Boss]"
			NameBoss = "Warden"
			NameQuestBoss = "ImpelQuest"
			QuestLvBoss = 1
			CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif tostring(value) == "Chief Warden" then
			MsBoss = "Chief Warden [Lv. 230] [Boss]"
			NameBoss = "Chief Warden"
			NameQuestBoss = "ImpelQuest"
			QuestLvBoss = 2
			CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif tostring(value) == "Swan" then
			MsBoss = "Swan [Lv. 240] [Boss]"
			NameBoss = "Swan"
			NameQuestBoss = "ImpelQuest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)

		elseif tostring(value) == "Magma Admiral" then
			MsBoss = "Magma Admiral [Lv. 350] [Boss]"
			NameBoss = "Magma Admiral"
			NameQuestBoss = "MagmaQuest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
			CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)

		elseif tostring(value) == "Fishman Lord" then
			MsBoss = "Fishman Lord [Lv. 425] [Boss]"
			NameBoss = "Fishman Lord"
			NameQuestBoss = "FishmanQuest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
			CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
			if (CFrameQBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
		elseif tostring(value) == "Wysper" then
			MsBoss = "Wysper [Lv. 500] [Boss]"
			NameBoss = "Wysper"
			NameQuestBoss = "SkyExp1Quest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
			CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
			if (CFrameQBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
			end
		elseif tostring(value) == "Thunder God" then
			MsBoss = "Thunder God [Lv. 575] [Boss]"
			NameBoss = "Thunder God"
			NameQuestBoss = "SkyExp2Quest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
			CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)

		elseif tostring(value) == "Cyborg" then
			MsBoss = "Cyborg [Lv. 675] [Boss]"
			NameBoss = "Cyborg"
			NameQuestBoss = "FountainQuest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
			CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)

		end
	elseif New_World then
		-- New World
		if tostring(value) == "Diamond" then
			MsBoss = "Diamond [Lv. 750] [Boss]"
			NameBoss = "Diamond"
			NameQuestBoss = "Area1Quest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)

		elseif tostring(value) == "Jeremy" then
			MsBoss = "Jeremy [Lv. 850] [Boss]"
			NameBoss = "Jeremy"
			NameQuestBoss = "Area2Quest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)

		elseif tostring(value) == "Fajita" then
			MsBoss = "Fajita [Lv. 925] [Boss]"
			NameBoss = "Fajita"
			NameQuestBoss = "MarineQuest3"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
			CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)

		elseif tostring(value) == "Don Swan" then
			MsBoss = "Don Swan [Lv. 1000] [Boss]"
			NameBoss = "Don Swan"
			CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)

		elseif tostring(value) == "Smoke Admiral" then
			MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
			NameBoss = "Smoke Admiral"
			NameQuestBoss = "IceSideQuest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
			CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)

		elseif tostring(value) == "Cursed Captain" then
			MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
			NameBoss = "Cursed Captain"
			CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
		elseif tostring(value) == "Darkbeard" then
			MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
			NameBoss = "Darkbeard"
			CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
		elseif tostring(value) == "Order" then
			MsBoss = "Order [Lv. 1250] [Raid Boss]"
			NameBoss = "Order"
			CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
		elseif tostring(value) == "Awakened Ice Admiral" then
			MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
			NameBoss = "Awakened Ice Admiral"
			NameQuestBoss = "FrostQuest"
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
			CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)

		elseif tostring(value) == "Tide Keeper" then
			MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
			NameBoss = "Tide Keeper"
			NameQuestBoss = "ForgottenQuest"             
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
			CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)

		end
	elseif Third_World then
		-- Third World
		if tostring(value) == "Stone" then
			MsBoss = "Stone [Lv. 1550] [Boss]"
			NameBoss = "Stone"
			NameQuestBoss = "PiratePortQuest"             
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-290, 44, 5577)
			CFrameBoss = CFrame.new(-1085, 40, 6779)

		elseif tostring(value) == "Island Empress" then
			MsBoss = "Island Empress [Lv. 1675] [Boss]"
			NameBoss = "Island Empress"
			NameQuestBoss = "AmazonQuest2"             
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(5443, 602, 752)
			CFrameBoss = CFrame.new(5659, 602, 244)

		elseif tostring(value) == "Kilo Admiral" then
			MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
			NameBoss = "Kilo Admiral"
			NameQuestBoss = "MarineTreeIsland"             
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(2178, 29, -6737)
			CFrameBoss =CFrame.new(2846, 433, -7100)

		elseif tostring(value) == "Captain Elephant" then
			MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
			NameBoss = "Captain Elephant"
			NameQuestBoss = "DeepForestIsland"             
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-13232, 333, -7631)
			CFrameBoss = CFrame.new(-13221, 325, -8405)

		elseif tostring(value) == "Beautiful Pirate" then
			MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
			NameBoss = "Beautiful Pirate"
			NameQuestBoss = "DeepForestIsland2"             
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-12686, 391, -9902)
			CFrameBoss = CFrame.new(5182, 23, -20)

		elseif tostring(value) == "rip_indra True Form" then
			MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
			NameBoss = "rip_indra True Form"
			CFrameBoss = CFrame.new(-5359, 424, -2735)

		elseif tostring(value) == "Longma" then
			MsBoss = "Longma [Lv. 2000] [Boss]"
			NameBoss = "Longma"
			CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)

		elseif tostring(value) == "Soul Reaper" then
			MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
			NameBoss = "Soul Reaper"
			CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)

		elseif tostring(value) == "Cake Queen" then
			MsBoss = "Cake Queen [Lv. 2175] [Boss]"
			NameBoss = "Cake Queen"
			NameQuestBoss = "IceCreamIslandQuest"             
			QuestLvBoss = 3
			CFrameQBoss = CFrame.new(-821.267456, 65.9448776, -10964.3994, 0.814093888, -3.67296735e-08, -0.58073324, 3.30765637e-08, 1, -1.6879099e-08, 0.58073324, -5.46748513e-09, 0.814093888)
			CFrameBoss = CFrame.new(-715.467102, 381.69104, -11019.8896, 0.955998719, -1.07319993e-08, -0.293370903, 5.00311881e-09, 1, -2.02781667e-08, 0.293370903, 1.7918131e-08, 0.955998719)
		end
	end
end
local function TpOfTpTab()
    if Old_World then
        if SelectTpSpot == "Pirate Starter" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(994.9686279296875, 16.641939163208008, 1427.6319580078125)
            else
                CFrameTargetTp = CFrame.new(994.9686279296875, 16.641939163208008, 1427.6319580078125)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "Marine Starter" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-2645.46142578125, 9.68152904510498, 2048.440673828125)
            else
                CFrameTargetTp = CFrame.new(-2645.46142578125, 9.68152904510498, 2048.440673828125)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "Middle Town" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-622.5928955078125, 8.339500427246094, 1559.7164306640625)
            else
                CFrameTargetTp = CFrame.new(-622.5928955078125, 8.339500427246094, 1559.7164306640625)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "Jungle" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-1613.74365234375, 36.977413177490234, 148.67115783691406)
            else
                CFrameTargetTp = CFrame.new(-1613.74365234375, 36.977413177490234, 148.67115783691406)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "Pirate Village" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-1146.427734375, 44.877357482910156, 3846.61328125)
            else
                CFrameTargetTp = CFrame.new(-1146.427734375, 44.877357482910156, 3846.61328125)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "Dessert" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(924.7705078125, 6.146862983703613, 4329.72314453125)
            else
                CFrameTargetTp = CFrame.new(924.7705078125, 6.146862983703613, 4329.72314453125)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "Frozen Village" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(1120.902587890625, 7.670980930328369, -1189.6358642578125)
            else
                CFrameTargetTp = CFrame.new(1120.902587890625, 7.670980930328369, -1189.6358642578125)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "Marine Fortress" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-5034.90771484375, 27.965608596801758, 4334.7890625)
            else
                CFrameTargetTp = CFrame.new(-5034.90771484375, 27.965608596801758, 4334.7890625)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "Skyland 1st" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-5009.7939453125, 281.7386169433594, -2830.664306640625)
            else
                CFrameTargetTp = CFrame.new(-5009.7939453125, 281.7386169433594, -2830.664306640625)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "Skyland 2nd" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-5270.48583984375, 395.70489501953125, -2212.401123046875)
            else
                CFrameTargetTp = CFrame.new(-5270.48583984375, 395.70489501953125, -2212.401123046875)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "Skyland 3rd" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-4771.7998046875, 718.5603637695312, -2621.241455078125)
            else
                CFrameTargetTp = CFrame.new(-4771.7998046875, 718.5603637695312, -2621.241455078125)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "Skyland 4th" then
            if InstanceTp then
                CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
            else
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "Skyland 5th" then
            if InstanceTp then
                CommF:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            else
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
            end
        elseif SelectTpSpot == "Colosseum" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-1536.6083984375, 8.051512718200684, -2983.515380859375)
            else
                CFrameTargetTp = CFrame.new(-1536.6083984375, 8.051512718200684, -2983.515380859375)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "Prison" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(4867.283203125, 6.470325469970703, 732.0301513671875)
            else
                CFrameTargetTp = CFrame.new(4867.283203125, 6.470325469970703, 732.0301513671875)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "UnderWater" then
            if InstanceTp then
                CommF:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            else
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            end
        elseif SelectTpSpot == "Magme Village" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-5236.81201171875, 7.995201587677002, 8450.7021484375)
            else
                CFrameTargetTp = CFrame.new(-5236.81201171875, 7.995201587677002, 8450.7021484375)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        elseif SelectTpSpot == "Fountain City" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(5105.4208984375, 4.3343119621276855, 4074.138671875)
            else
                CFrameTargetTp = CFrame.new(5105.4208984375, 4.3343119621276855, 4074.138671875)
                if (CFrameTargetTp - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
                end
            end
        end
    elseif New_World then
        if SelectTpSpot == "Kingdom Of Rose" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-12.300018310546875, 29.402055740356445, 2766.919677734375)
            else
                CFrameTargetTp = CFrame.new(-12.300018310546875, 29.402055740356445, 2766.919677734375)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Colosseum" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-1821.328369140625, 45.541255950927734, 1358.9896240234375)
            else
                CFrameTargetTp = CFrame.new(-1821.328369140625, 45.541255950927734, 1358.9896240234375)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Secret Room (Race v3)" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-2027.0584716796875, 124.79798126220703, -78.88665008544922)
            else
                CFrameTargetTp = CFrame.new(-2027.0584716796875, 124.79798126220703, -78.88665008544922)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Cafe" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-381.9906921386719, 72.30252838134766, 283.7034606933594)
            else
                CFrameTargetTp = CFrame.new(-381.9906921386719, 72.30252838134766, 283.7034606933594)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Front Factory" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(230.86642456054688, 71.83038330078125, -231.8999481201172)
            else
                CFrameTargetTp = CFrame.new(230.86642456054688, 71.83038330078125, -231.8999481201172)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Factory" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(429.5542297363281, 218.63314819335938, -430.0518798828125)
            else
                CFrameTargetTp = CFrame.new(429.5542297363281, 218.63314819335938, -430.0518798828125)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Swan Room" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(nil)
            else
                CFrameTargetTp = CFrame.new(nil)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Green Zone" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-2250.882568359375, 73.37700653076172, -2692.625244140625)
            else
                CFrameTargetTp = CFrame.new(-2250.882568359375, 73.37700653076172, -2692.625244140625)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Graveyard Island" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-5458.5849609375, 47.87034606933594, -814.068115234375)
            else
                CFrameTargetTp = CFrame.new(-5458.5849609375, 47.87034606933594, -814.068115234375)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Cursed Ship" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(nil)
            else
                CFrameTargetTp = CFrame.new(nil)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Hot Island" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-5933.240234375, 16.172576904296875, -5054.5400390625)
            else
                CFrameTargetTp = CFrame.new(-5933.240234375, 16.172576904296875, -5054.5400390625)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Cold Island" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-5425.0546875, 15.852957725524902, -5244.63671875)
            else
                CFrameTargetTp = CFrame.new(-5425.0546875, 15.852957725524902, -5244.63671875)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Raid" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-6450.7060546875, 252.81024169921875, -4495.576171875)
            else
                CFrameTargetTp = CFrame.new(-6450.7060546875, 252.81024169921875, -4495.576171875)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Law Raid" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-5549.77099609375, 330.7765808105469, -5928.8642578125)
            else
                CFrameTargetTp = CFrame.new(-5549.77099609375, 330.7765808105469, -5928.8642578125)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Snow Mountain" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(404.9621276855469, 400.9583435058594, -5323.09228515625)
            else
                CFrameTargetTp = CFrame.new(404.9621276855469, 400.9583435058594, -5323.09228515625)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Dark Areana" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(3756.60400390625, 13.871602058410645, -3533.947998046875)
            else
                CFrameTargetTp = CFrame.new(3756.60400390625, 13.871602058410645, -3533.947998046875)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Ice Castle" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(5672.884765625, 27.25011444091797, -6461.46826171875)
            else
                CFrameTargetTp = CFrame.new(5672.884765625, 27.25011444091797, -6461.46826171875)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Forgotten Island" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-3040.594482421875, 6.138787269592285, -9596.7373046875)
            else
                CFrameTargetTp = CFrame.new(-3040.594482421875, 6.138787269592285, -9596.7373046875)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "Usoup's Island" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(4748.18994140625, 12.582029342651367, 2852.78369140625)
            else
                CFrameTargetTp = CFrame.new(4748.18994140625, 12.582029342651367, 2852.78369140625)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        elseif SelectTpSpot == "What is this Island" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-5089.3173828125, 3.617180109024048, 2381.7216796875)
            else
                CFrameTargetTp = CFrame.new(-5089.3173828125, 3.617180109024048, 2381.7216796875)
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
                end
            end
        end
    elseif Third_World then
        if SelectTpSpot == "Mansion" then
            if InstanceTp then
                if Setting.UnlockPortal then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                    task.wait(0.5)
                end
            else
                if Setting.UnlockPortal then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                    task.wait(0.5)
                end
            end
        elseif SelectTpSpot == "Port Town" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
            else
                CFrameTargetTp = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
                if (Vector3.new(-435.68109130859, 189.69866943359, 5551.0756835938) - player.Character.HumanoidRootPart.Position).Magnitude > 9000 then
                    if Setting.UnlockPortal then
                        CommF:InvokeServer("requestEntrance", Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                        task.wait(0.5)
                    end
                end
            end
        elseif SelectTpSpot == "Great Tree" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
            else
                CFrameTargetTp = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
                if (Vector3.new(2198.0063476563, 128.71075439453, -7109.5043945313) - player.Character.HumanoidRootPart.Position).Magnitude > 11500 then
                    if Setting.UnlockPortal then
                        CommF:InvokeServer("requestEntrance", Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                        task.wait(0.5)
                    end
                end
            end
        elseif SelectTpSpot == "Castle On The Sea" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-5072.08984375, 314.5412902832, -3151.1098632812)
                if Setting.UnlockPortal then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                    task.wait(0.5)
                end
            else
                CFrameTargetTp = CFrame.new(-5072.08984375, 314.5412902832, -3151.1098632812)
                if Setting.UnlockPortal then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                    task.wait(0.5)
                end
            end
        elseif SelectTpSpot == "MiniSky" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125)
            else
                CFrameTargetTp = CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125)
            end
        elseif SelectTpSpot == "Hydra Island" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(5748.7587890625, 610.44982910156, -267.81704711914)
                if Setting.UnlockPortal then
                    CommF:InvokeServer("requestEntrance", Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                    task.wait(0.5)
                end
            else
                CFrameTargetTp = CFrame.new(5748.7587890625, 610.44982910156, -267.81704711914)
                if Setting.UnlockPortal then
                    CommF:InvokeServer("requestEntrance", Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                    task.wait(0.5)
                end
            end
        elseif SelectTpSpot == "Floating Turtle" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-12471.169921875, 374.94024658203, -7551.677734375)
                if Setting.UnlockPortal then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                    task.wait(0.5)
                end
            else
                CFrameTargetTp = CFrame.new(-12471.169921875, 374.94024658203, -7551.677734375)
                if Setting.UnlockPortal then
                    CommF:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                    task.wait(0.5)
                end
            end
        elseif SelectTpSpot == "Haunted Castle" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-9709.30762, 204.695892, 6044.04688)
            else
                CFrameTargetTp = CFrame.new(-9709.30762, 204.695892, 6044.04688)
                if Setting.UnlockPortal then
                    if (Vector3.new(2198.0063476563, 128.71075439453, -7109.5043945313) - player.Character.HumanoidRootPart.Position).Magnitude > 9000 then
                        CommF:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                        task.wait(0.5)
                    end
                end
            end
        elseif SelectTpSpot == "Ice Cream Island" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-821.35913085938, 65.845329284668, -10965.2578125)
            else
                CFrameTargetTp = CFrame.new(-821.35913085938, 65.845329284668, -10965.2578125)
                if Setting.UnlockPortal then
                    if (Vector3.new(-821.35913085938, 65.845329284668, -10965.2578125) - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                        CommF:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                        task.wait(0.5)
                    end
                end
            end
        elseif SelectTpSpot == "Peanut Island" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-2104.453125, 38.129974365234, -10194.0078125)
            else
                CFrameTargetTp = CFrame.new(-2104.453125, 38.129974365234, -10194.0078125)
                if Setting.UnlockPortal then
                    if (Vector3.new(-2104.453125, 38.129974365234, -10194.0078125) - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                        CommF:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                        task.wait(0.5)
                    end
                end
            end
        elseif SelectTpSpot == "Peanut Island" then
            if InstanceTp then
                CFrameTargetTp = CFrame.new(-2017.4874267578125, 36.85276412963867, -12027.53515625)
            else
                CFrameTargetTp = CFrame.new(-2017.4874267578125, 36.85276412963867, -12027.53515625)
                if Setting.UnlockPortal then
                    if (Vector3.new(-2017.4874267578125, 36.85276412963867, -12027.53515625) - player.Character.HumanoidRootPart.Position).Magnitude > 10500 then
                        CommF:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                        task.wait(0.5)
                    end
                end
            end
        end
    end
end
local function CheckLevel()
    Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
    if Old_World then
        if ((Lv == 1 or Lv <= 9) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Bandit" and not Setting.AutoFarmLevel) then -- Bandit
            Ms = "Bandit [Lv. 5]"
            NameQuest = "BanditQuest1"
            QuestLv = 1
            NameMon = "Bandit"
            CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
            CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
        elseif ((Lv == 10 or Lv <= 14) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Monkey") then -- Monkey
            Ms = "Monkey [Lv. 14]"
            NameQuest = "JungleQuest"
            QuestLv = 1
            NameMon = "Monkey"
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
        elseif ((Lv == 15 or Lv <= 29) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Gorilla") then -- Gorilla
            Ms = "Gorilla [Lv. 20]"
            NameQuest = "JungleQuest"
            QuestLv = 2
            NameMon = "Gorilla"
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
        elseif ((Lv == 30 or Lv <= 39) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Pirate") then -- Pirate
            Ms = "Pirate [Lv. 35]"
            NameQuest = "BuggyQuest1"
            QuestLv = 1
            NameMon = "Pirate"
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
        elseif ((Lv == 40 or Lv <= 59) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Brute") then -- Brute
            Ms = "Brute [Lv. 45]"
            NameQuest = "BuggyQuest1"
            QuestLv = 2
            NameMon = "Brute"
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
        elseif ((Lv == 60 or Lv <= 74) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Desert Bandit") then -- Desert Bandit
            Ms = "Desert Bandit [Lv. 60]"
            NameQuest = "DesertQuest"
            QuestLv = 1
            NameMon = "Desert Bandit"
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
        elseif ((Lv == 75 or Lv <= 89) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Desert Officer") then -- Desert Officer
            Ms = "Desert Officer [Lv. 70]"
            NameQuest = "DesertQuest"
            QuestLv = 2
            NameMon = "Desert Officer"
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
        elseif ((Lv == 90 or Lv <= 99) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Snow Bandit") then -- Snow Bandit
            Ms = "Snow Bandit [Lv. 90]"
            NameQuest = "SnowQuest"
            QuestLv = 1
            NameMon = "Snow Bandit"
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
        elseif ((Lv == 100 or Lv <= 119) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Snowman") then -- Snowman
            Ms = "Snowman [Lv. 100]"
            NameQuest = "SnowQuest"
            QuestLv = 2
            NameMon = "Snowman"
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
        elseif ((Lv == 120 or Lv <= 149) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Chief Petty Officer") then -- Chief Petty Officer
            Ms = "Chief Petty Officer [Lv. 120]"
            NameQuest = "MarineQuest2"
            QuestLv = 1
            NameMon = "Chief Petty Officer"
            CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
            CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
        elseif ((Lv == 150 or Lv <= 174) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Sky Bandit") then -- Sky Bandit
            Ms = "Sky Bandit [Lv. 150]"
            NameQuest = "SkyQuest"
            QuestLv = 1
            NameMon = "Sky Bandit"
            CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
            CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
            if Setting.AutoFarmLevel and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
            end             
        elseif ((Lv == 175 or Lv <= 189) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Dark Master") then -- Dark Master
            Ms = "Dark Master [Lv. 175]"
            NameQuest = "SkyQuest"
            QuestLv = 2
            NameMon = "Dark Master"
            CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
            CFrameMon = CFrame.new(-5357.3515625, 449.032958984375, -2265.667236328125)
            if Setting.AutoFarmLevel and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                CommF:InvokeServer("requestEntrance", Vector3.new(-4607.82275390625, 874.3905029296875, -1667.556884765625))
            end
        elseif ((Lv == 190 or Lv <= 209) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Prisoner") then -- Prisoner
            Ms = "Prisoner [Lv. 190]"
            NameQuest = "PrisonerQuest"
            QuestLv = 1
            NameMon = "Prisoner"
            CFrameQ = CFrame.new(5308.98828125, 1.7804901599884033, 475.06048583984375)
            CFrameMon = CFrame.new(5164.1083984375, 15.778244972229004, 489.6533508300781)
        elseif ((Lv == 210 or Lv <= 249) or Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Dangerous Prisoner") then -- Dangerous Prisoner
            Ms = "Dangerous Prisoner [Lv. 210]"
            NameQuest = "PrisonerQuest"
            QuestLv = 2
            NameMon = "Dangerous Prisoner"
            CFrameQ = CFrame.new(5308.98828125, 1.7804901599884033, 475.06048583984375)
            CFrameMon = CFrame.new(5564.0322265625, 15.759016036987305, 682.16455078125)
        elseif ((Lv == 250 or Lv <= 274) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Toga Warrior") then -- Toga Warrior
            Ms = "Toga Warrior [Lv. 250]"
            NameQuest = "ColosseumQuest"
            QuestLv = 1
            NameMon = "Toga Warrior"
            CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
            CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
        elseif ((Lv == 275 or Lv <= 299) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Gladiator") then -- Gladiator
            Ms = "Gladiator [Lv. 275]"
            NameQuest = "ColosseumQuest"
            QuestLv = 2
            NameMon = "Gladiator"
            CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
            CFrameMon = CFrame.new(-1324.32666015625, 58.49076843261719, -3242.227294921875)
        elseif ((Lv == 300 or Lv <= 329) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Military Soldier") then -- Military Soldier
            Ms = "Military Soldier [Lv. 300]"
            NameQuest = "MagmaQuest"
            QuestLv = 1
            NameMon = "Military Soldier"
            CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
            CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
        elseif ((Lv == 330 or Lv <= 374) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Military Spy") then -- Military Spy
            Ms = "Military Spy [Lv. 325]"
            NameQuest = "MagmaQuest"
            QuestLv = 2
            NameMon = "Military Spy"
            CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
            CFrameMon = CFrame.new(-5984.0532226563, 82.14656829834, 8753.326171875)
        elseif ((Lv == 375 or Lv <= 399) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Fishman Warrior") then -- Fishman Warrior 
            Setting.FM = true
            Ms = "Fishman Warrior [Lv. 375]"
            NameQuest = "FishmanQuest"
            QuestLv = 1
            NameMon = "Fishman Warrior"
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
            if Setting.AutoFarmLevel and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                CommF:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif ((Lv == 400 or Lv <= 449) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Fishman Commando") then -- Fishman Commando
            Setting.FM = true
            Ms = "Fishman Commando [Lv. 400]"
            NameQuest = "FishmanQuest"
            QuestLv = 2
            NameMon = "Fishman Commando"
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
            if Setting.AutoFarmLevel and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                CommF:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif ((Lv == 450 or Lv <= 474) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "God's Guard") then -- God's Guard
            Setting.FM = false
            Ms = "God's Guard [Lv. 450]"
            NameQuest = "SkyExp1Quest"
            QuestLv = 1
            NameMon = "God's Guard"
            CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
            CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
            if Setting.AutoFarmLevel and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                CommF:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif ((Lv == 475 or Lv <= 524) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Shanda") then -- Shanda
            Setting.FM = false
            Ms = "Shanda [Lv. 475]"
            NameQuest = "SkyExp1Quest"
            QuestLv = 2
            NameMon = "Shanda"
            CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
            CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
            if Setting.AutoFarmLevel and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                CommF:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif ((Lv == 525 or Lv <= 549) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Royal Squad") then -- Royal Squad
            Ms = "Royal Squad [Lv. 525]"
            NameQuest = "SkyExp2Quest"
            QuestLv = 1
            NameMon = "Royal Squad"
            CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
        elseif ((Lv == 550 or Lv <= 624) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Royal Soldier") then -- Royal Soldier
            Ms = "Royal Soldier [Lv. 550]"
            NameQuest = "SkyExp2Quest"
            QuestLv = 2
            NameMon = "Royal Soldier"
            CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
        elseif ((Lv == 625 or Lv <= 649) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Galley Pirate") then -- Galley Pirate
            Ms = "Galley Pirate [Lv. 625]"
            NameQuest = "FountainQuest"
            QuestLv = 1
            NameMon = "Galley Pirate"
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
        elseif (Lv >= 650 and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Galley Captain") then -- Galley Captain
            Ms = "Galley Captain [Lv. 650]"
            NameQuest = "FountainQuest"
            QuestLv = 2
            NameMon = "Galley Captain"
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
        end
    end
    if New_World then
        if ((Lv == 700 or Lv <= 724) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Raider") then -- Raider
            Ms = "Raider [Lv. 700]"
            NameQuest = "Area1Quest"
            QuestLv = 1
            NameMon = "Raider"
            CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
            CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
        elseif ((Lv == 725 or Lv <= 774) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Mercenary") then -- Mercenary
            Ms = "Mercenary [Lv. 725]"
            NameQuest = "Area1Quest"
            QuestLv = 2
            NameMon = "Mercenary"
            CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
            CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
        elseif ((Lv == 775 or Lv <= 799) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Swan Pirate") then -- Swan Pirate
            Ms = "Swan Pirate [Lv. 775]"
            NameQuest = "Area2Quest"
            QuestLv = 1
            NameMon = "Swan Pirate"
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
            CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
        elseif ((Lv == 800 or Lv <= 874) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Factory Staff") then -- Factory Staff
            Ms = "Factory Staff [Lv. 800]"
            NameQuest = "Area2Quest"
            QuestLv = 2
            NameMon = "Factory Staff"
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
            CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
        elseif ((Lv == 875 or Lv <= 899) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Marine Lieutenant") then -- Marine Lieutenant
            Ms = "Marine Lieutenant [Lv. 875]"
            NameQuest = "MarineQuest3"
            QuestLv = 1
            NameMon = "Marine Lieutenant"
            CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
            CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
        elseif ((Lv == 900 or Lv <= 949) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Marine Captain") then -- Marine Captain
            Ms = "Marine Captain [Lv. 900]"
            NameQuest = "MarineQuest3"
            QuestLv = 2
            NameMon = "Marine Captain"
            CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
            CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
            if Lv >= 925 then
                Setting.SelectBoss = "Fajita"
            end
        elseif ((Lv == 950 or Lv <= 974) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Zombie") then -- Zombie
            Ms = "Zombie [Lv. 950]"
            NameQuest = "ZombieQuest"
            QuestLv = 1
            NameMon = "Zombie"
            CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
            CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
        elseif ((Lv == 975 or Lv <= 999) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Vampire") then -- Vampire
            Ms = "Vampire [Lv. 975]"
            NameQuest = "ZombieQuest"
            QuestLv = 2
            NameMon = "Vampire"
            CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
            CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
        elseif ((Lv == 1000 or Lv <= 1049) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Snow Trooper") then -- Snow Trooper
            Ms = "Snow Trooper [Lv. 1000]"
            NameQuest = "SnowMountainQuest"
            QuestLv = 1
            NameMon = "Snow Trooper"
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
            CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
        elseif ((Lv == 1050 or Lv <= 1099) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Winter Warrior") then -- Winter Warrior
            Ms = "Winter Warrior [Lv. 1050]"
            NameQuest = "SnowMountainQuest"
            QuestLv = 2
            NameMon = "Winter Warrior"
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
            CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
        elseif ((Lv == 1100 or Lv <= 1124) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Lab Subordinate") then -- Lab Subordinate
            Ms = "Lab Subordinate [Lv. 1100]"
            NameQuest = "IceSideQuest"
            QuestLv = 1
            NameMon = "Lab Subordinate"
            CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
            CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
        elseif ((Lv == 1125 or Lv <= 1174) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Horned Warrior") then -- Horned Warrior
            Ms = "Horned Warrior [Lv. 1125]"
            NameQuest = "IceSideQuest"
            QuestLv = 2
            NameMon = "Horned Warrior"
            CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
            CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
        elseif ((Lv == 1175 or Lv <= 1199) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Magma Ninja") then -- Magma Ninja
            Ms = "Magma Ninja [Lv. 1175]"
            NameQuest = "FireSideQuest"
            QuestLv = 1
            NameMon = "Magma Ninja"
            CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
        elseif ((Lv == 1200 or Lv <= 1249) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Lava Pirate") then -- Lava Pirate
            Ms = "Lava Pirate [Lv. 1200]"
            NameQuest = "FireSideQuest"
            QuestLv = 2
            NameMon = "Lava Pirate"
            CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
        elseif ((Lv == 1250 or Lv <= 1274) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Ship Deckhand") then -- Ship Deckhand
            Ms = "Ship Deckhand [Lv. 1250]"
            NameQuest = "ShipQuest1"
            QuestLv = 1
            NameMon = "Ship Deckhand"
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
            if Auto_Farm and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                CommF:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif ((Lv == 1275 or Lv <= 1299) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Ship Engineer") then -- Ship Engineer
            Ms = "Ship Engineer [Lv. 1275]"
            NameQuest = "ShipQuest1"
            QuestLv = 2
            NameMon = "Ship Engineer"
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
            if Auto_Farm and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                CommF:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif ((Lv == 1300 or Lv <= 1324) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Ship Steward") then -- Ship Steward
            Ms = "Ship Steward [Lv. 1300]"
            NameQuest = "ShipQuest2"
            QuestLv = 1
            NameMon = "Ship Steward"
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
            if Auto_Farm and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                CommF:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif ((Lv == 1325 or Lv <= 1349) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Ship Officer") then -- Ship Officer
            Ms = "Ship Officer [Lv. 1325]"
            NameQuest = "ShipQuest2"
            QuestLv = 2
            NameMon = "Ship Officer"
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
            if Auto_Farm and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                CommF:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif ((Lv == 1350 or Lv <= 1374) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Arctic Warrior") then -- Arctic Warrior
            Ms = "Arctic Warrior [Lv. 1350]"
            NameQuest = "FrostQuest"
            QuestLv = 1
            NameMon = "Arctic Warrior"
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
            CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
            if Auto_Farm and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 20000 then
                CommF:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
            end
        elseif ((Lv == 1375 or Lv <= 1424) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Snow Lurker") then -- Snow Lurker
            Ms = "Snow Lurker [Lv. 1375]"
            NameQuest = "FrostQuest"
            QuestLv = 2
            NameMon = "Snow Lurker"
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
            CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
        elseif ((Lv == 1425 or Lv <= 1449) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Sea Soldier") then -- Sea Soldier
            Ms = "Sea Soldier [Lv. 1425]"
            NameQuest = "ForgottenQuest"
            QuestLv = 1
            NameMon = "Sea Soldier"
            CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
            CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
        elseif (Lv >= 1450 and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Water Fighter") then -- Water Fighter
            Ms = "Water Fighter [Lv. 1450]"
            NameQuest = "ForgottenQuest"
            QuestLv = 2
            NameMon = "Water Fighter"
            CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
            CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
        end
    end
    if Third_World then
        if ((Lv == 1500 or Lv <= 1524) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Pirate Millionaire") then -- Pirate Millionaire
            Ms = "Pirate Millionaire [Lv. 1500]"
            NameQuest = "PiratePortQuest"
            QuestLv = 1
            NameMon = "Pirate Millionaire"
            CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
            CFrameMon = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 9000 then
                if Setting.UnlockPortal then
                    if (Setting.Castletophydra.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance", Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv == 1525 or Lv <= 1574) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Pistol Billionaire") then -- Pistol Billoonaire
            Ms = "Pistol Billionaire [Lv. 1525]"
            NameQuest = "PiratePortQuest"
            QuestLv = 2
            NameMon = "Pistol Billionaire"
            CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
            CFrameMon = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 9000 then
                if Setting.UnlockPortal then
                    if (Setting.Castletophydra.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance", Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv == 1575 or Lv <= 1599) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Dragon Crew Warrior") then -- Dragon Crew Warrior
            Ms = "Dragon Crew Warrior [Lv. 1575]"
            NameQuest = "AmazonQuest"
            QuestLv = 1
            NameMon = "Dragon Crew Warrior"
            CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 4000 then
                if Setting.UnlockPortal then
                    if (Setting.Castletophydra.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance", Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv == 1600 or Lv <= 1624) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Dragon Crew Archer") then -- Dragon Crew Archer
            Ms = "Dragon Crew Archer [Lv. 1600]"
            NameQuest = "AmazonQuest"
            QuestLv = 2
            NameMon = "Dragon Crew Archer"
            CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 4000 then
                if Setting.UnlockPortal then
                    if (Setting.Castletophydra.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance", Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv == 1625 or Lv <= 1649) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Female Islander") then -- Female Islander
            Ms = "Female Islander [Lv. 1625]"
            NameQuest = "AmazonQuest2"
            QuestLv = 1
            NameMon = "Female Islander"
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 4000 then
                if Setting.UnlockPortal then
                    if (Setting.Castletophydra.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance", Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv == 1650 or Lv <= 1699) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Giant Islander") then -- Giant Islander
            Ms = "Giant Islander [Lv. 1650]"
            NameQuest = "AmazonQuest2"
            QuestLv = 2
            NameMon = "Giant Islander"
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 4000 then
                if Setting.UnlockPortal then
                    if (Setting.Castletophydra.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance", Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv == 1700 or Lv <= 1724) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Marine Commodore") then -- Marine Commodore
            Ms = "Marine Commodore [Lv. 1700]"
            NameQuest = "MarineTreeIsland"
            QuestLv = 1
            NameMon = "Marine Commodore"
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 11500 then
                if Setting.UnlockPortal then
                    if (Setting.Castletophydra.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance", Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv == 1725 or Lv <= 1774) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Marine Rear Admiral") then -- Marine Rear Admiral
            Ms = "Marine Rear Admiral [Lv. 1725]"
            NameQuest = "MarineTreeIsland"
            QuestLv = 2
            NameMon = "Marine Rear Admiral"
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 11500 then
                if Setting.UnlockPortal then
                    if (Setting.Castletophydra.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance", Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv == 1775 or Lv <= 1799) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Fishman Raider") then -- Fishman Raide
            Ms = "Fishman Raider [Lv. 1775]"
            NameQuest = "DeepForestIsland3"
            QuestLv = 1
            NameMon = "Fishman Raider"
            CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
            CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 5000 then
                if Setting.UnlockPortal then
                    if (Setting.CastlePostoMansion.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv == 1800 or Lv <= 1824) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Fishman Captain") then -- Fishman Captain
            Ms = "Fishman Captain [Lv. 1800]"
            NameQuest = "DeepForestIsland3"
            QuestLv = 2
            NameMon = "Fishman Captain"
            CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
            CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 5000 then
                if Setting.UnlockPortal then
                    if (Setting.CastlePostoMansion.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv == 1825 or Lv <= 1849) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Forest Pirate") then -- Forest Pirate
            Ms = "Forest Pirate [Lv. 1825]"
            NameQuest = "DeepForestIsland"
            QuestLv = 1
            NameMon = "Forest Pirate"
            CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
            CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 5000 then
                if Setting.UnlockPortal then
                    if (Setting.CastlePostoMansion.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv == 1850 or Lv <= 1899) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Mythological Pirate") then -- Mythological Pirate
            Ms = "Mythological Pirate [Lv. 1850]"
            NameQuest = "DeepForestIsland"
            QuestLv = 2
            NameMon = "Mythological Pirate"
            CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
            CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 5000 then
                if Setting.UnlockPortal then
                    if (Setting.CastlePostoMansion.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv >= 1900 and Lv <= 1924) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Jungle Pirate") then -- Jungle Pirate
            Ms = "Jungle Pirate [Lv. 1900]"
            NameQuest = "DeepForestIsland2"
            QuestLv = 1
            NameMon = "Jungle Pirate"
            CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 5000 then
                if Setting.UnlockPortal then
                    if (Setting.CastlePostoMansion.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv >= 1925 and Lv <= 1974) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Musketeer Pirate") then -- Musketeer Pirate
            Ms = "Musketeer Pirate [Lv. 1925]"
            NameQuest = "DeepForestIsland2"
            QuestLv = 2
            NameMon = "Musketeer Pirate"
            CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 5000 then
                if Setting.UnlockPortal then
                    if (Setting.CastlePostoMansion.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv >= 1975 and Lv <= 1999) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Reborn Skeleton") then -- Reborn Skeleton
            Ms = "Musketeer Pirate [Lv. 1925]"
            NameQuest = "DeepForestIsland2"
            QuestLv = 2
            NameMon = "Musketeer Pirate"
            CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 5000 then
                if Setting.UnlockPortal then
                    if (Setting.CastlePostoMansion.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv >= 2000 and Lv <= 2024) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Living Zombie") then -- Living Zombie
            Ms = "Living Zombie [Lv. 2000]"
            NameQuest = "HauntedQuest1"
            QuestLv = 2
            NameMon = "Living Zombie"
            CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305)
            CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 9000 then
                if Setting.UnlockPortal then
                    if (Setting.MansiontoCastlePos.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv >= 2025 and Lv <= 2049) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Demonic Soul") then -- Demonic Soul
            Ms = "Demonic Soul [Lv. 2025]"
            NameQuest = "HauntedQuest1"
            QuestLv = 1
            NameMon = "Demonic Souls"
            CFrameQ = CFrame.new(-9515.39551, 172.266037, 6078.89746)
            CFrameMon = CFrame.new(-9709.30762, 204.695892, 6044.04688)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 9000 then
                if Setting.UnlockPortal then
                    if (Setting.MansiontoCastlePos.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv >= 2050 and Lv <= 2074) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Posessed Mummy") then -- Posessed Mummy
            Ms = "Posessed Mummy [Lv. 2050]"
            NameQuest = "HauntedQuest2"
            QuestLv = 2
            NameMon = "Posessed Mummys"
            CFrameQ = CFrame.new(-9515.39551, 172.266037, 6078.89746)
            CFrameMon = CFrame.new(-9554.11035, 65.6141663, 6041.73584)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 9000 then
                if Setting.UnlockPortal then
                    if (Setting.MansiontoCastlePos.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv >= 2075 and Lv <= 2099) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Peanut Scout") then -- Peanut Scout
            Ms = "Peanut Scout [Lv. 2075]"
            NameQuest = "PeanutQuest1"
            QuestLv = 1
            NameMon = "Peanut Scout"
            CFrameQ = CFrame.new(-2104.453125, 38.129974365234, -10194.0078125)
            CFrameMon = CFrame.new(-2068.0949707031, 76.512603759766, -10117.150390625)
            if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                if Setting.UnlockPortal then
                    if (Setting.MansiontoCastlePos.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 then
                        CommF:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                        task.wait(0.5)
                    end
                end
            end
        elseif ((Lv >= 2100 and Lv <= 2124) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Peanut President") then -- Peanut President
            Ms = "Peanut President [Lv. 2100]"
            NameQuest = "PeanutQuest2"
            QuestLv = 2
            NameMon = "Peanut Presidents"
            CFrameQ = CFrame.new(-2104.453125, 38.129974365234, -10194.0078125)
            CFrameMon = CFrame.new(-2067.33203125, 90.557350158691, -10552.051757812)
        elseif ((Lv >= 2125 and Lv <= 2149) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Ice Cream Chef") then --Ice Cream Chef
            Ms = "Ice Cream Chef [Lv. 2125]"
            NameQuest = "IceCreamQuest1"
            QuestLv = 1
            NameMon = "	Ice Cream Chefs"
            CFrameQ = CFrame.new(-821.35913085938, 65.845329284668, -10965.2578125)
            CFrameMon = CFrame.new(-796.37261962891, 110.95275878906, -10847.473632812)
        elseif ((Lv >= 2150 and Lv <= 2200) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Ice Cream Commander") then -- Ice Cream Commander
            Ms = "Ice Cream Commander [Lv. 2150]"
            NameQuest = "IceCreamIslandQuest"
            QuestLv = 2
            NameMon = "Ice Cream Commanders"
            CFrameQ = CFrame.new(-821.35913085938, 65.845329284668, -10965.2578125)
            CFrameMon = CFrame.new(-697.65338134766, 174.48368835449, -11218.38671875)
        elseif ((Lv >= 2200 and Lv <= 2250) and not Setting.AutoFarmSelectMob) or (Setting.AutoFarmSelectMob and tostring(Setting.SelectMob) == "Cookie Crafter") then -- Cookie Crafter
            Ms = "Cookie Crafter [Lv. 2200]"
            NameQuest = "CakeQuest1"
            QuestLv = 1
            NameMon = "Cookie Crafters"
            CFrameQ = CFrame.new(-2017.4874267578125, 36.85276412963867, -12027.53515625)
            CFrameMon = CFrame.new(-2358.5791015625, 36.85615539550781, -12111.052734375)
        end
    end
end

































--[[
$$$$$$$$\ $$\   $$\ $$\   $$\  $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\         $$$$$$\  
$$  _____|$$ |  $$ |$$$\  $$ |$$  __$$\\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |$$  __$$\       $$  __$$\ 
$$ |      $$ |  $$ |$$$$\ $$ |$$ /  \__|  $$ |     $$ |  $$ /  $$ |$$$$\ $$ |$$ /  \__|      \__/  $$ |
$$$$$\    $$ |  $$ |$$ $$\$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ $$\$$ |\$$$$$$\         $$$$$$  |
$$  __|   $$ |  $$ |$$ \$$$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ \$$$$ | \____$$\       $$  ____/ 
$$ |      $$ |  $$ |$$ |\$$$ |$$ |  $$\   $$ |     $$ |  $$ |  $$ |$$ |\$$$ |$$\   $$ |      $$ |      
$$ |      \$$$$$$  |$$ | \$$ |\$$$$$$  |  $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |\$$$$$$  |      $$$$$$$$\ 
\__|       \______/ \__|  \__| \______/   \__|   \______| \______/ \__|  \__| \______/       \________|
]]






























local function OnFluentChange()
    if Window.Root.Visible then
        TTJYHUB.TextColor3  = Color3.fromRGB(0, 255, 0)
    else
        TTJYHUB.TextColor3  = Color3.fromRGB(255, 0, 0)
    end
end
local function SVHop()
    task.wait(5)
    if StopAllHop then

    else
        serializedSetting = game.HttpService:JSONEncode(Setting)
        task.wait()
        writefile("Setting/setting.json", serializedSetting)
        task.wait()

        repeat
            if StopAllHop then
                break
            else
                local Placeid = game.PlaceId
                game:GetService("TeleportService"):Teleport(Placeid)
            end
            task.wait(5)
        until StopAllHop
    end
end
local function tp(x, y, z)
    if player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z)
        task.wait()
    end
end
local function tp2(xyz)
    if player.Character:FindFirstChild("HumanoidRootPart") then
        player.Character.HumanoidRootPart.CFrame = xyz.Position
        task.wait()
    end
end
local function tpwithnewtpbyme(a,b,c,speedoftpNTP)
    local hrd = player.Character.HumanoidRootPart
    local p = hrd.Position
    local currentPos = Vector3.new(p.x, p.y, p.z)
    local targetPos = Vector3.new(a, b, c)

    local direction = (targetPos - currentPos).Unit
    local distance = (targetPos - currentPos).Magnitude
    local steps = math.floor(distance / speedoftpNTP) 
    for i = 1, steps do
        if not player.Character:FindFirstChild("Humanoid") then
            repeat task.wait(0.175) until player.Character:FindFirstChild("Humanoid")
        end
        if Setting.BREAKALLTHISSHITHAHAHAHAHA then
            break
        end
        currentPos = currentPos + direction * speedoftpNTP 
        player.Character.HumanoidRootPart.CFrame = CFrame.new(currentPos)
        task.wait()
    end
end
local function tpwithnewtpbyme2(xyz,speedoftpNTP)
    local hrd = player.Character.HumanoidRootPart
    local p = hrd.Position
    local currentPos = Vector3.new(p.x, p.y, p.z)
    local targetPos = xyz.Position

    local direction = (targetPos - currentPos).Unit
    local distance = (targetPos - currentPos).Magnitude
    local steps = math.floor(distance / speedoftpNTP) 
    for i = 1, steps do
        if not player.Character:FindFirstChild("Humanoid") then
            repeat task.wait(0.175) until player.Character:FindFirstChild("Humanoid")
        end
        if Setting.BREAKALLTHISSHITHAHAHAHAHA then
            break
        end
        currentPos = currentPos + direction * speedoftpNTP 
        player.Character.HumanoidRootPart.CFrame = CFrame.new(currentPos)
        task.wait()
    end
end
local function tpwithnewtpbyme3(part,speedoftpNTP)
    local Targetpart = part
    local p = part.Position
    local currentPos = Vector3.new(p.X, p.Y, p.Z)
    local targetPos = player.Character.HumanoidRootPart.Position

    local direction = (targetPos - currentPos).Unit
    local distance = (targetPos - currentPos).Magnitude
    local steps = math.floor(distance / speedoftpNTP) 
    for i = 1, steps do
        currentPos = currentPos + direction * speedoftpNTP 
        part.Position = currentPos
        task.wait()
    end
end
local function tpwithseat(xyz,speedoftpNTP)
    local hrd = player.Character.HumanoidRootPart
    local p = hrd.Position
    local currentPos = Vector3.new(p.x, p.y, p.z)
    local targetPos = xyz.Position

    local direction = (targetPos - currentPos).Unit
    local distance = (targetPos - currentPos).Magnitude
    local steps = math.floor(distance / speedoftpNTP) 
    for i = 1, steps do
        if not player.Character:FindFirstChild("Humanoid") then
            repeat task.wait(0.175) until player.Character:FindFirstChild("Humanoid")
        end
        if Setting.BREAKALLTHISSHITHAHAHAHAHA then
            break
        end
        if Setting.WaitBRUH then
            repeat task.wait() until not Setting.WaitBRUH or Setting.BREAKALLTHISSHITHAHAHAHAHA
        end
        currentPos = currentPos + direction * speedoftpNTP 
        game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(CFrame.new(currentPos))
        task.wait()
    end
end
function TpShipToLevel()
    if Setting.SelectSeaLevel == "1" then
        tpwithseat(CFrame.new(-23872.423828125, 13.270583152770996, 792.7938232421875), tonumber(Setting.TeleportSpeedAutoFarm))
    elseif Setting.SelectSeaLevel == "2" then
        tpwithseat(CFrame.new(-27782.32421875, 10.934972763061523, 1278.9227294921875), tonumber(Setting.TeleportSpeedAutoFarm))
    elseif Setting.SelectSeaLevel == "3" then
        tpwithseat(CFrame.new(-31620.69921875, 5.933741092681885, -323.7947692871094), tonumber(Setting.TeleportSpeedAutoFarm))
    elseif Setting.SelectSeaLevel == "4" then
        tpwithseat(CFrame.new(-36455.96875, 5.935291767120361, -522.872802734375), tonumber(Setting.TeleportSpeedAutoFarm))
    elseif Setting.SelectSeaLevel == "5" then
        tpwithseat(CFrame.new(-40951.2890625, 5.934666633605957, -346.8652648925781), tonumber(Setting.TeleportSpeedAutoFarm))
    elseif Setting.SelectSeaLevel == "6" then
        tpwithseat(CFrame.new(-42190.67578125, 5.93480110168457, 7495.6953125), tonumber(Setting.TeleportSpeedAutoFarm))
    end
end
local function isTargetNearPlayer(targetCFrame, proximityThreshold)
    local playerPosition = player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character.HumanoidRootPart.Position
    if playerPosition then
        local distance = (targetCFrame.Position - playerPosition).Magnitude
        return distance <= proximityThreshold
    else
        return false
    end
end
local function AutoGetShip()
    if not game.Players.LocalPlayer.Character.Humanoid.Sit and not Setting.WaitBRUH then
        tpwithnewtpbyme(-16927.72265625, 9.857428550720215, 433.8697509765625, tonumber(Setting.TeleportSpeedAutoFarm))
        task.wait()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", tostring(Setting.SelectShipISeaEvent))
        task.wait(0.675)
        for _, v in pairs(workspace.Boats:GetChildren()) do
            if v and v:FindFirstChild("Owner") and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                tpwithnewtpbyme2(v.VehicleSeat.CFrame, tonumber(Setting.TeleportSpeedAutoFarm))
                task.wait()
                repeat
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.VehicleSeat.CFrame
                    task.wait()
                until not v or game.Players.LocalPlayer.Character.Humanoid.Sit
            end
        end
    end
end
local function EquipWeapon(Name)
    if Backpack:FindFirstChild(Name) then
      local Tool = Backpack:FindFirstChild(Name)
      task.wait(0.02)
      player.Character.Humanoid:EquipTool(Tool)
      task.wait(0.5)
    end
end
function EquipGun()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == "Gun" then
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
			end
		end
	end
end
function EquipMelee()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == "Melee" then
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
			end
		end
	end
end
function EquipSword()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == "Sword" then
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
			end
		end
	end
end
local function StopTeleport()
    STOPTP.TextColor3  = Color3.fromRGB(0, 255, 0)
    Setting.BREAKALLTHISSHITHAHAHAHAHA = true
    task.wait(0.275)
    STOPTP.TextColor3  = Color3.fromRGB(255, 0, 0)
    Setting.BREAKALLTHISSHITHAHAHAHAHA = false
end
local function teleportToNearestChest()
    local playerPosition = player.Character.HumanoidRootPart.Position
    local nearestChest = nil
    local shortestDistance = math.huge

    if Setting.AutoNormalChest and not Setting.AutoDetailChest then
        for _, v in pairs(workspace:GetChildren()) do
            if v:IsA("BasePart") and (v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3") then
                local distance = (v.Position - playerPosition).Magnitude
                if distance < shortestDistance then
                    nearestChest = v
                    shortestDistance = distance
                end
            end
        end
    elseif (Setting.AutoNormalChest and Setting.AutoDetailChest) or (not Setting.AutoNormalChest and Setting.AutoDetailChest) then
        for _, v in pairs(workspace:GetDescendants()) do
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
        task.wait()
        player.Character.HumanoidRootPart.CFrame = CFrame.new(nearestChest.Position.X, nearestChest.Position.Y, nearestChest.Position.Z)
    else

    end
end
local function ChestAdded(child)
    if child and child.Name == "NotificationTemplate" then
        Setting.chestcollect = Setting.chestcollect + 1
    end
end
local Part = Instance.new("Part")
Part.Size = Vector3.new(2, 0.2, 1.5)
Part.Material = Enum.Material.Grass
Part.Anchored = true
Part.Transparency = 1
Part.Parent = workspace

local function updatePartPosition()
    local character = player.Character
    local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

    if humanoidRootPart and float then
        Part.CFrame = humanoidRootPart.CFrame * CFrame.new(0, -3.55, 0)
    else
        Part.CFrame = CFrame.new(0, -10000, 0)
    end
end

game:GetService("RunService").RenderStepped:Connect(updatePartPosition)








local function CheckAndClearWeapon()
    if Setting.StackableSetting then
        if (Setting.AutoTwinHooks or Setting.AutoTwinHooksHop) and Setting.StackableSetting and Third_World then
            pcall(function()
                if workspace.Enemies:FindFirstChild("Captain Elephant") and Setting.StackableSetting then
                    for _,v in pairs(workspace.Enemies:GetChildren()) do
                        if v and v.Name == tostring("Captain Elephant") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoTwinHooks and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                    wait()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoTwinHooks or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if ReplicatedStorage:FindFirstChild("Captain Elephant") and Setting.StackableSetting then
                        tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                    end
                    task.wait(0.675)
                    for _,v in pairs(workspace.Enemies:GetChildren()) do
                        if v and v.Name == tostring("Captain Elephant") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoTwinHooks and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                    wait()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoTwinHooks or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
                            end
                        end
                    end
                end
            end)
        end
        task.wait()
        if (Setting.AutoBuddySword or Setting.AutoBuddySwordHop) and Setting.StackableSetting then
            pcall(function()
                if workspace.Enemies:FindFirstChild("Cake Queen") and Setting.StackableSetting then
                    for _,v in pairs(workspace.Enemies:GetChildren()) do
                        if v and v.Name == tostring("Cake Queen") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoBuddySword and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                    wait()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoBuddySword or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") and Setting.StackableSetting then
                        tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                        task.wait(0.675)
                        for _,v in pairs(workspace.Enemies:GetChildren()) do
                            if v and v.Name == tostring("Cake Queen") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoBuddySword and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                        wait()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoBuddySword or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        task.wait()
        if (Setting.AutoSharkSaw or Setting.AutoSharkSawHop) and Setting.StackableSetting then
            pcall(function()
                if workspace.Enemies:FindFirstChild("The Saw") and Setting.StackableSetting then
                    for _,v in pairs(workspace.Enemies:GetChildren()) do
                        if v and v.Name == tostring("The Saw") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoSharkSaw and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                    wait()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoSharkSaw or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("The Saw") and Setting.StackableSetting then
                        tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("The Saw").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                        task.wait(0.675)
                        for _,v in pairs(workspace.Enemies:GetChildren()) do
                            if v and v.Name == tostring("The Saw") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoSharkSaw and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                        wait()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoSharkSaw or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        task.wait()
        if (Setting.AutoWardensSword or Setting.AutoWardensSwordHop) and Setting.StackableSetting then
            pcall(function()
                if workspace.Enemies:FindFirstChild("Chief Warden") and Setting.StackableSetting then
                    for _,v in pairs(workspace.Enemies:GetChildren()) do
                        if v and v.Name == tostring("Chief Warden") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoWardensSword and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                    wait()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoWardensSword or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden") and Setting.StackableSetting then
                        tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Chief Warden").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                        task.wait(0.675)
                        for _,v in pairs(workspace.Enemies:GetChildren()) do
                            if v and v.Name == tostring("Chief Warden") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoWardensSword and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                        wait()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoWardensSword or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        task.wait()
        if (Setting.AutoGravityCane or Setting.AutoGravityCaneHop) and Setting.StackableSetting then
            pcall(function()
                if workspace.Enemies:FindFirstChild("Fajita") and Setting.StackableSetting then
                    for _,v in pairs(workspace.Enemies:GetChildren()) do
                        if v and v.Name == tostring("Fajita") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoGravityCane and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                    wait()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoGravityCane or Setting.TryNumOfthis1 == 30000 and Setting.StackableSetting
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Fajita") and Setting.StackableSetting then
                        tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Fajita").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                        task.wait(0.675)
                        for _,v in pairs(workspace.Enemies:GetChildren()) do
                            if v and v.Name == tostring("Fajita") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoGravityCane and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                        wait()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoGravityCane or Setting.TryNumOfthis1 == 30000 and Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        task.wait()
        if (Setting.AutoLongsword or Setting.AutoLongswordHop) and Setting.StackableSetting and New_World then
            pcall(function()
                if workspace.Enemies:FindFirstChild("Diamond") and Setting.StackableSetting then
                    for _,v in pairs(workspace.Enemies:GetChildren()) do
                        if v and v.Name == tostring("Diamond") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoLongsword and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                    wait()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoLongsword or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Diamond") and Setting.StackableSetting then
                        tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Diamond").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                        task.wait(0.675)
                        for _,v in pairs(workspace.Enemies:GetChildren()) do
                            if v and v.Name == tostring("Diamond") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoLongsword and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                        wait()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoLongsword or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        task.wait()
        if (Setting.AutoJitte or Setting.AutoJitteHop) and Setting.StackableSetting and New_World then
            pcall(function()
                if workspace.Enemies:FindFirstChild("Smoke Admiral") and Setting.StackableSetting then
                    for _,v in pairs(workspace.Enemies:GetChildren()) do
                        if v and v.Name == tostring("Smoke Admiral") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoJitte and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                    wait()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoJitte or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Smoke Admiral") and Setting.StackableSetting then
                        tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Smoke Admiral").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                        task.wait(0.675)
                        for _,v in pairs(workspace.Enemies:GetChildren()) do
                            if v and v.Name == tostring("Smoke Admiral") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoJitte and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                        wait()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoJitte or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        task.wait()
        if (Setting.AutoDragonTrident or Setting.AutoDragonTridentHop) and Setting.StackableSetting and New_World then
            pcall(function()
                if workspace.Enemies:FindFirstChild("Tide Keeper") and Setting.StackableSetting then
                    for _,v in pairs(workspace.Enemies:GetChildren()) do
                        if v and v.Name == tostring("Tide Keeper") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoDragonTrident and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                    wait()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoDragonTrident or Setting.TryNumOfthis1 == 30000  or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") and Setting.StackableSetting then
                        tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                        task.wait(0.675)
                        for _,v in pairs(workspace.Enemies:GetChildren()) do
                            if v and v.Name == tostring("Tide Keeper") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoDragonTrident and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                        wait()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoDragonTrident or Setting.TryNumOfthis1 == 30000  or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        task.wait()
        if (Setting.AutoPole or Setting.AutoPoleHop) and Setting.StackableSetting and Old_World then
            pcall(function()
                if workspace.Enemies:FindFirstChild("Thunder God") and Setting.StackableSetting then
                    for _,v in pairs(workspace.Enemies:GetChildren()) do
                        if v and v.Name == tostring("Thunder God") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoPole then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                    wait()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoPole or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") and Setting.StackableSetting then
                        tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Thunder God").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                        task.wait(0.675)
                        for _,v in pairs(workspace.Enemies:GetChildren()) do
                            if v and v.Name == tostring("Thunder God") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoPole then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                        wait()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoPole or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        task.wait()
        if (Setting.AutoHallowScythe or Setting.AutoHallowScytheHop) and Setting.StackableSetting and Third_World then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") and Setting.StackableSetting then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v and v.Name == tostring("Soul Reaper") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoHallowScythe and Setting.StackableSetting then
                                EquipWeapon(tostring(Setting.SelectWeapon))
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                    wait()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoHallowScythe or Setting.TryNumOfthis1 == 100000 or not Setting.StackableSetting
                            end
                        end
                    end
                elseif (Backpack:FindFirstChild("Hallow Essence") or player.Character:FindFirstChild("Hallow Essence")) and Setting.StackableSetting then
                    repeat 
                        tpwithnewtpbyme2(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125), tonumber(Setting.TeleportSpeedAutoFarm)) 
                        wait()
                        player.Character.HumanoidRootPart.CFrame = CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)
                    until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8 or not Setting.StackableSetting or not Setting.AutoHallowScythe                   
                    EquipWeapon("Hallow Essence")
                    task.wait(2)
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v and v.Name == tostring("Soul Reaper") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoHallowScythe and Setting.StackableSetting then
                                EquipWeapon(tostring(Setting.SelectWeapon))
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                    wait()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoHallowScythe or Setting.TryNumOfthis1 == 100000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if ReplicatedStorage:FindFirstChild("Soul Reaper") and Setting.StackableSetting then
                        tpwithnewtpbyme2(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                        task.wait(0.576)
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v and v.Name == tostring("Soul Reaper") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoHallowScythe and Setting.StackableSetting then
                                    EquipWeapon(tostring(Setting.SelectWeapon))
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                        wait()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoHallowScythe or Setting.TryNumOfthis1 == 100000 or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        task.wait()
        if (Setting.AutoSaber or Setting.AutoSaberHop) and Setting.StackableSetting and Old_World then
            pcall(function()
                if workspace.Enemies:FindFirstChild("Saber Expert") and Setting.StackableSetting then
                    for _,v in pairs(workspace.Enemies:GetChildren()) do
                        if v and v.Name == tostring("Saber Expert") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoSaber and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                    wait()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoSaber or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") and Setting.StackableSetting then
                        tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Saber Expert").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                        task.wait(0.675)
                        for _,v in pairs(workspace.Enemies:GetChildren()) do
                            if v and v.Name == tostring("Saber Expert") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoSaber and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                        wait()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoSaber or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
                                end
                            end
                        end
                    end
                end
            end)
        end
        task.wait()
        if (Setting.AutoCanvander or Setting.AutoCanvanderHop) and Setting.StackableSetting and Third_World then
            pcall(function()
                if workspace.Enemies:FindFirstChild("Beautiful Pirate") and Setting.StackableSetting then
                    for _,v in pairs(workspace.Enemies:GetChildren()) do
                        if v and v.Name == tostring("Beautiful Pirate") and Setting.StackableSetting then
                            if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoCanvander and Setting.StackableSetting then
                                Setting.TryNumOfthis1 = 0
                                repeat
                                    repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                    wait()
                                    Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                until v.Humanoid.Health == 0 or not Setting.AutoCanvander or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") and Setting.StackableSetting then
                        tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                        task.wait(0.675)
                        for _,v in pairs(workspace.Enemies:GetChildren()) do
                            if v and v.Name == tostring("Beautiful Pirate") and Setting.StackableSetting then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoCanvander and Setting.StackableSetting then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                        wait()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoCanvander or Setting.TryNumOfthis1 == 30000 or not Setting.StackableSetting
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
	if game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
		BF = require(game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
	elseif game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
		BF = require(game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
	end
	if game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
		MyMasteryDF = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
	elseif game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
		MyMasteryDF = game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
	end
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then                      
		if Setting.SkillZ then
			if MyMasteryDF >= BF.Lvl.Z then
				VM:SendKeyEvent(true,"Z",false,game)
				VM:SendKeyEvent(false,"Z",false,game)
			end
		end
		if Setting.SkillX then    
			if MyMasteryDF >= BF.Lvl.X then
				VM:SendKeyEvent(true,"X",false,game)
				VM:SendKeyEvent(false,"X",false,game)
			end
		end
		if Setting.SkillC then 
			if MyMasteryDF >= BF.Lvl.C then
				VM:SendKeyEvent(true,"C",false,game)
				wait(2)
				VM:SendKeyEvent(false,"C",false,game)
			end
		end
	elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then   
		if Setting.SkillZ then
			if MyMasteryDF >= BF.Lvl.Z then
				VM:SendKeyEvent(true,"Z",false,game)
				VM:SendKeyEvent(false,"Z",false,game)
			end
		end
		if Setting.SkillX then    
			if MyMasteryDF >= BF.Lvl.X then                                 
				VM:SendKeyEvent(true,"X",false,game)
				VM:SendKeyEvent(false,"X",false,game)
			end
		end
		if Setting.SkillC then 
			if MyMasteryDF >= BF.Lvl.C then
				VM:SendKeyEvent(true,"C",false,game)
				VM:SendKeyEvent(false,"C",false,game)
			end
		end
	elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
		if Setting.SkillZ and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size.X < 10 then    
			if MyMasteryDF >= BF.Lvl.Z then                       
				VM:SendKeyEvent(true,"Z",false,game)
				VM:SendKeyEvent(false,"Z",false,game)
			end
		end
		if Setting.SkillX then
			if MyMasteryDF >= BF.Lvl.X then
				VM:SendKeyEvent(true,"X",false,game)
				VM:SendKeyEvent(false,"X",false,game)
			end
		end
		if Setting.SkillC then      
			if MyMasteryDF >= BF.Lvl.C then                     
				VM:SendKeyEvent(true,"C",false,game)
				VM:SendKeyEvent(false,"C",false,game)
			end
		end
		if Setting.SkillV then  
			if MyMasteryDF >= BF.Lvl.V then                        
				VM:SendKeyEvent(true,"V",false,game)
				VM:SendKeyEvent(false,"V",false,game)
			end
		end
	else
		if Setting.SkillZ then
			if MyMasteryDF >= BF.Lvl.Z then                   
				VM:SendKeyEvent(true,"Z",false,game)
				VM:SendKeyEvent(false,"Z",false,game)
			end
		end
		if Setting.SkillX then    
			if MyMasteryDF >= BF.Lvl.X then
				VM:SendKeyEvent(true,"X",false,game)
				VM:SendKeyEvent(false,"X",false,game)
			end
		end
		if Setting.SkillC then 
			if MyMasteryDF >= BF.Lvl.C then
				VM:SendKeyEvent(true,"C",false,game)
				VM:SendKeyEvent(false,"C",false,game)
			end
		end
		if Setting.SkillV then               
			if MyMasteryDF >= BF.Lvl.V then           
				VM:SendKeyEvent(true,"V",false,game)
				VM:SendKeyEvent(false,"V",false,game)
			end
		end
	end
end
local function UseSkillMelee()
	VM:SendKeyEvent(true,"Z",false,game)
	VM:SendKeyEvent(false,"Z",false,game)
	VM:SendKeyEvent(true,"X",false,game)
	VM:SendKeyEvent(false,"X",false,game)
	VM:SendKeyEvent(true,"C",false,game)
	VM:SendKeyEvent(false,"C",false,game)
end

































--[[
$$$$$$$$\ $$$$$$$\   $$$$$$\  $$\      $$\ $$$$$$$$\ $$\      $$\  $$$$$$\  $$$$$$$\  $$\   $$\ 
$$  _____|$$  __$$\ $$  __$$\ $$$\    $$$ |$$  _____|$$ | $\  $$ |$$  __$$\ $$  __$$\ $$ | $$  |
$$ |      $$ |  $$ |$$ /  $$ |$$$$\  $$$$ |$$ |      $$ |$$$\ $$ |$$ /  $$ |$$ |  $$ |$$ |$$  / 
$$$$$\    $$$$$$$  |$$$$$$$$ |$$\$$\$$ $$ |$$$$$\    $$ $$ $$\$$ |$$ |  $$ |$$$$$$$  |$$$$$  /  
$$  __|   $$  __$$< $$  __$$ |$$ \$$$  $$ |$$  __|   $$$$  _$$$$ |$$ |  $$ |$$  __$$< $$  $$<   
$$ |      $$ |  $$ |$$ |  $$ |$$ |\$  /$$ |$$ |      $$$  / \$$$ |$$ |  $$ |$$ |  $$ |$$ |\$$\  
$$ |      $$ |  $$ |$$ |  $$ |$$ | \_/ $$ |$$$$$$$$\ $$  /   \$$ | $$$$$$  |$$ |  $$ |$$ | \$$\ 
\__|      \__|  \__|\__|  \__|\__|     \__|\________|\__/     \__| \______/ \__|  \__|\__|  \__|
]]

































DamageAura = true
Fast = false
NeedAttacking = false
-- \\ GetHits / Canhits // --
getHits = function(Size)
    local Hits = {}
    if nearbymon then
        local Enemies = workspace.Enemies:GetChildren()
        local Characters = workspace.Characters:GetChildren()
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
RL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)
RigC = getupvalue(require(Client.PlayerScripts.CombatFramework.RigController),2)
Combat =  getupvalue(require(Client.PlayerScripts.CombatFramework),2)
-- \\ 3 / 3 // --
task.spawn(function()
local stacking = 0
local printCooldown = 0
while wait(.075) do
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
            if not nearbymon and (player.Character:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 65) then
                nearbymon = true
            end
        end
    end
end
if nearbymon then
    local Enemies = workspace.Enemies:GetChildren()
    local Players = Players:GetPlayers()
    for i=1,#Enemies do local v = Enemies[i]
        local Human = v:FindFirstChildOfClass("Humanoid")
        if Human and Human.RootPart and Human.Health > 0 and (player.Character:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 65) then
            canHits[#canHits+1] = Human.RootPart
        end
    end
    for i=1,#Players do local v = Players[i].Character
        if not Players[i]:GetAttribute("PvpDisabled") and v and v ~= Client.Character then
            local Human = v:FindFirstChildOfClass("Humanoid")
            if Human and Human.RootPart and Human.Health > 0 and (player.Character:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 65) then
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
local RigEvent = game:GetService("ReplicatedStorage").RigControllerEvent
local Validator = game.ReplicatedStorage.Remotes.Validator
local Animation = Instance.new("Animation")
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
        wait(a.length * 0.5)
        a:Stop()
    end
end
task.spawn(function()
    local Data = Combat
    local Blank = function() end
    local RigEvent = game:GetService("ReplicatedStorage").RigControllerEvent
    local Animation = Instance.new("Animation")
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
            wait(a.length * 0.5)
            a:Stop()
        end
    end
    while RunService.Stepped:Wait() do
        if #canHits > 0 then
            Controller = Data.activeController
            if NormalClick then
                pcall(task.spawn,Controller.attack,Controller)
            end
            if Controller and Controller.equipped and Controller.currentWeaponModel then
                if (NeedAttacking and DamageAura) then
                    if Fast and tick() > AttackCD and not DisableFastAttack then
                        resetCD()
                    end
                    if tick() - lastFireValid > 0.5 or not Fast then
                        Controller.timeToNextAttack = 0
                        Controller.hitboxMagnitude = 65
                        pcall(task.spawn,Controller.attack,Controller)
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

coroutine.wrap(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg, false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
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







































--[[
                            $$\                       
                           $$  |                      
                          $$  /                       
$$$$$$\ $$$$$$\ $$$$$$\  $$  /$$$$$$\ $$$$$$\ $$$$$$\ 
\______|\______|\______|$$  / \______|\______|\______|
                       $$  /                          
                      $$  /                           
                      \__/                            
]]
































pcall(function()
    coroutine.wrap(function()
        repeat task.wait() until finishload
        while task.wait() do
            if Setting.RemoveAnim then
                pcall(function()
                    for _, v in pairs(workspace.Enemies:GetChildren()) do
                        if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and v.Humanoid.Animator then
                            v.Humanoid.Animator:Destroy()
                        end
                    end
                end)
            end
        end
    end)()
end)
pcall(function()
    coroutine.wrap(function()
        repeat task.wait() until finishload
        while task.wait() do
            if BringMob and not Setting.AutoFarmAura then
                pcall(function()
                    for _, v in pairs(workspace.Enemies:GetChildren()) do
                        if v and v.Name == tostring(NameMon) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v:FindFirstChild("HumanoidRootPart").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 200 then
                            FirstMob = v
                    
                            for _, otherMob in pairs(workspace.Enemies:GetChildren()) do
                                if otherMob and otherMob.Name == tostring(NameMon) and otherMob:FindFirstChild("Humanoid") and otherMob.Humanoid.Health > 0 and FirstMob and FirstMob:FindFirstChild("HumanoidRootPart") and (FirstMob:FindFirstChild("HumanoidRootPart").Position - otherMob:FindFirstChild("HumanoidRootPart").Position).Magnitude < tonumber(Setting.BringMobDistance) then
                                    otherMob:FindFirstChild("HumanoidRootPart").CFrame = FirstMob:FindFirstChild("HumanoidRootPart").CFrame
                                    otherMob.HumanoidRootPart.CanCollide = false
                                    otherMob.Humanoid.WalkSpeed = 0
                                    otherMob.Humanoid.JumpPower = 0
                                end
                            end
                            task.wait()
                        end
                    end
                end)
            elseif BringMob and Setting.AutoFarmAura then
                pcall(function()
                    for _, v in pairs(workspace.Enemies:GetChildren()) do
                        if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and (v:FindFirstChild("HumanoidRootPart").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 200 then
                            FirstMob = v
                    
                            for _, otherMob in pairs(workspace.Enemies:GetChildren()) do
                                if otherMob and otherMob:FindFirstChild("Humanoid") and otherMob.Humanoid.Health > 0 and FirstMob and FirstMob:FindFirstChild("HumanoidRootPart") and (FirstMob:FindFirstChild("HumanoidRootPart").Position - otherMob:FindFirstChild("HumanoidRootPart").Position).Magnitude < tonumber(Setting.BringMobDistance) then
                                    otherMob:FindFirstChild("HumanoidRootPart").CFrame = FirstMob:FindFirstChild("HumanoidRootPart").CFrame
                                    otherMob.HumanoidRootPart.CanCollide = false
                                    otherMob.Humanoid.WalkSpeed = 0
                                    otherMob.Humanoid.JumpPower = 0
                                end
                            end
                            task.wait()
                        end
                    end
                end)
            end
        end
    end)()
end)
pcall(function()
    coroutine.wrap(function()
        repeat task.wait() until finishload
        while task.wait() do
            pcall(function()
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
pcall(function()
    coroutine.wrap(function()
        while not finishload do
            task.wait()
        end

        while task.wait() do
            if Setting.AutoStoreFruit or Setting.AutoDropFruit then
                task.wait(1)
            end

            task.wait(0.5)

            if NeedAttacking then
                if not Setting.PauseAutoEqu then
                    EquipWeapon(tostring(Setting.SelectWeapon))
                end
            end
        end
    end)()
end)

































--[[
                            $$\  $$\                       
                           $$  |$$  |                      
                          $$  /$$  /                       
$$$$$$\ $$$$$$\ $$$$$$\  $$  /$$  /$$$$$$\ $$$$$$\ $$$$$$\ 
\______|\______|\______|$$  /$$  / \______|\______|\______|
                       $$  /$$  /                          
                      $$  /$$  /                           
                      \__/ \__/                            
]]

--[[
$$\      $$\  $$$$$$\  $$$$$$\ $$\   $$\                 $$$$$$$$\ 
$$$\    $$$ |$$  __$$\ \_$$  _|$$$\  $$ |                \__$$  __|
$$$$\  $$$$ |$$ /  $$ |  $$ |  $$$$\ $$ |                   $$ |   
$$\$$\$$ $$ |$$$$$$$$ |  $$ |  $$ $$\$$ |                   $$ |   
$$ \$$$  $$ |$$  __$$ |  $$ |  $$ \$$$$ |                   $$ |   
$$ |\$  /$$ |$$ |  $$ |  $$ |  $$ |\$$$ |                   $$ |   
$$ | \_/ $$ |$$ |  $$ |$$$$$$\ $$ | \$$ |      $$\          $$ |   
\__|     \__|\__|  \__|\______|\__|  \__|      \__|         \__|  
]]

































-- AUTOSEA2
-- AUTOFARMLEVEL
pcall(function()
    coroutine.wrap(function()
        repeat task.wait() until finishload
        while task.wait() do
            if Setting.AutoFarmLevel and not Setting.AutoSea2 then
                pcall(function()
                    CheckAndClearWeapon()
                    task.wait()
                    CheckLevel()
                    task.wait(0.657)
                    if InstanceTp then
                        repeat
                            wait(0.175)
                            if InstanceTp and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                                player.Character:SetPrimaryPartCFrame(CFrameMon)
                                wait()
                                player.Character.Humanoid.Health = 0
                                repeat task.wait() until player.Character.Humanoid
                                player.Character:SetPrimaryPartCFrame(CFrameMon)
                                player.Character:SetPrimaryPartCFrame(CFrameMon)
                                player.Character:SetPrimaryPartCFrame(CFrameMon)
                            else
                                break
                            end
                            task.wait(2.175)
                        until (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 and InstanceTp
                    end
                    task.wait()
                    repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                    if not PlayerGui.Main.Quest.Visible then
                        tpwithnewtpbyme2(CFrameQ, tonumber(Setting.TeleportSpeedAutoFarm))
                        task.wait(1)
                        if (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 then
                            CommF:InvokeServer("StartQuest", NameQuest, QuestLv)
                        end
                        task.wait(.175)
                    end
                    task.wait()
                    if Setting.AutoFarmLevel and not Setting.AutoSea2 then
                        tpwithnewtpbyme2(CFrameMon, tonumber(Setting.TeleportSpeedAutoFarm))
                    end
                    repeat
                        for _,v in pairs(workspace.Enemies:GetChildren()) do
                            if v and v.Name == tostring(NameMon) and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmLevel and PlayerGui.Main.Quest.Visible == true and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 then
                                    CheckAndClearWeapon()
                                    task.wait()
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                        wait()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or PlayerGui.Main.Quest.Visible == false or not Setting.AutoFarmLevel or Setting.TryNumOfthis1 == 300 or (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000
                                end
                            end
                        end
                        tpwithnewtpbyme2(CFrameMon, tonumber(Setting.TeleportSpeedAutoFarm))
                        task.wait()
                    until PlayerGui.Main.Quest.Visible == false or not Setting.AutoFarmLevel or (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000
                    Attack = false
                    task.wait()
                end)
                task.wait()
            elseif Setting.AutoFarmLevel and Setting.AutoSea2 then
                pcall(function()
                    CheckAndClearWeapon()
                end)
                task.wait()
                pcall(function()
                    Lv = player.Data.Level.Value
                    if Lv >= 700 then
                        tpwithnewtpbyme(4852.15625, 5.776771545410156, 718.41064453125, tonumber(Setting.TeleportSpeedAutoFarm))
                        CommF:InvokeServer("DressrosaQuestProgress", "Detective")
                        task.wait(3)
                        CommF:InvokeServer("DressrosaQuestProgress", "Detective")
                        task.wait(2.175)
                        if player.Backpack:FindFirstChild("Key") then
                            player.Character.Humanoid:EquipTool("Key")
                            if Setting.AutoSea2 then
                                repeat
                                    tpwithnewtpbyme(1344.54724, 42.2526398, -1327.88904, tonumber(Setting.TeleportSpeedAutoFarm))
                                    task.wait()
                                until (workspace.Map.Ice.Door and workspace.Map.Ice.Door.Transparency == 1) or not Setting.AutoSea2
                                task.wait(1.75)
                                for _,v in pairs(workspace.Enemies:GetChildren()) do
                                    if v and v.Name == tostring("Ice Admiral") then
                                        if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoSea2 then
                                            Attack = true
                                            Setting.TryNumOfthis1 = 0
                                            repeat
                                                repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                                MobHumP = v.HumanoidRootPart.Position
                                                tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                                wait()
                                                Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                            until v.Humanoid.Health == 0 or not Setting.AutoSea2 or Setting.TryNumOfthis1 == 2000
                                        end
                                    end
                                end
                                task.wait()
                                CommF:InvokeServer("TravelDressrosa")
                            end
                        elseif not Backpack:FindFirstChild("Key") then
                            tpwithnewtpbyme(1344.54724, 42.2526398, -1327.88904, tonumber(Setting.TeleportSpeedAutoFarm))
                            task.wait(1.75)
                            if Setting.AutoSea2 then
                                for _,v in pairs(workspace.Enemies:GetChildren()) do
                                    if v and v.Name == tostring("Ice Admiral") then
                                        if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoSea2 then
                                            Setting.TryNumOfthis1 = 0
                                            repeat
                                                repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                                MobHumP = v.HumanoidRootPart.Position
                                                tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                                wait()
                                                Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                            until v.Humanoid.Health == 0 or not Setting.AutoSea2 or Setting.TryNumOfthis1 == 2000
                                        end
                                    end
                                end
                            end
                            task.wait()
                            CommF:InvokeServer("TravelDressrosa")
                        end
                    else
                        CheckLevel()
                        task.wait(0.657)
                        if InstanceTp then
                            repeat
                                wait(0.175)
                                if InstanceTp and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                                    player.Character:SetPrimaryPartCFrame(CFrameMon)
                                    wait()
                                    player.Character.Humanoid.Health = 0
                                    repeat task.wait() until player.Character.Humanoid
                                    player.Character:SetPrimaryPartCFrame(CFrameMon)
                                    player.Character:SetPrimaryPartCFrame(CFrameMon)
                                    player.Character:SetPrimaryPartCFrame(CFrameMon)
                                else
                                    break
                                end
                                wait()
                            until (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 and InstanceTp
                        end
                        task.wait()
                        repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                        if not PlayerGui.Main.Quest.Visible and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 then
                            tpwithnewtpbyme2(CFrameQ, tonumber(Setting.TeleportSpeedAutoFarm))
                            task.wait(1)
                            CommF:InvokeServer("StartQuest", NameQuest, QuestLv)
                            task.wait(.175)
                        end
                        task.wait()
                        tpwithnewtpbyme2(CFrameMon, tonumber(Setting.TeleportSpeedAutoFarm))
                        repeat
                            for _,v in pairs(workspace.Enemies:GetChildren()) do
                                if v and v.Name == tostring(NameMon) and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmLevel and PlayerGui.Main.Quest.Visible and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                            wait()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or PlayerGui.Main.Quest.Visible == false or not Setting.AutoFarmLevel or Setting.TryNumOfthis1 == 300 or (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000
                                    end
                                end
                            end
                            tpwithnewtpbyme2(CFrameMon, tonumber(Setting.TeleportSpeedAutoFarm))
                            task.wait()
                        until PlayerGui.Main.Quest.Visible == false or not Setting.AutoFarmLevel or (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000
                        Attack = false
                        task.wait()
                    end
                    task.wait()
                end)
                task.wait()
            end
            task.wait()
        end
    end)()
end)
pcall(function()
    coroutine.wrap(function()
        repeat task.wait() until finishload
        while task.wait() do
            if Setting.AutoFarmSelectMob then
                pcall(function()
                    CheckLevel()
                    task.wait(0.657)
                    if InstanceTp and Setting.AutoFarmSelectMob then
                        repeat
                            wait(0.175)
                            if InstanceTp and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                                player.Character:SetPrimaryPartCFrame(CFrameMon)
                                wait()
                                player.Character.Humanoid.Health = 0
                                repeat task.wait() until player.Character.Humanoid
                                player.Character:SetPrimaryPartCFrame(CFrameMon)
                                player.Character:SetPrimaryPartCFrame(CFrameMon)
                                player.Character:SetPrimaryPartCFrame(CFrameMon)
                            else
                                break
                            end
                            wait()
                        until (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 and InstanceTp
                    end
                    task.wait()
                    repeat task.wait() until player.Character:FindFirstChild("Humanoid") or not Setting.AutoFarmSelectMob
                    if Setting.CustomQuest and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 then
                        if not PlayerGui.Main.Quest.Visible and Setting.AutoFarmSelectMob then
                            tpwithnewtpbyme2(CFrameQ, tonumber(Setting.TeleportSpeedAutoFarm))
                            task.wait(1)
                            CommF:InvokeServer("StartQuest", NameQuest, QuestLv)
                            task.wait(.175)
                        end
                        task.wait()
                        tpwithnewtpbyme2(CFrameMon, tonumber(Setting.TeleportSpeedAutoFarm))
                        repeat
                            for _,v in pairs(workspace.Enemies:GetChildren()) do
                                if v and v.Name == tostring(NameMon) and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmSelectMob and PlayerGui.Main.Quest.Visible == true then
                                        Attack = true
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                            wait()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or PlayerGui.Main.Quest.Visible == false or not Setting.AutoFarmSelectMob or Setting.TryNumOfthis1 == 300 or (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000
                                    end
                                end
                            end
                            tpwithnewtpbyme2(CFrameMon, tonumber(Setting.TeleportSpeedAutoFarm))
                            task.wait()
                        until not PlayerGui.Main.Quest.Visible or not Setting.AutoFarmSelectMob or (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000
                        task.wait()
                    else
                        tpwithnewtpbyme2(CFrameMon, tonumber(Setting.TeleportSpeedAutoFarm))
                        repeat
                            for _,v in pairs(workspace.Enemies:GetChildren()) do
                                if v and v.Name == tostring(NameMon) and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmSelectMob and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                            wait()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoFarmSelectMob or Setting.TryNumOfthis1 == 300 or (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000
                                    end
                                end
                            end
                            tpwithnewtpbyme2(CFrameMon, tonumber(Setting.TeleportSpeedAutoFarm))
                            task.wait()
                        until not Setting.AutoFarmSelectMob or Setting.CustomQuest or (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000
                        task.wait()
                    end
                end)
                task.wait()
            end
        end
    end)()
end)
pcall(function()
	coroutine.wrap(function()
        repeat task.wait() until finishload
		while task.wait() do
			if Setting.AutoFarmSelectBoss and not Setting.AutoFarmAllBoss then
				CheckQuestBoss()
				task.wait(0.675)
				if Setting.CustomQuest then
					if Setting.SelectBoss == "The Saw" or Setting.SelectBoss == "Greybeard" or Setting.SelectBoss == "Saber Expert" then
						if workspace.Enemies:FindFirstChild(tostring(Setting.SelectBoss)) then
							tpwithnewtpbyme2(CFrameBoss, tonumber(Setting.TeleportSpeedAutoFarm))
							task.wait()
							for _, v in pairs(workspace.Enemies:GetChildren()) do
								if v and v.Name == tostring(NameBoss) then
									if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmSelectBoss and (CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 and not Setting.AutoFarmAllBoss then
										Setting.TryNumOfthis1 = 0
										repeat
											repeat task.wait() until player.Character:FindFirstChild("Humanoid")
											MobHumP = v.HumanoidRootPart.Position
											tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
											wait()
											Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
										until v.Humanoid.Health == 0 or not Setting.AutoFarmSelectBoss or Setting.TryNumOfthis1 == 300 or (CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 or Setting.AutoFarmAllBoss
									end
								end
							end
							task.wait(0.675)
						elseif ReplicatedStorage:FindFirstChild(tostring(Setting.SelectBoss)) then
							tpwithnewtpbyme2(CFrameBoss, tonumber(Setting.TeleportSpeedAutoFarm))
							task.wait()
						end
					else
						if not PlayerGui.Main.Quest.Visible then
							tpwithnewtpbyme2(CFrameQBoss, tonumber(Setting.TeleportSpeedAutoFarm))
							task.wait(1)
							if (CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 then
								CommF:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss)
							end
							task.wait(.175)
						end
						if workspace.Enemies:FindFirstChild(tostring(Setting.SelectBoss)) then
							for _, v in pairs(workspace.Enemies:GetChildren()) do
								if v and v.Name == tostring(NameBoss) then
									if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmSelectBoss and (CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 and not Setting.AutoFarmAllBoss then
										Setting.TryNumOfthis1 = 0
										repeat
											repeat task.wait() until player.Character:FindFirstChild("Humanoid")
											MobHumP = v.HumanoidRootPart.Position
											tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
											wait()
											Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
										until v.Humanoid.Health == 0 or not Setting.AutoFarmSelectBoss or Setting.TryNumOfthis1 == 300 or (CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 or Setting.AutoFarmAllBoss or not PlayerGui.Main.Quest.Visible
									end
								end
							end
							task.wait(0.675)
						elseif ReplicatedStorage:FindFirstChild(tostring(Setting.SelectBoss)) then
							if InstanceTp and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 3000 then
								game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrameBoss)
								wait()
								game.Players.LocalPlayer.Character.Humanoid.Health = 0
								repeat task.wait() until game.Players.LocalPlayer.Character.Humanoid
								game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrameBoss)
								game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrameBoss)
								game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrameBoss)
							else
								tpwithnewtpbyme2(CFrameBoss, tonumber(Setting.TeleportSpeedAutoFarm))
							end
							task.wait()
						end
					end
				else
					if Setting.SelectBoss == "The Saw" or Setting.SelectBoss == "Greybeard" or Setting.SelectBoss == "Saber Expert" then
						if workspace.Enemies:FindFirstChild(tostring(Setting.SelectBoss)) then
							tpwithnewtpbyme2(CFrameBoss, tonumber(Setting.TeleportSpeedAutoFarm))
							task.wait()
							for _, v in pairs(workspace.Enemies:GetChildren()) do
								if v and v.Name == tostring(NameBoss) then
									if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmSelectBoss and (CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 and not Setting.AutoFarmAllBoss then
										Setting.TryNumOfthis1 = 0
										repeat
											repeat task.wait() until player.Character:FindFirstChild("Humanoid")
											MobHumP = v.HumanoidRootPart.Position
											tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
											wait()
											Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
										until v.Humanoid.Health == 0 or not Setting.AutoFarmSelectBoss or Setting.TryNumOfthis1 == 300 or (CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 or Setting.AutoFarmAllBoss
									end
								end
							end
							task.wait(0.675)
						elseif ReplicatedStorage:FindFirstChild(tostring(Setting.SelectBoss)) then
							tpwithnewtpbyme2(CFrameBoss, tonumber(Setting.TeleportSpeedAutoFarm))
							task.wait()
						end
					else
						if workspace.Enemies:FindFirstChild(tostring(Setting.SelectBoss)) then
							for _, v in pairs(workspace.Enemies:GetChildren()) do
								if v and v.Name == tostring(NameBoss) then
									if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmSelectBoss and (CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 and not Setting.AutoFarmAllBoss then
										Setting.TryNumOfthis1 = 0
										repeat
											repeat task.wait() until player.Character:FindFirstChild("Humanoid")
											MobHumP = v.HumanoidRootPart.Position
											tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
											wait()
											Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
										until v.Humanoid.Health == 0 or not Setting.AutoFarmSelectBoss or Setting.TryNumOfthis1 == 300 or (CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 or Setting.AutoFarmAllBoss or not PlayerGui.Main.Quest.Visible
									end
								end
							end
							task.wait(0.675)
						elseif ReplicatedStorage:FindFirstChild(tostring(Setting.SelectBoss)) then
							if InstanceTp and (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 3000 then
								game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrameBoss)
								wait()
								game.Players.LocalPlayer.Character.Humanoid.Health = 0
								repeat task.wait() until game.Players.LocalPlayer.Character.Humanoid
								game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrameBoss)
								game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrameBoss)
								game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrameBoss)
							else
								tpwithnewtpbyme2(CFrameBoss, tonumber(Setting.TeleportSpeedAutoFarm))
							end
							repeat task.wait() until player.Character:FindFirstChild("Humanoid")
						end
					end
				end
			elseif Setting.AutoFarmAllBoss and not Setting.AutoFarmSelectBoss then
				if Old_World then
					if Setting.CustomQuest then
						for _, v in pairs(workspace.Enemies:GetChildren()) do
							if v and table.find(AllBossNameSea1, tostring(v.Name)) then
								FindTargetBoss(tostring(v.Name))
								task.wait(0.675)
                                tpwithnewtpbyme2(CFrameBoss, tonumber(Setting.TeleportSpeedAutoFarm))
								if not PlayerGui.Main.Quest.Visible then
									tpwithnewtpbyme2(CFrameQBoss, tonumber(Setting.TeleportSpeedAutoFarm))
									task.wait(1)
									if (CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 then
										CommF:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss)
									end
									task.wait(.175)
								end
								if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmAllBoss and (CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 and not Setting.AutoFarmSelectBoss then
									Setting.TryNumOfthis1 = 0
									repeat
										repeat task.wait() until player.Character:FindFirstChild("Humanoid")
										MobHumP = v.HumanoidRootPart.Position
										tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
										wait()
										Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
									until v.Humanoid.Health == 0 or not Setting.AutoFarmAllBoss or Setting.TryNumOfthis1 == 300 or(CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 or Setting.AutoFarmSelectBoss or not PlayerGui.Main.Quest.Visible
								end
							end
						end
						task.wait()
						for _, v in pairs(ReplicatedStorage:GetChildren()) do
							if v and table.find(AllBossNameSea1, tostring(v.Name)) then
								FindTargetBoss(tostring(v.Name))
								task.wait(0.675)
                                tpwithnewtpbyme2(CFrameBoss, tonumber(Setting.TeleportSpeedAutoFarm))
							elseif v and not table.find(AllBossNameSea1, tostring(v.Name)) then
								for _, v in pairs(workspace.Enemies:GetChildren()) do
									if v and table.find(AllBossNameSea1, tostring(v.Name)) then
										FindTargetBoss(tostring(v.Name))
										task.wait(0.675)
										if not PlayerGui.Main.Quest.Visible then
											tpwithnewtpbyme2(CFrameQBoss, tonumber(Setting.TeleportSpeedAutoFarm))
											task.wait(1)
											if (CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 then
												CommF:InvokeServer("StartQuest", NameQuestBoss, QuestLvBoss)
											end
											task.wait(.175)
										end
										if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmAllBoss and (CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 and not Setting.AutoFarmSelectBoss then
											Setting.TryNumOfthis1 = 0
											repeat
												repeat task.wait() until player.Character:FindFirstChild("Humanoid")
												MobHumP = v.HumanoidRootPart.Position
												tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
												wait()
												Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
											until v.Humanoid.Health == 0 or not Setting.AutoFarmAllBoss or Setting.TryNumOfthis1 == 300 or(CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 or Setting.AutoFarmSelectBoss or not PlayerGui.Main.Quest.Visible
										end
									elseif v and not table.find(AllBossNameSea1, tostring(v.Name)) then
										--hop
									end
								end
							end
						end
					else
						for _, v in pairs(workspace.Enemies:GetChildren()) do
							if v and table.find(AllBossNameSea1, tostring(v.Name)) then
								FindTargetBoss(tostring(v.Name))
								task.wait(0.675)
                                tpwithnewtpbyme2(CFrameBoss, tonumber(Setting.TeleportSpeedAutoFarm))
								if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmAllBoss and (CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 and not Setting.AutoFarmSelectBoss then
									Setting.TryNumOfthis1 = 0
									repeat
										repeat task.wait() until player.Character:FindFirstChild("Humanoid")
										MobHumP = v.HumanoidRootPart.Position
										tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
										wait()
										Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
									until v.Humanoid.Health == 0 or not Setting.AutoFarmAllBoss or Setting.TryNumOfthis1 == 300 or(CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 or Setting.AutoFarmSelectBoss or not PlayerGui.Main.Quest.Visible
								end
							end
						end
						task.wait()
						for _, v in pairs(ReplicatedStorage:GetChildren()) do
							if v and table.find(AllBossNameSea1, tostring(v.Name)) then
								FindTargetBoss(tostring(v.Name))
								task.wait(0.675)
                                tpwithnewtpbyme2(CFrameBoss, tonumber(Setting.TeleportSpeedAutoFarm))
							elseif v and not table.find(AllBossNameSea1, tostring(v.Name)) then
								for _, v in pairs(workspace.Enemies:GetChildren()) do
									if v and table.find(AllBossNameSea1, tostring(v.Name)) then
										FindTargetBoss(tostring(v.Name))
										task.wait(0.675)
                                        tpwithnewtpbyme2(CFrameBoss, tonumber(Setting.TeleportSpeedAutoFarm))
										if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmAllBoss and (CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 and not Setting.AutoFarmSelectBoss then
											Setting.TryNumOfthis1 = 0
											repeat
												repeat task.wait() until player.Character:FindFirstChild("Humanoid")
												MobHumP = v.HumanoidRootPart.Position
												tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
												wait()
												Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
											until v.Humanoid.Health == 0 or not Setting.AutoFarmAllBoss or Setting.TryNumOfthis1 == 300 or(CFrameBoss.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 or Setting.AutoFarmSelectBoss or not PlayerGui.Main.Quest.Visible
										end
									elseif v and not table.find(AllBossNameSea1, tostring(v.Name)) then
										--hop
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
pcall(function()
	coroutine.wrap(function()
        repeat task.wait() until finishload
		while task.wait() do
			if Setting.AutoFarmAura then
				for _, v in pairs(workspace.Enemies:GetChildren()) do
					if v then
						if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmAura and (v.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude < tonumber(Setting.AutoFarmAuraDistance) then
							Setting.TryNumOfthis1 = 0
							repeat
								repeat task.wait() until player.Character:FindFirstChild("Humanoid")
								MobHumP = v.HumanoidRootPart.Position
								tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
								wait()
								Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
							until v.Humanoid.Health == 0 or not Setting.AutoFarmAura or Setting.TryNumOfthis1 == 300
						end
					end
				end
			end
		end
	end)()
end)
coroutine.wrap(function()
    while task.wait() do
        if Setting.AutoBone then
            pcall(function()
                repeat
                    if InstanceTp and Setting.AutoBone then
                        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-9515.75, 174.8521728515625, 6079.40625))
                        wait()
                        game.Players.LocalPlayer.Character.Humanoid.Health = 0
                        repeat task.wait() until game.Players.LocalPlayer.Character.Humanoid
                        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-9515.75, 174.8521728515625, 6079.40625))
                        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-9515.75, 174.8521728515625, 6079.40625))
                        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-9515.75, 174.8521728515625, 6079.40625))
                    else
                        tpwithnewtpbyme2(CFrame.new(-9515.75, 174.8521728515625, 6079.40625), tonumber(Setting.TeleportSpeedAutoFarm))
                    end
                    task.wait(2.175)
                until (Vector3.new(-9515.75, 174.8521728515625, 6079.40625) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 3000 or not InstanceTp or not Setting.AutoBone
                if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) and Setting.AutoBone then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0) and Setting.AutoBone then
                            if (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") and Setting.AutoBone then
                                NameMon = tostring(v.Name)
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoBone then
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                        wait()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Setting.AutoBone or Setting.TryNumOfthis1 == 300
                                end
                            end
                        end
                    end
                else
                    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if v.Name == "Reborn Skeleton" then
                            tpwithnewtpbyme2(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2), tonumber(Setting.TeleportSpeedAutoFarm))
                        elseif v.Name == "Living Zombie" then
                            tpwithnewtpbyme2(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2), tonumber(Setting.TeleportSpeedAutoFarm))
                        elseif v.Name == "Demonic Soul" then
                            tpwithnewtpbyme2(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2), tonumber(Setting.TeleportSpeedAutoFarm))
                        elseif v.Name == "Posessed Mummy" then
                            tpwithnewtpbyme2(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2), tonumber(Setting.TeleportSpeedAutoFarm))
                        end
                    end
                end
            end)
        end
    end
end)()
coroutine.wrap(function()
    while task.wait() do
        pcall(function()
            if Setting.AutoFarmObservation or Setting.AutoFarmObservationHop then
                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                    if game:GetService("Players").LocalPlayer.VisionRadius.Value < 3000 then
                        if Old_World and Setting.AutoFarmObservation then
                            if workspace.Enemies:FindFirstChild("Military Spy") then
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Military Spy").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                            else
                                tpwithnewtpbyme(-5984.0532226563, 82.14656829834, 8753.326171875, tonumber(Setting.TeleportSpeedAutoFarm))
                            end
                        elseif New_World and Setting.AutoFarmObservation then
                            if workspace.Enemies:FindFirstChild("Lava Pirate") then
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                            else
                                tpwithnewtpbyme(-5478.39209, 15.9775667, -5246.9126, tonumber(Setting.TeleportSpeedAutoFarm))
                            end
                        elseif Third_World and Setting.AutoFarmObservation then
                            if workspace.Enemies:FindFirstChild("Giant Islander") then
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                            else
                                tpwithnewtpbyme(4530.3540039063, 656.75695800781, -131.60952758789, tonumber(Setting.TeleportSpeedAutoFarm))
                            end
                        end
                    end
                else
                    if Setting.AutoFarmObservationHop then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, Enum.KeyCode.E, false, game)
                        task.wait(1)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, Enum.KeyCode.E, false, game)
                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            SVHop()
                        end
                    end
                    if game:GetService("Players").LocalPlayer.VisionRadius.Value < 3000 then
                        if Old_World then
                            repeat
                                if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    tpwithnewtpbyme(-5984.0532226563, 82.14656829834, 8753.326171875, tonumber(Setting.TeleportSpeedAutoFarm))
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, Enum.KeyCode.E, false, game)
                                    task.wait(1)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, Enum.KeyCode.E, false, game)
                                end
                                task.wait()
                            until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not Setting.AutoFarmObservation
                        elseif New_World then
                            repeat
                                if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    tpwithnewtpbyme(-5478.39209, 15.9775667, -5246.9126, tonumber(Setting.TeleportSpeedAutoFarm))
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, Enum.KeyCode.E, false, game)
                                    task.wait(1)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, Enum.KeyCode.E, false, game)
                                end
                                task.wait()
                            until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not Setting.AutoFarmObservation
                        elseif Third_World then
                            repeat
                                if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    tpwithnewtpbyme(4530.3540039063, 656.75695800781, -131.60952758789, tonumber(Setting.TeleportSpeedAutoFarm))
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, Enum.KeyCode.E, false, game)
                                    task.wait(1)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, Enum.KeyCode.E, false, game)
                                end
                                task.wait()
                            until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not Setting.AutoFarmObservation
                        end
                    end
                end
            end
        end)
    end
end)()


--fruit





coroutine.wrap(function()
    repeat task.wait() until finishload
    while task.wait() do
        if Setting.TpToFruit then
            pcall(function()
                for _, v in pairs(workspace:GetChildren()) do
                    if v:IsA("Tool") then
                        tpwithnewtpbyfruit(v.WorldPivot.Position.X, v.WorldPivot.Position.Y, v.WorldPivot.Position.Z, 5)
                        break
                    end
                end
                task.wait(1.175)
            end)
        end
    end
end)()



--Race

coroutine.wrap(function()
    repeat task.wait() until finishload
    while task.wait() do
        if Setting.AutoRaceV2 then
            if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
                    tpwithnewtpbyme(-2779.83521, 72.9661407, -3574.02002, 5)
                    task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2779.83521, 72.9661407, -3574.02002)
                    wait()
                    if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                        task.wait(1.3)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                    end
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
                    pcall(function()
                        if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
                            tpwithnewtpbyme2(game:GetService("Workspace").Flower1.CFrame, 5)
                            task.wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Flower1.CFrame
                            task.wait()
                        elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
                            tpwithnewtpbyme2(game:GetService("Workspace").Flower2.CFrame, 5)
                            task.wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Flower2.CFrame
                            task.wait()
                        elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
                                for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v and v.Name == "Zombie" and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoRaceV2 then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, 10)
                                            task.wait()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoRaceV2 or Setting.TryNumOfthis1 == 2000 or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3")
                                    end
                                end
                            else
                                tpwithnewtpbyme(-5685.9233398438, 48.480125427246, -853.23724365234, 5)
                            end
                        end
                    end)
                elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
                    if game:GetService("Players").LocalPlayer.Data.Beli.Value >= 500000 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
                    else
                        repeat Setting.AutoFarmLevel = true until not Setting.AutoRaceV2
                    end
                end
            end
        end
    end
end)()
coroutine.wrap(function()
    repeat task.wait() until finishload
    while task.wait() do
        if Setting.AutoRaceV4 then
            if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" and Setting.AutoRaceV4 then
                for _,v in pairs(workspace.Enemies:GetChildren()) do
                    if v then
                        if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Options.AutoRaceV4.Value then
                            Setting.TryNumOfthis1 = 0
                            repeat
                                repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                Setting.PauseAutoEqu = false
                                MobHumP = v.HumanoidRootPart.Position
                                tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, 10)
                                wait()
                                Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                            until v.Humanoid.Health == 0 or not Options.AutoRaceV4.Value or Setting.TryNumOfthis1 == 2000
                        end
                    end
                end
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" and Setting.AutoRaceV4 then
                for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
                    if v.Name == "snowisland_Cylinder.081" then
                        tpwithnewtpbyme2(v.CFrame * CFrame.new(0,0,0), 5)
                        player.Character.CFrame = v.CFrame * CFrame.new(0,0,0)
                    end
                end
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                Setting.PauseAutoEqu = true
                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                task.wait()
                for _, v in pairs(workspace.SeaBeasts:GetChildren()) do
                    if v and v:FindFirstChild("Health") and v.Health ~= 0 then
                        if v:FindFirstChild("HumanoidRootPart") then
                            repeat
                                Setting.UseSkill = true
                                Setting.PauseAutoEqu = true
                                EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                MobHumP = v.HumanoidRootPart.Position
                                Setting.PosMobMasteryFruit = MobHumP
                                tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                UseSkill()
                                task.wait()
                                EquipMelee()
                                task.wait(0.15)
                                UseSkillMelee()
                                task.wait()
                                EquipSword()
                                task.wait(0.15)
                                UseSkillMelee()
                            until not v:FindFirstChild("Health") or (v:FindFirstChild("Health") and v.Health == 0) or not Setting.AutoRaceV4 or table.find(Setting.IgnoreSeaEventList, "SeaBeast")
                        end
                    end
                end
                task.wait()
                Setting.PauseAutoEqu = false
                Setting.UseSkill = false
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" and Setting.AutoRaceV4 then
                tpwithnewtpbyme(CFrame.new(28654, 14898.7832), 5)
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" and Setting.AutoRaceV4 then
                for _,v in pairs(workspace.Enemies:GetChildren()) do
                    if v then
                        if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Options.AutoRaceV4.Value then
                            Setting.TryNumOfthis1 = 0
                            repeat
                                repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                Setting.PauseAutoEqu = false
                                MobHumP = v.HumanoidRootPart.Position
                                tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, 10)
                                wait()
                                Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                            until v.Humanoid.Health == 0 or not Options.AutoRaceV4.Value or Setting.TryNumOfthis1 == 2000
                        end
                    end
                end
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" and Setting.AutoRaceV4 then
                for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                    if v.Name == "StartPoint" then
                        tpwithnewtpbyme2(v.CFrame * CFrame.new(0,3,0), 5) 
                        task.wait()
                        player.Character.CFrame = v.CFrame * CFrame.new(0,3,0)
                   end
                end
            end
        end
    end
end)()

--
pcall(function()
    coroutine.wrap(function()
        repeat task.wait() until finishload
        while task.wait() do
			if Setting.AutoFarmFruitMastery then
                pcall(function()
                    Setting.PauseAutoEqu = false
					CheckAndClearWeapon()
					task.wait()
					CheckLevel()
					task.wait(0.657)
					if InstanceTp then
						repeat
							wait(0.175)
							if InstanceTp and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 then
								player.Character:SetPrimaryPartCFrame(CFrameMon)
								wait()
								player.Character.Humanoid.Health = 0
								repeat task.wait() until player.Character.Humanoid
								player.Character:SetPrimaryPartCFrame(CFrameMon)
								player.Character:SetPrimaryPartCFrame(CFrameMon)
								player.Character:SetPrimaryPartCFrame(CFrameMon)
							else
								break
							end
							task.wait(2.175)
						until (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 and InstanceTp
					end
					task.wait()
					repeat task.wait() until player.Character:FindFirstChild("Humanoid")
					task.wait()
					if Setting.AutoFarmFruitMastery then
						tpwithnewtpbyme2(CFrameMon, tonumber(Setting.TeleportSpeedAutoFarm))
					end
					repeat
						for _,v in pairs(workspace.Enemies:GetChildren()) do
							if v and v.Name == tostring(NameMon) and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 then
								if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmFruitMastery and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 then
									CheckAndClearWeapon()
									task.wait()
									Setting.TryNumOfthis1 = 0
									repeat
										repeat task.wait() until player.Character:FindFirstChild("Humanoid")
										HealthMs = v.Humanoid.MaxHealth * tonumber(Setting.KillAt)/100
										if v.Humanoid.Health >= HealthMs then
                                            Setting.UseSkill = false
                                            Setting.PauseAutoEqu = false
											MobHumP = v.HumanoidRootPart.Position
											tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
											wait()
											Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
										else
                                            Setting.UseSkill = true
                                            Setting.PauseAutoEqu = true
                                            task.wait()
											EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                            MobHumP = v.HumanoidRootPart.Position
											tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                            task.wait()
											Setting.PosMobMasteryFruit = MobHumP
                                            UseSkill()
										end
									until v.Humanoid.Health == 0 or not Setting.AutoFarmFruitMastery or (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000
								end
							end
						end
                        Setting.UseSkill = false
                        Setting.PauseAutoEqu = false
						tpwithnewtpbyme2(CFrameMon, tonumber(Setting.TeleportSpeedAutoFarm))
						task.wait()
					until not Setting.AutoFarmFruitMastery or (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000
                    Setting.UseSkill = false
                    Setting.PauseAutoEqu = false
                end)
			end
		end
    end)()
end)
pcall(function()
    coroutine.wrap(function()
        repeat task.wait() until finishload
        while task.wait() do
			if Setting.AutoFarmGunMastery then
                pcall(function()
                    Setting.PauseAutoEqu = false
					CheckAndClearWeapon()
					task.wait()
					CheckLevel()
					task.wait(0.657)
					if InstanceTp then
						repeat
							wait(0.175)
							if InstanceTp and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000 then
								player.Character:SetPrimaryPartCFrame(CFrameMon)
								wait()
								player.Character.Humanoid.Health = 0
								repeat task.wait() until player.Character.Humanoid
								player.Character:SetPrimaryPartCFrame(CFrameMon)
								player.Character:SetPrimaryPartCFrame(CFrameMon)
								player.Character:SetPrimaryPartCFrame(CFrameMon)
							else
								break
							end
							task.wait(2.175)
						until (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 and InstanceTp
					end
					task.wait()
					repeat task.wait() until player.Character:FindFirstChild("Humanoid")
					task.wait()
					if Setting.AutoFarmGunMastery then
						tpwithnewtpbyme2(CFrameMon, tonumber(Setting.TeleportSpeedAutoFarm))
					end
					repeat
						for _,v in pairs(workspace.Enemies:GetChildren()) do
							if v and v.Name == tostring(NameMon) and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 then
								if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoFarmGunMastery and (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude < 3000 then
									CheckAndClearWeapon()
									task.wait()
									Setting.TryNumOfthis1 = 0
									repeat
										repeat task.wait() until player.Character:FindFirstChild("Humanoid")
										HealthMs = v.Humanoid.MaxHealth * tonumber(Setting.KillAt)/100
										if v.Humanoid.Health >= HealthMs then
                                            Setting.PauseAutoEqu = false
                                            task.wait()
											MobHumP = v.HumanoidRootPart.Position
											tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
											wait()
											Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
										else
                                            Setting.PauseAutoEqu = true
                                            task.wait(0.1)
											EquipGun()
                                            MobHumP = v.HumanoidRootPart.Position
											tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                            task.wait()
                                            game:GetService("Players").LocalPlayer.Character[tostring(player.Character:FindFirstChildWhichIsA("Tool"))].RemoteFunctionShoot:InvokeServer(MobHumP)
                                            task.wait()
										end
									until v.Humanoid.Health == 0 or not Setting.AutoFarmGunMastery or (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000
								end
							end
						end
						tpwithnewtpbyme2(CFrameMon, tonumber(Setting.TeleportSpeedAutoFarm))
						task.wait()
                        Setting.PauseAutoEqu = false
					until not Setting.AutoFarmGunMastery or (CFrameMon.Position - player.Character.HumanoidRootPart.Position).Magnitude > 3000
                    Setting.PauseAutoEqu = false
                end)
			end
		end
    end)()
end)











--[[
$$\      $$\ $$$$$$$$\  $$$$$$\  $$$$$$$\   $$$$$$\  $$\   $$\                 $$$$$$$$\ 
$$ | $\  $$ |$$  _____|$$  __$$\ $$  __$$\ $$  __$$\ $$$\  $$ |                \__$$  __|
$$ |$$$\ $$ |$$ |      $$ /  $$ |$$ |  $$ |$$ /  $$ |$$$$\ $$ |                   $$ |   
$$ $$ $$\$$ |$$$$$\    $$$$$$$$ |$$$$$$$  |$$ |  $$ |$$ $$\$$ |                   $$ |   
$$$$  _$$$$ |$$  __|   $$  __$$ |$$  ____/ $$ |  $$ |$$ \$$$$ |                   $$ |   
$$$  / \$$$ |$$ |      $$ |  $$ |$$ |      $$ |  $$ |$$ |\$$$ |                   $$ |   
$$  /   \$$ |$$$$$$$$\ $$ |  $$ |$$ |       $$$$$$  |$$ | \$$ |      $$\          $$ |   
\__/     \__|\________|\__|  \__|\__|       \______/ \__|  \__|      \__|         \__| 
]]












pcall(function()
    coroutine.wrap(function()
        repeat task.wait() until finishload
        while task.wait() do
            if (Setting.AutoLegendarySword or Setting.AutoLegendarySwordHop) and New_World then
                pcall(function()
                    argsLEGS1 = {
                        [1] = "LegendarySwordDealer",
                        [2] = "1"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(argsLEGS1))
                    argsLEGS2 = {
                        [1] = "LegendarySwordDealer",
                        [2] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(argsLEGS2))
                    argsLEGS3 = {
                        [1] = "LegendarySwordDealer",
                        [2] = "3"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(argsLEGS3))
                    task.wait(1)
                    if Setting.AutoLegendarySwordHop and New_World then
                        SVHop()
                    end
                end)
            end
        end
    end)()
end)
pcall(function()
    coroutine.wrap(function()
        repeat task.wait() until finishload
        while task.wait() do
            if Setting.AutoRengoku then
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                    EquipWeapon("Hidden Key")
                    tpwithnewtpbyme2(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875), tonumber(Setting.TeleportSpeedAutoFarm))
                    wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6571.1201171875, 305, -6967.841796875)
                    wait()
                elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoRengoku then
                            Setting.TryNumOfthis1 = 0
                            repeat
                                EquipWeapon(tostring(Setting.SelectWeapon))
                                repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                MobHumP = v.HumanoidRootPart.Position
                                tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                wait()
                                Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                            until v.Humanoid.Health == 0 or not Setting.AutoRengoku or Setting.TryNumOfthis1 == 300 or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key")
                        end
                    end
                else
                    tpwithnewtpbyme2(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188), tonumber(Setting.TeleportSpeedAutoFarm))
                end
            end
        end
    end)()
end)
pcall(function()
    coroutine.wrap(function()
        repeat task.wait() until finishload
        warn("Finish Load For Weapon")
        while task.wait() do
            if not IsAutoFarmBusy and IsWeaponBusy then
                if (Setting.AutoTwinHooks or Setting.AutoTwinHooksHop) and not IsAutoFarmBusy then
                    pcall(function()
                        if workspace.Enemies:FindFirstChild("Captain Elephant")then
                            for _,v in pairs(workspace.Enemies:GetChildren()) do
                                if v and v.Name == tostring("Captain Elephant") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoTwinHooks then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                            wait()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoTwinHooks or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
                                tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Captain Elephant").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoTwinHooksHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                task.wait()
                if (Setting.AutoBuddySword or Setting.AutoBuddySwordHop) and not IsAutoFarmBusy then
                    pcall(function()
                        if workspace.Enemies:FindFirstChild("Cake Queen") then
                            for _,v in pairs(workspace.Enemies:GetChildren()) do
                                if v and v.Name == tostring("Cake Queen") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoBuddySword then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                            wait()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoBuddySword or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then
                                tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoBuddySwordHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                task.wait()
                if (Setting.AutoSharkSaw or Setting.AutoSharkSawHop) and not IsAutoFarmBusy then
                    pcall(function()
                        if workspace.Enemies:FindFirstChild("The Saw") then
                            for _,v in pairs(workspace.Enemies:GetChildren()) do
                                if v and v.Name == tostring("The Saw") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoSharkSaw then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                            wait()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoSharkSaw or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("The Saw") then
                                tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("The Saw").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoSharkSawHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                task.wait()
                if (Setting.AutoWardensSword or Setting.AutoWardensSwordHop) and not IsAutoFarmBusy then
                    pcall(function()
                        if workspace.Enemies:FindFirstChild("Chief Warden") then
                            for _,v in pairs(workspace.Enemies:GetChildren()) do
                                if v and v.Name == tostring("Chief Warden") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoWardensSword then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                            wait()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoWardensSword or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden") then
                                tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Chief Warden").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoWardensSwordHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                task.wait()
                if (Setting.AutoGravityCane or Setting.AutoGravityCaneHop) and not IsAutoFarmBusy then
                    pcall(function()
                        if workspace.Enemies:FindFirstChild("Fajita") then
                            for _,v in pairs(workspace.Enemies:GetChildren()) do
                                if v and v.Name == tostring("Fajita") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoGravityCane then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                            wait()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoGravityCane or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Fajita") then
                                tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Fajita").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoGravityCaneHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                task.wait()
                if (Setting.AutoLongsword or Setting.AutoLongswordHop) and not IsAutoFarmBusy then
                    pcall(function()
                        if workspace.Enemies:FindFirstChild("Diamond") then
                            for _,v in pairs(workspace.Enemies:GetChildren()) do
                                if v and v.Name == tostring("Diamond") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoLongsword then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                            wait()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoLongsword or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Diamond") then
                                tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Diamond").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoLongswordHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                task.wait()
                if (Setting.AutoJitte or Setting.AutoJitteHop) and not IsAutoFarmBusy then
                    pcall(function()
                        if workspace.Enemies:FindFirstChild("Smoke Admiral") then
                            for _,v in pairs(workspace.Enemies:GetChildren()) do
                                if v and v.Name == tostring("Smoke Admiral") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoJitte then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                            wait()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoJitte or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Smoke Admiral") then
                                tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Smoke Admiral").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoJitteHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                task.wait()
                if (Setting.AutoDragonTrident or Setting.AutoDragonTridentHop) and not IsAutoFarmBusy then
                    pcall(function()
                        if workspace.Enemies:FindFirstChild("Tide Keeper") then
                            for _,v in pairs(workspace.Enemies:GetChildren()) do
                                if v and v.Name == tostring("Tide Keeper") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoDragonTrident then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                            wait()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoDragonTrident or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper") then
                                tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Tide Keeper").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoDragonTridentHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                task.wait()
                if (Setting.AutoPole or Setting.AutoPoleHop) and not IsAutoFarmBusy then
                    pcall(function()
                        if workspace.Enemies:FindFirstChild("Thunder God") then
                            for _,v in pairs(workspace.Enemies:GetChildren()) do
                                if v and v.Name == tostring("Thunder God") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoPole then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                            wait()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoPole or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
                                tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Thunder God").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoPoleHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                task.wait()
                if (Setting.AutoHallowScythe or Setting.AutoHallowScytheHop) and not IsAutoFarmBusy then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v and v.Name == tostring("Soul Reaper") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoHallowScythe then
                                        EquipWeapon(tostring(Setting.SelectWeapon))
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                            wait()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoHallowScythe or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        elseif Backpack:FindFirstChild("Hallow Essence") or player.Character:FindFirstChild("Hallow Essence") then
                            repeat 
                                tpwithnewtpbyme2(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125), tonumber(Setting.TeleportSpeedAutoFarm)) 
                                wait()
                                player.Character.HumanoidRootPart.CFrame = CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)
                            until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - player.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                            EquipWeapon("Hallow Essence")
                        else
                            if ReplicatedStorage:FindFirstChild("Soul Reaper") then
                                tpwithnewtpbyme2(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoHallowScytheHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                task.wait()
                if (Setting.AutoSaber or Setting.AutoSaberHop) and not IsAutoFarmBusy then
                    pcall(function()
                        if workspace.Enemies:FindFirstChild("Saber Expert") then
                            for _,v in pairs(workspace.Enemies:GetChildren()) do
                                if v and v.Name == tostring("Saber Expert") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoSaber then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                            wait()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoSaber or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                                tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Saber Expert").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
                            else
                                if Setting.AutoSaberHop then
                                    SVHop()
                                end
                            end
                        end
                    end)
                end
                task.wait()
                if (Setting.AutoCanvander or Setting.AutoCanvanderHop) and not IsAutoFarmBusy then
                    pcall(function()
                        if workspace.Enemies:FindFirstChild("Beautiful Pirate") then
                            for _,v in pairs(workspace.Enemies:GetChildren()) do
                                if v and v.Name == tostring("Beautiful Pirate") then
                                    if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoCanvander then
                                        Setting.TryNumOfthis1 = 0
                                        repeat
                                            repeat task.wait() until player.Character:FindFirstChild("Humanoid")
                                            MobHumP = v.HumanoidRootPart.Position
                                            tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                            wait()
                                            Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                        until v.Humanoid.Health == 0 or not Setting.AutoCanvander or Setting.TryNumOfthis1 == 300
                                    end
                                end
                            end
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then
                                tpwithnewtpbyme2(ReplicatedStorage:FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame * CFrame.new(0,30,0), tonumber(Setting.TeleportSpeedAutoFarm))
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


--Sea event
pcall(function()
    coroutine.wrap(function()
        while task.wait() do
            if Setting.AutoSeaEvent then
                if workspace.Enemies:FindFirstChild("Shark") and not table.find(Setting.IgnoreSeaEventList, "Shark") then
                    Setting.DMGAura4 = true
                    Setting.WaitBRUH = true
                    Setting.PauseAutoEqu = false
                end
                task.wait()
                if workspace.Enemies:FindFirstChild("Terrorshark") and not table.find(Setting.IgnoreSeaEventList, "Terrorshark") then
                    Setting.DMGAura4 = true
                    Setting.WaitBRUH = true
                    Setting.PauseAutoEqu = false
                    task.wait(0.165)
                    for _, v in pairs(workspace.Enemies:GetChildren()) do
                        if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 then
                            if v:FindFirstChild("HumanoidRootPart") then
                                repeat
                                    MobHumP = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                    task.wait()
                                until not v:FindFirstChild("Health") or (v:FindFirstChild("Health") and v.Health == 0) or not Setting.AutoSeaEvent or table.find(Setting.IgnoreSeaEventList, "SeaBeast")
                            end
                        end
                    end
                    task.wait()
                    for _, v in pairs(workspace.Boats:GetChildren()) do
                        if v and v:FindFirstChild("Owner") and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                            tpwithnewtpbyme2(v.VehicleSeat.CFrame, tonumber(Setting.TeleportSpeedAutoFarm))
                            task.wait()
                            repeat
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.VehicleSeat.CFrame
                                task.wait()
                            until not v or game.Players.LocalPlayer.Character.Humanoid.Sit
                        end
                    end
                    task.wait()
                end
                task.wait()
                if workspace.Enemies:FindFirstChild("Piranha") and not table.find(Setting.IgnoreSeaEventList, "Piranha") then
                    Setting.DMGAura4 = true
                    Setting.WaitBRUH = true
                    Setting.PauseAutoEqu = false
                end
                task.wait()
                if workspace.Enemies:FindFirstChild("Fish Crew Member") and not table.find(Setting.IgnoreSeaEventList, "Fish Crew Member") then
                    Setting.DMGAura4 = true
                    Setting.WaitBRUH = true
                    Setting.PauseAutoEqu = false
                end
                task.wait()
                if #game:GetService("Workspace").SeaBeasts:GetChildren() > 0 and not table.find(Setting.IgnoreSeaEventList, "SeaBeast") then
                    Setting.DMGAura4 = true
                    Setting.WaitBRUH = true
                    Setting.PauseAutoEqu = true
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                    EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                    task.wait()
                    for _, v in pairs(workspace.SeaBeasts:GetChildren()) do
                        if v and v:FindFirstChild("Health") and v.Health ~= 0 then
                            if v:FindFirstChild("HumanoidRootPart") then
                                repeat
                                    Setting.UseSkill = true
                                    Setting.PauseAutoEqu = true
                                    EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                    MobHumP = v.HumanoidRootPart.Position
                                    Setting.PosMobMasteryFruit = MobHumP
                                    tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, tonumber(Setting.TeleportSpeedAutoFarm))
                                    UseSkill()
                                    task.wait()
                                    EquipMelee()
                                    task.wait(0.15)
                                    UseSkillMelee()
                                    task.wait()
                                    EquipSword()
                                    task.wait(0.15)
                                    UseSkillMelee()
                                until not v:FindFirstChild("Health") or (v:FindFirstChild("Health") and v.Health == 0) or not Setting.AutoSeaEvent or table.find(Setting.IgnoreSeaEventList, "SeaBeast")
                            end
                        end
                    end
                    task.wait()
                    for _, v in pairs(workspace.Boats:GetChildren()) do
                        if v and v:FindFirstChild("Owner") and tostring(v.Owner.Value) == tostring(game.Players.LocalPlayer.Name) then
                            tpwithnewtpbyme2(v.VehicleSeat.CFrame, tonumber(Setting.TeleportSpeedAutoFarm))
                            task.wait()
                            repeat
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.VehicleSeat.CFrame
                                task.wait()
                            until not v or game.Players.LocalPlayer.Character.Humanoid.Sit
                        end
                    end
                    task.wait()
                    Setting.UseSkill = false
                    Setting.PauseAutoEqu = false
                end
                task.wait()
                if not workspace.Enemies:FindFirstChild("Shark") and not workspace.Enemies:FindFirstChild("Terrorshark") and not workspace.Enemies:FindFirstChild("Piranha") and not workspace.Enemies:FindFirstChild("Fish Crew Member") and #game:GetService("Workspace").SeaBeasts:GetChildren() == 0 then
                    Setting.DMGAura4 = false
                    Setting.WaitBRUH = false
                    Setting.PauseAutoEqu = false
                end
            end
        end
    end)()
end)
pcall(function()
    coroutine.wrap(function()
        while task.wait() do
            if Setting.AutoSeaEvent then
                if (not game.Players.LocalPlayer.Character.Humanoid.Sit and not Setting.WaitBRUH) then
                    AutoGetShip()
                    task.wait(0.256)
                end
                task.wait()
                if game.Players.LocalPlayer.Character.Humanoid.Sit then
                    TpShipToLevel()
                end
                if game.Players.LocalPlayer.Character.Humanoid.Sit then
                    repeat task.wait() until (not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") or (player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health == 0) or (game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and not game.Players.LocalPlayer.Character.Humanoid.Sit and not Setting.WaitBRUH)) or not Setting.AutoSeaEvent
                end
                repeat task.wait() until player:FindFirstChild("Humanoid") and player.Humanoid.Health > 0
                task.wait(5)
            end
        end
    end)()
end)

    













--[[
$$$$$$$\  $$\        $$$$$$\ $$\     $$\ $$$$$$$$\ $$$$$$$\                  $$$$$$$$\ 
$$  __$$\ $$ |      $$  __$$\\$$\   $$  |$$  _____|$$  __$$\                 \__$$  __|
$$ |  $$ |$$ |      $$ /  $$ |\$$\ $$  / $$ |      $$ |  $$ |                   $$ |   
$$$$$$$  |$$ |      $$$$$$$$ | \$$$$  /  $$$$$\    $$$$$$$  |                   $$ |   
$$  ____/ $$ |      $$  __$$ |  \$$  /   $$  __|   $$  __$$<                    $$ |   
$$ |      $$ |      $$ |  $$ |   $$ |    $$ |      $$ |  $$ |                   $$ |   
$$ |      $$$$$$$$\ $$ |  $$ |   $$ |    $$$$$$$$\ $$ |  $$ |      $$\          $$ |   
\__|      \________|\__|  \__|   \__|    \________|\__|  \__|      \__|         \__| 
]]














pcall(function()
    coroutine.wrap(function()
        repeat task.wait() until finishload
        while task.wait() do
            if Setting.AutoBuso then
                pcall(function()
                    if not player.Character:FindFirstChild("HasBuso") then
                        CommF:InvokeServer("Buso")
                    end
                end)        
            end
        end
    end)()
end)
pcall(function()
    coroutine.wrap(function()
        repeat task.wait() until finishload
        while task.wait() do
            if Setting.AutoKen then
                pcall(function()
                    CommE:FireServer("Ken",true)
                end)        
            end
        end
    end)()
end)
coroutine.wrap(function()
    while task.wait() do
        if Setting.AutoFarmBounty then
            Setting.PauseAutoEqu = true
            Setting.DMGAura5 = true
            for _, v in pairs(workspace.Characters:GetChildren()) do
                if v and (v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0) and v:FindFirstChild("HumanoidRootPart") and Setting.AutoFarmBounty and v.Name ~= game.Players.LocalPlayer.Name then
                    Setting.Atgay = v:GetAttribute("InCombat")
                    repeat
                        tpwithnewtpbyme2(v.HumanoidRootPart.CFrame, tonumber(Setting.AutoBountyTeleportSpeed))
                        task.wait()
                    until (v.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude <= 30 or not Setting.AutoFarmBounty
                    EquipMelee()
                    task.wait(3)
                    PosMobMasteryFruit = (v:FindFirstChild("HumanoidRootPart") and v.HumanoidRootPart.Position)
                    UseSkillMelee()
                    task.wait(2)
                    tpwithnewtpbyme(v.HumanoidRootPart.Position.X, v.HumanoidRootPart.Position.Y + 100, v.HumanoidRootPart.Position.Z, 6)
                    if Setting.Atgay then
                        if not Setting.UseMeleeOnly then
                            repeat
                                repeat task.wait() until player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0
                                Setting.PauseAutoEqu = true
                                Setting.DMGAura5 = true
                                if Setting.ErrorAndTrial >= Setting.MaxErrorAndTrial or not Setting.AutoFarmBounty then
                                    break
                                else
                                    if Setting.UseRaceWhenAutoBounty and Setting.AutoFarmBounty then
                                        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                                    end
                                    if player.Character.Humanoid.Health <= Setting.KeepSafeHealth and Setting.AutoFarmBounty then
                                        repeat
                                            tpwithnewtpbyme(v.HumanoidRootPart.X, v.HumanoidRootPart.Y + 1000, v.HumanoidRootPart.Z, tonumber(6))
                                            task.wait()
                                        until player.Character.Humanoid.Health > Setting.KeepSafeHealth
                                    end
                                    if Setting.AutoKennWhenAutoBounty and Setting.AutoFarmBounty then
                                        CommE:FireServer("Ken", true)
                                    end
                                    task.wait()
                                    PosMobMasteryFruit = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme2(v.HumanoidRootPart.CFrame, tonumber(Setting.AutoBountyTeleportSpeed))
                                    EquipMelee()
                                    UseSkillMelee()
                                    tpwithnewtpbyme2(v.HumanoidRootPart.CFrame, tonumber(Setting.AutoBountyTeleportSpeed))
                                    PosMobMasteryFruit = v.HumanoidRootPart.Position
                                    EquipSword()
                                    UseSkillMelee()
                                    tpwithnewtpbyme2(v.HumanoidRootPart.CFrame, tonumber(Setting.AutoBountyTeleportSpeed))
                                    PosMobMasteryFruit = v.HumanoidRootPart.Position
                                    Setting.ErrorAndTrial = Setting.ErrorAndTrial + 1
                                end
                                task.wait()
                            until not v:FindFirstChild("Humanoid") or v.Humanoid.Health == 0  or Setting.ErrorAndTrial >= Setting.MaxErrorAndTrial or not Setting.AutoFarmBounty
                        else
                            repeat
                                repeat task.wait() until player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0
                                Setting.PauseAutoEqu = true
                                Setting.DMGAura5 = true
                                if Setting.ErrorAndTrial >= Setting.MaxErrorAndTrial or not Setting.AutoFarmBounty then
                                    break
                                else
                                    if Setting.UseRaceWhenAutoBounty and Setting.AutoFarmBounty then
                                        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                                    end
                                    if player.Character.Humanoid.Health <= Setting.KeepSafeHealth and Setting.AutoFarmBounty then
                                        repeat
                                            tpwithnewtpbyme(v.HumanoidRootPart.X, v.HumanoidRootPart.Y + 1000, v.HumanoidRootPart.Z, tonumber(6))
                                            task.wait()
                                        until player.Character.Humanoid.Health > Setting.KeepSafeHealth
                                    end
                                    if Setting.AutoKennWhenAutoBounty and Setting.AutoFarmBounty then
                                        CommE:FireServer("Ken", true)
                                    end
                                    task.wait()
                                    PosMobMasteryFruit = v.HumanoidRootPart.Position
                                    tpwithnewtpbyme2(v.HumanoidRootPart.CFrame, tonumber(Setting.AutoBountyTeleportSpeed))
                                    EquipMelee()
                                    UseSkillMelee()
                                    Setting.ErrorAndTrial = Setting.ErrorAndTrial + 1
                                end
                                task.wait()
                            until not v:FindFirstChild("Humanoid") or v.Humanoid.Health == 0  or Setting.ErrorAndTrial >= Setting.MaxErrorAndTrial or not Setting.AutoFarmBounty
                        end
                    end
                end
            end
            Setting.PauseAutoEqu = false
            Setting.DMGAura5 = false
            if Setting.AutoFarmBountyHop then
                SVHop()
            end
        end
    end
end)()















--[[
$$$$$$$\   $$$$$$\  $$$$$$\ $$$$$$$\                  $$$$$$$$\ 
$$  __$$\ $$  __$$\ \_$$  _|$$  __$$\                 \__$$  __|
$$ |  $$ |$$ /  $$ |  $$ |  $$ |  $$ |                   $$ |   
$$$$$$$  |$$$$$$$$ |  $$ |  $$ |  $$ |                   $$ |   
$$  __$$< $$  __$$ |  $$ |  $$ |  $$ |                   $$ |   
$$ |  $$ |$$ |  $$ |  $$ |  $$ |  $$ |                   $$ |   
$$ |  $$ |$$ |  $$ |$$$$$$\ $$$$$$$  |      $$\          $$ |   
\__|  \__|\__|  \__|\______|\_______/       \__|         \__|   
]]















coroutine.wrap(function()
    while task.wait() do
        repeat task.wait() until finishload
        if KillAuraS then
            pcall(function()
                for _, v in pairs(workspace.Enemies:GetChildren()) do
                    if v and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and KillAuraS then
                        v.Humanoid.Health = 0
                    end
                end
            end)
        end
    end
end)()
coroutine.wrap(function()
    while task.wait() do
        repeat task.wait() until finishload
        if Setting.TeleportToNextIsland then
            pcall(function()
                if WorldOrigin.Locations:FindFirstChild("Island 5") then
                    tpwithnewtpbyme2(WorldOrigin.Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0 + tonumber(Setting.AutoRaidPosX), 25 + tonumber(Setting.AutoRaidPosY), 0 + tonumber(Setting.AutoRaidPosZ)), tonumber(Setting.TeleportToNEXTIslandSpeed))
                elseif WorldOrigin.Locations:FindFirstChild("Island 4") then
                    tpwithnewtpbyme2(WorldOrigin.Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0 + tonumber(Setting.AutoRaidPosX), 25 + tonumber(Setting.AutoRaidPosY), 0 + tonumber(Setting.AutoRaidPosZ)), tonumber(Setting.TeleportToNEXTIslandSpeed))
                elseif WorldOrigin.Locations:FindFirstChild("Island 3") then
                    tpwithnewtpbyme2(WorldOrigin.Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0 + tonumber(Setting.AutoRaidPosX), 25 + tonumber(Setting.AutoRaidPosY), 0 + tonumber(Setting.AutoRaidPosZ)), tonumber(Setting.TeleportToNEXTIslandSpeed))
                elseif WorldOrigin.Locations:FindFirstChild("Island 2") then
                    tpwithnewtpbyme2(WorldOrigin.Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0 + tonumber(Setting.AutoRaidPosX), 25 + tonumber(Setting.AutoRaidPosY), 0 + tonumber(Setting.AutoRaidPosZ)), tonumber(Setting.TeleportToNEXTIslandSpeed))
                elseif WorldOrigin.Locations:FindFirstChild("Island 1") then
                    tpwithnewtpbyme2(WorldOrigin.Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0 + tonumber(Setting.AutoRaidPosX), 25 + tonumber(Setting.AutoRaidPosY), 0 + tonumber(Setting.AutoRaidPosZ)), tonumber(Setting.TeleportToNEXTIslandSpeed))
                end
            end)
        end
    end
end)()
coroutine.wrap(function()
    repeat task.wait() until finishload
    while task.wait() do
        if Setting.AutoRaid and Setting.SelectedRaid2 ~= nil then
            pcall(function()
                if not PlayerGui.Main.Timer.Visible and (not WorldOrigin.Locations:FindFirstChild("Island 1") or (WorldOrigin.Locations:FindFirstChild("Island 1") and not isTargetNearPlayer(WorldOrigin.Locations:FindFirstChild("Island 1").CFrame, 6700))) then
                    pcall(function()
                        if (not Backpack:FindFirstChild("Special Microchip") or not player.Character:FindFirstChild("Special Microchip")) and (not WorldOrigin.Locations:FindFirstChild("Island 1") or (WorldOrigin.Locations:FindFirstChild("Island 1") and not isTargetNearPlayer(WorldOrigin.Locations:FindFirstChild("Island 1").CFrame, 6700))) then
                            if not WorldOrigin.Locations:FindFirstChild("Island 1") or (WorldOrigin.Locations:FindFirstChild("Island 1") and not isTargetNearPlayer(WorldOrigin.Locations:FindFirstChild("Island 1").CFrame, 6700)) then
                                CommF:InvokeServer("RaidsNpc", "Select", tostring(Setting.SelectedRaid2))
                            end
                        end
                        task.wait()
                        if not PlayerGui.Main.Timer.Visible and (not WorldOrigin.Locations:FindFirstChild("Island 1") or (WorldOrigin.Locations:FindFirstChild("Island 1") and not isTargetNearPlayer(WorldOrigin.Locations:FindFirstChild("Island 1").CFrame, 6700))) then
                            if New_World then
                                fireclickdetector(workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                            elseif Third_World then
                                fireclickdetector(workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                            end
                        end
                        repeat task.wait() until (WorldOrigin.Locations:FindFirstChild("Island 1") and isTargetNearPlayer(WorldOrigin.Locations:FindFirstChild("Island 1").CFrame, 6700)) or not Setting.AutoRaid
                        if WorldOrigin.Locations:FindFirstChild("Island 5") then
                            tpwithnewtpbyme2(WorldOrigin.Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0 + tonumber(Setting.AutoRaidPosX), 25 + tonumber(Setting.AutoRaidPosY), 0 + tonumber(Setting.AutoRaidPosZ)), tonumber(Setting.TeleportToNEXTIslandSpeed))
                        elseif WorldOrigin.Locations:FindFirstChild("Island 4") then
                            tpwithnewtpbyme2(WorldOrigin.Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0 + tonumber(Setting.AutoRaidPosX), 25 + tonumber(Setting.AutoRaidPosY), 0 + tonumber(Setting.AutoRaidPosZ)), tonumber(Setting.TeleportToNEXTIslandSpeed))
                        elseif WorldOrigin.Locations:FindFirstChild("Island 3") then
                            tpwithnewtpbyme2(WorldOrigin.Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0 + tonumber(Setting.AutoRaidPosX), 25 + tonumber(Setting.AutoRaidPosY), 0 + tonumber(Setting.AutoRaidPosZ)), tonumber(Setting.TeleportToNEXTIslandSpeed))
                        elseif WorldOrigin.Locations:FindFirstChild("Island 2") then
                            tpwithnewtpbyme2(WorldOrigin.Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0 + tonumber(Setting.AutoRaidPosX), 25 + tonumber(Setting.AutoRaidPosY), 0 + tonumber(Setting.AutoRaidPosZ)), tonumber(Setting.TeleportToNEXTIslandSpeed))
                        elseif WorldOrigin.Locations:FindFirstChild("Island 1") then
                            tpwithnewtpbyme2(WorldOrigin.Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0 + tonumber(Setting.AutoRaidPosX), 25 + tonumber(Setting.AutoRaidPosY), 0 + tonumber(Setting.AutoRaidPosZ)), tonumber(Setting.TeleportToNEXTIslandSpeed))
                        end
                    end)
                else
                    repeat task.wait() until (WorldOrigin.Locations:FindFirstChild("Island 1") and isTargetNearPlayer(WorldOrigin.Locations:FindFirstChild("Island 1").CFrame, 6700) and game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible) or not Setting.AutoRaid
                    if WorldOrigin.Locations:FindFirstChild("Island 5") then
                        tpwithnewtpbyme2(WorldOrigin.Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0 + tonumber(Setting.AutoRaidPosX), 25 + tonumber(Setting.AutoRaidPosY), 0 + tonumber(Setting.AutoRaidPosZ)), tonumber(Setting.TeleportToNEXTIslandSpeed))
                    elseif WorldOrigin.Locations:FindFirstChild("Island 4") then
                        tpwithnewtpbyme2(WorldOrigin.Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0 + tonumber(Setting.AutoRaidPosX), 25 + tonumber(Setting.AutoRaidPosY), 0 + tonumber(Setting.AutoRaidPosZ)), tonumber(Setting.TeleportToNEXTIslandSpeed))
                    elseif WorldOrigin.Locations:FindFirstChild("Island 3") then
                        tpwithnewtpbyme2(WorldOrigin.Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0 + tonumber(Setting.AutoRaidPosX), 25 + tonumber(Setting.AutoRaidPosY), 0 + tonumber(Setting.AutoRaidPosZ)), tonumber(Setting.TeleportToNEXTIslandSpeed))
                    elseif WorldOrigin.Locations:FindFirstChild("Island 2") then
                        tpwithnewtpbyme2(WorldOrigin.Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0 + tonumber(Setting.AutoRaidPosX), 25 + tonumber(Setting.AutoRaidPosY), 0 + tonumber(Setting.AutoRaidPosZ)), tonumber(Setting.TeleportToNEXTIslandSpeed))
                    elseif WorldOrigin.Locations:FindFirstChild("Island 1") then
                        tpwithnewtpbyme2(WorldOrigin.Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0 + tonumber(Setting.AutoRaidPosX), 25 + tonumber(Setting.AutoRaidPosY), 0 + tonumber(Setting.AutoRaidPosZ)), tonumber(Setting.TeleportToNEXTIslandSpeed))
                    end
                end
                task.wait()
            end)
            task.wait()
        end
    end
end)()















--[[


 $$$$$$\  $$$$$$$$\ $$$$$$$$\ 
$$  __$$\ $$  _____|\__$$  __|
$$ /  \__|$$ |         $$ |   
\$$$$$$\  $$$$$\       $$ |   
 \____$$\ $$  __|      $$ |   
$$\   $$ |$$ |         $$ |   
\$$$$$$  |$$$$$$$$\    $$ |   
 \______/ \________|   \__|


]]
















repeat
    pcall(function()
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
    task.wait(5)
until Window ~= nil

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    AutoFarmTab = Window:AddTab({ Title = "Auto Farm", Icon = "" }),
    WeaponTab = Window:AddTab({ Title = "Weapon", Icon = "" }),
    RaidT = Window:AddTab({ Title = "Raid", Icon = "" }),
    StatsT = Window:AddTab({ Title = "Stats", Icon = "" }),
    FruitT = Window:AddTab({ Title = "Fruit", Icon = "" }),
    MirageARaceT = Window:AddTab({ Title = "Mirage-Race", Icon = "" }),
    SeaEventT = Window:AddTab({ Title = "Sea Event", Icon = "" }),
    PlayerTab = Window:AddTab({ Title = "Player", Icon = "" }),
    TpTab = Window:AddTab({ Title = "Teleport", Icon = "" }),
    ShopTab = Window:AddTab({ Title = "Shop", Icon = "" }),
    ESPT = Window:AddTab({ Title = "ESP", Icon = "" }),
    Credits = Window:AddTab({ Title = "Credits", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

pcall(function()
    Window.Root:GetPropertyChangedSignal("Visible"):Connect(OnFluentChange)
end)

pcall(function()
    function onButtonClick()
        Window.Minimized = not Window.Minimized
        Window.Root.Visible = not Window.Minimized
    end
    function onButtonClick2()
        StopAllHop = true
        STOPHOP.TextColor3  = Color3.fromRGB(0, 255, 0)
        task.wait(10)
        StopAllHop = false
        STOPHOP.TextColor3  = Color3.fromRGB(255, 0, 0)
    end
    TTJYHUB.MouseButton1Click:Connect(onButtonClick)
    STOPHOP.MouseButton1Click:Connect(onButtonClick2)
    STOPTP.MouseButton1Click:Connect(StopTeleport)
    if CoreGui:FindFirstChild("InputPcToMobile") then
        CoreGui:FindFirstChild("InputPcToMobile"):Destroy()
    end
    local screenGui2 = Instance.new("ScreenGui")
    screenGui2.Name = "InputPcToMobile"
    screenGui2.Parent = game.CoreGui
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
    
    -- Create buttons for W, A, S, D
    createButton("W", UDim2.new(0.05, 0, 0.1, 0))
    task.wait(1)
    createButton("A", UDim2.new(0, 0, 0.2, 0))
    task.wait(1)
    createButton("S", UDim2.new(0.05, 0, 0.3, 0))
    task.wait(1)
    createButton("D", UDim2.new(0.1, 0, 0.2, 0))
    task.wait(1)
end)








--[[



 $$$$$$\        $$$$$$$$\       $$$$$$\          $$$$$$$\       $$$$$$$$\ 
$$  __$$\       \__$$  __|      $$  __$$\        $$  __$$\      \__$$  __|
$$ /  \__|         $$ |         $$ /  $$ |       $$ |  $$ |       $$ |   
\$$$$$$\           $$ |         $$$$$$$$ |       $$$$$$$  |       $$ |   
 \____$$\          $$ |         $$  __$$ |       $$  __$$<        $$ |   
$$\   $$ |         $$ |         $$ |  $$ |       $$ |  $$ |       $$ |   
\$$$$$$  |         $$ |         $$ |  $$ |       $$ |  $$ |       $$ |   
 \______/          \__|         \__|  \__|       \__|  \__|       \__| 




]]








do
    print(Setting.AutoFarmLevel)
    --Main Tabss
    Tabs.Main:AddSection("Select Weapon")
    Tabs.Main:AddButton({
        Title = "Save Config + Setting",
        Description = "Your setting and config will load everytime you execute, so you should do this before close or leave game",
        Callback = function()
            serializedSetting = game.HttpService:JSONEncode(Setting)
            task.wait()
            writefile("Setting/setting.json", serializedSetting)
        end
    })
    --AutoFarm Tabss
    WeaponBackpack = {tostring(Setting.SelectWeapon)}
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
            wait()
            for _, item in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                table.insert(WeaponBackpack, item.Name)
            end
            wait()
            SelectWeapon:SetValues(WeaponBackpack)
        end
    })
    Tabs.AutoFarmTab:AddSection("Auto Farm")
    AutoFarmLevel = Tabs.AutoFarmTab:AddToggle("AutoFarmLevel", {Title = "Auto Farm Level", Default = Setting.AutoFarmLevel })

    AutoFarmLevel:OnChanged(function()
        Setting.AutoFarmLevel = Options.AutoFarmLevel.Value
    end)
    if Old_World then
        AutoFarmLevelWithSea2 = Tabs.AutoFarmTab:AddToggle("AutoFarmLevelWithSea2", {Title = "Auto Sea 2 (After Auto Farm Level)", Default = Setting.AutoSea2 })

        AutoFarmLevelWithSea2:OnChanged(function()
            Setting.AutoSea2 = Options.AutoFarmLevelWithSea2.Value
        end)
        AutoFarmLevelWithSea22 = Tabs.AutoFarmTab:AddToggle("AutoFarmLevelWithSea22", {Title = "Auto Sea 2 (Normal)", Default = Setting.AutoFarmLevelWithSea22 })

        AutoFarmLevelWithSea22:OnChanged(function()
            if Options.AutoFarmLevelWithSea22.Value then
                tpwithnewtpbyme(4852.15625, 5.776771545410156, 718.41064453125, 5)
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("DressrosaQuestProgress", "Detective")
                task.wait(3)
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("DressrosaQuestProgress", "Detective")
                task.wait(2.175)
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool("Key")
                    if Options.AutoFarmLevelWithSea22.Value then
                        repeat
                            tpwithnewtpbyme(1344.54724, 42.2526398, -1327.88904, 5)
                            task.wait()
                        until (workspace.Map.Ice.Door and workspace.Map.Ice.Door.Transparency == 1) or not Options.AutoFarmLevelWithSea22.Value
                        task.wait(1.75)
                        for _,v in pairs(workspace.Enemies:GetChildren()) do
                            if v and v.Name == tostring("Ice Admiral") then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Options.AutoFarmLevelWithSea22.Value then
                                    Attack = true
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, 10)
                                        wait()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Options.AutoFarmLevelWithSea22.Value or Setting.TryNumOfthis1 == 2000
                                end
                            end
                        end
                        task.wait()
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("TravelDressrosa")
                    end
                elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Key") then
                    tpwithnewtpbyme(1344.54724, 42.2526398, -1327.88904, 5)
                    task.wait(1.75)
                    if Options.AutoFarmLevelWithSea22.Value then
                        for _,v in pairs(workspace.Enemies:GetChildren()) do
                            if v and v.Name == tostring("Ice Admiral") then
                                if v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Options.AutoFarmLevelWithSea22.Value then
                                    Attack = true
                                    Setting.TryNumOfthis1 = 0
                                    repeat
                                        repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                        MobHumP = v.HumanoidRootPart.Position
                                        tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, 10)
                                        wait()
                                        Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                                    until v.Humanoid.Health == 0 or not Options.AutoFarmLevelWithSea22.Value or Setting.TryNumOfthis1 == 2000
                                end
                            end
                        end
                    end
                    task.wait()
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("TravelDressrosa")
                end
            end
        end)
        AutoRichManMission = Tabs.AutoFarmTab:AddToggle("AutoRichManMission", {Title = "Auto Open Saber Door", Default = Setting.AutoRichManMission })

        AutoRichManMission:OnChanged(function()
            Setting.AutoRichManMission = Options.AutoRichManMission.Value
        end)
    elseif New_World then
        AutoBartilo = Tabs.AutoFarmTab:AddToggle("AutoBartilo", {Title = "Auto Bartilo Quest", Default = Setting.AutoBartilo })

        AutoBartilo:OnChanged(function()
            Setting.AutoBartilo = Options.AutoBartilo.Value
        end)
        AutoSea3 = Tabs.AutoFarmTab:AddToggle("AutoSea3", {Title = "Auto Sea 3", Default = Setting.AutoSea3 })

        AutoSea3:OnChanged(function()
            Setting.AutoSea3 = Options.AutoSea3.Value
        end)
    elseif Third_World then
        
    end
    task.wait()
    if Old_World then
        SelectMob = Tabs.AutoFarmTab:AddDropdown("SelectMob", {
            Title = "Select Mob",
            Values = {"Bandit", "Monkey", "Gorilla", "Pirate", "Brute", "Desert Bandit", "Desert Officer", "Snow Bandit", "Snowman", "Chief Petty Officer", "Sky Bandit", "Dark Master", "Prisoner", "Dangerous Prisoner", "Toga Warrior", "Gladiator", "Military Soldier", "Fishman Warrior", "Fishman Commando", "God's Guard", "Shanda", "Royal Squad", "Royal Soldier", "Galley Pirate"},
            Multi = false,
            Default = 1,
        })
        SelectMob:OnChanged(function(Value)
            Setting.SelectMob = Options.SelectMob.Value
        end)

        
    elseif New_World then
        SelectMob = Tabs.AutoFarmTab:AddDropdown("SelectMob", {
            Title = "Select Mob",
            Values = {"Raider", "Mercenary", "Swan Pirate", "Factory Staff", "Marine Lieutenant", "Marine Captain", "Zombie", "Vampire", "Snow Trooper", "Winter Warrior", "Lab Subordinate", "Horned Warrior", "Magma Ninja", "Lava Pirate", "Ship Deckhand", "Ship Engineer", "Ship Steward", "Ship Officer", "Arctic Warrior", "Snow Lurker", "Sea Soldier", "Water Fighter"},
            Multi = false,
            Default = 1,
        })
        SelectMob:OnChanged(function(Value)
            Setting.SelectMob = Options.SelectMob.Value
        end)
    elseif Third_World then
        SelectMob = Tabs.AutoFarmTab:AddDropdown("SelectMob", {
            Title = "Select Mob",
            Values = {"Pirate Millionaire", "Pistol Billionaire", "Dragon Crew Warrior", "Dragon Crew Archer", "Female Islander", "Giant Islander", "Marine Commodore", "Marine Rear Admiral", "Fishman Raider", "Fishman Captain", "Forest Pirate", "Mythological Pirate", "Jungle Pirate", "Musketeer Pirate", "Musketeer Pirate", "Living Zombie", "Demonic Souls", "Posessed Mummys", "Peanut Scout", "Peanut Presidents", "Ice Cream Chefs", "Ice Cream Commanders", "Cookie Crafters"},
            Multi = false,
            Default = 1,
        })
        SelectMob:OnChanged(function(Value)
            Setting.SelectMob = Options.SelectMob.Value
        end)
    end
    task.wait()
    AutoFarmSelectMob = Tabs.AutoFarmTab:AddToggle("AutoFarmSelectMob", {Title = "Auto Farm Mob Selected", Default = false })

    AutoFarmSelectMob:OnChanged(function()
        Setting.AutoFarmSelectMob = Options.AutoFarmSelectMob.Value
    end)
    if Old_World then
        SelectBoss = Tabs.AutoFarmTab:AddDropdown("SelectBoss", {
            Title = "Select Boss",
            Values = {"Saber Expert", "The Saw", "Greybeard", "The Gorilla King", "Bobby", "Yeti", "Mob Leader", "Vice Admiral", "Warden", "Chief Warden", "Swan", "Magma Admiral", "Fishman Lord", "Wysper", "Thunder God", "Cyborg"},
            Multi = false,
            Default = 1,
        })
        SelectBoss:OnChanged(function(Value)
            Setting.SelectBoss = Options.SelectBoss.Value
        end)
    end
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
    AutoFarmSwordMastery = Tabs.AutoFarmTab:AddToggle("AutoFarmSwordMastery", {Title = "Auto Farm Sword Mastery", Default = Setting.AutoFarmSwordMastery })

    AutoFarmSwordMastery:OnChanged(function()
        Setting.AutoFarmSwordMastery = Options.AutoFarmSwordMastery.Value
    end)
    AutoFarmAllSwordMastery = Tabs.AutoFarmTab:AddToggle("AutoFarmAllSwordMastery", {Title = "Auto Farm All Sword Mastery", Default = Setting.AutoFarmAllSwordMastery })

    AutoFarmAllSwordMastery:OnChanged(function()
        Setting.AutoFarmAllSwordMastery = Options.AutoFarmAllSwordMastery.Value
    end)

    if Third_World then
        Tabs.AutoFarmTab:AddSection("Bone")
        AutoBone = Tabs.AutoFarmTab:AddToggle("AutoBone", {Title = "Auto Farm Bones", Default = Setting.AutoBone })

        AutoBone:OnChanged(function()
            Setting.AutoBone = Options.AutoBone.Value
        end)
    end
    task.wait()

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
                task.wait()
            end
        end
    end)

    Tabs.AutoFarmTab:AddSection("Material")
    SelectMaterial = Tabs.AutoFarmTab:AddDropdown("SelectMaterial", {
        Title = "Select Material",
        Values = {"gay"},
        Multi = false,
        Default = 1,
    })
    AutoMaterial = Tabs.AutoFarmTab:AddToggle("AutoMaterial", {Title = "Auto Farm Selected Material", Default = false })

    AutoMaterial:OnChanged(function()
        Setting.AutoMaterial = Options.AutoMaterial.Value
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
            CommF:InvokeServer("RaidsNpc", "Select", tostring(Setting.SelectedRaid))
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
        Default = tostring(Setting.StatsValue),
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
            CommF:InvokeServer("AddPoint", "Melee", tonumber(Setting.StatsValue))
            task.wait()
        end
    end)
    DefenseStats = Tabs.StatsT:AddToggle("DefenseStats", {Title = "Defense", Default = Setting.DefenseStats })
    DefenseStats:OnChanged(function()
        while Options.DefenseStats.Value do
            CommF:InvokeServer("AddPoint", "Melee", tonumber(Setting.StatsValue))
            task.wait()
        end
    end)
    SwordStats = Tabs.StatsT:AddToggle("SwordStats", {Title = "Sword", Default = Setting.SwordStats })
    SwordStats:OnChanged(function()
        while Options.SwordStats.Value do
            CommF:InvokeServer("AddPoint", "Sword", tonumber(Setting.StatsValue))
            task.wait()
        end
    end)
    GunStats = Tabs.StatsT:AddToggle("GunStats", {Title = "Gun", Default = Setting.GunStats })
    GunStats:OnChanged(function()
        while Options.GunStats.Value do
            CommF:InvokeServer("AddPoint", "Gun", tonumber(Setting.StatsValue))
            task.wait()
        end
    end)
    BloxFruitStats = Tabs.StatsT:AddToggle("BloxFruitStats", {Title = "Blox Fruit", Default = Setting.BloxFruitStats })
    BloxFruitStats:OnChanged(function()
        while Options.BloxFruitStats.Value do
            CommF:InvokeServer("AddPoint", "Demon Fruit", tonumber(Setting.StatsValue))
            task.wait()
        end
    end)

    Tabs.FruitT:AddSection("Main")
    BringFruit = Tabs.FruitT:AddToggle("BringFruit", {Title = "Bring Fruit", Default = Setting.BringFruit })

    BringFruit:OnChanged(function()
        Setting.BringFruit = Options.BringFruit.Value
    end)
    TeleportFruit = Tabs.FruitT:AddToggle("TeleportFruit", {Title = "Teleport To Fruit", Default = false })

    TeleportFruit:OnChanged(function()
        Setting.TpToFruit = Options.TeleportFruit.Value
    end)
    AutoRandomFruit = Tabs.FruitT:AddToggle("AutoRandomFruit", {Title = "Auto Spin Fruit", Default = Setting.AutoRandomFruit })

    AutoRandomFruit:OnChanged(function()
        while Options.AutoRandomFruit.Value do
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            task.wait(1)
        end
    end)

    AutoStoreFruit = Tabs.FruitT:AddToggle("AutoStoreFruit", {Title = "Auto Store Fruit", Default = Setting.AutoStoreFruit })

    AutoStoreFruit:OnChanged(function()
        while Options.AutoStoreFruit.Value do
            for _, tool in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if tool:FindFirstChild("EatRemote") and Options.AutoStoreFruit.Value then
                    local FruitToStore = tool:GetAttribute("OriginalName")
                    if FruitToStore then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", FruitToStore, tool)
                    else
                        warn("Attribute 'OriginalName' not found for tool:", tool.Name)
                    end
                end
            end
            task.wait()
            for _, tool in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if tool:FindFirstChild("EatRemote") and Options.AutoStoreFruit.Value then
                    local FruitToStore = tool:GetAttribute("OriginalName")
                    
                    if FruitToStore then
                        EquipWeapon(tool.Name)
                        wait()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", FruitToStore, tool)
                    else
                        warn("Attribute 'OriginalName' not found for tool:", tool.Name)
                    end
                end
            end
            task.wait()
        end
    end)
    AutoDropFruit = Tabs.FruitT:AddToggle("AutoDropFruit", {Title = "Auto Drop Fruit", Default = Setting.AutoDropFruit })

    AutoDropFruit:OnChanged(function()
        while Options.AutoDropFruit.Value do
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if v:FindFirstChild("EatRemote") and Options.AutoDropFruit.Value then
                    v.EatRemote:InvokeServer("Drop")
                end
            end
            task.wait()
            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:FindFirstChild("EatRemote", true) and Options.AutoDropFruit.Value then
                    EquipWeapon(v.Name)
                    wait()
                    v.EatRemote:InvokeServer("Drop")
                end
            end
            task.wait()
        end
    end)

    Tabs.FruitT:AddSection("Selectable")
    SelectDropFruit = Tabs.FruitT:AddDropdown("SelectDropFruit", {
        Title = "Fruit To Drop",
        Values = {"gay"},
        Multi = false,
        Default = 1,
    })
    SelectDropFruit:OnChanged(function(Value)
        Setting.SelectDropFruit = Options.SelectDropFruit.Value
    end)
    AutoDropSelectFruit = Tabs.FruitT:AddToggle("AutoDropSelectFruit", {Title = "Auto Drop Select Fruit", Default = false })

    AutoDropSelectFruit:OnChanged(function()
        Setting.AutoDropSelectFruit = Options.AutoDropSelectFruit.Value
    end)
    SelectStoreFruit = Tabs.FruitT:AddDropdown("SelectStoreFruit", {
        Title = "Fruit To Store",
        Values = {"gay"},
        Multi = false,
        Default = 1,
    })
    SelectStoreFruit:OnChanged(function(Value)
        Setting.SelectStoreFruit = Options.SelectStoreFruit.Value
    end)
    AutoStoreSelectFruit = Tabs.FruitT:AddToggle("AutoStoreSelectFruit", {Title = "Auto Store Select Fruit", Default = false })

    AutoStoreSelectFruit:OnChanged(function()
        Setting.AutoStoreSelectFruit = Options.AutoStoreSelectFruit.Value
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
            CommF:InvokeServer("PurchaseRawFruit", tostring(Setting.SelectFruitToSnipe))
        end
    })

    AutoSnipeFruit = Tabs.FruitT:AddToggle("AutoSnipeFruit", {Title = "Auto Snipe Fruit", Default = false })

    AutoSnipeFruit:OnChanged(function()
        while Options.AutoSnipeFruit.Value do
            CommF:InvokeServer("GetFruits")
            CommF:InvokeServer("PurchaseRawFruit", tostring(Setting.SelectFruitToSnipe))
            task.wait(5)
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
        Setting.AutoFindMirageIsland = Options.AutoFindMirageIsland.Value
    end)
    Tabs.MirageARaceT:AddButton({
        Title = "Reveal Fruit",
        Description = "This will tell you what fruit is selling in Mirage Island",
        Callback = function()
            
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
            
        end
    })
    Tabs.MirageARaceT:AddSection("Race V1-V3")
    YourRace = Tabs.MirageARaceT:AddDropdown("YourRace", {
        Title = "Select Race",
        Values = {"Mink", "Sky", "Fish", "Human"},
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
            CommF:InvokeServer("requestEntrance",Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586))
        end
    })
    Tabs.MirageARaceT:AddButton({
        Title = "Teleport To Clock",
        Description = "",
        Callback = function()
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586)).Magnitude > 1000 then
                CommF:InvokeServer("requestEntrance",Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586))
            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586)).Magnitude < 1000 then
                wait(0.5)
                Teleport(CFrame.new(28973.0879, 14889.9756, -120.298691))
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
            if (player.Character.HumanoidRootPart.Position - Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586)).Magnitude > 1000 then
                CommF:InvokeServer("requestEntrance",Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586))
            elseif (player.Character.HumanoidRootPart.Position - Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586)).Magnitude < 1000 then
                if player.Data.Race.Value == "Fishman" then
                    tpwithnewtpbyme2(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922), 5)
                elseif player.Data.Race.Value == "Human" then
                    tpwithnewtpbyme2(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938), 5)
                elseif player.Data.Race.Value == "Cyborg" then
                    tpwithnewtpbyme2(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406), 5)
                elseif player.Data.Race.Value == "Skypiea" then
                    tpwithnewtpbyme2(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188), 5)
                elseif player.Data.Race.Value == "Ghoul" then
                    tpwithnewtpbyme2(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719), 5)
                elseif player.Data.Race.Value == "Mink" then
                    tpwithnewtpbyme2(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969), 5)
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
            pcall(function()
                game.Players.LocalPlayer.Character.Humanoid.SeatPart.MaxSpeed = ShipSpeedSlider.Value
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
    SelectIgnoreEvent:OnChanged(function(Value)
        Setting.IgnoreSeaEventList = {}
        for Value, State in next, Value do
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
            Setting.WalkSpeedSet = tonumber(Value)
        end
    })

    WalkSpeedSlider:OnChanged(function(Value)
        Setting.WalkSpeedSet = tonumber(Value)
    end)
    JumpPowerSlider = Tabs.PlayerTab:AddSlider("JumpPowerSlider", {
        Title = "JumpPower",
        Description = "",
        Default = 16,
        Min = 0,
        Max = 360,
        Rounding = 1,
        Callback = function(Value)
            Setting.JumpPowerSet = tonumber(Value)
        end
    })

    JumpPowerSlider:OnChanged(function(Value)
        Setting.JumpPowerSet = tonumber(Value)
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
        while task.wait(0.5) do
            if Setting.ToggleWalkSpeed then
                if player.Character.Humanoid.WalkSpeed ~= tonumber(Setting.WalkSpeedSet) then
                    player.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                        if Setting.ToggleWalkSpeed then
                            player.Character.Humanoid.WalkSpeed = tonumber(Setting.WalkSpeedSet)
                        end
                    end)
                    player.Character.Humanoid.WalkSpeed = 1
                end
            end
        end
        while task.wait(0.5) do
            if Setting.ToggleJumpPower then
                if player.Character.Humanoid.JumpPower ~= tonumber(Setting.JumpPowerSet) then
                    player.Character.Humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
                        if Setting.ToggleJumpPower then
                            player.Character.Humanoid.JumpPower = tonumber(Setting.JumpPowerSet)
                        end
                    end)
                    player.Character.Humanoid.JumpPower = 1
                end
            end
        end
    end)()
    ToggleFly = Tabs.PlayerTab:AddToggle("ToggleFly", {Title = "Fly", Default = false })

    ToggleFly:OnChanged(function()
        Setting.ToggleFly = Options.ToggleFly.Value
        if Setting.ToggleFly then
            FLYING = Setting.ToggleFly
            while not cmdlp or not cmdlp.Character or not cmdlp.Character:FindFirstChild('HumanoidRootPart') or not cmdlp.Character:FindFirstChild('Humanoid') or not cmdm do
                wait()
            end
    
            local T = cmdlp.Character.HumanoidRootPart
            local SPEED = 0
    
            function FLY()
                local BG = Instance.new('BodyGyro', T)
                local BV = Instance.new('BodyVelocity', T)
                BG.P = 9e4
                BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
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
                            BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
                        else
                            BV.velocity = Vector3.new(0, 0, 0)
                        end
    
                        BG.cframe = workspace.CurrentCamera.CoordinateFrame
                        wait()
                    end
    
                    CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                    SPEED = 0
    
                    BG:Destroy()
                    BV:Destroy()
                    cmdlp.Character.Humanoid.PlatformStand = false
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
            for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                    v.CanCollide = false
                end
            end
        else
            for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
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
        Values = {"rigga56"},
        Multi = false,
        Default = 1,
    })
    SelectPlayerToAim:OnChanged(function(Value)
        Setting.SelectPlayerToAim = tostring(Value)
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
    SelectPlayerToAutoBounty = Tabs.PlayerTab:AddDropdown("SelectPlayerToAutoBounty", {
        Title = "Select Player",
        Values = {"rigga56"},
        Multi = false,
        Default = 1,
    })
    SelectPlayerToAutoBounty:OnChanged(function(Value)
        Setting.SelectPlayerToAutoBounty = tostring(Value)
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
            game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible = not game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible
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
        Default = game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Text,
        Placeholder = "Placeholder",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Text = "Lv. " .. Value
        end
    })

    LevelVisual:OnChanged(function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Text = "Lv. " .. LevelVisual.Value
    end)
    BeliVisual = Tabs.PlayerTab:AddInput("BeliVisual", {
        Title = "Beli",
        Default = game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Text,
        Placeholder = "Placeholder",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Text = "$" .. BeliVisual
        end
    })

    BeliVisual:OnChanged(function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Text = "$" .. BeliVisual.Value
    end)
    FragmentVisual = Tabs.PlayerTab:AddInput("FragmentVisual", {
        Title = "Fragment",
        Default = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments.Text,
        Placeholder = "Placeholder",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments.Text = "ƒ" .. FragmentVisual.Value
        end
    })

    FragmentVisual:OnChanged(function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments.Text = "ƒ" .. FragmentVisual.Value
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
        Description = "",
        Values = {"dad location", "mom location", "gay"},
        Multi = true,
        Default = {"dad location"},
    })

    SelectUiToHide:OnChanged(function(Value)
        local Values = {}
        for Value, State in next, Value do
            table.insert(Values, Value)
        end
        print("Mutlidropdown changed:", table.concat(Values, ", "))
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
    if Old_World then
        WhereToTp = Tabs.TpTab:AddDropdown("WhereToTp", {
            Title = "Select Location",
            Values = {"Pirate Starter", "Marine Starter", "Middle Town", "Jungle", "Pirate Village", "Dessert", "Frozen Village", "Marine Fortress", "Skyland 1st", "Skyland 2nd", "Skyland 3rd", "Skyland 4th", "Skyland 5th", "Colosseum", "Prison", "Underwater", "Magma Village", "Fountain City"},
            Multi = false,
            Default = 1,
        })

        WhereToTp:OnChanged(function(Value)
            SelectTpSpot = Value
        end)
    elseif New_World then
        WhereToTp = Tabs.TpTab:AddDropdown("WhereToTp", {
            Title = "Select Location",
            Values = {"Kingdom Of Rose", "Colosseum", "Secret Room (Race v3)", "Cafe", "Front Factory", "Factory", "Swan Room", "Green Zone", "Graveyard Island", "Cursed Ship", "Hot Island", "Cold Island", "Raid", "Law Raid", "Snow Mountain", "Dark Arena", "Ice Castle", "Forgotten Island", "Usoup's Island", "What is this Island"},
            Multi = false,
            Default = 1,
        })

        WhereToTp:OnChanged(function(Value)
            SelectTpSpot = Value
        end)
    elseif Third_World then
        WhereToTp = Tabs.TpTab:AddDropdown("WhereToTp", {
            Title = "Select Location",
            Values = {"Mansion", "Port Town", "Great Tree", "Castle On The Sea", "MiniSky", "Hydra Island", "Floating Turtle", "Haunted Castle", "Ice Cream Island", "Peanut Island", "Cake Island"},
            Multi = false,
            Default = 1,
        })

        WhereToTp:OnChanged(function(Value)
            SelectTpSpot = Value
        end)
    end
    Tabs.TpTab:AddButton({
        Title = "Teleport",
        Description = "",
        Callback = function()
            TpOfTpTab()
            task.wait(0.175)
            if InstanceTp then
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 100 then
                    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrameTargetTp)
                    wait()
                    game.Players.LocalPlayer.Character.Humanoid.Health = 0
                    repeat task.wait() until game.Players.LocalPlayer.Character.Humanoid
                    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrameTargetTp)
                    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrameTargetTp)
                    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrameTargetTp)
                end
            else
                if (CFrameTargetTp.Position - player.Character.HumanoidRootPart.Position).Magnitude > 100 then
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
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
        end
    })
    Tabs.TpTab:AddButton({
        Title = "Sea 2",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
        end
    })
    Tabs.TpTab:AddButton({
        Title = "Sea 3",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
        end
    })

    Tabs.TpTab:AddSection("Other")
    Tabs.TpTab:AddButton({
        Title = "The Mimic Lobby",
        Description = "",
        Callback = function()
            
        end
    })
    Tabs.TpTab:AddButton({
        Title = "Donate Place",
        Description = "",
        Callback = function()
            
        end
    })
    

    Tabs.ShopTab:AddSection("Main")
    Tabs.ShopTab:AddButton({
        Title = "Color",
        Description = "",
        Callback = function()
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Colors.Visible = true
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Fruit Shop",
        Description = "",
        Callback = function()
            game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Title",
        Description = "",
        Callback = function()
            game:GetService("Players").LocalPlayer.PlayerGui.Main.Titles.Visible = true
        end
    })
    Tabs.ShopTab:AddSection("Abilities")
    Tabs.ShopTab:AddButton({
        Title = "Buy Geppo",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Buso Haki",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Soru",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Observation(Ken) Haki",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
        end
    })
    Tabs.ShopTab:AddSection("Fighting Style")
    Tabs.ShopTab:AddButton({
        Title = "Buy Black Leg",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Electro",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Fishman Karate",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Dragon Claw",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Superhuman",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Death Step",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Sharkman Karate",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Electric Claw",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Buy Dragon Talon",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
        end
    })
    Tabs.ShopTab:AddSection("Accessory")
    Tabs.ShopTab:AddButton({
        Title = "Tomoe Ring",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Black Cape",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Swordsman Hat",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Ghoul Mask",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("Ectoplasm", "BuyCheck", 2)
            task.wait()
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("Ectoplasm", "Buy", 2)
        end
    })
    Tabs.ShopTab:AddSection("Sword")
    Tabs.ShopTab:AddButton({
        Title = "Cutlass",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Katana",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Iron Mace",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Duel Katana",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")        
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Triple Katana",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Pipe",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")        
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Dual Headed Blade",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Bisento",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Soul Cane",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Midnight Blade",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("Ectoplasm", "BuyCheck", 3)
            task.wait()
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("Ectoplasm", "Buy", 3)
        end
    })
    Tabs.ShopTab:AddSection("Gun")
    Tabs.ShopTab:AddButton({
        Title = "Slingshot",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Musket",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Flintlock",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Refined Flintlock",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Cannon",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Kabucha",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
        end
    })
    Tabs.ShopTab:AddButton({
        Title = "Bizarre Rifle",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("Ectoplasm", "BuyCheck", 1)
            task.wait()
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("Ectoplasm", "Buy", 1)
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
            Setting.AutoFarmAuraDistance = tonumber(Value)
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
            Setting.AutoFarmPosX = tonumber(Value)
        end
    })

    AutoFarmLevelPosXX:OnChanged(function(Value)
        Setting.AutoFarmPosX = tonumber(Value)
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
            Setting.AutoFarmPosY = tonumber(Value)
        end
    })

    AutoFarmLevelPosYY:OnChanged(function(Value)
        Setting.AutoFarmPosY = tonumber(Value)
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
            Setting.AutoFarmPosZ = tonumber(Value)
        end
    })

    AutoFarmLevelPosZZ:OnChanged(function(Value)
        Setting.AutoFarmPosZ = tonumber(Value)
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
            Setting.TeleportSpeedAutoFarm = tonumber(Value)
        end
    })

    TeleportSpeedAutoFarm:OnChanged(function(Value)
        Setting.TeleportSpeedAutoFarm = tonumber(Value)
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
            Setting.BringMobDistance = tonumber(Value)
        end
    })

    BringMobDistanceSetting:OnChanged(function(Value)
        Setting.BringMobDistance = tonumber(Value)
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
            Setting.AutoRaidPosX = tonumber(Value)
        end
    })
    AutoRaidPosX:OnChanged(function(Value)
        Setting.AutoRaidPosX = tonumber(Value)
    end)
    AutoRaidPosY = Tabs.Settings:AddSlider("AutoRaidPosY", {
        Title = "Stand Position Y",
        Description = "Set the position where to stand in next island | Default is 0",
        Default = 0,
        Min = 0,
        Max = 50,
        Rounding = 1,
        Callback = function(Value)
            Setting.AutoRaidPosY = tonumber(Value)
        end
    })
    AutoRaidPosY:OnChanged(function(Value)
        Setting.AutoRaidPosY = tonumber(Value)
    end)
    AutoRaidPosZ = Tabs.Settings:AddSlider("AutoRaidPosZ", {
        Title = "Stand Position Z",
        Description = "Set the position where to stand in next island | Default is 0",
        Default = 0,
        Min = 0,
        Max = 50,
        Rounding = 1,
        Callback = function(Value)
            Setting.AutoRaidPosZ = tonumber(Value)
        end
    })
    AutoRaidPosZ:OnChanged(function(Value)
        Setting.AutoRaidPosZ = tonumber(Value)
    end)
    TeleportToNEXTIslandSpeed = Tabs.Settings:AddSlider("TeleportToNEXTIslandSpeed", {
        Title = "Teleport To Next Island Speed",
        Description = "Set both manual and auto raid | Default is 7",
        Default = 7,
        Min = 0,
        Max = 7,
        Rounding = 1,
        Callback = function(Value)
            Setting.TeleportToNEXTIslandSpeed = tonumber(Value)
        end
    })
    TeleportToNEXTIslandSpeed:OnChanged(function(Value)
        Setting.TeleportToNEXTIslandSpeed = tonumber(Value)
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
        Default = tonumber(Setting.MaxErrorAndTrial),
        Placeholder = "Placeholder",
        Numeric = true,
        Finished = false, 
        Callback = function(Value)
            Setting.MaxErrorAndTrial = tonumber(Value)
        end
    })

    MaxErrorTrial:OnChanged(function()
        Setting.MaxErrorAndTrial = tonumber(MaxErrorTrial.Value)
    end)
    KeepSafeHealth = Tabs.Settings:AddInput("KeepSafeHealth", {
        Title = "Run When HP =",
        Default = tonumber(Setting.KeepSafeHealth),
        Placeholder = "Placeholder",
        Numeric = true,
        Finished = false, 
        Callback = function(Value)
            Setting.KeepSafeHealth = tonumber(Value)
        end
    })

    KeepSafeHealth:OnChanged(function()
        Setting.KeepSafeHealth = tonumber(KeepSafeHealth.Value)
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
        Default = tonumber(Setting.AutoBountyTeleportSpeed),
        Min = 0,
        Max = 50,
        Rounding = 1,
        Callback = function(Value)
            Setting.AutoBountyTeleportSpeed = tonumber(Value)
        end
    })
    AutoBountyTeleportSpeed:OnChanged(function(Value)
        Setting.AutoBountyTeleportSpeed = tonumber(Value)
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
            game.CoreGui["InputPcToMobile"].W.Size = UDim2.new(0.1, 0, 0.1, 0)
            game.CoreGui["InputPcToMobile"].A.Size = UDim2.new(0.1, 0, 0.1, 0)
            game.CoreGui["InputPcToMobile"].S.Size = UDim2.new(0.1, 0, 0.1, 0)
            game.CoreGui["InputPcToMobile"].D.Size = UDim2.new(0.1, 0, 0.1, 0)
        else
            game.CoreGui["InputPcToMobile"].W.Size = UDim2.new(0.05, 0, 0.05, 0)
            game.CoreGui["InputPcToMobile"].A.Size = UDim2.new(0.05, 0, 0.05, 0)
            game.CoreGui["InputPcToMobile"].S.Size = UDim2.new(0.05, 0, 0.05, 0)
            game.CoreGui["InputPcToMobile"].D.Size = UDim2.new(0.05, 0, 0.05, 0)
        end
    end)
    HideShowWASD = Tabs.Settings:AddToggle("HideShowWASD", {Title = "Hide/Show", Default = true })

    HideShowWASD:OnChanged(function()
        if Options.HideShowWASD.Value then
            game.CoreGui["InputPcToMobile"].W.Visible = true
            game.CoreGui["InputPcToMobile"].A.Visible = true
            game.CoreGui["InputPcToMobile"].S.Visible = true
            game.CoreGui["InputPcToMobile"].D.Visible = true
        else
            game.CoreGui["InputPcToMobile"].W.Visible = false
            game.CoreGui["InputPcToMobile"].A.Visible = false
            game.CoreGui["InputPcToMobile"].S.Visible = false
            game.CoreGui["InputPcToMobile"].D.Visible = false
        end
    end)
    UpDownWASD = Tabs.Settings:AddToggle("UpDownWASD", {Title = "Up/Down", Default = false })

    UpDownWASD:OnChanged(function()
        if Options.UpDownWASD.Value then
            game.CoreGui["InputPcToMobile"].W.Position = UDim2.new(0.05, 0, 0.7, 0)
            game.CoreGui["InputPcToMobile"].A.Position = UDim2.new(0, 0, 0.8, 0)
            game.CoreGui["InputPcToMobile"].S.Position = UDim2.new(0.05, 0, 0.9, 0)
            game.CoreGui["InputPcToMobile"].D.Position = UDim2.new(0.1, 0, 0.8, 0)
        else
            game.CoreGui["InputPcToMobile"].W.Position = UDim2.new(0.05, 0, 0.1, 0)
            game.CoreGui["InputPcToMobile"].A.Position = UDim2.new(0, 0, 0.2, 0)
            game.CoreGui["InputPcToMobile"].S.Position = UDim2.new(0.05, 0, 0.3, 0)
            game.CoreGui["InputPcToMobile"].D.Position = UDim2.new(0.1, 0, 0.2, 0)
        end
    end)
end



--[[
                              $$\           $$\ $$\                           $$\ 
                              \__|          $$ |\__|                          $$ |
 $$$$$$$\  $$$$$$\   $$$$$$\  $$\  $$$$$$\  $$ |$$\ $$$$$$$$\  $$$$$$\   $$$$$$$ |
$$  _____|$$  __$$\ $$  __$$\ $$ | \____$$\ $$ |$$ |\____$$  |$$  __$$\ $$  __$$ |
\$$$$$$\  $$$$$$$$ |$$ |  \__|$$ | $$$$$$$ |$$ |$$ |  $$$$ _/ $$$$$$$$ |$$ /  $$ |
 \____$$\ $$   ____|$$ |      $$ |$$  __$$ |$$ |$$ | $$  _/   $$   ____|$$ |  $$ |
$$$$$$$  |\$$$$$$$\ $$ |      $$ |\$$$$$$$ |$$ |$$ |$$$$$$$$\ \$$$$$$$\ \$$$$$$$ |
\_______/  \_______|\__|      \__| \_______|\__|\__|\________| \_______| \_______|
]]


task.wait(0.05)
if allowtoserialized then
    serializedSetting = game.HttpService:JSONEncode(Setting)
    writefile("Setting/setting.json", serializedSetting)
end
task.wait(5)
finishload = true
 






--[[
$$$$$$$$\ $$$$$$\ $$\   $$\ $$$$$$\  $$$$$$\  $$\   $$\ 
$$  _____|\_$$  _|$$$\  $$ |\_$$  _|$$  __$$\ $$ |  $$ |
$$ |        $$ |  $$$$\ $$ |  $$ |  $$ /  \__|$$ |  $$ |
$$$$$\      $$ |  $$ $$\$$ |  $$ |  \$$$$$$\  $$$$$$$$ |
$$  __|     $$ |  $$ \$$$$ |  $$ |   \____$$\ $$  __$$ |
$$ |        $$ |  $$ |\$$$ |  $$ |  $$\   $$ |$$ |  $$ |
$$ |      $$$$$$\ $$ | \$$ |$$$$$$\ \$$$$$$  |$$ |  $$ |
\__|      \______|\__|  \__|\______| \______/ \__|  \__|
]]

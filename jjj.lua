if not getgenv().AllowToLoad then
    game.Players.LocalPlayer:Kick("Instance Blacklisted")
end
coroutine.wrap(function()
    while task.wait(0.1) do
        for _,v in pairs(game.CoreGui:GetChildren()) do
            if v.Name == "ScreenGui" and v:FindFirstChild("ImageLabel") and (v.ImageLabel.Image == "rbxassetid://6065775281" or v.ImageLabel.Visible or not v.ImageLabel.Visible) then
                game.Players.LocalPlayer:Kick("Magic in the air")
            end
        end
    end
end)()
repeat task.wait() until game:IsLoaded()
__LUABLE = {
    ["Functions"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Asset/main/api.lua"))()
}
__U = {}
for i=1,#__LUABLE["Functions"] do
    pcall(function()
        __U[i] = clonefunction(__LUABLE["Functions"][i])
    end)
end
__VE = {
    ["Ps"] = game:GetService("Players"),
    ["LPs"] = game:GetService("Players").LocalPlayer,
    ["PsG"] = game:GetService("Players").LocalPlayer.PlayerGui
    
}
local Converted = {
	["_TTJY ASSET"] = Instance.new("ScreenGui");
	["_TTJY HUB"] = Instance.new("Frame");
	["_UIStroke"] = Instance.new("UIStroke");
	["_UICorner"] = Instance.new("UICorner");
	["_TextButton"] = Instance.new("TextButton");
	["_UIStroke1"] = Instance.new("UIStroke");
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

TTJYHUB = Converted["_TextButton"]
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
__X = {true,false,nil,0,1} ;  __Y ={} ; for i=1,#__X do __U[6](function() __Y[i] = __X[i] end) end
__M = {2,3,5,7,11,13,17,10} ;  __N ={} ; for i=1,#__M do __U[6](function() __N[i] = __M[i] end) end
__VE["WS"] , __VE["RuS"] , __VE["RlS"] = game:GetService("Workspace"), game:GetService("RunService") , game:GetService("ReplicatedStorage")
__VE["VIM"] , __VE["UIS"] = game:GetService("VirtualInputManager"), game:GetService("UserInputService")
__VE["Lg"] , __VE["TS"], __VE["GMos"] = game:GetService("Lighting") ,game:GetService("TweenService") ,  game:GetService("Players").LocalPlayer:GetMouse()
__VE["VU"],__VE["CG"] = game:GetService("VirtualUser") ,game:GetService("CoreGui")
__VE["HS"] = game:GetService("HttpService")
__VE["RRC"] = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.RemoteFunction.RollRemoteClient
__VE["RE"] = game:GetService("ReplicatedStorage").Remotes.RollEvent
__VE["SRC"] = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.RemoteFunction.StatusRemoteClient
local Last_Position
GetBlessing = false
Setting = nil
serializedSetting = nil
if getgenv().Addons then
    if not isfolder("Setting") then
        makefolder("Setting")
    end
    if isfolder("Setting") and not isfile("Setting/settingSOLRNG.json") then
        print("no file")
        Setting = {
            AutoAura = false,
            AutoAchivement = false,
            AutoUpStorage = false,
            AutoCollectItems = false,
            AutoBlessing = false,
            SelectGlove = nil,
            AutoCraftGlove = false,
            AutoUseLuckyPotion = false,
            AutoUseSpeedPotion = false,
            AutoUseCoin = false,
            AutoUseGildedCoin = false,
            IncreaseWalkSpeed = false,
            RemoveFog = false,
            SetDay = false,
            SetNight = false,
            ESPItems = false,
        }
        allowtoserialized = __Y[1]
    elseif __U[49]("Setting") and __U[50]("Setting/settingSOLRNG.json") then
        __U[1]("file")
        __U[23]()
        Setting = game.HttpService:JSONDecode(__U[51]("Setting/settingSOLRNG.json"))
    end
else
    Setting = {
        AutoAura = false,
        AutoAchivement = false,
        AutoUpStorage = false,
        AutoCollectItems = false,
        AutoBlessing = false,
        SelectGlove = nil,
        AutoCraftGlove = false,
        AutoUseLuckyPotion = false,
        AutoUseSpeedPotion = false,
        AutoUseCoin = false,
        AutoUseGildedCoin = false,
        IncreaseWalkSpeed = false,
        RemoveFog = false,
        SetDay = false,
        SetNight = false,
        ESPItems = false,
    }
end
--Update Data Start
if rawget(Setting, "AutoBlessing") == nil then
    Setting = {
        AutoAura = false,
        AutoAchivement = false,
        AutoUpStorage = false,
        AutoCollectItems = false,
        AutoBlessing = false,
        SelectGlove = nil,
        AutoCraftGlove = false,
        AutoUseLuckyPotion = false,
        AutoUseSpeedPotion = false,
        AutoUseCoin = false,
        AutoUseGildedCoin = false,
        IncreaseWalkSpeed = false,
        RemoveFog = false,
        SetDay = false,
        SetNight = false,
        ESPItems = false,
    }
    if getgenv().Addons then
        allowtoserialized = __Y[1]
    end
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Script Data",
        Text = "Error at finding AutoBlessing.Value",
        Duration = 5
    })
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Script Data",
        Text = "Reseting...",
        Duration = 5
    })
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Script Data",
        Text = "Finish",
        Duration = 5
    })
end
--Update Data End
local credits = {
    {Title = "Owner", Content = "ttjy."},
    {Title = "VIP", Content = "x2neptune - Alchemy Hub"},
    {Title = "Co Owner", Content = "ttjy_"},
    {Title = "Scripter", Content = "ttjy."},
    {Title = "Scripter", Content = "ttjy_"},
    {Title = "Scripter", Content = "x2neptune - Alchemy Hub"},
    {Title = "Bypasser", Content = "???"},
    {Title = "Bypasser", Content = "ttjy."},
    {Title = "Bypasser", Content = "x2neptune - Alchemy Hub"},
    {Title = "Key System", Content = "sa.l"},
    {Title = "UI", Content = "dawid"},
}

function OnFluentChange()
    if Window.Root.Visible then
        TTJYHUB.TextColor3  = __U[36](0, 255, 0)
    else
        TTJYHUB.TextColor3  = __U[36](255, 0, 0)
    end
end
local function ESPSomething(obj, text)
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "TextLabelBillboard"
    billboard.Adornee = obj
    billboard.Size = UDim2.new(0, 100, 0, 50)
    billboard.StudsOffset = Vector3.new(0, 2, 0)
    billboard.AlwaysOnTop = true

    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "Text"
    textLabel.Parent = billboard
    textLabel.Text = tostring(text)
    textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    textLabel.TextStrokeTransparency = 0.082
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.new(1, 0, 1, 0)

    billboard.Parent = obj
end
PathfindingService = game:GetService("PathfindingService")
targetPosition = Vector3.new(160.73858642578125, 118.98391723632812, 335.9346008300781)
pathAgentParameters = {
    AgentRadius = 2,
    AgentHeight = 5,
    AgentCanJump = true,
    AgentJumpHeight = 5,
    AgentMaxSlope = 45,
}
function moveToTarget(targetPosition)
    path = PathfindingService:CreatePath({
        AgentRadius = pathAgentParameters.AgentRadius,
        AgentHeight = pathAgentParameters.AgentHeight,
        AgentCanJump = pathAgentParameters.AgentCanJump,
        AgentJumpHeight = pathAgentParameters.AgentJumpHeight,
        AgentMaxSlope = pathAgentParameters.AgentMaxSlope,
        WaypointSpacing = 2,
        Costs = {},
    })
    path:ComputeAsync(game.Players.LocalPlayer.Character.PrimaryPart.Position, targetPosition)
    if path.Status == Enum.PathStatus.Success then
        waypoints = path:GetWaypoints()
        for _, waypoint in ipairs(waypoints) do
            if waypoint.Action == Enum.PathWaypointAction.Jump then
                __VE["LPs"].Character.Humanoid:MoveTo(waypoint.Position)
            else
                __VE["LPs"].Character.Humanoid:MoveTo(waypoint.Position)
            end
            __VE["LPs"].Character.Humanoid.MoveToFinished:Wait()
        end
    else
        warn("Pathfinding failed to compute a path to the target position.")
    end
end
-- moveToTarget(Vector3.new())
function getblessing()
    if GetBlessing == false then
        if Setting.AutoBlessing then
            if workspace.Map.BuffGivers["Basic Blessing"].Attachment.Attachment.Aura1.Enabled == false and Setting.AutoBlessing then
                pcall(function()
                    GetBlessing = true
                    repeat
                        if Last_Position and (Last_Position - __VE["LPs"].Character.HumanoidRootPart.Position) <= 3 then
                            pcall(function()
                                __VE["LPs"].Character.Humanoid:ChangeState(3)
                                moveToTarget(Vector3.new(160.73858642578125, 118.98391723632812, 335.9346008300781))
                            end)
                            task.wait()
                            Last_Position = __VE["LPs"].Character.HumanoidRootPart.Position
                        elseif Last_Position and (Last_Position - __VE["LPs"].Character.HumanoidRootPart.Position) > 3 then
                            pcall(function()
                                moveToTarget(Vector3.new(160.73858642578125, 118.98391723632812, 335.9346008300781))
                            end)
                            task.wait()
                            Last_Position = __VE["LPs"].Character.HumanoidRootPart.Position
                        end
                        task.wait()
                        Last_Position = __VE["LPs"].Character.HumanoidRootPart.Position
                    until workspace.Map.BuffGivers["Basic Blessing"].Attachment.Attachment.Aura1.Enabled == false or not Setting.AutoBlessing
                end)
            end
            GetBlessing = false
        end
    end
end


Window = nil
repeat
    __U[6](function()
        Window = Fluent:CreateWindow({
            Title = "Sol's RNG Script v.UP1FV",
            SubTitle = "by TTJY & ",
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
    GloveAPotion = Window:AddTab({ Title = "Gloves & Potion", Icon = "gauge" }),
    Items = Window:AddTab({ Title = "Items", Icon = "" }),
    Player = Window:AddTab({ Title = "Player", Icon = "" }),
    ESP = Window:AddTab({ Title = "ESP", Icon = "briefcase" }),
    ChangeLog = Window:AddTab({ Title = "ChangeLog", Icon = "" }),
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
    TTJYHUB.MouseButton1Click:Connect(onButtonClick)
end)
local var = nil
for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.RemoteFunction:GetChildren()) do
    if string.match(v.Name, "Craft\n%d+Client") then
        var = tostring(v.Name)
        print("Found RemoteFunction:", v.Name)
    end
end
task.wait()
local Arg = {
    ["Action"] = "Equip",
    ["IsAutoAction"] = true
}
do
    Tabs.Main:AddSection("Aura")
    AutoAura = Tabs.Main:AddToggle("AutoAura", {Title = "Auto Roll Aura | Faster than normal", Default = Setting.AutoAura })
    coroutine.wrap(function()
        AutoAura:OnChanged(function()
            pcall(function()
                Setting.AutoAura = Options.AutoAura.Value
                while Options.AutoAura.Value do
                    __VE["RRC"]:FireServer("Roll")
                    __VE["RE"]:FireServer("Choice", Arg)
                    __VE["SRC"]:FireServer("GetCooltime")
                    task.wait(0.5)
                end
            end)
        end)
    end)()
    Tabs.Main:AddSection("Achivement")
    AutoAchivement = Tabs.Main:AddToggle("AutoAchivement", {Title = "Auto Achivement", Default = Setting.AutoAchivement })
    coroutine.wrap(function()
        AutoAchivement:OnChanged(function()
            pcall(function()
                Setting.AutoAchivement = Options.AutoAchivement.Value
                while Options.AutoAchivement.Value do
                    for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.AchievementFrame.Achievements.AchievementGrid.ScrollingFrame:GetChildren()) do
                        if v and v:IsA("Frame") and v:FindFirstChild("Holder") and v.Holder:FindFirstChild("Title") and v.Holder.Title:FindFirstChild("Completed") then
                            local matchingOrigin = v.Holder.Progress.ProgressText
                            local firstNumber, secondNumber = matchingOrigin.Text:match("(%d+) / (%d+)")
                            if v and firstNumber and secondNumber and tonumber(firstNumber) >= tonumber(secondNumber) then
                                game.ReplicatedStorage.Remotes.Achievement:FireServer("Claim", tostring(v.Holder.Title.Text))
                            end
                        end
                    end
                    task.wait(0.5)
                end
            end)
        end)
    end)()
    Tabs.Main:AddSection("Storage")
    AutoUpStorage = Tabs.Main:AddToggle("AutoUpStorage", {Title = "Auto Upgrade Storage", Default = Setting.AutoUpStorage })
    coroutine.wrap(function()
        AutoUpStorage:OnChanged(function()
            pcall(function()
                Setting.AutoUpStorage = Options.AutoUpStorage.Value
                while Options.AutoUpStorage.Value do
                    textAUS1 = __VE["PsG"].MainInterface.AuraInventory.Index.SelectionCorners.StorageUpgrade.Text
                    patternAUS1 = "%d+"
                    numberAUS1 = tonumber(string.match(textAUS1, patternAUS1))

                    textAUS2 = __VE["PsG"].MainInterface.Coin.Text
                    cleanedTextAUS2 = textAUS2:gsub("[^%d]", "")
                    numberAUS2 = tonumber(cleanedText)
                    if numberAUS1 == numberAUS1 then
                        game:GetService("ReplicatedStorage").Remotes.AuraStorage:FireServer("UpgradeStorage")
                    end
                    task.wait(0.5)
                end
            end)
        end)
    end)()
    Tabs.Main:AddSection("Auto")
    AutoCollectItems = Tabs.Main:AddToggle("AutoCollectItems", {Title = "Auto Collect Items", Default = Setting.AutoCollectItems })
    coroutine.wrap(function()
        AutoCollectItems:OnChanged(function()
            pcall(function()
                Setting.AutoCollectItems = Options.AutoCollectItems.Value
                while Options.AutoCollectItems.Value do task.wait(0.5)
                    if GetBlessing == false then
                        if Setting.AutoBlessing and Setting.AutoCollectItems then
                            getblessing()
                        end
                        task.wait()
                        print("1")
                        for _, v in pairs(workspace.DroppedItems:GetChildren()) do
                            if v and Setting.AutoCollectItems then
                                if v:IsA("Model") then
                                    print("2")
                                    if v and v:FindFirstChild("Casing") and Setting.AutoCollectItems then
                                        pcall(function()
                                            repeat
                                                if Last_Position and (Last_Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                                    pcall(function()
                                                        __VE["LPs"].Character.Humanoid:ChangeState(3)
                                                        moveToTarget(v.Casing.Position)
                                                    end)
                                                    task.wait()
                                                    Last_Position = __VE["LPs"].Character.HumanoidRootPart.Position
                                                elseif Last_Position and (Last_Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3 then
                                                    pcall(function()
                                                        moveToTarget(v.Casing.Position)
                                                    end)
                                                    task.wait()
                                                    Last_Position = __VE["LPs"].Character.HumanoidRootPart.Position
                                                end
                                                task.wait()
                                                Last_Position = __VE["LPs"].Character.HumanoidRootPart.Position
                                            until not v or (v and not v:FindFirstChild("Casing")) or (__VE["LPs"].Character.HumanoidRootPart.Position - v.Casing.Position).Magnitude <= 7 or not Setting.AutoCollectItems
                                            if v and v:FindFirstChild("Casing") and v.Casing:FindFirstChild("ProximityPrompt") and (__VE["LPs"].Character.HumanoidRootPart.Position - v.Casing.Position).Magnitude <= 7 then
                                                if v.Casing:FindFirstChild("ProximityPrompt") then
                                                    fireproximityprompt(v.Casing.ProximityPrompt)
                                                    task.wait(0.3)
                                                end
                                            end
                                        end)
                                    end
                                elseif v:IsA("BasePart") and Setting.AutoCollectItems then
                                    pcall(function()
                                        repeat
                                            if Last_Position and (Last_Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                                pcall(function()
                                                    __VE["LPs"].Character.Humanoid:ChangeState(3)
                                                    moveToTarget(v.Position)
                                                end)
                                                task.wait()
                                                Last_Position = __VE["LPs"].Character.HumanoidRootPart.Position
                                            elseif Last_Position and (Last_Position - __VE["LPs"].Character.HumanoidRootPart.Position).Magnitude > 3 then
                                                pcall(function()
                                                    moveToTarget(v.Position)
                                                end)
                                                task.wait()
                                                Last_Position = __VE["LPs"].Character.HumanoidRootPart.Position
                                            end
                                            task.wait()
                                            Last_Position = __VE["LPs"].Character.HumanoidRootPart.Position
                                        until not v or (__VE["LPs"].Character.HumanoidRootPart.Position - v.Position).Magnitude <= 7 or not Setting.AutoCollectItems
                                        if v and (__VE["LPs"].Character.HumanoidRootPart.Position - v.Position).Magnitude <= 7 then
                                            if v:FindFirstChild("ProximityPrompt") then
                                                fireproximityprompt(v.ProximityPrompt)
                                                task.wait(0.3)
                                            end
                                        end
                                    end)
                                end
                            end
                        end
                    end
                end
            end)
        end)
    end)()
    
    AutoBlessing = Tabs.Main:AddToggle("AutoBlessing", {Title = "Auto Blessing", Default = Setting.AutoBlessing })
    coroutine.wrap(function()
        AutoBlessing:OnChanged(function()
            pcall(function()
                Setting.AutoBlessing = Options.AutoBlessing.Value
                while Options.AutoBlessing.Value do task.wait(1)
                    if Setting.AutoBlessing and not Setting.AutoCollectItems then
                        getblessing()
                        warn("gay")
                    end
                end
            end)
        end)
    end)()
    
    Tabs.GloveAPotion:AddSection("Gloves")
    __SEVOLGFOELBAT = {"Gear Basing", "Luck Glove", "Lunar Device", "Solar Device", "Eclipse", "Eclipse Device", "Jackpot Gauntlet", "Exo Gauntlet"}
    SelectGlove = Tabs.GloveAPotion:AddDropdown("SelectGlove", {
        Title = "Select Glove",
        Values = __SEVOLGFOELBAT,
        Multi = false,
        Default = Setting.SelectGlove,
    })
    SelectGlove:OnChanged(function(Value)
        pcall(function()
            Setting.SelectGlove = tostring(Value)
        end)
    end)
    AutoCraftGlove = Tabs.GloveAPotion:AddToggle("AutoCraftGlove", {Title = "Auto Craft Glove [Pactehd]", Default = Setting.AutoCraftGlove })
    coroutine.wrap(function()
        AutoCraftGlove:OnChanged(function()
            pcall(function()
                Setting.AutoCraftGlove = Options.AutoCraftGlove.Value
                while Options.AutoCraftGlove.Value do
                    IIS = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.Inventory.Items.ItemGrid.ScrollingFrame
                    MRF = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.RemoteFunction
                    if Setting.SelectGlove == "Gear Basing" then
                        if not IIS:FindFirstChild("Gear Basing") then
                            MRF[var]:FireServer("Insert", "Gear Basing", "Common")
                            MRF[var]:FireServer("Insert", "Gear Basing", "Uncommon")
                            MRF[var]:FireServer("Insert", "Gear Basing", "Rare")
                            MRF[var]:FireServer("Insert", "Gear Basing", "Good")
                            task.wait()
                            MRF[var]:FireServer("Craft", "Gear Basing")
                        end
                    elseif Setting.SelectGlove == "Luck Glove" then
                        if not IIS:FindFirstChild("Luck Glove") then
                            if not IIS:FindFirstChild("Gear Basing") then
                                MRF[var]:FireServer("Insert", "Gear Basing", "Common")
                                MRF[var]:FireServer("Insert", "Gear Basing", "Uncommon")
                                MRF[var]:FireServer("Insert", "Gear Basing", "Rare")
                                MRF[var]:FireServer("Insert", "Gear Basing", "Good")
                                task.wait()
                                MRF[var]:FireServer("Craft", "Gear Basing")
                            else
                                MRF[var]:FireServer("Insert", "Luck Glove", "Gear Basing")
                                MRF[var]:FireServer("Insert", "Luck Glove", "Divinus")
                                MRF[var]:FireServer("Insert", "Luck Glove", "Crystallized")
                                MRF[var]:FireServer("Insert", "Luck Glove", "Rare")
                                task.wait()
                                MRF[var]:FireServer("Craft", "Luck Glove")
                            end
                        end
                    elseif Setting.SelectGlove == "Lunar Device" then
                        if not IIS:FindFirstChild("Lunar Device") then
                            if not IIS:FindFirstChild("Gear Basing") then
                                MRF[var]:FireServer("Insert", "Gear Basing", "Common")
                                MRF[var]:FireServer("Insert", "Gear Basing", "Uncommon")
                                MRF[var]:FireServer("Insert", "Gear Basing", "Rare")
                                MRF[var]:FireServer("Insert", "Gear Basing", "Good")
                                task.wait()
                                MRF[var]:FireServer("Craft", "Gear Basing")
                            else
                                MRF[var]:FireServer("Insert", "Lunar Device", "Gear Basing")
                                MRF[var]:FireServer("Insert", "Lunar Device", "Rare")
                                MRF[var]:FireServer("Insert", "Lunar Device", "Divinus")
                                MRF[var]:FireServer("Insert", "Lunar Device", "Lunar")
                                task.wait()
                                MRF[var]:FireServer("Craft", "Lunar Device")
                            end
                        end
                    elseif Setting.SelectGlove == "Solar Device" then
                        if not IIS:FindFirstChild("Solar Device") then
                            if not IIS:FindFirstChild("Gear Basing") then
                                MRF[var]:FireServer("Insert", "Gear Basing", "Common")
                                MRF[var]:FireServer("Insert", "Gear Basing", "Uncommon")
                                MRF[var]:FireServer("Insert", "Gear Basing", "Rare")
                                MRF[var]:FireServer("Insert", "Gear Basing", "Good")
                                task.wait()
                                MRF[var]:FireServer("Craft", "Gear Basing")
                            else
                                MRF[var]:FireServer("Insert", "Solar Device", "Gear Basing")
                                MRF[var]:FireServer("Insert", "Solar Device", "Solar")
                                MRF[var]:FireServer("Insert", "Solar Device", "Divinus")
                                MRF[var]:FireServer("Insert", "Solar Device", "Rare")
                                task.wait()
                                MRF[var]:FireServer("Craft", "Solar Device")
                            end
                        end
                    elseif Setting.SelectGlove == "Eclipse" then
                        if not IIS:FindFirstChild("Eclipse") then
                            MRF[var]:FireServer("Insert", "Eclipse", "Divinus")
                            MRF[var]:FireServer("Insert", "Eclipse", "Solar")
                            MRF[var]:FireServer("Insert", "Eclipse", "Lunar")
                            task.wait()
                            MRF[var]:FireServer("Craft", "Eclipse")
                        end
                    elseif Setting.SelectGlove == "Eclipse Device" then
                        if not IIS:FindFirstChild("Eclipse Device") then
                            if not IIS:FindFirstChild("Eclipse") then
                                MRF[var]:FireServer("Insert", "Eclipse", "Divinus")
                                MRF[var]:FireServer("Insert", "Eclipse", "Solar")
                                MRF[var]:FireServer("Insert", "Eclipse", "Lunar")
                                task.wait()
                                MRF[var]:FireServer("Craft", "Eclipse")
                            end
                            if not IIS:FindFirstChild("Lunar Device") then
                                if not IIS:FindFirstChild("Gear Basing") then
                                    MRF[var]:FireServer("Insert", "Gear Basing", "Common")
                                    MRF[var]:FireServer("Insert", "Gear Basing", "Uncommon")
                                    MRF[var]:FireServer("Insert", "Gear Basing", "Rare")
                                    MRF[var]:FireServer("Insert", "Gear Basing", "Good")
                                    task.wait()
                                    MRF[var]:FireServer("Craft", "Gear Basing")
                                else
                                    MRF[var]:FireServer("Insert", "Lunar Device", "Gear Basing")
                                    MRF[var]:FireServer("Insert", "Lunar Device", "Rare")
                                    MRF[var]:FireServer("Insert", "Lunar Device", "Divinus")
                                    MRF[var]:FireServer("Insert", "Lunar Device", "Lunar")
                                    task.wait()
                                    MRF[var]:FireServer("Craft", "Lunar Device")
                                end
                            end
                            if not IIS:FindFirstChild("Solar Device") then
                                if not IIS:FindFirstChild("Gear Basing") then
                                    MRF[var]:FireServer("Insert", "Gear Basing", "Common")
                                    MRF[var]:FireServer("Insert", "Gear Basing", "Uncommon")
                                    MRF[var]:FireServer("Insert", "Gear Basing", "Rare")
                                    MRF[var]:FireServer("Insert", "Gear Basing", "Good")
                                    task.wait()
                                    MRF[var]:FireServer("Craft", "Gear Basing")
                                else
                                    MRF[var]:FireServer("Insert", "Solar Device", "Gear Basing")
                                    MRF[var]:FireServer("Insert", "Solar Device", "Solar")
                                    MRF[var]:FireServer("Insert", "Solar Device", "Divinus")
                                    MRF[var]:FireServer("Insert", "Solar Device", "Rare")
                                    task.wait()
                                    MRF[var]:FireServer("Craft", "Solar Device")
                                end
                            end
                            if IIS:FindFirstChild("Solar Device") and IIS:FindFirstChild("Lunar Device") and IIS:FindFirstChild("Eclipse") then
                                MRF[var]:FireServer("Insert", "Eclipse Device", "Solar Device")
                                MRF[var]:FireServer("Insert", "Eclipse Device", "Lunar Device")
                                MRF[var]:FireServer("Insert", "Eclipse Device", "Eclipse")
                                task.wait()
                                MRF[var]:FireServer("Craft", "Eclipse Device")
                            end
                        end
                    elseif Setting.SelectGlove == "Jackpot Gauntlet" then
                        if not IIS:FindFirstChild("Jackpot Gauntlet") then
                            if not IIS:FindFirstChild("Gear Basing") then
                                MRF[var]:FireServer("Insert", "Gear Basing", "Common")
                                MRF[var]:FireServer("Insert", "Gear Basing", "Uncommon")
                                MRF[var]:FireServer("Insert", "Gear Basing", "Rare")
                                MRF[var]:FireServer("Insert", "Gear Basing", "Good")
                                task.wait()
                                MRF[var]:FireServer("Craft", "Gear Basing")
                            end
                            MRF[var]:FireServer("Insert", "Jackpot Gauntlet", "Jackpot")
                            MRF[var]:FireServer("Insert", "Jackpot Gauntlet", "Gilded")
                            MRF[var]:FireServer("Insert", "Jackpot Gauntlet", "Rare")
                            task.wait()
                            MRF[var]:FireServer("Craft", "Jackpot Gauntlet")
                        end
                    elseif Setting.SelectGlove == "Exo Gauntlet" then
                        if not IIS:FindFirstChild("Exo Gauntlet") then
                            if not IIS:FindFirstChild("Gear Basing") then
                                MRF[var]:FireServer("Insert", "Gear Basing", "Common")
                                MRF[var]:FireServer("Insert", "Gear Basing", "Uncommon")
                                MRF[var]:FireServer("Insert", "Gear Basing", "Rare")
                                MRF[var]:FireServer("Insert", "Gear Basing", "Good")
                                task.wait()
                                MRF[var]:FireServer("Craft", "Gear Basing")
                            end
                        end
                        MRF[var]:FireServer("Insert", "Exo Gauntlet", "Gilded")
                        MRF[var]:FireServer("Insert", "Exo Gauntlet", "Precious")
                        MRF[var]:FireServer("Insert", "Exo Gauntlet", "Undead")
                        MRF[var]:FireServer("Insert", "Exo Gauntlet", "Exotic")
                        task.wait()
                        MRF[var]:FireServer("Craft", "Exo Gauntlet")
                    end
                    task.wait()
                end
            end)
        end)
    end)()

    Tabs.GloveAPotion:AddButton({
        Title = "Get Luck Glove",
        Description = "",
        Callback = function()
            MRF = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.RemoteFunction
            MRF[var]:FireServer("Craft", "Luck Glove")
        end
    })
    Tabs.GloveAPotion:AddButton({
        Title = "Get Lunar Device",
        Description = "",
        Callback = function()
            MRF = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.RemoteFunction
            MRF[var]:FireServer("Craft", "Lunar Device")
        end
    })
    Tabs.GloveAPotion:AddButton({
        Title = "Get Solar Device",
        Description = "",
        Callback = function()
            MRF = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.RemoteFunction
            MRF[var]:FireServer("Craft", "Solar Device")
        end
    })
    Tabs.GloveAPotion:AddButton({
        Title = "Get Eclipse Device",
        Description = "",
        Callback = function()
            MRF = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.RemoteFunction
            MRF[var]:FireServer("Craft", "Eclipse Device")
        end
    })
    Tabs.GloveAPotion:AddButton({
        Title = "Get Exo Gauntlet",
        Description = "",
        Callback = function()
            MRF = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.RemoteFunction
            MRF[var]:FireServer("Craft", "Exo Gauntlet")
        end
    })
    Tabs.GloveAPotion:AddButton({
        Title = "Get Jackpot Gauntlet",
        Description = "",
        Callback = function()
            MRF = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.RemoteFunction
            MRF[var]:FireServer("Craft", "Jackpot Gauntlet")
        end
    })
    Tabs.GloveAPotion:AddButton({
        Title = "Get Subzero Device",
        Description = "",
        Callback = function()
            MRF = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.RemoteFunction
            MRF[var]:FireServer("Craft", "Subzero Device")
        end
    })
    Tabs.GloveAPotion:AddButton({
        Title = "Get Gravitational Device",
        Description = "",
        Callback = function()
            MRF = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.RemoteFunction
            MRF[var]:FireServer("Craft", "Gravitational Device")
        end
    })
    Tabs.GloveAPotion:AddButton({
        Title = "Get Windstorm Device",
        Description = "",
        Callback = function()
            MRF = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.RemoteFunction
            MRF[var]:FireServer("Craft", "Windstorm Device")
        end
    })
    Tabs.GloveAPotion:AddButton({
        Title = "Get Galactic Device",
        Description = "",
        Callback = function()
            MRF = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.RemoteFunction
            MRF[var]:FireServer("Craft", "Galactic Device")
        end
    })
    Tabs.GloveAPotion:AddSection("Potion")
    Tabs.Items:AddButton({
        Title = "Dupe Coin",
        Description = "will kick",
        Callback = function()
            MRF = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.RemoteFunction
            HBDupe = game:GetService("RunService").Heartbeat:Connect(function()
                MRF[var]:FireServer("Craft", "Gilded Coin")
            end)
        end
    })
    AutoUseLuckyPotion = Tabs.Items:AddToggle("AutoUseLuckyPotion", {Title = "Auto use Luck Potion", Default = Setting.AutoUseLuckyPotion })
    coroutine.wrap(function()
        AutoUseLuckyPotion:OnChanged(function()
            pcall(function()
                Setting.AutoUseLuckyPotion = Options.AutoUseLuckyPotion.Value
                while Options.AutoUseLuckyPotion.Value do
                    BL = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.BuffsHolder.Lucky
                    if not BL.Visible then
                        game.ReplicatedStorage.Modules.Inventory.UseItem:FireServer("Lucky Potion", 1)
                        task.wait(0.1)
                    end
                    task.wait(0.5)
                end
            end)
        end)
    end)()
    AutoUseSpeedPotion = Tabs.Items:AddToggle("AutoUseSpeedPotion", {Title = "Auto use Speed Potion", Default = Setting.AutoUseSpeedPotion })
    coroutine.wrap(function()
        AutoUseSpeedPotion:OnChanged(function()
            pcall(function()
                Setting.AutoUseSpeedPotion = Options.AutoUseSpeedPotion.Value
                while Options.AutoUseSpeedPotion.Value do
                    BQ = game:GetService("Players").LocalPlayer.PlayerGui.MainInterface.BuffsHolder.QuickRoll
                    if not BQ.Visible then
                        game.ReplicatedStorage.Modules.Inventory.UseItem:FireServer("Speed Potion", 1)
                        task.wait(0.1)
                    end
                    task.wait(0.5)
                end
            end)
        end)
    end)()
    Tabs.Items:AddSection("Use")
    AutoUseCoin = Tabs.Items:AddToggle("AutoUseCoin", {Title = "Auto Use Coin", Default = Setting.AutoUseCoin })
    coroutine.wrap(function()
        AutoUseCoin:OnChanged(function()
            pcall(function()
                Setting.AutoUseCoin = Options.AutoUseCoin.Value
                while Options.AutoUseCoin.Value do
                    game.ReplicatedStorage.Modules.Inventory.UseItem:FireServer("Coin", 1)
                    task.wait(0.1)
                end
                task.wait(0.5)
            end)
        end)
    end)()
    AutoUseGildedCoin = Tabs.Items:AddToggle("AutoUseGildedCoin", {Title = "Auto Use Gilded Coin", Default = Setting.AutoUseGildedCoin })
    coroutine.wrap(function()
        AutoUseGildedCoin:OnChanged(function()
            pcall(function()
                Setting.AutoUseGildedCoin = Options.AutoUseGildedCoin.Value
                while Options.AutoUseGildedCoin.Value do
                    game.ReplicatedStorage.Modules.Inventory.UseItem:FireServer("Gilded Coin", 1)
                    task.wait(0.1)
                end
                task.wait(0.5)
            end)
        end)
    end)()
    Tabs.Items:AddSection("Auto Collect")
    Tabs.Items:AddSection("AI Engine")
    Tabs.Items:AddSection("Work in progress")

    Tabs.Player:AddSection("Main")
    IncreaseWalkSpeed = Tabs.Player:AddToggle("IncreaseWalkSpeed", {Title = "Increase WalkSpeed", Default = Setting.IncreaseWalkSpeed })
    coroutine.wrap(function()
        IncreaseWalkSpeed:OnChanged(function()
            pcall(function()
                Setting.IncreaseWalkSpeed = Options.IncreaseWalkSpeed.Value
                if Options.IncreaseWalkSpeed.Value then
                    while Options.IncreaseWalkSpeed.Value do
                        if Options.IncreaseWalkSpeed.Value then
                            __VE["LPs"].Character.Humanoid.WalkSpeed = 18
                        else
                            __VE["LPs"].Character.Humanoid.WalkSpeed = 16
                        end
                        task.wait(0.5)
                    end
                else
                    __VE["LPs"].Character.Humanoid.WalkSpeed = 16
                end
            end)
        end)
    end)()
    RemoveFog = Tabs.Player:AddToggle("RemoveFog", {Title = "Remove Fog", Default = Setting.RemoveFog })
    coroutine.wrap(function()
        RemoveFog:OnChanged(function()
            pcall(function()
                Setting.RemoveFog = Options.RemoveFog.Value
                if Options.RemoveFog.Value then
                    for _, v in pairs(game:GetService("Lighting"):GetChildren()) do
                        if v and not v:IsA("Script") then
                            v.Parent = game:GetService("MaterialService")
                        end
                    end
                else
                    for _, v in pairs(game:GetService("MaterialService"):GetChildren()) do
                        if v then
                            v.Parent = game:GetService("Lighting")
                        end
                    end
                end
            end)
        end)
    end)()
    SetDay = Tabs.Player:AddToggle("SetDay", {Title = "Day Time", Default = Setting.SetDay })
    coroutine.wrap(function()
        SetDay:OnChanged(function()
            pcall(function()
                Setting.SetDay = Options.SetDay.Value
            end)
        end)
    end)()
    SetNight = Tabs.Player:AddToggle("SetNight", {Title = "Night Time", Default = Setting.SetNight })
    coroutine.wrap(function()
        SetNight:OnChanged(function()
            pcall(function()
                Setting.SetNight = Options.SetNight.Value
            end)
        end)
    end)()

    Tabs.ESP:AddSection("ESP")
    ESPItems = Tabs.ESP:AddToggle("ESPItems", {Title = "Items", Default = Setting.ESPItems })
    coroutine.wrap(function()
        ESPItems:OnChanged(function()
            pcall(function()
                Setting.ESPItems = Options.ESPItems.Value
                if Options.ESPItems.Value then
                    while Options.ESPItems.Value do
                        for _, v in pairs(__VE["WS"].DroppedItems:GetChildren()) do
                            if v and (v.Name == "Luck Potion" or v.Name == "Speed Potion" or v.Name == "Coin" or v.Name == "Gilded Coin") then
                                if not v:FindFirstChild("Highlight") then
                                    local Highlight = Instance.new("Highlight")
                                    Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                                    Highlight.FillColor = Color3.fromRGB(51, 255, 0)
                                    Highlight.FillTransparency = 0.3
                                    Highlight.Name = "Highlight"
                                    Highlight.OutlineColor = Color3.new(0,0,0)
                                    Highlight.OutlineTransparency = 0
                                    Highlight.Parent = v
                                    ESPSomething(v, tostring(v.Name))
                                end
                            end
                        end
                        task.wait(0.5)
                    end
                else
                    for _, v in pairs(__VE["WS"]:GetChildren()) do
                        if v and (v.Name == "Luck Potion" or v.Name == "Speed Potion" or v.Name == "Coin" or v.Name == "Gilded Coin") then
                            if v:FindFirstChild("Highlight") then
                                v.Highlight:Destroy()
                                if v:FindFirstChild("TextLabelBillboard") then
                                    v.TextLabelBillboard:Destroy()
                                end
                            end
                        end
                    end
                end
            end)
        end)
    end)()

    
    Tabs.ChangeLog:AddParagraph({
        Title = "Change Log",
        Content = "# Main\n- Added Auto Rolls\n- Added Auto Upgrade Storage\n- Added Auto Claim Achievement\n# Gloves & Potion\n- Added Auto Craft Gloves\n- Added Auto Use Potions\n# Items\n- Added Auto Use Coins\n- Added Auto Use Gilded Coins\n# Player\n- Added Full Bright\n- Added No Fog (Can be back if you want fog)\n- Added Player Speed\n- Added Anti  AFK\n# ESP\n- Added Items ESP\n# Credits\n- Added Credits\n# Setting\n- Added Save As Config\n\n-->SOON<--\n# Items\n- Add Auto Collect\n- Add Auto Blessing\n# Gloves & Potion\n- Add Open UI"
    })

    for i, v in ipairs(credits) do
        Tabs.Credits:AddButton({
            Title = v.Title,
            Description = v.Content,
            Callback = function()
                
            end
        })
    end
    Tabs.Settings:AddButton({
        Title = "Save as config",
        Description = "",
        Callback = function()
            serializedSetting = game.HttpService:JSONEncode(Setting)
            writefile("Setting/settingSOLRNG.json", serializedSetting)
        end
    })
end

local function onHeartbeat()
    game:GetService("Lighting").ClockTime = 0
end
game:GetService("RunService").Heartbeat:Connect(function()
    if Setting.SetDay and not Setting.SetNight then
        game:GetService("Lighting").ClockTime = 10
    elseif Setting.SetNight and not Setting.SetDay then
        game:GetService("Lighting").ClockTime = 0
    end
end)

task.wait(0.05)
if allowtoserialized then
    serializedSetting = game.HttpService:JSONEncode(Setting)
    writefile("Setting/settingSOLRNG.json", serializedSetting)
end
task.wait(5)
finishload = true
getgenv().FinishLoad = true

local function createParts(Size, CFrame)
    local size = Size
    local cframe = CFrame

    local part = Instance.new("Part")
    part.Size = size
    part.CFrame = cframe
    part.Anchored = true
    part.CanCollide = true
    part.Transparency = 1
    part.Color = Color3.fromRGB(255, 0, 0)

    part.Parent = workspace
end
createParts(Vector3.new(15, 1, 45), CFrame.new(237.287537, 98.6303635, 145.430832, -0.0137257231, 0.009610896, 0.999859631, 0.573576331, 0.819152057, -3.57042147e-08, -0.81903708, 0.573495865, -0.0167560373))
createParts(Vector3.new(10, 1, 5), CFrame.new(230.05275, 107.451981, 91.0173264, -0.561256826, -3.43324125e-08, 0.827641666, -1.24129595e-08, 1, 3.30644916e-08, -0.827641666, 8.28418933e-09, -0.561256826))
createParts(Vector3.new(10, 1, 13), CFrame.new(235.806305, 104.051987, 87.6975632, -0.511800706, 0.49276188, 0.70373702, -1.12890657e-08, 0.819152117, -0.573576391, -0.859104216, -0.293556809, -0.41924262))
createParts(Vector3.new(10, 30, 10), CFrame.new(359.000305, 115.484596, 87, 0, 0, 1, 0, 1, 0, -1, 0, 0))
createParts(Vector3.new(9, 1, 8), CFrame.new(180.467911, 113.209999, 343.603333, 0.295654118, -0.050372228, 0.953966141, 0.0149116851, 0.99873054, 0.0481144786, -0.955178678, -9.17659171e-10, 0.296029925))
createParts(Vector3.new(17.354660034179688, 21.770000457763672, 5.948921203613281), CFrame.new(260.816833, 104.585175, 143.018829, 1, 0, 0, 0, 1, 0, 0, 0, 1))
createParts(Vector3.new(6, 1, 11), CFrame.new(266.380005, 106.480003, 202.100006, -0.258818954, 2.26266721e-08, 0.965925872, 1.71866702e-07, 1, 2.26266721e-08, -0.965925872, 1.71866702e-07, -0.258818954))
createParts(Vector3.new(6, 1, 13), CFrame.new(255.550003, 105.980003, 210.759995, 0.866025388, 0, -0.5, 0, 1, 0, 0.5, 0, 0.866025388))
createParts(Vector3.new(6, 1, 12), CFrame.new(245.179993, 107.18, 221.949997, -1.1313336e-08, 0.258818954, -0.965925872, 1.48942902e-09, 0.965925872, 0.258818954, 1, 1.48942902e-09, -1.1313336e-08))
createParts(Vector3.new(6, 1, 10), CFrame.new(230.110001, 109.379997, 223.729996, 0.49999997, 0, -0.866025448, 0, 1, 0, 0.866025448, 0, 0.49999997))
createParts(Vector3.new(8, 1, 10), CFrame.new(219.220001, 110.919998, 232.130005, 1, 0, 0, 0, 0.965925813, 0.258819044, 0, -0.258819044, 0.965925813))
createParts(Vector3.new(7.5, 1, 11), CFrame.new(216.600006, 110.379997, 247.259995, 1, 0, 0, 0, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813))
createParts(Vector3.new(7, 1, 8.5), CFrame.new(216.649994, 110.379997, 257.959991, 1, 0, 0, 0, 0.965925813, 0.258819044, 0, -0.258819044, 0.965925813))
createParts(Vector3.new(12.5, 1, 15), CFrame.new(370.109985, 116.480003, 77.3399963, -2.18556924e-08, -0.49999997, 0.866025448, -5.85621507e-09, 0.866025448, 0.49999997, -1, 5.85621507e-09, -2.18556924e-08))
createParts(Vector3.new(8, 1, 30.5), CFrame.new(391.220001, 117.260002, 44.7299995, 0.98478049, 0.160381705, 0.0669704825, -0.126897544, 0.926788926, -0.353495657, -0.118761733, 0.339617223, 0.933035731))
createParts(Vector3.new(9, 1, 19.5), CFrame.new(413.660004, 129.979996, 23.4300003, 0.258818954, 0, -0.965925872, 0, 1, 0, 0.965925872, 0, 0.258818954))
createParts(Vector3.new(6.5, 1, 26), CFrame.new(436.540009, 127.690002, 21.2099991, -1.1313336e-08, 0.258818954, -0.965925872, 1.48942902e-09, 0.965925872, 0.258818954, 1, 1.48942902e-09, -1.1313336e-08))
createParts(Vector3.new(4, 1, 22.5), CFrame.new(468.540009, 127.040001, 27.6100006, -0.0085140178, -0.250065982, -0.968191385, 0.0669334978, 0.965912461, -0.250065982, 0.997721076, -0.0669334978, 0.00851399638))
createParts(Vector3.new(4, 1, 23.5), CFrame.new(489.549988, 145.520004, 31.3799992, 1, 0, 0, 0, 0.0697565079, 0.997564077, 0, -0.997564077, 0.0697565079))
createParts(Vector3.new(4, 1, 13), CFrame.new(461.350006, 157.720001, 27.2900009, 0.701819181, 0.366278559, 0.61097455, -0.121790856, 0.906750441, -0.40369612, -0.701866686, 0.208910555, 0.680984199))
createParts(Vector3.new(4, 1, 16.5), CFrame.new(443.559998, 161.75, 26.7000008, 0.258874089, 0.483000576, -0.836477518, -3.37660313e-05, 0.866003036, 0.500038803, 0.96591109, -0.12941882, 0.224202067))
createParts(Vector3.new(10, 1, 38), CFrame.new(238.979996, 104.25, 112.010002, 0.866025388, 0.5, 0, -0.5, 0.866025388, 0, 0, 0, 1))
createParts(Vector3.new(13, 1, 38), CFrame.new(225.470001, 110.5, 110.970001, 0.866025388, 0.5, 0, -0.5, 0.866025388, 0, 0, 0, 1))
createParts(Vector3.new(9, 1, 59), CFrame.new(208.380005, 116, 111.459999, 0.866025388, 0.5, 0, -0.5, 0.866025388, 0, 0, 0, 1))
createParts(Vector3.new(56, 1, 8), CFrame.new(201.899994, 104.75, 46.7700005, 0.967301726, 0.11876972, -0.224100664, 0.00952259451, 0.865948796, 0.500041962, 0.253449559, -0.485825449, 0.83650279))
createParts(Vector3.new(40, 1, 20), CFrame.new(184.960007, 110.75, 63.0900002, 1, 0, 0, 0, 0.707106769, 0.707106769, 0, -0.707106769, 0.707106769))
createParts(Vector3.new(21, 1, 9), CFrame.new(216.729996, 108, 65.8600006, 0.707088113, 0.35362041, -0.612355232, -0.000103294849, 0.866029918, 0.499992162, 0.707125425, -0.353475273, 0.612396002))
createParts(Vector3.new(7, 9, 7), CFrame.new(208.470001, 114.25, 79.6800003, 1, 0, 0, 0, 1, 0, 0, 0, 1))
createParts(Vector3.new(6, 1, 9), CFrame.new(220.009995, 112.940002, 289.850006, 0.866025388, 0, 0.5, 0, 1, 0, -0.5, 0, 0.866025388))
createParts(Vector3.new(8, 1, 11), CFrame.new(228.009995, 112.980003, 302.040009, 0.866025388, 0, 0.5, 0, 1, 0, -0.5, 0, 0.866025388))
createParts(Vector3.new(6, 1, 11), CFrame.new(233.649994, 112.980003, 315.339996, 0.965925813, 0, 0.258819044, 0, 1, 0, -0.258819044, 0, 0.965925813))
createParts(Vector3.new(8, 1, 12), CFrame.new(231.779999, 113.980003, 329.450012, 0.866025388, 0, -0.5, 0, 1, 0, 0.5, 0, 0.866025388))
createParts(Vector3.new(6, 1, 12), CFrame.new(221.720001, 113.309998, 341.859985, 0.707103789, -0.183001146, -0.683018923, 2.81333923e-05, 0.965937793, -0.25877443, 0.707109809, 0.182961166, 0.683023393))
createParts(Vector3.new(7, 1, 12), CFrame.new(207.789993, 112.980003, 346.980011, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08))
createParts(Vector3.new(6, 1, 15), CFrame.new(192.009995, 113.980003, 345.549988, -0.258818954, -2.26266721e-08, -0.965925872, -2.97885805e-09, 1, -2.26266721e-08, 0.965925872, -2.97885805e-09, -0.258818954))
createParts(Vector3.new(11, 40, 0.5), CFrame.new(403.288513, 132.293076, 97.2181244, 0.0372838341, 0.738148034, -0.673607647, -0.0198841505, 0.674490809, 0.738015354, 0.999106884, -0.0141219236, 0.039825052))
createParts(Vector3.new(10, 10, 10), CFrame.new(423.114075, 140.952286, 97.4066162, 0.999686301, -5.19877874e-09, 0.0250473171, 2.99662628e-09, 1, 8.79572966e-08, -0.0250473171, -8.78546373e-08, 0.999686301))

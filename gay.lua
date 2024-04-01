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
Setting = nil
serializedSetting = nil
if not isfolder("Setting") then
    makefolder("Setting")
end
if isfolder("Setting") and not isfile("Setting/settingSOLRNG.json") then
    print("no file")
    Setting = {
        AutoAura = false,
        AutoAchivement = false,
        AutoUpStorage = false,
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
    textLabel.Text = text
    textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    textLabel.TextStrokeTransparency = 0.082
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.new(1, 0, 1, 0)

    billboard.Parent = obj
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
do
    Tabs.Main:AddSection("Aura")
    AutoAura = Tabs.Main:AddToggle("AutoAura", {Title = "Auto Roll Aura | Faster than normal", Default = Setting.AutoAura })
    coroutine.wrap(function()
        AutoAura:OnChanged(function()
            pcall(function()
                Setting.AutoAura = Options.AutoAura.Value
                while Options.AutoAura.Value do
                    __VE["RRC"]:FireServer("Roll")
                    __VE["RE"]:FireServer("Choice", "Equip", true)
                    __VE["SRC"]:FireServer("GetCooltime")
                    task.wait(0.1)
                end
            end)
        end)
    end)
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
    end)
    Tabs.Main:AddSection("Storage")
    AutoUpStorage = Tabs.Main:AddToggle("AutoUpStorage", {Title = "Auto Upgrade Storage", Default = Setting.AutoUpStorage })
    coroutine.wrap(function()
        AutoUpStorage:OnChanged(function()
            pcall(function()
                Setting.AutoUpStorage = Options.AutoUpStorage.Value
                while Options.AutoUpStorage.Value do
                    game:GetService("ReplicatedStorage").Remotes.AuraStorage:FireServer("UpgradeStorage")
                    task.wait(0.1)
                end
            end)
        end)
    end)
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
    AutoCraftGlove = Tabs.GloveAPotion:AddToggle("AutoCraftGlove", {Title = "Auto Craft Glove", Default = Setting.AutoCraftGlove })
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
                end
            end)
        end)
    end)
    Tabs.GloveAPotion:AddSection("Potion")
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
                end
            end)
        end)
    end)
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
                end
            end)
        end)
    end)
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
            end)
        end)
    end)
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
                    end
                else
                    __VE["LPs"].Character.Humanoid.WalkSpeed = 16
                end
            end)
        end)
    end)
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
    end)
    SetDay = Tabs.Player:AddToggle("SetDay", {Title = "Day Time", Default = Setting.SetDay })
    coroutine.wrap(function()
        SetDay:OnChanged(function()
            pcall(function()
                Setting.SetDay = Options.SetDay.Value
            end)
        end)
    end)
    SetNight = Tabs.Player:AddToggle("SetNight", {Title = "Night Time", Default = Setting.SetNight })
    coroutine.wrap(function()
        SetNight:OnChanged(function()
            pcall(function()
                Setting.SetNight = Options.SetNight.Value
            end)
        end)
    end)

    Tabs.ESP:AddSection("ESP")
    ESPItems = Tabs.Player:AddToggle("ESPItems", {Title = "Items", Default = Setting.ESPItems })
    coroutine.wrap(function()
        ESPItems:OnChanged(function()
            pcall(function()
                Setting.ESPItems = Options.ESPItems.Value
                while Options.ESPItems.Value do
                    for _, v in pairs(__VE["WS"]:GetChildren()) do
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
            end)
        end)
    end)

    
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
            writefile("Setting/settingHEDERNG.json", serializedSetting)
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
    writefile("Setting/settingHEDERNG.json", serializedSetting)
end
task.wait(5)
finishload = true
getgenv().FinishLoad = true

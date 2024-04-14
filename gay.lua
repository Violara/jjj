repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer and game.Players.LocalPlayer.Character
coroutine.wrap(function()
    while task.wait(1) do
        if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.BodyVelocity:Destroy()
        end
    end
end)()
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
	["_TTJY ASSET"] = __U[35]("ScreenGui");
	["_TTJY HUB"] = __U[35]("Frame");
	["_UIStroke"] = __U[35]("UIStroke");
	["_UICorner"] = __U[35]("UICorner");
	["_TextButton"] = __U[35]("TextButton");
	["_UIStroke1"] = __U[35]("UIStroke");
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
Fluent = __U[40](game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
SaveManager = __U[40](game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
InterfaceManager = __U[40](game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
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
Float = __Y[2]
Noclip = __Y[2]
CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
WalkSpeedSet = 16
JumpPowerSet = 30
WalkSpeedRequest = __Y[2]
JumpPowerRequest = __Y[2]
cmdm = __VE["GMos"]
speedofthevfly = 1
speedofthefly = 1
Worlds = {}
Healing = {}
foods = {}
list = {}
Dragons = {}
ss1 = {}
Setting = __Y[3]
serializedSetting = __Y[3]
if getgenv().Addons then
    if not isfolder("Setting") then
        makefolder("Setting")
    end
    if isfolder("Setting") and not isfile("Setting/DragonAdventure.json") then
        print("no file")
        Setting = {
            SellAllFoods = __Y[2],
            AutoFish = __Y[2],
            AutoEgg = __Y[2],
            CollectionItem = __Y[3],
            AutoCollect = __Y[2],
            AutoFarmMob = __Y[2],
            SelectDragon = __Y[3],
            SelectFood = __Y[3],
            AutoFeed = __Y[2],
            AutoGrow = __Y[2],
            HealingItem = __Y[3],
            AutoHeal = __Y[2],
        }
        allowtoserialized = __Y[1]
    elseif __U[49]("Setting") and __U[50]("Setting/DragonAdventure.json") then
        __U[1]("file")
        __U[23]()
        Setting = game.HttpService:JSONDecode(__U[51]("Setting/DragonAdventure.json"))
    end
else
    Setting = {
        SellAllFoods = __Y[2],
        AutoFish = __Y[2],
        AutoEgg = __Y[2],
        CollectionItem = __Y[3],
        AutoCollect = __Y[2],
        AutoFarmMob = __Y[2],
        SelectDragon = __Y[3],
        SelectFood = __Y[3],
        AutoFeed = __Y[2],
        AutoGrow = __Y[2],
        HealingItem = __Y[3],
        AutoHeal = __Y[2],
    }
end
local credits = {
    {Title = "Owner", Content = "ttjy."},
    {Title = "Co Owner", Content = "ttjy_"},
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
local GetConnections = function(A, B)
    for i,v in pairs(__U[47](A[__U[32](B)])) do
        v:Fire()
    end
end
local function SetDragonStatus(Stat, Value)
    for i,v in next, __VE["LPs"].Character.Dragons:GetChildren() do
        if v:IsA("Model") and v:FindFirstChild("Data") then
            local NewStat = v.Data:FindFirstChild(Stat, true)
            NewStat.Value = Value
        end
    end
end
function Mag(Pos1, Pos2)
    return (Pos1.Position - Pos2.Position).Magnitude
end
local function GetMob()
    local Target, MaxDistance = __Y[3], math.huge
    for _,v in next, __VE["WS"].Interactions.Nodes.Mobs.ActiveMobs.Global:GetChildren() do
        if v:IsA("BasePart") and __VE["LPs"].Character.Humanoid.SeatPart then
            local Mag = Mag(v, __VE["LPs"].Character.HumanoidRootPart)
            if Mag < MaxDistance then
                MaxDistance = Mag
                Target = v
            end
        end
    end
    return Target
end
local RF, RE
for i,v in next, getgc() do
    if type(v) == "function" and islclosure(v) then
        if debug.getinfo(v).name == "GetRemoteFunction" then
            RF = v 
        elseif debug.getinfo(v).name == "GetRemoteEvent" then
            RE = v
        end
    end
end
for i, v in next, __U[24](__VE["RlS"].Storage.Worlds.Worlds) do
    if not __U[68](Worlds, v.Name .. " " .. v.GameId) then
        __U[30](Worlds, v.Name .. " " .. v.GameId)
    end
end

for i,v in next, __VE["RlS"].Storage.Items.Items.Healing:GetChildren() do
    if v:IsA("ModuleScript") then
        for i,v in next, __U[24](v) do
            __U[30](Healing, i)
        end
    end
end

for i, v in next, __VE["RlS"].Storage.Items.Items.Food:GetChildren() do
    if v:IsA("ModuleScript") then
        for i, _ in next, __U[24](v) do
            __U[30](foods, i)
        end
    end
end
for i, v in next, __VE["RlS"].Storage.Items.Items.Food:GetChildren() do
    if v:IsA("ModuleScript") then
        for i, v in next, __U[24](v) do
            __U[30](list, i)
        end
    end
end

for i, v in next, __VE["LPs"].Data.Dragons:GetChildren() do
    if v:FindFirstChild("Age") then
        __U[30](Dragons, v.Value)
    end
end
for i, v in next, __VE["RlS"].Storage.Items.Items.Eggs:GetChildren() do
    if v:IsA("ModuleScript") then
        for i,v in next, __U[24](v) do
            __U[30](ss1, i)
        end
    end
end
__VE["PsG"].NodeGui.BoostFrame.ChildAdded:Connect(function(v)
    if v:IsA("Frame") and v:FindFirstChild("ClickButton") then
        task.wait(0.5)
        GetConnections(v.ClickShadowButton.MouseButton1Down, "MouseButton1Down")
    end
end)
workspace.Interactions.Nodes.Eggs.ActiveNodes.Lobby.EggModel.Egg
local VirtualInputManager = game:GetService('VirtualInputManager')

function keyPress(Key, Press)
   VirtualInputManager:SendKeyEvent(Press, Key, false, game)
end
local function GrabEgg()
    for i,v in next, __VE["WS"].Interactions.Nodes.Eggs.ActiveNodes:GetChildren() do
        if v and v:FindFirstChild("EggModel") then
            if v.EggModel:FindFirstChild("CurrentPlayer") and v.EggModel:FindFirstChild("CurrentBoosts") then
                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.EggModel.Egg.CFrame * CFrame.new(0,5,0)
                task.wait(0.3)
                keyPress(Enum.KeyCode.E, true)
                v.EggModel.CurrentBoosts.Value = 9
                v.EggModel.Harvested.Value = true
            end
        end
    end
end
if __VE["CG"]:FindFirstChild("InputPcToMobile") then
    __VE["CG"]:FindFirstChild("InputPcToMobile"):Destroy()
end
local screenGui2 = __U[35]("ScreenGui")
screenGui2.Name = "InputPcToMobile"
screenGui2.Parent = __VE["CG"]
local buttonSize = __U[27](0.05, 0, 0.05, 0)
local function createButton(key, position)
    local button = __U[35]("TextButton")
    button.Name = key
    button.Text = key
    button.Size = buttonSize
    button.Position = position
    button.BackgroundColor3 = __U[70](0.5, 0.5, 0.5)
    button.Parent = screenGui2
    local isPressed = __Y[2]
    button.MouseButton1Down:Connect(function()
        isPressed = true
        if key == "W" then
            CONTROL.F = speedofthefly
        elseif key == "S" then
            CONTROL.B = -speedofthefly
        elseif key == "A" then
            CONTROL.L = -speedofthefly
        elseif key == "D" then
            CONTROL.R = speedofthefly
        end
    end)

    button.MouseButton1Up:Connect(function()
        isPressed = __Y[2]
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

createButton("W", __U[27](0.05, 0, 0.1, 0))
task.wait()
createButton("A", __U[27](0, 0, 0.2, 0))
task.wait()
createButton("S", __U[27](0.05, 0, 0.3, 0))
task.wait()
createButton("D", __U[27](0.1, 0, 0.2, 0))
task.wait()
Window = nil
repeat
    __U[6](function()
        Window = Fluent:CreateWindow({
            Title = "Dragon Adventure Script v.UP2FV",
            SubTitle = "by TTJY",
            TabWidth = 160,
            Size = __U[69](580, 460),
            Acrylic = __Y[2],
            Theme = "Dark",
            MinimizeKey = Enum.KeyCode.LeftControl
        })
    end)
    __U[1]("Window Loaded")
    __U[23](5)
until Window ~= nil

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Player = Window:AddTab({ Title = "Player", Icon = "" }),
    Dragon = Window:AddTab({ Title = "Dragon", Icon = "" }),
    ESP = Window:AddTab({ Title = "ESP", Icon = "briefcase" }),
    ChangeLog = Window:AddTab({ Title = "ChangeLog", Icon = "book" }),
    Credits = Window:AddTab({ Title = "Credits", Icon = "book" }),
    Addons = Window:AddTab({ Title = "Addons", Icon = "book" }),
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
do
    Tabs.Main:AddSection("Events")
    local Toggle = Tabs.Main:AddToggle("AutoEasterEvent2024", {Title = "Auto EasterEvent2024", Default = false})
    Toggle:OnChanged(function()
        Setting.AutoEasterEvent2024 = Options.AutoEasterEvent2024.Value
    end)

    if game.PlaceId == 3475397644 then
        Tabs.Main:AddSection("Base")
        Tabs.Main:AddButton({Title = "Teleport to base",Description = "",Callback = function()
            for i, v in next, __VE["WS"].Interactions:GetDescendants() do
                if v:IsA("TextLabel") and v.Name:match("Player")  then
                    if  v.Text == __VE["LPs"].PlayerGui.WorkspaceGui[__VE["LPs"].Name .. "_DisplayGui"].ContainerFrame.NameLabel.Text then
                        firetouchinterest(__VE["LPs"].Character.HumanoidRootPart, v.Parent.Parent.Parent.TeleportPart, 0)
                    end
                end
            end
        end})
        
        Tabs.Main:AddSection("Economy")
        local Toggle = Tabs.Main:AddToggle("SellAllFoods", {Title = "Sell All Foods", Default = Setting.SellAllFoods or false})
        coroutine.wrap(function()
            Toggle:OnChanged(function()
                Setting.SellAllFoods = Options.SellAllFoods.Value
                while Setting.SellAllFoods do
                    for _, v in next, __VE["LPs"].Data.Resources:GetChildren() do
                        if table.find(foods,v.Name) and v.Value ~= 0 and Setting.SellAllFoods then task.wait(0.5)
                            RE("SellItemRemote"):FireServer({["Amount"] = v.Value, ["ItemName"] = v.Name})
                        end
                    end
                    task.wait(3)
                end
            end)
        end)()
    end

    Tabs.Main:AddSection("Auto")
    local Toggle = Tabs.Main:AddToggle("AutoFish", {Title = "Auto Fish", Default = false})
    Toggle:OnChanged(function()
        Setting.AutoFish = Options.AutoFish.Value
        spawn(function()
            while task.wait() and Setting.AutoFish do
                pcall(function()
                    if __VE["PsG"].FishingGui.ContainerFrame.Visible and Setting.AutoFish then
                        local Fish = require(__VE["RlS"]["_replicationFolder"].FishingClient)
                        local StartCasting = Fish.StartCasting
                        local No = __VE["PsG"].FishingGui.ContainerFrame.ReelingFrame.SpinRingFrame.SpinSmallSegment
                        local Yes = __VE["PsG"].FishingGui.ContainerFrame.ReelingFrame.SpinReelLabel
                        local Bad = __VE["PsG"].FishingGui.ContainerFrame.ReelingFrame.SpinRingFrame.SpinLargeSegment
                        local Click = Fish.Click
                        StartCasting(Fish, StartCasting)
                        if Fish.Snagged and Setting.AutoFish then
                            Fish.ReelSignal:Fire()
                            if (Yes.AbsoluteRotation >= Bad.AbsoluteRotation and No.AbsoluteRotation <= Bad.AbsoluteRotation) and Setting.AutoFish then
                                Click(Fish, Fish.Click)
                            end
                        end
                    end
                end)
            end
        end)
    end)
    local Toggle = Tabs.Main:AddToggle("AutoEgg", {Title = "Auto Egg", Default = false})
    Toggle:OnChanged(function()
        Setting.AutoEgg = Options.AutoEgg.Value
        spawn(function()
            while Setting.AutoEgg do task.wait()
                pcall(function()
                    GrabEgg()
                end)
            end
        end)
    end)
    local Dropdown = Tabs.Main:AddDropdown("CollectionItem", {Title = "Select To Collect",Values = {"Food", "Magic", "Resources"},Multi = false,Default = tostring(Setting.CollectionItem) or 1,})

    Dropdown:OnChanged(function(Value)
        Setting.CollectionItem = Value
    end)
    local Toggle = Tabs.Main:AddToggle("AutoCollect", {Title = "Auto Collect", Default = Setting.AutoCollect or false})
    Toggle:OnChanged(function()
        Setting.AutoCollect = Options.AutoCollect.Value
        spawn(function()
            while Setting.AutoCollect do task.wait(0.1)
                if __VE["LPs"].Character.Humanoid.SeatPart then
                    pcall(function()
                        for _, v in next, __VE["LPs"].Interactions.Nodes[tostring(Setting.CollectionItem)]:GetChildren() do
                            if v:IsA("Model") and v:FindFirstChild("Hitbox") and __VE["LPs"].Character.Humanoid.SeatPart and Setting.AutoCollect then
                                if v:FindFirstChild("BillboardPart", true) and v.BillboardPart.Health.Value ~= 0 and Setting.AutoCollect then
                                    __VE["LPs"].Character:SetPrimaryPartCFrame(CFrame.new(v.Hitbox.Position) * CFrame.new(0, 10, 0))
                                    for i=1, 10 do task.wait(0.3)
                                        GetConnections(__VE["PsG"].HUDGui.BottomFrame.CurrentDragonFrame.DragonControlsFrame.Other.Bite.MouseButton1Down, "MouseButton1Down")
                                    end
                                    for _,v in next, __VE["WS"].Camera:GetChildren() do
                                        if v:FindFirstChild("Handle") and Setting.AutoCollect then 
                                            __VE["LPs"].Character:SetPrimaryPartCFrame(CFrame.new(v.Handle.Position) * CFrame.new(0, 0, 0))
                                        end
                                    end
                                    break
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end)
    local Toggle = Tabs.Main:AddToggle("AutoFarmMob", {Title = "Auto Farm Mob", Default = false})
    Toggle:OnChanged(function()
        Setting.AutoFarmMob = Options.AutoFarmMob.Value
        spawn(function()
            while Setting.AutoFarmMob do task.wait(0.5)
                pcall(function()
                    for _,v in next, __VE["WS"].Camera:GetChildren() do
                        if v:FindFirstChild("Handle") and Setting.AutoFarmMob then
                            __VE["LPs"].Character:SetPrimaryPartCFrame(CFrame.new(v.Handle.Position) * CFrame.new(0, 0, 0))
                        end
                    end
                    OriginBiteValue = __VE["LPs"].Character.Humanoid.SeatPart.Parent.Data.CombatStats.BiteCooldown.Value
                    __VE["LPs"].Character:SetPrimaryPartCFrame(CFrame.new(GetMob().Position + Vector3.new(0,5,0)))
                    __VE["LPs"].Character.Humanoid.SeatPart.Parent.Data.CombatStats.BiteCooldown.Value = 0.001
                            
                    for i=1, 10 do task.wait(0.1)
                        GetConnections(__VE["LPs"].PlayerGui.HUDGui.BottomFrame.CurrentDragonFrame.DragonControlsFrame.Other.Bite.MouseButton1Down, "MouseButton1Down")
                    end
                    __VE["LPs"].Character.Humanoid.SeatPart.Parent.Data.CombatStats.BiteCooldown.Value = OriginBiteValue
                end)
            end
        end)
    end)
    Tabs.Dragon:AddSection("OP Dragon")
    local Input = Tabs.Dragon:AddInput("Input", {
        Title = "DashCooldown",
        Default = "0", Placeholder = "Placeholder", Numeric = true, Finished = false,
        Callback = function(Value)
            pcall(function()
                SetDragonStatus("DashCooldown", tonumber(Value))
            end)
        end
    })
    Input:OnChanged(function(Value) pcall(function() SetDragonStatus("DashCooldown", tonumber(Value)) end) end)
    local Input = Tabs.Dragon:AddInput("Input", {
        Title = "FlyDashCooldown",
        Default = "0", Placeholder = "Placeholder", Numeric = true, Finished = false,
        Callback = function(Value)
            pcall(function()
                SetDragonStatus("FlyDashCooldown", tonumber(Value))
            end)
        end
    })
    Input:OnChanged(function(Value) pcall(function() SetDragonStatus("FlyDashCooldown", tonumber(Value)) end) end)
    local Input = Tabs.Dragon:AddInput("Input", {
        Title = "TurnSpeed",
        Default = "0", Placeholder = "Placeholder", Numeric = true, Finished = false,
        Callback = function(Value)
            pcall(function()
                SetDragonStatus("TurnSpeed", tonumber(Value))
            end)
        end
    })
    Input:OnChanged(function(Value) pcall(function() SetDragonStatus("TurnSpeed", tonumber(Value)) end) end)
    local Input = Tabs.Dragon:AddInput("Input", {
        Title = "FlySpeed",
        Default = "0", Placeholder = "Placeholder", Numeric = true, Finished = false,
        Callback = function(Value)
            pcall(function()
                SetDragonStatus("FlySpeed", tonumber(Value))
            end)
        end
    })
    Input:OnChanged(function(Value) pcall(function() SetDragonStatus("FlySpeed", Value) end) end)
    local Input = Tabs.Dragon:AddInput("Input", {
        Title = "WalkSpeed",
        Default = "0", Placeholder = "Placeholder", Numeric = true, Finished = false,
        Callback = function(Value)
            pcall(function()
                SetDragonStatus("WalkSpeed", Value)
            end)
        end
    })
    Input:OnChanged(function(Value) pcall(function() SetDragonStatus("WalkSpeed", tonumber(Value)) end) end)
    local Input = Tabs.Dragon:AddInput("Input", {
        Title = "FlyTurnSpeed",
        Default = "0", Placeholder = "Placeholder", Numeric = true, Finished = false,
        Callback = function(Value)
            pcall(function()
                SetDragonStatus("FlyTurnSpeed", tonumber(Value))
            end)
        end
    })
    Input:OnChanged(function(Value) pcall(function() SetDragonStatus("FlyTurnSpeed", tonumber(Value)) end) end)
    local Input = Tabs.Dragon:AddInput("Input", {
        Title = "Dash3TimeUseCooldown",
        Default = "0", Placeholder = "Placeholder", Numeric = true, Finished = false,
        Callback = function(Value)
            pcall(function()
                SetDragonStatus("Dash3TimeUseCooldown", tonumber(Value))
            end)
        end
    })
    Input:OnChanged(function(Value) pcall(function() SetDragonStatus("Dash3TimeUseCooldown", tonumber(Value)) end) end)
    local Input = Tabs.Dragon:AddInput("Input", {
        Title = "BiteCooldown",
        Default = "0", Placeholder = "Placeholder", Numeric = true, Finished = false,
        Callback = function(Value)
            pcall(function()
                SetDragonStatus("BiteCooldown", tonumber(Value))
            end)
        end
    })
    Input:OnChanged(function(Value) pcall(function() SetDragonStatus("BiteCooldown", tonumber(Value)) end) end)
    Tabs.Dragon:AddSection("Main")
    local Dropdown = Tabs.Dragon:AddDropdown("SelectDragon", {Title = "Select Dragon",Values = Dragons,Multi = false, Default = 1,})
    Dropdown:OnChanged(function(Value)
        Setting.SelectDragon = Value
    end)
    Tabs.Dragon:AddButton({Title = "Equip Dragon",Description = "Equips Selected Dragon",Callback = function()
        for i,v in next, __VE["LPs"].Data.Dragons:GetDescendants() do
            if  v.ClassName == 'StringValue' and  v.Value == Setting.SelectDragon and v:FindFirstChild("Stats") then 
                RF("EquipDragonRemote"):InvokeServer(v.Name)
                break
            end
        end
    end})
    Tabs.Dragon:AddButton({Title = "Uneqip Dragon",Description = "Unequips Selected Dragon",Callback = function()
        for i, v in next, __VE["LPs"].Character.Dragons:GetDescendants() do
            if v.ClassName == 'StringValue' and  v.Value == Setting.SelectDragon and v:FindFirstChild("Stats")  then
                RF("UnequipDragonRemote"):InvokeServer(v.Name)
            end
        end
    end})
    Tabs.Dragon:AddButton({Title = "Unequip All Dragons",Description = "",Callback = function()
        for i, v in next, __VE["LPs"].Character.Dragons:GetDescendants() do
            if v:IsA("Model") and v:FindFirstChild("ID") then
                RF("UnequipDragonRemote"):InvokeServer(v.Name)
            end
        end
    end})
    local Dropdown = Tabs.Dragon:AddDropdown("SelectFood", {Title = "Select Food",Values = list,Multi = false,Default = tostring(Setting.SelectFood) or 1,})

    Dropdown:OnChanged(function(Value)
        Setting.SelectFood = Value
    end)
    local Toggle = Tabs.Dragon:AddToggle("AutoFeed", {Title = "Auto Feed Dragons", Default = false})
    Toggle:OnChanged(function()
        Setting.AutoFeed = Options.AutoFeed.Value
        spawn(function()
            while Setting.AutoFeed do task.wait()
                if Setting.AutoFeed then
                    pcall(function()
                        for i, v in next, __VE["LPs"].Character.Dragons:GetChildren() do
                            if v.ClassName == "Model" and v:FindFirstChild("ID") and Setting.AutoFeed then
                                RF("FeedDragonRemote"):InvokeServer(v.Name, {["Amount"] = 1, ["ItemName"] = Setting.SelectFood})
                                task.wait(1)
                            end
                        end
                    end)
                end
            end
        end)
    end)
    local Toggle = Tabs.Dragon:AddToggle("AutoGrow", {Title = "Auto Grow", Default = false})
    Toggle:OnChanged(function()
        Setting.AutoGrow = Options.AutoGrow.Value
        spawn(function()
            while Setting.AutoGrow do task.wait()
                if Setting.AutoGrow then
                    pcall(function()
                        for i, v in pairs(__VE["LPs"].Character.Dragons:GetDescendants()) do
                            if v.ClassName == "Model" and v:FindFirstChild("ID") then task.wait(5)
                                RF("GrowDragonRemote"):InvokeServer(tostring(v.Name))
                            end
                        end
                    end)
                end
            end
        end)
    end)
    Tabs.Dragon:AddSection("Heal")
    local Dropdown = Tabs.Dragon:AddDropdown("HealingItem", {Title = "Select Healings",Values = Healing,Multi = false,Default = tostring(Setting.HealingItem) or 1,})
    Dropdown:OnChanged(function(Value)
        Setting.HealingItem = Value
    end)
    local Toggle = Tabs.Dragon:AddToggle("AutoHeal", {Title = "Auto Heal Dragons", Default = false})
    Toggle:OnChanged(function()
        Setting.AutoHeal = Options.AutoHeal.Value
        if Setting.AutoHeal then
            spawn(function()
                while Setting.AutoHeal do task.wait(0.1)
                    if AutoHeal then
                        pcall(function()
                            for i, v in pairs(__VE["LPs"].Character.Dragons:GetChildren()) do
                                if v.ClassName == "Model" and v:FindFirstChild("ID") and Setting.AutoHeal then
                                    RF("HealDragonRemote"):InvokeServer(tostring(v.Name),HealingItem)
                                    task.wait(1)
                                end
                            end
                        end)
                    end
                end
            end)
        end
    end)
    FloatT = Tabs.Player:AddToggle("FloatT", {Title = "Float", Default = __Y[2] })
    FloatT:OnChanged(function()
        Float = Options.FloatT.Value
    end)
    NoClipT = Tabs.Player:AddToggle("NoClipT", {Title = "Noclip", Default = __Y[2] })
    NoClipT:OnChanged(function()
        Noclip = Options.NoClipT.Value
    end)
    local FLysss = Tabs.Player:AddToggle("FLysss", {Title = "Fly", Default = __Y[2] })

    FLysss:OnChanged(function()
        if Options.FLysss.Value then
            FLYING = Options.FLysss.Value
            while not __VE["LPs"] or not __VE["LPs"].Character or not __VE["LPs"].Character:FindFirstChild('HumanoidRootPart') or not __VE["LPs"].Character:FindFirstChild('Humanoid') or not cmdm do
                wait()
            end

            local T = __VE["LPs"].Character.HumanoidRootPart
            local SPEED = 0

            function FLY()
                local BG = __U[35]('BodyGyro', T)
                local BV = __U[35]('BodyVelocity', T)
                BG.Name = "Body"
                BV.Name = "Body"
                BG.P = 9e4
                BG.maxTorque = __U[57](9e9, 9e9, 9e9)
                BG.cframe = T.CFrame
                BV.velocity = __U[57](0, 0, 0)
                BV.maxForce = __U[57](9e9, 9e9, 9e9)

                spawn(function()
                    while FLYING do
                        if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
                            SPEED = 50
                        elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
                            SPEED = 0
                        end

                        if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
                            BV.velocity = ((__VE["WS"].CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((__VE["WS"].CurrentCamera.CoordinateFrame * __U[26](CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - __VE["WS"].CurrentCamera.CoordinateFrame.p)) * SPEED
                        else
                            BV.velocity = __U[57](0, 0, 0)
                        end

                        BG.cframe = __VE["WS"].CurrentCamera.CoordinateFrame
                        wait()
                    end

                    CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
                    SPEED = 0

                    BG:Destroy()
                    BV:Destroy()
                    __VE["LPs"].Character.Humanoid.PlatformStand = __Y[2]
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
            FLYING = Options.FLysss.Value
        end
    end)
    local pfly = Tabs.Player:AddSlider("pfly", {
        Title = "Fly Speed",
        Description = "",
        Default = 6,
        Min = 1,
        Max = 50,
        Rounding = 0,
        Callback = function(Value)
            speedofthefly = Value
            speedofthevfly = Value
        end
    })
    local WalkSpeedS = Tabs.Player:AddSlider("WalkSpeedS", {
        Title = "WalkSpeed",
        Description = "",
        Default = 16,
        Min = 0,
        Max = 300,
        Rounding = 1,
        Callback = function(Value)
            WalkSpeedSet = Value
        end
    })

    WalkSpeedS:OnChanged(function(Value)
        WalkSpeedSet = Value
    end)
    local JumpPowerS = Tabs.Player:AddSlider("JumpPowerS", {
        Title = "JumpPower",
        Description = "",
        Default = 30,
        Min = 0,
        Max = 300,
        Rounding = 1,
        Callback = function(Value)
            JumpPowerSet = Value
        end
    })

    JumpPowerS:OnChanged(function(Value)
        JumpPowerSet = Value
    end)
    WalkSpeedT = Tabs.Player:AddToggle("WalkSpeedT", {Title = "Toggle WalkSpeed", Default = false })
    coroutine.wrap(function()
        WalkSpeedT:OnChanged(function()
            pcall(function()
                WalkSpeedRequest = Options.WalkSpeedT.Value
            end)
        end)
    end)()
    JumpPowerT = Tabs.Player:AddToggle("JumpPowerT", {Title = "Toggle JumpPower", Default = false })
    coroutine.wrap(function()
        JumpPowerT:OnChanged(function()
            pcall(function()
                JumpPowerRequest = Options.JumpPowerT.Value
            end)
        end)
    end)()

    Tabs.ChangeLog:AddParagraph({
        Title = "Change Log",
        Content = "11/4/2024\n# Main\n> Added Auto Easter Event\n> Added Teleport To base\n> Added Sell All Foods\n> Added Auto Fish\n> Added Auto Egg\n> Added Auto Collect\n> Added Auto Farm Mob\n> Added Dragon Dash Cooldown\n> Added Fly Dash Cooldown\n> Added Turn Speed\n> Added Fly Speed\n> Added WalkSpeed\n> Added Fly Turn Speed\n> Added Dash3Time use Cooddown\n> Add Bite Cooldown\n> Added Select Dragon\n> Added Equip Dragon\n> Added Unequip Dragon\n> Added Unequip All Dragons\n> Added Select Food\n> Added Auto Feed\n> Added Auto Grow\n> Added Auto Heal\n# Player\n> Added Float, Noclip, Fly, WalkSpeed, JumpPower"
    })
    for i, v in ipairs(credits) do
        Tabs.Credits:AddButton({
            Title = v.Title,
            Description = v.Content,
            Callback = function()
                serializedSetting = game.HttpService:JSONEncode(Setting)
                writefile("Setting/DragonAdventure.json", serializedSetting)
            end
        })
    end

    if getgenv().Addons then
        Tabs.Addons:AddButton({
            Title = "Save as config",
            Description = "",
            Callback = function()
                
            end
        })
        Tabs.Addons:AddSection("Colorful + fun")
        Tabs.Addons:AddButton({
            Title = "Trail",
            Description = "Blue->Cyan",
            Callback = function()
                createTrail(1)
            end
        })
        Tabs.Addons:AddButton({
            Title = "Trail",
            Description = "Green->Light Green",
            Callback = function()
                createTrail(2)
            end
        })
        Tabs.Addons:AddButton({
            Title = "Trail",
            Description = "Pink->Red",
            Callback = function()
                createTrail(3)
            end
        })
        Tabs.Addons:AddButton({
            Title = "Trail",
            Description = "Purple->Light Purple",
            Callback = function()
                createTrail(4)
            end
        })
        Tabs.Addons:AddSection("Webhook")
        Tabs.Addons:AddSection("Soon")
        Tabs.Addons:AddSection("Notify")
        NotifyWhenTTJY = Tabs.Addons:AddToggle("NotifyWhenTTJY", {Title = "Notify When TTJY Join", Default = __Y[2] })
        coroutine.wrap(function()
            NotifyWhenTTJY:OnChanged(function()
                if Options.NotifyWhenTTJY.Value then
                    repeat __U[23]() until game.Players:FindFirstChild("rigga56")
                    Notify("Script", "TTJY!!!", 5)
                end
            end)
        end)()
        Tabs.Addons:AddSection("Others")
        Tabs.Addons:AddSection("Nothing here")
    end
    Tabs.Settings:AddSection("W A S D")
    HideShow = Tabs.Settings:AddToggle("HideShow", {Title = "Hide/Show", Default = __Y[2] })

    HideShow:OnChanged(function()
        if Options.HideShow.Value then
            game.CoreGui["InputPcToMobile"].W.Visible = __Y[2]
            game.CoreGui["InputPcToMobile"].A.Visible = __Y[2]
            game.CoreGui["InputPcToMobile"].S.Visible = __Y[2]
            game.CoreGui["InputPcToMobile"].D.Visible = __Y[2]
        else
            game.CoreGui["InputPcToMobile"].W.Visible = __Y[1]
            game.CoreGui["InputPcToMobile"].A.Visible = __Y[1]
            game.CoreGui["InputPcToMobile"].S.Visible = __Y[1]
            game.CoreGui["InputPcToMobile"].D.Visible = __Y[1]
        end
    end)
    UpDown = Tabs.Settings:AddToggle("UpDown", {Title = "Up/Down", Default = __Y[2] })

    UpDown:OnChanged(function()
        if Options.UpDown.Value then
            game.CoreGui["InputPcToMobile"].W.Position = __U[27](0.05, 0, 0.1, 0)
            game.CoreGui["InputPcToMobile"].A.Position = __U[27](0, 0, 0.2, 0)
            game.CoreGui["InputPcToMobile"].S.Position = __U[27](0.05, 0, 0.3, 0)
            game.CoreGui["InputPcToMobile"].D.Position = __U[27](0.1, 0, 0.2, 0)
        else
            game.CoreGui["InputPcToMobile"].W.Position = __U[27](0.05, 0, 0.7, 0)
            game.CoreGui["InputPcToMobile"].A.Position = __U[27](0, 0, 0.8, 0)
            game.CoreGui["InputPcToMobile"].S.Position = __U[27](0.05, 0, 0.9, 0)
            game.CoreGui["InputPcToMobile"].D.Position = __U[27](0.1, 0, 0.8, 0)
        end
    end)
    BigSmall = Tabs.Settings:AddToggle("BigSmall", {Title = "Big/Small", Default = __Y[2] })

    BigSmall:OnChanged(function()
        if Options.BigSmall.Value then
            game.CoreGui["InputPcToMobile"].W.Size = __U[27](0.1, 0, 0.1, 0)
            game.CoreGui["InputPcToMobile"].A.Size = __U[27](0.1, 0, 0.1, 0)
            game.CoreGui["InputPcToMobile"].S.Size = __U[27](0.1, 0, 0.1, 0)
            game.CoreGui["InputPcToMobile"].D.Size = __U[27](0.1, 0, 0.1, 0)
        else
            game.CoreGui["InputPcToMobile"].W.Size = __U[27](0.05, 0, 0.05, 0)
            game.CoreGui["InputPcToMobile"].A.Size = __U[27](0.05, 0, 0.05, 0)
            game.CoreGui["InputPcToMobile"].S.Size = __U[27](0.05, 0, 0.05, 0)
            game.CoreGui["InputPcToMobile"].D.Size = __U[27](0.05, 0, 0.05, 0)
        end
    end)
end

local WalkSpeedSignal
coroutine.wrap(function()
    while true do
        wait(0.1)
        
        character = __VE["LPs"].Character
        if character and character:FindFirstChild("Humanoid") and WalkSpeedRequest and character.Humanoid.WalkSpeed ~= tonumber(WalkSpeedSet) then
            if WalkSpeedSignal then
                WalkSpeedSignal:Disconnect()
            end
            
            WalkSpeedSignal = character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                character.Humanoid.WalkSpeed = tonumber(WalkSpeedSet)
            end)
        end
    end
end)()
coroutine.wrap(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if __VE["LPs"].Character and __VE["LPs"].Character:FindFirstChild("Humanoid") and JumpPowerRequest then
            __VE["LPs"].Character.Humanoid.JumpPower = tonumber(JumpPowerSet)
        end
    end)
end)()
local Part = Instance.new("Part")
Part.Size = Vector3.new(2, 0.2, 1.5)
Part.Material = Enum.Material.Grass
Part.Anchored = true
Part.Transparency = 1
Part.Parent = workspace
local function updatePartPosition()
    character = __VE["LPs"].Character
    local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
    
    if humanoidRootPart and Float then
        Part.CFrame = humanoidRootPart.CFrame * CFrame.new(0, -3.1, 0)
    else
        Part.CFrame = CFrame.new(0, -10000, 0)
    end
end
game:GetService("RunService").RenderStepped:Connect(updatePartPosition)
local function NoclipLoop()
	if Noclip and __VE["LPs"].Character ~= nil then
		for _, child in pairs(__VE["LPs"].Character:GetChildren()) do
			if child:IsA("BasePart") and child.CanCollide == true then
				child.CanCollide = false
			end
		end
	end
	task.wait()
end
game:GetService("RunService").Stepped:Connect(NoclipLoop)
task.wait(0.05)
if allowtoserialized then
    serializedSetting = game.HttpService:JSONEncode(Setting)
    writefile("Setting/DragonAdventure.json", serializedSetting)
end
task.wait(5)
finishload = true
getgenv().FinishLoad = true

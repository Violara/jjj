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
Float = false
Noclip = false
CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
WalkSpeedSet = 16
JumpPowerSet = 30
WalkSpeedRequest = __Y[2]
JumpPowerRequest = __Y[2]
cmdm = __VE["GMos"]
speedofthevfly = 1
speedofthefly = 1
Setting = __Y[3]
serializedSetting = __Y[3]
if getgenv().Addons then
    if not isfolder("Setting") then
        makefolder("Setting")
    end
    if isfolder("Setting") and not isfile("Setting/settingHEDERNG.json") then
        print("no file")
        Setting = {
            AutoAura = __Y[2],
            AutoCollectItem = __Y[2],
            AutoPray = __Y[2],
            AutoExtend = __Y[2],
            AutoCraftWhat = __Y[3],
            AutoCraft = __Y[2],
            ESPItems = __Y[2],
        }
        allowtoserialized = __Y[1]
    elseif __U[49]("Setting") and __U[50]("Setting/settingHEDERNG.json") then
        __U[1]("file")
        __U[23]()
        Setting = game.HttpService:JSONDecode(__U[51]("Setting/settingHEDERNG.json"))
    end
else
    Setting = {
        AutoAura = __Y[2],
        AutoCollectItem = __Y[2],
        AutoPray = __Y[2],
        AutoExtend = __Y[2],
        AutoCraftWhat = __Y[3],
        AutoCraft = __Y[2],
        ESPItems = __Y[2],
    }
end

local credits = {
    {Title = "Owner", Content = "ttjy."},
    {Title = "Co Owner", Content = "ttjy_"},
    {Title = "Scripter", Content = "ttjy."},
    {Title = "Scripter", Content = "ttjy_"},
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
function tpwithnewtpbyme2(xyz,speedoftpNTP)
    local hrd = game.Players.LocalPlayer.Character.HumanoidRootPart
    local p = hrd.Position
    local currentPos = Vector3.new(p.x, p.y, p.z)
    local targetPos = xyz.Position
    local saveY = p.y

    local direction = (targetPos - currentPos).Unit
    local distance = (targetPos - currentPos).Magnitude
    local steps = math.floor(distance / speedoftpNTP)
    for i = 1, steps do
        if not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            repeat task.wait(0.175) until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        end
        currentPos = currentPos + direction * speedoftpNTP 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentPos)
        task.wait()
    end
    task.wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = xyz
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = xyz
end
local function checkSameNumbers()
    local labelText = game:GetService("Players").LocalPlayer.PlayerGui.Menu.Windows["My Auras"].Handle.Auras.Count.Text
    local firstNumber, secondNumber = labelText:match("(%d+) / (%d+)")
    if firstNumber and secondNumber then
        return tonumber(firstNumber) == tonumber(secondNumber)
    else
        return false
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

if __VE["CG"]:FindFirstChild("InputPcToMobile") then
    __VE["CG"]:FindFirstChild("InputPcToMobile"):Destroy()
end
local screenGui2 = __U[35]("ScreenGui")
screenGui2.Name = "InputPcToMobile"
screenGui2.Parent = __VE["CG"]
local buttonSize = UDim2.new(0.05, 0, 0.05, 0)
local function createButton(key, position)
    local button = __U[35]("TextButton")
    button.Name = key
    button.Text = key
    button.Size = buttonSize
    button.Position = position
    button.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
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

createButton("W", UDim2.new(0.05, 0, 0.1, 0))
task.wait()
createButton("A", UDim2.new(0, 0, 0.2, 0))
task.wait()
createButton("S", UDim2.new(0.05, 0, 0.3, 0))
task.wait()
createButton("D", UDim2.new(0.1, 0, 0.2, 0))
task.wait()
Window = nil
repeat
    __U[6](function()
        Window = Fluent:CreateWindow({
            Title = "Hede's RNG Script v.UP1FV",
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
    Player = Window:AddTab({ Title = "Player", Icon = "" }),
    ESP = Window:AddTab({ Title = "ESP", Icon = "briefcase" }),
    ChangeLog = Window:AddTab({ Title = "ChangeLog", Icon = "book" }),
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
do
    getgenv().TextStatus = "Getting Aura"
    Tabs.Main:AddSection("Aura")
    AutoAura = Tabs.Main:AddToggle("AutoAura", {Title = "Auto Roll Aura | Actually it suck", Default = Setting.AutoAura })
    coroutine.wrap(function()
        AutoAura:OnChanged(function()
            Setting.AutoAura = Options.AutoAura.Value
            while Setting.AutoAura do
                if Setting.AutoAura then
                    pcall(function()
                        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Rolling"):InvokeServer("Roll")
                        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Rolling"):InvokeServer("Show")
                        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Rolling"):InvokeServer("Equip")
                        if checkSameNumbers() then
                            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Rolling"):InvokeServer("Replace")
                        end
                    end)
                end
                task.wait(0.1)
            end
        end)
    end)()
    getgenv().TextStatus = "Getting Items"
    Tabs.Main:AddSection("Items")
    AutoCollectItem = Tabs.Main:AddToggle("AutoCollectItem", {Title = "Auto Collect Items", Default = Setting.AutoCollectItem })
    coroutine.wrap(function()
        AutoCollectItem:OnChanged(function()
            Setting.AutoCollectItem = Options.AutoCollectItem.Value
            while Setting.AutoCollectItem do
                if Setting.AutoCollectItem then
                    pcall(function()
                        if workspace:FindFirstChild("Pray") or workspace:FindFirstChild("GwaGwa") then
                            KEY_WINPG = workspace:FindFirstChild("Pray") or workspace:FindFirstChild("GwaGwa")
                            if KEY_WINPG and KEY_WINPG:FindFirstChild("Attachment") and KEY_WINPG.Attachment:FindFirstChild("ProximityPrompt") and KEY_WINPG.Attachment.ProximityPrompt.Enabled then
                                tpwithnewtpbyme2(KEY_WINPG.CFrame, 1)
                                task.wait(0.3)
                                fireproximityprompt(KEY_WINPG.Attachment.ProximityPrompt)
                            end
                        end
                    end)
                end
                task.wait(0.5)
            end
        end)
    end)()
    getgenv().TextStatus = "Getting Auto Farm"
    AutoPray = Tabs.Main:AddToggle("AutoPray", {Title = "Auto Pray", Default = Setting.AutoPray })
    coroutine.wrap(function()
        AutoPray:OnChanged(function()
            Setting.AutoPray = Options.AutoPray.Value
            while Setting.AutoPray do
                if Setting.AutoPray then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.PlayerGui.Menu.PowerList.Handle:FindFirstChild("Pray") and game:GetService("Players").LocalPlayer.PlayerGui.Menu.PowerList.Handle.Pray.Visible then
                            
                        else
                            if game:GetService("Players").LocalPlayer.PlayerGui.Menu.Windows.Inventory.Handle.Items.Lists.ScrollingFrame:FindFirstChild("Pray") and game:GetService("Players").LocalPlayer.PlayerGui.Menu.Windows.Inventory.Handle.Items.Lists.ScrollingFrame.Pray.Visible then
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Item"):FireServer("Pray")
                            end
                        end
                    end)
                end
                task.wait(0.5)
            end
        end)
    end)()
    getgenv().TextStatus = "Getting Storage"
    Tabs.Main:AddSection("Storage")
    AutoExtend = Tabs.Main:AddToggle("AutoExtend", {Title = "Auto Extend", Default = Setting.AutoExtend })
    coroutine.wrap(function()
        AutoExtend:OnChanged(function()
            Setting.AutoExtend = Options.AutoExtend.Value
            while Setting.AutoExtend do
                if Setting.AutoExtend then
                    pcall(function()
                        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Rolling"):InvokeServer("Extend")
                    end)
                end
                task.wait(0.5)
            end
        end)
    end)()
    Tabs.Main:AddSection("Craft")
    if Setting.AutoCraftWhat == nil then
        AutoCraftWhat = Tabs.Main:AddDropdown("AutoCraftWhat", {
            Title = "Select Weapon",
            Values = {"Water Gwa Gwa", "Murder Gwa Gwa", "Darkness Gwa Gwa", "Binary Gwa Gwa", "Planet Gwa Gwa"},
            Multi = false,
            Default = 1,
        })
        AutoCraftWhat:OnChanged(function(Value)
            Setting.AutoCraftWhat = tostring(Value)
        end)
    else
        MagicAPPEAR = Setting.AutoCraftWhat
        AutoCraftWhat = Tabs.Main:AddDropdown("AutoCraftWhat", {
            Title = "Select Weapon",
            Values = {"Water Gwa Gwa", "Murder Gwa Gwa", "Darkness Gwa Gwa", "Binary Gwa Gwa", "Planet Gwa Gwa"},
            Multi = false,
            Default = 1,
        })
        AutoCraftWhat:OnChanged(function(Value)
            Setting.AutoCraftWhat = tostring(Value)
        end)
        Setting.AutoCraftWhat = MagicAPPEAR
    end
    getgenv().TextStatus = "Crafting suck yo"
    AutoCraft = Tabs.Main:AddToggle("AutoCraft", {Title = "Auto Craft", Default = Setting.AutoCraft })
    coroutine.wrap(function()
        AutoCraft:OnChanged(function()
            Setting.AutoCraft = Options.AutoCraft.Value
            while Setting.AutoCraft do
                if Setting.AutoCraft then
                    pcall(function()
                        if Setting.AutoCraftWhat == "Water Gwa Gwa" then
                            if not game:GetService("Players").LocalPlayer.PlayerGui.Menu.Craft.Handle.Craft.Lists.ScrollingFrame["Binary Gwa Gwa"].Done.Visible then
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Craft"):FireServer("Craft")
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Craft"):FireServer("Button", "")
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Water Gwa Gwa", "Gwa Gwa")
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Water Gwa Gwa", "WATER")
                            end
                        elseif Setting.AutoCraftWhat == "Murder Gwa Gwa" then
                            if not game:GetService("Players").LocalPlayer.PlayerGui.Menu.Craft.Handle.Craft.Lists.ScrollingFrame["Murder Gwa Gwa"].Done.Visible then
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Craft"):FireServer("Craft")
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Craft"):FireServer("Button", "")
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Murder Gwa Gwa", "Gwa Gwa")
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Murder Gwa Gwa", "Murder")
                            end
                        elseif Setting.AutoCraftWhat == "Darkness Gwa Gwa" then
                            if not game:GetService("Players").LocalPlayer.PlayerGui.Menu.Craft.Handle.Craft.Lists.ScrollingFrame["Darkness Gwa Gwa"].Done.Visible then
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Craft"):FireServer("Craft")
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Craft"):FireServer("Button", "")
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Darkness Gwa Gwa", "Gwa Gwa")
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Darkness Gwa Gwa", "Darkness")
                            end
                        elseif Setting.AutoCraftWhat == "Binary Gwa Gwa" then
                            if not game:GetService("Players").LocalPlayer.PlayerGui.Menu.Craft.Handle.Craft.Lists.ScrollingFrame["Binary Gwa Gwa"].Done.Visible then
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Craft"):FireServer("Craft")
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Craft"):FireServer("Button", "")
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Binary Gwa Gwa", "Gwa Gwa")
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Binary Gwa Gwa", "BINARYX")
                            end
                        elseif Setting.AutoCraftWhat == "Planet Gwa Gwa" then
                            if not game:GetService("Players").LocalPlayer.PlayerGui.Menu.Craft.Handle.Craft.Lists.ScrollingFrame["Planet Gwa Gwa"].Done.Visible then
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Craft"):FireServer("Craft")
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Craft"):FireServer("Button", "")
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Planet Gwa Gwa", "Gwa Gwa")
                                game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Planet Gwa Gwa", "Planet")
                            end
                        end
                    end)
                end
                task.wait(0.5)
            end
        end)
    end)()
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


    Tabs.ESP:AddSection("ESP")
    ESPItems = Tabs.ESP:AddToggle("ESPItems", {Title = "Items", Default = Setting.ESPItems })
    coroutine.wrap(function()
        ESPItems:OnChanged(function()
            pcall(function()
                Setting.ESPItems = Options.ESPItems.Value
                if Options.ESPItems.Value then
                    while Options.ESPItems.Value do
                        for _, v in pairs(__VE["WS"].DroppedItems:GetChildren()) do
                            if v and (v.Name == "GwaGwa" or v.Name == "Pray") then
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
        Content = "9/4/2024\n# Player\n> Fixed All Bugs"
    })
    Tabs.ChangeLog:AddParagraph({
        Title = "Change Log",
        Content = "2/4/2024\n# Player\n> Added WalkSpeed\n> Added JumpPower\n> Added Fly\n> Added Float\n> Added Noclip# ESP\n> Added ESP Items"
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
    writefile("Setting/settingHEDERNG.json", serializedSetting)
end
task.wait(5)
finishload = true
getgenv().FinishLoad = true

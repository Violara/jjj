
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
    if isfolder("Setting") and not isfile("Setting/settingJujutsuChronicles.json") then
        print("no file")
        Setting = {
            AutoCollectItems = __Y[2],
            ESPItems = __Y[2],
        }
        allowtoserialized = __Y[1]
    elseif __U[49]("Setting") and __U[50]("Setting/settingJujutsuChronicles.json") then
        __U[1]("file")
        __U[23]()
        Setting = game.HttpService:JSONDecode(__U[51]("Setting/settingJujutsuChronicles.json"))
    end
else
    Setting = {
        AutoCollectItems = __Y[2],
        ESPItems = __Y[2],
    }
end
--Update Data Start
if rawget(Setting, "ESPItems") == nil then
    Setting = {
        AutoCollectItems = __Y[2],
        ESPItems = __Y[2],
    }
    if getgenv().Addons then
        allowtoserialized = __Y[1]
    end
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Script Data",
        Text = "Error at finding ESPItems.Value",
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
if getgenv().Addons then
    local function createTrail(ColorValue)
        character = __VE["LPs"].Character or __VE["LPs"].CharacterAdded:Wait()
        local part1X = __U[35]("Part")
        part1X.Size = __U[57](0, 0, 0)
        part1X.Transparency = 1
        part1X.Anchored = __Y[1]
        part1X.CanCollide = __Y[2]
        part1X.CanTouch = __Y[2]
        part1X.Parent = __VE["WS"]
        local attachment1 = __U[35]("Attachment")
        attachment1.Parent = part1X
        local leftHandAttachment = character:WaitForChild("Left Arm")
        local attachment2 = __U[35]("Attachment")
        attachment2.Parent = leftHandAttachment
        local trail = __U[35]("Trail")
        trail.Attachment0 = attachment1
        trail.Attachment1 = attachment2
        trail.Texture = "rbxassetid://0"
        blueKeypoint = ColorSequenceKeypoint.new(0, Color3.new(0, 0, 1))
        cyanKeypoint = ColorSequenceKeypoint.new(1, Color3.new(0, 1, 1))
        greenKeypoint = ColorSequenceKeypoint.new(0, Color3.new(0, 1, 0))
        lightGreenKeypoint = ColorSequenceKeypoint.new(1, Color3.new(0.5, 1, 0.5))
        pinkKeypoint = ColorSequenceKeypoint.new(0, Color3.new(1, 0.75, 0.8))
        redKeypoint = ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0))
        purpleKeypoint = ColorSequenceKeypoint.new(0, Color3.new(0.5, 0, 1))
        lightPurpleKeypoint = ColorSequenceKeypoint.new(1, Color3.new(0.8, 0.5, 1))
        if ColorValue == 1 then
            trail.Color = ColorSequence.new({blueKeypoint, cyanKeypoint})
        elseif ColorValue == 2 then
            trail.Color = ColorSequence.new({greenKeypoint, lightGreenKeypoint})
        elseif ColorValue == 3 then
            trail.Color = ColorSequence.new({pinkKeypoint, redKeypoint})
        elseif ColorValue == 4 then
            trail.Color = ColorSequence.new({purpleKeypoint, lightPurpleKeypoint})
        end
        trail.LightEmission = 1
        trail.LightInfluence = 1
        trail.Parent = part1X
        offset = __U[57](0, 0, 1)
        local function updatePartCFrame()
            if character:FindFirstChild("Left Arm") then
                local handCF = character["Left Arm"].CFrame
                local newCF = handCF * __U[26](offset)
                part1X.CFrame = newCF
            end
        end
        
        local heartbeatConnection2
        heartbeatConnection2 = game:GetService("RunService").Heartbeat:Connect(function()
            updatePartCFrame()
        end)
        local function cleanup2()
            if attachment1 then
                attachment1:Destroy()
            end
            if attachment2 then
                attachment2:Destroy()
            end
            if part1X then
                part1X:Destroy()
            end
            if heartbeatConnection2 then
                heartbeatConnection2:Disconnect()
            end
        end
        __VE["LPs"].CharacterRemoving:Connect(cleanup2)
        character = __VE["LPs"].Character or __VE["LPs"].CharacterAdded:Wait()
        local part2X = __U[35]("Part")
        part2X.Size = __U[57](0, 0, 0)
        part2X.Transparency = 1
        part2X.Anchored = __Y[1]
        part2X.CanCollide = __Y[2]
        part2X.CanTouch = __Y[2]
        part2X.Parent = workspace
        local attachment3 = __U[35]("Attachment")
        attachment3.Parent = part2X
        local rightHandAttachment = character:WaitForChild("Right Arm")
        local attachment4 = __U[35]("Attachment")
        attachment4.Parent = rightHandAttachment
        local trail = __U[35]("Trail")
        trail.Attachment0 = attachment3
        trail.Attachment1 = attachment4
        trail.Texture = "rbxassetid://0"
        blueKeypoint = ColorSequenceKeypoint.new(0, Color3.new(0, 0, 1))
        cyanKeypoint = ColorSequenceKeypoint.new(1, Color3.new(0, 1, 1))
        greenKeypoint = ColorSequenceKeypoint.new(0, Color3.new(0, 1, 0))
        lightGreenKeypoint = ColorSequenceKeypoint.new(1, Color3.new(0.5, 1, 0.5))
        pinkKeypoint = ColorSequenceKeypoint.new(0, Color3.new(1, 0.75, 0.8))
        redKeypoint = ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0))
        purpleKeypoint = ColorSequenceKeypoint.new(0, Color3.new(0.5, 0, 1))
        lightPurpleKeypoint = ColorSequenceKeypoint.new(1, Color3.new(0.8, 0.5, 1))
        if ColorValue == 1 then
        trail.Color = ColorSequence.new({blueKeypoint, cyanKeypoint})
        elseif ColorValue == 2 then
            trail.Color = ColorSequence.new({greenKeypoint, lightGreenKeypoint})
        elseif ColorValue == 3 then
            trail.Color = ColorSequence.new({pinkKeypoint, redKeypoint})
        elseif ColorValue == 4 then
            trail.Color = ColorSequence.new({purpleKeypoint, lightPurpleKeypoint})
        end
        trail.LightEmission = 1
        trail.LightInfluence = 1
        trail.Parent = part2X
        offset = __U[57](0, 0, 1)
        local function updatePartCFrame()
            if character:FindFirstChild("Right Arm") then
                local handCF = character["Right Arm"].CFrame
                local newCF = handCF * __U[26](offset)
                part2X.CFrame = newCF
            end
        end
        local heartbeatConnection
        heartbeatConnection = game:GetService("RunService").Heartbeat:Connect(function()
            updatePartCFrame()
        end)
        local function cleanup()
            if attachment1 then
                attachment1:Destroy()
            end
            if attachment2 then
                attachment2:Destroy()
            end
            if part2X then
                part2X:Destroy()
            end
            if heartbeatConnection then
                heartbeatConnection:Disconnect()
            end
        end
        
        __VE["LPs"].CharacterRemoving:Connect(cleanup)
    end
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
            Title = "Jujutsu Chronicles Script v.UP1FV",
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
    Player = Window:AddTab({ Title = "Player", Icon = "person-standing" }),
    ESP = Window:AddTab({ Title = "ESP", Icon = "inspect" }),
    ChangeLog = Window:AddTab({ Title = "ChangeLog", Icon = "book" }),
    Credits = Window:AddTab({ Title = "Credits", Icon = "book" }),
    Addons = Window:AddTab({ Title = "Addons", Icon = "gem" }),
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
    --getgenv().TextStatus
    --getgenv().LastFuntion
    getgenv().TextStatus = "Normal Load"
    getgenv().ScriptUpdateDate = "01/05/24"
    Tabs.Main:AddSection("Main")
    AutoCollectItems = Tabs.Main:AddToggle("AutoCollectItems", {Title = "Auto Collect Items", Default = Setting.AutoCollectItems })
    coroutine.wrap(function()
        pcall(function()
            AutoCollectItems:OnChanged(function()
                pcall(function()
                    Setting.AutoCollectItems = Options.AutoCollectItems.Value
                    while Setting.AutoCollectItems do task.wait(0.5)
                        getgenv().LastFuntion = "AutoCollectItems"
                        if Setting.AutoCollectItems then
                            for _, v in pairs(__VE["WS"]:GetChildren()) do
                                if v and Setting.AutoCollectItems then
                                    for _, a in pairs(v:GetChildren()) do
                                        if (a:FindFirstChild("Collect") or a:FindFirstChild("FalseCollect")) and (a.Position - Vector3.new(-927.2256469726562, 74.73796081542969, 501.1764221191406)).Magnitude < 3000 and Setting.AutoCollectItems then
                                            __VE["LPs"].Character.HumanoidRootPart.CFrame = a.CFrame
                                            task.wait(0.3)
                                            local Prox = a:FindFirstChild("Collect") or a:FindFirstChild("FalseCollect")
                                            if Prox ~= nil and Setting.AutoCollectItems then
                                                fireproximityprompt(Prox)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end)
        end)
    end)()
    ESPItems = Tabs.ESP:AddToggle("ESPItems", {Title = "ESPItems", Default = Setting.ESPItems })
    coroutine.wrap(function()
        pcall(function()
            ESPItems:OnChanged(function()
                pcall(function()
                    Setting.ESPItems = Options.ESPItems.Value
                    if Setting.ESPItems then
                        while Setting.ESPItems do task.wait(0.5)
                            getgenv().LastFuntion = "ESPItems"
                            if Setting.ESPItems then
                                for _, v in pairs(workspace:GetChildren()) do
                                    if v and Setting.ESPItems then
                                        for _, a in pairs(v:GetChildren()) do
                                            if (a:FindFirstChild("Collect") or a:FindFirstChild("FalseCollect")) and (a.Position - Vector3.new(-927.2256469726562, 74.73796081542969, 501.1764221191406)).Magnitude < 3000 and not v:FindFirstChild("TextLabelBillboard") then
                                                ESPSomething(v, v.Name)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    else
                        for _, v in pairs(workspace:GetChildren()) do
                            if v and not Setting.ESPItems then
                                for _, a in pairs(v:GetChildren()) do
                                    if (a:FindFirstChild("Collect") or a:FindFirstChild("FalseCollect")) and (a.Position - Vector3.new(-927.2256469726562, 74.73796081542969, 501.1764221191406)).Magnitude < 3000 then
                                        if v:FindFirstChild("TextLabelBillboard") then
                                            v.TextLabelBillboard:Destroy()
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end)
        end)
    end)()
    AntiAFK = Tabs.Player:AddToggle("AntiAFK", {Title = "Anti AFK", Default = __Y[2] })
    AntiAFK:OnChanged(function()
        AFK = Options.AntiAFK.Value
    end)
    coroutine.wrap(function()
        __VE["LPs"].Idled:connect(function()
            if AFK then
                __VE["VU"]:CaptureController()
                __VE["VU"]:ClickButton2(Vector2.new())
                task.wait(2)
            end
        end)
    end)()
    FloatT = Tabs.Player:AddToggle("FloatT", {Title = "Float", Default = __Y[2] })
    FloatT:OnChanged(function()
        getgenv().LastFuntion = "Float"
        Float = Options.FloatT.Value
    end)
    NoClipT = Tabs.Player:AddToggle("NoClipT", {Title = "Noclip", Default = __Y[2] })
    NoClipT:OnChanged(function()
        getgenv().LastFuntion = "NoClip"
        Noclip = Options.NoClipT.Value
    end)
    local FLysss = Tabs.Player:AddToggle("FLysss", {Title = "Fly", Default = __Y[2] })

    FLysss:OnChanged(function()
        getgenv().LastFuntion = "Fly"
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
            getgenv().LastFuntion = tostring("Changed Fly Speed" .. Value)
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
            getgenv().LastFuntion = tostring("Changed WalkSpeed" .. Value)
            WalkSpeedSet = Value
        end
    })

    WalkSpeedS:OnChanged(function(Value)
        getgenv().LastFuntion = tostring("Changed WalkSpeed" .. Value)
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
            getgenv().LastFuntion = tostring("Changed JumpPower" .. Value)
            JumpPowerSet = Value
        end
    })

    JumpPowerS:OnChanged(function(Value)
        getgenv().LastFuntion = tostring("Changed JumpPower" .. Value)
        JumpPowerSet = Value
    end)
    WalkSpeedT = Tabs.Player:AddToggle("WalkSpeedT", {Title = "Toggle WalkSpeed", Default = false })
    coroutine.wrap(function()
        WalkSpeedT:OnChanged(function()
            pcall(function()
                getgenv().LastFuntion = tostring("WalkSpeedRequest" .. Value)
                WalkSpeedRequest = Options.WalkSpeedT.Value
                __VE["LPs"].Character.Humanoid.WalkSpeed = WalkSpeedSet
            end)
        end)
    end)()
    JumpPowerT = Tabs.Player:AddToggle("JumpPowerT", {Title = "Toggle JumpPower", Default = false })
    coroutine.wrap(function()
        JumpPowerT:OnChanged(function()
            pcall(function()
                getgenv().LastFuntion = tostring("JumpPowerRequest" .. Value)
                JumpPowerRequest = Options.JumpPowerT.Value
            end)
        end)
    end)()


    Tabs.ESP:AddSection("ESP")
    Tabs.ChangeLog:AddParagraph({
        Title = "Change Log",
        Content = "Can't be show"
    })
    credits = {
        "Owner - ttjy.",
        "Co Owner - ttjy_",
        "Ui - dawid",
        "Key system - sa.l"
    }
    for i, v in __U[7](credits) do
        Tabs.Credits:AddButton({
            Title = v,
            Description = "",
            Callback = function()
                
            end
        })
        wait()
    end
    if getgenv().Addons then
        Tabs.Addons:AddButton({
            Title = "Save as config",
            Description = "",
            Callback = function()
                serializedSetting = game.HttpService:JSONEncode(Setting)
                writefile("Setting/settingJujutsuChronicles.json", serializedSetting)
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
        Tabs.Addons:AddSection("Nothing to hook")
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
    while task.wait(0.1) do        
        character = __VE["LPs"].Character
        if character and character:FindFirstChild("Humanoid") and WalkSpeedRequest and character.Humanoid.WalkSpeed ~= tonumber(WalkSpeedSet) then
            if WalkSpeedSignal then
                WalkSpeedSignal:Disconnect()
            end
            character.Humanoid.WalkSpeed = tonumber(WalkSpeedSet)
            WalkSpeedSignal = character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                character.Humanoid.WalkSpeed = tonumber(WalkSpeedSet)
            end)
        end
    end
end)()
game:GetService("RunService").Heartbeat:Connect(function()
    if __VE["LPs"].Character and __VE["LPs"].Character:FindFirstChild("Humanoid") and JumpPowerRequest then
        __VE["LPs"].Character.Humanoid.JumpPower = tonumber(JumpPowerSet)
    end
end)
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
    writefile("Setting/settingJujutsuChronicles.json", serializedSetting)
end
task.wait(5)
finishload = true
getgenv().FinishLoad = true

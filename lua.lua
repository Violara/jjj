repeat
    task.wait()
until game:IsLoaded()
__LUABLE = {
    ["Functions"] = loadstring(
        game:HttpGet("https://raw.githubusercontent.com/Yumiara/Asset/main/api.lua")
    )()
}
__U = {}
for a = 1, #__LUABLE["Functions"] do
    pcall(
        function()
            __U[a] = clonefunction(__LUABLE["Functions"][a])
        end
    )
end
__VE = {
    ["Ps"] = game:GetService("Players"),
    ["LPs"] = game:GetService("Players").LocalPlayer,
    ["PsG"] = game:GetService("Players").LocalPlayer.PlayerGui
}
local b = {
    ["_TTJY ASSET"] = __U[35]("ScreenGui"),
    ["_TTJY HUB"] = __U[35]("Frame"),
    ["_UIStroke"] = __U[35]("UIStroke"),
    ["_UICorner"] = __U[35]("UICorner"),
    ["_TextButton"] = __U[35]("TextButton"),
    ["_UIStroke1"] = __U[35]("UIStroke")
}
b["_TTJY ASSET"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
b["_TTJY ASSET"].Name = "TTJY ASSET"
b["_TTJY ASSET"].Parent = game:GetService("CoreGui")
b["_TTJY HUB"].BackgroundColor3 = Color3.fromRGB(56.0000042617321, 56.0000042617321, 56.0000042617321)
b["_TTJY HUB"].BackgroundTransparency = 0.4000000059604645
b["_TTJY HUB"].BorderColor3 = Color3.fromRGB(0, 0, 0)
b["_TTJY HUB"].BorderSizePixel = 0
b["_TTJY HUB"].Position = UDim2.new(0.4620000004, 0, -0.1, 0)
b["_TTJY HUB"].Size = UDim2.new(0.0700000003, 0, 0.100000001, 0)
b["_TTJY HUB"].ZIndex = 2
b["_TTJY HUB"].Name = "TTJY HUB"
b["_TTJY HUB"].Parent = b["_TTJY ASSET"]
b["_UIStroke"].LineJoinMode = Enum.LineJoinMode.Bevel
b["_UIStroke"].Thickness = 3
b["_UIStroke"].Parent = b["_TTJY HUB"]
b["_UICorner"].Parent = b["_TTJY HUB"]
b["_TextButton"].Font = Enum.Font.SourceSans
b["_TextButton"].Text = "TTJY HUB"
b["_TextButton"].TextColor3 = Color3.fromRGB(0, 255, 0)
b["_TextButton"].TextScaled = true
b["_TextButton"].TextSize = 14
b["_TextButton"].TextWrapped = true
b["_TextButton"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
b["_TextButton"].BackgroundTransparency = 1
b["_TextButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
b["_TextButton"].BorderSizePixel = 0
b["_TextButton"].Size = UDim2.new(1, 0, 1, 0)
b["_TextButton"].Parent = b["_TTJY HUB"]
b["_UIStroke1"].LineJoinMode = Enum.LineJoinMode.Bevel
b["_UIStroke1"].Parent = b["_TextButton"]
TTJYHUB = b["_TextButton"]
Fluent = __U[40](game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
SaveManager = __U[40](game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
InterfaceManager = __U[40](game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
__U[6](function()
    if Fluent and SaveManager and InterfaceManager then
        __U[1]("No Error")
    else
        Fluent = __U[40](game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
        SaveManager = __U[40](game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
        InterfaceManager =__U[40](game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
    end
end)
__X = {true, false, nil, 0, 1}
__Y = {}
for a = 1, #__X do
    __U[6](
        function()
            __Y[a] = __X[a]
        end
    )
end
__M = {2, 3, 5, 7, 11, 13, 17, 10}
__N = {}
for a = 1, #__M do
    __U[6](
        function()
            __N[a] = __M[a]
        end
    )
end
__VE["WS"], __VE["RuS"], __VE["RlS"] = game:GetService("Workspace"),  game:GetService("RunService"), game:GetService("ReplicatedStorage")
__VE["VIM"], __VE["UIS"] = game:GetService("VirtualInputManager"), game:GetService("UserInputService")
__VE["Lg"], __VE["TS"], __VE["GMos"] = game:GetService("Lighting"), game:GetService("TweenService"), game:GetService("Players").LocalPlayer:GetMouse()
__VE["VU"], __VE["CG"] = game:GetService("VirtualUser"), game:GetService("CoreGui")
__VE["HS"] = game:GetService("HttpService")
originalPositionofHum = __VE["LPs"] and __VE["LPs"].Character and __VE["LPs"].Character:FindFirstChild("HumanoidRootPart") and __VE["LPs"].Character.HumanoidRootPart.CFrame.Position
originalWalkSpeed = __VE["LPs"] and __VE["LPs"].Character and __VE["LPs"].Character.Humanoid.WalkSpeed
originalJumpPower = __VE["LPs"] and __VE["LPs"].Character and __VE["LPs"].Character.Humanoid.JumpPower
CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
FullPath, BALLGIVER, tailHitbox, LASEROFNAGISA, selectedObject, selectedIndex = __Y[3]
CustomFirePropmt, FLYING, NightMareMode = __Y[2]
matches = {}
FirstPressCook, FirstPressJigoku = __Y[1]
Order270 = __Y[3]
RegenerationAmount, RegenerationDelay, DeductionDelay, DeductionAmount, Speed = __Y[3]


Float = __Y[3]
Noclip = __Y[3]
cmdm = __VE["GMos"]
speedofthevfly = 1
speedofthefly = 1
Setting = nil
serializedSetting = nil
if not isfolder("Setting") then
    makefolder("Setting")
end
if isfolder("Setting") and not isfile("Setting/settingBABFT.json") then
    print("no file")
    Setting = {
		autofarming = __Y[2],
		stayatyvalue = 55,
		aspeed = 1000,
		antireport = __Y[2],
		waituntil = 15,
		CommonChest = __Y[2],
		UncommonChest = __Y[2],
		RareChest = __Y[2],
		EpicChest = __Y[2],
		LegendaryChest = __Y[2]
	}
    allowtoserialized = __Y[1]
elseif __U[49]("Setting") and __U[50]("Setting/settingBABFT.json") then
    __U[1]("file")
    __U[23]()
    Setting = game.HttpService:JSONDecode(__U[51]("Setting/settingBABFT.json"))
end
local c = {
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
    {Title = "UI", Content = "dawid"}
}
function tpwithnewtpbyme2(xyz,speedoftpNTP)
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
        currentPos = currentPos + direction * speedoftpNTP 
        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](currentPos)
        __U[23]()
    end
end
local Fluent = __U[40](game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = __U[40](game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = __U[40](game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local Window = Fluent:CreateWindow({
    Title = "Build a boat for teasure v.UP1PV",
    SubTitle = "by TTJY",
    TabWidth = 110,
    Size = UDim2.fromOffset(580, 400),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})
function OnFluentChange()
    if Window.Root.Visible then
        TTJYHUB.TextColor3 = __U[36](0, 255, 0)
    else
        TTJYHUB.TextColor3 = __U[36](255, 0, 0)
    end
end
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
	B1C1 = Window:AddTab({ Title = "B1C1", Icon = "" }),
	B1C2 = Window:AddTab({ Title = "B1C2", Icon = "" }),
	B1C3 = Window:AddTab({ Title = "B1C3", Icon = "settings" }),
    B1C4 = Window:AddTab({ Title = "B1C4", Icon = "settings" }),
    B2C1 = Window:AddTab({ Title = "B2C1", Icon = "settings" }),
    B2C2 = Window:AddTab({ Title = "B2C2", Icon = "settings" }),
    B2C3 = Window:AddTab({ Title = "B2C3", Icon = "settings" }),
    Settings = Window:AddTab({ Title = "UI Settings", Icon = "settings" })
}
function Notify(title, content, time)
	if title and not content then content = title; title = "Script Service" end
	Fluent:Notify({
		Title = title,
		Content = content,
		Duration = time or 5
	})
end
function CreatHighlight(obj, Color, OutlineColor)
    if not obj:FindFirstChild("Highlight") then
        local highlight = __U[35]("Highlight")
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.FillColor = Color
        highlight.FillTransparency = 0.25
        highlight.OutlineColor = OutlineColor
        highlight.Parent = obj
    end
end

__U[6](
    function()
        Window.Root:GetPropertyChangedSignal("Visible"):Connect(OnFluentChange)
    end
)
__U[6](
    function()
        function onButtonClick()
            Window.Minimized = not Window.Minimized
            Window.Root.Visible = not Window.Minimized
        end
        TTJYHUB.MouseButton1Click:Connect(onButtonClick)
    end
)

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

-- Create buttons for W, A, S, D
createButton("W", UDim2.new(0.05, 0, 0.1, 0))
task.wait(1)
createButton("A", UDim2.new(0, 0, 0.2, 0))
task.wait(1)
createButton("S", UDim2.new(0.05, 0, 0.3, 0))
task.wait(1)
createButton("D", UDim2.new(0.1, 0, 0.2, 0))
task.wait(1)
local Options = Fluent.Options
PlaceId = game.PlaceId
do
    Tabs.B1C1:AddSection("All In One")
    Tabs.B1C1:AddButton({
        Title = "Auto Win",
        Description = "",
        Callback = function()
            if PlaceId == 6296321810 or PlaceId == 6479231833 then
                Tp(3507, 37.65, -1539.45, nil)
            elseif  PlaceId == 6301638949 or PlaceId == 6480994221 then
                Tp(1274.95, 199.54, -2537.93, nil)
            else
                Notify("Error 02", "This is for chapter 1")
            end
        end
    })
    Tabs.B1C1:AddButton({
        Title = "ESP Monster",
        Description = "",
        Callback = function()
            if PlaceId == 6296321810 or PlaceId == 6479231833 then
                for _,v in pairs(__VE["WS"]:GetDescendants()) do
                    if v.Name == "AI" and v.Parent.Name == "GameAI" then
                        CreatHighlight(v, Color3.fromRGB(0, 1, 0), Color3.fromRGB(255, 255, 255))
                    end
                end
            elseif  PlaceId == 6301638949 or PlaceId == 6480994221 then
                for _,v in pairs(__VE["WS"]:GetDescendants()) do
                    if v.Name == "KurikoCeiling" and v.Parent.Name == "GameAI" or v.Name == "KurikoFloor" and v.Parent.Name == "GameAI" or v.Name == "Biwaki" and v.Parent.Name == "GameAI2" or v.Name == "realshizu" and v.Parent.Name == "GameAI2" then
                        CreatHighlight(v, Color3.fromRGB(0, 1, 0), Color3.fromRGB(255, 255, 255))
                    end
                end
            else
                Notify("Error 02", "This is for chapter 1")
            end
        end
    })
    Tabs.B1C1:AddSection("Jigoku")
    Tabs.B1C1:AddButton({
        Title = "Find Red Guy",
        Description = "Aka Manto",
        Callback = function()
            if __VE["WS"]:FindFirstChild("IdleNPC") then
                Notify("Error 00", "Found")
                Tp(310.32, 3.23, 323.65, 0.3)
                for i, v in ipairs(workspace.IdleNPC.HumanoidRootPart:GetDescendants()) do
                    if v:IsA("ProximityPrompt") then
                        fireproximityprompt(v)
                    end
                end
            else
                Notify("Error 00", "Not Found")
            end
        end
    })
    Tabs.B1C2:AddSection("All In One")
    Tabs.B1C2:AddButton({
        Title = "Auto Win",
        Description = "Aka Manto",
        Callback = function()
            if PlaceId == 6373539583 or PlaceId == 6485055338 then
                Tp(64.88, 55.28, -1590, nil)
            elseif PlaceId == 6406571212 or PlaceId == 6485055836 then
                Tp(235.17, 101.94, -590, nil)
            elseif PlaceId == 6425178683 or PlaceId == 6485056556 then
                Tp(829.97, 72.49, -353.46, nil)
            else
                Notify("Error 02", "This is for chapter 2")
            end
        end
    })
    Tabs.B1C2:AddButton({
        Title = "ESP Items",
        Description = "",
        Callback = function()
            if game.PlaceId == 6373539583 or game.PlaceId == 6485055338 then
                for _,v in pairs(__VE["WS"]:GetDescendants()) do
                    if v.Name == "Key1" or v.Name == "Butterfly" and v:FindFirstChild("ProxPart") and v:FindFirstChild("butterfly") then
                        CreatHighlight(v, Color3.fromRGB(0, 1, 0), Color3.fromRGB(255, 255, 255))
                    end
                end
            elseif game.PlaceId == 6406571212 or game.PlaceId == 6485055836 then
                for _,v in pairs(__VE["WS"]:GetDescendants()) do
                    if v.Name == "Key1" or v.Name == "Butterfly" and v:FindFirstChild("ProxPart") and v:FindFirstChild("butterfly") then
                        CreatHighlight(v, Color3.fromRGB(0, 1, 0), Color3.fromRGB(255, 255, 255))
                    end
                end
            elseif game.PlaceId == 6425178683 or game.PlaceId == 6485056556 then
                for _,v in pairs(__VE["WS"]:GetDescendants()) do
                    if v.Name == "Butterfly" and v:FindFirstChild("ProxPart") and v:FindFirstChild("butterfly") then
                        CreatHighlight(v, Color3.fromRGB(0, 1, 0), Color3.fromRGB(255, 255, 255))
                    end
                end
            else
                Notify("Error 02", "This is for chapter 2")
            end
        end
    })
    Tabs.B1C2:AddButton({
        Title = "ESP Monsters",
        Description = "",
        Callback = function()
            if game.PlaceId == 6373539583 or game.PlaceId == 6485055338 then
                for _,v in pairs(__VE["WS"]:GetDescendants()) do
                    if v.Name == "AI" and v.Parent.Name == "GameAI" or v.Name == "Kusonoki" and v.Parent.Name == "GameAI" then
                        CreatHighlight(v, Color3.fromRGB(0, 1, 0), Color3.fromRGB(255, 255, 255))
                    end
                end
            elseif  game.PlaceId == 6406571212 or game.PlaceId == 6485055836 then
                for _,v in pairs(__VE["WS"]:GetDescendants()) do
                    if v.Name == "AI" and v.Parent.Name == "GameAI" or v.Name == "AI" and v.Parent.Name == "GameAI2" then
                        CreatHighlight(v, Color3.fromRGB(0, 1, 0), Color3.fromRGB(255, 255, 255))
                    end
                end
            elseif  game.PlaceId == 6425178683 or game.PlaceId == 6485056556 then
                for _,v in pairs(__VE["WS"]:GetDescendants()) do
                    if v.Name == "AI" and v.Parent.Name == "GameAI" then
                        CreatHighlight(v, Color3.fromRGB(0, 1, 0), Color3.fromRGB(255, 255, 255))
                    end
                end
            else
                Notify("Error 02", "This is for chapter 3")
            end
        end
    })
    Tabs.B1C3:AddSection("All In One")
    Tabs.B1C3:AddButton({
        Title = "Auto Win",
        Description = "",
        Callback = function()
            if game.PlaceId == 6472459099 or game.PlaceId == 6688734180 then
                Tp(2411.93, -23.03, 2300, nil)
            elseif  game.PlaceId == 6682163754 or game.PlaceId == 6688734313 then
                Tp(245.69, 31.72, 450, nil)
            elseif  game.PlaceId == 6682164423 or game.PlaceId == 6688734395 then
                Tp(-651, 648.99, -1014.35, 5)
                Tp(-644.07, 947.82, -1490, nil)
            else
                Notify("Error 02", "This is for chapter 3")
            end
        end
    })
    Tabs.B1C3:AddButton({
        Title = "ESP Items",
        Description = "",
        Callback = function()
            if game.PlaceId == 6472459099 or game.PlaceId == 6688734180 then
                for _,v in pairs(__VE["WS"]:GetDescendants()) do
                    if v.Name == "Blade" or v.Name == "Butterfly" and v:FindFirstChild("ProxPart") and v:FindFirstChild("butterfly") then
                        CreatHighlight(v, Color3.fromRGB(0, 1, 0), Color3.fromRGB(255, 255, 255))
                    end
                end
            elseif  game.PlaceId == 6682163754 or game.PlaceId == 6688734313 then
                for _,v in pairs(__VE["WS"]:GetDescendants()) do
                    if v.Parent.Name == "Givers" or v.Name == "Rose" or v.Parent.Name == "BellFolder" then
                        CreatHighlight(v, Color3.fromRGB(0, 1, 0), Color3.fromRGB(255, 255, 255))
                    end
                end
            elseif  game.PlaceId == 6682164423 or game.PlaceId == 6688734395 then
                for _,v in pairs(__VE["WS"]:GetDescendants()) do
                    if v.Name == "Key1" or v.Name == "CodeDoor" then
                        CreatHighlight(v, Color3.fromRGB(0, 1, 0), Color3.fromRGB(255, 255, 255))
                    end
                end
            else
                Notify("Error 02", "This is for chapter 3")
            end
        end
    })
    Tabs.B1C3:AddButton({
        Title = "ESP Monsters",
        Description = "",
        Callback = function()
            if game.PlaceId == 6472459099 or game.PlaceId == 6688734180 then
                for _,v in pairs(__VE["WS"]:GetDescendants()) do
                    if v.Name == "kaito" and v.Parent.Name == "GameAI" then
                        CreatHighlight(v, Color3.fromRGB(0, 1, 0), Color3.fromRGB(255, 255, 255))
                    end
                end
            elseif  game.PlaceId == 6682163754 or game.PlaceId == 6688734313 then
                for _,v in pairs(__VE["WS"]:GetDescendants()) do
                    if v.Name == "AI" and v.Parent.Name == "GameAI" then
                        CreatHighlight(v, Color3.fromRGB(0, 1, 0), Color3.fromRGB(255, 255, 255))
                    end
                end
            elseif  game.PlaceId == 6682164423 or game.PlaceId == 6688734395 then
                for _,v in pairs(__VE["WS"]:GetDescendants()) do
                    if v.Name == "omukadeMAIN" then
                        CreatHighlight(v, Color3.fromRGB(0, 1, 0), Color3.fromRGB(255, 255, 255))
                    end
                end
            else
                Notify("Error 02", "This is for chapter 3")
            end
        end
    })
    Tabs.B1C4:Section("Map 1")
    Tabs.B1C4:AddButton({
        Title = "Auto Win",
        Description = "",
        Callback = function()
            Tp(91, -48.35, -1416.24, nil)
        end
    })
    Tabs.B1C4:AddButton({
        Title = "ESP Item",
        Description = "",
        Callback = function()
            for _,v in pairs(__VE["WS"]:GetDescendants()) do
                if v.Name == "Model" and v:FindFirstChild("DrawerScript") or v.Name == "Model" and v:FindFirstChild("ProxPart") and v:FindFirstChild("Handle") then
                    CreatHighlight(v, Color3.fromRGB(0, 1, 0), Color3.fromRGB(255, 255, 255))
                end
            end
        end
    })
    Tabs.B1C4:AddButton({
        Title = "ESP Monster",
        Description = "",
        Callback = function()
            for _,v in pairs(__VE["WS"]:GetDescendants()) do
                if v.Name == "Manq" and v.Parent.Name == "GameAI" then
                    CreatHighlight(v, Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 255, 255))
                end
            end
        end
    })
    Tabs.B1C4:Section("Map 2")
    Tabs.B1C4:AddButton({
        Title = "Auto Win",
        Description = "",
        Callback = function()
            if not CustomFirePropmt then
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Butterfly" then
                        Tp(v.Parent.Position.X, v.Parent.Position.Y, v.Parent.Position.Z, 0.3)
                        fireproximityprompt(v)
                    end
                end
            else
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Butterfly" then
                        Tp(v.Parent.Position.X, v.Parent.Position.Y + 1, v.Parent.Position.Z, 0.3)
                        fireproximitypromptv2(v, 1, true)
                    end
                end
            end
        end
    })
    Tabs.B1C4:AddButton({
        Title = "ESP Items",
        Description = "",
        Callback = function()
            for _,v in pairs(__VE["WS"]:GetDescendants()) do
                if v.Name == "Butterfly" and v.Parent.Name == "Butterflies" then
                    CreatHighlight(v, Color3.fromRGB(0, 1, 0), Color3.fromRGB(255, 255, 255))
                end
            end
        end
    })
    Tabs.B1C4:AddButton({
        Title = "ESP Monsters",
        Description = "",
        Callback = function()
            for _,v in pairs(__VE["WS"]:GetDescendants()) do
                if v.Parent.Name == "GameAI" then
                    CreatHighlight(v, Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 255, 255))
                end
            end
        end
    })
    Tabs.B1C4:Section("Map 3")
    Tabs.B1C4:AddButton({
        Title = "Auto Win",
        Description = "",
        Callback = function()
            if not CustomFirePropmt then
                Tp(665.63, 18.17, 2108.62, 0.3)
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                        fireproximityprompt(v)
                    end
                end
                task.wait()
                Tp(620.22, 17.87, 2340.73, 0.3)
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                        fireproximityprompt(v)
                    end
                end
                task.wait()
                Tp(756.75, 16.39, 2538.24, 0.3)
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                        fireproximityprompt(v)
                    end
                end
                task.wait()
                Tp(860.18, 24.85, 2548.28, 0.3)
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                        fireproximityprompt(v)
                    end
                end
                task.wait()
                Tp(855.96, 15.47, 2388.36, 0.3)
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                        fireproximityprompt(v)
                    end
                end
                task.wait()
                Tp(836.29, 19.01, 2247.34, 0.3)
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                        fireproximityprompt(v)
                    end
                end
                task.wait()
                Tp(688.41, 28.37, 2251.57, 0.3)
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                        fireproximityprompt(v)
                        fireproximityprompt(v)
                        fireproximityprompt(v)
                        fireproximityprompt(v)
                        fireproximityprompt(v)
                        fireproximityprompt(v)
                    end
                end
            else
                Tp(665.63, 18.17, 2108.62, 0.3)
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                        fireproximitypromptv2(v, 1, true)
                    end
                end
                task.wait()
                Tp(620.22, 17.87, 2340.73, 0.3)
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                        fireproximitypromptv2(v, 1, true)
                    end
                end
                task.wait()
                Tp(756.75, 16.39, 2538.24, 0.3)
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                        fireproximitypromptv2(v, 1, true)
                    end
                end
                task.wait()
                Tp(860.18, 24.85, 2548.28, 0.3)
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                        fireproximitypromptv2(v, 1, true)
                    end
                end
                task.wait()
                Tp(855.96, 15.47, 2388.36, 0.3)
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                        fireproximitypromptv2(v, 1, true)
                    end
                end
                task.wait()
                Tp(836.29, 19.01, 2247.34, 0.3)
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                        fireproximitypromptv2(v, 1, true)
                    end
                end
                task.wait()
                Tp(688.41, 28.37, 2251.57, 0.3)
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                        fireproximitypromptv2(v, 1, true)
                        fireproximitypromptv2(v, 1, true)
                        fireproximitypromptv2(v, 1, true)
                        fireproximitypromptv2(v, 1, true)
                        fireproximitypromptv2(v, 1, true)
                    end
                end
            end
        end
    })
    Tabs.B1C4:AddButton({
        Title = "ESP Items",
        Description = "",
        Callback = function()
            for _,v in pairs(__VE["WS"]:GetDescendants()) do
                if v.Name == "Model" and v:FindFirstChild("Spirit") and v:FindFirstChild("Spirit"):FindFirstChild("Handle") or v.Parent.Name == "PuzzleItems" or v.Name == "Key" then
                    CreatHighlight(v, Color3.fromRGB(0, 1, 0), Color3.fromRGB(255, 255, 255))
                end
            end
        end
    })
    Tabs.B1C4:AddButton({
        Title = "ESP Monsters",
        Description = "",
        Callback = function()
            for _,v in pairs(__VE["WS"]:GetDescendants()) do
                if v.Parent.Name == "GameAI" then
                    CreatHighlight(v, Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 255, 255))
                end
            end
        end
    })
    Tabs.B1C4:AddSection("Map 4")
    Tabs.B1C4:AddButton({
        Title = "Auto Kill Sama",
        Description = "",
        Callback = function()
            for i,v in pairs(__VE["WS"].GameHearts:GetChildren()) do
                repeat
                    if __VE["WS"].Camera.FieldOfView > 71 then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = CFrame.new(2823, 155, 2490)
                    else
                    if not __VE["LPs"].Character:FindFirstChild("Katana") then
                        __VE["LPs"].Backpack.Katana.Parent = __VE["LPs"].Character
                    end
                    task.wait()
                    if string.sub(tostring(v.Root.CFrame.Position),1,2) == "32" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = CFrame.new(3209, 132, 2193)
                    elseif string.sub(tostring(v.Root.CFrame.Position),1,2) == "25" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = CFrame.new(2589, 132, 2408)
                    elseif string.sub(tostring(v.Root.CFrame.Position),1,2) == "28" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = CFrame.new(2802, 115, 2418)
                    end
                    repeat
                        if string.sub(tostring(v.Root.CFrame.Position),1,2) == "32" then
                            __VE["WS"].Camera.CFrame = CFrame.new(3209.01807, 133.388229, 2192.93799, 0.959981084, -0.139965221, -0.242582455, 0.00294077187, 0.871154189, -0.491000861, 0.280049741, 0.470638156, 0.836703002)
                        elseif string.sub(tostring(v.Root.CFrame.Position),1,2) == "25" then
                            __VE["WS"].Camera.CFrame = CFrame.new(2589.01733, 133.500214, 2408.00513, -0.252294064, -0.260695487, -0.93187207, -0.00756763248, 0.963527501, -0.267502367, 0.967621028, -0.060437195, -0.245065123)
                        elseif string.sub(tostring(v.Root.CFrame.Position),1,2) == "28" then
                            __VE["WS"].Camera.CFrame = CFrame.new(2802.03345, 116.452713, 2417.99463, 0.152567074, -0.359060764, -0.920759797, 0.00740486849, 0.932055831, -0.362238824, 0.988265336, 0.0484476127, 0.144859836)
                        end
                        task.wait()
                        __VE["LPs"].Character.Katana:Activate()
                        if v:FindFirstChild("Destroyed") then
                            break
                        end
                    until __VE["WS"].Camera.FieldOfView > 71
                end
                    task.wait()
                until v:FindFirstChild("Destroyed")
            end
        end
    })
    Tabs.B1C4:AddButton({
        Title = "ESP Hearts",
        Description = "",
        Callback = function()
            for _,v in pairs(__VE["WS"]:GetDescendants()) do
                if v.Name == "Heart" then
                    CreatHighlight(v, Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 255, 255))
                end
            end
        end
    })
    Tabs.B1C4:AddButton({
        Title = "ESP Monsters",
        Description = "",
        Callback = function()
            for _,v in pairs(__VE["WS"]:GetDescendants()) do
                if v.Parent.Name == "GameAI" or v.Name == "Saigomo" then
                    CreatHighlight(v, Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 255, 255))
                end
            end
        end
    })
    --End Of B1
    Tabs.B2C1:AddSection("Start")
    Tabs.B2C1:AddButton({
        Title = "Auto Win",
        Description = "Normal Mode Only | First section",
        Callback = function()
            Tp(-1783.60474, 11.0083055, -4297.72168, nil)
        end
    })
    Tabs.B2C1:AddSection("Rio & Mio")
    Tabs.B2C1:AddButton({
        Title = "Read Book",
        Description = "",
        Callback = function()
            if not CustomFirePropmt then
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Interact" and v.Parent.Parent.Name == "Book" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 5, v.Parent.Position.Z)
                        MagicLook(v.Parent, false)
                        task.wait(0.3)
                        fireproximityprompt(v)
                        MagicLook(nil, true)
                    end
                end
            else
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Interact" and v.Parent.Parent.Name == "Book" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 5, v.Parent.Position.Z)
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                    end
                end
            end
        end
    })
    Tabs.B2C1:AddButton({
        Title = "Auto Win",
        Description = "",
        Callback = function()
            if not CustomFirePropmt then
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Cube" and v.Parent.MeshId == "https://assetdelivery.roblox.com/v1/asset/?id=8569135676"  then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        v.HoldDuration = 0
                        task.wait(0.3)
                        fireproximityprompt(v)
                        break
                    end
                end
                task.wait()
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.ObjectText == "Old Well" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        v.HoldDuration = 0
                        task.wait(0.3)
                        fireproximityprompt(v)
                        break
                    end
                end
                Notify("Script", "Wait", 5)
                task.wait(5)
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.ObjectText == "Bell" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        v.HoldDuration = 0
                        task.wait(0.3)
                        fireproximityprompt(v)
                        break
                    end
                end
                Fluent:Notify({
                    Title = "Error 00",
                    Content = "Press Auto Win again",
                    Duration = 5
                })
            else
                getgenv().Float = true
                for _,v in pairs(__VE["LPs"].Character:GetDescendants()) do
                    if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                        v.CanCollide = false
                    end
                end
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Cube" and v.Parent.MeshId == "https://assetdelivery.roblox.com/v1/asset/?id=8569135676"  then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 2, v.Parent.Position.Z)
                        MagicLook(v.Parent, false)
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        MagicLook(v.Parent, true)
                        break
                    end
                end
                task.wait()
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.ObjectText == "Old Well" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 3, v.Parent.Position.Z)
                        MagicLook(v.Parent, false)
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        MagicLook(v.Parent, true)
                        break
                    end
                end
                Fluent:Notify({
                    Title = "Error 00",
                    Content = "Wait",
                    Duration = 5
                })
                task.wait(5)
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.ObjectText == "Bell" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 10, v.Parent.Position.Z)
                        MagicLook(v.Parent, false)
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait(0.3)
                        MagicLook(v.Parent, true)
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        break
                    end
                end
                task.wait()
                Fluent:Notify({
                    Title = "Error 00",
                    Content = "Press Auto Win again",
                    Duration = 5
                })
                getgenv().Float = false
                for _,v in pairs(__VE["LPs"].Character:GetDescendants()) do
                    if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                        v.CanCollide = true
                    end
                end
            end
        end
    })
    Tabs.B2C1:AddButton({
        Title = "Escape",
        Description = "",
        Callback = function()
            if not CustomFirePropmt then
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.ActionText == "Exit" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        break
                    end
                end
            else
                getgenv().Float = true
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.ActionText == "Exit" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 3, v.Parent.Position.Z)
                        MagicLook(v.Parent, false)
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        MagicLook(v.Parent, true)
                        break
                    end
                end
                task.wait()
                getgenv().Float = false
            end
        end
    })
    Tabs.B2C1:AddButton({
        Title = "Escape",
        Description = "",
        Callback = function()
            if not CustomFirePropmt then
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.ActionText == "Exit" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        break
                    end
                end
            else
                getgenv().Float = true
                for i, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.ActionText == "Exit" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 3, v.Parent.Position.Z)
                        MagicLook(v.Parent, false)
                        task.wait(0.3)
                        fireproximitypromptv2(v, 1, true)
                        task.wait()
                        MagicLook(v.Parent, true)
                        break
                    end
                end
                task.wait()
                getgenv().Float = false
            end
        end
    })
    Tabs.B2C1:AddButton({
        Title = "Auto Run",
        Description = "",
        Callback = function()
            TweenBIGO(1, -960.842529, -44.0736237, -3597.06372)
        end
    })
    Tabs.B2C1:AddSection("Nagisa")
    Tabs.B2C1:AddButton({
        Title = "Auto Win",
        Description = "",
        Callback = function()
            getgenv().Float = true
            TweenBIGO(1, 208.665894, 573.239563, -345.685211)
            task.wait(3)
            TweenBIGO(1, 595.243896, 582.230713, -344.577911)
            task.wait(1)
            getgenv().Float = false
        end
    })
    Tabs.B2C1:AddButton({
        Title = "Auto Run",
        Description = "",
        Callback = function()
            TweenBIGO(1, 3868.31982, 153.007477, 17.1698914)
            task.wait()
        end
    })
    Tabs.B2C1:AddSection("Village")
    Tabs.B2C1:AddButton({
        Title = "Enter Zone",
        Description = "",
        Callback = function()
            TweenBIGO(1, 4590.5249, 507.557373, 4480.6499)
            task.wait()
        end
    })
    Tabs.B2C1:AddButton({
        Title = "Talk",
        Description = "",
        Callback = function()
            Window.Minimized = not Window.Minimized
            Window.Root.Visible = not Window.Minimized
            for _,v in pairs(__VE["LPs"].Character:GetDescendants()) do
                if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                    v.CanCollide = false
                end
            end
            if not TalkDebounce then 
                if __VE["LPs"].Character then 
                    if __VE["LPs"].Character:FindFirstChild('HumanoidRootPart') then 
                        TalkDebounce = true
                        Tp(-326.344421, 23.1051254, 3662.32056, 0.28)
                        for Index, v in ipairs(__VE["WS"]:GetDescendants()) do 
                            if v:IsA("ProximityPrompt") and v.Parent.Name == "Quest" then 
                                v.HoldDuration = 0
                                fireproximityprompt(v)
                            end 
                        end 
                        for i = 1,200 do 
                            VirtualUser:ClickButton1(Vector2.new(0,0))
                            task.wait(0.001)
                        end 
                        TalkDebounce = false
                        Window.Minimized = not Window.Minimized
                        Window.Root.Visible = not Window.Minimized
                        for _,v in pairs(__VE["LPs"].Character:GetDescendants()) do
                            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                                v.CanCollide = true
                            end
                        end
                    end 
                end 
            end
            task.wait()
        end
    })
    Tabs.B2C1:AddButton({
        Title = "Get Key",
        Description = "",
        Callback = function()
            Tp(-401.797424, 3070.25, 3864.77979, 1)
            for i, v in pairs(__VE["WS"]:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.ActionText == "Obtain" and v.Parent.Name == "Key1" then
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                end
            end
        end
    })
    Tabs.B2C1:AddButton({
        Title = "Paint",
        Description = "",
        Callback = function()
            Tp(-249.45462, 3067.58838, 4218.84766, nil)
        end
    })
    Tabs.B2C1:AddButton({
        Title = "Paint",
        Description = "",
        Callback = function()
            pic4 = {}
            Tp(-267.697571, 3070.85718, 4213.41504, 2)
            Tp(590.236572, 3070.94922, 4420.93457, 2)
            Tp(-675.159424, 3071.0813, 4998.77686, 2)
            Tp(-392.277039, 3071.03931, 3888.39697, 2)
            Tp(-10.6637068, 3070.17041, 4711.52637, 2)
            for _,v in pairs(workspace:GetDescendants()) do
                if v.Name == "hintpic" and v:FindFirstChild("Image") then
                    table.insert(pic4, v.Image.Decal.Texture)
                    wait()
                end
            end
            task.wait(1)
            for _,v in pairs(workspace:GetDescendants()) do
                if v.Name == "specialpic" and v:FindFirstChild("Image") then
                    table.insert(pic4, v.Image.Decal.Texture)
                    wait()
                end
            end
        end
    })
    Tabs.B2C1:AddButton({
        Title = "Enter Room",
        Description = "",
        Callback = function()
            for _,v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent.Name == "Teleporter" and v.ActionText == "Enter" and v.Parent.Parent.Name == "Enter" and v.Parent.Parent.Parent.Name == "MainHouse" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    v.HoldDuration = 0
                    wait(0.3)
                    fireproximityprompt(v)
                end
            end
        end
    })
    Tabs.B2C1:AddButton({
        Title = "Auto Win",
        Description = "",
        Callback = function()
            for _, v in pairs(workspace:GetDescendants()) do
                if v.Name == "Orb" and v.Parent.Name == "Seishin" and v.Transparency == 0 then
                    for _, v in pairs(workspace:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent.Name == "Orb" then
                            v.HoldDuration = 0
                            Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y, v.Parent.CFrame.Position.Z, nil)
                            fireproximityprompt(v)
                        end
                    end
                else
                    for _, v in pairs(workspace:GetDescendants()) do
                        if string.match(v.Name, "%d") and v:FindFirstChild("Image") and table.find(pic4, v.Image.Decal.Texture) then
                            table.insert(listofcandle, v.Name)
                        end
                    end
                    task.wait(2)
                    for _, v in pairs(workspace:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent.Name == "Wax" and table.find(listofcandle, v.Parent.Parent.Parent.Name) then
                            v.HoldDuration = 0
                            Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y, v.Parent.CFrame.Position.Z, 0.3)
                            fireproximityprompt(v)
                        end
                    end
                    task.wait()
                    for _, v in pairs(workspace:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent.Name == "Orb" then
                            v.HoldDuration = 0
                            Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y, v.Parent.CFrame.Position.Z, 0.3)
                            fireproximityprompt(v)
                        end
                    end
                    Tp(-326.344421, 23.1051254, 3662.32056, 0.28)
                    for Index, v in ipairs(game:GetService("Workspace"):GetDescendants()) do 
                        if v:IsA("ProximityPrompt") and v.Parent.Name == "Quest" then 
                            v.HoldDuration = 0
                            fireproximityprompt(v)
                        end 
                    end
                end
                task.wait()
                break
            end
        end
    })
    Tabs.B2C1:AddSection("Ship")
    Tabs.B2C1:AddButton({
        Title = "Enter Zone",
        Description = "",
        Callback = function()
            Tp(-1250,4,6299.65, nil)
        end
    })
    Tabs.B2C1:AddButton({
        Title = "Auto Run",
        Description = "",
        Callback = function()
            Tp(-6318.51611, 418.696014, 6332.396, nil)
        end
    })

    Tabs.B2C2:AddSection("Start")
    Tabs.B2C2:AddButton({
        Title = "Auto Win",
        Description = "",
        Callback = function()
            for _, v in pairs(__VE["WS"]:GetDescendants()) do
                if v:IsA("TouchTransmitter") or v:IsA("TouchInterest") then
                    firetouchinterest(__VE["LPs"].Character.HumanoidRootPart or player.Character.Torso, v:FindFirstAncestorWhichIsA("Part"), 0)
                end
            end
            task.wait()
            TweenBIGO(1, -520, 30, -87.29, 2)
            Notify("Error 00", "Bypassing...")
            __VE["LPs"].Character.HumanoidRootPart.Anchored = true
            Tp(-520, 30, -87.2, 30)
            __VE["LPs"].Character.HumanoidRootPart.Anchored = false
            task.wait()
            Tp(-551, 30, -87.29, nil)
            Notify("Error 00", "Done")
        end
    })
    Tabs.B2C2:AddSection("Someone Eat Cow")
    Tabs.B2C2:AddButton({
        Title = "Auto Win",
        Description = "",
        Callback = function()
            Float = true
            for i, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "ProxDoorA" then
                    v.HoldDuration = 0
                    Tp(-3576.7,602.74,886.94, 1)
                    fireproximityprompt(v)
                    task.wait(1)
                    break
                end
            end
            task.wait()
            for i, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "ProxDoorB" then
                    Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y + 5, v.Parent.CFrame.Position.Z, 0.3)
                    task.wait(0.3)
                    fireproximityprompt(v)
                    task.wait(0.3)
                    Tp(-3393, 576, 887, 0.3)
                    break
                end
            end
            Float = true
            char.HumanoidRootPart.Anchored = true
            Tp(-3952.85, 700, 317.7, nil)
            local screenGui = Instance.new("ScreenGui")
            screenGui.Parent = __VE["PsG"]
        
            local frame = Instance.new("Frame")
            frame.BackgroundTransparency = 1 
            frame.Size = UDim2.new(1, 0, 0.3, 0)
            frame.Position = UDim2.new(0.5, 0, 0.5, 0) 
            frame.Parent = screenGui
        
            local textLabel = Instance.new("TextLabel")
            textLabel.BackgroundTransparency = 1 
            textLabel.Size = UDim2.new(0.1, 0, 0.1, 0)
            textLabel.TextColor3 = Color3.fromRGB(0, 255, 0) 
            textLabel.TextSize = 70
            textLabel.Parent = frame
            if _G.DeviceType == "Mobile" then
                for i = 70, 0, -1 do
                    textLabel.TextSize = 30
                    textLabel.Text = "Waiting For Bypass Anti-Cheat : " .. tostring(i) 
                    task.wait(1) 
                end
            else
                for i = 70, 0, -1 do
                    textLabel.TextSize = 70
                    textLabel.Text = "Waiting For Bypass Anti-Cheat : " .. tostring(i) 
                    task.wait(1) 
                end
            end
            task.wait()
            screenGui:Destroy()
            char.HumanoidRootPart.Anchored = false
            Float = false
            task.wait()
            for i, v in pairs(Workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "TeleportDoor" then
                    v.HoldDuration = 0
                    Tp(-3952.85, 594.22, 317.7, 1)
                    task.wait(0.3)
                    fireproximityprompt(v)
                end
            end
        end
    })
    Tabs.B2C2:AddSection("Meat")
    Tabs.B2C2:AddButton({
        Title = "Auto Win",
        Description = "",
        Callback = function()
            Window.Minimized = false
            Window.Root.Visible = false
            if not TalkDebounce then 
                if __VE["LPs"].Character then 
                    if __VE["LPs"].Character:FindFirstChild('HumanoidRootPart') then 
                        TalkDebounce = true
                        Tp(-4443, 711, 1164, 0.28)
                        for Index, v in ipairs(__VE["WS"]:GetDescendants()) do 
                            if v.Name == "NoppeNPC" then 
                                local Prompt = v.RootPart:FindFirstChildOfClass('ProximityPrompt')
                                fireproximityprompt(Prompt, 1)
                            end 
                        end 
                        for i = 1,90 do 
                            VirtualUser:ClickButton1(Vector2.new(0,0))
                            task.wait(0.001)
                        end 
                        TalkDebounce = false
                        Window.Minimized = true
                        Window.Root.Visible = true
                    end 
                end 
            end
            task.wait()
        end
    })
    Tabs.B2C2:AddSection("Meat")
    Tabs.B2C2:AddButton({
        Title = "Auto Talk",
        Description = "",
        Callback = function()
            Window.Minimized = false
            Window.Root.Visible = false
            if not TalkDebounce then 
                if __VE["LPs"].Character then 
                    if __VE["LPs"].Character:FindFirstChild('HumanoidRootPart') then 
                        TalkDebounce = true
                        Tp(-4443, 711, 1164, 0.28)
                        for Index, v in ipairs(__VE["WS"]:GetDescendants()) do 
                            if v.Name == "NoppeNPC" then 
                                local Prompt = v.RootPart:FindFirstChildOfClass('ProximityPrompt')
                                fireproximityprompt(Prompt, 1)
                            end 
                        end 
                        for i = 1,90 do 
                            VirtualUser:ClickButton1(Vector2.new(0,0))
                            task.wait(0.001)
                        end 
                        TalkDebounce = false
                        Window.Minimized = true
                        Window.Root.Visible = true
                    end 
                end 
            end
            task.wait()
        end
    })
    Tabs.B2C2:AddButton({
        Title = "Auto Win",
        Description = "Not work in nightmare mode | Look down",
        Callback = function()
            if __VE["LPs"].Character then 
                Float = true
                for _,v in pairs(__VE["LPs"].Character:GetDescendants()) do
                    if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                        v.CanCollide = false
                    end
                end
                task.wait()
                if __VE["LPs"].Character:FindFirstChild('HumanoidRootPart') then 
                    if not FirstPress then 
                        FirstPress = true 
                        __VE["LPs"].Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-4443, 711, 1164)
                        task.wait(0.5)
                        __VE["LPs"].Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-4443, 711, 1264)
                        task.wait(0.5)
                        __VE["LPs"].Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-4443, 711, 1114)
                        task.wait(0.5)
                        __VE["LPs"].Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-4443, 711, 1164)
                        task.wait(0.5)
                        return
                    end 
                    MeatDebounce = true     
                    local IsGot = false 
                    local Pick = 0 
                    local Found = 0
                    task.wait(0.15)
                    for Index, AllGui in ipairs(__VE["PsG"]:GetDescendants()) do 
                        if AllGui.ClassName == 'ImageLabel' and AllGui.Image == "rbxassetid://13372546132" then 
                            local Target = nil
                            for i,v in ipairs(__VE["WS"]:GetDescendants()) do
                                if v.ClassName == "Model" and v.Name == "DoorTele" then
                                    Target = v
                                end
                            end
                            if Target then 
                                __VE["LPs"].Character:FindFirstChild('HumanoidRootPart').CFrame = Target.Frame.CFrame
                                task.wait(0.8)
                                for Index, v in ipairs(Target:GetChildren()) do
                                    if v.Name == "DoorFrame" then 
                                        local Prompt = v:FindFirstChildOfClass('ProximityPrompt') or nil
                                        if Prompt then 
                                            fireproximityprompt(Prompt, 1)
                                        end 
                                    end
                                end
                                task.wait()
                                .Float = false
                                for _,v in pairs(__VE["LPs"].Character:GetDescendants()) do
                                    if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                                        v.CanCollide = true
                                    end
                                end
                                task.wait()
                                return
                            end 
                        end 
                    end
                    if not Backpack:FindFirstChild("Bowl") and not __VE["LPs"].Character:FindFirstChild("Bowl") then
                        Tp(-4318, 700, 1313, 1)
                        for Index, v in ipairs(__VE["WS"]:GetDescendants()) do 
                            if v.Name == "BowlGiver" then 
                                if IsGot == true then 
                                    break
                                end
                                if v and v:FindFirstChild('Prompt') and v:FindFirstChild('Prompt'):FindFirstChildOfClass('ProximityPrompt') then
                                    local Prompt = v:FindFirstChild('Prompt'):FindFirstChildOfClass('ProximityPrompt') or nil 
                                    if Prompt then 
                                        __VE["LPs"].Character:FindFirstChild('HumanoidRootPart').CFrame = Prompt.Parent.CFrame
                                        task.wait(0.28)
                                        fireproximityprompt(Prompt, 1)
                                        fireproximitypromptv2(Prompt, 1, true)
                                        task.wait()
                                        if IsGot == false then 
                                            IsGot = true 
                                        end 
                                    end
                                else
                                    Tp(-4600, 700, 1004, 1)
                                    for Index, v in ipairs(__VE["WS"]:GetDescendants()) do 
                                        if v.Name == "BowlGiver" then 
                                            if IsGot == true then 
                                                break
                                            end
                                            if v and v:FindFirstChild('Prompt') and v:FindFirstChild('Prompt'):FindFirstChildOfClass('ProximityPrompt') then
                                                local Prompt = v:FindFirstChild('Prompt'):FindFirstChildOfClass('ProximityPrompt') or nil 
                                                if Prompt then 
                                                    __VE["LPs"].Character:FindFirstChild('HumanoidRootPart').CFrame = Prompt.Parent.CFrame
                                                    task.wait(0.28)
                                                    fireproximityprompt(Prompt, 1)
                                                    fireproximitypromptv2(Prompt, 1, true)
                                                    task.wait()
                                                    if IsGot == false then 
                                                        IsGot = true 
                                                    end 
                                                end
                                            end
                                        end
                                    end
                                end 
                            end 
                            task.wait(0.30)
                        end
                        task.wait(1)
                        for i,v in ipairs(__VE["WS"]:GetDescendants()) do
                            if v.ClassName == "Folder" and v.Name == "Meat" then
                                    for Index, AllMeats in ipairs(v:GetChildren()) do
                                        if Pick >= 3 then 
                                            break 
                                        end
                                        if AllMeats and AllMeats:FindFirstChildOfClass('ProximityPrompt') and AllMeats:FindFirstChildOfClass('ProximityPrompt').Enabled and AllMeats.Transparency ~= 1 then 
                                            local Prompt = AllMeats:FindFirstChildOfClass('ProximityPrompt')
                                            char:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(Prompt.Parent.CFrame.Position.X, Prompt.Parent.CFrame.Position.Y + 3, Prompt.Parent.CFrame.Position.Z)
                                            task.wait(0.84)
                                            fireproximitypromptv2(Prompt, 1, false)
                                            task.wait(0.43)
                                            fireproximitypromptv2(Prompt, 1, false)
                                            task.wait(1.58)
                                            Pick = Pick + 1
                                        end 
                                    end 
                                end  
                            end
                            Notify("Bypassing", "Don't move", 11)
                            task.wait(11)
                            Tp(-4443, 711, 1164, nil)
                            task.wait(0.3)
                            for Index, v in ipairs(game:GetService("Workspace"):GetDescendants()) do 
                                if v.Name == "NoppeNPC" then 
                                    local Prompt = v.RootPart:FindFirstChildOfClass('ProximityPrompt')
                                    fireproximityprompt(Prompt, 1)
                                end 
                            end  
                            MeatDebounce = false
                            task.wait()
                            Float = false
                            for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                                if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                                    v.CanCollide = true
                                end
                            end
                        end 
                    end
                task.wait()
            end
        end
    })
    Tabs.B2C2:AddSection("Chase")
    Tabs.B2C2:AddButton({
        Title = "Enter Zone",
        Description = "",
        Callback = function()
            Float = false
            Tp(-4590, 843.64, -35.54, nil)
        end
    })
    Tabs.B2C2:AddButton({
        Title = "Auto Run",
        Description = "",
        Callback = function()
            Float = false
            TweenBIGO(5, -5364, 682.12, 29.63)
        end
    })
    Tabs.B2C2:AddButton({
        Title = "Full Auto Run",
        Description = "",
        Callback = function()
            Float = false
            Tp(-4590, 843.64, -35.54, 10)
            TweenBIGO(5, -5364, 682.12, 29.63)
        end
    })
    Tabs.B2C2:AddSection("Levers")
    Tabs.B2C2:AddButton({
        Title = "Enter Zone",
        Description = "",
        Callback = function()
            Float = false
            Tp(-11035, -81.4, -12.56, nil)
        end
    })
    Tabs.B2C2:AddButton({
        Title = "Auto Win",
        Description = "",
        Callback = function()
            Float = false
            for i, v in pairs(__VE["WS"]:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Lever" then
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    v.HoldDuration = 0
                    task.wait(0.3)
                    fireproximityprompt(v)
                end
            end
            task.wait(6)
            Tp(-10060, 484.1, -9.52, nil)
        end
    })
    Tabs.B2C2:AddButton({
        Title = "Full Auto Win",
        Description = "",
        Callback = function()
            Float = false
            Tp(-11035, -81.4, -12.56, 5)
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Lever" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    v.HoldDuration = 0
                    task.wait(0.3)
                    fireproximityprompt(v)
                end
            end
            task.wait(6)
            Tp(-10060, 484.1, -9.52, nil)
        end
    })
    Tabs.B2C2:AddSection("Math")
    Tabs.B2C2:AddButton({
        Title = "Skip",
        Description = "",
        Callback = function()
            Float = false
            Tp(-2005.8, 968.25, -4909.48, nil)
        end
    })
    Tabs.B2C2:AddButton({
        Title = "Reveal",
        Description = "",
        Callback = function()
            local MidANumber = nil
            local MidBNumber = nil
            local SymbolsAImage1 = nil
            local SymbolsAImage2 = nil
            local SymbolsBImage1 = nil
            local SymbolsBImage2 = nil
            local SymbolsANumber1 = nil
            local SymbolsANumber2 = nil
            local SymbolsBNumber1 = nil
            local SymbolsBNumber2 = nil

            -- Get MidNumber and Get Image1 
            for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
                if v.ClassName == "TextLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "MiddleNumber" and v.Parent.Parent.Parent.Name == "SymbolsA" then
                    MidANumber = v.Text
                end
                if v.ClassName == "TextLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "MiddleNumber" and v.Parent.Parent.Parent.Name == "SymbolsB" then
                    MidBNumber = v.Text
                end
                if v.ClassName == "ImageLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "SymbolHolder" and v.Parent.Parent.Parent.Name == "SymbolsA" then
                    SymbolsAImage1 = v.Image
                end
                if v.ClassName == "ImageLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "SymbolHolder" and v.Parent.Parent.Parent.Name == "SymbolsB" then
                    SymbolsBImage1 = v.Image
                end
            end

            -- Get Image2
            for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
                if v.ClassName == "ImageLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "SymbolHolder" and v.Parent.Parent.Parent.Name == "SymbolsA" then
                    if v.Image ~= SymbolsAImage1 then
                        SymbolsAImage2 = v.Image
                    end
                end
                if v.ClassName == "ImageLabel" and v.Parent.ClassName == "SurfaceGui" and v.Parent.Parent.Name == "SymbolHolder" and v.Parent.Parent.Parent.Name == "SymbolsB" then
                    if v.Image ~= SymbolsBImage1 then
                        SymbolsBImage2 = v.Image
                    end
                end
            end

            -- Get Number
            for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
                if v.ClassName == "ImageLabel" and v.Parent:FindFirstChild("TextLabel") then
                    if v.Image == SymbolsAImage1 then
                        SymbolsANumber1 = v.Parent:WaitForChild("TextLabel").Text
                    end
                end
                if v.ClassName == "ImageLabel" and v.Parent:FindFirstChild("TextLabel") then
                    if v.Image == SymbolsAImage2 then
                        SymbolsANumber2 = v.Parent:WaitForChild("TextLabel").Text
                    end
                end
                if v.ClassName == "ImageLabel" and v.Parent:FindFirstChild("TextLabel") then
                    if v.Image == SymbolsBImage1 then
                        SymbolsBNumber1 = v.Parent:WaitForChild("TextLabel").Text
                    end
                end
                if v.ClassName == "ImageLabel" and v.Parent:FindFirstChild("TextLabel") then
                    if v.Image == SymbolsBImage2 then
                        SymbolsBNumber2 = v.Parent:WaitForChild("TextLabel").Text
                    end
                end
                end

            -- Sum Number
            local Answer1 = tostring(MidANumber - (SymbolsANumber1 + SymbolsANumber2))
            local Answer2 = tostring(MidBNumber - (SymbolsBNumber1 + SymbolsBNumber2))

            -- Image Hack
            for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
                if v.ClassName == "TextLabel" and v.Parent.Parent.Parent.Name == "Kanji" then
                    for _, sec in ipairs(game:GetService("Workspace"):GetDescendants()) do
                        if sec.Name == "SymbolHolder[Empty]" and sec.Parent.Name == "SymbolsA" then
                            if v.Text == Answer1 then
                                local HackImage1 = v.Parent:Clone()
                                HackImage1.Parent = sec
                            end
                        end
                        if sec.Name == "SymbolHolder[Empty]" and sec.Parent.Name == "SymbolsB" then
                            if v.Text == Answer2 then
                                local HackImage2 = v.Parent:Clone()
                                HackImage2.Parent = sec
                            end
                        end
                    end
                end
            end
        end
    })
    Tabs.B2C2:AddSection("Master Chef")
    Tabs.B2C2:AddButton({
        Title = "Enter Zone",
        Description = "",
        Callback = function()
            Float = false
            TweenBIGO(1, -2581.77124, 990.56134, -4918.28027)
        end
    })
    Tabs.B2C2:AddButton({
        Title = "Auto Cook",
        Description = "SinglePlayer",
        Callback = function()
            if FirstPressCook then
                print("First")
                for _, v in pairs(workspace:GetDescendants()) do
                    if v.Name == "Barrier" and v:IsA("Part") and isPlayerNear(v, 100) then
                        v:Destroy()
                    end
                end
                FirstPressCook = false
            end
            Order270 = "nil"
            matches = {}
            task.wait(0.1)
            for _, v in pairs(workspace:GetDescendants()) do
                if v.Name == "Orders" then
                    if v:FindFirstChild("Ham Stew") then
                        Order270 = "Ham Stew"
                        table.insert(matches, Order270)
                    elseif v:FindFirstChild("Chicken Soup") then
                        Order270 = "Chicken Soup"
                        table.insert(matches, Order270)
                    elseif v:FindFirstChild("Spaghetti N Eyeballs") then
                        Order270 = "Spaghetti N Eyeballs"
                        table.insert(matches, Order270)
                    end
                end
            end
            task.wait(1)
            if #matches > 0 then
                selectedIndex = math.random(1, #matches)
                selectedObject = matches[selectedIndex]
                print(#matches)
            else
                Notify("Error 01", "Press again")
            end
            if selectedObject == "Ham Stew" then
                for _, v in pairs(workspace:GetDescendants()) do --Ham
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Pot" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Ham" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Sausage" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --boil
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, q in pairs(Workspace:GetDescendants()) do --boil2
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(10)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                    break
                end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Ham Stew") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
            elseif selectedObject == "Chicken Soup" then
                for _, v in pairs(Workspace:GetDescendants()) do --auto KFC
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Pot" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Chicken" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Wrapped Meat" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Cheese" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do --boil2
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(10)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Chicken Soup") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
            elseif selectedObject == "Spaghetti N Eyeballs" then
                for _, v in pairs(Workspace:GetDescendants()) do -- eyeball
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Eyeball" and v.Parent.Parent:IsA("Model")
                     then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Bowl") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Spaghetti" and v.Parent.Parent:IsA("Model") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
                task.wait()
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Bowl") then --if bowlplace
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, q in pairs(Workspace:GetDescendants()) do
                    if q.Name == "SystemBin" and q:FindFirstChild("Spaghetti N Eyeballs") then --finish prepare send
                        for _, v in pairs(Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                task.wait(0.3)
                                fireproximityprompt(v)
                                task.wait()
                                break
                            end
                        end
                        task.wait()
                        break
                    end
                end
                task.wait(1)
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(v)
                        task.wait()
                        break
                    end
                end
            else
                Notify("Error 01", "Press again")
            end
        end
    })
    Tabs.B2C2:AddButton({
        Title = "Full Auto Cook",
        Description = "SinglePlayer",
        Callback = function()
            for _, v in pairs(workspace:GetDescendants()) do
                if v.Name == "Barrier" and v:IsA("Part") and isPlayerNear(v, 100) then
                    v:Destroy()
                end
            end
            while player.PlayerGui.CookingUI.Timer.Visible do
                Order270 = "nil"
                matches = {}
                task.wait(0.1)
                for _, v in pairs(workspace:GetDescendants()) do
                    if v.Name == "Orders" then
                        if v:FindFirstChild("Ham Stew") then
                            Order270 = "Ham Stew"
                            table.insert(matches, Order270)
                        elseif v:FindFirstChild("Chicken Soup") then
                            Order270 = "Chicken Soup"
                            table.insert(matches, Order270)
                        elseif v:FindFirstChild("Spaghetti N Eyeballs") then
                            Order270 = "Spaghetti N Eyeballs"
                            table.insert(matches, Order270)
                        end
                    end
                end
                task.wait(1)
                if #matches > 0 then
                    selectedIndex = math.random(1, #matches)
                    selectedObject = matches[selectedIndex]
                    print(#matches)
                else
                    Notify("Error 01", "Press again")
                end
                if selectedObject == "Ham Stew" then
                    for _, v in pairs(workspace:GetDescendants()) do --Ham
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Pot" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Ham" and v.Parent.Parent:IsA("Model") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, q in pairs(Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Sausage" and v.Parent.Parent:IsA("Model") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, q in pairs(Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                            break
                        end
                    end
                    task.wait(1)
                    for _, q in pairs(Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --boil
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                            break
                        end
                    end
                    task.wait(1)
                    for _, q in pairs(Workspace:GetDescendants()) do --boil2
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                            break
                        end
                    end
                    task.wait(10)
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait(1)
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, q in pairs(Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                        break
                    end
                    end
                    task.wait()
                    for _, q in pairs(Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                            break
                        end
                    end
                    task.wait(1)
                    for _, q in pairs(Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Ham Stew") then --if bowlplace
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                            break
                        end
                    end
                    task.wait(1)
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                elseif selectedObject == "Chicken Soup" then
                    for _, v in pairs(Workspace:GetDescendants()) do --auto KFC
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Pot" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Chicken" and v.Parent.Parent:IsA("Model") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, q in pairs(Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Wrapped Meat" and v.Parent.Parent:IsA("Model") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, q in pairs(Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Cheese" and v.Parent.Parent:IsA("Model") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, q in pairs(Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, q in pairs(Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, q in pairs(Workspace:GetDescendants()) do --boil2
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                            break
                        end
                    end
                    task.wait(10)
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait(1)
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, q in pairs(Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, q in pairs(Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                            break
                        end
                    end
                    task.wait(1)
                    for _, q in pairs(Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Chicken Soup") then --if bowlplace
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                            break
                        end
                    end
                    task.wait(1)
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                elseif selectedObject == "Spaghetti N Eyeballs" then
                    for _, v in pairs(Workspace:GetDescendants()) do -- eyeball
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Eyeball" and v.Parent.Parent:IsA("Model")
                         then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, q in pairs(Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Bowl") then --if bowlplace
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                            break
                        end
                    end
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Spaghetti" and v.Parent.Parent:IsA("Model") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                    task.wait()
                    for _, q in pairs(Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Bowl") then --if bowlplace
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                            break
                        end
                    end
                    task.wait(1)
                    for _, q in pairs(Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Spaghetti N Eyeballs") then --finish prepare send
                            for _, v in pairs(Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    task.wait(0.3)
                                    fireproximityprompt(v)
                                    task.wait()
                                    break
                                end
                            end
                            task.wait()
                            break
                        end
                    end
                    task.wait(1)
                    for _, v in pairs(Workspace:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                            task.wait(0.3)
                            fireproximityprompt(v)
                            task.wait()
                            break
                        end
                    end
                else
                    Notify("Error 01", "Press again")
                end
                task.wait()
            end
        end
    })
    Tabs.B2C2:AddSection("Cursed Zone")
    Tabs.B2C2:AddButton({
        Title = "Auto Win",
        Description = "Cursed Zone 1",
        Callback = function()
            TweenBIGO(1, -4250.71, 613.7, -968.13)
        end
    })
    Tabs.B2C2:AddButton({
        Title = "Teleport To Cursed Zone 2",
        Description = "",
        Callback = function()
            TweenBIGO(1, -4079.71, 613.7, -968.13)
        end
    })
    Tabs.B2C2:AddButton({
        Title = "Reveal Match Puzzle",
        Description = "Not recommanded",
        Callback = function()
            for i,v in pairs(game.Workspace:GetDescendants()) do
                if v.Name == "GAMESTART" then 
                    pcall(function()
                        if v.ClassName == "Part" or v.ClassName == "MeshPart" then
                            local part = Instance.new("Part",workspace:FindFirstChildWhichIsA('Folder'))
                            part.Name = "{x"..tostring(math.random(500,1000)).."x}"
                            part.Anchored = true
                            part.Size = v.Size
                            part.CanCollide = false
                            part.Transparency = 0.9
                            part.CFrame = v.CFrame
                        end
                    end)
                    v:Destroy()
                end 
            end
            for i = 1, math.huge do
                wait(0.6)
            
                if not isPlayerNearPosition(player, Vector3.new(-4079.71, 613.7, -968.13), 1000) then
                    break
                end
            
                local currentBases = findNearestBase()
            
                if currentBases then
                    local baseTables = {
                        Part1 = currentBases:FindFirstChild("Part1"),
                        Part2 = currentBases:FindFirstChild("Part2"),
                        Select = currentBases:FindFirstChild("Select")
                    }
            
                    local stateTables = {
                        IsOnPart1 = false,
                        IsOnPart2 = false
                    }
            
                    local selectButton = baseTables.Select
                    local part1 = baseTables.Part1
                    local part2 = baseTables.Part2
            
                    local function findTable(table, select)
                        for _, v in ipairs(table) do
                            if v == select then
                                return v
                            end
                        end
                        return false
                    end
            
                    if not findTable(listButtons, selectButton) then
                        for _, v in ipairs(currentBases.Parent:GetChildren()) do
                            if v.Name == "Buttons" then
                                local button = v
                                button:GetPropertyChangedSignal("BrickColor"):Connect(function()
                                    if button.BrickColor == BrickColor.new("Really red") then
                                        resetThings()
                                    end
                                end)
                            end
                        end
            
                        selectButton:GetPropertyChangedSignal("Playing"):Connect(function()
                            if selectButton.Playing then
                                for _, v in ipairs(currentBases.Parent:GetChildren()) do
                                    if v.Name == "Buttons" then
                                        local buttons = v
                                        if buttons.BrickColor == BrickColor.new("Institutional white") then
                                            if buttons:FindFirstChild("PUZZLEREVEAL") then
                                                local pathTo = buttons.PUZZLEREVEAL.Frame.TextLabel
                                                if pathTo then
                                                    pathTo.Text = pathTo.Text .. " - [" .. tostring(interfaceTables.SendCount) .. "]"
                                                end
                                            else
                                                createBillBoardGui(buttons, "[" .. tostring(interfaceTables.SendCount) .. "]")
                                            end
            
                                            interfaceCount("Add")
                                        end
                                    end
                                end
                            end
                        end)
            
                        selectButton:GetPropertyChangedSignal("TimePosition"):Connect(function()
                            for _, v in ipairs(currentBases.Parent:GetChildren()) do
                                if v.Name == "Buttons" then
                                    local buttons = v
                                    if buttons.BrickColor == BrickColor.new("Institutional white") then
                                        if buttons:FindFirstChild("PUZZLEREVEAL") then
                                            local pathTo = buttons.PUZZLEREVEAL.Frame.TextLabel
                                            if pathTo then
                                                pathTo.Text = pathTo.Text .. " - [" .. tostring(interfaceTables.SendCount) .. "]"
                                            end
                                        else
                                            createBillBoardGui(buttons, "[" .. tostring(interfaceTables.SendCount) .. "]")
                                        end
            
                                        interfaceCount("Add")
                                    end
                                end
                            end
                        end)
            
                        table.insert(listButtons, selectButton)
                    end
            
                    part1:GetPropertyChangedSignal("BrickColor"):Connect(function()
                        pcall(function()
                            if part1.BrickColor == BrickColor.new("Medium stone grey") then
                                if not stateTables.IsOnPart1 then
                                    stateTables.IsOnPart1 = true
                                    resetThings()
                                end
                            end
                        end)
                    end)
            
                    part2:GetPropertyChangedSignal("BrickColor"):Connect(function()
                        pcall(function()
                            if part2.BrickColor == BrickColor.new("Medium stone grey") then
                                if not stateTables.IsOnPart2 then
                                    stateTables.IsOnPart2 = true
                                    resetThings()
                                end
                            end
                        end)
                    end)
            
                    local packetEvent = ReplicatedStorage.Packet.Event
                    packetEvent.OnClientEvent:Connect(onLeftPuzzle)
                end
            end
        end
    })
    Tabs.B2C2:AddButton({
        Title = "Remove Monster",
        Description = "Singleplayer | Or tell your teamate not to go to 2nd floor",
        Callback = function()
            for i, v in pairs(workspace:GetDescendants()) do
                if v.Parent:IsA("BasePart") and v.Parent.Name == "GAMESTART" then
                    v:Destroy()
                end
            end
        end
    })
    HideSpot = nil
    local Dropdown = Tabs.B2C2:AddDropdown("Dropdown", {
        Title = "Hide Spot",
        Values = {"1", "2", "3"},
        Multi = false,
        Default = 1,
    })
    Dropdown:OnChanged(function(Value)
        HideSpot = Value
    end)
    Tabs.B2C2:AddButton({
        Title = "Hide",
        Description = "",
        Callback = function()
            if HideSpot == "1" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4066.81,630.67,-985.54)
            elseif HideSpot == "2" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4053.62,666.31,-951.76)
            elseif HideSpot == "3" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4088.17,743.82,-959.96)
            end
        end
    })
    Tabs.B2C2:AddSection("Kid")
    Tabs.B2C2:AddButton({
        Title = "Set Game Files",
        Description = "Press this first",
        Callback = function()
            for i,v in pairs(workspace:GetDescendants()) do
                if v.Name == "SquidGames" then
                    v:Destroy()
                end
            end
        end
    })
    Tabs.B2C2:AddButton({
        Title = "Auto Find Kid",
        Description = "Press after cutscene",
        Callback = function()
            for i,v in pairs(__VE["WS"]:GetDescendants()) do
                if v:IsA("BasePart") and v.Name == "IndicatorPic" then
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.CFrame
                    task.wait()
                    break
                end
            end
            task.wait()
            __VE["LPs"].Character.HumanoidRootPart.CFrame = CFrame.new(-4334.81299, 690.94397, -2363.2771, 0, 0, 1, 0, 1, -0, -1, 0, 0)
        end
    })
    Tabs.B2C2:AddButton({
        Title = "Anti Mother",
        Description = "Press after cutscene",
        Callback = function()
            function TeleportPlayer()
                motherPart = nil
                for _, part in ipairs(workspace:GetDescendants()) do
                    if part.Name == "HumanoidRootPart" and part.Parent.Name == "Mother" then
                        motherPart = part
                        break
                    end
                end
                while isPlayerNearPosition(game.Players.LocalPlayer, Vector3.new(-4334.81299, 690.94397, -2363.2771), 3000) do
                    if not isPlayerNearPosition(game.Players.LocalPlayer, Vector3.new(-4334.81299, 690.94397, -2363.2771), 3000) then
                        break
                    end
                    if not motherPart then
                        for _, part in ipairs(workspace:GetDescendants()) do
                            if part.Name == "HumanoidRootPart" and part.Parent.Name == "Mother" then
                                motherPart = part
                                break
                            end
                        end
                    end
                    if motherPart and char and char:FindFirstChild("HumanoidRootPart") then
                        playerPosition = char.HumanoidRootPart.Position
                        motherPosition = motherPart.Position
                        
                        if (playerPosition - motherPosition).Magnitude <= 100 then
                            char.HumanoidRootPart.CFrame = CFrame.new(-4334.81299, 690.94397, -2363.2771, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                        end
                    end
        
                    task.wait(0.1)
                end
            end
        
            TeleportPlayer()
        end
    })
    Tabs.B2C2:AddButton({
        Title = "Teleport To Gate",
        Description = "",
        Callback = function()
            for i,v in pairs(__VE["WS"]:GetDescendants()) do
                if v:IsA("BasePart") and v.Name == "Formation" then
                   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                   task.wait()
                   break
                end
            end
        end
    })
    Tabs.B2C2:AddButton({
        Title = "Auto Get Notes",
        Description = "",
        Callback = function()
            Float = false
            for i, v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Note" then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                    task.wait(0.3)
                    fireproximityprompt(v)
                end
            end
        end
    })
    local ANL = Tabs.Main:AddToggle("ANL", {Title = "Anti Nagisa Laser", Default = false })

    ANL:OnChanged(function()
        if Options.ANL.Value then
            if not LASEROFNAGISA then
                for _, v in pairs(__VE["WS"]:GetDescendants()) do
                    if v.Name == "POISON" then
                        LASEROFNAGISA = v
                    end
                end
            end
            if not BALLGIVER then
                for i, v in pairs(workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "BallGiver" then
                        BALLGIVER = v
                    end
                end
            end
    
            while Options.ANL.Value do
                if Options.ANL.Value and __VE["LPs"].Character:FindFirstChild("HumanoidRootPart") then
                    if LASEROFNAGISA and LASEROFNAGISA.Transparency == 0.5 then
                        Tp(1982.58, 100, -4780.12, nil)
                    end
                end
            
                task.wait(0.05)
            end
        end
    end)
    local AGCB = Tabs.Main:AddToggle("AGCB", {Title = "Auto Get Cannon Balls", Default = false })

    AGCB:OnChanged(function()
        pcall(function()
            if Options.AGCB.Value then
                for i, v in pairs(workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "BallGiver" then
                        BALLGIVER = v
                    end
                end
                if not LASEROFNAGISA then
                    for _, v in pairs(workspace:GetDescendants()) do
                        if v.Name == "POISON" then
                            LASEROFNAGISA = v
                        end
                    end
                end
                while Options.AGCB.Value do
                    if game.Players.LocalPlayer.PlayerGui.BossFight.Ammo.Text == "0" and LASEROFNAGISA.Transparency ~= 0.5 then
                        char.HumanoidRootPart.CFrame = BALLGIVER.Parent.CFrame
                        task.wait(0.3)
                        fireproximityprompt(BALLGIVER)
                        fireproximityprompt(BALLGIVER)
                        fireproximityprompt(BALLGIVER)
                        fireproximityprompt(BALLGIVER)
                        fireproximityprompt(BALLGIVER)
                        task.wait()
                    end
                    task.wait()
                end
            end
        end)
    end)
    Tabs.B2C3:AddSection("Gozu & Mezu")

end

__Team = nil
loadstring(game:HttpGet("https://raw.githubusercontent.com/Violara/jjj/main/gay.gay"))()

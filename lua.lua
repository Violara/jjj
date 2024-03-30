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
Setting = nil
if not isfolder("Setting") then
    makefolder("Setting")
end
if isfolder("Setting") and not isfile("Setting/settingHEDERNG.json") then
    print("no file")
    Setting = {
        AutoAura = false,
        AutoCollectItem = false,
        AutoPray = false,
        AutoExtend = false,
        AutoCraftWhat = nil,
        AutoCraft = false
    }
    allowtoserialized = __Y[1]
elseif __U[49]("Setting") and __U[50]("Setting/settingHEDERNG.json") then
    __U[1]("file")
    __U[23]()
    Setting = game.HttpService:JSONDecode(__U[51]("Setting/settingHEDERNG.json"))
end

local credits = {
    {Title = "Owner", Content = "ttjy."},
    {Title = "Co Owner", Content = "ttjy_"},
    {Title = "Scripter", Content = "ttjy."},
    {Title = "Scripter", Content = "ttjy_"},
    {Title = "Bypasser", Content = "ttjy."},
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
local function checkSameNumbers()
    local labelText = game:GetService("Players").LocalPlayer.PlayerGui.Menu.Windows["My Auras"].Handle.Auras.Count.Text
    local firstNumber, secondNumber = labelText:match("(%d+) / (%d+)")
    if firstNumber and secondNumber then
        return tonumber(firstNumber) == tonumber(secondNumber)
    else
        return false
    end
end

Window = nil
repeat
    __U[6](function()
        Window = Fluent:CreateWindow({
            Title = "???? RNG Script v.UP1FV",
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
    ESP = Window:AddTab({ Title = "ESP", Icon = "briefcase" }),
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
    getgenv().TextStatus = "Getting Items"
    Tabs.Main:AddSection("Items")
    AutoCollectItem = Tabs.Main:AddToggle("AutoCollectItem", {Title = "Auto Collect Items", Default = Setting.AutoCollectItem })
    AutoCollectItem:OnChanged(function()
        Setting.AutoCollectItem = Options.AutoCollectItem.Value
        while Setting.AutoCollectItem do
            if Setting.AutoCollectItem then
                pcall(function()
                    if workspace:FindFirstChild("Pray") or workspace:FindFirstChild("GwaGwa") then
                        KEY_WINPG = workspace:FindFirstChild("Pray") or workspace:FindFirstChild("GwaGwa")
                        if KEY_WINPG and KEY_WINPG:FindFirstChild("Attachment") and KEY_WINPG.Attachment:FindFirstChild("ProximityPrompt") and KEY_WINPG.Attachment.ProximityPrompt.Enabled then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = KEY_WINPG.CFrame
                            task.wait(0.3)
                            fireproximityprompt(KEY_WINPG.Attachment.ProximityPrompt)
                        end
                    end
                end)
            end
            task.wait(0.5)
        end
    end)
    getgenv().TextStatus = "Getting Auto Farm"
    AutoPray = Tabs.Main:AddToggle("AutoPray", {Title = "Auto Pray", Default = Setting.AutoPray })
    AutoPray:OnChanged(function()
        Setting.AutoPray = Options.AutoPray.Value
        while Setting.AutoPray do
            if Setting.AutoPray then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Menu.Windows.Inventory.Handle.Items.Lists.ScrollingFrame:FindFirstChild("Pray") and game:GetService("Players").LocalPlayer.PlayerGui.Menu.Windows.Inventory.Handle.Items.Lists.ScrollingFrame.Pray.Visible then
                        game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Item"):FireServer("Pray")
                    end
                end)
            end
            task.wait(0.5)
        end
    end)
    getgenv().TextStatus = "Getting Storage"
    Tabs.Main:AddSection("Storage")
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
                            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Water Gwa Gwa", "Gwa Gwa")
                            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Water Gwa Gwa", "Murder")
                        end
                    elseif Setting.AutoCraftWhat == "Darkness Gwa Gwa" then
                        if not game:GetService("Players").LocalPlayer.PlayerGui.Menu.Craft.Handle.Craft.Lists.ScrollingFrame["Darkness Gwa Gwa"].Done.Visible then
                            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Craft"):FireServer("Craft")
                            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Craft"):FireServer("Button", "")
                            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Water Gwa Gwa", "Gwa Gwa")
                            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Water Gwa Gwa", "Darkness")
                        end
                    elseif Setting.AutoCraftWhat == "Binary Gwa Gwa" then
                        if not game:GetService("Players").LocalPlayer.PlayerGui.Menu.Craft.Handle.Craft.Lists.ScrollingFrame["Binary Gwa Gwa"].Done.Visible then
                            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Craft"):FireServer("Craft")
                            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Craft"):FireServer("Button", "")
                            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Water Gwa Gwa", "Gwa Gwa")
                            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Water Gwa Gwa", "BINARYX")
                        end
                    elseif Setting.AutoCraftWhat == "Planet Gwa Gwa" then
                        if not game:GetService("Players").LocalPlayer.PlayerGui.Menu.Craft.Handle.Craft.Lists.ScrollingFrame["Planet Gwa Gwa"].Done.Visible then
                            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Craft"):FireServer("Craft")
                            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Craft"):FireServer("Button", "")
                            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Water Gwa Gwa", "Gwa Gwa")
                            game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Crafting"):InvokeServer("Water Gwa Gwa", "Planet")
                        end
                    end
                end)
            end
            task.wait(0.5)
        end
    end)
    Tabs.Setting:AddButton({
        Title = "Save as config",
        Description = "",
        Callback = function()
            serializedSetting = game.HttpService:JSONEncode(Setting)
            writefile("Setting/settingHEDERNG.json", serializedSetting)
        end
    })
end

task.wait(0.05)
if allowtoserialized then
    serializedSetting = game.HttpService:JSONEncode(Setting)
    writefile("Setting/settingHEDERNG.json", serializedSetting)
end
task.wait(5)
finishload = true
getgenv().FinishLoad = true

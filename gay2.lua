--Standard Connect
--Lastest Update 08/05/2024

--Start SYSTE<
warn("Standard Connect")
warn("Lastest Update 08/05/2024")
local Server
local AllowToLoad
local PremiumServer
local KEY
local PremiumKey
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local key = 3 
local function encrypt(data, key)
    local encrypted = ""
    for i = 1, #data do
        local char = string.byte(data, i)
        encrypted = encrypted .. string.char(char + key)
    end
    return encrypted
end
local function decrypt(encryptedData, key)
    local decrypted = ""
    for i = 1, #encryptedData do
        local char = string.byte(encryptedData, i)
        decrypted = decrypted .. string.char(char - key)
    end
    return decrypted
end
if not writefile or not readfile or not isfile or not isfolder then
    game.Players.LocalPlayer:Kick("Executor not supported | Unexpected Error at isfile")
end
if not isfolder("Setting") then
    makefolder("Setting")
end
if not isfile("Setting/Key") then
    writefile("Setting/Key", "gyat!")
else
    KEY = tostring(readfile("Setting/Key"))
end
if not isfile("Setting/PremiumKey") then
    writefile("Setting/PremiumKey", "PremiumKey")
else
    PremiumKey = tostring(readfile("Setting/PremiumKey"))
end
if PremiumKey ~= nil then
    PremiumServer = request({['Url']='https://premium.ttjyhub.cloud/api/validate?key='..tostring(PremiumKey)..'&hwid='..tostring(HWID), ['Method']='GET'}).Body
    if PremiumServer and decrypt(PremiumServer, key)and tonumber(decrypt(PremiumServer, key)) and tonumber(decrypt(PremiumServer, key)) > tonumber(os.time()) then
        Premium = true
        expireTime = tonumber(decrypt(PremiumServer, key))
    else
        if KEY ~= nil then
            Server = request({['Url']='https://ttjyhub.cloud/keyrelated/whitelist.php?key='..tostring(KEY).."&hwid="..tostring(HWID), ['Method']='GET'}).Body
            if tostring(decrypt(Server, key)) == "winner" then
                AllowToLoad = true
            else
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Asset/main/metsys_yek.lua"))()
                repeat task.wait() until game.CoreGui and game.CoreGui:FindFirstChild("KeySystem")
                game:GetService("CoreGui").KeySystem.Frame.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
                    KEY = game:GetService("CoreGui").KeySystem.Frame.TextBox.Text
                end)
                game:GetService("CoreGui").KeySystem.Frame2.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
                    PremiumKey = game:GetService("CoreGui").KeySystem.Frame2.TextBox.Text
                end)
                game:GetService("CoreGui").KeySystem.Frame.TextButton.MouseButton1Click:Connect(function()
                    pcall(function()
                        Server = request({['Url']='https://ttjyhub.cloud/keyrelated/whitelist.php?key='..tostring(KEY).."&hwid="..tostring(HWID), ['Method']='GET'}).Body
                        if tostring(decrypt(Server, key)) == "winner" then
                            writefile("Setting/Key", tostring(KEY))
                            task.wait(0.3)
                            game:GetService("CoreGui").KeySystem.Frame.TextBox.Text = "Correct"
                            AllowToLoad = true
                        elseif tostring(decrypt(Server, key)) == "loser" then
                            game:GetService("CoreGui").KeySystem.Frame.TextBox.Text = "Expire/Invalid"
                        end
                    end)
                end)
                game:GetService("CoreGui").KeySystem.Frame2.TextButton.MouseButton1Click:Connect(function()
                    pcall(function()
                        PremiumServer = request({['Url']='https://premium.ttjyhub.cloud/api/validate?key='..tostring(PremiumKey)..'&hwid='..tostring(HWID), ['Method']='GET'}).Body
                        if PremiumServer and decrypt(PremiumServer, key)and tonumber(decrypt(PremiumServer, key)) and tonumber(decrypt(PremiumServer, key)) > tonumber(os.time()) then
                            Premium = true
                            expireTime = tonumber(decrypt(PremiumServer, key))
                            writefile("Setting/PremiumKey", tostring(PremiumKey))
                        else
                            game:GetService("CoreGui").KeySystem.Frame2.TextBox.Text = "Expire/Invalid/Beta Id InValid/device time can't be found/Unsupport executor"
                        end
                    end)
                end)
            end
        end
    end
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Asset/main/metsys_yek.lua"))()
    repeat task.wait() until game.CoreGui and game.CoreGui:FindFirstChild("KeySystem")
    game:GetService("CoreGui").KeySystem.Frame.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
        KEY = game:GetService("CoreGui").KeySystem.Frame.TextBox.Text
    end)
    game:GetService("CoreGui").KeySystem.Frame2.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
        PremiumKey = game:GetService("CoreGui").KeySystem.Frame2.TextBox.Text
    end)
    game:GetService("CoreGui").KeySystem.Frame.TextButton.MouseButton1Click:Connect(function()
        pcall(function()
            Server = request({['Url']='https://ttjyhub.cloud/keyrelated/whitelist.php?key='..tostring(KEY).."&hwid="..tostring(HWID), ['Method']='GET'}).Body
            if tostring(decrypt(Server, key)) == "winner" then
                writefile("Setting/Key", tostring(KEY))
                task.wait(0.3)
                game:GetService("CoreGui").KeySystem.Frame.TextBox.Text = "Correct"
                AllowToLoad = true
            elseif tostring(decrypt(Server, key)) == "loser" then
                game:GetService("CoreGui").KeySystem.Frame.TextBox.Text = "Expire/Invalid"
            end
        end)
    end)
    game:GetService("CoreGui").KeySystem.Frame2.TextButton.MouseButton1Click:Connect(function()
        pcall(function()
            PremiumServer = request({['Url']='https://premium.ttjyhub.cloud/api/validate?key='..tostring(PremiumKey)..'&hwid='..tostring(HWID), ['Method']='GET'}).Body
            if PremiumServer and decrypt(PremiumServer, key)and tonumber(decrypt(PremiumServer, key)) and tonumber(decrypt(PremiumServer, key)) > tonumber(os.time()) then
                Premium = true
                expireTime = tonumber(decrypt(PremiumServer, key))
                writefile("Setting/PremiumKey", tostring(PremiumKey))
            else
                game:GetService("CoreGui").KeySystem.Frame2.TextBox.Text = "Expire/Invalid/Beta Id InValid/device time can't be found/Unsupport executor"
            end
        end)
    end)
end
repeat task.wait() until Premium or AllowToLoad
if game:GetService("CoreGui"):FindFirstChild("KeySystem") then
    game:GetService("CoreGui").KeySystem.Enabled = false
end
for _,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "TTJY Hub Fluent UI" or v.Name == "StartUpScreen" then
        pcall(function()
            v:Destroy()
        end)
    end
end
if not Premium then
    expireTime = 0
end
task.wait()
coroutine.wrap(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Asset/main/ReadyToLoad.lua"))()
end)()
coroutine.wrap(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/MainV2/main/DashBoardV2InReturnTTJYHubPutThisInLoadStringAboveAverageLineNahImTalkingSorandom"))()
end)()
repeat task.wait() until game:GetService("CoreGui"):FindFirstChild("StartUpScreen") or game:GetService("CoreGui"):FindFirstChild("DashBoardV2")
--End SYSTE<



--Loader
TextStatus = "???"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Asset/main/redaol"))()
if not Premium then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Asset/main/esitrevda"))()
end
repeat task.wait() until game.CoreGui:FindFirstChild("Loader") and not game.CoreGui:FindFirstChild("Advertising")
game.CoreGui.Loader.Enabled = true
local Front = game.CoreGui:FindFirstChild("Loader"):WaitForChild("Frame"):WaitForChild("Frontground")
local Status = game.CoreGui:FindFirstChild("Loader"):WaitForChild("Frame"):WaitForChild("Status")
local Num = 0.06
local forcebreakendload = false
coroutine.wrap(function()
    pcall(function()
        repeat
            if forcebreakendload then break end
            if Num < 0.97 then
                Num = Num + 0.01
                Status.Text = TextStatus
                Front.Size = UDim2.new(Num, 0, 0.015, 0)
            end
            task.wait(0.15)
            Status.Text = "Almost Finish"
        until getgenv().ReadyToLoad
    end)
end)()
--End Loader



--Start API
task.wait()
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
task.wait()
__X = {true,false,nil,0,1} ;  __Y ={} ; for i=1,#__X do __U[6](function() __Y[i] = __X[i] end) end
__M = {2,3,5,7,11,13,17,10} ;  __N ={} ; for i=1,#__M do __U[6](function() __N[i] = __M[i] end) end
__VE["WS"] , __VE["RuS"] , __VE["RlS"] = game:GetService("Workspace"), game:GetService("RunService") , game:GetService("ReplicatedStorage")
__VE["VIM"] , __VE["UIS"] = game:GetService("VirtualInputManager"), game:GetService("UserInputService")
__VE["Lg"] , __VE["TS"], __VE["GMos"] = game:GetService("Lighting") ,game:GetService("TweenService") ,  game:GetService("Players").LocalPlayer:GetMouse()
__VE["VU"],__VE["CG"] = game:GetService("VirtualUser") ,game:GetService("CoreGui")
__VE["HS"] = game:GetService("HttpService")
speedofthefly = 1
speedofthevfly = 1
local function checkPlatform()
    if __VE["UIS"].TouchEnabled then
        warn("User is on a Mobile.")
        getgenv().DeviceType = "Mobile"
    else
        warn("User is on a PC.")
        getgenv().DeviceType = "Pc"
    end
end
checkPlatform()
--End API


--Start CreateButton
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
--End CreateButton






--Start Window
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window
local RunServiceWindow
RunServiceWindow = game:GetService("RunService").Heartbeat:Connect(function()
    if Window then
        Window.Root.Parent.Name = "TTJY Hub Fluent UI"
        Window.Minimized = false
        Window.Root.Visible = false
    end
end)
task.wait()
Window = Fluent:CreateWindow({
    Title = "Fluent " .. Fluent.Version,
    SubTitle = "by dawid",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})
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
--End Window


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



--Start UI
do
    TextStatus = "Normal Load"
    getgenv().ScriptUpdateDate = "13/05/24"
    Tabs.Main:AddButton({
        Title = "Auto Road",
        Description = "UHhh actually idk where this end at but if you want to stop just leave the car",
        Callback = function()
            function tpwithseat(xyz,speedoftpNTP)
                local hrd = game.Players.LocalPlayer.Character.HumanoidRootPart
                local p = hrd.Position
                local currentPos = Vector3.new(p.x, p.y, p.z)
                local targetPos = xyz.Position

                local direction = (targetPos - currentPos).Unit
                local distance = (targetPos - currentPos).Magnitude
                local steps = math.floor(distance / speedoftpNTP) 
                for i = 1, steps do
                    currentPos = currentPos + direction * speedoftpNTP 
                    game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:PivotTo(CFrame.new(currentPos))
                    task.wait()
                end
            end

            tpwithseat(CFrame.new(0,  game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y + 3, 0), 40)
        end
    })
    Tabs.Main:AddSection("Caps")
    Tabs.Main:AddButton({
        Title = "Bring Caps",
        Description = "",
        Callback = function()
            for _, v in pairs(game.Workspace:GetChildren()) do
                if v.Name == "BottleCap" or v.Name == "5stack" or v.Name == "4stack" or v.Name == "3stack" or v.Name == "2stack" or v.Name == "1stack" or v.Name == "6stack" then
                    v:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                end
            end
        end
    })
    Tabs.Main:AddSection("Mutant")
    local LoopBringMutant = Tabs.Main:AddToggle("LoopBringMutant", {Title = "Loop Bring Dead Mutant", Default = false })
    LoopBringMutant:OnChanged(function()
        while Options.LoopBringMutant.Value do task.wait(0.3)
            if Options.LoopBringMutant.Value then
                for _, v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "mutant" and v.Humanoid and v.Humanoid.Health == 0 then
                        v:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(40, 0, 0))
                    end
                end
            end
        end
    end)
    Tabs.Main:AddButton({
        Title = "Bring Dead Mutant",
        Description = "",
        Callback = function()
            for _, v in pairs(game.Workspace:GetChildren()) do
                if v.Name == "mutant" and v.Humanoid and v.Humanoid.Health == 0 then
                    v:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                end
            end
        end
    })
    Tabs.Main:AddButton({
        Title = "Bring Alive Mutant",
        Description = "",
        Callback = function()
            for _, v in pairs(game.Workspace:GetChildren()) do
                if v.Name == "mutant" and v.Humanoid and v.Humanoid.Health == 0 then
                    v:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(10, 0, 0))
                end
            end
        end
    })
    Tabs.Main:AddSection("Items")
    local LoopBringVase = Tabs.Main:AddToggle("LoopBringVase", {Title = "Loop Bring Vase", Default = false })
    LoopBringVase:OnChanged(function()
        while Options.LoopBringVase.Value do task.wait(0.3)
            if Options.LoopBringVase.Value then
                for _, v in pairs(game.Workspace:GetChildren()) do
                    if (v.Name == "vaz" or v.Name == "vaze" )then
                        v:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(40, 0, 0))
                    end
                end
            end
        end
    end)
    Tabs.Main:AddButton({
        Title = "Bring Vase",
        Description = "",
        Callback = function()
            for _, v in pairs(game.Workspace:GetChildren()) do
                if (v.Name == "vaz" or v.Name == "vaze" )then
                    v:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                end
            end
        end
    })
    local ESPMutant = Tabs.ESP:AddToggle("ESPMutant", {Title = "ESP Mutant", Default = false })
    ESPMutant:OnChanged(function()
        while Options.ESPMutant.Value do task.wait(0.3)
            if Options.ESPMutant.Value then
                for _, v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "mutant" and not v:FindFirstChild("TextLabelBillboard") then
                        local Highlight = Instance.new("Highlight")
                        Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        Highlight.FillColor = Color3.fromRGB(255, 0, 0)
                        Highlight.FillTransparency = 0.3
                        Highlight.Name = "Highlight"
                        Highlight.OutlineColor = Color3.new(0,0,0)
                        Highlight.OutlineTransparency = 0
                        Highlight.Parent = v
                        ESPSomething(v, tostring(v.Name))
                    end
                end
            else
                for _, v in pairs(game.Workspace:GetChildren()) do
                    if v.Name == "mutant" then
                        if v:FindFirstChild("TextLabelBillboard") then
                            v.TextLabelBillboard:Destroy()
                        end
                        if v:FindFirstChild("Highlight") then
                            v.Highlight:Destroy()
                        end
                    end
                end
            end
        end
    end)
    local ObjFood = {"Onion", "Pizza", "Bread", "Burger", "Donut", "Apple"}
    local ESPFoods = Tabs.ESP:AddToggle("ESPFoods", {Title = "ESP Foods", Default = false })
    ESPFoods:OnChanged(function()
        while Options.ESPFoods.Value do task.wait(0.3)
            if Options.ESPFoods.Value then
                for _, v in pairs(game.Workspace:GetChildren()) do
                    if table.find(ObjFoods, v.Name) and not v:FindFirstChild("TextLabelBillboard") then
                        local Highlight = Instance.new("Highlight")
                        Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        Highlight.FillColor = Color3.fromRGB(255, 0, 0)
                        Highlight.FillTransparency = 0.3
                        Highlight.Name = "Highlight"
                        Highlight.OutlineColor = Color3.new(0,0,0)
                        Highlight.OutlineTransparency = 0
                        Highlight.Parent = v
                        ESPSomething(v, tostring(v.Name))
                    end
                end
            else
                for _, v in pairs(game.Workspace:GetChildren()) do
                    if table.find(ObjFoods, v.Name) then
                        if v:FindFirstChild("TextLabelBillboard") then
                            v.TextLabelBillboard:Destroy()
                        end
                        if v:FindFirstChild("Highlight") then
                            v.Highlight:Destroy()
                        end
                    end
                end
            end
        end
    end)
    local ObjItems = {"GasCan", "Wheel", "oilcan", "Car Jack", "Engine", "radiator"}
    local ESPCarPart = Tabs.ESP:AddToggle("ESPCarPart", {Title = "ESP Car parts", Default = false })
    ESPCarPart:OnChanged(function()
        while Options.ESPCarPart.Value do task.wait(0.3)
            if Options.ESPCarPart.Value then
                for _, v in pairs(game.Workspace:GetChildren()) do
                    if table.find(ObjItems, v.Name) and not v:FindFirstChild("TextLabelBillboard") then
                        local Highlight = Instance.new("Highlight")
                        Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        Highlight.FillColor = Color3.fromRGB(255, 0, 0)
                        Highlight.FillTransparency = 0.3
                        Highlight.Name = "Highlight"
                        Highlight.OutlineColor = Color3.new(0,0,0)
                        Highlight.OutlineTransparency = 0
                        Highlight.Parent = v
                        ESPSomething(v, tostring(v.Name))
                    end
                end
            else
                for _, v in pairs(game.Workspace:GetChildren()) do
                    if table.find(ObjItems, v.Name) then
                        if v:FindFirstChild("TextLabelBillboard") then
                            v.TextLabelBillboard:Destroy()
                        end
                        if v:FindFirstChild("Highlight") then
                            v.Highlight:Destroy()
                        end
                    end
                end
            end
        end
    end)
    local ESPVaze = Tabs.ESP:AddToggle("ESPVaze", {Title = "ESP Vaze", Default = false })
    ESPVaze:OnChanged(function()
        while Options.ESPVaze.Value do task.wait(0.3)
            if Options.ESPVaze.Value then
                for _, v in pairs(game.Workspace:GetChildren()) do
                    if (v.Name == "vaza" or v.Name == "vaz") and not v:FindFirstChild("TextLabelBillboard") then
                        local Highlight = Instance.new("Highlight")
                        Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        Highlight.FillColor = Color3.fromRGB(255, 0, 0)
                        Highlight.FillTransparency = 0.3
                        Highlight.Name = "Highlight"
                        Highlight.OutlineColor = Color3.new(0,0,0)
                        Highlight.OutlineTransparency = 0
                        Highlight.Parent = v
                        ESPSomething(v, tostring(v.Name))
                    end
                end
            else
                for _, v in pairs(game.Workspace:GetChildren()) do
                    if (v.Name == "vaza" or v.Name == "vaz") then
                        if v:FindFirstChild("TextLabelBillboard") then
                            v.TextLabelBillboard:Destroy()
                        end
                        if v:FindFirstChild("Highlight") then
                            v.Highlight:Destroy()
                        end
                    end
                end
            end
        end
    end)
    local ObjWeapon = {"dynamite", "C4", "RPG", "axe", "Pistol"}
    local ESPWeapon = Tabs.ESP:AddToggle("ESPWeapon", {Title = "ESP Weapon", Default = false })
    ESPWeapon:OnChanged(function()
        while Options.ESPWeapon.Value do task.wait(0.3)
            if Options.ESPWeapon.Value then
                for _, v in pairs(game.Workspace:GetChildren()) do
                    if table.find(ObjWeapon, v.Name) and not v:FindFirstChild("TextLabelBillboard") then
                        local Highlight = Instance.new("Highlight")
                        Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        Highlight.FillColor = Color3.fromRGB(255, 0, 0)
                        Highlight.FillTransparency = 0.3
                        Highlight.Name = "Highlight"
                        Highlight.OutlineColor = Color3.new(0,0,0)
                        Highlight.OutlineTransparency = 0
                        Highlight.Parent = v
                        ESPSomething(v, tostring(v.Name))
                    end
                end
            else
                for _, v in pairs(game.Workspace:GetChildren()) do
                    if table.find(ObjWeapon, v.Name) then
                        if v:FindFirstChild("TextLabelBillboard") then
                            v.TextLabelBillboard:Destroy()
                        end
                        if v:FindFirstChild("Highlight") then
                            v.Highlight:Destroy()
                        end
                    end
                end
            end
        end
    end)
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
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    })

    WalkSpeedS:OnChanged(function(Value)
        getgenv().LastFuntion = tostring("Changed WalkSpeed" .. Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
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
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end
    })

    JumpPowerS:OnChanged(function(Value)
        getgenv().LastFuntion = tostring("Changed JumpPower" .. Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end)

    for i, v in __U[7](credits) do
        Tabs.Credits:AddButton({
            Title = v,
            Description = "",
            Callback = function()
                
            end
        })
        wait()
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
--End UI





--Left
task.wait(2)
forcebreakendload = true
task.wait()
Num = 0.98
Status.Text = "Finish"
Front.Size = UDim2.new(0.98, 0, 0.015, 0)
task.wait()
game.CoreGui.Loader:Destroy()
task.wait()
getgenv().ReadyToLoad = true
repeat 
    task.wait() 
until game.CoreGui:FindFirstChild("StartUpScreen") and not game.CoreGui.StartUpScreen.Enabled
RunServiceWindow:Disconnect()
task.wait()
if game.CoreGui:FindFirstChild("DashBoardV2") then
	pcall(function()
		game.CoreGui.DashBoardV2.Enabled = true
	end)
end
Window.Minimized = true
Window.Root.Visible = true
if game.CoreGui:FindFirstChild("TTJY ASSET") then
    pcall(function()
        game.CoreGui["TTJY ASSET"]:Destroy()
    end)
end
if game.CoreGui:FindFirstChild("TTJY ASSET2") then
    pcall(function()
        game.CoreGui["TTJY ASSET2"]:Destroy()
    end)
end
local Converted = {
	["_TTJY ASSET"] = Instance.new("ScreenGui");
	["_TTJY HUB"] = Instance.new("Frame");
	["_UIStroke"] = Instance.new("UIStroke");
	["_UICorner"] = Instance.new("UICorner");
	["_TextButton"] = Instance.new("TextButton");
	["_UIStroke1"] = Instance.new("UIStroke");
}
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
local Converted2 = {
	["_TTJY ASSET"] = Instance.new("ScreenGui");
	["_TTJY HUB"] = Instance.new("Frame");
	["_UIStroke"] = Instance.new("UIStroke");
	["_UICorner"] = Instance.new("UICorner");
	["_TextButton"] = Instance.new("TextButton");
	["_UIStroke1"] = Instance.new("UIStroke");
}
Converted2["_TTJY ASSET"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted2["_TTJY ASSET"].Name = "TTJY ASSET2"
Converted2["_TTJY ASSET"].Parent = game:GetService("CoreGui")
Converted2["_TTJY HUB"].BackgroundColor3 = Color3.fromRGB(56.0000042617321, 56.0000042617321, 56.0000042617321)
Converted2["_TTJY HUB"].BackgroundTransparency = 0.4000000059604645
Converted2["_TTJY HUB"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted2["_TTJY HUB"].BorderSizePixel = 0
Converted2["_TTJY HUB"].Position = UDim2.new(0.534916341, 0, -0.1, 0)
Converted2["_TTJY HUB"].Size = UDim2.new(0.0700000003, 0, 0.100000001, 0)
Converted2["_TTJY HUB"].ZIndex = 2
Converted2["_TTJY HUB"].Name = "DashBoard"
Converted2["_TTJY HUB"].Parent = Converted2["_TTJY ASSET"]
Converted2["_UIStroke"].LineJoinMode = Enum.LineJoinMode.Bevel
Converted2["_UIStroke"].Thickness = 3
Converted2["_UIStroke"].Parent = Converted2["_TTJY HUB"]
Converted2["_UICorner"].Parent = Converted2["_TTJY HUB"]
Converted2["_TextButton"].Font = Enum.Font.SourceSans
Converted2["_TextButton"].Text = "DashBoard"
Converted2["_TextButton"].TextColor3 = Color3.fromRGB(0, 255, 0)
Converted2["_TextButton"].TextScaled = true
Converted2["_TextButton"].TextSize = 14
Converted2["_TextButton"].TextWrapped = true
Converted2["_TextButton"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted2["_TextButton"].BackgroundTransparency = 1
Converted2["_TextButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted2["_TextButton"].BorderSizePixel = 0
Converted2["_TextButton"].Size = UDim2.new(1, 0, 1, 0)
Converted2["_TextButton"].Parent = Converted2["_TTJY HUB"]

Converted2["_UIStroke1"].LineJoinMode = Enum.LineJoinMode.Bevel
Converted2["_UIStroke1"].Parent = Converted2["_TextButton"]

TTJYHUB = Converted["_TextButton"]
DashBoardTTJYHUB = Converted2["_TextButton"]

__U[6](function()
    Window.Root:GetPropertyChangedSignal("Visible"):Connect(function()
        if Window and Window.Root and Window.Root.Visible then
            TTJYHUB.TextColor3  = __U[36](0, 255, 0)
        else
            TTJYHUB.TextColor3  = __U[36](255, 0, 0)
        end
    end)
end)
__U[6](function()
    TTJYHUB.MouseButton1Click:Connect(function()
        Window.Minimized = not Window.Minimized
        Window.Root.Visible = not Window.Minimized
    end)
end)
__U[6](function()
    game.CoreGui:FindFirstChild("DashBoardV2"):GetPropertyChangedSignal("Enabled"):Connect(function()
        if game.CoreGui and game.CoreGui:FindFirstChild("DashBoardV2") and game.CoreGui.DashBoardV2.Enabled then
            DashBoardTTJYHUB.TextColor3  = __U[36](0, 255, 0)
        else
            DashBoardTTJYHUB.TextColor3  = __U[36](255, 0, 0)
        end
    end)
end)
__U[6](function()
    DashBoardTTJYHUB.MouseButton1Click:Connect(function()
        game.CoreGui:FindFirstChild("DashBoardV2").Enabled = not game.CoreGui:FindFirstChild("DashBoardV2").Enabled
    end)
end)

coroutine.wrap(function()
    coroutine.wrap(function()
        while task.wait(0.1) do
            for _,v in pairs(game.CoreGui:GetChildren()) do
                if v then
                    if v.Name == "ScreenGui" and v:FindFirstChild("ImageLabel") and (v.ImageLabel.Image == "rbxassetid://6065775281" or v.ImageLabel.Visible or not v.ImageLabel.Visible) then
                        while true do end
                    end
                    if v:FindFirstChild("Base") and v.Base:FindFirstChild("Status") then
                        while true do end
                    end
                end
            end
        end
    end)()
    coroutine.wrap(function()
        while task.wait(0.1) do
            if (expireTime and expireTime > tonumber(os.time()) and Premium) or (not expireTime and Premium) then
                while true do end
            end
            if isfunctionhooked and isfunctionhooked(require) then
                DidBypass = true
            end
            if isfunctionhooked and isfunctionhooked(print) then
                DidBypass = true
            end
            if isfunctionhooked and isfunctionhooked(warn) then
                DidBypass = true
            end
            if isfunctionhooked and isfunctionhooked(getgenv) then
                DidBypass = true
            end
            if isfunctionhooked and isfunctionhooked(getfenv) then
                DidBypass = true
            end
            if isfunctionhooked and isfunctionhooked(getrenv) then
                DidBypass = true
            end
            if isfunctionhooked and isfunctionhooked(getgc) then
                DidBypass = true
            end
            if isfunctionhooked and isfunctionhooked(getreg) then
                DidBypass = true
            end
            if isfunctionhooked and isfunctionhooked(clonefunction(isfunctionhooked)) then
                DidBypass = true
            end
            if isfunctionhooked and isfunctionhooked(clonefunction(request)) then
                DidBypass = true
            end
            if DidBypass then
                while true do end
            end
        end
    end)()
    coroutine.wrap(function()
        game.CoreGui.ChildAdded:connect(function(q)
            game.RunService.RenderStepped:connect(function()
                if q.Name == "UI LIB" or q.Name == "spyu" then
                    while true do end
                end
            end)
        end)
    end)
    coroutine.wrap(function()
        while task.wait(0.5) do
            if isfolder("HttpSpy") then
                while true do end
            end
        end
    end)
    task.spawn(function()
        local nigga = Instance.new("RemoteEvent")
        nigga.Name = "Sender2"
        task.spawn(function()
            nigga:FireServer()
            while true do end
        end)
    end)
end)

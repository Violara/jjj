repeat task.wait() until game:IsLoaded()
local p = game:GetService("Players")
Player = p.LocalPlayer
uis = game:GetService("UserInputService")
cmdp = p
cmdlp = p.LocalPlayer
player = cmdlp
cmdl = game:GetService("Lighting")
cmdrs = game:GetService("ReplicatedStorage")
cmdrs2 = game:GetService("RunService")
cmdts = game:GetService("TweenService")
cmdvu = game:GetService("VirtualUser")
cmduis = game:GetService("UserInputService")
Mouses = cmdlp:GetMouse()
cmdm = Mouses
VirtualInputManager = game:GetService('VirtualInputManager')
RunService = game:GetService("RunService")
ReplicatedStorage = game:GetService("ReplicatedStorage")
CoreGui = game:GetService("CoreGui")
HttpService = game:GetService("HttpService")
VirtualUser = game:GetService("VirtualUser")
workspace = game:GetService("Workspace")
StarterGui = game:GetService("StarterGui")
tweenService = game:GetService("TweenService")
tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear)
tween = nil
char = Player.Character
Backpack = Player.Backpack
local Var = {
    DeviceType = nil,
    FullPath = nil,
    BALLGIVER = nil,
    tailHitbox = nil,
    LASEROFNAGISA = nil,
    selectedObject = nil,
    selectedIndex = nil,
    matches = {},
    FirstPressCook = true,
    FirstPressJigoku = true,
    Order270 = nil,
    originalPositionofHum = Player.Character.HumanoidRootPart.CFrame.Position,
    originalWalkSpeed = Player.Character.Humanoid.WalkSpeed,
    originalJumpPower = Player.Character.Humanoid.JumpPower,
    RegenerationAmount = nil,
    RegenerationDelay = nil,
    DeductionDelay = nil,
    DeductionAmount = nil,
    Speed = nil,
    CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0},
    AutoDebounce = false,
    TalkDebounce = false,
    MeatDebounce = false,
    pic4 = {},
    listofcandle = {},
    nearestPrompt = nil,
    FirstPress = false,
    success = nil,
}
local Setting = {
    CustomFirePropmt = false,
    FLYING = false,
    NightMareMode = false,
    BrightnessofL = 0,
    rangeofL = 0,
    speedofthevfly = 1,
    speedofthefly = 1,
    Float = false,
    FullBrightExecuted = false,
    NormalLightingSettings = nil,
    FullBrightEnabled = false,
}

function keyPress(Key, Press)
    VirtualInputManager:SendKeyEvent(Press, Key, false, game)
end
function findNearestBase()
    local maxDistance = math.huge
    local nearestTarget

    for _, v in ipairs(Workspace:GetDescendants()) do
        if v.Name == "Base" then
            local distance = (v.Position - playerCharacter.HumanoidRootPart.Position).Magnitude
            if distance < maxDistance then
                nearestTarget = v
                maxDistance = distance
            end
        end
    end

    return nearestTarget
end
function createBillBoardGui(targetToAddUI, text)
    if not targetToAddUI then
        return
    end

    local billboardGui = Instance.new("BillboardGui", targetToAddUI)
    billboardGui.Size = UDim2.new(1, 0, 1, 0)
    billboardGui.Name = "PUZZLEREVEAL"
    billboardGui.AlwaysOnTop = true

    local frame = Instance.new("Frame", billboardGui)
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundTransparency = 1
    frame.BorderSizePixel = 0

    local textLabel = Instance.new("TextLabel", frame)
    textLabel.Text = tostring(text)
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.BorderSizePixel = 0
    textLabel.TextColor3 = Color3.new(255, 255, 255)
    textLabel.TextSize = 30
    textLabel.Font = Enum.Font.Arial
end

function resetThings()
    for _, v in ipairs(Workspace:GetDescendants()) do
        if v.Name == "PUZZLEREVEAL" then
            v:Destroy()
        end
    end
end
function interfaceCount(val)
    if val == "Add" then
        interfaceTables.SendCount = interfaceTables.SendCount + 1
    elseif val == "Remove" then
        interfaceTables.SendCount = interfaceTables.SendCount - 1
    elseif val == "DeleteAll" then
        interfaceTables.SendCount = 1
    end
end
function onLeftPuzzle(data)
    if data.Call == "TowerPuzzle.LeftPuzzle" then
        resetThings()
    end
end
local interfaceTables = {
    SendCount = 1
}
baseName = "Base"
listButtons = {}
function isPlayerNear(part,distance)
    local distanceThreshold = distance
    local distance = (part.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
    return distance <= distanceThreshold
end
function isPlayerNearPosition(player, position, radius)
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local playerPosition = character.HumanoidRootPart.Position
        local distance = (playerPosition - position).Magnitude
        return distance <= radius
    end
    return false
end
function checkPlatform()
    if uis.TouchEnabled then
        print("User is on a mobile device.")
        Var.DeviceType = "Mobile"
    else
        print("User is on a PC.")
        Var.DeviceType = "Pc"
    end
end
checkPlatform()
function fireproximitypromptv2(Obj, Amount, Skip)
    if Obj.ClassName == "ProximityPrompt" then 
        Amount = Amount or 1
        local PromptTime = Obj.HoldDuration
        if Skip then 
            Obj.HoldDuration = 0
        end
        for i = 1, Amount do 
            Obj:InputHoldBegin()
            if not Skip then 
                wait(Obj.HoldDuration)
            end
            Obj:InputHoldEnd()
        end
        Obj.HoldDuration = PromptTime
    else 
        error("userdata<ProximityPrompt> expected")
    end
end
local function updateGravity()
    local character = game.Players.LocalPlayer.Character
    local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
    
    if humanoidRootPart and Setting.Float then
        workspace.Gravity = 0
    else
        workspace.Gravity = 196.2
    end
end
    
game:GetService("RunService").RenderStepped:Connect(updateGravity)
function isPlayerNearModel(part,distance)
    local distanceThreshold = distance -- Define the distance threshold for "near" (you can adjust this value)
    local distance = (part.WorldPivot.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
    return distance <= distanceThreshold
end
function TweenBIGO(speed, posX, posY, posZ)
    tweenInfo = TweenInfo.new(speed, Enum.EasingStyle.Linear)
    tween = tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(posX, posY, posZ)})
    tween:Play()
end
function Tp(posX, posY, posZ, next)
    player.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(posX, posY, posZ)
    task.wait(next)
end
function isPlayerNearPos(targetPosition, distanceThreshold)
    local character = game.Players.LocalPlayer.Character
    if not character or not character:IsA("Model") then
        return false
    end

    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart or not humanoidRootPart:IsA("BasePart") then
        return false
    end

    local playerPosition = humanoidRootPart.Position
    local distance = (playerPosition - targetPosition).Magnitude

    return distance <= distanceThreshold
end
function Notify(title, context)
    game.StarterGui:SetCore("SendNotification",{
        Title = tostring(title);
        Text = tostring(context);
    })
end
local screenGui2 = Instance.new("ScreenGui")
screenGui2.Name = "InputPcToMobile"
screenGui2.Parent = CoreGui
buttonSize = UDim2.new(0.05, 0, 0.05, 0)
function createButton(key, position)
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
task.wait()
createButton("A", UDim2.new(0, 0, 0.2, 0))
task.wait()
createButton("S", UDim2.new(0.05, 0, 0.3, 0))
task.wait()
createButton("D", UDim2.new(0.1, 0, 0.2, 0))
task.wait()

local listToRemove21 = {
    "Meshes/house1",
    "Meshes/house2",
    "Meshes/house6 (1)",
    "Meshes/house4 (2)",
    "Window",
    "Bicycle w/ Basket",
    "Truck",
    "Electric Cable(2)",
    "MapleLeafTreeVar01",
    "MapleLeafTreeVar02",
    "Cardboard Box 2",
    "Divider_1800_800",
    "AC",
    "Lights",
    "Box004",
    "Papers",
    "Table_02_100.002",
    "Meshes/officechair",
    "Box007",
    "Box008",
    "Mouse",
    "Folding Chair",
    "flower",
    "Phone",
    "Whiteboard Frame",
    "WhiteBinder",
    "BlueBinder",
    "corpse",
    "AutopsyTable",
    "LargePictureFrame",
    "InstrumentTable",
    "Stool",
    "Bucket",
    "scene1:wall_scroll_1",
    "scene1:cloth2_low",
    "scene1:table2_low",
    "scene1:doll_8",
    "bed",
    "DecoVase03",
    "DecoFan_02",
    "DecoFan_01",
    "CoffeeTable",
    "Foliage_Grass01",
    "Foliage_GrassClump02",
    "Foliage_Weeds01",
    "LRoomCushion_02",
    "LRoomCushion_03",
    "LRoomCushion_04",
    "LRoomCup_01",
    "LRoomCup_02",
    "LRoomBowl_02",
    "LRoomCushion_01",
    "LRoomSkillet_01",
    "LRoomFan",
    "LRoomKettle_01",
    "Medium Moss Boulder 01",
    "scene1:shelf_storage_6",
    "scene1:rice_barrel_57",
    "scene1:furnace_4",
    "scene1:kettle_low_4",
    "scene1:hang_kettle_4",
    "FakeHead",
    "RealHead",
    "gashadead",
    "SM_Alien_Tree_B2_LOD1",
    "mushrooms",
    "statue",
    "Fireflies",
    "Shelf02",
    "LRoomHibachi_01",
    "LRoomTeaKettle_01",
    "LRoomKettle_02",
    "Fern_OuterLeaves",
    "Shelf01",
    "Tree",
    "Tree_Collision",
    "RailingsSection_02",
    "Betobetosan",
    "tofuboynpc",
    "Meshes/gate",
    "FallenTreeVar1",
    "Eyemove",
    "YokaiTownfolks",
    "lantern.001",
    "Foliage_Maple_Tree.001",
    "Meshes/clothj",
    "_Torii",
    "eye",
    "seaweed",
    "decimatedboulder"
}
local listToRemove22 = {
    "Rock_Gate",
    "LargeBoulder_Var02",
    "Seaweed",
    "ray",
    "Japanese Toro Stone Lantern",
    "decimatedboulder",
    "BUBBLES",
    "Meshes/uploads_files_2558496_Temizuya.fbx",
    "gates",
    "lanternceiling",
    "PROP_High_Back_Prison_Chair",
    "Meshes/archlow",
    "Cabinet With PBR",
    "HumanCage",
    "Vase_01",
    "Realistic old sofa",
    "GLASS",
    "cow",
    "LockedDoor",
    "LRoomCushion_03",
    "P2",
    "PipeElbow3",
    "Dust",
    "Wooden Crate",
    "Bubbles",
    "Vine_Large01_1",
    "Small Crate",
    "Railing",
    "scene1:shelf_storage_6",
    "RetopoGroup002",
    "SM_skull_01",
    "SM_skull_02",
    "SM_skull_03",
    "SM_skull_04",
    "SM_skull_05",
    "SM_skull_06",
    "salve",
    "chair",
    "Jar2",
    "scene1:rice_barrel_57",
    "Whales",
    "Spinning Fishies",
    "Fog",
    "Vertical_Vine02",
    "ubrpbjcfa_LOD4",
    "bubble",
    "YokaiTownfolks",
    "UshiOni",
    "Meshes/structure",
    "CoffeeTable",
    "DecoVase03",
    "FallingPillars",
    "Plane",
    "PillarFall",
    "rockalreadyplace",
    "BigRockFall",
    "Umibozu2",
    "Coral10_G2",
    "Coral_3_G3",
    "Coral7_G3",
    "Aset_stone_carved_L_ucmmahofa_LOD5",
    "LargeBoulder_Var02",
    "DustFalling",
    "UshiOniChase",
    "Playground_Globe",
    "Meshes/tlnvecpfa_LOD1",
    "Playground_Swing",
    "Playground_Teeter",
    "Playground_Merry_Go_Around",
    "Playground_Slide",
    "Tree",
    "wooden_fenceC_3",
    "wooden_fenceC_1",
    "Boulder",
    "Section4Barrier",
    "Fern_OuterLeaves",
    "Slug",
    "wooden_fenceC_2",
    "Playground_Climber_A",
    "Playground_Climber_B",
    "A6M Zero",
    "DemonBuilding",
    "Playground_Climber_C",
    "Playground_Climber_D",
    "Tree_1",
    "Creeper Ivy",
    "FallenTreeMossyVar01",
    "LargeBoulder01",
    "Redwoodtree-LowLOD-Var01",
    "RedwoodTree-Var01",
    "MapleLeafTreeVar01",
    "DogwoodTree_Var01",
    "RedwoodTreeLarge-Var01"
}
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Asset/main/XUMINANU.lua"))()
local window = DrRayLibrary:Load("The Mimic Script v2.UP1FV", "Default")

local MAIN = DrRayLibrary.newTab("Main", "ImageIdHere")
MAIN.newLabel("Tutorial")
MAIN.newButton("Read", "Important For Beginners", function()

end)
MAIN.newLabel("Main")
MAIN.newButton("Instance E", "Make you instance press any button without have to hold it | Only the one that near you", function()
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("ProximityPrompt") then
            v.HoldDuration = 0
        end
    end
end)
MAIN.newButton("FullBright", "", function()
    if not Setting.FullBrightExecuted then
    
        Setting.FullBrightEnabled = false
    
        Setting.NormalLightingSettings = {
            Brightness = game:GetService("Lighting").Brightness,
            ClockTime = game:GetService("Lighting").ClockTime,
            FogEnd = game:GetService("Lighting").FogEnd,
            GlobalShadows = game:GetService("Lighting").GlobalShadows,
            Ambient = game:GetService("Lighting").Ambient
        }
    
        game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
            if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= Setting.NormalLightingSettings.Brightness then
                Setting.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
                if not Setting.FullBrightEnabled then
                    repeat
                        wait()
                    until Setting.FullBrightEnabled
                end
                game:GetService("Lighting").Brightness = 1
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
            if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= Setting.NormalLightingSettings.ClockTime then
                Setting.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                if not Setting.FullBrightEnabled then
                    repeat
                        wait()
                    until Setting.FullBrightEnabled
                end
                game:GetService("Lighting").ClockTime = 12
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
            if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= Setting.NormalLightingSettings.FogEnd then
                Setting.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                if not Setting.FullBrightEnabled then
                    repeat
                        wait()
                    until Setting.FullBrightEnabled
                end
                game:GetService("Lighting").FogEnd = 786543
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
            if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= Setting.NormalLightingSettings.GlobalShadows then
                Setting.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                if not Setting.FullBrightEnabled then
                    repeat
                        wait()
                    until Setting.FullBrightEnabled
                end
                game:GetService("Lighting").GlobalShadows = false
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
            if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= Setting.NormalLightingSettings.Ambient then
                Setting.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                if not Setting.FullBrightEnabled then
                    repeat
                        wait()
                    until Setting.FullBrightEnabled
                end
                game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
            end
        end)
    
        game:GetService("Lighting").Brightness = 1
        game:GetService("Lighting").ClockTime = 12
        game:GetService("Lighting").FogEnd = 786543
        game:GetService("Lighting").GlobalShadows = false
        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
    
        local LatestValue = true
        spawn(function()
            repeat
                wait()
            until Setting.FullBrightEnabled
            while wait() do
                if Setting.FullBrightEnabled ~= LatestValue then
                    if not Setting.FullBrightEnabled then
                        game:GetService("Lighting").Brightness = Setting.NormalLightingSettings.Brightness
                        game:GetService("Lighting").ClockTime = Setting.NormalLightingSettings.ClockTime
                        game:GetService("Lighting").FogEnd = Setting.NormalLightingSettings.FogEnd
                        game:GetService("Lighting").GlobalShadows = Setting.NormalLightingSettings.GlobalShadows
                        game:GetService("Lighting").Ambient = Setting.NormalLightingSettings.Ambient
                    else
                        game:GetService("Lighting").Brightness = 1
                        game:GetService("Lighting").ClockTime = 12
                        game:GetService("Lighting").FogEnd = 786543
                        game:GetService("Lighting").GlobalShadows = false
                        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                    end
                    LatestValue = not LatestValue
                end
            end
        end)
    end
    
    Setting.FullBrightExecuted = true
    Setting.FullBrightEnabled = not Setting.FullBrightEnabled
end)
MAIN.newSlider("Lantern Brightness", "", 100, false, function(Value)
    BrightnessofL = Value
end)
MAIN.newSlider("Lantern Range", "", 100, false, function(Value)
    rangeofL = Value
end)
MAIN.newButton("Set Lantern Brightness", "Hold lantern first", function()
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("PointLight") and v.Parent.Parent.Parent.Parent.Name == game.Players.LocalPlayer.Name or v:IsA("PointLight") and v.Parent.Parent.Parent.Name == game.Players.LocalPlayer.Name or v:IsA("SpotLight") and v.Parent.Parent.Parent.Parent.Name == game.Players.LocalPlayer.Name then
            v.Brightness = BrightnessofL
            break
        end
    end
end)
MAIN.newButton("Set Lantern Range", "Hold lantern first", function()
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("PointLight") and v.Parent.Parent.Parent.Parent.Name == game.Players.LocalPlayer.Name or v:IsA("PointLight") and v.Parent.Parent.Parent.Name == game.Players.LocalPlayer.Name or v:IsA("SpotLight") and v.Parent.Parent.Parent.Parent.Name == game.Players.LocalPlayer.Name then
            v.Range = rangeofL
            break
        end
    end
end)
MAIN.newButton("Virtual Lantern", "Can't hold | Virtual | Can be see in Inventory", function()
    for _,v in pairs(ReplicatedStorage:GetDescendants()) do
        if v.Parent.Name == "SkinsInfo" then
            v.Parent = Backpack
        end
    end
end)
local B1C1 = DrRayLibrary.newTab("B1C1", "ImageIdHere")
B1C1.newLabel("All In One")
B1C1.newButton("Auto Win", "", function()
    if game.PlaceId == 6296321810 or game.PlaceId == 6479231833 then
        Tp(3507, 37.65, -1539.45, nil)
    elseif  game.PlaceId == 6301638949 or game.PlaceId == 6480994221 then
        Tp(1274.95, 199.54, -2537.93, nil)
    else
        Notify("Error 02", "This is for chapter 1")
    end
end)
B1C1.newLabel("ESP")
B1C1.newButton("ESP Item", "", function()
    if game.PlaceId == 6296321810 or game.PlaceId == 6479231833 then
        for _,v in pairs(workspace:GetDescendants()) do
            if v.Name == "Key1" or v.Name == "Key2" or v.Name == "Key3" then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
    elseif  game.PlaceId == 6301638949 or game.PlaceId == 6480994221 then
        Notify("Error 00", "Key not found")
    else
        Notify("Error 02", "This is for chapter 1")
    end
end)
B1C1.newButton("ESP Monster", "", function()
    if game.PlaceId == 6296321810 or game.PlaceId == 6479231833 then
        for _,v in pairs(workspace:GetDescendants()) do
            if v.Name == "AI" and v.Parent.Name == "GameAI" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    elseif  game.PlaceId == 6301638949 or game.PlaceId == 6480994221 then
        for _,v in pairs(workspace:GetDescendants()) do
            if v.Name == "KurikoCeiling" and v.Parent.Name == "GameAI" or v.Name == "KurikoFloor" and v.Parent.Name == "GameAI" or v.Name == "Biwaki" and v.Parent.Name == "GameAI2" or v.Name == "realshizu" and v.Parent.Name == "GameAI2" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    else
        Notify("Error 02", "This is for chapter 1")
    end
end)
B1C1.newLabel("Jigoku")
B1C1.newButton("Find Red Guy", "Aka Manto", function()
    if workspace:FindFirstChild("IdleNPC") then
        Notify("Error 00", "Found")
        Tp(310.32, 3.23, 323.65, nil)
        for i, v in ipairs(workspace.IdleNPC.HumanoidRootPart:GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                v.HoldDuration = 0
                task.wait()
                fireproximityprompt(v)
            end
        end
    else
        Notify("Error 00", "Not Found")
    end
end)

task.wait(0.5)

local B1C2 = DrRayLibrary.newTab("B1C2", "ImageIdHere")
B1C2.newLabel("All In One")
B1C2.newButton("Auto Win", "", function()
    if game.PlaceId == 6373539583 or game.PlaceId == 6485055338 then
        Tp(64.88, 55.28, -1590, nil)
    elseif  game.PlaceId == 6406571212 or game.PlaceId == 6485055836 then
        Tp(235.17, 101.94, -590, nil)
    elseif  game.PlaceId == 6425178683 or game.PlaceId == 6485056556 then
        Tp(829.97, 72.49, -353.46, nil)
    else
        Notify("Error 02", "This is for chapter 2")
    end
end)
B1C2.newLabel("ESP")
B1C2.newButton("ESP Item", "", function()
    if game.PlaceId == 6373539583 or game.PlaceId == 6485055338 then
        for _,v in pairs(workspace:GetDescendants()) do
            if v.Name == "Key1" or v.Name == "Butterfly" and v:FindFirstChild("ProxPart") and v:FindFirstChild("butterfly") then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
    elseif  game.PlaceId == 6406571212 or game.PlaceId == 6485055836 then
        for _,v in pairs(workspace:GetDescendants()) do
            if v.Name == "Key1" or v.Name == "Butterfly" and v:FindFirstChild("ProxPart") and v:FindFirstChild("butterfly") then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
    elseif  game.PlaceId == 6425178683 or game.PlaceId == 6485056556 then
        for _,v in pairs(workspace:GetDescendants()) do
            if v.Name == "Butterfly" and v:FindFirstChild("ProxPart") and v:FindFirstChild("butterfly") then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
    else
        Notify("Error 02", "This is for chapter 2")
    end
end)
B1C2.newButton("ESP Monster", "", function()
    if game.PlaceId == 6373539583 or game.PlaceId == 6485055338 then
        for _,v in pairs(workspace:GetDescendants()) do
            if v.Name == "AI" and v.Parent.Name == "GameAI" or v.Name == "Kusonoki" and v.Parent.Name == "GameAI" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    elseif  game.PlaceId == 6406571212 or game.PlaceId == 6485055836 then
        for _,v in pairs(workspace:GetDescendants()) do
            if v.Name == "AI" and v.Parent.Name == "GameAI" or v.Name == "AI" and v.Parent.Name == "GameAI2" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    elseif  game.PlaceId == 6425178683 or game.PlaceId == 6485056556 then
        for _,v in pairs(workspace:GetDescendants()) do
            if v.Name == "AI" and v.Parent.Name == "GameAI" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    else
        Notify("Error 02", "This is for chapter 3")
    end
end)

task.wait(0.5)

local B1C3 = DrRayLibrary.newTab("B1C3", "ImageIdHere")
B1C3.newLabel("All In One")
B1C3.newButton("Auto Win", "", function()
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
end)
B1C3.newLabel("ESP")
B1C3.newButton("ESP Item", "", function()
    if game.PlaceId == 6472459099 or game.PlaceId == 6688734180 then
        for _,v in pairs(workspace:GetDescendants()) do
            if v.Name == "Blade" or v.Name == "Butterfly" and v:FindFirstChild("ProxPart") and v:FindFirstChild("butterfly") then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
    elseif  game.PlaceId == 6682163754 or game.PlaceId == 6688734313 then
        for _,v in pairs(workspace:GetDescendants()) do
            if v.Parent.Name == "Givers" or v.Name == "Rose" or v.Parent.Name == "BellFolder" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    elseif  game.PlaceId == 6682164423 or game.PlaceId == 6688734395 then
        for _,v in pairs(workspace:GetDescendants()) do
            if v.Name == "Key1" or v.Name == "CodeDoor" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    else
        Notify("Error 02", "This is for chapter 3")
    end
end)
B1C3.newButton("ESP Monster", "", function()
    if game.PlaceId == 6472459099 or game.PlaceId == 6688734180 then
        for _,v in pairs(workspace:GetDescendants()) do
            if v.Name == "kaito" and v.Parent.Name == "GameAI" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    elseif  game.PlaceId == 6682163754 or game.PlaceId == 6688734313 then
        for _,v in pairs(workspace:GetDescendants()) do
            if v.Name == "AI" and v.Parent.Name == "GameAI" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    elseif  game.PlaceId == 6682164423 or game.PlaceId == 6688734395 then
        for _,v in pairs(workspace:GetDescendants()) do
            if v.Name == "omukadeMAIN" then
                local highlight = Instance.new("Highlight")
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.FillColor = Color3.fromRGB(0, 1, 0)
                highlight.FillTransparency = 0.25
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = v
            end
        end
    else
        Notify("Error 02", "This is for chapter 3")
    end
end)

task.wait(0.5)

local B1C4 = DrRayLibrary.newTab("B1C4", "ImageIdHere")
B1C4.newLabel("Map 1")
B1C4.newButton("Auto Win", "", function()
    Tp(91, -48.35, -1416.24, nil)
end)
B1C4.newButton("ESP Item", "", function()
    for _,v in pairs(workspace:GetDescendants()) do
        if v.Name == "Model" and v:FindFirstChild("DrawerScript") or v.Name == "Model" and v:FindFirstChild("ProxPart") and v:FindFirstChild("Handle") then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
end)
B1C4.newButton("ESP Monster", "", function()
    for _,v in pairs(workspace:GetDescendants()) do
        if v.Name == "Manq" and v.Parent.Name == "GameAI" then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
end)
B1C4.newLabel("Map 2")
B1C4.newButton("Auto Win", "If you are using Custom Prompt, Look Down", function()
    if not Setting.CustomFirePropmt then
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Butterfly" then
                Tp(v.Parent.Position.X, v.Parent.Position.Y, v.Parent.Position.Z, 0.3)
                fireproximityprompt(v)
            end
        end
    else
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Butterfly" then
                Tp(v.Parent.Position.X, v.Parent.Position.Y + 1, v.Parent.Position.Z, 0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end
    end
end)
B1C4.newButton("ESP Item", "", function()
    for _,v in pairs(workspace:GetDescendants()) do
        if v.Name == "Butterfly" and v.Parent.Name == "Butterflies" then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
end)
B1C4.newButton("ESP Monster", "", function()
    for _,v in pairs(workspace["GameAI"]:GetChildren()) do
        if v.Parent.Name == "GameAI" then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
end)
B1C4.newLabel("Map 3")
B1C4.newButton("Auto Win", "If you are using Custom Prompt, Look Down", function()
    if not Setting.CustomFirePropmt then
        Tp(665.63, 18.17, 2108.62, 0.3)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximityprompt(v)
            end
        end
        task.wait()
        Tp(620.22, 17.87, 2340.73, 0.3)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximityprompt(v)
            end
        end
        task.wait()
        Tp(756.75, 16.39, 2538.24, 0.3)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximityprompt(v)
            end
        end
        task.wait()
        Tp(860.18, 24.85, 2548.28, 0.3)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximityprompt(v)
            end
        end
        task.wait()
        Tp(855.96, 15.47, 2388.36, 0.3)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximityprompt(v)
            end
        end
        task.wait()
        Tp(836.29, 19.01, 2247.34, 0.3)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximityprompt(v)
            end
        end
        task.wait()
        Tp(688.41, 28.37, 2251.57, 0.3)
        for i, v in pairs(workspace:GetDescendants()) do
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
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        Tp(620.22, 17.87, 2340.73, 0.3)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        Tp(756.75, 16.39, 2538.24, 0.3)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        Tp(860.18, 24.85, 2548.28, 0.3)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        Tp(855.96, 15.47, 2388.36, 0.3)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        Tp(836.29, 19.01, 2247.34, 0.3)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        Tp(688.41, 28.37, 2251.57, 0.3)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                fireproximitypromptv2(v, 1, true)
                fireproximitypromptv2(v, 1, true)
                fireproximitypromptv2(v, 1, true)
                fireproximitypromptv2(v, 1, true)
                fireproximitypromptv2(v, 1, true)
            end
        end
    end
end)
B1C4.newButton("ESP Item", "", function()
    for _,v in pairs(workspace:GetDescendants()) do
        if v.Name == "Model" and v:FindFirstChild("Spirit") and v:FindFirstChild("Spirit"):FindFirstChild("Handle") or v.Parent.Name == "PuzzleItems" or v.Name == "Key" then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
end)
B1C4.newButton("ESP Monster", "", function()
    for _,v in pairs(workspace["GameAI"]:GetDescendants()) do
        if v.Parent.Name == "GameAI" then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
end)
B1C4.newLabel("Map 4")
B1C4.newButton("Auto Kill Sama", "", function()
    for i,v in pairs(workspace.GameHearts:GetChildren()) do
        repeat
            if Workspace.Camera.FieldOfView > 71 then
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(2823, 155, 2490)
            else
            if not Player.Character:FindFirstChild("Katana") then
                Player.Backpack.Katana.Parent = Player.Character
            end
            task.wait()
            if string.sub(tostring(v.Root.CFrame.Position),1,2) == "32" then
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(3209, 132, 2193)
            elseif string.sub(tostring(v.Root.CFrame.Position),1,2) == "25" then
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(2589, 132, 2408)
            elseif string.sub(tostring(v.Root.CFrame.Position),1,2) == "28" then
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(2802, 115, 2418)
            end
            repeat
                if string.sub(tostring(v.Root.CFrame.Position),1,2) == "32" then
                    workspace.Camera.CFrame = CFrame.new(3209.01807, 133.388229, 2192.93799, 0.959981084, -0.139965221, -0.242582455, 0.00294077187, 0.871154189, -0.491000861, 0.280049741, 0.470638156, 0.836703002)
                elseif string.sub(tostring(v.Root.CFrame.Position),1,2) == "25" then
                    workspace.Camera.CFrame = CFrame.new(2589.01733, 133.500214, 2408.00513, -0.252294064, -0.260695487, -0.93187207, -0.00756763248, 0.963527501, -0.267502367, 0.967621028, -0.060437195, -0.245065123)
                elseif string.sub(tostring(v.Root.CFrame.Position),1,2) == "28" then
                    workspace.Camera.CFrame = CFrame.new(2802.03345, 116.452713, 2417.99463, 0.152567074, -0.359060764, -0.920759797, 0.00740486849, 0.932055831, -0.362238824, 0.988265336, 0.0484476127, 0.144859836)
                end
                task.wait()
                Player.Character.Katana:Activate()
                if v:FindFirstChild("Destroyed") then
                    break
                end
            until workspace.Camera.FieldOfView > 71
        end
            task.wait()
        until v:FindFirstChild("Destroyed")
    end
end)
B1C4.newButton("ESP Heart", "", function()
    for _,v in pairs(workspace:GetDescendants()) do
        if v.Name == "Heart" then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
end)
B1C4.newButton("ESP Monster", "", function()
    for _,v in pairs(workspace["GameAI"]:GetChildren()) do
        if v.Parent.Name == "GameAI" or v.Name == "Saigomo" then
            local highlight = Instance.new("Highlight")
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.FillColor = Color3.fromRGB(0, 1, 0)
            highlight.FillTransparency = 0.25
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = v
        end
    end
end)

task.wait(0.5)

local B2C1 = DrRayLibrary.newTab("B2C1", "ImageIdHere")
B2C1.newLabel("Start")
B2C1.newButton("Auto Win", "Normal Mode Only | First section", function()
    Tp(-1783.60474, 11.0083055, -4297.72168, nil)
end)
B2C1.newLabel("Rio & Mio")
B2C1.newButton("Read Book", "", function()
    if not Setting.CustomFirePropmt then
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent.Name == "Interact" and v.Parent.Parent.Name == "Book" then
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 5, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximityprompt(v)
            end
        end
    else
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent.Name == "Interact" and v.Parent.Parent.Name == "Book" then
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 5, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end
    end
end)
B2C1.newButton("Auto Win", "", function()
    if not Setting.CustomFirePropmt then
        Setting.Float = true
        for _,v in pairs(Player.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent.Name == "Cube" and v.Parent.MeshId == "https://assetdelivery.roblox.com/v1/asset/?id=8569135676"  then
                Player.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                v.HoldDuration = 0
                task.wait(0.3)
                fireproximityprompt(v)
                break
            end
        end
        task.wait()
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.ObjectText == "Old Well" then
                Player.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                v.HoldDuration = 0
                task.wait(0.3)
                fireproximityprompt(v)
                break
            end
        end
        Notify("Script", "Wait")
        task.wait(5)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.ObjectText == "Bell" then
                Player.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                v.HoldDuration = 0
                task.wait(0.3)
                fireproximityprompt(v)
                break
            end
        end
        Setting.Float = false
        for _,v in pairs(Player.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = true
            end
        end
    else
        Setting.Float = true
        for _,v in pairs(Player.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent.Name == "Cube" and v.Parent.MeshId == "https://assetdelivery.roblox.com/v1/asset/?id=8569135676"  then
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 2, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
                break
            end
        end
        task.wait()
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.ObjectText == "Old Well" then
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 3, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
                break
            end
        end
        Notify("Script", "Wait")
        task.wait(5)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.ObjectText == "Bell" then
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 10, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
                task.wait(0.3)
                Player.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                break
            end
        end
        task.wait()
        Setting.Float = false
        for _,v in pairs(Player.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = true
            end
        end
    end
end)
B2C1.newButton("Escape", "", function()
    if not Setting.CustomFirePropmt then
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.ActionText == "Exit" then
                Player.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                task.wait(0.3)
                fireproximityprompt(v)
                break
            end
        end
    else
        Setting.Float = true
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.ActionText == "Exit" then
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 3, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
                break
            end
        end
        task.wait()
        Setting.Float = false
    end
end)
B2C1.newButton("Auto Run", "", function()
    TweenBIGO(1, -960.842529, -44.0736237, -3597.06372)
end)
B2C1.newLabel("Nagisa")
B2C1.newButton("Auto Win", "", function()
    Setting.Float = true
    TweenBIGO(1, 208.665894, 573.239563, -345.685211)
    task.wait(3)
    TweenBIGO(1, 595.243896, 582.230713, -344.577911)
    task.wait(1)
    Setting.Float = false
end)
B2C1.newButton("Auto Run", "Press when you already spawn or you see the cave", function()
    TweenBIGO(1, 3868.31982, 153.007477, 17.1698914)
    task.wait()
end)
B2C1.newLabel("Village")
B2C1.newButton("Enter Zone", "Press when you already spawn or you see the village", function()
    TweenBIGO(1, 4590.5249, 507.557373, 4480.6499)
    task.wait()
end)
B2C1.newButton("Talk", "Press when you already tp or you see another village", function()
    if not Setting.CustomFirePropmt then
        CoreGui["TTJY HUB MAIN"].Enabled = false
        for _,v in pairs(Player.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        if not Var.TalkDebounce then 
            if Player.Character then 
                if Player.Character:FindFirstChild('HumanoidRootPart') then 
                    Var.TalkDebounce = true
                    Tp(-326.344421, 23.1051254, 3662.32056, 0.28)
                    for Index, v in ipairs(workspace:GetDescendants()) do 
                        if v:IsA("ProximityPrompt") and v.Parent.Name == "Quest" then 
                            v.HoldDuration = 0
                            fireproximityprompt(v)
                        end 
                    end 
                    for i = 1,200 do 
                        VirtualUser:ClickButton1(Vector2.new(0,0))
                        task.wait(0.001)
                    end 
                    Var.TalkDebounce = false
                    CoreGui["TTJY HUB MAIN"].Enabled = true
                    for _,v in pairs(Player.Character:GetDescendants()) do
                        if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                            v.CanCollide = true
                        end
                    end
                end 
            end 
        end
        task.wait()
    else
        CoreGui["TTJY HUB MAIN"].Enabled = false
        for _,v in pairs(Player.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        Setting.Float = true
        if not Var.TalkDebounce then 
            if Player.Character then 
                if Player.Character:FindFirstChild('HumanoidRootPart') then 
                    Var.TalkDebounce = true
                    Tp(-326.344421, 27, 3662.32056, 0.28)
                    for Index, v in ipairs(workspace:GetDescendants()) do 
                        if v:IsA("ProximityPrompt") and v.Parent.Name == "Quest" then 
                            fireproximitypromptv2(v, 1, true)
                        end 
                    end 
                    for i = 1,200 do 
                        VirtualUser:ClickButton1(Vector2.new(0,0))
                        task.wait(0.001)
                    end 
                    Var.TalkDebounce = false
                    Setting.Float = false
                    CoreGui["TTJY HUB MAIN"].Enabled = true
                    for _,v in pairs(Player.Character:GetDescendants()) do
                        if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                            v.CanCollide = true
                        end
                    end
                end
            end 
        end
        task.wait()
    end
end)
B2C1.newButton("Get Key", "Press after you talk", function()
    if not Setting.CustomFirePropmt then
        Tp(-401.797424, 3070.25, 3864.77979, 1)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.ActionText == "Obtain" and v.Parent.Name == "Key1" then
                Player.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                v.HoldDuration = 0
                task.wait(0.3)
                fireproximityprompt(v)
            end
        end
    else
        Setting.Float = true
        for _,v in pairs(Player.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        task.wait()
        Tp(-401.797424, 3070.25, 3864.77979, 1)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.ActionText == "Obtain" and v.Parent.Name == "Key1" then
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 3, v.Parent.Position.Z)
                v.RequiresLineOfSight = false
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        Setting.Float = false
        for _,v in pairs(Player.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = true
            end
        end
    end
end)
B2C1.newButton("Paint", "Press after you talk", function()
    Tp(-249.45462, 3067.58838, 4218.84766, nil)
end)
B2C1.newButton("Get Picture", "Press after you talk", function()
    pic4 = {}
    Tp(-267.697571, 3070.85718, 4213.41504, 2)
    Tp(590.236572, 3070.94922, 4420.93457, 2)
    Tp(-675.159424, 3071.0813, 4998.77686, 2)
    Tp(-392.277039, 3071.03931, 3888.39697, 2)
    Tp(-10.6637068, 3070.17041, 4711.52637, 2)
    for _,v in pairs(workspace:GetDescendants()) do
        if v.Name == "hintpic" and v:FindFirstChild("Image") then
            table.insert(pic4, v.Image.Decal.Texture)
        end
    end
    task.wait(1)
    for _,v in pairs(workspace:GetDescendants()) do
        if v.Name == "specialpic" and v:FindFirstChild("Image") then
            table.insert(pic4, v.Image.Decal.Texture)
        end
    end
end)
B2C1.newButton("Enter Room", "Press after you talk", function()
    if not Setting.CustomFirePropmt then
        for _,v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent.Name == "Teleporter" and v.ActionText == "Enter" and v.Parent.Parent.Name == "Enter" and v.Parent.Parent.Parent.Name == "MainHouse" then
                Player.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                v.HoldDuration = 0
                wait(0.3)
                fireproximityprompt(v)
            end
        end
    else
        Setting.Float = true
        for _,v in pairs(Player.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        task.wait()
        for _,v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") and v.Parent.Name == "Teleporter" and v.ActionText == "Enter" and v.Parent.Parent.Name == "Enter" and v.Parent.Parent.Parent.Name == "MainHouse" then
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position.X, v.Parent.Position.Y + 3, v.Parent.Position.Z)
                task.wait(0.3)
                fireproximitypromptv2(v, 1, true)
            end
        end
        task.wait()
        Setting.Float = false
        for _,v in pairs(Player.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = true
            end
        end
    end
end)
B2C1.newButton("Auto Win", "Press after get picture and enter room", function()
    if not Setting.CustomFirePropmt then
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
                for Index, v in ipairs(workspace:GetDescendants()) do 
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Quest" then 
                        v.HoldDuration = 0
                        fireproximityprompt(v)
                    end 
                end
            end
            task.wait()
            break
        end
    else
        Setting.Float = true
        for _,v in pairs(Player.Character:GetDescendants()) do
            if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                v.CanCollide = false
            end
        end
        task.wait()
        for _, v in pairs(workspace:GetDescendants()) do
            if v.Name == "Orb" and v.Parent.Name == "Seishin" and v.Transparency == 0 then
                for _, v in pairs(workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Orb" then
                        v.HoldDuration = 0
                        Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y + 3, v.Parent.CFrame.Position.Z, nil)
                        fireproximitypromptv2(v, 1, true)
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
                        Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y + 1, v.Parent.CFrame.Position.Z, 0.3)
                        fireproximitypromptv2(v, 1, true)
                    end
                end
                task.wait()
                for _, v in pairs(workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Orb" then
                        v.HoldDuration = 0
                        Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y + 3, v.Parent.CFrame.Position.Z, 0.3)
                        fireproximitypromptv2(v, 1, true)
                    end
                end
                Tp(-326.344421, 27, 3662.32056, 0.28)
                for Index, v in ipairs(workspace:GetDescendants()) do 
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Quest" then 
                        fireproximityprompt(v, 1, true)
                    end 
                end
                task.wait()
                Setting.Float = false
                for _,v in pairs(Player.Character:GetDescendants()) do
                    if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                        v.CanCollide = true
                    end
                end
                task.wait()
            end
            task.wait()
            break
        end
    end
end)
B2C1.newLabel("Ship")
B2C1.newButton("Enter Zone", "", function()
    Tp(-1250,4,6299.65, nil)
end)
B2C1.newButton("Auto Candles", "", function()
    
end)
B2C1.newButton("Auto Run", "", function()
    Tp(-6318.51611, 418.696014, 6332.396, nil)
end)

task.wait(0.5)

local B2C2 = DrRayLibrary.newTab("B2C2", "ImageIdHere")

local Credits = DrRayLibrary.newTab("Credits")
Credits.newLabel("Owner - ttjy.")
Credits.newLabel("Co Owner - ttjy#1778")
Credits.newLabel("Scripter - ttjy.")
Credits.newLabel("Scripter - ttjy#1778")
Credits.newLabel("Scripter - Poom Hub")
Credits.newLabel("Bypasser - ttjy.")
Credits.newLabel("Bypasser - Bedol Hub")
Credits.newLabel("Bypasser - Poom Hub")
Credits.newLabel("Bypasser - ttjy#1778")
Credits.newLabel("Ui - ttjy.")
Credits.newLabel("Helper - Uranium Hub")
Credits.newLabel("Helper - Ktollt")
Credits.newLabel("Helper - Xvasx")
Credits.newLabel("Helper - nar")
Credits.newLabel("Helper - ruenas")
Credits.newLabel("Special Thanks To sa.l")





if game.CoreGui:FindFirstChild("TTJY HUB2") then
    game.CoreGui:FindFirstChild("TTJY HUB2"):Destroy()
end

local screenGui77 = Instance.new("ScreenGui")
screenGui77.Name = "TTJY HUB2"
screenGui77.Parent = game.CoreGui

local textButton77 = Instance.new("TextButton")
textButton77.Text = "Console"
textButton77.Size = UDim2.new(0, 100, 0, 50)
textButton77.Position = UDim2.new(0.6, -45, 0, -40)
textButton77.TextColor3 = Color3.new(1, 0, 0)
textButton77.BackgroundColor3 = Color3.new(0, 0, 0)
textButton77.BackgroundTransparency = 0.7
textButton77.Visible = false
textButton77.Parent = screenGui77

local function onButtonClick2()
    gui.Enabled = not gui.Enabled
end

textButton77.MouseButton1Click:Connect(onButtonClick2)
finishload = true
getgenv().FinishLoad = true
CoreGui["TTJY HUB MAIN"].Enabled = true

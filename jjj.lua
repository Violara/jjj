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
--[[
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
--]]
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

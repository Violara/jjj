--Standard Connect
--Lastest Update 08/05/2024

--Start SYSTE<
local KOL, CAJ = pcall(function()
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
                                expireTime = 0
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
                    expireTime = 0
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
    __X = {true,false,nil,0,1} ;  __Y ={} ; for i=1,#__X do pcall(function() __Y[i] = __X[i] end) end
    __M = {2,3,5,7,11,13,17,10} ;  __N ={} ; for i=1,#__M do pcall(function() __N[i] = __M[i] end) end
    __VE["WS"] , __VE["RuS"] , __VE["RlS"] = game:GetService("Workspace"), game:GetService("RunService") , game:GetService("ReplicatedStorage")
    __VE["VIM"] , __VE["UIS"] = game:GetService("VirtualInputManager"), game:GetService("UserInputService")
    __VE["Lg"] , __VE["TS"], __VE["GMos"] = game:GetService("Lighting") ,game:GetService("TweenService") ,  game:GetService("Players").LocalPlayer:GetMouse()
    __VE["VU"],__VE["CG"] = game:GetService("VirtualUser") ,game:GetService("CoreGui")
    __VE["HS"] = game:GetService("HttpService")
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
    local tweenInfo
    local tween
    Float = __Y[2]
    Noclip = __Y[2]
    cmdm = __VE["GMos"]
    speedofthevfly = 1
    speedofthefly = 1
    Setting = __Y[3]
    serializedSetting = __Y[3]
    --Start Config
    local DEJ, FEZ = pcall(function()
        if not isfolder("Setting") then
            makefolder("Setting")
        end
        if isfolder("Setting") and not isfile("Setting/settingGameName.json") then
            print("no file")
            Setting = {
                
            }
            allowtoserialized = __Y[1]
        elseif __U[49]("Setting") and __U[50]("Setting/settingGameName.json") then
            __U[1]("file")
            __U[23]()
            Setting = game.HttpService:JSONDecode(readfile("Setting/settingGameName.json"))
        end
    end)
    if not DEJ then
        print(FEZ)
    end
    --End Config

    --Update Data Start
    local YEM, OML = pcall(function()
        if rawget(Setting, "nil") == nil then
            Setting = {
                
            }
            allowtoserialized = __Y[1]
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Script Data",
                Text = "Error at finding .Value",
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
    end)
    if not YEM then
        print(OML)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Script Data Failed",
            Text = tostring(OML),
            Duration = 5
        })
    end
    --Update Data End

    --Start Fly Mobile
    if __VE["CG"]:FindFirstChild("InputPcToMobile") then
        __VE["CG"]:FindFirstChild("InputPcToMobile"):Destroy()
    end
    local screenGui2 = Instance.new("ScreenGui")
    screenGui2.Name = "InputPcToMobile"
    screenGui2.Parent = __VE["CG"]
    local buttonSize = UDim2.new(0.05, 0, 0.05, 0)
    local function createButton(key, position)
        local button = Instance.new("TextButton")
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
    --End Fly Mobile

    local GetConnections = function(A, B)
        for i,v in __U[7](getconnections(A[__U[32](B)])) do
            v:Fire()
        end 
    end
    local function findNearestBase()
        local maxDistance = math.huge
        local nearestTarget

        for _, v in __U[73](Workspace:GetDescendants()) do
            if v.Name == "Base" then
                local distance = (v.Position - __VE["LPs"].HumanoidRootPart.Position).Magnitude
                if distance < maxDistance then
                    nearestTarget = v
                    maxDistance = distance
                end
            end
        end

        return nearestTarget
    end

    local function createBillBoardGui(targetToAddUI, text)
        if not targetToAddUI then
            return
        end

        local billboardGui = __U[35]("BillboardGui", targetToAddUI)
        billboardGui.Size = __U[27](1, 0, 1, 0)
        billboardGui.Name = "PUZZLEREVEAL"
        billboardGui.AlwaysOnTop = __Y[1]

        local frame = __U[35]("Frame", billboardGui)
        frame.Size = __U[27](1, 0, 1, 0)
        frame.BackgroundTransparency = 1
        frame.BorderSizePixel = 0

        local textLabel = __U[35]("TextLabel", frame)
        textLabel.Text = __U[32](text)
        textLabel.Size = __U[27](1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.BorderSizePixel = 0
        textLabel.TextColor3 = Color3.new(255, 255, 255)
        textLabel.TextSize = 30
        textLabel.Font = Enum.Font.Arial
    end

    function resetThings()
        for _, v in __U[73](Workspace:GetDescendants()) do
            if v.Name == "PUZZLEREVEAL" then
                v:Destroy()
            end
        end
    end

    interfaceTables = {
        SendCount = 1
    }

    local function interfaceCount(val)
        if val == "Add" then
            interfaceTables.SendCount = interfaceTables.SendCount + 1
        elseif val == "Remove" then
            interfaceTables.SendCount = interfaceTables.SendCount - 1
        elseif val == "DeleteAll" then
            interfaceTables.SendCount = 1
        end
    end

    local function onLeftPuzzle(data)
        if data.Call == "TowerPuzzle.LeftPuzzle" then
            resetThings()
        end
    end


    baseName = "Base"
    listButtons = {}
    UserInputService = __VE["UIS"]
    local function isPlayerNear(part,distance)
        local distanceThreshold = distance
        local distance = (part.Position - __VE["LPs"].Character.HumanoidRootPart.Position).magnitude
        return distance <= distanceThreshold
    end
    local function isPlayerNearPosition(player, position, radius)
        character = __VE["LPs"].Character
        if character and character:FindFirstChild("HumanoidRootPart") then
            local playerPosition = character.HumanoidRootPart.Position
            local distance = (playerPosition - position).Magnitude
            return distance <= radius
        end
        return __Y[2]
    end
    local function createTrail(ColorValue)
        character = __VE["LPs"].Character or __VE["LPs"].CharacterAdded:Wait()
        local part = __U[35]("Part")
        part.Size = __U[57](0, 0, 0)
        part.Transparency = 1
        part.Anchored = __Y[1]
        part.CanCollide = __Y[2]
        part.CanTouch = __Y[2]
        part.Parent = __VE["WS"]
        local attachment1 = __U[35]("Attachment")
        attachment1.Parent = part
        local leftHandAttachment = character:WaitForChild("LeftHand")
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
        trail.Parent = part
        offset = __U[57](0, 0, 1)
        local function updatePartCFrame()
            if character:FindFirstChild("LeftHand") then
                local handCF = character.LeftHand.CFrame
                local newCF = handCF * __U[26](offset)
                part.CFrame = newCF
            end
        end
        
        local heartbeatConnection
        heartbeatConnection = game:GetService("RunService").Heartbeat:Connect(function()
            updatePartCFrame()
        end)
        local function cleanup()
            if heartbeatConnection then
                heartbeatConnection:Disconnect()
            end
        end
        part.AncestryChanged:Connect(function(_, parent)
            if not parent then
                cleanup()
            end
        end)
        character = __VE["LPs"].Character or __VE["LPs"].CharacterAdded:Wait()
        local part = __U[35]("Part")
        part.Size = __U[57](0, 0, 0)
        part.Transparency = 1
        part.Anchored = __Y[1]
        part.CanCollide = __Y[2]
        part.CanTouch = __Y[2]
        part.Parent = workspace
        local attachment1 = __U[35]("Attachment")
        attachment1.Parent = part
        local rightHandAttachment = character:WaitForChild("RightHand")
        local attachment2 = __U[35]("Attachment")
        attachment2.Parent = rightHandAttachment
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
        trail.Parent = part
        offset = __U[57](0, 0, 1)
        local function updatePartCFrame()
            if character:FindFirstChild("RightHand") then
                local handCF = character.RightHand.CFrame
                local newCF = handCF * __U[26](offset)
                part.CFrame = newCF
            end
        end
        local heartbeatConnection
        heartbeatConnection = game:GetService("RunService").Heartbeat:Connect(function()
            updatePartCFrame()
        end)
        local function cleanup()
            if heartbeatConnection then
                heartbeatConnection:Disconnect()
            end
        end
        part.AncestryChanged:Connect(function(_, parent)
            if not parent then
                cleanup()
            end
        end)
    end
    local function isPlayerNearModel(part,distance)
        local distanceThreshold = distance
        local distance = (part.WorldPivot.Position - __VE["LPs"].Character.HumanoidRootPart.Position).magnitude
        return distance <= distanceThreshold
    end
    local function TweenBIGO(speed, posX, posY, posZ)
        tweenInfo = TweenInfo.new(speed, Enum.EasingStyle.Linear)
        tween = __VE["TS"]:Create(__VE["LPs"].Character.HumanoidRootPart, tweenInfo, {CFrame = __U[26](posX, posY, posZ)})
        tween:Play()
    end
    local function Tp(posX, posY, posZ, nextt)
        __VE["LPs"].Character:FindFirstChild("HumanoidRootPart").CFrame = __U[26](posX, posY, posZ)
        __U[23](nextt)
    end
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
    local Part = __U[35]("Part")
    Part.Size = __U[57](2, 0.2, 1.5)
    Part.Material = Enum.Material.Grass
    Part.Anchored = __Y[1]
    Part.Transparency = 1
    Part.Parent = workspace
    local function updatePartPosition()
        character = __VE["LPs"].Character
        local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart and Float then
            Part.CFrame = humanoidRootPart.CFrame * __U[26](0, -3.1, 0)
        else
            Part.CFrame = __U[26](0, -10000, 0)
        end
    end
    __VE["RuS"].RenderStepped:Connect(updatePartPosition)
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
    local function isPlayerNearPos(targetPosition, distanceThreshold)
        character = __VE["LPs"].Character
        if not character or not character:IsA("Model") then
            return __Y[2]
        end
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if not humanoidRootPart or not humanoidRootPart:IsA("BasePart") then
            return __Y[2]
        end
        local playerPosition = humanoidRootPart.Position
        local distance = (playerPosition - targetPosition).Magnitude
        return distance <= distanceThreshold
    end
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
        Title = "Name",
        SubTitle = "by TTJY",
        TabWidth = 160,
        Size = UDim2.fromOffset(580, 460),
        Acrylic = false,
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.LeftControl
    })
    local Tabs = {
        Main = Window:AddTab({ Title = "Main", Icon = "" }),
        B1C1 = Window:AddTab({ Title = "B1C1", Icon = "" }),
        B1C2 = Window:AddTab({ Title = "B1C2", Icon = "" }),
        B1C3 = Window:AddTab({ Title = "B1C3", Icon = "" }),
        B1C4 = Window:AddTab({ Title = "B1C4", Icon = "" }),
        B2C1 = Window:AddTab({ Title = "B2C1", Icon = "" }),
        B2C2 = Window:AddTab({ Title = "B2C2", Icon = "" }),
        B2C3 = Window:AddTab({ Title = "B2C3", Icon = "" }),
        B2C4 = Window:AddTab({ Title = "B2C4", Icon = "" }),
        TWT = Window:AddTab({ Title = "TWT", Icon = "" }),
        Xmas1 = Window:AddTab({ Title = "Christmas Trial", Icon = "" }),
        Halloween = Window:AddTab({ Title = "Halloween Trial", Icon = "" }),
        NMCS = Window:AddTab({ Title = "NMCS", Icon = "" }),
        Jigoku = Window:AddTab({ Title = "Jigoku", Icon = "" }),
        Credits = Window:AddTab({ Title = "Credits", Icon = "" }),
        Addons = Window:AddTab({ Title = "Addons", Icon = "" }),
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

    __U[6](function()
        Window.Root:GetPropertyChangedSignal("Visible"):Connect(function()
            if Window.Root.Visible then
                TTJYHUB.TextColor3 = __U[36](0, 255, 0)
            else
                TTJYHUB.TextColor3 = __U[36](255, 0, 0)
            end
        end)
    end)
    __U[6](function()
        TTJYHUB.MouseButton1Click:Connect(function()
            Window.Minimized = not Window.Minimized
            Window.Root.Visible = not Window.Minimized
        end)
    end)
    local Options = Fluent.Options
    PlaceId = game.PlaceId
    do
        Tabs.B1C1:AddSection("All In One")
        Tabs.B1C1:AddButton({
            Title = "Auto Win",
            Description = "",
            Callback = function()
                if PlaceId == 6296321810 or PlaceId == 6479231833 then
                    Tp(3507, 37.65, -1539.45, __Y[3])
                elseif  PlaceId == 6301638949 or PlaceId == 6480994221 then
                    Tp(1274.95, 199.54, -2537.93, __Y[3])
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
                    for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Name == "AI" and v.Parent.Name == "GameAI" then
                            CreatHighlight(v, __U[36](0, 1, 0), __U[36](255, 255, 255))
                        end
                    end
                elseif  PlaceId == 6301638949 or PlaceId == 6480994221 then
                    for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Name == "KurikoCeiling" and v.Parent.Name == "GameAI" or v.Name == "KurikoFloor" and v.Parent.Name == "GameAI" or v.Name == "Biwaki" and v.Parent.Name == "GameAI2" or v.Name == "realshizu" and v.Parent.Name == "GameAI2" then
                            CreatHighlight(v, __U[36](0, 1, 0), __U[36](255, 255, 255))
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
                    for i, v in __U[73](workspace.IdleNPC.HumanoidRootPart:GetDescendants()) do
                        if v:IsA("ProximityPrompt") then
                            __U[60](v)
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
                    Tp(64.88, 55.28, -1590, __Y[3])
                elseif PlaceId == 6406571212 or PlaceId == 6485055836 then
                    Tp(235.17, 101.94, -590, __Y[3])
                elseif PlaceId == 6425178683 or PlaceId == 6485056556 then
                    Tp(829.97, 72.49, -353.46, __Y[3])
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
                    for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Name == "Key1" or v.Name == "Butterfly" and v:FindFirstChild("ProxPart") and v:FindFirstChild("butterfly") then
                            CreatHighlight(v, __U[36](0, 1, 0), __U[36](255, 255, 255))
                        end
                    end
                elseif game.PlaceId == 6406571212 or game.PlaceId == 6485055836 then
                    for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Name == "Key1" or v.Name == "Butterfly" and v:FindFirstChild("ProxPart") and v:FindFirstChild("butterfly") then
                            CreatHighlight(v, __U[36](0, 1, 0), __U[36](255, 255, 255))
                        end
                    end
                elseif game.PlaceId == 6425178683 or game.PlaceId == 6485056556 then
                    for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Name == "Butterfly" and v:FindFirstChild("ProxPart") and v:FindFirstChild("butterfly") then
                            CreatHighlight(v, __U[36](0, 1, 0), __U[36](255, 255, 255))
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
                    for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Name == "AI" and v.Parent.Name == "GameAI" or v.Name == "Kusonoki" and v.Parent.Name == "GameAI" then
                            CreatHighlight(v, __U[36](0, 1, 0), __U[36](255, 255, 255))
                        end
                    end
                elseif  game.PlaceId == 6406571212 or game.PlaceId == 6485055836 then
                    for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Name == "AI" and v.Parent.Name == "GameAI" or v.Name == "AI" and v.Parent.Name == "GameAI2" then
                            CreatHighlight(v, __U[36](0, 1, 0), __U[36](255, 255, 255))
                        end
                    end
                elseif  game.PlaceId == 6425178683 or game.PlaceId == 6485056556 then
                    for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Name == "AI" and v.Parent.Name == "GameAI" then
                            CreatHighlight(v, __U[36](0, 1, 0), __U[36](255, 255, 255))
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
                    Tp(2411.93, -23.03, 2300, __Y[3])
                elseif  game.PlaceId == 6682163754 or game.PlaceId == 6688734313 then
                    Tp(245.69, 31.72, 450, __Y[3])
                elseif  game.PlaceId == 6682164423 or game.PlaceId == 6688734395 then
                    Tp(-651, 648.99, -1014.35, 5)
                    Tp(-644.07, 947.82, -1490, __Y[3])
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
                    for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Name == "Blade" or v.Name == "Butterfly" and v:FindFirstChild("ProxPart") and v:FindFirstChild("butterfly") then
                            CreatHighlight(v, __U[36](0, 1, 0), __U[36](255, 255, 255))
                        end
                    end
                elseif  game.PlaceId == 6682163754 or game.PlaceId == 6688734313 then
                    for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Parent.Name == "Givers" or v.Name == "Rose" or v.Parent.Name == "BellFolder" then
                            CreatHighlight(v, __U[36](0, 1, 0), __U[36](255, 255, 255))
                        end
                    end
                elseif  game.PlaceId == 6682164423 or game.PlaceId == 6688734395 then
                    for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Name == "Key1" or v.Name == "CodeDoor" then
                            CreatHighlight(v, __U[36](0, 1, 0), __U[36](255, 255, 255))
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
                    for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Name == "kaito" and v.Parent.Name == "GameAI" then
                            CreatHighlight(v, __U[36](0, 1, 0), __U[36](255, 255, 255))
                        end
                    end
                elseif  game.PlaceId == 6682163754 or game.PlaceId == 6688734313 then
                    for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Name == "AI" and v.Parent.Name == "GameAI" then
                            CreatHighlight(v, __U[36](0, 1, 0), __U[36](255, 255, 255))
                        end
                    end
                elseif  game.PlaceId == 6682164423 or game.PlaceId == 6688734395 then
                    for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Name == "omukadeMAIN" then
                            CreatHighlight(v, __U[36](0, 1, 0), __U[36](255, 255, 255))
                        end
                    end
                else
                    Notify("Error 02", "This is for chapter 3")
                end
            end
        })
        Tabs.B1C4:AddSection("Map 1")
        Tabs.B1C4:AddButton({
            Title = "Auto Win",
            Description = "",
            Callback = function()
                Tp(91, -48.35, -1416.24, __Y[3])
            end
        })
        Tabs.B1C4:AddButton({
            Title = "ESP Item",
            Description = "",
            Callback = function()
                for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                    if v.Name == "Model" and v:FindFirstChild("DrawerScript") or v.Name == "Model" and v:FindFirstChild("ProxPart") and v:FindFirstChild("Handle") then
                        CreatHighlight(v, __U[36](0, 1, 0), __U[36](255, 255, 255))
                    end
                end
            end
        })
        Tabs.B1C4:AddButton({
            Title = "ESP Monster",
            Description = "",
            Callback = function()
                for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                    if v.Name == "Manq" and v.Parent.Name == "GameAI" then
                        CreatHighlight(v, __U[36](255, 0, 0), __U[36](255, 255, 255))
                    end
                end
            end
        })
        Tabs.B1C4:AddSection("Map 2")
        Tabs.B1C4:AddButton({
            Title = "Auto Win",
            Description = "",
            Callback = function()
                if not CustomFirePropmt then
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Butterfly" then
                            Tp(v.Parent.Position.X, v.Parent.Position.Y, v.Parent.Position.Z, 0.3)
                            __U[60](v)
                        end
                    end
                else
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Butterfly" then
                            Tp(v.Parent.Position.X, v.Parent.Position.Y + 1, v.Parent.Position.Z, 0.3)
                            fireproximitypromptv2(v, 1, __Y[1])
                        end
                    end
                end
            end
        })
        Tabs.B1C4:AddButton({
            Title = "ESP Items",
            Description = "",
            Callback = function()
                for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                    if v.Name == "Butterfly" and v.Parent.Name == "Butterflies" then
                        CreatHighlight(v, __U[36](0, 1, 0), __U[36](255, 255, 255))
                    end
                end
            end
        })
        Tabs.B1C4:AddButton({
            Title = "ESP Monsters",
            Description = "",
            Callback = function()
                for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                    if v.Parent.Name == "GameAI" then
                        CreatHighlight(v, __U[36](255, 0, 0), __U[36](255, 255, 255))
                    end
                end
            end
        })
        Tabs.B1C4:AddSection("Map 3")
        Tabs.B1C4:AddButton({
            Title = "Auto Win",
            Description = "",
            Callback = function()
                if not CustomFirePropmt then
                    Tp(665.63, 18.17, 2108.62, 0.3)
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                            __U[60](v)
                        end
                    end
                    __U[23]()
                    Tp(620.22, 17.87, 2340.73, 0.3)
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                            __U[60](v)
                        end
                    end
                    __U[23]()
                    Tp(756.75, 16.39, 2538.24, 0.3)
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                            __U[60](v)
                        end
                    end
                    __U[23]()
                    Tp(860.18, 24.85, 2548.28, 0.3)
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                            __U[60](v)
                        end
                    end
                    __U[23]()
                    Tp(855.96, 15.47, 2388.36, 0.3)
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                            __U[60](v)
                        end
                    end
                    __U[23]()
                    Tp(836.29, 19.01, 2247.34, 0.3)
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                            __U[60](v)
                        end
                    end
                    __U[23]()
                    Tp(688.41, 28.37, 2251.57, 0.3)
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                            __U[60](v)
                            __U[60](v)
                            __U[60](v)
                            __U[60](v)
                            __U[60](v)
                            __U[60](v)
                        end
                    end
                else
                    Tp(665.63, 18.17, 2108.62, 0.3)
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                            fireproximitypromptv2(v, 1, __Y[1])
                        end
                    end
                    __U[23]()
                    Tp(620.22, 17.87, 2340.73, 0.3)
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                            fireproximitypromptv2(v, 1, __Y[1])
                        end
                    end
                    __U[23]()
                    Tp(756.75, 16.39, 2538.24, 0.3)
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                            fireproximitypromptv2(v, 1, __Y[1])
                        end
                    end
                    __U[23]()
                    Tp(860.18, 24.85, 2548.28, 0.3)
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                            fireproximitypromptv2(v, 1, __Y[1])
                        end
                    end
                    __U[23]()
                    Tp(855.96, 15.47, 2388.36, 0.3)
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                            fireproximitypromptv2(v, 1, __Y[1])
                        end
                    end
                    __U[23]()
                    Tp(836.29, 19.01, 2247.34, 0.3)
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                            fireproximitypromptv2(v, 1, __Y[1])
                        end
                    end
                    __U[23]()
                    Tp(688.41, 28.37, 2251.57, 0.3)
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                            fireproximitypromptv2(v, 1, __Y[1])
                            fireproximitypromptv2(v, 1, __Y[1])
                            fireproximitypromptv2(v, 1, __Y[1])
                            fireproximitypromptv2(v, 1, __Y[1])
                            fireproximitypromptv2(v, 1, __Y[1])
                        end
                    end
                end
            end
        })
        Tabs.B1C4:AddButton({
            Title = "ESP Items",
            Description = "",
            Callback = function()
                for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                    if v.Name == "Model" and v:FindFirstChild("Spirit") and v:FindFirstChild("Spirit"):FindFirstChild("Handle") or v.Parent.Name == "PuzzleItems" or v.Name == "Key" then
                        CreatHighlight(v, __U[36](0, 1, 0), __U[36](255, 255, 255))
                    end
                end
            end
        })
        Tabs.B1C4:AddButton({
            Title = "ESP Monsters",
            Description = "",
            Callback = function()
                for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                    if v.Parent.Name == "GameAI" then
                        CreatHighlight(v, __U[36](255, 0, 0), __U[36](255, 255, 255))
                    end
                end
            end
        })
        Tabs.B1C4:AddSection("Map 4")
        Tabs.B1C4:AddButton({
            Title = "Auto Kill Sama",
            Description = "",
            Callback = function()
                for i,v in __U[7](__VE["WS"].GameHearts:GetChildren()) do
                    repeat
                        if __VE["WS"].Camera.FieldOfView > 71 then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](2823, 155, 2490)
                        else
                        if not __VE["LPs"].Character:FindFirstChild("Katana") then
                            __VE["LPs"].Backpack.Katana.Parent = __VE["LPs"].Character
                        end
                        __U[23]()
                        if __U[62](__U[32](v.Root.CFrame.Position),1,2) == "32" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](3209, 132, 2193)
                        elseif __U[62](__U[32](v.Root.CFrame.Position),1,2) == "25" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](2589, 132, 2408)
                        elseif __U[62](__U[32](v.Root.CFrame.Position),1,2) == "28" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](2802, 115, 2418)
                        end
                        repeat
                            if __U[62](__U[32](v.Root.CFrame.Position),1,2) == "32" then
                                __VE["WS"].Camera.CFrame = __U[26](3209.01807, 133.388229, 2192.93799, 0.959981084, -0.139965221, -0.242582455, 0.00294077187, 0.871154189, -0.491000861, 0.280049741, 0.470638156, 0.836703002)
                            elseif __U[62](__U[32](v.Root.CFrame.Position),1,2) == "25" then
                                __VE["WS"].Camera.CFrame = __U[26](2589.01733, 133.500214, 2408.00513, -0.252294064, -0.260695487, -0.93187207, -0.00756763248, 0.963527501, -0.267502367, 0.967621028, -0.060437195, -0.245065123)
                            elseif __U[62](__U[32](v.Root.CFrame.Position),1,2) == "28" then
                                __VE["WS"].Camera.CFrame = __U[26](2802.03345, 116.452713, 2417.99463, 0.152567074, -0.359060764, -0.920759797, 0.00740486849, 0.932055831, -0.362238824, 0.988265336, 0.0484476127, 0.144859836)
                            end
                            __U[23]()
                            __VE["LPs"].Character.Katana:Activate()
                            if v:FindFirstChild("Destroyed") then
                                break
                            end
                        until __VE["WS"].Camera.FieldOfView > 71
                    end
                        __U[23]()
                    until v:FindFirstChild("Destroyed")
                end
            end
        })
        Tabs.B1C4:AddButton({
            Title = "ESP Hearts",
            Description = "",
            Callback = function()
                for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                    if v.Name == "Heart" then
                        CreatHighlight(v, __U[36](255, 0, 0), __U[36](255, 255, 255))
                    end
                end
            end
        })
        Tabs.B1C4:AddButton({
            Title = "ESP Monsters",
            Description = "",
            Callback = function()
                for _,v in __U[7](__VE["WS"]:GetDescendants()) do
                    if v.Parent.Name == "GameAI" or v.Name == "Saigomo" then
                        CreatHighlight(v, __U[36](255, 0, 0), __U[36](255, 255, 255))
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
                Tp(-1783.60474, 11.0083055, -4297.72168, __Y[3])
            end
        })
        Tabs.B2C1:AddSection("Rio & Mio")
        Tabs.B2C1:AddButton({
            Title = "Read Book",
            Description = "",
            Callback = function()
                if not CustomFirePropmt then
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent.Name == "Interact" and v.Parent.Parent.Name == "Book" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](v.Parent.Position.X, v.Parent.Position.Y + 5, v.Parent.Position.Z)
                            MagicLook(v.Parent, __Y[2])
                            __U[23](0.3)
                            __U[60](v)
                            MagicLook(__Y[3], __Y[1])
                        end
                    end
                else
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent.Name == "Interact" and v.Parent.Parent.Name == "Book" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](v.Parent.Position.X, v.Parent.Position.Y + 5, v.Parent.Position.Z)
                            __U[23](0.3)
                            fireproximitypromptv2(v, 1, __Y[1])
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
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent.Name == "Cube" and v.Parent.MeshId == "https://assetdelivery.roblox.com/v1/asset/?id=8569135676"  then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            v.HoldDuration = 0
                            __U[23](0.3)
                            __U[60](v)
                            break
                        end
                    end
                    __U[23]()
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.ObjectText == "Old Well" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            v.HoldDuration = 0
                            __U[23](0.3)
                            __U[60](v)
                            break
                        end
                    end
                    Notify("Script", "Wait", 5)
                    __U[23](5)
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.ObjectText == "Bell" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            v.HoldDuration = 0
                            __U[23](0.3)
                            __U[60](v)
                            break
                        end
                    end
                    Fluent:Notify({
                        Title = "Error 00",
                        Content = "Press Auto Win again",
                        Duration = 5
                    })
                else
                    getgenv().Float = __Y[1]
                    for _,v in __U[7](__VE["LPs"].Character:GetDescendants()) do
                        if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                            v.CanCollide = __Y[2]
                        end
                    end
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent.Name == "Cube" and v.Parent.MeshId == "https://assetdelivery.roblox.com/v1/asset/?id=8569135676"  then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](v.Parent.Position.X, v.Parent.Position.Y + 2, v.Parent.Position.Z)
                            MagicLook(v.Parent, __Y[2])
                            __U[23](0.3)
                            fireproximitypromptv2(v, 1, __Y[1])
                            __U[23]()
                            MagicLook(v.Parent, __Y[1])
                            break
                        end
                    end
                    __U[23]()
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.ObjectText == "Old Well" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](v.Parent.Position.X, v.Parent.Position.Y + 3, v.Parent.Position.Z)
                            MagicLook(v.Parent, __Y[2])
                            __U[23](0.3)
                            fireproximitypromptv2(v, 1, __Y[1])
                            __U[23]()
                            MagicLook(v.Parent, __Y[1])
                            break
                        end
                    end
                    Fluent:Notify({
                        Title = "Error 00",
                        Content = "Wait",
                        Duration = 5
                    })
                    __U[23](5)
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.ObjectText == "Bell" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](v.Parent.Position.X, v.Parent.Position.Y + 10, v.Parent.Position.Z)
                            MagicLook(v.Parent, __Y[2])
                            __U[23](0.3)
                            fireproximitypromptv2(v, 1, __Y[1])
                            __U[23](0.3)
                            MagicLook(v.Parent, __Y[1])
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            break
                        end
                    end
                    __U[23]()
                    Fluent:Notify({
                        Title = "Error 00",
                        Content = "Press Auto Win again",
                        Duration = 5
                    })
                    getgenv().Float = __Y[2]
                    for _,v in __U[7](__VE["LPs"].Character:GetDescendants()) do
                        if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                            v.CanCollide = __Y[1]
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
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.ActionText == "Exit" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            break
                        end
                    end
                else
                    getgenv().Float = __Y[1]
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.ActionText == "Exit" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](v.Parent.Position.X, v.Parent.Position.Y + 3, v.Parent.Position.Z)
                            MagicLook(v.Parent, __Y[2])
                            __U[23](0.3)
                            fireproximitypromptv2(v, 1, __Y[1])
                            __U[23]()
                            MagicLook(v.Parent, __Y[1])
                            break
                        end
                    end
                    __U[23]()
                    getgenv().Float = __Y[2]
                end
            end
        })
        Tabs.B2C1:AddButton({
            Title = "Escape",
            Description = "",
            Callback = function()
                if not CustomFirePropmt then
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.ActionText == "Exit" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            break
                        end
                    end
                else
                    getgenv().Float = __Y[1]
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.ActionText == "Exit" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](v.Parent.Position.X, v.Parent.Position.Y + 3, v.Parent.Position.Z)
                            MagicLook(v.Parent, __Y[2])
                            __U[23](0.3)
                            fireproximitypromptv2(v, 1, __Y[1])
                            __U[23]()
                            MagicLook(v.Parent, __Y[1])
                            break
                        end
                    end
                    __U[23]()
                    getgenv().Float = __Y[2]
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
                getgenv().Float = __Y[1]
                TweenBIGO(1, 208.665894, 573.239563, -345.685211)
                __U[23](3)
                TweenBIGO(1, 595.243896, 582.230713, -344.577911)
                __U[23](1)
                getgenv().Float = __Y[2]
            end
        })
        Tabs.B2C1:AddButton({
            Title = "Auto Run",
            Description = "",
            Callback = function()
                TweenBIGO(1, 3868.31982, 153.007477, 17.1698914)
                __U[23]()
            end
        })
        Tabs.B2C1:AddSection("Village")
        Tabs.B2C1:AddButton({
            Title = "Enter Zone",
            Description = "",
            Callback = function()
                TweenBIGO(1, 4590.5249, 507.557373, 4480.6499)
                __U[23]()
            end
        })
        Tabs.B2C1:AddButton({
            Title = "Talk",
            Description = "",
            Callback = function()
                Window.Minimized = not Window.Minimized
                Window.Root.Visible = not Window.Minimized
                for _,v in __U[7](__VE["LPs"].Character:GetDescendants()) do
                    if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                        v.CanCollide = __Y[2]
                    end
                end
                if not TalkDebounce then 
                    if __VE["LPs"].Character then 
                        if __VE["LPs"].Character:FindFirstChild('HumanoidRootPart') then 
                            TalkDebounce = __Y[1]
                            Tp(-326.344421, 23.1051254, 3662.32056, 0.28)
                            for Index, v in __U[73](__VE["WS"]:GetDescendants()) do 
                                if v:IsA("ProximityPrompt") and v.Parent.Name == "Quest" then 
                                    v.HoldDuration = 0
                                    __U[60](v)
                                end 
                            end 
                            for i = 1,200 do 
                                VirtualUser:ClickButton1(Vector2.new(0,0))
                                __U[23](0.001)
                            end 
                            TalkDebounce = __Y[2]
                            Window.Minimized = not Window.Minimized
                            Window.Root.Visible = not Window.Minimized
                            for _,v in __U[7](__VE["LPs"].Character:GetDescendants()) do
                                if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                                    v.CanCollide = __Y[1]
                                end
                            end
                        end 
                    end 
                end
                __U[23]()
            end
        })
        Tabs.B2C1:AddButton({
            Title = "Get Key",
            Description = "",
            Callback = function()
                Tp(-401.797424, 3070.25, 3864.77979, 1)
                for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.ActionText == "Obtain" and v.Parent.Name == "Key1" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
            end
        })
        Tabs.B2C1:AddButton({
            Title = "Paint",
            Description = "",
            Callback = function()
                Tp(-249.45462, 3067.58838, 4218.84766, __Y[3])
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
                for _,v in __U[7](workspace:GetDescendants()) do
                    if v.Name == "hintpic" and v:FindFirstChild("Image") then
                        __U[30](pic4, v.Image.Decal.Texture)
                        wait()
                    end
                end
                __U[23](1)
                for _,v in __U[7](workspace:GetDescendants()) do
                    if v.Name == "specialpic" and v:FindFirstChild("Image") then
                        __U[30](pic4, v.Image.Decal.Texture)
                        wait()
                    end
                end
            end
        })
        Tabs.B2C1:AddButton({
            Title = "Enter Room",
            Description = "",
            Callback = function()
                for _,v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Teleporter" and v.ActionText == "Enter" and v.Parent.Parent.Name == "Enter" and v.Parent.Parent.Parent.Name == "MainHouse" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        v.HoldDuration = 0
                        wait(0.3)
                        __U[60](v)
                    end
                end
            end
        })
        Tabs.B2C1:AddButton({
            Title = "Auto Win",
            Description = "",
            Callback = function()
                for _, v in __U[7](workspace:GetDescendants()) do
                    if v.Name == "Orb" and v.Parent.Name == "Seishin" and v.Transparency == 0 then
                        for _, v in __U[7](workspace:GetDescendants()) do
                            if v:IsA("ProximityPrompt") and v.Parent.Name == "Orb" then
                                v.HoldDuration = 0
                                Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y, v.Parent.CFrame.Position.Z, __Y[3])
                                __U[60](v)
                            end
                        end
                    else
                        for _, v in __U[7](workspace:GetDescendants()) do
                            if string.match(v.Name, "%d") and v:FindFirstChild("Image") and table.find(pic4, v.Image.Decal.Texture) then
                                __U[30](listofcandle, v.Name)
                            end
                        end
                        __U[23](2)
                        for _, v in __U[7](workspace:GetDescendants()) do
                            if v:IsA("ProximityPrompt") and v.Parent.Name == "Wax" and table.find(listofcandle, v.Parent.Parent.Parent.Name) then
                                v.HoldDuration = 0
                                Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y, v.Parent.CFrame.Position.Z, 0.3)
                                __U[60](v)
                            end
                        end
                        __U[23]()
                        for _, v in __U[7](workspace:GetDescendants()) do
                            if v:IsA("ProximityPrompt") and v.Parent.Name == "Orb" then
                                v.HoldDuration = 0
                                Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y, v.Parent.CFrame.Position.Z, 0.3)
                                __U[60](v)
                            end
                        end
                        Tp(-326.344421, 23.1051254, 3662.32056, 0.28)
                        for Index, v in __U[73](game:GetService("Workspace"):GetDescendants()) do 
                            if v:IsA("ProximityPrompt") and v.Parent.Name == "Quest" then 
                                v.HoldDuration = 0
                                __U[60](v)
                            end 
                        end
                    end
                    __U[23]()
                    break
                end
            end
        })
        Tabs.B2C1:AddSection("Ship")
        Tabs.B2C1:AddButton({
            Title = "Enter Zone",
            Description = "",
            Callback = function()
                Tp(-1250,4,6299.65, __Y[3])
            end
        })
        Tabs.B2C1:AddButton({
            Title = "Auto Run",
            Description = "",
            Callback = function()
                Tp(-6318.51611, 418.696014, 6332.396, __Y[3])
            end
        })

        Tabs.B2C2:AddSection("Start")
        Tabs.B2C2:AddButton({
            Title = "Auto Win",
            Description = "",
            Callback = function()
                for _, v in __U[7](__VE["WS"]:GetDescendants()) do
                    if v:IsA("TouchTransmitter") or v:IsA("TouchInterest") then
                        firetouchinterest(__VE["LPs"].Character.HumanoidRootPart or __VE["LPs"].Character.Torso, v:FindFirstAncestorWhichIsA("Part"), 0)
                    end
                end
                __U[23]()
                TweenBIGO(1, -520, 30, -87.29, 2)
                Notify("Error 00", "Bypassing...")
                __VE["LPs"].Character.HumanoidRootPart.Anchored = __Y[1]
                Tp(-520, 30, -87.2, 30)
                __VE["LPs"].Character.HumanoidRootPart.Anchored = __Y[2]
                __U[23]()
                Tp(-551, 30, -87.29, __Y[3])
                Notify("Error 00", "Done")
            end
        })
        Tabs.B2C2:AddSection("Someone Eat Cow")
        Tabs.B2C2:AddButton({
            Title = "Auto Win",
            Description = "",
            Callback = function()
                Float = __Y[1]
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "ProxDoorA" then
                        v.HoldDuration = 0
                        Tp(-3576.7,602.74,886.94, 1)
                        __U[60](v)
                        __U[23](1)
                        break
                    end
                end
                __U[23]()
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "ProxDoorB" then
                        Tp(v.Parent.CFrame.Position.X, v.Parent.CFrame.Position.Y + 5, v.Parent.CFrame.Position.Z, 0.3)
                        __U[23](0.3)
                        __U[60](v)
                        __U[23](0.3)
                        Tp(-3393, 576, 887, 0.3)
                        break
                    end
                end
                Float = __Y[1]
                char.HumanoidRootPart.Anchored = __Y[1]
                Tp(-3952.85, 700, 317.7, __Y[3])
                local screenGui = __U[35]("ScreenGui")
                screenGui.Parent = __VE["PsG"]
            
                local frame = __U[35]("Frame")
                frame.BackgroundTransparency = 1 
                frame.Size = __U[27](1, 0, 0.3, 0)
                frame.Position = __U[27](0.5, 0, 0.5, 0) 
                frame.Parent = screenGui
            
                local textLabel = __U[35]("TextLabel")
                textLabel.BackgroundTransparency = 1 
                textLabel.Size = __U[27](0.1, 0, 0.1, 0)
                textLabel.TextColor3 = __U[36](0, 255, 0) 
                textLabel.TextSize = 70
                textLabel.Parent = frame
                if getgenv().DeviceType == "Mobile" then
                    for i = 70, 0, -1 do
                        textLabel.TextSize = 30
                        textLabel.Text = "Waiting For Bypass Anti-Cheat : " .. __U[32](i) 
                        __U[23](1) 
                    end
                else
                    for i = 70, 0, -1 do
                        textLabel.TextSize = 70
                        textLabel.Text = "Waiting For Bypass Anti-Cheat : " .. __U[32](i) 
                        __U[23](1) 
                    end
                end
                __U[23]()
                screenGui:Destroy()
                char.HumanoidRootPart.Anchored = __Y[2]
                Float = __Y[2]
                __U[23]()
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "TeleportDoor" then
                        v.HoldDuration = 0
                        Tp(-3952.85, 594.22, 317.7, 1)
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
            end
        })
        Tabs.B2C2:AddSection("Meat")
        Tabs.B2C2:AddButton({
            Title = "Auto Win",
            Description = "",
            Callback = function()
                Window.Minimized = __Y[2]
                Window.Root.Visible = __Y[2]
                if not TalkDebounce then 
                    if __VE["LPs"].Character then 
                        if __VE["LPs"].Character:FindFirstChild('HumanoidRootPart') then 
                            TalkDebounce = __Y[1]
                            Tp(-4443, 711, 1164, 0.28)
                            for Index, v in __U[73](__VE["WS"]:GetDescendants()) do 
                                if v.Name == "NoppeNPC" then 
                                    local Prompt = v.RootPart:FindFirstChildOfClass('ProximityPrompt')
                                    __U[60](Prompt, 1)
                                end 
                            end 
                            for i = 1,90 do 
                                VirtualUser:ClickButton1(Vector2.new(0,0))
                                __U[23](0.001)
                            end 
                            TalkDebounce = __Y[2]
                            Window.Minimized = __Y[1]
                            Window.Root.Visible = __Y[1]
                        end 
                    end 
                end
                __U[23]()
            end
        })
        Tabs.B2C2:AddSection("Meat")
        Tabs.B2C2:AddButton({
            Title = "Auto Talk",
            Description = "",
            Callback = function()
                Window.Minimized = __Y[2]
                Window.Root.Visible = __Y[2]
                if not TalkDebounce then 
                    if __VE["LPs"].Character then 
                        if __VE["LPs"].Character:FindFirstChild('HumanoidRootPart') then 
                            TalkDebounce = __Y[1]
                            Tp(-4443, 711, 1164, 0.28)
                            for Index, v in __U[73](__VE["WS"]:GetDescendants()) do 
                                if v.Name == "NoppeNPC" then 
                                    local Prompt = v.RootPart:FindFirstChildOfClass('ProximityPrompt')
                                    __U[60](Prompt, 1)
                                end 
                            end 
                            for i = 1,90 do 
                                VirtualUser:ClickButton1(Vector2.new(0,0))
                                __U[23](0.001)
                            end 
                            TalkDebounce = __Y[2]
                            Window.Minimized = __Y[1]
                            Window.Root.Visible = __Y[1]
                        end 
                    end 
                end
                __U[23]()
            end
        })
        Tabs.B2C2:AddButton({
            Title = "Auto Win",
            Description = "Not work in nightmare mode | Look down",
            Callback = function()
                if __VE["LPs"].Character then 
                    Float = __Y[1]
                    for _,v in __U[7](__VE["LPs"].Character:GetDescendants()) do
                        if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                            v.CanCollide = __Y[2]
                        end
                    end
                    __U[23]()
                    if __VE["LPs"].Character:FindFirstChild('HumanoidRootPart') then 
                        if not FirstPress then 
                            FirstPress = __Y[1] 
                            __VE["LPs"].Character:FindFirstChild('HumanoidRootPart').CFrame = __U[26](-4443, 711, 1164)
                            __U[23](0.5)
                            __VE["LPs"].Character:FindFirstChild('HumanoidRootPart').CFrame = __U[26](-4443, 711, 1264)
                            __U[23](0.5)
                            __VE["LPs"].Character:FindFirstChild('HumanoidRootPart').CFrame = __U[26](-4443, 711, 1114)
                            __U[23](0.5)
                            __VE["LPs"].Character:FindFirstChild('HumanoidRootPart').CFrame = __U[26](-4443, 711, 1164)
                            __U[23](0.5)
                            return
                        end 
                        MeatDebounce = __Y[1]     
                        local IsGot = __Y[2] 
                        local Pick = 0 
                        local Found = 0
                        __U[23](0.15)
                        for Index, AllGui in __U[73](__VE["PsG"]:GetDescendants()) do 
                            if AllGui.ClassName == 'ImageLabel' and AllGui.Image == "rbxassetid://13372546132" then 
                                local Target = __Y[3]
                                for i,v in __U[73](__VE["WS"]:GetDescendants()) do
                                    if v.ClassName == "Model" and v.Name == "DoorTele" then
                                        Target = v
                                    end
                                end
                                if Target then 
                                    __VE["LPs"].Character:FindFirstChild('HumanoidRootPart').CFrame = Target.Frame.CFrame
                                    __U[23](0.8)
                                    for Index, v in __U[73](Target:GetChildren()) do
                                        if v.Name == "DoorFrame" then 
                                            local Prompt = v:FindFirstChildOfClass('ProximityPrompt') or __Y[3]
                                            if Prompt then 
                                                __U[60](Prompt, 1)
                                            end 
                                        end
                                    end
                                    __U[23]()
                                    Float = __Y[2]
                                    for _,v in __U[7](__VE["LPs"].Character:GetDescendants()) do
                                        if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                                            v.CanCollide = __Y[1]
                                        end
                                    end
                                    __U[23]()
                                    return
                                end 
                            end 
                        end
                        if not Backpack:FindFirstChild("Bowl") and not __VE["LPs"].Character:FindFirstChild("Bowl") then
                            Tp(-4318, 700, 1313, 1)
                            for Index, v in __U[73](__VE["WS"]:GetDescendants()) do 
                                if v.Name == "BowlGiver" then 
                                    if IsGot == __Y[1] then 
                                        break
                                    end
                                    if v and v:FindFirstChild('Prompt') and v:FindFirstChild('Prompt'):FindFirstChildOfClass('ProximityPrompt') then
                                        local Prompt = v:FindFirstChild('Prompt'):FindFirstChildOfClass('ProximityPrompt') or __Y[3] 
                                        if Prompt then 
                                            __VE["LPs"].Character:FindFirstChild('HumanoidRootPart').CFrame = Prompt.Parent.CFrame
                                            __U[23](0.28)
                                            __U[60](Prompt, 1)
                                            fireproximitypromptv2(Prompt, 1, __Y[1])
                                            __U[23]()
                                            if IsGot == __Y[2] then 
                                                IsGot = __Y[1] 
                                            end 
                                        end
                                    else
                                        Tp(-4600, 700, 1004, 1)
                                        for Index, v in __U[73](__VE["WS"]:GetDescendants()) do 
                                            if v.Name == "BowlGiver" then 
                                                if IsGot == __Y[1] then 
                                                    break
                                                end
                                                if v and v:FindFirstChild('Prompt') and v:FindFirstChild('Prompt'):FindFirstChildOfClass('ProximityPrompt') then
                                                    local Prompt = v:FindFirstChild('Prompt'):FindFirstChildOfClass('ProximityPrompt') or __Y[3] 
                                                    if Prompt then 
                                                        __VE["LPs"].Character:FindFirstChild('HumanoidRootPart').CFrame = Prompt.Parent.CFrame
                                                        __U[23](0.28)
                                                        __U[60](Prompt, 1)
                                                        fireproximitypromptv2(Prompt, 1, __Y[1])
                                                        __U[23]()
                                                        if IsGot == __Y[2] then 
                                                            IsGot = __Y[1] 
                                                        end 
                                                    end
                                                end
                                            end
                                        end
                                    end 
                                end 
                                __U[23](0.30)
                            end
                            __U[23](1)
                            for i,v in __U[73](__VE["WS"]:GetDescendants()) do
                                if v.ClassName == "Folder" and v.Name == "Meat" then
                                        for Index, AllMeats in __U[73](v:GetChildren()) do
                                            if Pick >= 3 then 
                                                break 
                                            end
                                            if AllMeats and AllMeats:FindFirstChildOfClass('ProximityPrompt') and AllMeats:FindFirstChildOfClass('ProximityPrompt').Enabled and AllMeats.Transparency ~= 1 then 
                                                local Prompt = AllMeats:FindFirstChildOfClass('ProximityPrompt')
                                                char:FindFirstChild('HumanoidRootPart').CFrame = __U[26](Prompt.Parent.CFrame.Position.X, Prompt.Parent.CFrame.Position.Y + 3, Prompt.Parent.CFrame.Position.Z)
                                                __U[23](0.84)
                                                fireproximitypromptv2(Prompt, 1, __Y[2])
                                                __U[23](0.43)
                                                fireproximitypromptv2(Prompt, 1, __Y[2])
                                                __U[23](1.58)
                                                Pick = Pick + 1
                                            end 
                                        end 
                                    end  
                                end
                                Notify("Bypassing", "Don't move", 11)
                                __U[23](11)
                                Tp(-4443, 711, 1164, __Y[3])
                                __U[23](0.3)
                                for Index, v in __U[73](game:GetService("Workspace"):GetDescendants()) do 
                                    if v.Name == "NoppeNPC" then 
                                        local Prompt = v.RootPart:FindFirstChildOfClass('ProximityPrompt')
                                        __U[60](Prompt, 1)
                                    end 
                                end  
                                MeatDebounce = __Y[2]
                                __U[23]()
                                Float = __Y[2]
                                for _,v in __U[7](__VE["LPs"].Character:GetDescendants()) do
                                    if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                                        v.CanCollide = __Y[1]
                                    end
                                end
                            end 
                        end
                    __U[23]()
                end
            end
        })
        Tabs.B2C2:AddSection("Chase")
        Tabs.B2C2:AddButton({
            Title = "Enter Zone",
            Description = "",
            Callback = function()
                Float = __Y[2]
                Tp(-4590, 843.64, -35.54, __Y[3])
            end
        })
        Tabs.B2C2:AddButton({
            Title = "Auto Run",
            Description = "",
            Callback = function()
                Float = __Y[2]
                TweenBIGO(5, -5364, 682.12, 29.63)
            end
        })
        Tabs.B2C2:AddButton({
            Title = "Full Auto Run",
            Description = "",
            Callback = function()
                Float = __Y[2]
                Tp(-4590, 843.64, -35.54, 10)
                TweenBIGO(5, -5364, 682.12, 29.63)
            end
        })
        Tabs.B2C2:AddSection("Levers")
        Tabs.B2C2:AddButton({
            Title = "Enter Zone",
            Description = "",
            Callback = function()
                Float = __Y[2]
                Tp(-11035, -81.4, -12.56, __Y[3])
            end
        })
        Tabs.B2C2:AddButton({
            Title = "Auto Win",
            Description = "",
            Callback = function()
                Float = __Y[2]
                for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Lever" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        v.HoldDuration = 0
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
                __U[23](6)
                Tp(-10060, 484.1, -9.52, __Y[3])
            end
        })
        Tabs.B2C2:AddButton({
            Title = "Full Auto Win",
            Description = "",
            Callback = function()
                Float = __Y[2]
                Tp(-11035, -81.4, -12.56, 5)
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Lever" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        v.HoldDuration = 0
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
                __U[23](6)
                Tp(-10060, 484.1, -9.52, __Y[3])
            end
        })
        Tabs.B2C2:AddSection("Math")
        Tabs.B2C2:AddButton({
            Title = "Skip",
            Description = "",
            Callback = function()
                Float = __Y[2]
                Tp(-2005.8, 968.25, -4909.48, __Y[3])
            end
        })
        Tabs.B2C2:AddButton({
            Title = "Reveal",
            Description = "",
            Callback = function()
                local MidANumber = __Y[3]
                local MidBNumber = __Y[3]
                local SymbolsAImage1 = __Y[3]
                local SymbolsAImage2 = __Y[3]
                local SymbolsBImage1 = __Y[3]
                local SymbolsBImage2 = __Y[3]
                local SymbolsANumber1 = __Y[3]
                local SymbolsANumber2 = __Y[3]
                local SymbolsBNumber1 = __Y[3]
                local SymbolsBNumber2 = __Y[3]

                -- Get MidNumber and Get Image1 
                for i,v in __U[73](game:GetService("Workspace"):GetDescendants()) do
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
                for i,v in __U[73](game:GetService("Workspace"):GetDescendants()) do
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
                for i,v in __U[73](game:GetService("Workspace"):GetDescendants()) do
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
                local Answer1 = __U[32](MidANumber - (SymbolsANumber1 + SymbolsANumber2))
                local Answer2 = __U[32](MidBNumber - (SymbolsBNumber1 + SymbolsBNumber2))

                -- Image Hack
                for i,v in __U[73](game:GetService("Workspace"):GetDescendants()) do
                    if v.ClassName == "TextLabel" and v.Parent.Parent.Parent.Name == "Kanji" then
                        for _, sec in __U[73](game:GetService("Workspace"):GetDescendants()) do
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
                Float = __Y[2]
                TweenBIGO(1, -2581.77124, 990.56134, -4918.28027)
            end
        })
        Tabs.B2C2:AddButton({
            Title = "Auto Cook",
            Description = "SinglePlayer",
            Callback = function()
                if FirstPressCook then
                    print("First")
                    for _, v in __U[7](workspace:GetDescendants()) do
                        if v.Name == "Barrier" and v:IsA("Part") and isPlayerNear(v, 100) then
                            v:Destroy()
                        end
                    end
                    FirstPressCook = __Y[2]
                end
                Order270 = "nil"
                matches = {}
                __U[23](0.1)
                for _, v in __U[7](workspace:GetDescendants()) do
                    if v.Name == "Orders" then
                        if v:FindFirstChild("Ham Stew") then
                            Order270 = "Ham Stew"
                            __U[30](matches, Order270)
                        elseif v:FindFirstChild("Chicken Soup") then
                            Order270 = "Chicken Soup"
                            __U[30](matches, Order270)
                        elseif v:FindFirstChild("Spaghetti N Eyeballs") then
                            Order270 = "Spaghetti N Eyeballs"
                            __U[30](matches, Order270)
                        end
                    end
                end
                __U[23](1)
                if #matches > 0 then
                    selectedIndex = __U[8](1, #matches)
                    selectedObject = matches[selectedIndex]
                    print(#matches)
                else
                    Notify("Error 01", "Press again")
                end
                if selectedObject == "Ham Stew" then
                    for _, v in __U[7](workspace:GetDescendants()) do --Ham
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Pot" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, v in __U[7](Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, v in __U[7](Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Ham" and v.Parent.Parent:IsA("Model") then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, q in __U[7](Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, v in __U[7](Workspace:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Sausage" and v.Parent.Parent:IsA("Model") then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, q in __U[7](Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                            break
                        end
                    end
                    __U[23](1)
                    for _, q in __U[7](Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --boil
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                            break
                        end
                    end
                    __U[23](1)
                    for _, q in __U[7](Workspace:GetDescendants()) do --boil2
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                            break
                        end
                    end
                    __U[23](10)
                    for _, v in __U[7](Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                    __U[23](1)
                    for _, v in __U[7](Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, q in __U[7](Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                        break
                    end
                    end
                    __U[23]()
                    for _, q in __U[7](Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                            break
                        end
                    end
                    __U[23](1)
                    for _, q in __U[7](Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Ham Stew") then --if bowlplace
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                            break
                        end
                    end
                    __U[23](1)
                    for _, v in __U[7](Workspace:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                elseif selectedObject == "Chicken Soup" then
                    for _, v in __U[7](Workspace:GetDescendants()) do --auto KFC
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Pot" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, v in __U[7](Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, v in __U[7](Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Chicken" and v.Parent.Parent:IsA("Model") then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, q in __U[7](Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, v in __U[7](Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Wrapped Meat" and v.Parent.Parent:IsA("Model") then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, q in __U[7](Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, v in __U[7](Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Cheese" and v.Parent.Parent:IsA("Model") then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, q in __U[7](Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, q in __U[7](Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, q in __U[7](Workspace:GetDescendants()) do --boil2
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                            break
                        end
                    end
                    __U[23](10)
                    for _, v in __U[7](Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                    __U[23](1)
                    for _, v in __U[7](Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, q in __U[7](Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, q in __U[7](Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                            break
                        end
                    end
                    __U[23](1)
                    for _, q in __U[7](Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Chicken Soup") then --if bowlplace
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                            break
                        end
                    end
                    __U[23](1)
                    for _, v in __U[7](Workspace:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                elseif selectedObject == "Spaghetti N Eyeballs" then
                    for _, v in __U[7](Workspace:GetDescendants()) do -- eyeball
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                    for _, v in __U[7](Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                    for _, v in __U[7](Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Eyeball" and v.Parent.Parent:IsA("Model")
                        then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, q in __U[7](Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Bowl") then --if bowlplace
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                            break
                        end
                    end
                    for _, v in __U[7](Workspace:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Spaghetti" and v.Parent.Parent:IsA("Model") then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
                            break
                        end
                    end
                    __U[23]()
                    for _, q in __U[7](Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Bowl") then --if bowlplace
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                            break
                        end
                    end
                    __U[23](1)
                    for _, q in __U[7](Workspace:GetDescendants()) do
                        if q.Name == "SystemBin" and q:FindFirstChild("Spaghetti N Eyeballs") then --finish prepare send
                            for _, v in __U[7](Workspace:GetDescendants()) do
                                if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                    __U[23]()
                                    break
                                end
                            end
                            __U[23]()
                            break
                        end
                    end
                    __U[23](1)
                    for _, v in __U[7](Workspace:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                            __U[23]()
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
                for _, v in __U[7](workspace:GetDescendants()) do
                    if v.Name == "Barrier" and v:IsA("Part") and isPlayerNear(v, 100) then
                        v:Destroy()
                    end
                end
                while player.PlayerGui.CookingUI.Timer.Visible do
                    Order270 = "nil"
                    matches = {}
                    __U[23](0.1)
                    for _, v in __U[7](workspace:GetDescendants()) do
                        if v.Name == "Orders" then
                            if v:FindFirstChild("Ham Stew") then
                                Order270 = "Ham Stew"
                                __U[30](matches, Order270)
                            elseif v:FindFirstChild("Chicken Soup") then
                                Order270 = "Chicken Soup"
                                __U[30](matches, Order270)
                            elseif v:FindFirstChild("Spaghetti N Eyeballs") then
                                Order270 = "Spaghetti N Eyeballs"
                                __U[30](matches, Order270)
                            end
                        end
                    end
                    __U[23](1)
                    if #matches > 0 then
                        selectedIndex = __U[8](1, #matches)
                        selectedObject = matches[selectedIndex]
                        print(#matches)
                    else
                        Notify("Error 01", "Press again")
                    end
                    if selectedObject == "Ham Stew" then
                        for _, v in __U[7](workspace:GetDescendants()) do --Ham
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Pot" then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, v in __U[7](Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, v in __U[7](Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Ham" and v.Parent.Parent:IsA("Model") then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, q in __U[7](Workspace:GetDescendants()) do
                            if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, v in __U[7](Workspace:GetDescendants()) do
                            if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Sausage" and v.Parent.Parent:IsA("Model") then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, q in __U[7](Workspace:GetDescendants()) do
                            if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                                break
                            end
                        end
                        __U[23](1)
                        for _, q in __U[7](Workspace:GetDescendants()) do
                            if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --boil
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                                break
                            end
                        end
                        __U[23](1)
                        for _, q in __U[7](Workspace:GetDescendants()) do --boil2
                            if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                                break
                            end
                        end
                        __U[23](10)
                        for _, v in __U[7](Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                        __U[23](1)
                        for _, v in __U[7](Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, q in __U[7](Workspace:GetDescendants()) do
                            if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                            break
                        end
                        end
                        __U[23]()
                        for _, q in __U[7](Workspace:GetDescendants()) do
                            if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                                break
                            end
                        end
                        __U[23](1)
                        for _, q in __U[7](Workspace:GetDescendants()) do
                            if q.Name == "SystemBin" and q:FindFirstChild("Ham Stew") then --if bowlplace
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                                break
                            end
                        end
                        __U[23](1)
                        for _, v in __U[7](Workspace:GetDescendants()) do
                            if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                    elseif selectedObject == "Chicken Soup" then
                        for _, v in __U[7](Workspace:GetDescendants()) do --auto KFC
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Pot" then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, v in __U[7](Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, v in __U[7](Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Chicken" and v.Parent.Parent:IsA("Model") then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, q in __U[7](Workspace:GetDescendants()) do
                            if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, v in __U[7](Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Wrapped Meat" and v.Parent.Parent:IsA("Model") then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, q in __U[7](Workspace:GetDescendants()) do
                            if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, v in __U[7](Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Cheese" and v.Parent.Parent:IsA("Model") then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, q in __U[7](Workspace:GetDescendants()) do
                            if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, q in __U[7](Workspace:GetDescendants()) do
                            if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, q in __U[7](Workspace:GetDescendants()) do --boil2
                            if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                                break
                            end
                        end
                        __U[23](10)
                        for _, v in __U[7](Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                        __U[23](1)
                        for _, v in __U[7](Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, q in __U[7](Workspace:GetDescendants()) do
                            if q.Name == "SystemBin" and q:FindFirstChild("Pot") then
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "stove" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, q in __U[7](Workspace:GetDescendants()) do
                            if q.Name == "SystemBin" and q:FindFirstChild("Pot") then --if bowlplace
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                                break
                            end
                        end
                        __U[23](1)
                        for _, q in __U[7](Workspace:GetDescendants()) do
                            if q.Name == "SystemBin" and q:FindFirstChild("Chicken Soup") then --if bowlplace
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                                break
                            end
                        end
                        __U[23](1)
                        for _, v in __U[7](Workspace:GetDescendants()) do
                            if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                    elseif selectedObject == "Spaghetti N Eyeballs" then
                        for _, v in __U[7](Workspace:GetDescendants()) do -- eyeball
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Bowl" then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                        for _, v in __U[7](Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                        for _, v in __U[7](Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Eyeball" and v.Parent.Parent:IsA("Model")
                            then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, q in __U[7](Workspace:GetDescendants()) do
                            if q.Name == "SystemBin" and q:FindFirstChild("Bowl") then --if bowlplace
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                                break
                            end
                        end
                        for _, v in __U[7](Workspace:GetDescendants()) do
                            if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "Spaghetti" and v.Parent.Parent:IsA("Model") then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                        __U[23]()
                        for _, q in __U[7](Workspace:GetDescendants()) do
                            if q.Name == "SystemBin" and q:FindFirstChild("Bowl") then --if bowlplace
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                                break
                            end
                        end
                        __U[23](1)
                        for _, q in __U[7](Workspace:GetDescendants()) do
                            if q.Name == "SystemBin" and q:FindFirstChild("Spaghetti N Eyeballs") then --finish prepare send
                                for _, v in __U[7](Workspace:GetDescendants()) do
                                    if v.Parent:IsA("BasePart") and v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "WoodenCounter" then
                                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                        __U[23](0.3)
                                        __U[60](v)
                                        __U[23]()
                                        break
                                    end
                                end
                                __U[23]()
                                break
                            end
                        end
                        __U[23](1)
                        for _, v in __U[7](Workspace:GetDescendants()) do
                            if v:IsA("ProximityPrompt") and v.Parent.Parent.Name == "TurnInFood" then
                                __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.Parent.CFrame
                                __U[23](0.3)
                                __U[60](v)
                                __U[23]()
                                break
                            end
                        end
                    else
                        Notify("Error 01", "Press again")
                    end
                    __U[23]()
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
                for i,v in __U[7](game.Workspace:GetDescendants()) do
                    if v.Name == "GAMESTART" then 
                        __U[6](function()
                            if v.ClassName == "Part" or v.ClassName == "MeshPart" then
                                local part = __U[35]("Part",workspace:FindFirstChildWhichIsA('Folder'))
                                part.Name = "{x"..__U[32](__U[8](500,1000)).."x}"
                                part.Anchored = __Y[1]
                                part.Size = v.Size
                                part.CanCollide = __Y[2]
                                part.Transparency = 0.9
                                part.CFrame = v.CFrame
                            end
                        end)
                        v:Destroy()
                    end 
                end
                for i = 1, math.huge do
                    wait(0.6)
                
                    if not isPlayerNearPosition(player, __U[57](-4079.71, 613.7, -968.13), 1000) then
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
                            IsOnPart1 = __Y[2],
                            IsOnPart2 = __Y[2]
                        }
                
                        local selectButton = baseTables.Select
                        local part1 = baseTables.Part1
                        local part2 = baseTables.Part2
                
                        local function findTable(table, select)
                            for _, v in __U[73](table) do
                                if v == select then
                                    return v
                                end
                            end
                            return __Y[2]
                        end
                
                        if not findTable(listButtons, selectButton) then
                            for _, v in __U[73](currentBases.Parent:GetChildren()) do
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
                                    for _, v in __U[73](currentBases.Parent:GetChildren()) do
                                        if v.Name == "Buttons" then
                                            local buttons = v
                                            if buttons.BrickColor == BrickColor.new("Institutional white") then
                                                if buttons:FindFirstChild("PUZZLEREVEAL") then
                                                    local pathTo = buttons.PUZZLEREVEAL.Frame.TextLabel
                                                    if pathTo then
                                                        pathTo.Text = pathTo.Text .. " - [" .. __U[32](interfaceTables.SendCount) .. "]"
                                                    end
                                                else
                                                    createBillBoardGui(buttons, "[" .. __U[32](interfaceTables.SendCount) .. "]")
                                                end
                
                                                interfaceCount("Add")
                                            end
                                        end
                                    end
                                end
                            end)
                
                            selectButton:GetPropertyChangedSignal("TimePosition"):Connect(function()
                                for _, v in __U[73](currentBases.Parent:GetChildren()) do
                                    if v.Name == "Buttons" then
                                        local buttons = v
                                        if buttons.BrickColor == BrickColor.new("Institutional white") then
                                            if buttons:FindFirstChild("PUZZLEREVEAL") then
                                                local pathTo = buttons.PUZZLEREVEAL.Frame.TextLabel
                                                if pathTo then
                                                    pathTo.Text = pathTo.Text .. " - [" .. __U[32](interfaceTables.SendCount) .. "]"
                                                end
                                            else
                                                createBillBoardGui(buttons, "[" .. __U[32](interfaceTables.SendCount) .. "]")
                                            end
                
                                            interfaceCount("Add")
                                        end
                                    end
                                end
                            end)
                
                            __U[30](listButtons, selectButton)
                        end
                
                        part1:GetPropertyChangedSignal("BrickColor"):Connect(function()
                            __U[6](function()
                                if part1.BrickColor == BrickColor.new("Medium stone grey") then
                                    if not stateTables.IsOnPart1 then
                                        stateTables.IsOnPart1 = __Y[1]
                                        resetThings()
                                    end
                                end
                            end)
                        end)
                
                        part2:GetPropertyChangedSignal("BrickColor"):Connect(function()
                            __U[6](function()
                                if part2.BrickColor == BrickColor.new("Medium stone grey") then
                                    if not stateTables.IsOnPart2 then
                                        stateTables.IsOnPart2 = __Y[1]
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
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v.Parent:IsA("BasePart") and v.Parent.Name == "GAMESTART" then
                        v:Destroy()
                    end
                end
            end
        })
        HideSpot = __Y[3]
        local Dropdown = Tabs.B2C2:AddDropdown("Dropdown", {
            Title = "Hide Spot",
            Values = {"1", "2", "3"},
            Multi = __Y[2],
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
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-4066.81,630.67,-985.54)
                elseif HideSpot == "2" then
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-4053.62,666.31,-951.76)
                elseif HideSpot == "3" then
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-4088.17,743.82,-959.96)
                end
            end
        })
        Tabs.B2C2:AddSection("Kid")
        Tabs.B2C2:AddButton({
            Title = "Set Game Files",
            Description = "Press this first",
            Callback = function()
                for i,v in __U[7](workspace:GetDescendants()) do
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
                for i,v in __U[7](__VE["WS"]:GetDescendants()) do
                    if v:IsA("BasePart") and v.Name == "IndicatorPic" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.CFrame
                        __U[23]()
                        break
                    end
                end
                __U[23]()
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-4334.81299, 690.94397, -2363.2771, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            end
        })
        Tabs.B2C2:AddButton({
            Title = "Anti Mother",
            Description = "Press after cutscene",
            Callback = function()
                function TeleportPlayer()
                    motherPart = __Y[3]
                    for _, part in __U[73](workspace:GetDescendants()) do
                        if part.Name == "HumanoidRootPart" and part.Parent.Name == "Mother" then
                            motherPart = part
                            break
                        end
                    end
                    while isPlayerNearPosition(__VE["LPs"], __U[57](-4334.81299, 690.94397, -2363.2771), 3000) do
                        if not isPlayerNearPosition(__VE["LPs"], __U[57](-4334.81299, 690.94397, -2363.2771), 3000) then
                            break
                        end
                        if not motherPart then
                            for _, part in __U[73](workspace:GetDescendants()) do
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
                                char.HumanoidRootPart.CFrame = __U[26](-4334.81299, 690.94397, -2363.2771, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                            end
                        end
            
                        __U[23](0.1)
                    end
                end
            
                TeleportPlayer()
            end
        })
        Tabs.B2C2:AddButton({
            Title = "Teleport To Gate",
            Description = "",
            Callback = function()
                for i,v in __U[7](__VE["WS"]:GetDescendants()) do
                    if v:IsA("BasePart") and v.Name == "Formation" then
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.CFrame
                    __U[23]()
                    break
                    end
                end
            end
        })
        Tabs.B2C2:AddButton({
            Title = "Auto Get Notes",
            Description = "",
            Callback = function()
                Float = __Y[2]
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Note" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
            end
        })
        local ANL = Tabs.Main:AddToggle("ANL", {Title = "Anti Nagisa Laser", Default = __Y[2] })

        ANL:OnChanged(function()
            if Options.ANL.Value then
                if not LASEROFNAGISA then
                    for _, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Name == "POISON" then
                            LASEROFNAGISA = v
                        end
                    end
                end
                if not BALLGIVER then
                    for i, v in __U[7](workspace:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "BallGiver" then
                            BALLGIVER = v
                        end
                    end
                end
        
                while Options.ANL.Value do
                    if Options.ANL.Value and __VE["LPs"].Character:FindFirstChild("HumanoidRootPart") then
                        if LASEROFNAGISA and LASEROFNAGISA.Transparency == 0.5 then
                            Tp(1982.58, 100, -4780.12, __Y[3])
                        end
                    end
                
                    __U[23](0.05)
                end
            end
        end)
        local AGCB = Tabs.Main:AddToggle("AGCB", {Title = "Auto Get Cannon Balls", Default = __Y[2] })

        AGCB:OnChanged(function()
            __U[6](function()
                if Options.AGCB.Value then
                    for i, v in __U[7](workspace:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "BallGiver" then
                            BALLGIVER = v
                        end
                    end
                    if not LASEROFNAGISA then
                        for _, v in __U[7](workspace:GetDescendants()) do
                            if v.Name == "POISON" then
                                LASEROFNAGISA = v
                            end
                        end
                    end
                    while Options.AGCB.Value do
                        if __VE["LPs"].PlayerGui.BossFight.Ammo.Text == "0" and LASEROFNAGISA.Transparency ~= 0.5 then
                            char.HumanoidRootPart.CFrame = BALLGIVER.Parent.CFrame
                            __U[23](0.3)
                            __U[60](BALLGIVER)
                            __U[60](BALLGIVER)
                            __U[60](BALLGIVER)
                            __U[60](BALLGIVER)
                            __U[60](BALLGIVER)
                            __U[23]()
                        end
                        __U[23]()
                    end
                end
            end)
        end)
        Tabs.B2C3:AddSection("Gozu & Mezu")
        Tabs.B2C3:AddButton({
            Title = "Auto Win",
            Description = "",
            Callback = function()
                Tp(-581.70068359375, 38.337032318115234, 417.4595947265625)
            end
        })
        Tabs.B2C3:AddSection("Heart")
        Tabs.B2C3:AddButton({
            Title = "Talk",
            Description = "Walk to trigger",
            Callback = function()
                Tp(-138.42770385742188, 45.49604797363281, 79.2468490600586)
            end
        })
        Tabs.B2C3:AddButton({
            Title = "Auto Heart",
            Description = "",
            Callback = function()
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Heart" and v.Parent.Parent.Name == "Hearts" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.Heart.CFrame
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
                __U[23]()
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Heart" and v.Parent.Parent.Name == "BeatingHeart" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __VE["LPs"].Backpack:FindFirstChild("Heart").Parent = __VE["LPs"].Character
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
            end
        })
        Tabs.B2C3:AddButton({
            Title = "Auto Spin Table",
            Description = "",
            Callback = function()
                for _, v in pairs(workspace.Section1.Puzzle.SpinModel:GetChildren()) do
                    if v:IsA("ProximityPrompt") and v.Enabled then
                        Tp(-72.22259521484375, 49.34312438964844, 11.30484676361084, 0.3)
                        fireproximityprompt(v)
                        wait(0.5)
                        fireproximityprompt(v)
                        wait(0.5)
                        fireproximityprompt(v)
                        wait(0.5)
                        fireproximityprompt(v)
                        wait(0.5)
                        fireproximityprompt(v)
                        wait(0.5)
                    end
                end
            end
        })
        Tabs.B2C3:AddButton({
            Title = "Auto Run",
            Description = "",
            Callback = function()
                Float = __Y[1]
                Tp(-101.209686, 41.456089, -395.665802, 0.3)
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "MAIN" then
                        if isPlayerNear(v.Parent, 30) then
                            __U[60](v)
                        end
                    end
                end
                __U[23]()
                Float = __Y[2]
            end
        })
        Tabs.B2C3:AddSection("Maze")
        Tabs.B2C3:AddButton({
            Title = "Auto Craft",
            Description = "",
            Callback = function()
                Float = __Y[1]
                --MainConsoleLogOutF("Getting Item")
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "Hole" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](v.Parent.Position.X, v.Parent.Position.Y - 5, v.Parent.Position.Z)
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
                Tp(-78.38977813720703, 3.999999523162842, -442.6703186035156, 1)
                --MainConsoleLogOutF("Crafting")
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "RootPart" and v.Parent.Parent.Name == "Monster" and isPlayerNear(v.Parent, 30) then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                        __U[23]()
                        break
                    end
                end
                __U[23]()
                Float = __Y[2]
                argsCRaftesr = {
                    [1] = 0,
                    [2] = {
                        ["__args"] = {},
                        ["__tree"] = {
                            [1] = "CraftingService",
                            [2] = "Interact"
                        },
                        ["__callType"] = 0
                    }
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Packet"):WaitForChild("PacketFunction"):InvokeServer(unpack(argsCRaftesr))
                --MainConsoleLogOutF("Trying To Invoke Server")
                __U[23]()
                __VE["LPs"].PlayerGui.Crafting.Frame.Visible = __Y[2]
                --MainConsoleLogOutF("Successfully Craft Torch")
            end
        })
        Tabs.B2C3:AddButton({
            Title = "Get Fire",
            Description = "",
            Callback = function()
                function isPartNearPart(part1, part2, distance)
                    if part1 and part1:IsA("BasePart") and part2 and part2:IsA("BasePart") then
                        local distanceThreshold = distance
                        local part1Position = part1.Position
                        local part2Position = part2.Position
                        local partDistance = (part1Position - part2Position).magnitude
                
                        return partDistance <= distanceThreshold
                    else
                        return __Y[2]
                    end
                end
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent.Name == "UndyingFlame" and not isPartNearPart(v.Parent, workspace.Section1.Maze.GrinDemonNM.Hitbox, 20) then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                        __U[23]()
                        break
                    end
                end
                __U[23]()
                Tp(-78.38977813720703, 3.999999523162842, -442.6703186035156, 1)  
            end
        })
        Tabs.B2C3:AddButton({
            Title = "Escape",
            Description = "",
            Callback = function()
                Tp(-74.25013732910156, 5.26987361907959, -880.4428100585938, __Y[3])
            end
        })
        Tabs.B2C3:AddSection("Bells")
        Tabs.B2C3:AddButton({
            Title = "Enter Zone",
            Description = "",
            Callback = function()
                Tp(-325.5806579589844, 15.388615608215332, -1113.81494140625, __Y[3])
            end
        })
        Tabs.B2C3:AddButton({
            Title = "Kill All Flys",
            Description = "",
            Callback = function()
                if not __VE["LPs"].Character:FindFirstChild("Bone Sword") then
                    __VE["LPs"].Backpack:FindFirstChild("Bone Sword").Parent = __VE["LPs"].Character
                end
                __U[23]()
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v.Name == "FlyHitbox" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.CFrame
                        wait()
                        __VE["LPs"].Character["Bone Sword"]:Activate()
                        __U[23](3)
                    end
                end
                __U[23]()
            end
        })
        Tabs.B2C3:AddButton({
            Title = "Teleport To Puzzle Door",
            Description = "",
            Callback = function()
                for i, v in __U[7](workspace.Section2.PuzzleDoor.Doors:GetDescendants()) do
                    if v.Name == "SurfaceGui" and v.Parent.Name == "Combos" and v.Parent.Position.Y >= 0 then
                        Shapesss = {}
                        for _, obj in __U[7](v:GetChildren()) do
                            if obj then
                                __U[30](Shapesss, __U[32](obj.Name))
                            end
                        end
                        __U[23]()
                        if #Shapesss == 4 then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        end
                    end
                end
            end
        })
        Tabs.B2C3:AddButton({
            Title = "Auto Run",
            Description = "",
            Callback = function()
                Tp(-3888.80054, -55, -2289.43774)
            end
        })
        Tabs.B2C3:AddSection("Enzukai Game")
        Tabs.B2C3:AddButton({
            Title = "Auto Run",
            Description = "",
            Callback = function()
                for _, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") then
                        if isPlayerNear(v.Parent, 100) then
                            while __U[23]() do
                                if not v then
                                    break
                                end
                                if v.Enabled then
                                    __U[60](v)
                                end
                            end
                            __U[23]()
                        end
                    end
                end
            end
        })
        Tabs.B2C3:AddSection("Father")
        Tabs.B2C3:AddButton({
            Title = "Kill Isamu",
            Description = "",
            Callback = function()
                workspace.Section3.IsamuAI.Hitbox.CanTouch = __Y[2]
            end
        })
        Tabs.B2C3:AddButton({
            Title = "Teleport To Safe Spot",
            Description = "",
            Callback = function()
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](1136.67224, 29.0004768, -2400.67603, 0.695213974, 0, -0.718802869, 0, 1, 0, 0.718802869, 0, 0.695213974)
            end
        })
        Tabs.B2C3:AddButton({
            Title = "Auto Win",
            Description = "click per round",
            Callback = function()
                if workspace.Section3:FindFirstChild("IsamuAI") then
                    if  workspace.Section3.IsamuAI:FindFirstChild("Hitbox") and workspace.Section3.IsamuAI.Hitbox.CanTouch then
                        workspace.Section3.IsamuAI.Hitbox.CanTouch = __Y[2]
                        --MainConsoleLogOutF("Successfully Set Kill IsamuAI")
                        --MainConsoleLogOutF("Waiting Time")
                    end
                end
                repeat __U[23]() until __VE["LPs"].PlayerGui["03_Handler"].TimerFrame.TextLabel.Text == "6 PM"
                --MainConsoleLogOutF("Successfully Teleport")
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](1136.67224, 29.0004768, -2400.67603, 0.695213974, 0, -0.718802869, 0, 1, 0, 0.718802869, 0, 0.695213974)
            end
        })
        Tabs.B2C3:AddSection("Train")
        Tabs.B2C3:AddButton({
            Title = "Enter Zone",
            Description = "",
            Callback = function()
                __VE["LPs"].Character.HumanoidRootPart.CFrame = workspace["Section3.5"].GhostTrain.TrainTrigger.CFrame
            end
        })
        Tabs.B2C3:AddSection("Larves")
        Tabs.B2C3:AddButton({
            Title = "Enter Zone",
            Description = "",
            Callback = function()
                for _,v in __U[7](workspace.Section4.Map.BabyFaceNPC.ProxPart:GetChildren()) do
                    if v:IsA("ProximityPrompt") and v.Enabled then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                        break
                    end
                end
                --MainConsoleLogOutF("Successfully Talk")
                __U[23]()
                --MainConsoleLogOutF("Getting Larvae")
                for _,v in __U[7](workspace.Section4.HotPotato.Givers:GetChildren()) do
                    if v.Name == "LarvaeGiver" and v:FindFirstChild("RootPart") then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.RootPart.CFrame
                        __U[23](0.3)
                        __U[60](v.RootPart.ProximityPrompt)
                        break
                    end
                end
                __U[23]()
                --MainConsoleLogOutF("Successfully Getting Larvae")
                for _,v in __U[7](workspace.Section4.DogWall.RootPart:GetChildren()) do
                    if v:IsA("ProximityPrompt") then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                        break
                    end
                end
                __U[23]()
            end
        })
        Tabs.B2C3:AddSection("Mud")
        Tabs.B2C3:AddButton({
            Title = "Auto Win",
            Description = "",
            Callback = function()
                for _,v in __U[7](workspace["Section4.5"]:GetChildren()) do
                    if v.Name == "TeleportToSection5" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.CFrame
                        break
                    end
                end
            end
        })
        Tabs.B2C3:AddSection("Yurei 1st | House")
        Tabs.B2C3:AddButton({
            Title = "Talk",
            Description = "",
            Callback = function()
                for _,v in __U[7](workspace.Section5.Map.BabyFaceNPC.ProxPart:GetChildren()) do
                    if v:IsA("ProximityPrompt") and v.Enabled then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                        break
                    end
                end
            end
        })
        Tabs.B2C3:AddButton({
            Title = "Teleport To House",
            Description = "",
            Callback = function()
                for _,v in __U[7](workspace.Section5.ISPY.Houses:GetDescendants()) do
                    if v.Name == "LightSpotter" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.CFrame
                    end
                end
            end
        })
        Tabs.B2C3:AddSection("Yurei 2nd | Boss")
        Tabs.B2C3:AddButton({
            Title = "Clear Map",
            Description = "",
            Callback = function()
                for _, v in __U[7](workspace.Section5.Boss.Build:GetChildren()) do
                    if v and v.Name == "c01-15k" or v and v.Name == "InvisWall" then
                        v:Destroy()
                    end
                end
            end
        })
        Tabs.B2C3:AddButton({
            Title = "Teleport To Safe Spot",
            Description = "",
            Callback = function()
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](3078.94287, 16.9999962, -540.494385, -0.784964442, 0, 0.619540811, 0, 1, 0, -0.619540811, 0, -0.784964442)
            end
        })
        Tabs.B2C3:AddSection("Hell")
        Tabs.B2C3:AddButton({
            Title = "Talk",
            Description = "",
            Callback = function()
                if isPlayerNearPos(__U[57](-2717.091064453125, 172.54824829101562, 8059.78955078125), 800) then
                    Tp(-2717.091064453125, 172.54824829101562, 8059.78955078125, __Y[3])
                end
            end
        })
        Tabs.B2C3:AddButton({
            Title = "Auto Run",
            Description = "Press after cutscene",
            Callback = function()
                Tp(-1696.94921875, 245.83494567871094, 7806.041503906259, __Y[3])
            end
        })
        
        Tabs.TWT:AddSection("All In One")
        Tabs.TWT:AddButton({
            Title = "Auto Win",
            Description = "",
            Callback = function()
                char = __VE["LPs"].Character
                if PlaceId == 7068738088 or PlaceId == 7068951438 then
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v.Parent.Name == "Game Teleporter" then
                            char.HumanoidRootPart.CFrame = v.Parent.CFrame
                        end
                    end
                elseif PlaceId == 7068739000 or PlaceId == 7068951914 then
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v.Parent.Name == "Game Teleporter" then
                            char.HumanoidRootPart.CFrame = v.Parent.CFrame
                        end
                    end
                elseif PlaceId == 7068740106 or PlaceId == 7068952294 then
                    for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                        if v.Parent:IsA("BasePart") and v.Parent.Name == "Game Teleporter" then
                            char.HumanoidRootPart.CFrame = v.Parent.CFrame
                        end
                    end
                end
            end
        })
        Tabs.TWT:AddSection("Mutiplayer")
        Tabs.TWT:AddSection("Map 3")
        Tabs.TWT:AddButton({
            Title = "Auto Get Butterfly",
            Description = "",
            Callback = function()
                function teleportAndFirePrompt(part)
                    character = __VE["LPs"].Character
                    humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
                    
                    if humanoidRootPart and humanoidRootPart:IsA("BasePart") then
                        local targetCFrame = part.CFrame + (part.CFrame.LookVector * -9)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
                
                for i, v in __U[7](__VE["WS"].GameAI:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Cube.001" then
                        teleportAndFirePrompt(v.Parent)
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                __U[23]()
            end
        })
        Tabs.TWT:AddButton({
            Title = "Teleport To Fireplace 1",
            Description = "",
            Callback = function()
                Tp(2621.90186, 111.203804, 1453.71765, __Y[3])
            end
        })
        Tabs.TWT:AddButton({
            Title = "Teleport To Fireplace 2",
            Description = "",
            Callback = function()
                Tp(2426.72583, 185.146057, 1457.37292, __Y[3])
            end
        })

        Tabs.Xmas1:AddSection("Santa Sleigh")
        Tabs.Xmas1:AddButton({
            Title = "Auto Repair",
            Description = "",
            Callback = function()
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "RootPart" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
                
                __U[23]()
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Extinguisher" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
                
                __U[23]()
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Ropes" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
                
                __U[23]()
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Controls" then
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
                
                __U[23]()
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "RepairPoint" then
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
                
                __U[23](0.3)
                Tp(-176.64, 4.8, -328.34, __Y[3])
            end
        })
        Tabs.Xmas1:AddSection("Toys")
        Tabs.Xmas1:AddButton({
            Title = "Auto Collect",
            Description = "",
            Callback = function()
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "RootPart" then
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
                
                __U[23]()
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "toy" then
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
        
                __U[23]()
                Tp(-176.64, 4.8, -328.34, __Y[3])
            end
        })
        Tabs.Xmas1:AddSection("Key")
        Tabs.Xmas1:AddButton({
            Title = "Auto Win",
            Description = "",
            Callback = function()
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "RootPart" then
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                function teleportAndFirePrompt(part)
                    character = __VE["LPs"].Character
                    humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
                    
                    if humanoidRootPart and humanoidRootPart:IsA("BasePart") then
                        targetCFrame = part.CFrame + (part.CFrame.LookVector * -9)
                        humanoidRootPart.CFrame = targetCFrame
                    end
                end
                
                __U[23]()
        
                for i, v in __U[7](workspace.GameAI:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "HumanoidRootPart" then
                        teleportAndFirePrompt(v.Parent)
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                __U[23]()
                
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "RootPart" then
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        wait(0.3)
                        __U[60](v)
                    end
                end
            end
        })
        Tabs.Halloween:AddSection("Map 1")
        Tabs.Halloween:AddButton({
            Title = "Auto Win",
            Description = "",
            Callback = function()
                for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "GrabItem" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
                __U[23](1)
                for i, v in __U[7](__VE["WS"]:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Burner" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                        __U[60](v)
                        __U[60](v)
                        __U[60](v)
                        __U[60](v)
                    end
                end
            end
        })
        Tabs.Halloween:AddSection("Map 2")
        Tabs.Halloween:AddButton({
            Title = "Auto Win",
            Description = "",
            Callback = function()
                success = __Y[2]

                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](168.59, 45, -119.63)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](97.5569, 75, -164.936)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](25.9275, 76, -116.628)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](42.54,100,-132.39)
                __U[23]()
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](42.54,60.91,-132.39)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-35.8623, 61, 6.54341)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](140.855, 49, -37.8745)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](168.327, 55, -119.483)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](49.3455, 47, -101.13)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-55.54,83.33,-67.01)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](180.72, 46, -100.54)
            end
        })
        Tabs.Halloween:AddButton({
            Title = "Full Auto Win",
            Description = "",
            Callback = function()
                repeat
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](180.72, 46, -100.54)
                    __U[23]()
                until __VE["LPs"].PlayerGui.ScreenGui.TextLabel.Text == "1:30"
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](168.59, 45, -119.63)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](97.5569, 75, -164.936)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](25.9275, 76, -116.628)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](42.54,100,-132.39)
                __U[23]()
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](42.54,60.91,-132.39)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-35.8623, 61, 6.54341)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](140.855, 49, -37.8745)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](168.327, 55, -119.483)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](49.3455, 47, -101.13)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-55.54,83.33,-67.01)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-33.94,66.47,6.76)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](180.72, 46, -100.54)
                repeat
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](180.72, 46, -100.54)
                __U[23]()
                until __VE["LPs"].PlayerGui.ScreenGui.TextLabel.Text == "1:30"
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](168.59, 45, -119.63)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](97.5569, 75, -164.936)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](25.9275, 76, -116.628)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](42.54,100,-132.39)
                __U[23]()
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](42.54,60.91,-132.39)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-35.8623, 61, 6.54341)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](140.855, 49, -37.8745)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](168.327, 55, -119.483)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](49.3455, 47, -101.13)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-55.54,83.33,-67.01)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-33.94,66.47,6.76)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](180.72, 46, -100.54)
                repeat
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](180.72, 46, -100.54)
                __U[23]()
                until __VE["LPs"].PlayerGui.ScreenGui.TextLabel.Text == "1:30"
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](168.59, 45, -119.63)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](97.5569, 75, -164.936)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](25.9275, 76, -116.628)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](42.54,100,-132.39)
                __U[23]()
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](42.54,60.91,-132.39)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-35.8623, 61, 6.54341)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](140.855, 49, -37.8745)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](168.327, 55, -119.483)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](49.3455, 47, -101.13)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-55.54,83.33,-67.01)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-33.94,66.47,6.76)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](180.72, 46, -100.54)
                repeat
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](180.72, 46, -100.54)
                __U[23]()
                until __VE["LPs"].PlayerGui.ScreenGui.TextLabel.Text == "1:30"
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](168.59, 45, -119.63)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](97.5569, 75, -164.936)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](25.9275, 76, -116.628)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](42.54,100,-132.39)
                __U[23]()
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](42.54,60.91,-132.39)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-35.8623, 61, 6.54341)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](140.855, 49, -37.8745)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](168.327, 55, -119.483)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](49.3455, 47, -101.13)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-55.54,83.33,-67.01)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-33.94,66.47,6.76)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](180.72, 46, -100.54)
                repeat
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](180.72, 46, -100.54)
                __U[23]()
                until __VE["LPs"].PlayerGui.ScreenGui.TextLabel.Text == "1:30"
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](168.59, 45, -119.63)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](97.5569, 75, -164.936)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](25.9275, 76, -116.628)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](42.54,100,-132.39)
                __U[23]()
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](42.54,60.91,-132.39)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-35.8623, 61, 6.54341)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](140.855, 49, -37.8745)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](168.327, 55, -119.483)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](49.3455, 47, -101.13)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-55.54,83.33,-67.01)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-33.94,66.47,6.76)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](180.72, 46, -100.54)
                repeat
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](180.72, 46, -100.54)
                __U[23]()
                until __VE["LPs"].PlayerGui.ScreenGui.TextLabel.Text == "1:30"
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](168.59, 45, -119.63)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](97.5569, 75, -164.936)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](25.9275, 76, -116.628)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](42.54,100,-132.39)
                __U[23]()
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](42.54,60.91,-132.39)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-35.8623, 61, 6.54341)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](140.855, 49, -37.8745)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](168.327, 55, -119.483)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](49.3455, 47, -101.13)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-55.54,83.33,-67.01)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                success = __Y[2]
                
                spawn(function()
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](-33.94,66.47,6.76)
                        __U[23]()
                    until success == __Y[1]
                end)
                
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Parent.Name == "Candle" then
                        wait(0.3)
                        __U[60](v)
                    end
                end
                
                success = __Y[1]
                __U[23]()
                __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](180.72, 46, -100.54)
            end
        })
        Tabs.Halloween:AddSection("Map 3")
        Tabs.Halloween:AddButton({
            Title = "Auto Win",
            Description = "Singleplayer",
            Callback = function()
                for i, v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                        __U[23]()
                    end
                end
            end
        })
        Tabs.Halloween:AddButton({
            Title = "Auto Win",
            Description = "Mutiplayer",
            Callback = function()
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Core" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
            end
        })
        Tabs.Halloween:AddButton({
            Title = "Full Auto Win",
            Description = "Mutiplayer",
            Callback = function()
                while __U[23]() and not CustomFirePropmt do
                    repeat
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](568.2, 500, -210.73)
                        __U[23]()
                    until __VE["LPs"].PlayerGui.Timer.TextLabel.Text == "1:50"
                    for i, v in __U[7](Workspace:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart") and v.Parent.Name == "Core" then
                            repeat
                                __U[6](function()
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                                    __U[23](0.3)
                                    __U[60](v)
                                end)
                                __U[23]()
                            until not v.Enabled
                        end
                    end
                    __U[23]()
                end
            end
        })
        Tabs.NMCS:AddSection("Jukebox")
        Tabs.NMCS:AddButton({
            Title = "Skip",
            Description = "Then do the cards",
            Callback = function()
                __VE["LPs"].Character.HumanoidRootPart.CFrame = workspace.Section2.Cutscene.CutsceneMagician.WorldPivot
            end
        })
        Tabs.NMCS:AddButton({
            Title = "Enter Zone",
            Description = "Then do the cards",
            Callback = function()
                Tp(-2568.51929, 36.4062042, 466.819244, __Y[3])
            end
        })
        Tabs.NMCS:AddButton({
            Title = "Auto Win",
            Description = "Look up",
            Callback = function()
                Float = __Y[1]
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v.Name == "RootPart" and v.Parent.Name == "JackBox" then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.CFrame * __U[26](0,-4,0)
                        __U[23](1)
                        keyPress(Enum.KeyCode.E, __Y[1])
                        __U[23](7)
                    end
                end
                __U[23](3)
                Float = __Y[2]
            end
        })
        Tabs.NMCS:AddSection("Cards")
        Tabs.NMCS:AddButton({
            Title = "Auto Cards",
            Description = "Look up",
            Callback = function()
                for i,v in __U[7](game:GetService("Workspace"):GetChildren()) do 
                    if v.Name == "stage" then 
                        v:Destroy(__Y[1])
                    end 
                end
                for i,v in __U[7](Workspace:GetDescendants()) do
                    if v.Parent.Name == "PassCode" then
                        for x,c in __U[7](Workspace:GetDescendants()) do
                            if c.Parent.Name == "Cards" then
                                if c.Order.SurfaceGui.TextLabel.Text == v.Name then
                                    __VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](v.CFrame.Position)
                                    repeat
                                    __U[60](v.PROMPT)
                                    __U[23](0.5)
                                    until v[c.Name].Transparency == 0
                                end
                            end
                        end
                    end
                end
            end
        })
        Tabs.NMCS:AddButton({
            Title = "Reveal Cards",
            Description = "",
            Callback = function()
                function createMenu()
                    if not __VE["LPs"].PlayerGui:FindFirstChild("idk") then
                        local idk = __U[35]("ScreenGui")
                        local Frame = __U[35]("Frame")
                        local UICorner = __U[35]("UICorner")
                        local _2 = __U[35]("Frame")
                        local UICorner_2 = __U[35]("UICorner")
                        local ImageLabel = __U[35]("ImageLabel")
                        local _6 = __U[35]("Frame")
                        local UICorner_3 = __U[35]("UICorner")
                        local ImageLabel_2 = __U[35]("ImageLabel")
                        local _5 = __U[35]("Frame")
                        local UICorner_4 = __U[35]("UICorner")
                        local ImageLabel_3 = __U[35]("ImageLabel")
                        local _3 = __U[35]("Frame")
                        local UICorner_5 = __U[35]("UICorner")
                        local ImageLabel_4 = __U[35]("ImageLabel")
                        local _4 = __U[35]("Frame")
                        local UICorner_6 = __U[35]("UICorner")
                        local ImageLabel_5 = __U[35]("ImageLabel")
                        local _1 = __U[35]("Frame")
                        local UICorner_7 = __U[35]("UICorner")
                        local ImageLabel_6 = __U[35]("ImageLabel")
                        local _1t = __U[35]("TextLabel")
                        local _2t = __U[35]("TextLabel")
                        local _3t = __U[35]("TextLabel")
                        local _4t = __U[35]("TextLabel")
                        local _5t = __U[35]("TextLabel")
                        local _6t = __U[35]("TextLabel")
                        
                        idk.Name = "idk"
                        idk.Parent = __VE["LPs"]:WaitForChild("PlayerGui")
                        idk.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        
                        Frame.Parent = __VE["LPs"].PlayerGui.idk
                        Frame.BackgroundColor3 = __U[36](40, 40, 40)
                        Frame.BorderColor3 = __U[36](0, 0, 0)
                        Frame.BorderSizePixel = 0
                        Frame.Position = __U[27](0.00827690028, 0, 0.0244754981, 0)
                        Frame.Size = __U[27](0, 590, 0, 156)
                
                        UICorner.CornerRadius = UDim.new(0, 10)
                        UICorner.Parent = Frame
                
                        _2.Name = "2"
                        _2.Parent = Frame
                        _2.BackgroundColor3 = __U[36](25, 25, 25)
                        _2.BorderColor3 = __U[36](0, 0, 0)
                        _2.BorderSizePixel = 0
                        _2.Position = __U[27](0.189877644, 0, 0.164706007, 0)
                        _2.Size = __U[27](0, 75, 0, 118)
                        _2.ZIndex = 6
                
                        UICorner_2.CornerRadius = UDim.new(0, 10)
                        UICorner_2.Parent = _2
                
                        ImageLabel.Parent = _2
                        ImageLabel.BackgroundColor3 = __U[36](255, 255, 255)
                        ImageLabel.BorderColor3 = __U[36](0, 0, 0)
                        ImageLabel.BorderSizePixel = 0
                        ImageLabel.Position = __U[27](-1.0579427e-05, 0, 0, 0)
                        ImageLabel.Size = __U[27](0, 75, 0, 118)
                        ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
                
                        _6.Name = "6"
                        _6.Parent = Frame
                        _6.BackgroundColor3 = __U[36](25, 25, 25)
                        _6.BorderColor3 = __U[36](0, 0, 0)
                        _6.BorderSizePixel = 0
                        _6.Position = __U[27](0.839581668, 0, 0.164706007, 0)
                        _6.Size = __U[27](0, 75, 0, 118)
                        _6.ZIndex = 3
                
                        UICorner_3.CornerRadius = UDim.new(0, 10)
                        UICorner_3.Parent = _6
                
                        ImageLabel_2.Parent = _6
                        ImageLabel_2.BackgroundColor3 = __U[36](255, 255, 255)
                        ImageLabel_2.BorderColor3 = __U[36](0, 0, 0)
                        ImageLabel_2.BorderSizePixel = 0
                        ImageLabel_2.Position = __U[27](-4.72005195e-05, 0, 0, 0)
                        ImageLabel_2.Size = __U[27](0, 75, 0, 118)
                        ImageLabel_2.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
                
                        _5.Name = "5"
                        _5.Parent = Frame
                        _5.BackgroundColor3 = __U[36](25, 25, 25)
                        _5.BorderColor3 = __U[36](0, 0, 0)
                        _5.BorderSizePixel = 0
                        _5.Position = __U[27](0.680917144, 0, 0.164706007, 0)
                        _5.Size = __U[27](0, 75, 0, 118)
                        _5.ZIndex = 3
                
                        UICorner_4.CornerRadius = UDim.new(0, 10)
                        UICorner_4.Parent = _5
                
                        ImageLabel_3.Parent = _5
                        ImageLabel_3.BackgroundColor3 = __U[36](255, 255, 255)
                        ImageLabel_3.BorderColor3 = __U[36](0, 0, 0)
                        ImageLabel_3.BorderSizePixel = 0
                        ImageLabel_3.Position = __U[27](-3.82486978e-05, 0, 0, 0)
                        ImageLabel_3.Size = __U[27](0, 75, 0, 118)
                        ImageLabel_3.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
                
                        _3.Name = "3"
                        _3.Parent = Frame
                        _3.BackgroundColor3 = __U[36](25, 25, 25)
                        _3.BorderColor3 = __U[36](0, 0, 0)
                        _3.BorderSizePixel = 0
                        _3.Position = __U[27](0.348542094, 0, 0.17058827, 0)
                        _3.Size = __U[27](0, 75, 0, 118)
                        _3.ZIndex = 6
                
                        UICorner_5.CornerRadius = UDim.new(0, 10)
                        UICorner_5.Parent = _3
                
                        ImageLabel_4.Parent = _3
                        ImageLabel_4.BackgroundColor3 = __U[36](255, 255, 255)
                        ImageLabel_4.BorderColor3 = __U[36](0, 0, 0)
                        ImageLabel_4.BorderSizePixel = 0
                        ImageLabel_4.Position = __U[27](-1.95312496e-05, 0, 0, 0)
                        ImageLabel_4.Size = __U[27](0, 75, 0, 118)
                        ImageLabel_4.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
                
                        _4.Name = "4"
                        _4.Parent = Frame
                        _4.BackgroundColor3 = __U[36](25, 25, 25)
                        _4.BorderColor3 = __U[36](0, 0, 0)
                        _4.BorderSizePixel = 0
                        _4.Position = __U[27](0.513526142, 0, 0.171059042, 0)
                        _4.Size = __U[27](0, 75, 0, 118)
                        _4.ZIndex = 6
                
                        UICorner_6.CornerRadius = UDim.new(0, 10)
                        UICorner_6.Parent = _4
                
                        ImageLabel_5.Parent = _4
                        ImageLabel_5.BackgroundColor3 = __U[36](255, 255, 255)
                        ImageLabel_5.BorderColor3 = __U[36](0, 0, 0)
                        ImageLabel_5.BorderSizePixel = 0
                        ImageLabel_5.Position = __U[27](-2.76692717e-05, 0, 0, 0)
                        ImageLabel_5.Size = __U[27](0, 75, 0, 118)
                        ImageLabel_5.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
                
                        _1.Name = "1"
                        _1.Parent = Frame
                        _1.BackgroundColor3 = __U[36](25, 25, 25)
                        _1.BorderColor3 = __U[36](0, 0, 0)
                        _1.BorderSizePixel = 0
                        _1.Position = __U[27](0.0312131681, 0, 0.164706007, 0)
                        _1.Size = __U[27](0, 75, 0, 118)
                        _1.ZIndex = 6
                
                        UICorner_7.CornerRadius = UDim.new(0, 10)
                        UICorner_7.Parent = _1
                
                        ImageLabel_6.Parent = _1
                        ImageLabel_6.BackgroundColor3 = __U[36](255, 255, 255)
                        ImageLabel_6.BorderColor3 = __U[36](0, 0, 0)
                        ImageLabel_6.BorderSizePixel = 0
                        ImageLabel_6.Position = __U[27](-1.72932948e-06, 0, 0, 0)
                        ImageLabel_6.Size = __U[27](0, 75, 0, 118)
                        ImageLabel_6.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
                
                        _1t.Name = "1t"
                        _1t.Parent = Frame
                        _1t.BackgroundColor3 = __U[36](255, 255, 255)
                        _1t.BackgroundTransparency = 1.000
                        _1t.BorderColor3 = __U[36](0, 0, 0)
                        _1t.BorderSizePixel = 0
                        _1t.Position = __U[27](0.0312131681, 0, 5.50196724e-08, 0)
                        _1t.Size = __U[27](0, 75, 0, 25)
                        _1t.Font = Enum.Font.SourceSansBold
                        _1t.Text = "1"
                        _1t.TextColor3 = __U[36](255, 255, 255)
                        _1t.TextSize = 21.000
                
                        _2t.Name = "2t"
                        _2t.Parent = Frame
                        _2t.BackgroundColor3 = __U[36](255, 255, 255)
                        _2t.BackgroundTransparency = 1.000
                        _2t.BorderColor3 = __U[36](0, 0, 0)
                        _2t.BorderSizePixel = 0
                        _2t.Position = __U[27](0.188921273, 0, 5.50196724e-08, 0)
                        _2t.Size = __U[27](0, 75, 0, 25)
                        _2t.Font = Enum.Font.SourceSansBold
                        _2t.Text = "2"
                        _2t.TextColor3 = __U[36](255, 255, 255)
                        _2t.TextSize = 21.000
                
                        _3t.Name = "3t"
                        _3t.Parent = Frame
                        _3t.BackgroundColor3 = __U[36](255, 255, 255)
                        _3t.BackgroundTransparency = 1.000
                        _3t.BorderColor3 = __U[36](0, 0, 0)
                        _3t.BorderSizePixel = 0
                        _3t.Position = __U[27](0.348272145, 0, 0.00588241592, 0)
                        _3t.Size = __U[27](0, 75, 0, 25)
                        _3t.Font = Enum.Font.SourceSansBold
                        _3t.Text = "3"
                        _3t.TextColor3 = __U[36](255, 255, 255)
                        _3t.TextSize = 21.000
                
                        _4t.Name = "4t"
                        _4t.Parent = Frame
                        _4t.BackgroundColor3 = __U[36](255, 255, 255)
                        _4t.BackgroundTransparency = 1.000
                        _4t.BorderColor3 = __U[36](0, 0, 0)
                        _4t.BorderSizePixel = 0
                        _4t.Position = __U[27](0.512551308, 0, 0.00588241592, 0)
                        _4t.Size = __U[27](0, 75, 0, 25)
                        _4t.Font = Enum.Font.SourceSansBold
                        _4t.Text = "4"
                        _4t.TextColor3 = __U[36](255, 255, 255)
                        _4t.TextSize = 21.000
                
                        _5t.Name = "5t"
                        _5t.Parent = Frame
                        _5t.BackgroundColor3 = __U[36](255, 255, 255)
                        _5t.BackgroundTransparency = 1.000
                        _5t.BorderColor3 = __U[36](0, 0, 0)
                        _5t.BorderSizePixel = 0
                        _5t.Position = __U[27](0.680116177, 0, 0.00588241592, 0)
                        _5t.Size = __U[27](0, 75, 0, 25)
                        _5t.Font = Enum.Font.SourceSansBold
                        _5t.Text = "5"
                        _5t.TextColor3 = __U[36](255, 255, 255)
                        _5t.TextSize = 21.000
                
                        _6t.Name = "6t"
                        _6t.Parent = Frame
                        _6t.BackgroundColor3 = __U[36](255, 255, 255)
                        _6t.BackgroundTransparency = 1.000
                        _6t.BorderColor3 = __U[36](0, 0, 0)
                        _6t.BorderSizePixel = 0
                        _6t.Position = __U[27](0.839467049, 0, 5.50196724e-08, 0)
                        _6t.Size = __U[27](0, 75, 0, 25)
                        _6t.Font = Enum.Font.SourceSansBold
                        _6t.Text = "6"
                        _6t.TextColor3 = __U[36](255, 255, 255)
                        _6t.TextSize = 21.000
                    end
                end
                for i,v in __U[7](Workspace:GetDescendants()) do
                    if v:FindFirstChild("card") and v:FindFirstChild("Order") then
                        createMenu()
                        if v.Order.SurfaceGui.TextLabel.Text == "1" then
                            __VE["LPs"].PlayerGui.idk.Frame["1"].ImageLabel.Image = v.card.TextureID
                        elseif v.Order.SurfaceGui.TextLabel.Text == "2" then
                            __VE["LPs"].PlayerGui.idk.Frame["2"].ImageLabel.Image = v.card.TextureID
                        elseif v.Order.SurfaceGui.TextLabel.Text == "3" then
                            __VE["LPs"].PlayerGui.idk.Frame["3"].ImageLabel.Image = v.card.TextureID
                        elseif v.Order.SurfaceGui.TextLabel.Text == "4" then
                            __VE["LPs"].PlayerGui.idk.Frame["4"].ImageLabel.Image = v.card.TextureID
                        elseif v.Order.SurfaceGui.TextLabel.Text == "5" then
                            __VE["LPs"].PlayerGui.idk.Frame["5"].ImageLabel.Image = v.card.TextureID
                        elseif v.Order.SurfaceGui.TextLabel.Text == "6" then
                            __VE["LPs"].PlayerGui.idk.Frame["6"].ImageLabel.Image = v.card.TextureID
                        end
                    end
                end
            end
        })
        Tabs.NMCS:AddButton({
            Title = "Destroy stage",
            Description = "",
            Callback = function()
                for i,v in __U[7](game:GetService("Workspace"):GetChildren()) do 
                    if v.Name == "stage" then 
                        v:Destroy(__Y[1])
                    end 
                end
            end
        })
        Tabs.NMCS:AddSection("Ringmaster | Boss")
        Tabs.NMCS:AddButton({
            Title = "Auto Kill",
            Description = "",
            Callback = function()
                Float = __Y[1]
                workspace.Section3.Boss.MagicianBoss.AnimationController.AnimationPlayed:Connect(function(anima)
                    while __Y[1] do
                        char = __VE["LPs"].Character
                        Float = __Y[1]
                        if anima.Speed < 0.1 then
                            if Backpack:FindFirstChild("Knife") then
                                Backpack.Knife.Parent = char
                            elseif not Backpack:FindFirstChild("Knife") and not char:FindFirstChild("Knife") then
                                char.HumanoidRootPart.CFrame = __U[26](Workspace.Section3.Boss.WeaponGiver.WorldPivot.Position)
                                __U[23](0.3)
                                __U[60](Workspace.Section3.Boss.WeaponGiver.ProxPart.ProximityPrompt)
                                __U[23](0.3)
                            end
                            if workspace.Section3.Boss.DamageParts.Combo1.Transparency == 0 and char:FindFirstChild("Knife") then
                                char.HumanoidRootPart.CFrame = workspace.Section3.Boss.MagicianBoss.RightHitbox.CFrame
                                char.Knife:Activate()
                            elseif workspace.Section3.Boss.DamageParts.Combo2.Transparency == 0 and char:FindFirstChild("Knife") or workspace.Section3.Boss.DamageParts.SlamAttack and Backpack:FindFirstChild("Knife") then
                                char.HumanoidRootPart.CFrame = workspace.Section3.Boss.MagicianBoss.LeftHitbox.CFrame
                                char.Knife:Activate()
                            end
                        else
                            Tp(-1654.51294, 28.076046, -969.053711, __Y[3])
                        end
                        __U[23](0.1)
                    end
                end)
            end
        })
        Tabs.NMCS:AddButton({
            Title = "No Dmg From Ringmaster",
            Description = "90%",
            Callback = function()
                for _,v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("Part") and v.Parent.Name == "MagicianBoss"or v:IsA("MeshPart") and v.Parent.Name == "MagicianBoss" then
                        v.CanTouch = __Y[2]
                    end
                end
                for _,v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("Part") and v.Parent.Name == "DamageParts" or v:IsA("MeshPart") and v.Parent.Name == "DamageParts" or v:IsA("UnionOperation") and v.Parent.Name == "DamageParts" then
                        v.CanTouch = __Y[2]
                    end
                end
                for _,v in __U[7](workspace:GetDescendants()) do
                    if v:IsA("Part") and v.Parent.Name == "Pair" or v:IsA("MeshPart") and v.Parent.Name == "Pair" or v:IsA("UnionOperation") and v.Parent.Name == "Pair" then
                        v.CanTouch = __Y[2]
                    end
                end
            end
        })
        Tabs.Jigoku:AddSection("Teleport")
        Tabs.Jigoku:AddButton({
            Title = "Teleport To Place",
            Description = "Singleplayer",
            Callback = function()
                game:GetService("TeleportService"):Teleport(7618863566, __VE["LPs"])
            end
        })
        Tabs.Jigoku:AddSection("Jigoku")
        Tabs.Jigoku:AddButton({
            Title = "Talk",
            Description = "",
            Callback = function()
                Tp(607.54, 11.91, 1080, __Y[3])
            end
        })
        Tabs.Jigoku:AddButton({
            Title = "Auto Collect",
            Description = "",
            Callback = function()
                for i, v in __U[7](Workspace:GetDescendants()) do
                    if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                        __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                        __U[23](0.3)
                        __U[60](v)
                    end
                end
            end
        })
        Tabs.Jigoku:AddButton({
            Title = "Full Auto Win",
            Description = "",
            Callback = function()
                if FirstPressJigoku then
                    Tp(607.54, 11.91, 1080, __Y[3])
                    Fluent:Notify({
                        Title = "Error 00",
                        Content = "WAITTT wait 11 second and it will teleport you ||||| DONT PRESS THE AUTO WIN AGAIN ||||| You can read tutorial for more information",
                        Duration = 11
                    })
                    __U[23](11)
                    for i, v in __U[7](Workspace:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                        end
                    end
                else
                    for i, v in __U[7](Workspace:GetDescendants()) do
                        if v:IsA("ProximityPrompt") and v.Parent:IsA("BasePart")  then
                            __VE["LPs"].Character.HumanoidRootPart.CFrame = v.Parent.CFrame
                            __U[23](0.3)
                            __U[60](v)
                        end
                    end
                end
            end
        })
        credits = {
            "Owner - ttjy.",
            "Co Owner - ttjy_",
            "Scripter - ttjy.",
            "Scripter - ttjy_",
            "Scripter - Poom Hub",
            "Bypasser - ttjy.",
            "Bypasser - Bedol Hub",
            "Bypasser - Poom Hub",
            "Ui - dawid",
            "Helper - Ktollt",
            "Helper - Xvasx",
            "Helper - nar",
            "Helper - ruenas",
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

    finishload = __Y[1]
    getgenv().FinishLoad = __Y[1]
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

    pcall(function()
        Window.Root:GetPropertyChangedSignal("Visible"):Connect(function()
            if Window and Window.Root and Window.Root.Visible then
                TTJYHUB.TextColor3  = Color3.fromRGB(0, 255, 0)
            else
                TTJYHUB.TextColor3  = Color3.fromRGB(255, 0, 0)
            end
        end)
    end)
    pcall(function()
        TTJYHUB.MouseButton1Click:Connect(function()
            Window.Minimized = not Window.Minimized
            Window.Root.Visible = not Window.Minimized
        end)
    end)
    pcall(function()
        game.CoreGui:FindFirstChild("DashBoardV2"):GetPropertyChangedSignal("Enabled"):Connect(function()
            if game.CoreGui and game.CoreGui:FindFirstChild("DashBoardV2") and game.CoreGui.DashBoardV2.Enabled then
                DashBoardTTJYHUB.TextColor3  = Color3.fromRGB(0, 255, 0)
            else
                DashBoardTTJYHUB.TextColor3  = Color3.fromRGB(255, 0, 0)
            end
        end)
    end)
    pcall(function()
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
end)
if not KOL then
    print(CAJ)
end

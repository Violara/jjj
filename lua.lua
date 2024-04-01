repeat
    task.wait()
until game:IsLoaded()
__LUABLE = {
    ["Functions"] = loadstring(
        game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/Api/main/Luable/__Function.lua")
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
b["_TTJY HUB"].Position = UDim2.new(0.465000004, 0, -0.1, 0)
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
__VE["IBFS"] = workspace:WaitForChild("ItemBoughtFromShop")
originalWalkSpeed = __VE["LPs"].Character.Humanoid.WalkSpeed
originalJumpPower = __VE["LPs"].Character.Humanoid.JumpPower
CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
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
	AutoQuest = Window:AddTab({ Title = "Auto Quest", Icon = "" }),
	Player = Window:AddTab({ Title = "Player", Icon = "" }),
	asettings = Window:AddTab({ Title = "AutoFarm Settings", Icon = "settings" }),
    Settings = Window:AddTab({ Title = "UI Settings", Icon = "settings" })
}
function notify(title, content)
	if title and not content then content = title; title = "Script Service" end
	Fluent:Notify({
		Title = title,
		Content = content,
		Duration = 5
	})
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
local speedofthefly = 6
local speedofthevfly =  6
function tp(x, y, z, speed)
	pcall(function()
		local maxForce = __U[57](math.huge, math.huge, math.huge)
		local velocity = __U[35]("BodyVelocity")
		velocity.MaxForce = maxForce
		velocity.Velocity = __U[57](0, 0, 0)
		velocity.Parent = __VE["LPs"].Character.HumanoidRootPart
		local targetPosition = __U[57](x, y, z)
		local dochange = __Y[2]
		if not speed then dochange = true end
		while true do
			if not Setting.autofarming then
				velocity:Destroy()
				break
			end
			local currentPos = __VE["LPs"].Character.HumanoidRootPart.Position
			local direction = (targetPosition - currentPos).unit
			local distance = (targetPosition - currentPos).magnitude
			if dochange then
				speed = Setting.aspeed
			end
			local distanceCheck = speed/30
			if distance >= distanceCheck then
				velocity.Velocity = direction * speed
			else
				velocity:Destroy()
				for i = 1, 20 do
					__VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](targetPosition)
					__VE["LPs"].Character.HumanoidRootPart.Velocity = __U[57](0, 0, 0)
					task.wait()
				end
				break
			end
			wait()
		end
	end)
end
local isfirstrun = true
local autofarm = Tabs.Main:AddToggle("autofarm", {Title = "Auto Farm", Default = __Y[2] })
autofarm:OnChanged(function()
	Setting.autofarming = Options.autofarm.Value
	if Setting.autofarming then
		notify("Autofarm started.")
		while task.wait() do
			if Setting.autofarming then
				if __VE["LPs"].Character:FindFirstChild("HumanoidRootPart") then
					local water = __VE["WS"].BoatStages.NormalStages.CaveStage1.Water
					local waterp = water.Position
					local lastwater = __VE["WS"].BoatStages.NormalStages.CaveStage10.Water
					local lastwaterp = lastwater.Position
					local chest = __VE["WS"].BoatStages.NormalStages.TheEnd.GoldenChest.Trigger
					local success = pcall(function()
						__VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](waterp.x, waterp.y + Setting.stayatyvalue, waterp.z)
						tp(lastwaterp.x, waterp.y + Setting.stayatyvalue, lastwaterp.z, nil)
						for i = 1, 5 do
							__VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](chest.Position.x, chest.Position.y + 20, chest.Position.z)
							task.wait(0.05)
							__VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](chest.Position.x, chest.Position.y, chest.Position.z)
							task.wait(0.05)
						end
						__VE["LPs"].Character.HumanoidRootPart.CFrame = __U[26](chest.Position.x, chest.Position.y + 30, chest.Position.z)
						notify("Waiting 20 seconds...")
						task.wait(Setting.waituntil)
					end)
					if not success then
						notify("ER Activated, Return to player")
					end
				end
			else
				break
			end
		end
	else
		if isfirstrun then
			isfirstrun = __Y[2]
		else
			notify("Autofarm Stop")
		end
	end
end)
Tabs.Main:AddSection("Auto Chest")
CommonChest = Tabs.Player:AddToggle("CommonChest", {Title = "Common", Default = Setting.CommonChest })

CommonChest:OnChanged(function()
	Setting.CommonChest = Options.CommonChest.Value
	while Options.CommonChest.Value do
    	__VE["IBFS"]:InvokeServer("Common Chest", 1)
		task.wait(0.1)
	end
end)
UncommonChest = Tabs.Player:AddToggle("UncommonChest", {Title = "Uncommon", Default = Setting.UncommonChest })

UncommonChest:OnChanged(function()
	Setting.UncommonChest = Options.UncommonChest.Value
	while Options.UncommonChest.Value do
    	__VE["IBFS"]:InvokeServer("Uncommon Chest", 1)
		task.wait(0.1)
	end
end)
RareChest = Tabs.Player:AddToggle("RareChest", {Title = "Rare", Default = Setting.RareChest })

RareChest:OnChanged(function()
	Setting.RareChest = Options.RareChest.Value
	while Options.RareChest.Value do
    	__VE["IBFS"]:InvokeServer("Rare Chest", 1)
		task.wait(0.1)
	end
end)
EpicChest = Tabs.Player:AddToggle("EpicChest", {Title = "Epic", Default = Setting.EpicChest })

EpicChest:OnChanged(function()
	Setting.EpicChest = Options.EpicChest.Value
	while Options.EpicChest.Value do
    	__VE["IBFS"]:InvokeServer("Epic Chest", 1)
		task.wai(0.1)
	end
end)
LegendaryChest = Tabs.Player:AddToggle("LegendaryChest", {Title = "Legendary", Default = Setting.LegendaryChest })

LegendaryChest:OnChanged(function()
	Setting.LegendaryChest = Options.LegendaryChest.Value
	while Options.LegendaryChest.Value do
    	__VE["IBFS"]:InvokeServer("Legendary Chest", 1)
		task.wai(0.1)
	end
end)

Tabs.AutoQuest:AddSection("Simple Scriptz")
Tabs.AutoQuest:AddButton({
	Title = "Cloud",
	Description = "WARNINN, THE SCRIPT WILL CLEAR ALL BLOCKS",
	Callback = function()
        pcall(function()
            workspace.QuestMakerEvent:FireServer(0)
            task.wait()
            ResetRequest = 0
            teamColor = game.Players.LocalPlayer.Team.TeamColor.Name
            teamZone = teamColor.."Zone"
            workspace.ClearAllPlayersBoatParts:FireServer()
            wait(0.5)
            workspace.QuestMakerEvent:FireServer(1)
            repeat
                ResetRequest = ResetRequest + 1
                task.wait() 
            until ResetRequest == 5000 or (workspace[tostring(teamZone)].Quest:FindFirstChild("Cloud") and workspace[tostring(teamZone)].Quest.Cloud:FindFirstChild("Part2"))
            __VE["LPs"].Character.HumanoidRootPart.CFrame = workspace[tostring(teamZone)].Quest.Cloud.Part2.CFrame
        end)
    end
})
Tabs.AutoQuest:AddButton({
	Title = "Target",
	Description = "WARNINN, THE SCRIPT WILL CLEAR ALL BLOCKS",
	Callback = function()
        pcall(function()
            workspace.QuestMakerEvent:FireServer(0)
            task.wait()
            ResetRequest = 0
            teamColor = game.Players.LocalPlayer.Team.TeamColor.Name
            teamZone = teamColor.."Zone"
            workspace.ClearAllPlayersBoatParts:FireServer()
            wait(0.5)
            workspace.QuestMakerEvent:FireServer(2)
            repeat
                ResetRequest = ResetRequest + 1
                task.wait() 
            until ResetRequest == 5000 or (workspace[tostring(teamZone)].Quest:FindFirstChild("Target") and workspace[tostring(teamZone)].Quest.Target:FindFirstChild("Part"))
            __VE["LPs"].Character.HumanoidRootPart.CFrame = workspace[tostring(teamZone)].Quest.Target.Part.CFrame
        end)
    end
})
Tabs.AutoQuest:AddButton({
	Title = "Ramp",
	Description = "WARNINN, THE SCRIPT WILL CLEAR ALL BLOCKS",
	Callback = function()
        pcall(function()
            workspace.QuestMakerEvent:FireServer(0)
            task.wait()
            ResetRequest = 0
            teamColor = game.Players.LocalPlayer.Team.TeamColor.Name
            teamZone = teamColor.."Zone"
            workspace.ClearAllPlayersBoatParts:FireServer()
            wait(0.5)
            workspace.QuestMakerEvent:FireServer(3)
            repeat
                ResetRequest = ResetRequest + 1
                task.wait() 
            until ResetRequest == 5000 or (workspace[tostring(teamZone)].Quest:FindFirstChild("Ramp") and workspace[tostring(teamZone)].Quest.Ramp:FindFirstChild("Part"))
            for _, v in pairs(workspace[tostring(teamZone)].Quest.Ramp:GetChildren()) do
                if v and v:IsA("BasePart") and v:FindFirstChild("TouchInterest") then
                    __VE["LPs"].Character.HumanoidRootPart.CFrame = v.CFrame
                end
            end
        end)
    end
})
Tabs.AutoQuest:AddButton({
	Title = "Find Me",
	Description = "WARNINN, THE SCRIPT WILL CLEAR ALL BLOCKS",
	Callback = function()
        pcall(function()
            workspace.QuestMakerEvent:FireServer(0)
            task.wait()
            ResetRequest = 0
            teamColor = game.Players.LocalPlayer.Team.TeamColor.Name
            teamZone = teamColor.."Zone"
            workspace.ClearAllPlayersBoatParts:FireServer()
            wait(0.5)
            workspace.QuestMakerEvent:FireServer(4)
            repeat
                ResetRequest = ResetRequest + 1
                task.wait() 
            until ResetRequest == 5000 or (workspace[tostring(teamZone)].Quest:FindFirstChild("Butter") and workspace[tostring(teamZone)].Quest.Butter:FindFirstChild("PPart"))
            repeat
                fireclickdetector(workspace[tostring(teamZone)].Quest.Butter.PPart.ClickDetector)
            until not workspace[tostring(teamZone)].Quest:FindFirstChild("Butter") or (workspace[tostring(teamZone)].Quest:FindFirstChild("Butter") and not workspace[tostring(teamZone)].Quest.Butter:FindFirstChild("PPart"))
        end)
    end
})
Tabs.AutoQuest:AddButton({
	Title = "Thin Ice",
	Description = "WARNINN, THE SCRIPT WILL CLEAR ALL BLOCKS",
	Callback = function()
        pcall(function()
            workspace.QuestMakerEvent:FireServer(0)
            task.wait()
            ResetRequest = 0
            teamColor = game.Players.LocalPlayer.Team.TeamColor.Name
            teamZone = teamColor.."Zone"
            workspace.ClearAllPlayersBoatParts:FireServer()
            wait(0.5)
            workspace.QuestMakerEvent:FireServer(9)
            repeat
                ResetRequest = ResetRequest + 1
                task.wait() 
            until ResetRequest == 5000 or workspace[tostring(teamZone)].Quest:FindFirstChild("Thin Ice")
            workspace[tostring(teamZone)].VoteLaunchRE:FireServer()
            task.wait(0.5)
            tpwithnewtpbyme2(CFrame.new(-55.08570861816406, 26.171443939208984, 1328.283203125), 5)
            tpwithnewtpbyme2(CFrame.new(-76.84388732910156, 26.171443939208984, 4345.62353515625), 5)
            tpwithnewtpbyme2(CFrame.new(-63.48623275756836, 26.171443939208984, 8649.052734375), 5)
            tpwithnewtpbyme2(CFrame.new(-53.60350036621094, -357.9239807128906, 9498.6572265625), 5)
        end)
    end
})

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
local afspeed = Tabs.asettings:AddSlider("afspeed", {
	Title = "Autofarm Speed",
	Description = "Changes the Autofarm Speed",
	Default = Setting.aspeed,
	Min = 100,
	Max = 10000,
	Rounding = 0,
	Callback = function(Value)
		Setting.aspeed = Value
	end
})

afspeed:OnChanged(function(Value)
	Setting.aspeed = Value
end)

local stayat = Tabs.asettings:AddSlider("stayat", {
	Title = "Stay at Y Value",
	Description = "Stays at the given Y Value (height)",
	Default = Setting.stayatyvalue,
	Min = 55,
	Max = 100,
	Rounding = 0,
	Callback = function(Value)
		Setting.stayatyvalue = Value
	end
})
local wai = Tabs.asettings:AddSlider("wai", {
	Title = "Wait until AutoFarm starts again",
	Description = "Waits ... seconds until AutoFarm starts again",
	Default = Setting.waituntil,
	Min = 10,
	Max = 60,
	Rounding = 0,
	Callback = function(Value)
		Setting.waituntil = Value
	end
})

wai:OnChanged(function(Value)
	Setting.waituntil = Value
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

local walk = Tabs.Player:AddSlider("walk", {
	Title = "WalkSpeed",
	Description = "Changes the WalkSpeed of the Player",
	Default = 16,
	Min = 16,
	Max = 1000,
	Rounding = 0,
	Callback = function(Value)
		__VE["LPs"].Character.Humanoid.WalkSpeed = Value
	end
})
walk:OnChanged(function(Value)
	__VE["LPs"].Character.Humanoid.WalkSpeed = Value
end)
local jump = Tabs.Player:AddSlider("jump", {
	Title = "JumpPower",
	Description = "Changes the JumpPower of the Player",
	Default = 50,
	Min = 50,
	Max = 1000,
	Rounding = 0,
	Callback = function(Value)
		__VE["LPs"].Character.Humanoid.JumpPower = Value
	end
})
jump:OnChanged(function(Value)
	__VE["LPs"].Character.Humanoid.JumpPower = Value
end)

Tabs.Settings:AddButton({
	Title = "Save as config",
	Description = "",
	Callback = function()
		serializedSetting = game.HttpService:JSONEncode(Setting)
		writefile("Setting/settingBABFT.json", serializedSetting)
    end
})
Tabs.Settings:AddSection("W A S D Buttons")
Tabs.Settings:AddButton({
	Title = "Big Button",
	Description = "",
	Callback = function()
		__VE["CG"]["InputPcToMobile"].W.Size = UDim2.new(0.1, 0, 0.1, 0)
		__VE["CG"]["InputPcToMobile"].A.Size = UDim2.new(0.1, 0, 0.1, 0)
		__VE["CG"]["InputPcToMobile"].S.Size = UDim2.new(0.1, 0, 0.1, 0)
		__VE["CG"]["InputPcToMobile"].D.Size = UDim2.new(0.1, 0, 0.1, 0)
	end
})
Tabs.Settings:AddButton({
	Title = "Small Button",
	Description = "",
	Callback = function()
		__VE["CG"]["InputPcToMobile"].W.Size = UDim2.new(0.05, 0, 0.05, 0)
		__VE["CG"]["InputPcToMobile"].A.Size = UDim2.new(0.05, 0, 0.05, 0)
		__VE["CG"]["InputPcToMobile"].S.Size = UDim2.new(0.05, 0, 0.05, 0)
		__VE["CG"]["InputPcToMobile"].D.Size = UDim2.new(0.05, 0, 0.05, 0)
	end
})
Tabs.Settings:AddButton({
	Title = "Up",
	Description = "",
	Callback = function()
		__VE["CG"]["InputPcToMobile"].W.Position = UDim2.new(0.05, 0, 0.1, 0)
		__VE["CG"]["InputPcToMobile"].A.Position = UDim2.new(0, 0, 0.2, 0)
		__VE["CG"]["InputPcToMobile"].S.Position = UDim2.new(0.05, 0, 0.3, 0)
		__VE["CG"]["InputPcToMobile"].D.Position = UDim2.new(0.1, 0, 0.2, 0)
	end
})
Tabs.Settings:AddButton({
	Title = "Down",
	Description = "",
	Callback = function()
		__VE["CG"]["InputPcToMobile"].W.Position = UDim2.new(0.05, 0, 0.7, 0)
		__VE["CG"]["InputPcToMobile"].A.Position = UDim2.new(0, 0, 0.8, 0)
		__VE["CG"]["InputPcToMobile"].S.Position = UDim2.new(0.05, 0, 0.9, 0)
		__VE["CG"]["InputPcToMobile"].D.Position = UDim2.new(0.1, 0, 0.8, 0)
	end
})
Tabs.Settings:AddButton({
	Title = "Hide",
	Description = "",
	Callback = function()
		__VE["CG"]["InputPcToMobile"].W.Visible = __Y[2]
		__VE["CG"]["InputPcToMobile"].A.Visible = __Y[2]
		__VE["CG"]["InputPcToMobile"].S.Visible = __Y[2]
		__VE["CG"]["InputPcToMobile"].D.Visible = __Y[2]
	end
})
Tabs.Settings:AddButton({
	Title = "Show",
	Description = "",
	Callback = function()
		__VE["CG"]["InputPcToMobile"].W.Visible = true
		__VE["CG"]["InputPcToMobile"].A.Visible = true
		__VE["CG"]["InputPcToMobile"].S.Visible = true
		__VE["CG"]["InputPcToMobile"].D.Visible = true
	end
})


task.wait(0.05)
if allowtoserialized then
    serializedSetting = game.HttpService:JSONEncode(Setting)
    writefile("Setting/settingBABFT.json", serializedSetting)
end
task.wait(5)
finishload = true
getgenv().FinishLoad = true

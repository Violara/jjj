task.wait(3)
if BedolIsRunning then
	print([[
		execute this for use bedol hub
		
		getfenv()['BedolIsRunning'] = false;
	]])
	return
end

local DefaultData = {
	['Combat'] = {
		['Auto Parry'] = false,
		['Clash Mode'] = false,
		['Parry Method'] = 'Normal',
		['Auto Ability'] = false,
		['Visaulize'] = false,
		['AI'] = false,
		['Clash Stack'] = 5,
	},

	['Particle'] = {
		['No Particle'] = false,
		['Fps'] = 60,
	},

	['Client'] = {
		['WalkSpeed'] = 36,
		['JumpPower'] = 50,
		['WsToggle'] = false,
		['JpToggle'] = false,
		['Aimbot'] = false,
		['Status'] = false,
	},

	["ESP"] = {
		["Ball"] = false,
		["Target"] = false,
	},

	['Funny'] = {
		['Night'] = false,
		['Sick'] = false
	},
}

getfenv()['BedolIsRunning'] = true

getfenv()['BEDO_HUB'] = getfenv()['BEDO_HUB'] or DefaultData

getfenv()['BEDO_HUB'] = getfenv()['BEDO_HUB'] or {}

getfenv()['BEDO_HUB'].Combat = getfenv()['BEDO_HUB'].Combat or {}
getfenv()['BEDO_HUB'].Particle = getfenv()['BEDO_HUB'].Particle or {}
getfenv()['BEDO_HUB'].Client = getfenv()['BEDO_HUB'].Client or {}
getfenv()['BEDO_HUB'].ESP = getfenv()['BEDO_HUB'].ESP or {}
getfenv()['BEDO_HUB'].Funny = getfenv()['BEDO_HUB'].Funny or {}

local function from_base64(data)
	local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
	data = string.gsub(data, '[^'..b..'=]', '')
	return (data:gsub('.', function(x)
		if (x == '=') then
			return ''
		end

		local r,f='',(b:find(x)-1)
		for i=6,1,-1 do
			r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0')
		end
		return r;
	end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
		if (#x ~= 8) then
			return ''
		end
		local c=0

		for i=1,8 do
			c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) 

		end

		return string.char(c)
	end))
end


function ByteKey(text)
	local Chars = 1

	local numb = text:gsub('.',function(hex)
		local byte = hex:byte()

		Chars = Chars + byte

		return tostring(math.ceil(byte / 2))
	end)

	local number = tonumber(numb) or 1.5
	local obfuscation = number + #text + Chars

	return obfuscation
end

function Encryption(text, key)
	local result = ""
	local keylau = ByteKey(key)
	local num = 1

	result = text:gsub('.',function(char)

		local keyChar = key:sub(1,1)
		local encodedChar = string.char(bit32.bxor(char:byte() , keyChar:byte()))

		return encodedChar
	end)

	return result:reverse()
end


function JSONEncode(tbl)
	print('Running Custom JSON')

	local function escape_str(str)
		str = string.gsub(str, "([\"\\])", "\\%1")
		str = string.gsub(str, "[\b]", "\\b")
		str = string.gsub(str, "[\f]", "\\f")
		str = string.gsub(str, "[\n]", "\\n")
		str = string.gsub(str, "[\r]", "\\r")
		str = string.gsub(str, "[\t]", "\\t")
		return str
	end

	local function recurse(tbl)
		local json = ""
		local t = type(tbl)

		if t == "table" then
			json = json .. "{"
			local isFirst = true
			for k, v in pairs(tbl) do task.wait()
				if not isFirst then
					json = json .. ","
				end
				isFirst = false
				json = json .. "\"" .. escape_str(tostring(k)) .. "\":"
				json = json .. recurse(v)
			end
			json = json .. "}"
		elseif t == "string" then
			json = json .. "\"" .. escape_str(tbl) .. "\""
		elseif t == "number" or t == "boolean" then
			json = json .. tostring(tbl)
		else
			json = json .. "null"
		end

		return json
	end

	return recurse(tbl)
end


function JSONDecode(jsonString)
	local index = 1
	local parseObject
	local parseNumber
	local parseArray
	local parseString

	print('Decoding Json ...')

	local function skipWhitespace()
		while index <= #jsonString do
			local char = jsonString:sub(index, index)

			if char ~= ' ' and char ~= '\t' and char ~= '\n' and char ~= '\r' then
				break
			end

			index = index + 1;
		end
	end

	local function parseValue()
		skipWhitespace()

		local char = jsonString:sub(index, index)

		if char == '{' then

			return parseObject()
		elseif char == '[' then

			return parseArray()
		elseif char == '"' then

			return parseString()
		elseif char == '-' or tonumber(char) then

			return parseNumber()
		elseif jsonString:sub(index, index + 3) == "true" then

			index = index + 4;
			return true
		elseif jsonString:sub(index, index + 4) == "false" then

			index = index + 5;
			return false
		elseif jsonString:sub(index, index + 3) == "null" then

			index = index + 4;
			return nil
		else
			error("Invalid JSON")
		end
	end

	parseObject = function()
		local obj = {}
		index = index + 1
		while true do task.wait()
			skipWhitespace()

			local char = jsonString:sub(index, index)

			if char == '}' then

				index = index + 1
				break
			elseif char == ',' then

				index = index + 1
			else
				local key = parseString()

				skipWhitespace()

				if jsonString:sub(index, index) ~= ':' then
					error("Invalid JSON")
				end

				index = index + 1

				local value = parseValue()

				obj[key] = value
			end
		end

		return obj
	end

	parseArray = function()
		local arr = {}

		index = index + 1

		while true do task.wait()

			skipWhitespace()

			local char = jsonString:sub(index, index)

			if char == ']' then

				index = index + 1
				break
			elseif char == ',' then

				index = index + 1;
			else

				local value = parseValue()

				table.insert(arr, value)
			end
		end

		return arr
	end

	parseString = function()
		index = index + 1;

		local endIndex = jsonString:find('"', index, true)

		if not endIndex then

			error("Invalid JSON: Unterminated string")
		end

		local str = jsonString:sub(index, endIndex - 1)

		index = endIndex + 1

		return str;
	end

	parseNumber = function()
		local start = index

		local char = jsonString:sub(index, index)

		if char == '-' then
			index = index + 1
		end

		while tonumber(jsonString:sub(index, index)) do task.wait()
			index = index + 1
		end

		local numStr = jsonString:sub(start, index - 1)

		return tonumber(numStr)
	end

	return parseValue()
end

local GetKeyUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/New-C4-Remote.lua/main/Version/get_key.ws"))()

local SitAnimation = "http://www.roblox.com/asset/?id=178130996"

local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
task.wait()

Notification.new("success", "BEDOL HUB","[1/3] Require Https ...",true,1.5)
task.wait(0.1)
local LocalPlayer = game:GetService('Players').LocalPlayer

local VersionEncode = game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/New-C4-Remote.lua/main/Version/Version_checker.ruby")

local HttpService = game:GetService('HttpService')

local loader = loadstring(game:HttpGet('https://raw.githubusercontent.com/3345-c-a-t-s-u-s/New-C4-Remote.lua/main/UILoading.dll'))()
task.wait(0.1)
local NoHyper = loadstring(game:HttpGet('https://raw.githubusercontent.com/3345-c-a-t-s-u-s/NoHyperLib/main/source.dll'))()
local AntiTim = {"H","C","A","I","T","L","A","W","E","P","R","0","i","p","e","c","q","2","m","g"}
local current = {
	AntiTim[1],
	AntiTim[4],
	AntiTim[5],
	AntiTim[6],
	AntiTim[9],
	AntiTim[11]
}
task.wait(0.1)
local seckey = ""

for i,v in ipairs(current) do
	seckey = seckey..v:lower()

	local k = string.lower(AntiTim[math.random(1,#AntiTim)])

	print("decrypt",k)
end

function randomString(length)
	local charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	local randomStringloader = ""

	for i = 1, length do task.wait()
		local randomIndex = math.random(1, #charset)
		randomStringloader = randomStringloader .. string.sub(charset, randomIndex, randomIndex)
	end

	return randomStringloader
end

task.wait(0.1)
local BedolHubFinshLoaded = false
local SettingFileName = "BladeBall_Hazard.json"
local Animation_init = Instance.new('Animation')
local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
local DefaultWalk = 36
local DefaultJump = 50
local FileNameKeySystem = "BedolConfig_System.bedol.txt"
local spoferusername = "bedol-on-top"
local CurrentCamera = workspace.CurrentCamera
local TweenService = game:GetService('TweenService')
local RunService = game:GetService('RunService')
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StatsService = game:GetService("Stats")
local RunService = game:GetService("RunService")
local PlayerService = game:GetService('Players')
local AliveFolder = workspace:FindFirstChild("Alive")
local FloatFolder = workspace:FindFirstChild("Runtime")
local BallFolder = workspace:FindFirstChild('Balls')
local RemoteFolders = ReplicatedStorage:WaitForChild("Remotes")
local StoreFolder = RemoteFolders:WaitForChild("Store")
local AbilityButtonPress = RemoteFolders:WaitForChild('AbilityButtonPress')
local ParryAttemptEvent = game:GetService("AdService"):WaitForChild("\10\10\10\10\10\10")
local ParryButtonPress = game:GetService("ReplicatedStorage").Remotes.ParryButtonPress
local stealSetLook
local realball 
local fakeball
local MyPosition
local lastplayeerTarget
local BallSpeedView = 0
local ParryTimeNow = tick()
local ParryLastTime = ParryTimeNow
local ParryTimeViewr = 5
local calaTimeClash = 0.3
local IsLookAt = true
local HidenCFrame = CFrame.new(-100000000000000000000000000000000,-100000000000000000000000000000000,-100000000000000000000000)
local BedolConfig
local SitAnimationCollect = {}
local ESPCreation = {}
local clipboard_Func = setclipboard or toclipboard
local ServiceID = "bedol_serv"
local Secta2 = "\83\65\76\95\83\69\82\86\73\67\69\95\77\74\83\95\76\67"
local secta = "\66\69\68\79\76\45\76\79\67\75\45\67\72\73\76\68\61\90\71\86\106\98\50\82\108\73\68\48\103\101\87\57\49\73\71\70\121\90\83\66\117\97\87\100\110\89\81"
local HidenKey = randomString(3)
local LoopStack = {
	Loop1 = false,
	Loop2 = false,
	Loop3 = false,
	Loop4 = false,
	Loop5 = false,
	Loop6 = false,
	Loop7 = false,
	Loop8 = false,
	Loop9 = false,
	Loop10 = false,
}
task.wait(0.1)
local function LoadSetting()
	if isfile(SettingFileName) then

		print('Load Config')
		return HttpService:JSONDecode(readfile(SettingFileName))
	end

	print('No Config Use Default')
	return DefaultData
end

local function SaveSetting()
	local maindata = getfenv()['BEDO_HUB'] or DefaultData
	local Encode = HttpService:JSONEncode(maindata)

	writefile(SettingFileName,tostring(Encode))
end

pcall(SaveSetting)

local function gethwid()
	local fingerprint = httprequest({
		Url = "https://pandadevelopment.net/fingerprint",
		Method = "GET"
	})

	if (fingerprint.Success and fingerprint.Body ~= "") then
		return fingerprint.Body;
	else
		return game:GetService('RbxAnalyticsService'):GetClientId()
	end
end

local Hwid = gethwid()
task.wait(0.2)
pcall(function()
	if isfile(FileNameKeySystem) then
		BedolConfig = HttpService:JSONDecode(readfile(FileNameKeySystem))
	else
		writefile(FileNameKeySystem,HttpService:JSONEncode({
			['Key'] = 'Idk',
			["Time"] = tick()
		}))

		BedolConfig = {
			Key = 'None',
			Time = tick()
		}

		print("Executor can't writefile")
	end
end)

if not BedolConfig then
	warn("Can't writefile bruh")

	writefile(FileNameKeySystem,HttpService:JSONEncode({
		['Key'] = 'Idk',
		["Time"] = tick()
	}))

	BedolConfig = {
		Key = 'None',
		["Time"] = tick()
	}
end

local function GetKeyLink()
	return "https://pandadevelopment.net/getkey?service=bedol_serv&hwid="..tostring(Hwid)
end

BedolConfig.Time = BedolConfig.Time or 1

local status = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")

status.Name = "status"
status.Parent = game:FindFirstChild('CoreGui')
status.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextLabel.Parent = status
TextLabel.AnchorPoint = Vector2.new(0, 1)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.00999995135, 0, 0.99000001, 0)
TextLabel.Size = UDim2.new(0.990000069, 0, 0.0180651769, 0)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Target: realosuplayerfnf , IsClash: false , FPS: 60 , Effect: 0"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextTransparency = 0.400
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

local function ESP_UI()
	local Esp = Instance.new("BillboardGui")
	local Icon = Instance.new("ImageLabel")

	Esp.Name = "Esp"
	Esp.Parent = game:FindFirstChild('CoreGui') or LocalPlayer.PlayerGui
	Esp.Active = true
	Esp.AlwaysOnTop = true
	Esp.LightInfluence = 1.000
	Esp.Size = UDim2.new(5.5, 0, 5.5, 0)
	Esp.ResetOnSpawn = false

	Icon.Name = "Icon"
	Icon.Parent = Esp
	Icon.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Icon.BackgroundTransparency = 1.000
	Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Icon.BorderSizePixel = 0
	Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
	Icon.Image = "rbxassetid://10928806245"

	return Esp,Icon
end

local function SettupESP()
	for i,v in ipairs(ESPCreation) do
		if v then
			v:Destroy()
		end
	end

	local Esp,Image = ESP_UI()
	local EspForPlayer,ImageForPlayer = ESP_UI()

	EspForPlayer.Size = UDim2.fromScale(8,8)
	ImageForPlayer.ImageColor3 = Color3.fromRGB(68, 255, 0)
	Image.ImageColor3 = Color3.fromRGB(255, 0, 4)

	getfenv()['ESP_UI_FOR_BALL'] = Esp 
	getfenv()['ESP_UI_FOR_PLAYER'] = EspForPlayer 

	table.insert(ESPCreation,Esp)
	table.insert(ESPCreation,EspForPlayer)
end

task.spawn(SettupESP)
task.wait(0.3)
Notification.new("success", "BEDOL HUB","[2/3] Loading Instances ...",true,1.5)
task.wait(0.3)
local function DeleteEffect()
	local childToRemove = workspace:FindFirstChild('clash') or workspace:FindFirstChild('shine')
	if childToRemove then
		childToRemove.Anchored = true
		childToRemove.CFrame = CFrame.new(0,-100000000000000000000000000000000,0)
		childToRemove.Size = Vector3.new(0,0,0)
		childToRemove:Destroy(true)
		childToRemove = nil
		game:GetService("Debris"):AddItem(childToRemove, 0)
	end
end

local IsClash = false
local ClashText
local Bestrender = 15

local function GetPart(Color)
	local Part = Instance.new('Part')

	Part.Color = Color
	Part.Material = Enum.Material.ForceField
	Part.CanCollide = false
	Part.Shape = Enum.PartType.Ball
	Part.Anchored = true
	Part.Parent = workspace
	Part.CastShadow = false

	return Part
end

pcall(function()
	local ScreenGui = Instance.new("ScreenGui")
	local TextLabel = Instance.new("TextLabel")

	ScreenGui.Parent = game:FindFirstChild('CoreGui')
	ScreenGui.ResetOnSpawn = false
	ScreenGui.IgnoreGuiInset = true

	TextLabel.Parent = ScreenGui
	TextLabel.AnchorPoint = Vector2.new(0.5, 0)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.5, 0, 0, 0)
	TextLabel.Size = UDim2.new(0, 377, 0, 14)
	TextLabel.Font = Enum.Font.SourceSansBold
	TextLabel.Text = "CLASH: 600/sec and FPS: 60"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	ClashText = TextLabel
	ClashText.Visible = false
end)

local ArchPart = GetPart(Color3.fromRGB(26, 255, 0))
local Theme = getfenv().Theme or 'bedol'

Notification.new("success", "BEDOL HUB","[3/3] Loading UI ...",true,1.5)

NoHyper.set_theme(Theme)

pcall(SaveSetting)

pcall(function()
	local status,data = pcall(LoadSetting)

	if status and data then
		getfenv()['BEDO_HUB'] = data
	end
end)

getfenv()['BEDO_HUB'] = getfenv()['BEDO_HUB'] or {}
getfenv()['BEDO_HUB'].Combat = getfenv()['BEDO_HUB'].Combat or {}
getfenv()['BEDO_HUB'].Particle = getfenv()['BEDO_HUB'].Particle or {}
getfenv()['BEDO_HUB'].Client = getfenv()['BEDO_HUB'].Client or {}
getfenv()['BEDO_HUB'].ESP = getfenv()['BEDO_HUB'].ESP or {}
getfenv()['BEDO_HUB'].Funny = getfenv()['BEDO_HUB'].Funny or {}

local fireserver = ParryAttemptEvent.FireServer
local Window = NoHyper.new("BLADE BALL : SPR : V1.1.4","rbxassetid://16763260622",'Hello '..LocalPlayer.DisplayName..' Welcome back! : Script By CAT_SUS : Support 40 FPS+')
task.wait()
Window:NewSize(UDim2.new(0.1,430,0.1,300))

Window:AddYoutube('https://www.youtube.com/@x2CAT_SUS/featured')
Window:AddWebsite('https://bedolhub.netlify.app/')
Window:AddDiscord('https://discord.gg/8reSB6VrW5')

task.wait()
local General = Window:NewTab('General','earth')
local About = Window:NewTab('About','link')

local CombatStion = General:NewSection('Combat','ads','left')
local ParticleStion = General:NewSection('Particle','option','right')
local ClientStion = General:NewSection('Client','crown','left')
local FunnyStion = General:NewSection('Funny','moon','right')
local AiStion = General:NewSection('AI','cpu','right')
local ESPStion = General:NewSection('ESP','ads','right')
local ConactStion = About:NewSection('Contact / Report bug','wallet','left')
local InfoStion = About:NewSection('Info','cpu','right')

local function fixui()
	FunnyStion.update()
	ClientStion.update()
	CombatStion.update()
	ParticleStion.update()
	ESPStion.update()

	pcall(SaveSetting)
end

fixui()
task.wait()
ConactStion:AddButton('Discord',function()
	local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
	if httprequest then
		httprequest({
			Url = 'http://127.0.0.1:6463/rpc?v=1',
			Method = 'POST',
			Headers = {
				['Content-Type'] = 'application/json',
				Origin = 'https://discord.com'
			},
			Body = HttpService:JSONEncode({
				cmd = 'INVITE_BROWSER',
				nonce = HttpService:GenerateGUID(false),
				args = {code = '8reSB6VrW5'}
			})
		})
	end

	pcall(SaveSetting)
end)

InfoStion:AddButton("Version: 1.1.4")
InfoStion:AddButton("Beta: true")
InfoStion:AddButton("Log: true")
InfoStion:AddButton("Key System: true")
InfoStion:AddButton("JobId: "..tostring(game.JobId),function()
	clipboard_Func(tostring(game.JobId))
	pcall(SaveSetting)
end)

AiStion:AddToggle("AI",BEDO_HUB.Combat['AI'],function(val)
	BEDO_HUB.Combat['AI'] = val
end)

CombatStion:AddToggle('Auto Parry',BEDO_HUB.Combat['Auto Parry'],function(value)
	BEDO_HUB.Combat['Auto Parry'] = value
	fixui()
end)

CombatStion:AddToggle('Clash Mode',BEDO_HUB.Combat['Clash Mode'],function(value)
	BEDO_HUB.Combat['Clash Mode'] = value
	fixui()
end)

CombatStion:AddSlider('Clash Stack',{Min = 1,Max = 10,Default = BEDO_HUB.Combat["Clash Stack"] or DefaultData.Combat["Clash Stack"],ValueT = 'Lv'},function(v)
	BEDO_HUB.Combat["Clash Stack"] = v
end)

CombatStion:AddDropdown('Method',{'Normal','Teleport','Follow'},BEDO_HUB.Combat['Parry Method'],function(value)
	BEDO_HUB.Combat['Parry Method'] = value
	fixui()
end)

CombatStion:AddToggle('Auto Ability',BEDO_HUB.Combat['Auto Ability'],function(value)
	BEDO_HUB.Combat['Auto Ability'] = value
	fixui()

	pcall(SaveSetting)
end)

ESPStion:AddToggle('ESP Ball',BEDO_HUB.ESP['Ball'],function(value)
	BEDO_HUB.ESP['Ball'] = value

	pcall(SaveSetting)
end)


ESPStion:AddToggle('ESP Target',BEDO_HUB.ESP['Target'],function(value)
	BEDO_HUB.ESP['Target'] = value

	pcall(SaveSetting)
end)


CombatStion:AddToggle('Visaulize Part',BEDO_HUB.Combat['Visaulize'],function(val)
	BEDO_HUB.Combat['Visaulize'] = val
	fixui()

	pcall(SaveSetting)
end)

CombatStion:AddButton('Fucking Clash',function()
	_G.StartFuckingClash()
end)

ParticleStion:AddToggle('No Particle',BEDO_HUB.Particle['No Particle'],function(v)
	BEDO_HUB.Particle['No Particle'] = v

	pcall(SaveSetting)
end)

ParticleStion:AddSlider('FPS',{Min = 5,Max = 144,Default = BEDO_HUB.Particle['Fps'] or DefaultData.Particle.Fps,ValueT = 's'},function(v)
	BEDO_HUB.Particle['Fps'] = v
	setfpscap(v)
end)

ClientStion:AddToggle("Enable",BEDO_HUB['Client']['WsToggle'],function(val)
	BEDO_HUB['Client']['WsToggle'] = val

	if not val then
		task.wait()
		LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').WalkSpeed = DefaultWalk
	end

	pcall(SaveSetting)
end)

ClientStion:AddSlider('WalkSpeed',{Min = 5,Max = 100,Default = BEDO_HUB['Client']['WalkSpeed'] or DefaultData.Client.WalkSpeed,ValueT = '%'},function(cc)
	BEDO_HUB['Client']['WalkSpeed'] = cc
end)

ClientStion:AddToggle("Enable",BEDO_HUB['Client']['JpToggle'],function(val)
	BEDO_HUB['Client']['JpToggle'] = val

	if not val then
		task.wait()
		LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = DefaultJump
	end

	pcall(SaveSetting)
end)

ClientStion:AddSlider('JumpPower',{Min = 5,Max = 450,Default = BEDO_HUB['Client']['JumpPower'] or DefaultData.Client.JumpPower,ValueT = '%'},function(cc)
	BEDO_HUB['Client']['JumpPower'] = cc

	pcall(SaveSetting)
end)

ClientStion:AddToggle('Status',BEDO_HUB['Client'].Status,function(cc)
	BEDO_HUB['Client'].Status = cc
	fixui()
end)

FunnyStion:AddToggle('Gaming chair',BEDO_HUB['Funny'].Sick,function(val)
	BEDO_HUB['Funny'].Sick = val
end)

FunnyStion:AddButton("Launch",function()
	if IsLaunchFuncMode then
		Notification.new("warning", "BEDOL HUB",'...',true,1.5)
		return
	end

	Notification.new("warning", "BEDOL HUB",'Launch: Blade Ball funny (lag)',true,1.5)

	getfenv().IsLaunchFuncMode = true

	loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/BladeBall_Troll.lua"))()
end)

Notification.new("success", "BEDOL HUB","Loaded!",true,1.5)

local old 
old = hookmetamethod(game, "__namecall", function(self, ...)
	local namecall = getnamecallmethod()
	if namecall == "FireServer" then
		local arges = {...}

		if tostring(self) == "SetLook" then
			stealSetLook = arges[1]
		end

		if tostring(self) == "RemoteEvent" then
			return wait(9e9)
		end
	end

	if namecall == "Kick" then
		return wait(9e9)
	end

	return old(self,...)
end)

local function getPing()
	return StatsService.Network.ServerStatsItem["Data Ping"]:GetValue()
end

local function ExecuteParry()
	fireserver(ParryAttemptEvent,unpack(ParryData))
end

_G.StartFuckingClash = function()
    for i=1,100 do task.wait()
        task.spawn(ExecuteParry)
    end
end

local function GetBallFuture(start)
	if realball then
		start = start
		return realball.Position + (Vector3.new(realball.Velocity.X,0,realball.Velocity.Z) / start)
	end
end

local function getallPlayerData()
	local events = {}

	for i,v in ipairs(PlayerService:GetPlayers()) do task.wait()
		if v.Character.Parent.Name == "Alive" then
			events[v.Name] = CurrentCamera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
		end
	end

	PlayerCollection = events
end

local function get_dstance(target)
	local maxunp = 150
	local oldayper = LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Velocity

	if not target then
		return (LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position - (oldayper / maxunp))
	end

	local distance = ((LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position - (oldayper / maxunp)) - target).Magnitude

	return distance
end

local function RootPart()
	return (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('HumanoidRootPart')) 
end

local function BALL_IS_LOOK_AT(Ball)
	local Object = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	local BallFuturePosition = (Ball.Position + (Vector3.new(Ball.Velocity.X,0,Ball.Velocity.Z) / 3))
	local Distance = Object and (Object.Position - realball.Position)
	local Look = (CFrame.lookAt(Ball.Position,BallFuturePosition)).LookVector
	local DotProduct = Distance.Unit:Dot(Look)

	if (BallFuturePosition - Object.Position).Magnitude <= (BallSpeedView / 1.25) then
		return true
	end

	if IsClash then
		return true
	end

	if DotProduct >= 0.1 or (realball:GetAttribute('target') == tostring(LocalPlayer) and Distance.Magnitude <= 30) then 
		return true
	end

	return false
end

local function IsWalkBetter(target)
	local rootpart = RootPart()
	local veloci = rootpart.Velocity / 6
	local Normal = rootpart.Position
	local feture = Normal + Vector3.new(veloci.X,0,veloci.Z)
	local dis1 = (target - Normal).Magnitude
	local dis2 = (target - feture).Magnitude

	if dis1 < dis2 then
		return false
	else
		return true
	end
end

local function Updateball()
	local valls = BallFolder:GetChildren()
	for i,v in ipairs(valls) do task.wait()
		if v:GetAttribute('realBall') == true then

			if v:GetAttribute('RBX') then
				v:SetAttribute('RBX',true)

				local lastername = ""

				if _G.Signaltarget then
					_G.Signaltarget:Disconnect()
				end

				_G.Signaltarget = v:GetAttributeChangedSignal("target"):Connect(function()
					if v and tostring(v:GetAttribute('target')) ~= tostring(LocalPlayer) and v:GetAttribute('target') ~= spoferusername then
						lastplayeerTarget = PlayerService:FindFirstChild(v:GetAttribute('target')) or AliveFolder:FindFirstChild(v:GetAttribute('target'))
					else
						local BallDistance = get_dstance(v.Position)

						if BallDistance <= 10 and IsLookAt then
							if BEDO_HUB.Combat['Auto Parry'] then
								ExecuteParry()
							end
						end

					end


				end)
			end

			realball = v
		else
			fakeball = v

			if MainFunction then
				if not v:GetAttribute('RBX') then
					v:SetAttribute('RBX',true)

					if _G.SignalPosition then
						_G.SignalPosition:Disconnect()
					end

					_G.SignalPosition = v:GetPropertyChangedSignal('Position'):Connect(MainFunction)
				end
			end
		end
	end

	if #valls <= 0 then
		IsClash = false
	end
end

task.spawn(function()
	while true do task.wait()
		pcall(function()
			if not ESP_UI_FOR_BALL or not ESP_UI_FOR_PLAYER then
				SettupESP()
			end

			if BEDO_HUB.ESP['Ball'] then
				if realball and ESP_UI_FOR_BALL then
					ESP_UI_FOR_BALL.Adornee = realball
					ESP_UI_FOR_BALL.Parent = realball
				end
			end

			if BEDO_HUB.ESP['Target'] then
				if ESP_UI_FOR_PLAYER and realball then
					local name = realball:GetAttribute('target')

					if AliveFolder:FindFirstChild(name) then
						ESP_UI_FOR_PLAYER.Adornee = AliveFolder:FindFirstChild(name):FindFirstChild('HumanoidRootPart')
						ESP_UI_FOR_PLAYER.Parent = workspace.Camera
					end
				end
			end
		end)
	end
end)

task.spawn(function()
	local fixuit = tick() + 7;

	while true do task.wait()	
		pcall(function()
			getallPlayerData()

			ParryData = {
				tonumber(1.5),

				stealSetLook,

				PlayerCollection,
				{

					CurrentCamera.ViewportSize.X / 2,
					CurrentCamera.ViewportSize.Y / 2

				},

				false,
			}

		end) 
	end
end)


spawn(function() -- Clash Function
	task.wait()

	fixui()

	local perframe = 0
	local precheck = tick()

	local function ClashLoop(types)
		if IsClash then
			ExecuteParry()
		end

		ClashText.Visible = BEDO_HUB.Combat['Clash Mode']

		if tick() >= precheck then
			ClashText.Text = "CLASH FRAMES: "..tostring(perframe).." | FPS: "..tostring(UserFPS or "nil").." | IS CLASH: "..tostring(IsClash).." | CLASH LEVEL: "..tostring(BEDO_HUB.Combat["Clash Stack"])
			precheck = tick() + 1
			perframe = 0
		end

		perframe = perframe + 1
	end

	game:GetService('RunService').RenderStepped:Connect(function()
		LoopStack.Loop1 = true
		ClashLoop("Loop1")
		LoopStack.Loop1 = false
	end)

	game:GetService('RunService').Stepped:Connect(function()
		if not LoopStack.Loop1 then
			LoopStack.Loop2 = true
			ClashLoop("Loop2")
			LoopStack.Loop2 = false
		end
	end)

	game:GetService('RunService').Heartbeat:Connect(function()
		if not LoopStack.Loop2 and not LoopStack.Loop1 and BEDO_HUB.Combat["Clash Stack"] >= 2 then
			LoopStack.Loop3 = true
			ClashLoop("Loop3")
			LoopStack.Loop3 = false
		end
	end)

	game:GetService('RunService').PostSimulation:Connect(function()
		if not LoopStack.Loop3 and not LoopStack.Loop2 and not LoopStack.Loop1 and BEDO_HUB.Combat["Clash Stack"] >= 3 then
			LoopStack.Loop4 = true
			ClashLoop("Loop4")
			LoopStack.Loop4 = false
		end
	end)

	game:GetService('RunService').PreRender:Connect(function()
		if not LoopStack.Loop4 and not LoopStack.Loop3 and not LoopStack.Loop2 and not LoopStack.Loop1 and BEDO_HUB.Combat["Clash Stack"] >= 4 then
			LoopStack.Loop5 = true
			ClashLoop("Loop5")
			LoopStack.Loop5 = false
		end
	end)

	spawn(function()
		while true do game:GetService('RunService').Heartbeat:Wait()
			pcall(function()
				if not LoopStack.Loop5 and not LoopStack.Loop4 and not LoopStack.Loop3 and not LoopStack.Loop2 and not LoopStack.Loop1 and BEDO_HUB.Combat["Clash Stack"] >= 5 then
					LoopStack.Loop6 = true
					ClashLoop("Loop6")
					LoopStack.Loop6 = false
				end
			end)
		end
	end)

	spawn(function()
		while true do game:GetService('RunService').RenderStepped:Wait()
			pcall(function()
				if not LoopStack.Loop6 and not LoopStack.Loop5 and not LoopStack.Loop4 and not LoopStack.Loop3 and not LoopStack.Loop2 and not LoopStack.Loop1 and BEDO_HUB.Combat["Clash Stack"] >= 6 then
					LoopStack.Loop7 = true
					ClashLoop("Loop7")
					LoopStack.Loop7 = false
				end
			end)
		end
	end)

	spawn(function()
		while true do game:GetService('RunService').Stepped:Wait()
			pcall(function()
				if not LoopStack.Loop7 and not LoopStack.Loop6 and not LoopStack.Loop5 and not LoopStack.Loop4 and not LoopStack.Loop3 and not LoopStack.Loop2 and not LoopStack.Loop1 and BEDO_HUB.Combat["Clash Stack"] >= 7 then
					LoopStack.Loop8 = true
					ClashLoop("Loop8")
					LoopStack.Loop8 = false
				end
			end)
		end
	end)

	spawn(function()
		while true do game:GetService('RunService').PostSimulation:Wait()
			pcall(function()
				if not LoopStack.Loop8 and not LoopStack.Loop7 and not LoopStack.Loop6 and not LoopStack.Loop5 and not LoopStack.Loop4 and not LoopStack.Loop3 and not LoopStack.Loop2 and not LoopStack.Loop1 and BEDO_HUB.Combat["Clash Stack"] >= 8 then
					LoopStack.Loop9 = true
					ClashLoop("Loop9")
					LoopStack.Loop9 = false
				end
			end)
		end
	end)

	spawn(function()
		while true do task.wait()
			pcall(function()
				if not LoopStack.Loop9 and not LoopStack.Loop8 and not LoopStack.Loop7 and not LoopStack.Loop6 and not LoopStack.Loop5 and not LoopStack.Loop4 and not LoopStack.Loop3 and not LoopStack.Loop2 and not LoopStack.Loop1 and BEDO_HUB.Combat["Clash Stack"] >= 9 then
					LoopStack.Loop10 = true
					ClashLoop("Loop10")
					LoopStack.Loop10 = false
				end

				if lastplayeerTarget then
					local distance = get_dstance(lastplayeerTarget.Position)

					calaTimeClash = math.clamp((95 / distance),0,1.1)
				end
			end)
		end
	end)
end)

local function GetCD()
	local ParryOffset = LocalPlayer.PlayerGui:WaitForChild('Hotbar'):WaitForChild('Block'):WaitForChild('UIGradient')

	if not ParryOffset:GetAttribute('RBX') then
		ParryOffset:SetAttribute('RBXd',true)
	end

	return ParryOffset.Offset.Y
end

LocalPlayer.CharacterAdded:Connect(function()
	IsClash = false;
	calaTimeClash = 0.3;
end)

local updateball = tick() + 0.4
local MyParryTime = tick()
local sickfelay = tick() + 0.15

local function __main__()
	if tick() > updateball then
		task.spawn(Updateball)
		updateball = tick()
	end

	if LocalPlayer.Character then
		MyPosition = RootPart().Position
	end

	if realball and fakeball and BEDO_HUB.Combat['Auto Parry'] and realball:FindFirstChild('zoomies') then
		local ping = tonumber(getPing()) 
		local cd = GetCD()
		local BallSpeedReal = realball.zoomies.VectorVelocity.Magnitude
		local RealBallSpeed = math.max(BallSpeedReal / math.clamp((500 / ping),0,3.15), 15.5)
		local BallPosition = GetBallFuture(45)
		local OldVelo = get_dstance()
		local BallDistance = get_dstance(BallPosition)

		local IsCurrectCD = tonumber(cd) > -0.25 or tonumber(cd) == -0.5

		BallSpeedView = RealBallSpeed

		if BEDO_HUB.Combat['Visaulize'] then
			ArchPart.CFrame = CFrame.new(OldVelo)
			ArchPart.Size = Vector3.new(RealBallSpeed,RealBallSpeed,RealBallSpeed)
		else
			ArchPart.CFrame = CFrame.new(MyPosition) * CFrame.new(0,-10000000000000,0)
			ArchPart.Size = Vector3.new(0,0,0)
		end

		if tonumber(ping) <= 450 then
			IsLookAt = BALL_IS_LOOK_AT(realball)
		else 
			IsLookAt = true
		end

		if BEDO_HUB.Combat['Auto Ability'] then
			if tonumber(cd) <= -0.25 and tonumber(cd) ~= -0.5 then
				AbilityButtonPress:Fire()
			end
		end

		if BallSpeedReal <= 0.5 then
			if realball:GetAttribute('target') == spoferusername then
				task.spawn(realball.SetAttribute,realball,'target',tostring(LocalPlayer))
			end
		end

		if BEDO_HUB.Combat['Parry Method'] == "Normal" then
			if BallDistance <= RealBallSpeed then
				if not IsClash then
					ArchPart.Color = Color3.fromRGB(255, 0, 0)
				end

				if (realball:GetAttribute('target') == tostring(LocalPlayer)) and BallSpeedReal > 0 and IsLookAt then

					task.spawn(realball.SetAttribute,realball,'target',spoferusername)
					ExecuteParry()

					MyParryTime = tick()

				end
			else
				if not IsClash then
					ArchPart.Color = Color3.fromRGB(26, 255, 0)
				end

				if PlayerService:FindFirstChild(realball:GetAttribute('target')) then
					local Player = PlayerService:FindFirstChild(realball:GetAttribute('target'))
					local character = Player.Character

					if character:FindFirstChild("HumanoidRootPart"):FindFirstChildWhichIsA('BasePart') then
						local Position = character:FindFirstChild("HumanoidRootPart").Position
						local Distance = get_dstance(Position)

						if Distance <= (RealBallSpeed / 2) and (tick() - MyParryTime <= (calaTimeClash + 0.1)) and IsWalkBetter(Position) then
							ExecuteParry()
							MyParryTime = tick()
						end
					end
				end
			end

			CurrentCamera.CameraSubject = LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')

		elseif BEDO_HUB.Combat['Parry Method'] == "Teleport"  then
			if realball:GetAttribute('target') == tostring(LocalPlayer) and BallSpeedReal >= 0.5 and IsLookAt then
				RootPart().CFrame = realball.CFrame

				task.spawn(ExecuteParry)
				task.spawn(realball.SetAttribute,realball,'target',spoferusername)
			end

			CurrentCamera.CameraSubject = LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
		else
			local size = {-15,15}
			local X = size[math.random(1,2)];
			local Y = 15;
			local Z = size[math.random(1,2)];

			if IsCurrectCD then
				RootPart().CFrame = realball.CFrame * CFrame.new(X,Y,Z)
			else
				RootPart().CFrame = realball.CFrame * CFrame.new(0,20,0)
			end

			if realball:GetAttribute('target') == tostring(LocalPlayer) and BallSpeedReal >= 0.5 and (tonumber(cd) > -0.25 or tonumber(cd) == -0.5) then
				ExecuteParry()
				task.spawn(realball.SetAttribute,realball,'target',spoferusername)
			end

			CurrentCamera.CameraSubject = fakeball or (LocalPlayer.Character and LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'))
		end

		if ParryTimeViewr <= calaTimeClash and BallSpeedReal >= 0.5 and BallDistance <= (RealBallSpeed / 1.1) then
			if tick() <= (ParryTimeNow + calaTimeClash + 0.1) then
				IsClash = true
			else
				IsClash = false
			end
		else
			IsClash = false
		end

		if IsClash then
			ArchPart.Color = Color3.fromRGB(136, 0, 255)

			if BEDO_HUB.Combat['AI'] then
				local ran = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
				LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):MoveTo(BallPosition + ran)
				LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').Jump = true
			end
		else
			if BEDO_HUB.Combat['AI'] then
				if BallDistance >= 60 then
					local ran = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
					LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):MoveTo(BallPosition + ran)
				end
			end
		end
	else
		if LocalPlayer.Character then
			CurrentCamera.CameraSubject = LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
		end
	end

	if LocalPlayer.Character then
		if BEDO_HUB['Client']['WsToggle'] then
			LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').WalkSpeed = BEDO_HUB['Client']['WalkSpeed']
		end

		if BEDO_HUB['Client']['JpToggle'] then
			LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = BEDO_HUB['Client']['JumpPower']
		end

		if BEDO_HUB['Funny'].Sick then
			if not SitAnimationCollect[LocalPlayer.Character:FindFirstChild('Humanoid')] then
				Animation_init.AnimationId = SitAnimation
				SitAnimationCollect[LocalPlayer.Character:FindFirstChild('Humanoid')] = LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Animation_init)
				SitAnimationCollect[LocalPlayer.Character:FindFirstChild('Humanoid')].Priority = Enum.AnimationPriority.Action4
			else
				if not SitAnimationCollect[LocalPlayer.Character:FindFirstChild('Humanoid')].IsPlaying then
					SitAnimationCollect[LocalPlayer.Character:FindFirstChild('Humanoid')]:Play(0.1)
				end
			end
		else
			if SitAnimationCollect[LocalPlayer.Character:FindFirstChild('Humanoid')] then
				SitAnimationCollect[LocalPlayer.Character:FindFirstChild('Humanoid')]:Stop(0.1)
			end
		end

	end

	if BEDO_HUB['Client'].Status then
		status.Enabled = true
		local target = realball:GetAttribute('target')
		local fps 

		if UserFPS then
			if UserFPS <= 15 then
				fps = tostring(UserFPS).." (BAD)"
			elseif UserFPS <= 30 then
				fps = tostring(UserFPS).." (okay)"
			elseif UserFPS <= 45 then
				fps = tostring(UserFPS).." (Good)"
			elseif UserFPS <= 60 then
				fps = tostring(UserFPS).." (Very Good)"
			else
				fps = tostring(UserFPS).." (🗣️ 60+)"
			end
		else
			fps = "Loading"
		end

		TextLabel.Text = "		Target: "..tostring(target)..' , Clash: '..tostring(IsClash)..' , FPS: '..tostring(fps)
	else
		status.Enabled = false
	end

	if BEDO_HUB.Particle['No Particle'] then
		if LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
			local part = LocalPlayer.Character:FindFirstChild('HumanoidRootPart'):FindFirstChildWhichIsA('BasePart')

			if part and part.Name == "SlashEffect" then
				part.Anchored = true
				part.CFrame = HidenCFrame
			end
		end
	end
end

task.wait()
task.spawn(function()
	BedolHubFinshLoaded = true

	local fps = 60
	local wal = tick()
	local frames = 0

	RunService.RenderStepped:Connect(__main__)

	RunService.RenderStepped:Connect(function()
		if tick() > wal then
			getfenv()['UserFPS'] = frames
			frames = 0
			wal = tick() + 1

		else
			frames = frames + 1
		end
	end)

	local destroy = game.Destroy

	workspace.ChildAdded:Connect(function(child)
		if BEDO_HUB.Particle['No Particle'] then
			local call = tostring(child)

			if call == "clash" or call == "shine" then
				child.Anchored = true
				child.CFrame = HidenCFrame
				child.Size = Vector3.new(1,1,1)
				child = nil
			end
		end
	end)

	getfenv()['MainFunction'] = __main__
end)

-- Clash

RemoteFolders.ParrySuccessAll.OnClientEvent:Connect(function(a1,MyCharacter)
	if LocalPlayer.Character:FindFirstChild('HumanoidRootPart') == MyCharacter then
		ParryTimeNow = tick()
		ParryTimeViewr = (ParryTimeNow - ParryLastTime)
		ParryLastTime = ParryTimeNow 
	end
end)

BREAKER = false
DO_IT = false
RunService.Heartbeat:Connect(function()
	if lastplayeerTarget then
		local distance129 = get_dstance(lastplayeerTarget.Position)
		if UserFPS <= 20 and (distance129 >= 10 or distance129 >= 15) then
			DO_IT = true
		else
			if not IsClash or distance129 >= 20 then
				BREAKER = true
			elseif IsClash and realball and realball.zoomies.VectorVelocity.Magnitude >= 500 then
				repeat
					TROUBLEPING = true
					task.wait(6)
					TROUBLEPING = false
				until not realball or not IsClash or distance129 >= 20
				TROUBLEPING = false
			else
				BREAKER = false
				TROUBLEPING = false
			end
		end
	end
end)
RunService.RenderStepped:Connect(function()
	local valls = BallFolder:GetChildren()
	for i,v in ipairs(valls) do task.wait()
		if v:GetAttribute('realBall') == true then
			local BallDistance = get_dstance(v.Position)
			if (BallDistance <= 50 and IsClash and not BREAKER and realball and realball:FindFirstChild("zoomies") and realball.zoomies.VectorVelocity and realball.zoomies.VectorVelocity.Magnitude >= 28 and not TROUBLEPING) or DO_IT then
				for i=1,50 do task.wait()
					if BREAKER and not DO_IT then break end
					if TROUBLEPING and not DO_IT then break end
					task.spawn(ExecuteParry)
				end
			end
		end
	end
end)

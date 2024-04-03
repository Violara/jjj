local script = Instance.new("LocalScript")
    script.Name = "Script1"
    script.Parent = Converted["_TextButton7"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local selectedPose
	local function LaVert()
		function sandbox(var,func)
			local env = getfenv(func)
			local newenv = setmetatable({},{
				__index = function(self,k)
					if k=="script" then
						return var
					else
						return env[k]
					end
				end,
			})
			setfenv(func,newenv)
			return func
		end
		cors = {}
		mas = Instance.new("Model",game:GetService("Lighting"))
		Tool0 = Instance.new("Tool")
		MagicLocalScript = Instance.new("LocalScript")
		Part2 = Instance.new("Part")
		Part3 = Instance.new("Part")
		SpecialMesh4 = Instance.new("SpecialMesh")
		Tool0.Name = "SimpleS Studio"
		Tool0.Parent = mas
		MagicLocalScript.Parent = Tool0
		table.insert(cors,sandbox(MagicLocalScript,function()
			local Tool = script.Parent
	
			enabled = true
	
			local selectionBox
	
			local arcHandles
			
			selectedPose = nil
	
			local moveHandles
	
			local previousCFrame
	
			local previousDistance
	
			function onArcHandlesDown(normal)
	
				print("HandlesDown")
	
				if selectedPose then
	
					previousCFrame = selectedPose.CFrame
	
				end
	
			end
	
			function onArcHandlesDrag(axis, relativeAngle, deltaRadius)
	
				if selectedPose then
	
					local axisangle = Vector3.FromAxis(axis)
	
					axisangle = axisangle * relativeAngle
	
					selectedPose.CFrame = previousCFrame * CFrame.Angles(axisangle.X, axisangle.Y, axisangle.Z)
	
					local x, y, z = selectedPose.CFrame:toEulerAnglesXYZ()
	
					print(math.floor(math.deg(x)), math.floor(math.deg(y)), math.floor(math.deg(z)))
	
				end
	
			end
	
			function onMoveHandlesDown(normal)
	
				print("HandlesDown")
	
				if selectedPose then
	
					previousDistance = 0
	
				end
	
			end
	
			function onMoveHandlesDrag(normal, distance)
	
				if selectedPose then
	
					local delta = distance - previousDistance
	
					translation = CFrame.new(Vector3.FromNormalId(normal) * delta)
	
					selectedPose.CFrame = translation * selectedPose.CFrame
	
					previousDistance = distance
	
					print(selectedPose.Position)
	
				end
	
			end
	
			function onButton1Down(mouse)
	
				print("3DButtonDown")
	
				selectionBox.Adornee = nil
	
				arcHandles.Adornee = nil
	
				moveHandles.Adornee = nil
	
				if mouse.Target ~= nil then
	
					selectedPose = mouse.Target
	
					selectionBox.Adornee = mouse.Target
	
					arcHandles.Adornee = mouse.Target
	
					moveHandles.Adornee = mouse.Target
	
				end
	
			end
	
			function onEquippedLocal(mouse)
	
				local character = script.Parent.Parent
	
				local player = Game.Players:GetPlayerFromCharacter(character)
	
				mouse.Icon ="rbxasset://textures\\DragCursor.png"
	
				mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	
				selectionBox = Instance.new("SelectionBox")
	
				selectionBox.Color = BrickColor.new("Cyan")
	
				selectionBox.Adornee = nil
	
				selectionBox.Parent = player.PlayerGui
	
				arcHandlesPart = Instance.new("Part")
	
				arcHandlesPart.Name = "ArcHandlesProxyPart"
	
				arcHandlesPart.Size = Vector3.new(2,2,2)
	
				arcHandlesPart.Parent = player.PlayerGui
	
				moveHandlesPart = Instance.new("Part")
	
				moveHandlesPart.Name = "MoveHandlesProxyPart"
	
				moveHandlesPart.Size = Vector3.new(2,2,2)
	
				moveHandlesPart.Parent = player.PlayerGui
	
				arcHandles = Instance.new("ArcHandles")
	
				arcHandles.Color = BrickColor.new("Neon orange")
	
				arcHandles.Adornee = nil
	
				arcHandles.Axes = Axes.new(Enum.Axis.X, Enum.Axis.Y, Enum.Axis.Z)
	
				arcHandles.MouseDrag:connect(onArcHandlesDrag)
	
				arcHandles.MouseButton1Down:connect(onArcHandlesDown)
	
				arcHandles.Parent = player.PlayerGui
	
				moveHandles = Instance.new("Handles")
	
				moveHandles.Style = Enum.HandlesStyle.Movement
	
				moveHandles.Color = BrickColor.new("Bright blue")
	
				moveHandles.Adornee = nil
	
				moveHandles.MouseDrag:connect(onMoveHandlesDrag)
	
				moveHandles.MouseButton1Down:connect(onMoveHandlesDown)
	
				moveHandles.Parent = player.PlayerGui
	
			end
	
			function onUnequippedLocal()
	
				selectionBox:Remove()
	
				arcHandles:Remove()
	
				moveHandles:remove()
	
			end
	
			Tool.Equipped:connect(onEquippedLocal)
	
			Tool.Unequipped:connect(onUnequippedLocal)
		end))
		Part2.Name = "Handle"
		Part2.Parent = Tool0
		Part2.CFrame = CFrame.new(-11.6290159, 6.38923359, -112.359108, 0, 0, 1, 0, 1, 0, -1, 0, 0)
		Part2.Orientation = Vector3.new(0, 90, 0)
		Part2.Position = Vector3.new(-11.629015922546387, 6.389233589172363, -112.3591079711914)
		Part2.Rotation = Vector3.new(0, 90, 0)
		Part2.Color = Color3.new(0.972549, 0.972549, 0.972549)
		Part2.Size = Vector3.new(0.0010000000474974513, 0.001000046730041504, 0.0010000000474974513)
		Part2.BrickColor = BrickColor.new("Institutional white")
		Part2.brickColor = BrickColor.new("Institutional white")
		Part3.Name = "Magic"
		Part3.Parent = Tool0
		Part3.CFrame = CFrame.new(-12.1285172, 5.78873873, -112.858604, 0, 0, 1, 0, 1, 0, -1, 0, 0)
		Part3.Orientation = Vector3.new(0, 90, 0)
		Part3.Position = Vector3.new(-12.128517150878906, 5.78873872756958, -112.85860443115234)
		Part3.Rotation = Vector3.new(0, 90, 0)
		Part3.Color = Color3.new(0.972549, 0.972549, 0.972549)
		Part3.Size = Vector3.new(1, 1.2000000476837158, 1)
		Part3.BrickColor = BrickColor.new("Institutional white")
		Part3.Elasticity = 0
		Part3.Friction = 0
		Part3.brickColor = BrickColor.new("Institutional white")
		SpecialMesh4.Parent = Part3
		SpecialMesh4.MeshId = "http://www.roblox.com/asset/?id=16171271"
		SpecialMesh4.Scale = Vector3.new(0.5, 0.5, 0.5)
		SpecialMesh4.TextureId = "http://www.roblox.com/asset/?id=16171265"
		SpecialMesh4.MeshType = Enum.MeshType.FileMesh
		for i,v in pairs(mas:GetChildren()) do
			v.Parent = workspace
			pcall(function() v:MakeJoints() end)
		end
		mas:Destroy()
		for i,v in pairs(cors) do
			spawn(function()
				pcall(v)
			end)
		end
		repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
	
		Tool0.Parent = game.Players.LocalPlayer.Character
		if not game.CoreGui:FindFirstChild("Simple Showcase Studio") then
			local SimpleShowcase = Instance.new("ScreenGui")
			SimpleShowcase.Name = "Simple Showcase Studio"
			SimpleShowcase.Parent = game.CoreGui
			local SimpleFrame = Instance.new("Frame")
			SimpleFrame.Size = UDim2.new(0.15, 0, 0.1, 0)
			SimpleFrame.Position = UDim2.new(0.8, 0, 0, 0)
			SimpleFrame.BackgroundColor3 = Color3.new(0, 0, 0)
			SimpleFrame.Parent = SimpleShowcase
			local SimpleText = Instance.new("TextBox")
			SimpleText.Position = UDim2.new(0, 0, 0, 0)
			SimpleText.Size = UDim2.new(1, 0, 1, 0)
			SimpleText.TextColor3 = Color3.new(1, 1, 1)
			SimpleText.Parent = SimpleFrame
			
			SimpleText:GetPropertyChangedSignal("Text"):Connect(function()
				if selectedPose then
					pcall(function()
						local text = SimpleText.Text
						local numbers = {}
						for num in text:gmatch("%d+") do
							table.insert(numbers, tonumber(num))
						end
						
						if numbers[1] and numbers[2] and numbers[3] then
							local size = Vector3.new(numbers[1], numbers[2], numbers[3])
							selectedPose.Size = size
						end
					end)
				end
			end)
		end
		if not game.CoreGui:FindFirstChild("LOWQUAD") then
			pcall(function()
				local screenGui = Instance.new("ScreenGui")
				screenGui.Name = "LOWQUAD"
				screenGui.Parent = game.CoreGui
				local frame = Instance.new("Frame")
				frame.Size = UDim2.new(0.06, 0, 0.05, 0)
				frame.Position = UDim2.new(0.39, 0, 0.1, 0)
				frame.BackgroundColor3 = Color3.new(1, 1, 1)
				frame.BackgroundTransparency = 1
				frame.Parent = screenGui
				local button = Instance.new("TextButton")
				button.Size = UDim2.new(1, 0, 1, 0)
				button.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
				button.Text = "Part"
				button.Parent = frame
				local function Ilikeyou()
					local Ilikeyou = Instance.new("Part")
					Ilikeyou.Transparency = 0
					Ilikeyou.Size = Vector3.new(1, 1, 1)
					Ilikeyou.Anchored = true
					Ilikeyou.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					Ilikeyou.Parent = workspace
				end
	
				-- Connect the function to the MouseButton1Click event of the button
				button.MouseButton1Click:Connect(Ilikeyou)
			end)
		end
		
		while task.wait() do
			if Part3 and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
				Part3.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 7, 0)
			end
		end
	end

    LaVert()

local function tpwithnewtpbyme(a,b,c,speedoftpNTP)
    local hrd = game.Players.LocalPlayer.Character.HumanoidRootPart
    local p = hrd.Position
    local currentPos = Vector3.new(p.x, p.y, p.z)
    local targetPos = Vector3.new(a, b, c)

    local direction = (targetPos - currentPos).Unit
    local distance = (targetPos - currentPos).Magnitude
    local steps = math.floor(distance / speedoftpNTP) 
    for i = 1, steps do
        if not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            repeat task.wait(0.175) until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        end
        currentPos = currentPos + direction * speedoftpNTP 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentPos)
        task.wait()
    end
end
local Setting = {
    AutoRichManMission = true
    AutoFarmPosX = 0,
    AutoFarmPosY = 40,
    AutoFarmPosZ = 0
    TryNumOfthis1 = 0,
}
EquipWeapon = function(Name)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(Name) then
      Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(Name)
      wait(0.02)
      game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
    end
end
coroutine.wrap(function()
    while task.wait() do
        if Setting.AutoRichManMission then
            if game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ProQuestProgress", "SickMan") ~= 0 and Setting.AutoRichManMission then
                if workspace.Map.Desert.Burn.Fire.Transparency == 0 and Setting.AutoRichManMission then
                    tpwithnewtpbyme(-1462.749267578125, 61.9772834777832, -20.861719131469727, 5)
                    for _, v in pairs(workspace.Map.Jungle.QuestPlates:GetChildren()) do
                        if v and v:FindFirstChild("Button") and Setting.AutoRichManMission then
                            tpwithnewtpbyme(v.Button.Position.X, v.Button.Position.Y, v.Button.Position.Z, 5)
                            task.wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Button.CFrame
                            task.wait(1)
                        end
                    end
                    task.wait()
                    repeat
                        tpwithnewtpbyme(-1610.00757, 11.5049858, 164.001587, 5)
                        task.wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1610.00757, 11.5049858, 164.001587)
                        task.wait()
                    until game.Players.LocalPlayer.Backpack:FindFirstChild("Torch") or not Setting.AutoRichManMission
                    task.wait()
                    EquipWeapon("Torch")
                    repeat
                        tpwithnewtpbyme(1113.78479, 5.53314924, 4350.73486, 5)
                        task.wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1113.78479, 5.53314924, 4350.73486, -0.622790754, 9.05360196e-08, 0.782388449, -1.78066291e-08, 1, -1.29891774e-07, -0.782388449, -9.48270937e-08, -0.622790754)
                        task.wait()
                    until (workspace.Map.Desert.Burn and workspace.Map.Desert.Burn.Fire and workspace.Map.Desert.Burn.Fire.Particles and workspace.Map.Desert.Burn.Fire.Particles.Enabled) or not Setting.AutoRichManMission
                    task.wait()
                end
                repeat
                    tpwithnewtpbyme(1114.2672119140625, 4.169437885284424, 4366.1533203125, 5)
                    task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.2672119140625, 4.169437885284424, 4366.1533203125)
                    task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.2672119140625, 3, 4366.1533203125)
                    task.wait()
                until game.Players.LocalPlayer.Backpack:FindFirstChild("Cup") or game.Players.LocalPlayer.Character:FindFirstChild("Cup") or not Setting.AutoRichManMission
                task.wait()
                EquipWeapon("Cup")
                repeat
                    tpwithnewtpbyme(1398.90918, 37.4733658, -1320.47192, 5)
                    task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1396.8009, 37.4733238, -1321.21753, 0.256682247, -6.73633735e-08, 0.966495872, -3.63055186e-08, 1, 7.93405945e-08, -0.966495872, -5.5454457e-08, 0.256682247)
                    task.wait()
                until game.Players.LocalPlayer.Character.Cup.Handle.Drop1.Transparency == 0.30000001192092896 or not Setting.AutoRichManMission
                if (Vector3.new(1461.9517822265625, 91.0281982421875, -1390.193359375) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ProQuestProgress", "SickMan")
                    task.wait(1)
                else
                    tpwithnewtpbyme(1461.9517822265625, 91.0281982421875, -1390.193359375, 5)
                    task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1461.9517822265625, 91.0281982421875, -1390.193359375)
                    task.wait(1)
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ProQuestProgress", "SickMan")
                    task.wait(1)
                end
            end
            if (game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ProQuestProgress", "RichSon") ~= 0 or game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ProQuestProgress", "RichSon") ~= 1) and Setting.AutoRichManMission then
                if game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ProQuestProgress", "RichSon") == 0 and Setting.AutoRichManMission then
                    tpwithnewtpbyme(-2915.613525390625, 7.517605304718018, 5403.52587890625, 5)
                    for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v and v.Name == "Mob Leader" and v:FindFirstChild("Humanoid") and v.Humanoid.Health ~= 0 and Setting.AutoRichManMission then
                            Setting.TryNumOfthis1 = 0
                            repeat
                                repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                MobHumP = v.HumanoidRootPart.Position
                                tpwithnewtpbyme(MobHumP.X + Setting.AutoFarmPosX, MobHumP.Y + Setting.AutoFarmPosY, MobHumP.Z + Setting.AutoFarmPosZ, 10)
                                task.wait()
                                Setting.TryNumOfthis1 = Setting.TryNumOfthis1 + 1
                            until v.Humanoid.Health == 0 or not Setting.AutoRichManMission or Setting.TryNumOfthis1 == 2000
                        end
                    end
                elseif game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ProQuestProgress", "RichSon") == 1 and Setting.AutoRichManMission then
                    tpwithnewtpbyme(-908.5406494140625, 13.877363204956055, 4078.021240234375, 5)
                    task.wait()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1461.9517822265625, 91.0281982421875, -1390.193359375)
                    task.wait(1)
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ProQuestProgress", "SickMan")
                    task.wait(1)
                    repeat task.wait() until false

                else
                    if Setting.AutoRichManMission then
                        tpwithnewtpbyme(-908.5406494140625, 13.877363204956055, 4078.021240234375, 5)
                        task.wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1461.9517822265625, 91.0281982421875, -1390.193359375)
                        task.wait(1)
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ProQuestProgress", "SickMan")
                        task.wait(1)
                    end
                end
            end
        end
    end
end)()

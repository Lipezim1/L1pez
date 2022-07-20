if game.PlaceId == 10057350313 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "💎 Ore Smelting Tycoon | By l1pezim#9999", HidePremium = true, IntroText = "L1pezimProd", SaveConfig = true, ConfigFolder = "L1pezimProd"})
    
    OrionLib:MakeNotification({
        Name = "Discord",
        Content = "https://discord.gg/hTHUuXZu6j",
        Image = "rbxassetid://4483345998",
        Time = 1000000000
    })

    --valores
    _G.autoCollectCoal = true
    _G.AutoCollectTin = true
    _G.AutoCollectCopper = true
    _G.AutoCollectBronze = true
    _G.AutoCollectSilver = true
    _G.AutoCollectGold = true
    _G.AutoCollectPlatinum = true
    _G.AutoCollectSapphire = true
    _G.AutoCollectEmerald = true
    
    --funcoes
    function autoCollectCoal()
        while _G.autoCollectCoal == true do
            local args = {
                [1] = workspace.Tycoons.Sapphire.Drops.Coal
            }
            
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pick Ores").Collect:FireServer(unpack(args))
            wait(0.000001)
        end
    end

    function AutoCollectTin()
        while _G.AutoCollectTin == true do
            local args = {
                [1] = workspace.Tycoons.Sapphire.Drops.Tin
            }
            
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pick Ores").Collect:FireServer(unpack(args))
            wait(0.000001)
        end
    end

    function AutoCollectCopper()
        while _G.AutoCollectCopper == true do
            local args = {
                [1] = workspace.Tycoons.Sapphire.Drops.Copper
            }
            
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pick Ores").Collect:FireServer(unpack(args))
            wait(0.000001)
        end
    end

    function AutoCollectBronze()
        while _G.AutoCollectBronze == true do
            local args = {
                [1] = workspace.Tycoons.Sapphire.Drops.Bronze
            }
            
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pick Ores").Collect:FireServer(unpack(args))
            wait(0.000001)
        end
    end

    function AutoCollectSilver()
        while _G.AutoCollectSilver == true do
            local args = {
                [1] = workspace.Tycoons.Sapphire.Drops.Silver
            }
            
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pick Ores").Collect:FireServer(unpack(args))
            wait(0.000001)
        end
    end

    function AutoCollectGold()
        while _G.AutoCollectGold == true do
            local args = {
                [1] = workspace.Tycoons.Sapphire.Drops.Gold
            }
            
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pick Ores").Collect:FireServer(unpack(args))
            wait(0.000001)
        end
    end

    function AutoCollectPlatinum()
        while _G.AutoCollectPlatinum == true do
            local args = {
                [1] = workspace.Tycoons.Sapphire.Drops.Platinum
            }
            
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pick Ores").Collect:FireServer(unpack(args))
            wait(0.000001)
        end
    end

    function AutoCollectSapphire()
        while _G.AutoCollectSapphire == true do
            local args = {
                [1] = workspace.Tycoons.Sapphire.Drops.Sapphire
            }
            
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pick Ores").Collect:FireServer(unpack(args))
            wait(0.000001)
        end
    end

    function AutoCollectEmerald()
        while _G.AutoCollectEmerald == true do
            local args = {
                [1] = workspace.Tycoons.Sapphire.Drops.Emerald
            }
            
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pick Ores").Collect:FireServer(unpack(args))
            wait(0.000001)
        end
    end

    --tabelas
    local FarmTab = Window:MakeTab({
        Name = "AutoFarm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    local MiscTab = Window:MakeTab({
        Name = "Misc",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local TeleportTab = Window:MakeTab({
        Name = "Teleport",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    


    --botoes

   FarmTab:AddLabel("Equip Pick Ores tool!")


    FarmTab:AddToggle({
        Name = "AutoCollectCoal",
        Default = false,
        Callback = function(Value)
            _G.autoCollectCoal = Value
            autoCollectCoal()
        end    
    })
    
    FarmTab:AddToggle({
        Name = "AutoCollectTin",
        Default = false,
        Callback = function(Value)
            _G.AutoCollectTin = Value
            AutoCollectTin()
        end    
    })
    
    FarmTab:AddToggle({
        Name = "AutoCollectCopper",
        Default = false,
        Callback = function(Value)
            _G.AutoCollectCopper = Value
            AutoCollectCopper()
        end    
    })
    
    FarmTab:AddToggle({
        Name = "AutoCollectBronze",
        Default = false,
        Callback = function(Value)
            _G.AutoCollectBronze = Value
            AutoCollectBronze()
        end    
    })
    
    MiscTab:AddButton({
        Name = "Click Tp",
        Callback = function(Value)
            mouse = game.Players.LocalPlayer:GetMouse()
            tool = Instance.new("Tool")
            tool.RequiresHandle = false
            tool.Name = "Click Teleport"
            tool.Activated:connect(function()
            local pos = mouse.Hit+Vector3.new(0,2.5,0)
            pos = CFrame.new(pos.X,pos.Y,pos.Z)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
            end)
            tool.Parent = game.Players.LocalPlayer.Backpack
          end    
    })
    
    FarmTab:AddToggle({
        Name = "AutoCollectSilver",
        Default = false,
        Callback = function(Value)
            _G.AutoCollectSilver = Value
            AutoCollectSilver()
        end    
    })
    
    FarmTab:AddToggle({
        Name = "AutoCollectGold",
        Default = false,
        Callback = function(Value)
            _G.AutoCollectGold = Value
            AutoCollectGold()
        end    
    })
    
    MiscTab:AddButton({
        Name = "Anti Afk",
        Callback = function(Value)
            loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringypVvhJBq4QNz", true))()
          end    
    })

    FarmTab:AddToggle({
        Name = "AutoCollectPlatinum",
        Default = false,
        Callback = function(Value)
            _G.AutoCollectPlatinum = Value
            AutoCollectPlatinum()
        end    
    })
    
    FarmTab:AddToggle({
        Name = "AutoCollectSapphire",
        Default = false,
        Callback = function(Value)
            _G.AutoCollectSapphire = Value
            AutoCollectSapphire()
        end    
    })
    
    TeleportTab:AddButton({
        Name = "2x Ore Easy Obby",
        Callback = function(Value)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-192.587097, 3.19999862, -20.8526249, 0.0408362187, -6.5344814e-09, -0.999165833, 4.74131383e-08, 1, -4.60214666e-09, 0.999165833, -4.71856545e-08, 0.0408362187)
          end    
    })
    
    FarmTab:AddToggle({
        Name = "AutoCollectEmerald",
        Default = false,
        Callback = function(Value)
            _G.AutoCollectEmerald = Value
            AutoCollectEmerald()
        end    
    })

    TeleportTab:AddButton({
        Name = "2x Ore Hard Obby",
        Callback = function(Value)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(192.366043, 3.19999862, -6.84762907, -0.0313749239, 5.10218812e-11, -0.999507666, -4.714834030-08, 1, 1.53105129e-09, 0.999507666, 4.71731632e-08, -0.0313749239)
          end    
    })
    



end
OrionLib:Init()

-- Alya Brainrot Hub: God Mode + Anti-Cheat + Auto-Money
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3"))()
local Window = Library:CreateWindow("Alya Brainrot Hub")

-- 1. ALYA BACKGROUND (Keep transparency at 0.7 for visibility)
local MainFrame = game.CoreGui:FindFirstChild("Wall V3").Main
local Background = Instance.new("ImageLabel")
Background.Parent = MainFrame
Background.Size = UDim2.new(1, 0, 1, 0)
Background.Image = "rbxassetid://15634215283" 
Background.ImageTransparency = 0.7
Background.ZIndex = 0

-- 2. MAIN TABS
local Main = Window:CreateTab("God Hacks")
local Farm = Window:CreateTab("Auto-Farm")

-- 3. AUTO MONEY COLLECTOR (The New Feature)
Farm:CreateToggle("Auto-Collect Money", function(state)
    _G.CollectMoney = state
    while _G.CollectMoney do
        task.wait(0.1)
        for _, obj in pairs(workspace:GetChildren()) do
            -- Checks for anything named Money, Coin, or Cash
            if obj.Name:find("Money") or obj.Name:find("Coin") or obj.Name:find("Cash") then
                if obj:IsA("BasePart") then
                    -- Smoothly pull the money to you (Bypasses Anti-Cheat)
                    local tween = game:GetService("TweenService"):Create(
                        obj,
                        TweenInfo.new(0.3, Enum.EasingStyle.Linear),
                        {CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame}
                    )
                    tween:Play()
                end
            end
        end
    end
end)

-- 4. AUTO DIVINE BRAINROT (From previous step)
Farm:CreateToggle("Auto-Divine Items", function(state)
    _G.AutoDivine = state
    while _G.AutoDivine do
        task.wait(0.1)
        for _, item in pairs(workspace:GetChildren()) do
            if item.Name:find("Divine") or item.Name:find("Brainrot") then
                local tween = game:GetService("TweenService"):Create(
                    game.Players.LocalPlayer.Character.HumanoidRootPart,
                    TweenInfo.new(0.5, Enum.EasingStyle.Linear),
                    {CFrame = item.CFrame}
                )
                tween:Play()
                task.wait(0.6)
            end
        end
    end
end)

-- 5. VIP & TSUNAMI IMMUNITY
Main:CreateToggle("VIP & Tsunami Immunity", function(state)
    _G.Immune = state
    while _G.Immune do
        task.wait(0.5)
        for _, v in pairs(workspace:GetDescendants()) do
            if v.Name:find("VIP") then v.CanCollide = not state end
        end
        local hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if hum then hum:SetStateEnabled(Enum.HumanoidStateType.Swimming, not state) end
    end
end)

-- 6. UI TOGGLE (Press X)
game:GetService("UserInputService").InputBegan:Connect(function(input, gpe)
    if not gpe and input.KeyCode == Enum.KeyCode.X then
        game.CoreGui:FindFirstChild("Wall V3").Enabled = not game.CoreGui:FindFirstChild("Wall V3").Enabled
    end
end)

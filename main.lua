-- [[ ALYA HUB V1: MOBILE VERTICAL EDITION ]]
-- [[ BY ADITYA - LATUR, MAHARASHTRA ]]

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = "Alya Brainrot Hub", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "AlyaHub", 
    IntroText = "Alya Hub V1 - Welcome Aditya!"
})

-- 1. ALYA BACKGROUND SETUP
local MainUI = game.CoreGui:FindFirstChild("Orion")
if MainUI then
    local Bg = Instance.new("ImageLabel")
    Bg.Name = "AlyaBackground"
    Bg.Parent = MainUI.Main
    Bg.Size = UDim2.new(1, 0, 1, 0)
    Bg.Image = "rbxassetid://15634215283" 
    Bg.ImageTransparency = 0.8
    Bg.ZIndex = 0
end

-- 2. ANTI-CHEAT BYPASS
local function Bypass()
    local mt = getrawmetatable(game)
    setreadonly(mt, false)
    local old = mt.__index
    mt.__index = newcclosure(function(t, k)
        if k == "WalkSpeed" or k == "JumpPower" then return 16 end
        return old(t, k)
    end)
    setreadonly(mt, true)
end
Bypass()

-- 3. HACKS TAB
local MainTab = Window:MakeTab({
    Name = "Hacks",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

MainTab:AddToggle({
    Name = "VIP & Tsunami Immunity",
    Default = false,
    Callback = function(Value)
        _G.Immune = Value
        while _G.Immune do
            task.wait(0.5)
            for _, v in pairs(workspace:GetDescendants()) do
                if v.Name:find("VIP") then v.CanCollide = not Value end
            end
            local hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            if hum then hum:SetStateEnabled(Enum.HumanoidStateType.Swimming, not Value) end
        end
    end    
})

MainTab:AddToggle({
    Name = "Auto-Collect Money",
    Default = false,
    Callback = function(Value)
        _G.Money = Value
        while _G.Money do
            task.wait(0.2)
            for _, obj in pairs(workspace:GetChildren()) do
                if obj.Name:find("Money") or obj.Name:find("Coin") then
                    local tween = game:GetService("TweenService"):Create(obj, TweenInfo.new(0.3), {CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
                    tween:Play()
                end
            end
        end
    end    
})

-- 4. CREDITS TAB (Tera YouTube Link Yahan Hai)
local CreditsTab = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

CreditsTab:AddLabel("Owner: Aditya (Latur)")

CreditsTab:AddButton({
    Name = "Subscribe to My YouTube",
    Callback = function()
        -- Mobile users ke liye clipboard copy best hai
        setclipboard("https://www.youtube.com/@ADITYA_100KDELTA")
        OrionLib:MakeNotification({
            Name = "Link Copied!",
            Content = "YouTube link copied to clipboard. Go paste it in Chrome!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end    
})

-- 5. CLOSE BUTTON (X)
MainTab:AddButton({
    Name = "( X ) CLOSE MENU",
    Callback = function()
        OrionLib:Destroy()
    end    
})

OrionLib:Init()

-- [[ ALYA HUB V1 - OFFICIAL CLEAN VERSION ]]
-- [[ CREATED FOR ADITYA - LATUR, MAHARASHTRA ]]

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = "Alya Brainrot Hub", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "AlyaHub", 
    IntroText = "Alya Hub V1 - Welcome Aditya!"
})

-- 1. BACKGROUND SETUP (Alya Photo)
local function LoadAlyaBG()
    local OrionUI = game.CoreGui:FindFirstChild("Orion")
    if OrionUI then
        local BgImage = Instance.new("ImageLabel")
        BgImage.Name = "AlyaBG"
        BgImage.Parent = OrionUI.Main
        BgImage.Size = UDim2.new(1, 0, 1, 0)
        BgImage.Image = "rbxassetid://15634215283"
        BgImage.ImageTransparency = 0.8
        BgImage.ZIndex = 0 -- Buttons ke niche
    end
end
LoadAlyaBG()

-- 2. MAIN HACKS TAB (Vertical Layout)
local MainTab = Window:MakeTab({
    Name = "Hacks",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- TSUNAMI IMMUNITY TOGGLE
MainTab:AddToggle({
    Name = "Tsunami Immunity",
    Default = false,
    Callback = function(Value)
        _G.Immune = Value
        while _G.Immune do
            task.wait(0.5)
            local character = game.Players.LocalPlayer.Character
            if character and character:FindFirstChild("Humanoid") then
                character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, not Value)
            end
        end
    end    
})

-- AUTO MONEY COLLECTOR
MainTab:AddToggle({
    Name = "Auto-Collect Money",
    Default = false,
    Callback = function(Value)
        _G.AutoMoney = Value
        while _G.AutoMoney do
            task.wait(0.3)
            for _, obj in pairs(workspace:GetChildren()) do
                if obj.Name:find("Money") or obj.Name:find("Coin") then
                    obj.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end    
})

-- 3. CREDITS TAB
local CreditsTab = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

CreditsTab:AddButton({
    Name = "Subscribe @ADITYA_100KDELTA",
    Callback = function()
        setclipboard("https://www.youtube.com/@ADITYA_100KDELTA")
        OrionLib:MakeNotification({
            Name = "Link Copied!",
            Content = "Browser me paste karke subscribe karein!",
            Time = 5
        })
    end    
})

-- 4. CLOSE BUTTON (X) - Drawing Style
MainTab:AddButton({
    Name = "( X ) CLOSE MENU",
    Callback = function()
        OrionLib:Destroy()
    end    
})

OrionLib:Init()

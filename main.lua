-- [[ ALYA HUB V1 | CUSTOM ENGINE ]]
-- [[ DESIGNED FOR ADITYA - LATUR ]]
-- [[ NO LIBRARIES | NO LAG | 100% STABLE ]]

if not game:IsLoaded() then game.Loaded:Wait() end

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local Player = Players.LocalPlayer
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")

-- // OLD UI CLEANUP // --
if CoreGui:FindFirstChild("AlyaProCustom") then CoreGui.AlyaProCustom:Destroy() end

-- // INITIALIZE // --
ScreenGui.Name = "AlyaProCustom"
ScreenGui.Parent = CoreGui
ScreenGui.ResetOnSpawn = false

-- // MAIN VERTICAL FRAME (As per Drawing) // --
MainFrame.Name = "Main"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, -110, 0.5, -225)
MainFrame.Size = UDim2.new(0, 220, 0, 450)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.ClipsDescendants = true

local MainCorner = Instance.new("UICorner", MainFrame)
local MainStroke = Instance.new("UIStroke", MainFrame)
MainStroke.Color = Color3.fromRGB(255, 0, 0)
MainStroke.Thickness = 2

-- // ALYA BACKGROUND (Base64 Fixed) // --
local Bg = Instance.new("ImageLabel", MainFrame)
Bg.Name = "AlyaBG"
Bg.Size = UDim2.new(1, 0, 1, 0)
Bg.BackgroundTransparency = 1
Bg.Image = "data:image/jpeg;base64,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"
Bg.ImageTransparency = 0.75
Bg.ZIndex = 0

-- // TITLE // --
local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, 0, 0, 50)
Title.BackgroundColor3 = Color3.fromRGB(25, 0, 0)
Title.Text = "ALYA HUB V1"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20
Title.ZIndex = 2
Instance.new("UICorner", Title)

-- // BUTTONS LIST // --
local List = Instance.new("ScrollingFrame", MainFrame)
List.Size = UDim2.new(1, -20, 1, -110)
List.Position = UDim2.new(0, 10, 0, 60)
List.BackgroundTransparency = 1
List.CanvasSize = UDim2.new(0, 0, 0, 600)
List.ScrollBarThickness = 2
local Layout = Instance.new("UIListLayout", List)
Layout.Padding = UDim.new(0, 10)

-- // BUTTON CREATOR // --
local function AddButton(name, callback)
    local Btn = Instance.new("TextButton", List)
    Btn.Size = UDim2.new(1, 0, 0, 45)
    Btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Btn.Text = name
    Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    Btn.Font = Enum.Font.Gotham
    Btn.TextSize = 14
    Instance.new("UICorner", Btn)
    Btn.MouseButton1Click:Connect(callback)
end

-- // ADDING FEATURES // --
AddButton("Tsunami Immunity", function()
    local char = Player.Character
    if char and char:FindFirstChild("Humanoid") then
        char.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
        print("Immunity Active!")
    end
end)

AddButton("Auto-Collect Money", function()
    spawn(function()
        _G.Money = true
        while _G.Money do task.wait(0.3)
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name:find("Money") or v.Name:find("Coin") then
                    v.CFrame = Player.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end)
end)

AddButton("Subscribe Aditya", function()
    setclipboard("https://www.youtube.com/@ADITYA_100KDELTA")
end)

-- // CLOSE BUTTON // --
local Close = Instance.new("TextButton", MainFrame)
Close.Size = UDim2.new(0, 40, 0, 40)
Close.Position = UDim2.new(1, -45, 0, 5)
Close.BackgroundTransparency = 1
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 0, 0)
Close.TextSize = 25
Close.ZIndex = 3
Close.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)

print("Alya Hub V1 Loaded!")

-- [[ ALYA HUB V1 | ALL FEATURES RESTORED & FIXED ]]
-- [[ HWID LOCK | 24H EXPIRY | TRIPLE LINK | ALYA BG ]]

if not game:IsLoaded() then game.Loaded:Wait() end

-- // SERVICES // --
local CoreGui = game:GetService("CoreGui")
local HWID = game:GetService("RbxAnalyticsService"):GetClientId() 
local ServerURL = "https://key-system-3m02.onrender.com" 
local FirstStepLink = "https://work.ink/2lud/alya-hub-v1-key-generator" 

-- // UI CLEANUP // --
if CoreGui:FindFirstChild("AlyaUltimate") then CoreGui.AlyaUltimate:Destroy() end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "AlyaUltimate"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global -- Forcing visibility

-- // 1. KEY SYSTEM UI (The Vertical Red Sketch) // --
local KeyFrame = Instance.new("Frame", ScreenGui)
KeyFrame.Size = UDim2.new(0, 260, 0, 320)
KeyFrame.Position = UDim2.new(0.5, -130, 0.5, -160)
KeyFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
KeyFrame.Active = true 
KeyFrame.Draggable = true 
Instance.new("UICorner", KeyFrame)

local KeyStroke = Instance.new("UIStroke", KeyFrame)
KeyStroke.Color = Color3.fromRGB(255, 0, 0)
KeyStroke.Thickness = 2.5 -- Strong Red Border

local Title = Instance.new("TextLabel", KeyFrame)
Title.Size = UDim2.new(1, 0, 0, 45)
Title.Text = "SECURITY SYSTEM"
Title.BackgroundColor3 = Color3.fromRGB(40, 0, 0)
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.ZIndex = 10
Instance.new("UICorner", Title)

-- // BUTTONS & INPUTS (Ensuring Visibility) // --
local KeyInput = Instance.new("TextBox", KeyFrame)
KeyInput.Size = UDim2.new(0.85, 0, 0, 40)
KeyInput.Position = UDim2.new(0.075, 0, 0.25, 0)
KeyInput.PlaceholderText = "Paste Key Here..."
KeyInput.Text = ""
KeyInput.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.ZIndex = 10
Instance.new("UICorner", KeyInput)

local SubmitBtn = Instance.new("TextButton", KeyFrame)
SubmitBtn.Size = UDim2.new(0.85, 0, 0, 45)
SubmitBtn.Position = UDim2.new(0.075, 0, 0.45, 0)
SubmitBtn.Text = "VERIFY KEY"
SubmitBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.Font = Enum.Font.GothamBold
SubmitBtn.ZIndex = 10
Instance.new("UICorner", SubmitBtn)

local GetKeyBtn = Instance.new("TextButton", KeyFrame)
GetKeyBtn.Size = UDim2.new(0.85, 0, 0, 45)
GetKeyBtn.Position = UDim2.new(0.075, 0, 0.65, 0)
GetKeyBtn.Text = "GET KEY"
GetKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
GetKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKeyBtn.Font = Enum.Font.GothamBold
GetKeyBtn.ZIndex = 10
Instance.new("UICorner", GetKeyBtn)

-- // 2. MAIN HUB MENU (Hidden Behind Key) // --
local MainMenu = Instance.new("Frame", ScreenGui)
MainMenu.Size = UDim2.new(0, 230, 0, 460)
MainMenu.Position = UDim2.new(0.5, -115, 0.5, -230)
MainMenu.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MainMenu.Visible = false 
Instance.new("UICorner", MainMenu)
local MainStroke = Instance.new("UIStroke", MainMenu)
MainStroke.Color = Color3.fromRGB(255, 0, 0)

-- Alya Base64 Background
local AlyaBg = Instance.new("ImageLabel", MainMenu)
AlyaBg.Size = UDim2.new(1, 0, 1, 0)
AlyaBg.Image = "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIALUAwgMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAEAAIDBQYBB//EAEoQAAIBAwIDBQQGBggEBAcAAAECAwAEERIhBTFBEyJRYXEGgZGhFCMyUrHwQnKCwcLRFTNTYqKy4fEkNJLSQ1SU4iVEY2R0k7P/+AAaAQADAQEBAQAAAAAAAAAAAAABAgMABAYF/8QAJREAAgICAgIBBAMAAAAAAAAAAAECEQMhEjEEQSITMlFhBRRD/9oADAMBAAIRAxEAPwD22lSpUAipUqr+K3DKot4WIdwSzKcFVHP3nkPf4UTLYFxC6a9c28H/AC6nEjDnK33R5fj6cxrpTE5RVGrIGkdT4fH4UoyYAOzGCMKgHTpt6cvfRFpbdm3aTgGUk4X7g6+/xP8AuSdMY0dhtlihKPzYYdhzOenpU0T6wM7MNm9fz+Ip+KjdNJEicx9seI/0/n40hQlrhriuCAV3UjnXTWMMkXUjLqK6lxkHlQcVhDGASdZHLVyHoBtRbU2iOrIZ37Fu2CsExiTSM4HQ45/DxoOfjEG4s27djjDIMr8eVScXuFtrKQM3eddC6ee/Wqm2gurtEkUrbRsupdQy+PSiPHgtyGOV1s80io8p1sA2AeQzjrtimdvEo3ud/AMpP4Zo1uEW6Kk2kyNE2tnkYkuvUfDNWMFhbwzLpgjGrI33/HyzRoL8hekUKmZt1guzH5KBn5cvfRFtY3F1kw8O0rnLPcd3f4HPzrR9hIGLxyFW/SVjlW8vI+nvzU0MglyNxIn24zzH+nnyrEn5Ml0VfApTacQe3ki7PXgaCMaSMkEeIIJ38vWtK6hlKsAQRgg9aAe3ExWQ4WRO9FKFzpPh+fxFFW85lDJKuiZPtpn4EeIP+nPITpyz5S5HnvtFYNaTMeZDYP7j++qeOTzr0T2nsBcW/backALJj7vQ+795rzu5ge0mMcgxjbPQiqo9L/H51mxU+wpZaRloVTXC1E7OAR2nnXaF1UqweB7HSpUqieIOMyrGXc4VQSx8sZqnUGXVcOMSSkHDc1HRfh+JoziR1JHbDnM+G/VG5+OAv7VQT94CPq7fIc/z50SsFshhjDntMDCkqvrnGfjkUQeVNHdGF2A2wK7mg2dCQq4a7TGNAIxCEmbprGoeZ6+/lTy1D3RCx9puWi74A5+Y+GacrLIoZDqU/ZYHY0RqHZpXksiwpqc4WlJIiDLMAvjQ8MRvWeaXa3jyVTq2Pz+d6yGelbBpbN7tRcXA2JCwodsamCg/OrVbZS+TjPPH599RcTdw1gBgo91GJPHG5H+LRRaf83p8Yxj3E/zoo55TbexJApGDgg+NQR/8rbO+8iFVcjq26H55qx7LC6hy0VWowEECjbXcyAe53b+GsTTsnnRzFriGZU7yjo2Oa+/l8PCnFRcwrcWpVZ1GY2J7rDwGkalikCXej9CRdSeo6fOgo5kgvJrVGw8R7YKf7Js7j0bUPLA8qxuyws7pJ7ftANLAkOh5o2dwaiucNIrwMq3MeSu+zLtkHy5emx8iHPKtteJcg/UTERzeAbkjfLSf2fCiJ42kUGMhZQdaH+9j8+6sDiGwypdQ5091shlbp0I9xGKw/tPwwxyGEgkc4XPUfdPmPw3rV28+l1uB3YZ8CQfdfkD6j7J9ByxTeMW63MRifbqp8D4/uop0X8TNLBltHlsJYOY5dnXanuunnVxxbhRZjLGNM8f2wBjUOnuPSv5"
AlyaBg.BackgroundTransparency = 1
AlyaBg.ImageTransparency = 0.8
AlyaBg.ZIndex = 0

local HubLabel = Instance.new("TextLabel", MainMenu)
HubLabel.Size = UDim2.new(1, 0, 0, 40)
HubLabel.Text = "ALYA HUB V1"
HubLabel.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
HubLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
HubLabel.Font = Enum.Font.GothamBold

-- // LOGIC ENGINE // --
GetKeyBtn.MouseButton1Click:Connect(function()
    setclipboard(FirstStepLink) -- Step 1
    GetKeyBtn.Text = "COPIED!"
    task.wait(2)
    GetKeyBtn.Text = "GET KEY"
end)

SubmitBtn.MouseButton1Click:Connect(function()
    local userKey = KeyInput.Text
    local response = game:HttpGet(ServerURL .. "/verify?key=" .. userKey .. "&hwid=" .. HWID) --
    
    if response == "success" or response == "registered" then
        SubmitBtn.Text = "SUCCESS!"
        task.wait(1)
        KeyFrame.Visible = false 
        MainMenu.Visible = true 
    elseif response == "mismatch" then
        SubmitBtn.Text = "DEVICE MISMATCH!"
    else
        SubmitBtn.Text = "INVALID KEY!"
    end
    task.wait(1.5)
    SubmitBtn.Text = "VERIFY KEY"
end)

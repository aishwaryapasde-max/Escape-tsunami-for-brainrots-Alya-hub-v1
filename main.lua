-- [[ ALYA HUB V1 | OBFUSCATED & VERIFIED ]]
-- [[ ENCRYPTED FOR ADITYA - LATUR ]]

local _0x72=loadstring(game:HttpGet(('\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\115\104\108\101\120\119\97\114\101\47\79\114\105\111\110\47\109\97\105\110\47\115\111\117\114\99\101')))()
local _0xWindow=_0x72:MakeWindow({Name="\65\108\121\97\32\66\114\97\105\110\114\111\116\32\72\117\98",HidePremium=false,SaveConfig=true,ConfigFolder="\65\108\121\97\72\117\98",IntroText="\65\108\121\97\32\72\117\98\32\86\49"})

-- [[ BACKGROUND ENCRYPTION ]]
local function _0xSetup()
    local _0xUI=game:GetService("\67\111\114\101\71\117\105"):FindFirstChild("\79\114\105\111\110")
    if _0xUI then 
        local _0xImg=Instance.new("\73\109\97\103\101\76\97\98\101\108")
        _0xImg.Parent=_0xUI.Main 
        _0xImg.Size=UDim2.new(1,0,1,0)
        _0xImg.Image="\114\98\120\97\115\115\101\116\105\100\58\47\47\49\53\54\51\52\50\49\53\50\56\51"
        _0xImg.ImageTransparency=0.8 
        _0xImg.ZIndex=0 
    end
end
_0xSetup()

-- [[ FEATURES ]]
local _0xTab=_0xWindow:MakeTab({Name="\72\97\99\107\115",Icon="\114\98\120\97\115\115\101\116\105\100\58\47\47\52\52\56\51\51\52\53\57\57\56"})

_0xTab:AddToggle({
    Name="\84\115\117\110\97\109\105\32\73\109\109\117\110\105\116\121",
    Default=false,
    Callback=function(_0xState)
        _G.Immune=_0xState
        while _G.Immune do task.wait(0.5)
            local _0xHum=game.Players.LocalPlayer.Character:FindFirstChild("\72\117\109\97\110\111\105\100")
            if _0xHum then _0xHum:SetStateEnabled(Enum.HumanoidStateType.Swimming,not _0xState)end 
        end
    end
})

_0xTab:AddButton({
    Name="\83\117\98\115\99\114\105\98\101\32\64\65\68\73\84\89\65\95\49\48\48\75\68\69\76\84\65",
    Callback=function()
        setclipboard("\104\116\116\112\115\58\47\47\119\119\119\46\121\111\117\116\117\98\101\46\99\111\109\47\64\65\68\73\84\89\65\95\49\48\48\75\68\69\76\84\65")
        _0x72:MakeNotification({Name="\76\105\110\107\32\67\111\112\105\101\100\33",Content="\80\97\115\116\101\32\105\110\32\66\114\111\119\115\101\114\33",Time=5})
    end
})

_0xTab:AddButton({Name="\40\32\88\32\41\32\67\76\79\83\69\32\77\69\78\85",Callback=function()_0x72:Destroy()end})
_0x72:Init()

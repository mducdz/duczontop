local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

-- 🌌 INTRO GUI
local gui = Instance.new("ScreenGui")
gui.Name = "DUCZIntro"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local bg = Instance.new("Frame")
bg.Size = UDim2.new(1,0,1,0)
bg.BackgroundColor3 = Color3.fromRGB(0,0,0)
bg.BackgroundTransparency = 0.2
bg.Parent = gui

local logo = Instance.new("ImageLabel")
logo.Parent = gui
logo.AnchorPoint = Vector2.new(0.5,0.5)
logo.Position = UDim2.new(0.5,0,0.5,0)
logo.Size = UDim2.new(0,0,0,0)
logo.BackgroundTransparency = 1
logo.Image = "http://www.roblox.com/asset/?id=77111304194141"
logo.ImageTransparency = 1

TweenService:Create(
    logo,
    TweenInfo.new(1.5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out),
    {Size = UDim2.new(0,400,0,400), ImageTransparency = 0}
):Play()

task.spawn(function()
    while logo.Parent do
        logo.Rotation += 0.5
        task.wait(0.01)
    end
end)

local msg = Instance.new("TextLabel")
msg.Parent = gui
msg.AnchorPoint = Vector2.new(0.5,0)
msg.Position = UDim2.new(0.5,0,0.8,0)
msg.Size = UDim2.new(0,800,0,100)
msg.BackgroundTransparency = 1
msg.Text = "DUCZ Hub"
msg.TextColor3 = Color3.fromRGB(0,255,255)
msg.Font = Enum.Font.GothamBlack
msg.TextScaled = true
msg.TextStrokeTransparency = 0
msg.TextTransparency = 1

TweenService:Create(msg, TweenInfo.new(1.2), {TextTransparency = 0}):Play()

task.wait(4)

TweenService:Create(logo, TweenInfo.new(1.2), {ImageTransparency = 1}):Play()
TweenService:Create(msg, TweenInfo.new(1.2), {TextTransparency = 1}):Play()
TweenService:Create(bg, TweenInfo.new(1.2), {BackgroundTransparency = 1}):Play()
task.wait(1.5)
gui:Destroy()

------------------------------------------------------------
-- 🎛 MAIN UI BUTTON
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = player:WaitForChild("PlayerGui")

local ImageButton = Instance.new("ImageButton")
ImageButton.Parent = ScreenGui
ImageButton.Position = UDim2.new(0.1,0,0.15,0)
ImageButton.Size = UDim2.new(0,50,0,50)
ImageButton.BackgroundColor3 = Color3.fromRGB(0,0,0)
ImageButton.BorderSizePixel = 0
ImageButton.Image = "http://www.roblox.com/asset/?id=77111304194141"

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1,10)
UICorner.Parent = ImageButton

local vim = game:GetService("VirtualInputManager")
ImageButton.MouseButton1Click:Connect(function()
    vim:SendKeyEvent(true, Enum.KeyCode.End, false, game)
    task.wait(0.05)
    vim:SendKeyEvent(false, Enum.KeyCode.End, false, game)
end)

------------------------------------------------------------
-- 📦 LOAD FLUENT
repeat task.wait() until game:IsLoaded()

local Fluent = loadstring(game:HttpGet(
    "https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"
))()

local Window = Fluent:CreateWindow({
    Title = "DUCZ HUB",
    SubTitle = "by DUCZ",
    TabWidth = 200,
    Size = UDim2.fromOffset(550,400),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.End
})

-- Tabs (FIX ĐỦ DẤU PHẨY)
local Tabs = {
    Main0 = Window:AddTab({Title="Thông Tin"}),
    Main1 = Window:AddTab({Title="Script Main"}),
    Main2 = Window:AddTab({Title="Script Kaitun"}),
    Main3 = Window:AddTab({Title="Script Auto Bounty"}),
    Main4 = Window:AddTab({Title="Script Hop Sever"})
}

------------------------------------------------------------
-- TAB 0
Tabs.Main0:AddButton({
    Title="Youtuber",
    Description="DUCZ",
    Callback=function()
        setclipboard("https://youtube.com/@grai2")
    end
})

------------------------------------------------------------
-- TAB 1: SCRIPT MAIN
Tabs.Main1:AddButton({Title="w-azure Hub",Callback=function()
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/85e904ae1ff30824c1aa007fc7324f8f.lua"))()
end})

Tabs.Main1:AddButton({Title="Min Hub",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinXt2Eng"))()
end})

Tabs.Main1:AddButton({Title="Speed Hub X",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua",true))()
end})

Tabs.Main1:AddButton({Title="Blue X Hub",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
end})

Tabs.Main1:AddButton({Title="Tsoul Hub",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tsuo7/TsuoHub/main/Tsuoscripts"))()
end})

Tabs.Main1:AddButton({Title="Volcano Hub V3",Callback=function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/indexeduu/BF-NewVer/refs/heads/main/V3New.lua"))()
end})

Tabs.Main1:AddButton({Title="Hoho Hub",Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
end})

------------------------------------------------------------
-- TAB 2: KAITUN
Tabs.Main2:AddButton({
    Title="Quartz Kaitun Hub",
    Callback=function()
        getgenv().Mode="OneClick"
        getgenv().Setting={
            ["Team"]="Pirates",
            ["FucusOnLevel"]=true,
            ["Fruits"]={
                ["Primary"]={"Dough-Dough","Dragon-Dragon","Buddha-Buddha"},
                ["Normal"]={"Flame-Flame","Light-Light","Magma-Magma"}
            },
            ["IdleCheck"]=150
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/Loader.lua"))()
    end
})

Tabs.Main2:AddButton({
    Title="Kaitun Hiru Hub",
    Callback=function()
        _G.Quest={['RGB Aura Haki']=true,['Pull Lever']=true,['Quest Dough Awaken']=true}
        _G.Race={['Select Race']={'Human','Fishman','Skypiea','Mink'},['Lock Race']=true,['Evo Race V3']=true}
        _G.Melee={['Godhuman']=true}
        _G.Setting={['FPS Booster']=true}
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NGUYENVUDUY1/Super/refs/heads/main/Kaitun.lua"))()
    end
})

Tabs.Main2:AddButton({
    Title="Tsuo Kaitun Hub",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Tsuo7/TsuoHub/main/TsuohubKaitun"))()
    end
})

------------------------------------------------------------
-- TAB 3: AUTO BOUNTY
Tabs.Main3:AddButton({
    Title="Blue Pray Hub",
    Callback=function()
        getgenv().Setting={["Team"]="Pirates",["Skip Race V4"]=true}
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Ghost-1198/AutoBounty/main/AutoBounty.lua"))()
    end
})

------------------------------------------------------------
-- TAB 4: HOP SERVER
Tabs.Main4:AddButton({
    Title="Teddy Hop Sever Hub (key:teddyhubfreemium)",
    Callback=function()
        repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))()
    end
})

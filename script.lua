-- Simple Loader GUI (No Key System)
local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local loadButton = Instance.new("TextButton")

gui.Name = "CustomLoader"
gui.Parent = game.CoreGui

frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Parent = gui

title.Size = UDim2.new(1, 0, 0.3, 0)
title.BackgroundTransparency = 1
title.Text = "MY CUSTOM HUB"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextScaled = true
title.Parent = frame

loadButton.Size = UDim2.new(0.8, 0, 0.4, 0)
loadButton.Position = UDim2.new(0.1, 0, 0.5, 0)
loadButton.Text = "Load Script"
loadButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
loadButton.TextColor3 = Color3.fromRGB(255, 255, 255)
loadButton.Font = Enum.Font.Gotham
loadButton.TextScaled = true
loadButton.Parent = frame

-- เมื่อกดปุ่ม จะโหลดสคริปต์หลักจาก GitHub/Pastebin
loadButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/main.lua"))()
end)

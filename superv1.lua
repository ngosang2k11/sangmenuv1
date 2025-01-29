-- Tạo GUI
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MainButton = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local HideButton = Instance.new("TextButton")

-- Tiêu đề
local Title = Instance.new("TextLabel")
local StatusLabel = Instance.new("TextLabel")
local OnlineStatus = Instance.new("TextLabel")

-- Nút chức năng
local Button1 = Instance.new("TextButton")
local Button2 = Instance.new("TextButton")
local Button3 = Instance.new("TextButton")

-- Toggle công tắc
local Toggle1 = Instance.new("TextButton")
local Toggle2 = Instance.new("TextButton")
local Toggle3 = Instance.new("TextButton")

-- Menu footer
local Footer = Instance.new("TextLabel")

-- Gắn GUI vào Player
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Frame chính
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.Size = UDim2.new(0, 500, 0, 350)
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -175)
MainFrame.Visible = false
MainFrame.BorderSizePixel = 2
MainFrame.BorderColor3 = Color3.fromRGB(0, 255, 255)

-- Nút Main
MainButton.Name = "MainButton"
MainButton.Parent = ScreenGui
MainButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainButton.Size = UDim2.new(0, 100, 0, 50)
MainButton.Position = UDim2.new(0, 10, 0.5, -25)
MainButton.Text = "Main"
MainButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MainButton.Font = Enum.Font.SourceSansBold
MainButton.TextSize = 20

-- Nút đóng
CloseButton.Name = "CloseButton"
CloseButton.Parent = MainFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -40, 0, 10)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Nút ẩn
HideButton.Name = "HideButton"
HideButton.Parent = MainFrame
HideButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
HideButton.Size = UDim2.new(0, 30, 0, 30)
HideButton.Position = UDim2.new(1, -80, 0, 10)
HideButton.Text = "-"
HideButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Tiêu đề
Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, -60, 0, 30)
Title.Position = UDim2.new(0, 10, 0, 10)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "MENU SANG IOS"
Title.TextSize = 24
Title.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Trạng thái
StatusLabel.Name = "StatusLabel"
StatusLabel.Parent = MainFrame
StatusLabel.BackgroundTransparency = 1
StatusLabel.Size = UDim2.new(0, 120, 0, 20)
StatusLabel.Position = UDim2.new(0.05, 0, 0.2, 0)
StatusLabel.Font = Enum.Font.SourceSans
StatusLabel.Text = "Trạng Thái:"
StatusLabel.TextSize = 18
StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

OnlineStatus.Name = "OnlineStatus"
OnlineStatus.Parent = MainFrame
OnlineStatus.BackgroundTransparency = 1
OnlineStatus.Size = UDim2.new(0, 100, 0, 20)
OnlineStatus.Position = UDim2.new(0.3, 0, 0.2, 0)
OnlineStatus.Font = Enum.Font.SourceSansBold
OnlineStatus.Text = "Online"
OnlineStatus.TextSize = 18
OnlineStatus.TextColor3 = Color3.fromRGB(0, 255, 0)

-- Nút chức năng 1
Button1.Name = "Button1"
Button1.Parent = MainFrame
Button1.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Button1.Size = UDim2.new(0.6, -10, 0, 40)
Button1.Position = UDim2.new(0.05, 0, 0.35, 0)
Button1.Text = "INCREASE RANDOM RATE"
Button1.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Toggle 1
Toggle1.Name = "Toggle1"
Toggle1.Parent = MainFrame
Toggle1.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Toggle1.Size = UDim2.new(0.1, 0, 0, 40)
Toggle1.Position = UDim2.new(0.75, 0, 0.35, 0)
Toggle1.Text = "OFF"
Toggle1.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Nút chức năng 2
Button2.Name = "Button2"
Button2.Parent = MainFrame
Button2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Button2.Size = UDim2.new(0.6, -10, 0, 40)
Button2.Position = UDim2.new(0.05, 0, 0.5, 0)
Button2.Text = "RANDOM POWERFUL DEVIL FRUIT"
Button2.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Toggle 2
Toggle2.Name = "Toggle2"
Toggle2.Parent = MainFrame
Toggle2.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Toggle2.Size = UDim2.new(0.1, 0, 0, 40)
Toggle2.Position = UDim2.new(0.75, 0, 0.5, 0)
Toggle2.Text = "OFF"
Toggle2.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Nút chức năng 3
Button3.Name = "Button3"
Button3.Parent = MainFrame
Button3.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Button3.Size = UDim2.new(0.6, -10, 0, 40)
Button3.Position = UDim2.new(0.05, 0, 0.65, 0)
Button3.Text = "RANDOM BOT"
Button3.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Toggle 3
Toggle3.Name = "Toggle3"
Toggle3.Parent = MainFrame
Toggle3.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Toggle3.Size = UDim2.new(0.1, 0, 0, 40)
Toggle3.Position = UDim2.new(0.75, 0, 0.65, 0)
Toggle3.Text = "OFF"
Toggle3.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Footer
Footer.Name = "Footer"
Footer.Parent = MainFrame
Footer.BackgroundTransparency = 1
Footer.Size = UDim2.new(1, 0, 0, 30)
Footer.Position = UDim2.new(0, 0, 1, -30)
Footer.Font = Enum.Font.SourceSans
Footer.Text = "MENU SANG IOS TĂNG TỈ LỆ RANDOM"
Footer.TextSize = 18
Footer.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Chức năng hiển thị/ẩn menu
MainButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

HideButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
end)

-- Toggle chức năng
local function toggle(button)
    if button.Text == "OFF" then
        button.Text = "ON"
        button.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    else
        button.Text = "OFF"
        button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    end
end

Toggle1.MouseButton1Click:Connect(function()
    toggle(Toggle1)
end)

Toggle2.MouseButton1Click:Connect(function()
    toggle(Toggle2)
end)

Toggle3.MouseButton1Click:Connect(function()
    toggle(Toggle3)
end)

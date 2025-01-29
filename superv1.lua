-- Tạo GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local MainButton = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local HideButton = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local StatusLabel = Instance.new("TextLabel")
local OnlineLabel = Instance.new("TextLabel")

-- Nút chức năng
local Button1 = Instance.new("TextButton")
local Button2 = Instance.new("TextButton")
local Button3 = Instance.new("TextButton")

-- Các toggle
local Toggle1 = Instance.new("TextButton")
local Toggle2 = Instance.new("TextButton")
local Toggle3 = Instance.new("TextButton")

-- Gắn GUI vào player
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Frame chính
Frame.Name = "MainFrame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.BorderSizePixel = 2
Frame.BorderColor3 = Color3.fromRGB(0, 255, 255)
Frame.Size = UDim2.new(0, 400, 0, 300)
Frame.Position = UDim2.new(0.5, -200, 0.5, -150)
Frame.Visible = false

-- Nút Main
MainButton.Name = "MainButton"
MainButton.Parent = ScreenGui
MainButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainButton.Size = UDim2.new(0, 100, 0, 40)
MainButton.Position = UDim2.new(0, 20, 0.5, -20)
MainButton.Text = "Main"
MainButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Nút đóng
CloseButton.Name = "CloseButton"
CloseButton.Parent = Frame
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0, 5)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Nút ẩn
HideButton.Name = "HideButton"
HideButton.Parent = Frame
HideButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
HideButton.Size = UDim2.new(0, 30, 0, 30)
HideButton.Position = UDim2.new(1, -70, 0, 5)
HideButton.Text = "-"
HideButton.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Tiêu đề
Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, -80, 0, 30)
Title.Position = UDim2.new(0, 10, 0, 5)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "MENU SANG IOS"
Title.TextSize = 24
Title.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Trạng thái
StatusLabel.Name = "StatusLabel"
StatusLabel.Parent = Frame
StatusLabel.BackgroundTransparency = 1
StatusLabel.Size = UDim2.new(0.4, 0, 0, 20)
StatusLabel.Position = UDim2.new(0.05, 0, 0.15, 0)
StatusLabel.Text = "Trạng Thái: "
StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

OnlineLabel.Name = "OnlineLabel"
OnlineLabel.Parent = Frame
OnlineLabel.BackgroundTransparency = 1
OnlineLabel.Size = UDim2.new(0.4, 0, 0, 20)
OnlineLabel.Position = UDim2.new(0.3, 0, 0.15, 0)
OnlineLabel.Text = "Online"
OnlineLabel.TextColor3 = Color3.fromRGB(0, 255, 255)

-- Nút chức năng 1
Button1.Name = "Button1"
Button1.Parent = Frame
Button1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Button1.Size = UDim2.new(0.5, -10, 0, 40)
Button1.Position = UDim2.new(0.05, 0, 0.3, 0)
Button1.Text = "INCREASE RANDOM RATE"
Button1.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Toggle 1
Toggle1.Name = "Toggle1"
Toggle1.Parent = Frame
Toggle1.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Toggle1.Size = UDim2.new(0.1, 0, 0, 40)
Toggle1.Position = UDim2.new(0.7, 0, 0.3, 0)
Toggle1.Text = "OFF"
Toggle1.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Nút chức năng 2
Button2.Name = "Button2"
Button2.Parent = Frame
Button2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Button2.Size = UDim2.new(0.5, -10, 0, 40)
Button2.Position = UDim2.new(0.05, 0, 0.5, 0)
Button2.Text = "RANDOM POWERFUL DEVIL FRUIT"
Button2.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Toggle 2
Toggle2.Name = "Toggle2"
Toggle2.Parent = Frame
Toggle2.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Toggle2.Size = UDim2.new(0.1, 0, 0, 40)
Toggle2.Position = UDim2.new(0.7, 0, 0.5, 0)
Toggle2.Text = "OFF"
Toggle2.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Nút chức năng 3
Button3.Name = "Button3"
Button3.Parent = Frame
Button3.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Button3.Size = UDim2.new(0.5, -10, 0, 40)
Button3.Position = UDim2.new(0.05, 0, 0.7, 0)
Button3.Text = "RANDOM BOT"
Button3.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Toggle 3
Toggle3.Name = "Toggle3"
Toggle3.Parent = Frame
Toggle3.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Toggle3.Size = UDim2.new(0.1, 0, 0, 40)
Toggle3.Position = UDim2.new(0.7, 0, 0.7, 0)
Toggle3.Text = "OFF"
Toggle3.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Chức năng mở/đóng menu
MainButton.MouseButton1Click:Connect(function()
    Frame.Visible = not Frame.Visible
end)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

HideButton.MouseButton1Click:Connect(function()
    Frame.Visible = false
end)

-- Chức năng toggle
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

-- Tăng tỷ lệ trái ác quỷ thần thoại
Button1.MouseButton1Click:Connect(function()
    if Toggle1.Text == "ON" then
        local devilFruitsNormal = {"Portal", "T-Rex", "Mammoth", "Venom"}
        local randomFruit = devilFruitsNormal[math.random(1, #devilFruitsNormal)]
        print("Tăng tỷ lệ trái ác quỷ thần thoại: " .. randomFruit)
    else
        print("Chức năng chưa bật!")
    end
end)

-- Tăng tỷ lệ trái ác quỷ thần thoại mạnh mẽ
Button2.MouseButton1Click:Connect(function()
    if Toggle2.Text == "ON" then
        local devilFruitsMythical = {"Kitsune", "Portal", "Dragon", "Control"}
        local randomFruit = devilFruitsMythical[math.random(1, #devilFruitsMythical)]
        print("Tăng tỷ lệ trái ác quỷ thần thoại mạnh mẽ: " .. randomFruit)
    else
        print("Chức năng chưa bật!")
    end
end)

-- Tăng tỷ lệ trái ác quỷ bot
Button3.MouseButton1Click:Connect(function()
    if Toggle3.Text == "ON" then
        if math.random(1, 100) <= 98 then
            local mythicalFruit = {"Kitsune", "Portal", "Dragon", "Control"}
            local randomFruit = mythicalFruit[math.random(1, #mythicalFruit)]
            print("Trái ác quỷ thần thoại rơi: " .. randomFruit)
        else
            print("Không có trái ác quỷ thần thoại rơi.")
        end
    else
        print("Chức năng chưa bật!")
    end
end)

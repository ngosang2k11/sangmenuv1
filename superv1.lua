local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ProximityPromptService = game:GetService("ProximityPromptService")

local player = Players.LocalPlayer
local playerGui = player:FindFirstChild("PlayerGui")

-- Tạo GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SangBloxFruitMenu"
screenGui.Parent = playerGui

-- Tạo Logo (Nút mở/ẩn menu)
local logoButton = Instance.new("ImageButton")
logoButton.Name = "LogoButton"
logoButton.Size = UDim2.new(0, 43, 0, 43)
logoButton.Position = UDim2.new(0, 10, 0.5, -50)  -- Bên trái màn hình
logoButton.Image = "rbxassetid://126101456053607"
logoButton.Parent = screenGui

-- Tạo menu chính
local menuFrame = Instance.new("Frame")
menuFrame.Size = UDim2.new(0, 300, 0, 200)
menuFrame.Position = UDim2.new(0.5, -150, 0.4, 0)  -- Giữa màn hình
menuFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
menuFrame.Visible = false
menuFrame.Parent = screenGui

-- Tiêu đề
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0.2, 0)
titleLabel.Text = "SANG BLOX FRUIT"
titleLabel.TextScaled = true
titleLabel.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
titleLabel.Parent = menuFrame

-- Công tắc VIP
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0.8, 0, 0.3, 0)
toggleButton.Position = UDim2.new(0.1, 0, 0.5, 0)
toggleButton.Text = "F VIP: TẮT"
toggleButton.TextScaled = true
toggleButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
toggleButton.Parent = menuFrame

-- Biến trạng thái
local isVipActive = false

-- Chức năng bật/tắt menu
logoButton.MouseButton1Click:Connect(function()
    menuFrame.Visible = not menuFrame.Visible
end)

-- Chức năng bật/tắt VIP
toggleButton.MouseButton1Click:Connect(function()
    isVipActive = not isVipActive
    if isVipActive then
        toggleButton.Text = "F VIP: BẬT"
        toggleButton.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
    else
        toggleButton.Text = "F VIP: TẮT"
        toggleButton.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
    end
end)

-- Kiểm tra nếu người chơi đứng gần NPC Blox Fruit Gacha
local function isNearGachaNPC()
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        for _, npc in pairs(workspace:GetDescendants()) do
            if npc:IsA("Model") and npc.Name == "Blox Fruit Gacha" then
                local npcRoot = npc:FindFirstChild("HumanoidRootPart")
                if npcRoot then
                    local distance = (character.HumanoidRootPart.Position - npcRoot.Position).Magnitude
                    if distance <= 5 then  -- Kiểm tra khoảng cách (5 studs)
                        return true
                    end
                end
            end
        end
    end
    return false
end

-- Khi người chơi tương tác với NPC
ProximityPromptService.PromptTriggered:Connect(function(prompt, playerWhoTriggered)
    if playerWhoTriggered == player and prompt.Parent and prompt.Parent.Parent and prompt.Parent.Parent.Name == "Blox Fruit Gacha" then
        if isNearGachaNPC() then
            if isVipActive then
                -- Tăng tỷ lệ ra trái hiếm
                local rareChance = 100  -- Tỷ lệ cao
                local commonChance = 0 -- Tỷ lệ thấp

                local randomChance = math.random(1, 100)
                if randomChance <= rareChance then
                    print(player.Name .. " nhận được Trái Hiếm!")
                else
                    print(player.Name .. " nhận được Trái Thường!")
                end
            else
                -- Tỷ lệ bình thường
                print(player.Name .. " quay bình thường.")
            end
        end
    end
end)

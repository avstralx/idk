-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local ExploitFrame = Instance.new("Frame")
local CloseFrame = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local OpenMain = Instance.new("Frame")
local TextButton_3 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ExploitFrame.Name = "ExploitFrame"
ExploitFrame.Parent = ScreenGui
ExploitFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ExploitFrame.Position = UDim2.new(0.413580209, 0, 0.155828208, 0)
ExploitFrame.Size = UDim2.new(0, 642, 0, 552)

CloseFrame.Name = "CloseFrame"
CloseFrame.Parent = ExploitFrame
CloseFrame.BackgroundColor3 = Color3.fromRGB(195, 0, 0)
CloseFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseFrame.BorderSizePixel = 0
CloseFrame.Size = UDim2.new(0, 642, 0, 36)
CloseFrame.Font = Enum.Font.SciFi
CloseFrame.Text = "Close"
CloseFrame.TextColor3 = Color3.fromRGB(213, 213, 213)
CloseFrame.TextScaled = true
CloseFrame.TextSize = 14.000
CloseFrame.TextWrapped = true

TextLabel.Parent = ExploitFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0186915882, 0, 0.0833333358, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.Text = "Walkspeed"
TextLabel.TextColor3 = Color3.fromRGB(94, 94, 94)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = ExploitFrame
TextButton.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Position = UDim2.new(0.253894091, 0, 0.190217391, 0)
TextButton.Size = UDim2.new(0, 43, 0, 41)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "+"
TextButton.TextColor3 = Color3.fromRGB(0, 189, 6)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = ExploitFrame
TextButton_2.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.Position = UDim2.new(0.0186915882, 0, 0.190217391, 0)
TextButton_2.Size = UDim2.new(0, 46, 0, 41)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "-"
TextButton_2.TextColor3 = Color3.fromRGB(225, 0, 3)
TextButton_2.TextSize = 100.000
TextButton_2.TextWrapped = true

TextLabel_2.Parent = ExploitFrame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.Position = UDim2.new(0.0903426781, 0, 0.190217391, 0)
TextLabel_2.Size = UDim2.new(0, 105, 0, 41)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "16"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

OpenMain.Name = "OpenMain"
OpenMain.Parent = ScreenGui
OpenMain.Active = true
OpenMain.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
OpenMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenMain.Position = UDim2.new(0, 0, 0.539877295, 0)
OpenMain.Size = UDim2.new(0, 100, 0, 47)
OpenMain.Visible = false

TextButton_3.Parent = OpenMain
TextButton_3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextButton_3.Size = UDim2.new(0, 100, 0, 42)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Open"
TextButton_3.TextColor3 = Color3.fromRGB(94, 94, 94)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

-- Scripts:

local function COXIJMA_fake_script() -- CloseFrame.LocalScript 
	local script = Instance.new('LocalScript', CloseFrame)

	script.Parent.MouseButton1Down:connect(function()
		script.Parent.Parent.Visible = false
		script.Parent.Parent.Parent.OpenMain.Visible = true
	end)
end
coroutine.wrap(COXIJMA_fake_script)()
local function QYCNYX_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local label = script.Parent.Parent.TextLabel ---defines the number
	
	
	script.Parent.MouseButtom1Click:Connect(function() --- when the button is clicked it calls this function
		game.Players.LocalPlayer.character.Humanoid.WalkSpeed = game.Players.LocalPlayer.character.Humanoid.WalkSpeed +5 --- defines the player and addition to walk speed
		label.Text = game.Players.LocalPlayer.character.Humanoid.WalkSpeed --- tells the text label that displays walk speed to update
	end)
end
coroutine.wrap(QYCNYX_fake_script)()
local function XHSMBDS_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	local label = script.Parent.Parent.TextLabel ---defines the number
	
	
	script.Parent.MouseButtom1Click:Connect(function() --- when the button is clicked it calls this function
		game.Players.LocalPlayer.character.Humanoid.WalkSpeed = game.Players.LocalPlayer.character.Humanoid.WalkSpeed -5 --- defines the player and addition to walk speed
		label.Text = game.Players.LocalPlayer.character.Humanoid.WalkSpeed --- tells the text label that displays walk speed to update
	end)
end
coroutine.wrap(XHSMBDS_fake_script)()
local function BUBEY_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	script.Parent.MouseButton1Down:connect(function()
		script.Parent.Parent.Visible = false
		script.Parent.Parent.Parent["ExploitFrame"].Visible = true
	end)
end
coroutine.wrap(BUBEY_fake_script)()

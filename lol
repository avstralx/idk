-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local ExploitFrame = Instance.new("Frame")
local CloseFrame = Instance.new("TextButton")
local OpenMain = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

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
CloseFrame.Text = ""
CloseFrame.TextColor3 = Color3.fromRGB(213, 213, 213)
CloseFrame.TextScaled = true
CloseFrame.TextSize = 14.000
CloseFrame.TextWrapped = true

OpenMain.Name = "OpenMain"
OpenMain.Parent = ScreenGui
OpenMain.Active = true
OpenMain.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
OpenMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenMain.Position = UDim2.new(0, 0, 0.539877295, 0)
OpenMain.Size = UDim2.new(0, 100, 0, 47)
OpenMain.Visible = false

TextButton.Parent = OpenMain
TextButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextButton.Size = UDim2.new(0, 100, 0, 42)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Open"
TextButton.TextColor3 = Color3.fromRGB(94, 94, 94)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

-- Scripts:

local function MVMV_fake_script() -- CloseFrame.LocalScript 
	local script = Instance.new('LocalScript', CloseFrame)

	script.Parent.MouseButton1Down:connect(function()
		script.Parent.Parent.Visible = false
		script.Parent.Parent.Parent.OpenMain.Visible = true
	end)
end
coroutine.wrap(MVMV_fake_script)()
local function GTDVA_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Down:connect(function()
		script.Parent.Parent.Visible = false
		script.Parent.Parent.Parent["ExploitFrame"].Visible = true
	end)
end
coroutine.wrap(GTDVA_fake_script)()

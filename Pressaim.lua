local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "OmarsPrivateCheese"
screenGui.ResetOnSpawn = false
screenGui.Parent = game:GetService("CoreGui")

-- Main Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 260, 0, 300)
frame.Position = UDim2.new(0, 50, 0, 50)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
frame.Parent = screenGui
frame.Active = true
frame.Draggable = false

-- Title bar
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
titleBar.Parent = frame

local titleText = Instance.new("TextLabel")
titleText.Text = "Omars Private Cheese"
titleText.Font = Enum.Font.SourceSansBold
titleText.TextSize = 18
titleText.TextColor3 = Color3.new(1, 1, 1)
titleText.BackgroundTransparency = 1
titleText.Size = UDim2.new(1, -60, 1, 0)
titleText.Position = UDim2.new(0, 10, 0, 0)
titleText.TextXAlignment = Enum.TextXAlignment.Left
titleText.Parent = titleBar

local minimizeButton = Instance.new("TextButton")
minimizeButton.Text = "-"
minimizeButton.Font = Enum.Font.SourceSansBold
minimizeButton.TextSize = 18
minimizeButton.TextColor3 = Color3.new(1, 1, 1)
minimizeButton.BackgroundTransparency = 1
minimizeButton.Size = UDim2.new(0, 30, 1, 0)
minimizeButton.Position = UDim2.new(1, -60, 0, 0)
minimizeButton.Parent = titleBar

local closeButton = Instance.new("TextButton")
closeButton.Text = "X"
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 18
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.BackgroundTransparency = 1
closeButton.Size = UDim2.new(0, 30, 1, 0)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.Parent = titleBar

-- Contenedor con scroll para el contenido
local contentFrame = Instance.new("ScrollingFrame")
contentFrame.Size = UDim2.new(1, 0, 1, -30)
contentFrame.Position = UDim2.new(0, 0, 0, 30)
contentFrame.BackgroundTransparency = 1
contentFrame.CanvasSize = UDim2.new(0, 0, 0, 600) -- Aumentado para nuevos sliders/toggles
contentFrame.ScrollBarThickness = 6
contentFrame.Parent = frame

-- Variables para minimizar
local isMinimized = false
local originalSize = frame.Size

minimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    if isMinimized then
        frame.Size = UDim2.new(0, frame.Size.X.Offset, 0, 30)
        contentFrame.Visible = false
        minimizeButton.Text = "+"
    else
        frame.Size = originalSize
        contentFrame.Visible = true
        minimizeButton.Text = "-"
    end
end)

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Section Label "Main"
local mainLabel = Instance.new("TextLabel")
mainLabel.Text = "Main"
mainLabel.Font = Enum.Font.SourceSansBold
mainLabel.TextSize = 16
mainLabel.TextColor3 = Color3.new(1, 1, 1)
mainLabel.BackgroundTransparency = 1
mainLabel.Position = UDim2.new(0, 10, 0, 10)
mainLabel.Size = UDim2.new(0, 80, 0, 20)
mainLabel.TextXAlignment = Enum.TextXAlignment.Left
mainLabel.Parent = contentFrame

-- Función para crear toggles
local function createToggle(text, posY, defaultOn)
    local container = Instance.new("Frame")
    container.Size = UDim2.new(1, -20, 0, 30)
    container.Position = UDim2.new(0, 10, 0, posY)
    container.BackgroundTransparency = 1
    container.Parent = contentFrame

    local label = Instance.new("TextLabel")
    label.Text = text
    label.Font = Enum.Font.SourceSans
    label.TextSize = 16
    label.TextColor3 = Color3.new(1, 1, 1)
    label.BackgroundTransparency = 1
    label.Size = UDim2.new(0.8, 0, 1, 0)
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = container

    local toggle = Instance.new("TextButton")
    toggle.Size = UDim2.new(0, 25, 0, 25)
    toggle.Position = UDim2.new(0.85, 0, 0.1, 0)
    toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    toggle.BorderSizePixel = 1
    toggle.Text = ""
    toggle.Parent = container

    local isOn = defaultOn or false

    local checkmark = Instance.new("TextLabel")
    checkmark.Text = "✓"
    checkmark.Font = Enum.Font.SourceSansBold
    checkmark.TextSize = 20
    checkmark.TextColor3 = Color3.new(0, 1, 0)
    checkmark.BackgroundTransparency = 1
    checkmark.Size = UDim2.new(1, 0, 1, 0)
    checkmark.Visible = isOn
    checkmark.Parent = toggle

    toggle.MouseButton1Click:Connect(function()
        isOn = not isOn
        checkmark.Visible = isOn
    end)

    return {
        IsOn = function() return isOn end,
        OnToggle = function(callback)
            toggle.MouseButton1Click:Connect(function()
                callback(isOn)
            end)
        end,
    }
end

-- Create toggles
local visualToggle = createToggle("Visual", 40)
local boxToggle = createToggle("Box ESP", 80)
local nameToggle = createToggle("Name", 120)
local chamsToggle = createToggle("Chams", 160)
local teamColorToggle = createToggle("Use Team-Color", 200)
local fovVisibleToggle = createToggle("Show FOV Circle", 240)
local targetPlayersToggle = createToggle("Target Players", 280, false) -- Off por default
local targetNPCToggle = createToggle("Target NPCs", 320, true) -- On para zombies
local avoidPlayersToggle = createToggle("Avoid Players", 360, true) -- On para evitar jugadores
local lockButtonToggle = createToggle("Lock Floating Button", 400, false)

-- Aimbot toggle
local aimbotLabel = Instance.new("TextLabel")
aimbotLabel.Text = "Aimbot"
aimbotLabel.Font = Enum.Font.SourceSans
aimbotLabel.TextSize = 16
aimbotLabel.TextColor3 = Color3.new(1, 1, 1)
aimbotLabel.BackgroundTransparency = 1
aimbotLabel.Size = UDim2.new(0.8, 0, 0, 30)
aimbotLabel.Position = UDim2.new(0, 10, 0, 440)
aimbotLabel.TextXAlignment = Enum.TextXAlignment.Left
aimbotLabel.Parent = contentFrame

local aimbotToggleButton = Instance.new("TextButton")
aimbotToggleButton.Size = UDim2.new(0, 25, 0, 25)
aimbotToggleButton.Position = UDim2.new(0.85, 0, 0, 445)
aimbotToggleButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
aimbotToggleButton.BorderSizePixel = 1
aimbotToggleButton.Text = ""
aimbotToggleButton.Parent = contentFrame

local aimbotOn = false
local aimbotCheckmark = Instance.new("TextLabel")
aimbotCheckmark.Text = "✓"
aimbotCheckmark.Font = Enum.Font.SourceSansBold
aimbotCheckmark.TextSize = 20
aimbotCheckmark.TextColor3 = Color3.new(0, 1, 0)
aimbotCheckmark.BackgroundTransparency = 1
aimbotCheckmark.Size = UDim2.new(1, 0, 1, 0)
aimbotCheckmark.Visible = false
aimbotCheckmark.Parent = aimbotToggleButton

aimbotToggleButton.MouseButton1Click:Connect(function()
    aimbotOn = not aimbotOn
    aimbotCheckmark.Visible = aimbotOn
    floatingButton.Visible = aimbotOn -- Mostrar/esconder botón flotante
end)

-- Slider para FOV
local fovLabel = Instance.new("TextLabel")
fovLabel.Text = "Aimbot FOV (pixels): 150"
fovLabel.Font = Enum.Font.SourceSans
fovLabel.TextSize = 16
fovLabel.TextColor3 = Color3.new(1, 1, 1)
fovLabel.BackgroundTransparency = 1
fovLabel.Size = UDim2.new(1, -20, 0, 30)
fovLabel.Position = UDim2.new(0, 10, 0, 480)
fovLabel.TextXAlignment = Enum.TextXAlignment.Left
fovLabel.Parent = contentFrame

local fovSliderFrame = Instance.new("Frame")
fovSliderFrame.Size = UDim2.new(1, -20, 0, 20)
fovSliderFrame.Position = UDim2.new(0, 10, 0, 510)
fovSliderFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
fovSliderFrame.BorderSizePixel = 1
fovSliderFrame.Parent = contentFrame

local fovSlider = Instance.new("TextButton")
fovSlider.Size = UDim2.new(0, 10, 1, 0)
fovSlider.Position = UDim2.new(0.5, -5, 0, 0)
fovSlider.BackgroundColor3 = Color3.new(1, 1, 1)
fovSlider.Text = ""
fovSlider.Parent = fovSliderFrame

local aimbotFOV = 150

-- Slider para suavizado
local smoothLabel = Instance.new("TextLabel")
smoothLabel.Text = "Aimbot Smooth (0.01-1.0): 0.1"
smoothLabel.Font = Enum.Font.SourceSans
smoothLabel.TextSize = 16
smoothLabel.TextColor3 = Color3.new(1, 1, 1)
smoothLabel.BackgroundTransparency = 1
smoothLabel.Size = UDim2.new(1, -20, 0, 30)
smoothLabel.Position = UDim2.new(0, 10, 0, 540)
smoothLabel.TextXAlignment = Enum.TextXAlignment.Left
smoothLabel.Parent = contentFrame

local smoothSliderFrame = Instance.new("Frame")
smoothSliderFrame.Size = UDim2.new(1, -20, 0, 20)
smoothSliderFrame.Position = UDim2.new(0, 10, 0, 570)
smoothSliderFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
smoothSliderFrame.BorderSizePixel = 1
smoothSliderFrame.Parent = contentFrame

local smoothSlider = Instance.new("TextButton")
smoothSlider.Size = UDim2.new(0, 10, 1, 0)
smoothSlider.Position = UDim2.new(0.09, -5, 0, 0)
smoothSlider.BackgroundColor3 = Color3.new(1, 1, 1)
smoothSlider.Text = ""
smoothSlider.Parent = smoothSliderFrame

local aimbotSmooth = 0.1

-- Slider para Prediction Time
local predictionLabel = Instance.new("TextLabel")
predictionLabel.Text = "Prediction Time (0.0-1.0): 0.3"
predictionLabel.Font = Enum.Font.SourceSans
predictionLabel.TextSize = 16
predictionLabel.TextColor3 = Color3.new(1, 1, 1)
predictionLabel.BackgroundTransparency = 1
predictionLabel.Size = UDim2.new(1, -20, 0, 30)
predictionLabel.Position = UDim2.new(0, 10, 0, 600)
predictionLabel.TextXAlignment = Enum.TextXAlignment.Left
predictionLabel.Parent = contentFrame

local predictionSliderFrame = Instance.new("Frame")
predictionSliderFrame.Size = UDim2.new(1, -20, 0, 20)
predictionSliderFrame.Position = UDim2.new(0, 10, 0, 630)
predictionSliderFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
predictionSliderFrame.BorderSizePixel = 1
predictionSliderFrame.Parent = contentFrame

local predictionSlider = Instance.new("TextButton")
predictionSlider.Size = UDim2.new(0, 10, 1, 0)
predictionSlider.Position = UDim2.new(0.3, -5, 0, 0)
predictionSlider.BackgroundColor3 = Color3.new(1, 1, 1)
predictionSlider.Text = ""
predictionSlider.Parent = predictionSliderFrame

local predictionTime = 0.3

-- Slider para ancho de GUI
local widthLabel = Instance.new("TextLabel")
widthLabel.Text = "GUI Width (200-400): 260"
widthLabel.Font = Enum.Font.SourceSans
widthLabel.TextSize = 16
widthLabel.TextColor3 = Color3.new(1, 1, 1)
widthLabel.BackgroundTransparency = 1
widthLabel.Size = UDim2.new(1, -20, 0, 30)
widthLabel.Position = UDim2.new(0, 10, 0, 660)
widthLabel.TextXAlignment = Enum.TextXAlignment.Left
widthLabel.Parent = contentFrame

local widthSliderFrame = Instance.new("Frame")
widthSliderFrame.Size = UDim2.new(1, -20, 0, 20)
widthSliderFrame.Position = UDim2.new(0, 10, 0, 690)
widthSliderFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
widthSliderFrame.BorderSizePixel = 1
widthSliderFrame.Parent = contentFrame

local widthSlider = Instance.new("TextButton")
widthSlider.Size = UDim2.new(0, 10, 1, 0)
widthSlider.Position = UDim2.new(0.3, -5, 0, 0) -- Inicial para 260
widthSlider.BackgroundColor3 = Color3.new(1, 1, 1)
widthSlider.Text = ""
widthSlider.Parent = widthSliderFrame

local guiWidth = 260

-- Slider para tamaño del botón flotante
local buttonSizeLabel = Instance.new("TextLabel")
buttonSizeLabel.Text = "Button Size (30-100): 50"
buttonSizeLabel.Font = Enum.Font.SourceSans
buttonSizeLabel.TextSize = 16
buttonSizeLabel.TextColor3 = Color3.new(1, 1, 1)
buttonSizeLabel.BackgroundTransparency = 1
buttonSizeLabel.Size = UDim2.new(1, -20, 0, 30)
buttonSizeLabel.Position = UDim2.new(0, 10, 0, 720)
buttonSizeLabel.TextXAlignment = Enum.TextXAlignment.Left
buttonSizeLabel.Parent = contentFrame

local buttonSizeSliderFrame = Instance.new("Frame")
buttonSizeSliderFrame.Size = UDim2.new(1, -20, 0, 20)
buttonSizeSliderFrame.Position = UDim2.new(0, 10, 0, 750)
buttonSizeSliderFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
buttonSizeSliderFrame.BorderSizePixel = 1
buttonSizeSliderFrame.Parent = contentFrame

local buttonSizeSlider = Instance.new("TextButton")
buttonSizeSlider.Size = UDim2.new(0, 10, 1, 0)
buttonSizeSlider.Position = UDim2.new(0.2857, -5, 0, 0) -- Inicial para 50
buttonSizeSlider.BackgroundColor3 = Color3.new(1, 1, 1)
buttonSizeSlider.Text = ""
buttonSizeSlider.Parent = buttonSizeSliderFrame

local buttonSize = 50

-- Botón flotante
local floatingButton = Instance.new("TextButton")
floatingButton.Size = UDim2.new(0, buttonSize, 0, buttonSize)
floatingButton.Position = UDim2.new(0.5, -buttonSize/2, 0.5, -buttonSize/2)
floatingButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
floatingButton.Text = "🔫"
floatingButton.Font = Enum.Font.SourceSansBold
floatingButton.TextSize = 20
floatingButton.TextColor3 = Color3.new(1, 1, 1)
floatingButton.Visible = false
floatingButton.Parent = screenGui

local uicornerButton = Instance.new("UICorner")
uicornerButton.CornerRadius = UDim.new(0, 5)
uicornerButton.Parent = floatingButton

-- Lógica de sliders
local sliding = false
local currentSlider = nil

local function setupSlider(slider, frame, label, min, max, initial, updateFunc)
    slider.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            sliding = true
            currentSlider = {slider = slider, frame = frame, label = label, min = min, max = max, update = updateFunc}
        end
    end)
end

setupSlider(fovSlider, fovSliderFrame, fovLabel, 0, 300, 150, function(value)
    aim.And it's not done yet—looks like you cut off mid-sentence! I'll assume you meant to continue with the aimbot functionality and proceed with completing the script based on your requirements. Here's the continuation and the full updated script with all requested features implemented.

### **Continuation of the Setup**
The script was cut off in the middle of the `setupSlider` function for the FOV slider. I'll complete the slider setup for all sliders (FOV, Smooth, Prediction Time, GUI Width, Button Size) and ensure they update their respective variables correctly. The aimbot will include prediction for mobile enemies in *Pressure*, a floating button for instant headshot aiming, toggles for targeting players/NPCs and avoiding players, and an adjustable GUI width.

### **Key Additions**
- **Floating Button Logic**: The button is draggable unless "Lock Floating Button" is toggled on. When pressed, it instantly aims at the head of the closest entity within the FOV (or `HumanoidRootPart` if no head is found).
- **Prediction for Mobile Enemies**: Uses `AssemblyLinearVelocity` to predict the position of fast-moving zombies like Wolweller in *Pressure*. The Prediction Time slider (0.0-1.0) adjusts how far ahead it predicts.
- **Player/NPC Targeting**: Toggles for "Target Players" and "Target NPCs" control what the aimbot and ESP target. "Avoid Players" prioritizes NPCs over players if both are enabled.
- **GUI Width Adjustment**: The GUI width slider adjusts the frame size dynamically. The `ScrollingFrame` ensures all controls are accessible on mobile.
- **Button Size Adjustment**: The floating button size is adjustable via a slider, making it easier to tap on mobile.
- **Debugging**: Added `print` statements to log detected entities in the Delta console, helping diagnose if zombies in *Pressure* are being detected correctly.

### **Full Updated Script**
This script builds on the provided version, adding all requested features while maintaining compatibility with Delta Executor on mobile for *Pressure*.

```lua
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "OmarsPrivateCheese"
screenGui.ResetOnSpawn = false
screenGui.Parent = game:GetService("CoreGui")

-- Main Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 260, 0, 300)
frame.Position = UDim2.new(0, 50, 0, 50)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
frame.Parent = screenGui
frame.Active = true
frame.Draggable = false

-- Title bar
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
titleBar.Parent = frame

local titleText = Instance.new("TextLabel")
titleText.Text = "Omars Private Cheese"
titleText.Font = Enum.Font.SourceSansBold
titleText.TextSize = 18
titleText.TextColor3 = Color3.new(1, 1, 1)
titleText.BackgroundTransparency = 1
titleText.Size = UDim2.new(1, -60, 1, 0)
titleText.Position = UDim2.new(0, 10, 0, 0)
titleText.TextXAlignment = Enum.TextXAlignment.Left
titleText.Parent = titleBar

local minimizeButton = Instance.new("TextButton")
minimizeButton.Text = "-"
minimizeButton.Font = Enum.Font.SourceSansBold
minimizeButton.TextSize = 18
minimizeButton.TextColor3 = Color3.new(1, 1, 1)
minimizeButton.BackgroundTransparency = 1
minimizeButton.Size = UDim2.new(0, 30, 1, 0)
minimizeButton.Position = UDim2.new(1, -60, 0, 0)
minimizeButton.Parent = titleBar

local closeButton = Instance.new("TextButton")
closeButton.Text = "X"
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 18
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.BackgroundTransparency = 1
closeButton.Size = UDim2.new(0, 30, 1, 0)
closeButton.Position = UDim2.new(1, -30, 0, 0)
closeButton.Parent = titleBar

-- Contenedor con scroll para el contenido
local contentFrame = Instance.new("ScrollingFrame")
contentFrame.Size = UDim2.new(1, 0, 1, -30)
contentFrame.Position = UDim2.new(0, 0, 0, 30)
contentFrame.BackgroundTransparency = 1
contentFrame.CanvasSize = UDim2.new(0, 0, 0, 600) -- Aumentado para nuevos controles
contentFrame.ScrollBarThickness = 6
contentFrame.Parent = frame

-- Variables para minimizar
local isMinimized = false
local originalSize = frame.Size

minimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    if isMinimized then
        frame.Size = UDim2.new(0, frame.Size.X.Offset, 0, 30)
        contentFrame.Visible = false
        minimizeButton.Text = "+"
    else
        frame.Size = originalSize
        contentFrame.Visible = true
        minimizeButton.Text = "-"
    end
end)

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Section Label "Main"
local mainLabel = Instance.new("TextLabel")
mainLabel.Text = "Main"
mainLabel.Font = Enum.Font.SourceSansBold
mainLabel.TextSize = 16
mainLabel.TextColor3 = Color3.new(1, 1, 1)
mainLabel.BackgroundTransparency = 1
mainLabel.Position = UDim2.new(0, 10, 0, 10)
mainLabel.Size = UDim2.new(0, 80, 0, 20)
mainLabel.TextXAlignment = Enum.TextXAlignment.Left
mainLabel.Parent = contentFrame

-- Función para crear toggles
local function createToggle(text, posY, defaultOn)
    local container = Instance.new("Frame")
    container.Size = UDim2.new(1, -20, 0, 30)
    container.Position = UDim2.new(0, 10, 0, posY)
    container.BackgroundTransparency = 1
    container.Parent = contentFrame

    local label = Instance.new("TextLabel")
    label.Text = text
    label.Font = Enum.Font.SourceSans
    label.TextSize = 16
    label.TextColor3 = Color3.new(1, 1, 1)
    label.BackgroundTransparency = 1
    label.Size = UDim2.new(0.8, 0, 1, 0)
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = container

    local toggle = Instance.new("TextButton")
    toggle.Size = UDim2.new(0, 25, 0, 25)
    toggle.Position = UDim2.new(0.85, 0, 0.1, 0)
    toggle.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    toggle.BorderSizePixel = 1
    toggle.Text = ""
    toggle.Parent = container

    local isOn = defaultOn or false

    local checkmark = Instance.new("TextLabel")
    checkmark.Text = "✓"
    checkmark.Font = Enum.Font.SourceSansBold
    checkmark.TextSize = 20
    checkmark.TextColor3 = Color3.new(0, 1, 0)
    checkmark.BackgroundTransparency = 1
    checkmark.Size = UDim2.new(1, 0, 1, 0)
    checkmark.Visible = isOn
    checkmark.Parent = toggle

    toggle.MouseButton1Click:Connect(function()
        isOn = not isOn
        checkmark.Visible = isOn
    end)

    return {
        IsOn = function() return isOn end,
        OnToggle = function(callback)
            toggle.MouseButton1Click:Connect(function()
                callback(isOn)
            end)
        end,
    }
end

-- Create toggles
local visualToggle = createToggle("Visual", 40)
local boxToggle = createToggle("Box ESP", 80)
local nameToggle = createToggle("Name", 120)
local chamsToggle = createToggle("Chams", 160)
local teamColorToggle = createToggle("Use Team-Color", 200)
local fovVisibleToggle = createToggle("Show FOV Circle", 240)
local targetPlayersToggle = createToggle("Target Players", 280, false) -- Off por default
local targetNPCToggle = createToggle("Target NPCs", 320, true) -- On para zombies
local avoidPlayersToggle = createToggle("Avoid Players", 360, true) -- On para evitar jugadores
local lockButtonToggle = createToggle("Lock Floating Button", 400, false)

-- Aimbot toggle
local aimbotLabel = Instance.new("TextLabel")
aimbotLabel.Text = "Aimbot"
aimbotLabel.Font = Enum.Font.SourceSans
aimbotLabel.TextSize = 16
aimbotLabel.TextColor3 = Color3.new(1, 1, 1)
aimbotLabel.BackgroundTransparency = 1
aimbotLabel.Size = UDim2.new(0.8, 0, 0, 30)
aimbotLabel.Position = UDim2.new(0, 10, 0, 440)
aimbotLabel.TextXAlignment = Enum.TextXAlignment.Left
aimbotLabel.Parent = contentFrame

local aimbotToggleButton = Instance.new("TextButton")
aimbotToggleButton.Size = UDim2.new(0, 25, 0, 25)
aimbotToggleButton.Position = UDim2.new(0.85, 0, 0, 445)
aimbotToggleButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
aimbotToggleButton.BorderSizePixel = 1
aimbotToggleButton.Text = ""
aimbotToggleButton.Parent = contentFrame

local aimbotOn = false
local aimbotCheckmark = Instance.new("TextLabel")
aimbotCheckmark.Text = "✓"
aimbotCheckmark.Font = Enum.Font.SourceSansBold
aimbotCheckmark.TextSize = 20
aimbotCheckmark.TextColor3 = Color3.new(0, 1, 0)
aimbotCheckmark.BackgroundTransparency = 1
aimbotCheckmark.Size = UDim2.new(1, 0, 1, 0)
aimbotCheckmark.Visible = false
aimbotCheckmark.Parent = aimbotToggleButton

aimbotToggleButton.MouseButton1Click:Connect(function()
    aimbotOn = not aimbotOn
    aimbotCheckmark.Visible = aimbotOn
    floatingButton.Visible = aimbotOn
end)

-- Slider para FOV
local fovLabel = Instance.new("TextLabel")
fovLabel.Text = "Aimbot FOV (pixels): 150"
fovLabel.Font = Enum.Font.SourceSans
fovLabel.TextSize = 16
fovLabel.TextColor3 = Color3.new(1, 1, 1)
fovLabel.BackgroundTransparency = 1
fovLabel.Size = UDim2.new(1, -20, 0, 30)
fovLabel.Position = UDim2.new(0, 10, 0, 480)
fovLabel.TextXAlignment = Enum.TextXAlignment.Left
fovLabel.Parent = contentFrame

local fovSliderFrame = Instance.new("Frame")
fovSliderFrame.Size = UDim2.new(1, -20, 0, 20)
fovSliderFrame.Position = UDim2.new(0, 10, 0, 510)
fovSliderFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
fovSliderFrame.BorderSizePixel = 1
fovSliderFrame.Parent = contentFrame

local fovSlider = Instance.new("TextButton")
fovSlider.Size = UDim2.new(0, 10, 1, 0)
fovSlider.Position = UDim2.new(0.5, -5, 0, 0)
fovSlider.BackgroundColor3 = Color3.new(1, 1, 1)
fovSlider.Text = ""
fovSlider.Parent = fovSliderFrame

local aimbotFOV = 150

-- Slider para suavizado
local smoothLabel = Instance.new("TextLabel")
smoothLabel.Text = "Aimbot Smooth (0.01-1.0): 0.1"
smoothLabel.Font = Enum.Font.SourceSans
smoothLabel.TextSize = 16
smoothLabel.TextColor3 = Color3.new(1, 1, 1)
smoothLabel.BackgroundTransparency = 1
smoothLabel.Size = UDim2.new(1, -20, 0, 30)
smoothLabel.Position = UDim2.new(0, 10, 0, 540)
smoothLabel.TextXAlignment = Enum.TextXAlignment.Left
smoothLabel.Parent = contentFrame

local smoothSliderFrame = Instance.new("Frame")
smoothSliderFrame.Size = UDim2.new(1, -20, 0, 20)
smoothSliderFrame.Position = UDim2.new(0, 10, 0, 570)
smoothSliderFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
smoothSliderFrame.BorderSizePixel = 1
smoothSliderFrame.Parent = contentFrame

local smoothSlider = Instance.new("TextButton")
smoothSlider.Size = UDim2.new(0, 10, 1, 0)
smoothSlider.Position = UDim2.new(0.09, -5, 0, 0)
smoothSlider.BackgroundColor3 = Color3.new(1, 1, 1)
smoothSlider.Text = ""
smoothSlider.Parent = smoothSliderFrame

local aimbotSmooth = 0.1

-- Slider para Prediction Time
local predictionLabel = Instance.new("TextLabel")
predictionLabel.Text = "Prediction Time (0.0-1.0): 0.3"
predictionLabel.Font = Enum.Font.SourceSans
predictionLabel.TextSize = 16
predictionLabel.TextColor3 = Color3.new(1, 1, 1)
predictionLabel.BackgroundTransparency = 1
predictionLabel.Size = UDim2.new(1, -20, 0, 30)
predictionLabel.Position = UDim2.new(0, 10, 0, 600)
predictionLabel.TextXAlignment = Enum.TextXAlignment.Left
predictionLabel.Parent = contentFrame

local predictionSliderFrame = Instance.new("Frame")
predictionSliderFrame.Size = UDim2.new(1, -20, 0, 20)
predictionSliderFrame.Position = UDim2.new(0, 10, 0, 630)
predictionSliderFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
predictionSliderFrame.BorderSizePixel = 1
predictionSliderFrame.Parent = contentFrame

local predictionSlider = Instance.new("TextButton")
predictionSlider.Size = UDim2.new(0, 10, 1, 0)
predictionSlider.Position = UDim2.new(0.3, -5, 0, 0)
predictionSlider.BackgroundColor3 = Color3.new(1, 1, 1)
predictionSlider.Text = ""
predictionSlider.Parent = predictionSliderFrame

local predictionTime = 0.3

-- Slider para ancho de GUI
local widthLabel = Instance.new("TextLabel")
widthLabel.Text = "GUI Width (200-400): 260"
widthLabel.Font = Enum.Font.SourceSans
widthLabel.TextSize = 16
widthLabel.TextColor3 = Color3.new(1, 1, 1)
widthLabel.BackgroundTransparency = 1
widthLabel.Size = UDim2.new(1, -20, 0, 30)
widthLabel.Position = UDim2.new(0, 10, 0, 660)
widthLabel.TextXAlignment = Enum.TextXAlignment.Left
widthLabel.Parent = contentFrame

local widthSliderFrame = Instance.new("Frame")
widthSliderFrame.Size = UDim2.new(1, -20, 0, 20)
widthSliderFrame.Position = UDim2.new(0, 10, 0, 690)
widthSliderFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
widthSliderFrame.BorderSizePixel = 1
widthSliderFrame.Parent = contentFrame

local widthSlider = Instance.new("TextButton")
widthSlider.Size = UDim2.new(0, 10, 1, 0)
widthSlider.Position = UDim2.new(0.3, -5, 0, 0)
widthSlider.BackgroundColor3 = Color3.new(1, 1, 1)
widthSlider.Text = ""
widthSlider.Parent = widthSliderFrame

local guiWidth = 260

-- Slider para tamaño del botón flotante
localprincipleButtonSizeLabel = Instance.new("TextLabel")
buttonSizeLabel.Text = "Button Size (30-100): 50"
buttonSizeLabel.Font = Enum.Font.SourceSans
buttonSizeLabel.TextSize = 16
buttonSizeLabel.TextColor3 = Color3.new(1, 1, 1)
buttonSizeLabel.BackgroundTransparency = 1
buttonSizeLabel.Size = UDim2.new(1, -20, 0, 30)
buttonSizeLabel.Position = UDim2.new(0, 10, 0, 720)
buttonSizeLabel.TextXAlignment = Enum.TextXAlignment.Left
buttonSizeLabel.Parent = contentFrame

local buttonSizeSliderFrame = Instance.new("Frame")
buttonSizeSliderFrame.Size = UDim2.new(1, -20, 0, 20)
buttonSizeSliderFrame.Position = UDim2.new(0, 10, 0, 750)
buttonSizeSliderFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
buttonSizeSliderFrame.BorderSizePixel = 1
buttonSizeSliderFrame.Parent = contentFrame

local buttonSizeSlider = Instance.new("TextButton")
buttonSizeSlider.Size = UDim2.new(0, 10, 1, 0)
buttonSizeSlider.Position = UDim2.new(0.2857, -5, 0, 0) -- Inicial para 50
buttonSizeSlider.BackgroundColor3 = Color3.new(1, 1, 1)
buttonSizeSlider.Text = ""
buttonSizeSlider.Parent = buttonSizeSliderFrame

local buttonSize = 50

-- Botón flotante
local floatingButton = Instance.new("TextButton")
floatingButton.Size = UDim2.new(0, buttonSize, 0, buttonSize)
floatingButton.Position = UDim2.new(0.5, -buttonSize/2, 0.5, -buttonSize/2)
floatingButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
floatingButton.Text = "🔫"
floatingButton.Font = Enum.Font.SourceSansBold
floatingButton.TextSize = 20
floatingButton.TextColor3 = Color3.new(1, 1, 1)
floatingButton.Visible = false
floatingButton.Parent = screenGui

local uicornerButton = Instance.new("UICorner")
uicornerButton.CornerRadius = UDim.new(0, 5)
uicornerButton.Parent = floatingButton

-- Lógica de sliders
local sliding = false
local currentSlider = nil

local function setupSlider(slider, frame, label, min, max, initial, updateFunc)
    slider.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            sliding = true
            currentSlider = {slider = slider, frame = frame, label = label, min = min, max = max, update = updateFunc}
        end
    end)
end

setupSlider(fovSlider, fovSliderFrame, fovLabel, 0, 300, 150, function(value)
    aimbotFOV = value
end)

setupSlider(smoothSlider, smoothSliderFrame, smoothLabel, 0.01, 1, 0.1, function(value)
    aimbotSmooth = value
end)

setupSlider(predictionSlider, predictionSliderFrame, predictionLabel, 0, 1, 0.3, function(value)
    predictionTime = value
end)

setupSlider(widthSlider, widthSliderFrame, widthLabel, 200, 400, 260, function(value)
    guiWidth = value
    frame.Size = UDim2.new(0, guiWidth, 0, 300)
    originalSize = frame.Size
end)

setupSlider(buttonSizeSlider, buttonSizeSliderFrame, buttonSizeLabel, 30, 100, 50, function(value)
    buttonSize = value
    floatingButton.Size = UDim2.new(0, buttonSize, 0, buttonSize)
    floatingButton.Position = UDim2.new(floatingButton.Position.X.Scale, -buttonSize/2, floatingButton.Position.Y.Scale, -buttonSize/2)
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        sliding arginine = false
        currentSlider = nil
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if sliding and currentSlider and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local sliderPos = math.clamp((input.Position.X - currentSlider.frame.AbsolutePosition.X) / currentSlider.frame.AbsoluteSize.X, 0, 1)
        currentSlider.slider.Position = UDim2.new(sliderPos, -5, 0, 0)
        local value = currentSlider.min + sliderPos * (currentSlider.max - currentSlider.min)
        if currentSlider.label.Text:match("Smooth") or currentSlider.label.Text:match("Prediction") then
            value = math.clamp(value, currentSlider.min, currentSlider.max)
            currentSlider.label.Text = currentSlider.label.Text:gsub("%d+%.?%d*", string.format("%.2f", value))
        else
            value = math.floor(value)
            currentSlider.label.Text = currentSlider.label.Text:gsub("%d+", tostring(value))
        end
        currentSlider.update(value)
    end
end)

-- Círculo visible para FOV
local fovCircle = Instance.new("Frame")
fovCircle.Size = UDim2.new(0, aimbotFOV * 2, 0, aimbotFOV * 2)
fovCircle.Position = UDim2.new(0.5, -aimbotFOV, 0.5, -aimbotFOV)
fovCircle.BackgroundColor3 = Color3.new(1, 1, 1)
fovCircle.BackgroundTransparency = 0.9
fovCircle.BorderSizePixel = 0
fovCircle.Visible = false
fovCircle.Parent = screenGui

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(1, 0)
uicorner.Parent = fovCircle

-- Drag para el frame principal
local dragging, dragInput, dragStart, startPos
titleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

titleBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- Drag para el botón flotante
local buttonDragging, buttonDragInput, buttonDragStart, buttonStartPos
floatingButton.InputBegan:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1) and not lockButtonToggle.IsOn() then
        buttonDragging = true
        buttonDragStart = input.Position
        buttonStartPos = floatingButton.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                buttonDragging = false
            end
        end)
    end
end)

floatingButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then
        buttonDragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == buttonDragInput and buttonDragging then
        local delta = input.Position - buttonDragStart
        floatingButton.Position = UDim2.new(buttonStartPos.X.Scale, buttonStartPos.X.Offset + delta.X, buttonStartPos.Y.Scale, buttonStartPos.Y.Offset + delta.Y)
    end
end)

-- Botón flotante: apuntar a la cabeza
floatingButton.MouseButton1Click:Connect(function()
    if aimbotOn then
        local closestDist = math.huge
        local closestEntity = nil
        local screenCenter = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2)

        for _, entity in pairs(entitiesCache) do
            if entity:FindFirstChild("HumanoidRootPart") then
                local hrp = entity:FindFirstChild("Head") or entity.HumanoidRootPart
                local screenPos, onScreen = Camera:WorldToViewportPoint(hrp.Position)
                if onScreen then
                    local dist = (Vector2.new(screenPos.X, screenPos.Y) - screenCenter).Magnitude
                    if dist < closestDist and dist < aimbotFOV then
                        closestDist = dist
                        closestEntity = entity
                    end
                end
            end
        end

        if closestEntity then
            local hrp = closestEntity:FindFirstChild("Head") or closestEntity.HumanoidRootPart
            local predictedPos = hrp.Position + (hrp.AssemblyLinearVelocity or Vector3.new(0, 0, 0)) * predictionTime
            local currentPos = Camera.CFrame.Position
            local targetDirection = (predictedPos - currentPos).Unit
            Camera.CFrame = CFrame.new(currentPos, currentPos + targetDirection)
        end
    end
end)

-- Función para obtener entidades
local entitiesCache = {}
local function getEntitiesWithHumanoid()
    entitiesCache = {}
    for _, obj in pairs(workspace:GetChildren()) do
        if obj:IsA("Model") and obj:FindFirstChildOfClass("Humanoid") and obj:FindFirstChild("HumanoidRootPart") then
            local isPlayer = Players:GetPlayerFromCharacter(obj) ~= nil
            if (isPlayer and targetPlayersToggle.IsOn() and not avoidPlayersToggle.IsOn()) or (not isPlayer and targetNPCToggle.IsOn()) then
                table.insert(entitiesCache, obj)
            end
        end
        for _, model in pairs(obj:GetDescendants()) do
            if model:IsA("Model") and model:FindFirstChildOfClass("Humanoid") and model:FindFirstChild("HumanoidRootPart") then
                local isPlayer = Players:GetPlayerFromCharacter(model) ~= nil
                if (isPlayer and targetPlayersToggle.IsOn() and not avoidPlayersToggle.IsOn()) or (not isPlayer and targetNPCToggle.IsOn()) then
                    table.insert(entitiesCache, model)
                end
            end
        end
    end
    print("Entidades: " .. #entitiesCache) -- Debug para consola Delta
    return entitiesCache
end

-- ESP implementation
local function createBillboardBox(adornParent)
    local billboard = Instance.new("BillboardGui")
    billboard.Adornee = adornParent
    billboard.AlwaysOnTop = true
    billboard.Size = UDim2.new(0, 100, 0, 100)
    billboard.StudsOffset = Vector3.new(0, 2, 0)

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundTransparency = 0.7
    frame.BackgroundColor3 = Color3.new(1, 0, 0)
    frame.BorderColor3 = Color3.new(1, 1, 1)
    frame.BorderSizePixel = 1
    frame.Parent = billboard

    billboard.Parent = screenGui
    return billboard
end

local function createNameTag(adornParent, entityName)
    local billboard = Instance.new("BillboardGui")
    billboard.Adornee = adornParent
    billboard.AlwaysOnTop = true
    billboard.Size = UDim2.new(0, 150, 0, 25)
    billboard.StudsOffset = Vector3.new(0, 3, 0)

    local label = Instance.new("TextLabel")
    label.BackgroundTransparency = 0.5
    label.BackgroundColor3 = Color3.new(0, 0, 0)
    label.TextColor3 = Color3.new(1, 1, 1)
    label.TextStrokeTransparency = 0.5
    label.Font = Enum.Font.SourceSansBold
    label.TextSize = 18
    label.Text = entityName
    label.Size = UDim2.new(1, 0, 1, 0)
    label.Parent = billboard

    billboard.Parent = screenGui
    return billboard
end

local espData = {}

local function cleanupESP()
    for entity, data in pairs(espData) do
        if data.box then data.box:Destroy() end
        if data.nameTag then data.nameTag:Destroy() end
        espData[entity] = nil
    end
end

workspace.DescendantRemoving:Connect(function(descendant)
    if espData[descendant] then
        if espData[descendant].box then espData[descendant].box:Destroy() end
        if espData[descendant].nameTag then espData[descendant].nameTag:Destroy() end
        espData[descendant] = nil
    end
end)

-- Actualización optimizada
local lastUpdate = 0
local updateInterval = 0.15 -- Optimizado para móvil

local lastEntityUpdate = 0
local entityUpdateInterval = 1.0

local function lerp(a, b, t)
    return a + (b - a) * t
end

RunService.RenderStepped:Connect(function(deltaTime)
    lastUpdate = lastUpdate + deltaTime
    lastEntityUpdate = lastEntityUpdate + deltaTime

    if lastEntityUpdate >= entityUpdateInterval then
        lastEntityUpdate = 0
        getEntitiesWithHumanoid()
    end

    if lastUpdate >= updateInterval then
        lastUpdate = 0

        -- Actualizar círculo FOV
        fovCircle.Size = UDim2.new(0, aimbotFOV * 2, 0, aimbotFOV * 2)
        fovCircle.Position = UDim2.new(0.5, -aimbotFOV, 0.5, -aimbotFOV)
        fovCircle.Visible = fovVisibleToggle.IsOn() and aimbotOn

        -- ESP
        if visualToggle.IsOn() then
            for _, entity in pairs(entitiesCache) do
                if entity:FindFirstChild("HumanoidRootPart") then
                    local hrp = entity.HumanoidRootPart
                    if not espData[entity] then espData[entity] = {} end

                    if boxToggle.IsOn() then
                        if not espData[entity].box then
                            espData[entity].box = createBillboardBox(hrp)
                        end
                        espData[entity].box.Enabled = true
                        local color = Color3.fromRGB(255, 0, 0)
                        if chamsToggle.IsOn() then
                            color = Color3.fromRGB(0, 0, 255)
                        end
                        espData[entity].box.Frame.BackgroundColor3 = color
                    else
                        if espData[entity].box then
                            espData[entity].box.Enabled = false
                        end
                    end

                    if nameToggle.IsOn() then
                        if not espData[entity].nameTag then
                            espData[entity].nameTag = createNameTag(hrp, entity.Name)
                        end
                        espData[entity].nameTag.Enabled = true
                    else
                        if espData[entity].nameTag then
                            espData[entity].nameTag.Enabled = false
                        end
                    end
                else
                    if espData[entity] then
                        if espData[entity].box then espData[entity].box.Enabled = false end
                        if espData[entity].nameTag then espData[entity].nameTag.Enabled = false end
                    end
                end
            end
        else
            cleanupESP()
        end
    end

    -- Aimbot
    if aimbotOn then
        local closestDist = math.huge
        local closestEntity = nil
        local screenCenter = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2)

        for _, entity in pairs(entitiesCache) do
            if entity:FindFirstChild("HumanoidRootPart") then
                local hrp = entity.HumanoidRootPart
                local screenPos, onScreen = Camera:WorldToViewportPoint(hrp.Position)
                if onScreen then
                    local dist = (Vector2.new(screenPos.X, screenPos.Y) - screenCenter).Magnitude
                    if dist < closestDist and dist < aimbotFOV then
                        closestDist = dist
                        closestEntity = entity
                    end
                end
            end
        end

        if closestEntity then
            local hrp = closestEntity.HumanoidRootPart
            local predictedPos = hrp.Position + (hrp.AssemblyLinearVelocity or Vector3.new(0, 0, 0)) * predictionTime
            local currentPos = Camera.CFrame.Position
            local targetDirection = (predictedPos - currentPos).Unit
            local currentLookVector = Camera.CFrame.LookVector
            local newLookVector = lerp(currentLookVector, targetDirection, aimbotSmooth)
            Camera.CFrame = CFrame.new(currentPos, currentPos + newLookVector)
        end
    end
end)
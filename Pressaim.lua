-- Servicios
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local CoreGui = game:GetService("CoreGui")

-- La GUI se crea en CoreGui para permanecer visible
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "Sylvie Hub Aim"
screenGui.ResetOnSpawn = false
screenGui.Parent = CoreGui

-- Marco principal de la GUI
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 260, 0, 300) -- Tamaño inicial
frame.Position = UDim2.new(0, 50, 0, 50)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
frame.Parent = screenGui
frame.Active = true
frame.Draggable = false -- El arrastre se maneja manualmente

-- Barra de título para arrastrar y minimizar
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
titleBar.Parent = frame

local titleText = Instance.new("TextLabel")
titleText.Text = "Sulvieylvie Hub Aim"
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

-- Contenedor para el contenido de la GUI (ahora un ScrollingFrame)
local contentFrame = Instance.new("ScrollingFrame")
contentFrame.Size = UDim2.new(1, 0, 1, -30)
contentFrame.Position = UDim2.new(0, 0, 0, 30)
contentFrame.BackgroundTransparency = 1
contentFrame.CanvasSize = UDim2.new(0, 0, 0, 600) -- Aumentado el tamaño
contentFrame.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)
contentFrame.Parent = frame

-- Variables para minimizar
local isMinimized = false
local originalSize = frame.Size

minimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    if isMinimized then
        frame.Size = UDim2.new(0, frame.Size.X.Offset, 0, 30) -- Mantener ancho, reducir alto a barra de título
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

-- Función para crear un botón de alternancia (toggle)
local function createToggle(text, posY)
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

    local isOn = false

    local checkmark = Instance.new("TextLabel")
    checkmark.Text = "✓"
    checkmark.Font = Enum.Font.SourceSansBold
    checkmark.TextSize = 20
    checkmark.TextColor3 = Color3.new(0, 1, 0)
    checkmark.BackgroundTransparency = 1
    checkmark.Size = UDim2.new(1, 0, 1, 0)
    checkmark.Visible = false
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

-- Secciones y botones de alternancia (toggles)
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

local visualToggle = createToggle("Visual", 40)
local boxToggle = createToggle("Box ESP", 80)
local nameToggle = createToggle("Name", 120)
local chamsToggle = createToggle("Chams", 160)
local teamColorToggle = createToggle("Use Team-Color", 200)

local aimbotLabel = Instance.new("TextLabel")
aimbotLabel.Text = "Aimbot"
aimbotLabel.Font = Enum.Font.SourceSansBold
aimbotLabel.TextSize = 16
aimbotLabel.TextColor3 = Color3.new(1, 1, 1)
aimbotLabel.BackgroundTransparency = 1
aimbotLabel.Size = UDim2.new(0.8, 0, 0, 30)
aimbotLabel.Position = UDim2.new(0, 10, 0, 240)
aimbotLabel.TextXAlignment = Enum.TextXAlignment.Left
aimbotLabel.Parent = contentFrame

local aimbotToggleButton = createToggle("Aimbot", 270)
local ignoreHumansToggle = createToggle("Ignorar Jugadores", 310)
local ignoreNonHumansToggle = createToggle("Ignorar Entidades no humanas", 350)

-- Slider para FOV ajustable
local fovLabel = Instance.new("TextLabel")
fovLabel.Text = "Aimbot FOV (pixels): 150"
fovLabel.Font = Enum.Font.SourceSans
fovLabel.TextSize = 16
fovLabel.TextColor3 = Color3.new(1, 1, 1)
fovLabel.BackgroundTransparency = 1
fovLabel.Size = UDim2.new(1, -20, 0, 30)
fovLabel.Position = UDim2.new(0, 10, 0, 390)
fovLabel.TextXAlignment = Enum.TextXAlignment.Left
fovLabel.Parent = contentFrame

local fovSliderFrame = Instance.new("Frame")
fovSliderFrame.Size = UDim2.new(1, -20, 0, 20)
fovSliderFrame.Position = UDim2.new(0, 10, 0, 420)
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

local slidingFOV = false
fovSlider.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        slidingFOV = true
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        slidingFOV = false
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if slidingFOV and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local sliderPos = math.clamp((input.Position.X - fovSliderFrame.AbsolutePosition.X) / fovSliderFrame.AbsoluteSize.X, 0, 1)
        fovSlider.Position = UDim2.new(sliderPos, -5, 0, 0)
        aimbotFOV = math.floor(sliderPos * 300)
        fovLabel.Text = "Aimbot FOV (pixels): " .. aimbotFOV
    end
end)

-- Slider para factor de suavizado
local smoothLabel = Instance.new("TextLabel")
smoothLabel.Text = "Aimbot Smooth (0.01-1.0): 0.1"
smoothLabel.Font = Enum.Font.SourceSans
smoothLabel.TextSize = 16
smoothLabel.TextColor3 = Color3.new(1, 1, 1)
smoothLabel.BackgroundTransparency = 1
smoothLabel.Size = UDim2.new(1, -20, 0, 30)
smoothLabel.Position = UDim2.new(0, 10, 0, 450)
smoothLabel.TextXAlignment = Enum.TextXAlignment.Left
smoothLabel.Parent = contentFrame

local smoothSliderFrame = Instance.new("Frame")
smoothSliderFrame.Size = UDim2.new(1, -20, 0, 20)
smoothSliderFrame.Position = UDim2.new(0, 10, 0, 480)
smoothSliderFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
smoothSliderFrame.BorderSizePixel = 1
smoothSliderFrame.Parent = contentFrame

local smoothSlider = Instance.new("TextButton")
smoothSlider.Size = UDim2.new(0, 10, 1, 0)
smoothSlider.Position = UDim2.new(0.09, -5, 0, 0)
smoothSlider.BackgroundColor3 = Color3.new(1, 1, 1)
smoothSlider.Text = ""
smoothSlider.Parent = smoothSliderFrame

local aimbotSmooth = 0.5

local slidingSmooth = false
smoothSlider.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        slidingSmooth = true
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        slidingSmooth = false
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if slidingSmooth and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local sliderPos = math.clamp((input.Position.X - smoothSliderFrame.AbsolutePosition.X) / smoothSliderFrame.AbsoluteSize.X, 0, 1)
        smoothSlider.Position = UDim2.new(sliderPos, -5, 0, 0)
        aimbotSmooth = math.clamp(sliderPos * 0.99 + 0.01, 0.01, 1.0)
        smoothLabel.Text = "Aimbot Smooth (0.01-1.0): " .. string.format("%.2f", aimbotSmooth)
    end
end)


-- Menú desplegable para seleccionar objetivo del aimbot
local aimbotTarget = "HumanoidRootPart" -- Valor por defecto para el cuerpo

local targetButton = Instance.new("TextButton")
targetButton.Size = UDim2.new(1, -20, 0, 30)
targetButton.Position = UDim2.new(0, 10, 0, 520)
targetButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
targetButton.Text = "Objetivo: Cuerpo"
targetButton.Font = Enum.Font.SourceSans
targetButton.TextSize = 16
targetButton.TextColor3 = Color3.new(1, 1, 1)
targetButton.Parent = contentFrame

local optionsFrame = Instance.new("Frame")
optionsFrame.Size = UDim2.new(1, -20, 0, 60)
optionsFrame.Position = UDim2.new(0, 10, 0, 550)
optionsFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
optionsFrame.BorderSizePixel = 1
optionsFrame.Parent = contentFrame
optionsFrame.Visible = false

local headButton = Instance.new("TextButton")
headButton.Size = UDim2.new(1, 0, 0, 28)
headButton.Position = UDim2.new(0, 0, 0, 2)
headButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
headButton.Text = "Cabeza"
headButton.Font = Enum.Font.SourceSans
headButton.TextSize = 16
headButton.TextColor3 = Color3.new(1, 1, 1)
headButton.Parent = optionsFrame

local bodyButton = Instance.new("TextButton")
bodyButton.Size = UDim2.new(1, 0, 0, 28)
bodyButton.Position = UDim2.new(0, 0, 0, 30)
bodyButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
bodyButton.Text = "Cuerpo"
bodyButton.Font = Enum.Font.SourceSans
bodyButton.TextSize = 16
bodyButton.TextColor3 = Color3.new(1, 1, 1)
bodyButton.Parent = optionsFrame

targetButton.MouseButton1Click:Connect(function()
    optionsFrame.Visible = not optionsFrame.Visible
end)

headButton.MouseButton1Click:Connect(function()
    aimbotTarget = "Head"
    targetButton.Text = "Objetivo: Cabeza"
    optionsFrame.Visible = false
end)

bodyButton.MouseButton1Click:Connect(function()
    aimbotTarget = "HumanoidRootPart"
    targetButton.Text = "Objetivo: Cuerpo"
    optionsFrame.Visible = false
end)

-- --- LÓGICA DE DRAG Y RESIZE ---

-- Variables para arrastrar
local draggingFrame
local dragInputFrame
local dragStartFrame
local startPosFrame

titleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        draggingFrame = true
        dragStartFrame = input.Position
        startPosFrame = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                draggingFrame = false
            end
        end)
    end
end)

titleBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInputFrame = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInputFrame and draggingFrame then
        local delta = input.Position - dragStartFrame
        frame.Position = UDim2.new(
            startPosFrame.X.Scale,
            startPosFrame.X.Offset + delta.X,
            startPosFrame.Y.Scale,
            startPosFrame.Y.Offset + delta.Y
        )
    end
end)


-- RESIZE HANDLE (Esquina inferior derecha)
local resizeHandle = Instance.new("Frame")
resizeHandle.Size = UDim2.new(0, 15, 0, 15) -- Pequeño cuadrado para arrastrar
resizeHandle.Position = UDim2.new(1, -15, 1, -15) -- En la esquina inferior derecha del frame principal
resizeHandle.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
resizeHandle.BorderSizePixel = 1
resizeHandle.BorderColor3 = Color3.new(0.8, 0.8, 0.8)
resizeHandle.Parent = frame
resizeHandle.Active = true
resizeHandle.Draggable = false -- Manejaremos el arrastre manualmente

local resizing = false
local resizeStart
local startFrameSize

resizeHandle.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        resizing = true
        resizeStart = input.Position
        startFrameSize = frame.Size

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                resizing = false
            end
        end)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if resizing and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - resizeStart
        
        local newWidth = math.max(150, startFrameSize.X.Offset + delta.X) -- Ancho mínimo
        local newHeight = math.max(30, startFrameSize.Y.Offset + delta.Y) -- Alto mínimo (barra de título)

        frame.Size = UDim2.new(0, newWidth, 0, newHeight)
        
        -- Actualizar originalSize para que la minimización/restauración funcione correctamente
        originalSize = frame.Size
    end
end)


-- CÍRCULO FOV
local fovCircle = Instance.new("Frame")
fovCircle.Name = "FOVCircle"
fovCircle.BackgroundTransparency = 1
fovCircle.Size = UDim2.new(0, 0, 0, 0)
fovCircle.Position = UDim2.new(0.5, 0, 0.5, 0)
fovCircle.Parent = screenGui

local fovCircleCorner = Instance.new("UICorner")
fovCircleCorner.CornerRadius = UDim.new(1, 0)
fovCircleCorner.Parent = fovCircle

local fovCircleStroke = Instance.new("UIStroke")
fovCircleStroke.Color = Color3.new(1, 1, 1)
fovCircleStroke.Thickness = 1
fovCircleStroke.Parent = fovCircle


-- --- LÓGICA OPTIMIZADA ---

-- Ayudantes
local function isPlayer(character)
    return Players:GetPlayerFromCharacter(character) ~= nil
end

-- Almacenamiento de datos
local _targets = {}
local espData = {}

local function addTarget(target)
    -- Se añade la condición para no agregar el personaje del jugador local
    if target:IsA("Model") and target:FindFirstChildOfClass("Humanoid") and target:FindFirstChild("HumanoidRootPart") and target ~= LocalPlayer.Character then
        _targets[target] = true
    end
end

local function removeTarget(target)
    if _targets[target] then
        _targets[target] = nil
        if espData[target] then
            if espData[target].box then espData[target].box:Destroy() end
            if espData[target].nameTag then espData[target].nameTag:Destroy() end
            espData[target] = nil
        end
    end
end

-- Gestionar la lista de objetivos con eventos
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        addTarget(character)
    end)
end)

Players.PlayerRemoving:Connect(function(player)
    if player.Character then
        removeTarget(player.Character)
    end
end)

for _, player in pairs(Players:GetPlayers()) do
    if player.Character then
        addTarget(player.Character)
    end
end

workspace.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("Model") and descendant ~= LocalPlayer.Character then
        addTarget(descendant)
    end
end)

workspace.DescendantRemoving:Connect(function(descendant)
    removeTarget(descendant)
end)

-- Implementación de ESP usando BillboardGui
local function createBillboardBox(adornParent, color)
    local billboard = Instance.new("BillboardGui")
    billboard.Adornee = adornParent
    billboard.AlwaysOnTop = true
    billboard.Size = UDim2.new(0, 100, 0, 100)
    billboard.StudsOffset = Vector3.new(0, 2, 0)
    billboard.Parent = screenGui

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundTransparency = 0.7
    frame.BackgroundColor3 = color
    frame.BorderColor3 = Color3.new(1, 1, 1)
    frame.BorderSizePixel = 1
    frame.Parent = billboard

    return billboard
end

local function createNameTag(adornParent, entityName)
    local billboard = Instance.new("BillboardGui")
    billboard.Adornee = adornParent
    billboard.AlwaysOnTop = true
    billboard.Size = UDim2.new(0, 150, 0, 25)
    billboard.StudsOffset = Vector3.new(0, 3, 0)
    billboard.Parent = screenGui

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

    return billboard
end

-- Bucle principal de RenderStepped para actualizar el ESP
RunService.RenderStepped:Connect(function()
    local visualActive = visualToggle.IsOn()
    local boxActive = visualActive and boxToggle.IsOn()
    local nameActive = visualActive and nameToggle.IsOn()
    local useTeamColor = visualActive and teamColorToggle.IsOn()
    local useChams = visualActive and chamsToggle.IsOn()
    local ignoreHumans = ignoreHumansToggle.IsOn()
    local ignoreNonHumans = ignoreNonHumansToggle.IsOn()

    for entity, _ in pairs(_targets) do
        -- Filtrado basado en las nuevas opciones
        local isHuman = isPlayer(entity)
        if (isHuman and ignoreHumans) or (not isHuman and ignoreNonHumans) then
            -- Desactivar ESP para la entidad si está siendo ignorada
            if espData[entity] then
                if espData[entity].box then espData[entity].box.Enabled = false end
                if espData[entity].nameTag then espData[entity].nameTag.Enabled = false end
            end
            continue
        end

        local hrp = entity:FindFirstChild("HumanoidRootPart")
        if hrp then
            local humanoid = entity:FindFirstChildOfClass("Humanoid")
            if not humanoid or humanoid.Health <= 0 then
                removeTarget(entity) -- Si el humanoide no existe o está muerto, lo eliminamos
                continue
            end
            
            if not espData[entity] then espData[entity] = {} end

            -- ESP de cajas
            if boxActive then
                if not espData[entity].box then
                    espData[entity].box = createBillboardBox(hrp, Color3.new(1, 0, 0))
                end
                espData[entity].box.Enabled = true
                local color = Color3.fromRGB(255, 0, 0) -- Rojo por defecto
                if useChams then
                    color = Color3.fromRGB(0, 0, 255) -- Azul para chams
                elseif useTeamColor then
                    local player = Players:GetPlayerFromCharacter(entity)
                    if player and player.Team then
                        color = player.Team.TeamColor.Color
                    end
                end
                espData[entity].box.Frame.BackgroundColor3 = color
            else
                if espData[entity].box then
                    espData[entity].box.Enabled = false
                end
            end

            -- ESP de nombres
            if nameActive then
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
            -- Si no se encuentra HumanoidRootPart, limpiar
            removeTarget(entity)
        end
    end
end)

-- Función de lerp para suavizado
local function lerp(a, b, t)
    return a + (b - a) * t
end

-- Bucle para el Aimbot y el FOV
RunService.RenderStepped:Connect(function()
    local aimbotActive = aimbotToggleButton.IsOn()
    local ignoreHumans = ignoreHumansToggle.IsOn()
    local ignoreNonHumans = ignoreNonHumansToggle.IsOn()

    -- Actualizar el círculo del FOV
    if aimbotActive then
        local fovSize = UDim2.new(0, aimbotFOV * 2, 0, aimbotFOV * 2)
        fovCircle.Size = fovSize
        fovCircle.Position = UDim2.new(0.5, -aimbotFOV, 0.5, -aimbotFOV)
        fovCircle.Visible = true
    else
        fovCircle.Visible = false
    end

    if aimbotActive then
        local closestDist = math.huge
        local closestTarget = nil
        local screenCenter = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2)

        for entity, _ in pairs(_targets) do
            -- Se añade la validación para ignorar al jugador local
            if entity == LocalPlayer.Character then continue end

            -- Filtrado basado en las nuevas opciones
            local isHuman = isPlayer(entity)
            if (isHuman and ignoreHumans) or (not isHuman and ignoreNonHumans) then
                continue
            end
            
            local targetPart = entity:FindFirstChild(aimbotTarget)
            if targetPart then
                -- Wall Check (Raycasting)
                local raycastParams = RaycastParams.new()
                raycastParams.FilterDescendantsInstances = {LocalPlayer.Character}
                raycastParams.FilterType = Enum.RaycastFilterType.Exclude
                
                local result = workspace:Raycast(Camera.CFrame.Position, (targetPart.Position - Camera.CFrame.Position).Unit * 1000, raycastParams)
                
                if result and result.Instance and not result.Instance:IsDescendantOf(entity) then
                    -- Rayo choca con algo que no es el objetivo ni el jugador.
                    continue
                end

                local screenPos, onScreen = Camera:WorldToViewportPoint(targetPart.Position)
                if onScreen then
                    local dist = (Vector2.new(screenPos.X, screenPos.Y) - screenCenter).Magnitude
                    if dist < closestDist and dist < aimbotFOV then
                        closestDist = dist
                        closestTarget = targetPart
                    end
                end
            end
        end

        if closestTarget then
            local currentPos = Camera.CFrame.Position
            local targetPos = closestTarget.Position
            local targetDirection = (targetPos - currentPos).Unit
            local currentLookVector = Camera.CFrame.LookVector
            local newLookVector = lerp(currentLookVector, targetDirection, aimbotSmooth)
            Camera.CFrame = CFrame.new(currentPos, currentPos + newLookVector)
        end
    end
end)

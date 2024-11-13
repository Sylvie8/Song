local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/Sylvie8/Song/refs/heads/main/source'))()

-- Configuración inicial
local p = Instance.new("Part")
p.Position = Vector3.new(-34, 1494, -1120)
p.Size = Vector3.new(100, 10, 100)
p.Transparency = 0
p.Anchored = true  
p.Parent = workspace

-- Variables globales
local sp = 16
local applied = {}
local key = {}
local monster = {}
local locker = {}
local door = {}
local fakeDoor = {}
local maxVisibleDoors = 1
local maxVisibleFakeDoors = 3

-- Configuración de la ventana principal
local Window = OrionLib:MakeWindow({
    Name = "Sylvie",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "Sylvie"
})

-- Creación de pestañas
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Lobby = Window:MakeTab({
    Name = "Lobby",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local credits = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local others = Window:MakeTab({
    Name = "other stuff",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Funciones de utilidad para ESP
local function createBillboardGui(name, adornee, text, textColor)
    local gui = Instance.new("BillboardGui")
    gui.Name = name
    gui.Adornee = adornee
    gui.Size = UDim2.new(0, 200, 0, 50)
    gui.StudsOffset = Vector3.new(0, 2, 0)
    gui.AlwaysOnTop = true
    gui.Parent = game.CoreGui

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, 0, 1, 0)
    label.Text = text
    label.TextColor3 = textColor
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0
    label.TextScaled = true
    label.Parent = gui

    -- Cleanup connection when adornee is destroyed
    local connection
    connection = adornee.AncestryChanged:Connect(function(_, parent)
        if not parent then
            gui:Destroy()
            -- Also destroy highlight if it exists
            local highlight = game.CoreGui:FindFirstChild(name .. "Highlight")
            if highlight and highlight.Adornee == adornee then
                highlight:Destroy()
            end
            connection:Disconnect()
            
            -- Remove from respective tables
            if name == "key" then
                for i, v in ipairs(key) do
                    if v.TextGui == gui then
                        if v.Highlight then
                            v.Highlight:Destroy()
                        end
                        table.remove(key, i)
                        break
                    end
                end
            elseif name == "mons" then
                for i, v in ipairs(monster) do
                    if v == gui then
                        table.remove(monster, i)
                        break
                    end
                end
            end
        end
    end)

    return gui
end

local function getKeyColor(keyType)
    if keyType == "NormalKeyCard" then
        return Color3.fromRGB(184, 228, 255)
    elseif keyType == "InnerKeyCard" then
        return Color3.fromRGB(231, 158, 255)
    elseif keyType == "RidgeKeyCard" then
        return Color3.fromRGB(255, 195, 64)
    end
    return Color3.new(1, 1, 1)
end


local function getMonsterColor(monsterName)
    local colors = {
        Angler = Color3.fromRGB(0, 0, 255),      -- Blue
        Froger = Color3.fromRGB(255, 255, 0),    -- Yellow
        Pinkie = Color3.fromRGB(255, 192, 203),  -- Pink
        Blitz = Color3.fromRGB(135, 206, 235),   -- Light blue
        Pandemonium = Color3.fromRGB(255, 0, 0), -- Red
        WallDweller = Color3.fromRGB(128, 128, 128), -- Gray
        RottenWallDweller = Color3.fromRGB(0, 100, 0), -- Dark green
        Chainsmoker = Color3.fromRGB(144, 238, 144), -- Light green
        Eyefestation = Color3.fromRGB(190, 255, 0), -- Lime green
        ["A-60"] = Color3.fromRGB(139, 0, 0)     -- Wine red
    }
    return colors[monsterName] or Color3.new(1, 0, 0)
end


local function applykey(inst)
    local keyType = inst:GetAttribute("InteractionType")
    local keyColor = getKeyColor(keyType)
    
    -- Create text GUI
    local gui = createBillboardGui("key", inst, inst.Name, keyColor)
    table.insert(key, gui)
    
    -- Create highlight
    local highlight = Instance.new("Highlight")
    highlight.Name = "keyHighlight"
    highlight.Adornee = inst
    highlight.FillColor = keyColor
    highlight.OutlineColor = keyColor
    highlight.FillTransparency = 0.3
    highlight.OutlineTransparency = 0.7
    highlight.Parent = game.CoreGui
    
    -- Store both GUI and highlight for cleanup
    table.insert(key, {TextGui = gui, Highlight = highlight})
end

local function applymos(inst)
    local monsterColor = getMonsterColor(inst.Name)
    local gui = createBillboardGui("mons", inst, inst.Name, monsterColor)
    table.insert(monster, gui)
end

local function applylocker(inst)
    local gui = createBillboardGui("locker", inst, "Monster Locker", Color3.new(0.5, 0, 0.5))
    table.insert(locker, gui)
end


-- Sistema de detección de monstruos mejorado
local allowedMonsters = {"Angler", "Froger", "highlight", "Pinkie", "Blitz", "RemoteEvent", "Pandemonium", "WallDweller", "RottenWallDweller", "Chainsmoker", "Eyefestation", "A-60"}

local function detectMonster(inst)
    task.spawn(function()
        if not inst or not inst:IsDescendantOf(workspace) then return end

        -- Verificar si el nombre del monstruo está en la lista permitida
        if not table.find(allowedMonsters, inst.Name) then return end

        -- Detección por efectos visuales (Beam)
        if inst:IsA("Beam") and inst.Parent:IsA("Part") then
            task.wait(0.05)
            if inst and inst.Parent and 
               inst.Parent:FindFirstChildOfClass("Sound") and 
               inst.Parent:FindFirstChildOfClass("Attachment") and 
               inst.Parent.Parent == workspace and 
               not applied[inst.Parent] then
                
                applied[inst.Parent] = true
                
                if OrionLib.Flags.NotifyMonster.Value then
                    OrionLib:MakeNotification({
                        Name = "Monster Detected",
                        Content = inst.Parent.Name:gsub("Ridge", "") .. " has spawned! Hide!",
                        Image = "rbxassetid://4483345998",
                        Time = 10
                    })
                end
                
                if OrionLib.Flags.monsters.Value then
                    applymos(inst.Parent)
                end
            end
        end

        -- Detección de Wall Dweller
        if (inst.Name == "WallDweller" or inst.Name == "RottenWallDweller") and inst:IsA("Model") then
            if OrionLib.Flags.NotifyMonster.Value then
                OrionLib:MakeNotification({
                    Name = "Wall Dweller",
                    Content = "Wall Dweller has spawned! Turn around!",
                    Image = "rbxassetid://4483345998",
                    Time = 10
                })
            end
        end

        -- Detección por DeathFolder
        local monsterNames = {}
        for _, descendant in ipairs(game.ReplicatedStorage.DeathFolder:GetDescendants()) do
            table.insert(monsterNames, descendant.Name)
        end

        if table.find(monsterNames, inst.Name) then
            if OrionLib.Flags.NotifyMonster.Value then
                OrionLib:MakeNotification({
                    Name = "Monster Alert 1",
                    Content = "A monster has spawned! Hide in the closet!",
                    Image = "rbxassetid://4483345998",
                    Time = 10
                })
            end
            
            if OrionLib.Flags.monsters.Value then
                applymos(inst)
            end
            
            if OrionLib.Flags.avoids.Value then
                local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local tp = game:GetService("RunService").Heartbeat:Connect(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(p.Position)
                end)
                inst.Destroying:Wait()
                tp:Disconnect()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(oldpos)
            end
        end
    end)
end


local function applyDoor(inst)
    if #door >= maxVisibleDoors then
        door[1].TextGui:Destroy()
        door[1].Highlight:Destroy()
        table.remove(door, 1)
    end

    local textGui = Instance.new("BillboardGui")
    textGui.Name = "doorText"
    textGui.Adornee = inst
    textGui.Size = UDim2.new(0, 80, 0, 20)
    textGui.StudsOffset = Vector3.new(0, 2, 0)
    textGui.AlwaysOnTop = true
    textGui.Parent = game.CoreGui

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, 0, 1, 0)
    label.Text = "Door"
    label.TextColor3 = Color3.fromRGB(0, 201, 100)
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0
    label.TextScaled = true
    label.Parent = textGui

    local highlight = Instance.new("Highlight")
    highlight.Name = "doorHighlight"
    highlight.Adornee = inst
    highlight.FillColor = Color3.fromRGB(0, 201, 100)
    highlight.OutlineColor = Color3.fromRGB(0, 201, 100)
    highlight.FillTransparency = 0.3
    highlight.OutlineTransparency = 0.7
    highlight.Parent = game.CoreGui

    table.insert(door, {TextGui = textGui, Highlight = highlight})
end

local function applyFakeDoor(inst)
    if #fakeDoor >= maxVisibleFakeDoors then
        fakeDoor[1].TextGui:Destroy()
        fakeDoor[1].Highlight:Destroy()
        table.remove(fakeDoor, 1)
    end

    local textGui = Instance.new("BillboardGui")
    textGui.Name = "fakeDoorText"
    textGui.Adornee = inst
    textGui.Size = UDim2.new(0, 80, 0, 20)
    textGui.StudsOffset = Vector3.new(0, 2, 0)
    textGui.AlwaysOnTop = true
    textGui.Parent = game.CoreGui

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, 0, 1, 0)
    label.Text = "Fake Door"
    label.TextColor3 = Color3.fromRGB(180, 0, 10)
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0
    label.TextScaled = true
    label.Parent = textGui

    local highlight = Instance.new("Highlight")
    highlight.Name = "fakeDoorHighlight"
    highlight.Adornee = inst
    highlight.FillColor = Color3.fromRGB(180, 0, 10)
    highlight.OutlineColor = Color3.fromRGB(180, 0, 10)
    highlight.FillTransparency = 0.3
    highlight.OutlineTransparency = 0.7
    highlight.Parent = game.CoreGui

    table.insert(fakeDoor, {TextGui = textGui, Highlight = highlight})
end

-- Configuración de la interfaz
Lobby:AddButton({
    Name = "Join Random Game (could be yourself or another player)",
    Callback = function()
        game:GetService("TeleportService"):Teleport(12552538292, game.Players.LocalPlayer)
    end    
})

Tab:AddSlider({
    Name = "Set Walkspeed",
    Min = 0,
    Max = 100,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "sp",
    Callback = function(Value)
        sp = Value
    end    
})

Tab:AddButton({
    Name = "Fullbright",
    Callback = function()
        local lighting = game.Lighting
        lighting.Brightness = 3
        lighting.ClockTime = 14
        lighting.FogEnd = 100000
        lighting.GlobalShadows = false
        lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
    end    
})

Tab:AddButton({
    Name = "Give Permanent NormalKey (pick a normalkey first)",
    Callback = function()
        game.Players.LocalPlayer.PlayerFolder.Inventory.NormalKeyCard:Destroy()
        local d = Instance.new("NumberValue")
        d.Name = "NormalKeyCard"
        d.Parent = game.Players.LocalPlayer.PlayerFolder.Inventory
    end    
})

Tab:AddButton({
    Name = "Give Permanent InnerKeyCard (pick a InnerKeyCard first)",
    Callback = function()
        game.Players.LocalPlayer.PlayerFolder.Inventory.InnerKeyCard:Destroy()
        local d = Instance.new("NumberValue")
        d.Name = "InnerKeyCard"
        d.Parent = game.Players.LocalPlayer.PlayerFolder.Inventory
    end    
})

-- Toggles
Tab:AddToggle({
    Name = "no proxmitiyprompt duration",
    Default = true,
    Flag = "asdas",
    Save = true
})

Tab:AddToggle({
    Name = "Door ESP",
    Default = true,
    Flag = "doorESP",
    Save = true,
    Callback = function(Value)
        for _, cham in pairs(door) do
            cham.Enabled = Value
        end
    end    
})

Tab:AddToggle({
    Name = "Fake Door ESP",
    Default = true,
    Flag = "fakeDoorESP",
    Save = true,
    Callback = function(Value)
        for _, cham in pairs(fakeDoor) do
            cham.Enabled = Value
        end
    end    
})

Tab:AddToggle({
    Name = "Key ESP",
    Default = true,
    Flag = "keys",
    Save = true,
    Callback = function(Value)
        for _, cham in pairs(key) do
            cham.Enabled = Value
        end
    end    
})

Tab:AddToggle({
    Name = "Notify Monster",
    Default = false,
    Flag = "NotifyMonster",
    Save = true
})

Tab:AddToggle({
    Name = "Avoid any Monster (tested)",
    Default = false,
    Flag = "avoids",
    Save = true
})

Tab:AddToggle({
    Name = "No Eyefestation",
    Default = false,
    Flag = "noeyefestation",
    Save = true
})

Tab:AddToggle({
    Name = "No Searchlights",
    Default = false,
    Flag = "Searchlights",
    Save = true
})

Tab:AddToggle({
    Name = "No Steams",
    Default = false,
    Flag = "steaming",
    Save = true
})


Tab:AddToggle({
    Name = "Monster ESP",
    Default = true,
    Flag = "monsters",
    Save = true,
    Callback = function(Value)
        for _, cham in pairs(monster) do
            cham.Enabled = Value
        end
    end    
})


Tab:AddToggle({
    Name = "Monster Locker ESP",
    Default = true,
    Flag = "monsterlocker",
    Save = true,
    Callback = function(Value)
        for _, cham in pairs(locker) do
            cham.Enabled = Value
        end
    end    
})

-- Créditos y otras opciones
credits:AddParagraph("Credits to playvora", "https://scriptblox.com/script/Pressure-script-15848")
credits:AddParagraph("https://www.roblox.com/users/2207117597/profile")

others:AddButton({
    Name = "Infinity Yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end    
})

others:AddButton({
    Name = "Dex",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/dex.lua'))()
    end    
})


-- Conexión de eventos principales
local keycor = coroutine.create(function()
    workspace.Rooms.DescendantAdded:Connect(function(inst)
        if inst:IsA("Model") and inst:GetAttribute("InteractionType") == "KeyCard" then
            applykey(inst)
        end
        if inst:IsA("Model") and inst:GetAttribute("InteractionType") == "InnerKeyCard" then
            applykey(inst)
        end
    end)
end)
coroutine.resume(keycor)



workspace.DescendantAdded:Connect(function(inst)
    if inst.Name == "OpenValue" and inst.Parent.Parent.Name == "Entrances" and OrionLib.Flags.doorESP.Value then
        task.wait(0.1)
        applyDoor(inst.Parent)
    end
    if inst.Name == "Door" and inst.Parent.Name == "TricksterDoor" and OrionLib.Flags.fakeDoorESP.Value then
        task.wait(0.1)
        applyFakeDoor(inst)
    end
    if inst.Name == "Eyefestation" and OrionLib.Flags.noeyefestation.Value then
        task.wait(0.1)
        inst:Destroy()
    end
    if inst.Name == "SearchlightsEncounter" and OrionLib.Flags.Searchlights.Value then
        wait(10)
        inst:Destroy()
    end
    if inst:IsA("ProximityPrompt") and OrionLib.Flags.asdas.Value then
        task.wait(0.1)
        inst.HoldDuration = 0
    end
    if inst.Name == "Steams" and OrionLib.Flags.steaming.Value then
        task.wait(0.1)
        inst:Destroy()
    end
    if inst.Name == "MonsterLocker" and OrionLib.Flags.monsterlocker.Value then
        task.wait(0.1)
        applylocker(inst)
    end
end)

workspace.ChildAdded:Connect(detectMonster)
workspace.DescendantAdded:Connect(detectMonster)

-- Inicialización de ESP para lockers existentes
for _, v in ipairs(workspace:GetDescendants()) do
    if v.Name == "MonsterLocker" and OrionLib.Flags.monsterlocker.Value then
        applylocker(v)
    end
end

for _, v in ipairs(workspace.Rooms:GetDescendants()) do
    if v.Name == "OpenValue" and v.Parent.Parent.Name == "Entrances" and OrionLib.Flags.doorESP.Value then
        applyDoor(v.Parent)
    end
    if v.Name == "Door" and v.Parent.Name == "TricksterDoor" and OrionLib.Flags.fakeDoorESP.Value then
        applyFakeDoor(v)
    end
    if v:IsA("Model") and v:GetAttribute("InteractionType") == "KeyCard" then
        applykey(v)
    end
    if v:IsA("Model") and v:GetAttribute("InteractionType") == "InnerKeyCard" then
        applykey(v)
    end
end

-- Control de velocidad del jugador
game:GetService("RunService").Heartbeat:Connect(function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = sp
end)

local p = Instance.new("Part")
p.Position = Vector3.new(-34, 1494, -1120)
p.Size = Vector3.new(100, 10, 100)
p.Transparency = 0
p.Anchored = true  
p.Parent = workspace
local sp = 16
local key = {}
local monster = {}
local trickster = {}
local locker = {}
local door = {}
local fakeDoor = {}
local maxVisibleDoors = 1
local maxVisibleFakeDoors = 3

local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/Sylvie8/Song/refs/heads/main/source'))()
local Window = OrionLib:MakeWindow({
    Name = "Sylvie",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "Sylvie",
    BackgroundTransparency = 0.5
})

local function notifyMonster(monsterName, text)
    if OrionLib.Flags.NotifyMonsters.Value then
        OrionLib:MakeNotification({
            Name = monsterName,
            Content = text,
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        
        if OrionLib.Flags.NotifyChat.Value then
            local formatted = OrionLib.Flags.NotifyChatMessage.Value:gsub("{monster}", monsterName)
            for i,v in OrionLib.Flags.NotifyChatFormat.Value:split("; ") do
                local s = v:split("=")
                if s[2] == "None" then return end
                formatted = formatted:gsub(s[1], s[2])
            end
            game.TextChatService.TextChannels.RBXGeneral:SendAsync(formatted)
        end
    end
end

local function applymos(inst)
    if not inst or not inst.Parent then return end
    inst = inst:IsA("Model") and inst or inst:FindFirstAncestorOfClass("Model") or inst

    local ESPFolder = Instance.new("Folder", game.CoreGui)
    ESPFolder.Name = "ESPFolder"

    local hl = ESPFolder:FindFirstChild("Highlight") or Instance.new("Highlight", ESPFolder)
    hl.Adornee = inst
    hl.OutlineColor = Color3.new(0.9, 0.1, 0.2)
    hl.FillColor = Color3.new(0.9, 0.1, 0.2)
    hl.FillTransparency = 0.8
    hl.OutlineTransparency = 0.5
    hl.Enabled = OrionLib.Flags.monsters.Value

    local bg = ESPFolder:FindFirstChild("BillboardGui") or Instance.new("BillboardGui", ESPFolder)
    bg.Adornee = inst
    bg.AlwaysOnTop = true
    bg.Size = UDim2.fromOffset(100, 100)
    bg.MaxDistance = math.huge
    bg.Enabled = OrionLib.Flags.monsters.Value

    local label = bg:FindFirstChild("TextLabel") or Instance.new("TextLabel", bg)
    label.TextStrokeTransparency = 0
    label.BackgroundTransparency = 1
    label.TextColor3 = Color3.new(0.9, 0.1, 0.2)
    label.Text = inst.Name:gsub("Ridge", ""):gsub("H", " H"):gsub("Root", "")
    label.TextScaled = true
    label.Font = Enum.Font.Code
    label.Size = UDim2.fromScale(1, 0.2)
    label.Position = UDim2.new(0, 0, 0.5, 24)

    local stroke = label:FindFirstChild("UIStroke") or Instance.new("UIStroke", label)
    stroke.Thickness = 2.5

    table.insert(monster, ESPFolder)
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

local function applykey(inst)
    local existingHighlight = inst:FindFirstChild("keyHighlight")
    if not existingHighlight then
        local highlight = Instance.new("Highlight")
        highlight.Name = "keyHighlight"
        highlight.Adornee = inst
        highlight.Parent = game.CoreGui

        if inst:GetAttribute("InteractionType") == "KeyCard" then
            highlight.FillColor = Color3.fromRGB(184, 228, 255)
            highlight.OutlineColor = Color3.fromRGB(0, 0, 255)
        elseif inst:GetAttribute("InteractionType") == "InnerKeyCard" then
            highlight.FillColor = Color3.fromRGB(231, 158, 255)
            highlight.OutlineColor = Color3.fromRGB(128, 0, 128)
        end

        highlight.FillTransparency = 0.3
        highlight.OutlineTransparency = 0.7
        table.insert(key, highlight)
    end

    local text = Instance.new("BillboardGui")
    text.Name = "keyText"
    text.Adornee = inst
    text.Size = UDim2.new(0, 100, 0, 50)
    text.StudsOffset = Vector3.new(0, 2, 0)
    text.AlwaysOnTop = true
    text.Parent = inst

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, 0, 1, 0)
    label.Text = inst.Name
    if inst:GetAttribute("InteractionType") == "KeyCard" then
        label.TextColor3 = Color3.fromRGB(184, 228, 255)
    elseif inst:GetAttribute("InteractionType") == "InnerKeyCard" then
        label.TextColor3 = Color3.fromRGB(231, 158, 255)
    end
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0
    label.TextScaled = true
    label.Parent = text
end

local function applylocker(inst)
    local text = Instance.new("BillboardGui")
    text.Name = "locker"
    text.Adornee = inst
    text.Size = UDim2.new(0, 100, 0, 50)
    text.StudsOffset = Vector3.new(0, 2, 0)
    text.AlwaysOnTop = true
    text.Parent = game.CoreGui
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, 0, 1, 0)
    label.Text = "Monster Locker"
    label.TextColor3 = Color3.new(0.5, 0, 0.5) 
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0
    label.TextScaled = true
    label.Parent = text
    table.insert(locker, text)
end

local function applytrickster(inst)
    local text = Instance.new("BillboardGui")
    text.Name = "locker"
    text.Adornee = inst
    text.Size = UDim2.new(0, 200, 0, 50)
    text.StudsOffset = Vector3.new(0, 2, 0)
    text.AlwaysOnTop = true
    text.Parent = game.CoreGui
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, 0, 1, 0)
    label.Text = "Do not enter"
    label.TextColor3 = Color3.new(1, 1, 1) 
    label.BackgroundTransparency = 1
    label.TextStrokeTransparency = 0
    label.TextScaled = true
    label.Parent = text
    table.insert(trickster, text)
end

local Maikn = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Tab = Window:MakeTab({
    Name = "Visuals",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Lobby = Window:MakeTab({
    Name = "Lobby",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Event Handlers
workspace.DescendantAdded:Connect(function(inst)
    if inst.Name == "Eyefestation" then
        if OrionLib.Flags.noeyefestation.Value then
            task.wait(0.1)
            inst:Destroy()
        end
        notifyMonster("Eyefestation", "Eyefestation has spawned!\nAvoid looking at it!")
        if OrionLib.Flags.monsters.Value then
            applymos(inst)
        end
    end
    
    if inst.Name == "WallDweller" or inst.Name == "RottenWallDweller" then
        notifyMonster("Wall Dweller", "Wall Dweller has spawned!\nTurn around!")
        if OrionLib.Flags.monsters.Value then
            applymos(inst)
        end
    end
    
    if inst.Parent == workspace.Monsters and inst.Name ~= "WallDweller" then
        local monsterName = inst.Name:gsub("H", " H"):gsub("Root", "")
        notifyMonster(monsterName, monsterName .. " has spawned!")
        if OrionLib.Flags.monsters.Value then
            applymos(inst)
        end
    end
    
    if inst:IsA("Beam") and inst.Parent:IsA("Part") and 
       inst.Parent:FindFirstChildOfClass("Sound") and
       inst.Parent:FindFirstChildOfClass("Attachment") and
       inst.Parent.Parent == workspace then
        
        local monsterName = inst.Parent.Name:gsub("Ridge", "")
        local message = monsterName:match("Pandemonium") and
            "Pandemonium has spawned!\nRolling ballz time ;)" or
            monsterName .. " has spawned!\nHide!"
            
        notifyMonster(monsterName, message)
        if OrionLib.Flags.monsters.Value then
            applymos(inst.Parent)
        end
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
    if inst.Name == "OpenValue" and inst.Parent.Parent.Name == "Entrances" and OrionLib.Flags.doorESP.Value then
        task.wait(0.1)
        applyDoor(inst.Parent)
    end
    if inst.Name == "Door" and inst.Parent.Name == "TricksterDoor" and OrionLib.Flags.fakeDoorESP.Value then
        task.wait(0.1)
        applyFakeDoor(inst)
    end
end)

-- UI Elements
Lobby:AddButton({
    Name = "Join Random Game",
    Callback = function()
        game:GetService("TeleportService"):Teleport(12552538292, game.Players.LocalPlayer)
    end    
})

Maikn:AddSlider({
    Name = "Velocidad",
    Min = 0,
    Max = 100,
    Default = 16,
    Color = Color3.fromRGB(240,240,240),
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

Maikn:AddButton({
    Name = "Perma NormalKeyCard (coge una primero)",
    Callback = function()
        game.Players.LocalPlayer.PlayerFolder.Inventory.NormalKeyCard:Destroy()
        local d = Instance.new("NumberValue")
        d.Name = "NormalKeyCard"
        d.Parent = game.Players.LocalPlayer.PlayerFolder.Inventory
    end    
})

Maikn:AddButton({
    Name = "Perma InnerKeyCard (coge una primero)",
    Callback = function()
        game.Players.LocalPlayer.PlayerFolder.Inventory.InnerKeyCard:Destroy()
        local d = Instance.new("NumberValue")
        d.Name = "InnerKeyCard"
        d.Parent = game.Players.LocalPlayer.PlayerFolder.Inventory
    end    
})

-- Toggles
Maikn:AddToggle({
    Name = "Insta open door",
    Default = false,
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

Maikn:AddToggle({
    Name = "No Eyefestation",
    Default = false,
    Flag = "noeyefestation",
    Save = true
})

Maikn:AddToggle({
    Name = "No Searchlights",
    Default = false,
    Flag = "Searchlights",
    Save = true
})

Maikn:AddToggle({
    Name = "No vapor",
    Default = false,
    Flag = "steaming",
    Save = true
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
    Name = "Monster ESP",
    Default = true,
    Flag = "monsters",
    Save = true,
    Callback = function(Value)
        for _, esp in pairs(monster) do
            if esp:FindFirstChild("ESPFolder") then
                esp.ESPFolder.Highlight.Enabled = Value
                esp.ESPFolder.BillboardGui.Enabled = Value
            end
        end
    end    
})

Tab:AddToggle({
    Name = "Void Locker ESP",
    Default = true,
    Flag = "monsterlocker",
    Save = true,
    Callback = function(Value)
        for _, cham in pairs(locker) do
            cham.Enabled = Value
        end
    end    
})

-- Monster Notification System
Maikn:AddToggle({
    Name = "Notify Monsters",
    Default = true,
    Flag = "NotifyMonsters",
    Save = true
})

Maikn:AddToggle({
    Name = "Notify in Chat",
    Default = false,
    Flag = "NotifyChat",
    Save = true
})

Maikn:AddTextbox({
    Name = "Chat Message",
    Default = "{monster} has spawned!",
    Flag = "NotifyChatMessage",
    Save = true
})

Maikn:AddTextbox({
    Name = "Chat Format",
    Default = "Chainsmoker=Chain; Wall Dweller=Dweller; Bouncer=None; Statue=None; Skeleton Head=None",
    Flag = "NotifyChatFormat",
    Save = true
})

-- Initialize key coroutine
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

-- Initialize existing keys
for _, v in ipairs(workspace.Rooms:GetDescendants()) do
    if v:IsA("Model") and v:GetAttribute("InteractionType") == "KeyCard" then
        applykey(v)
    end
    if v:IsA("Model") and v:GetAttribute("InteractionType") == "InnerKeyCard" then
        applykey(v)
    end
end

-- Initialize existing lockers and doors
for _, v in ipairs(workspace:GetDescendants()) do
    if v.Name == "MonsterLocker" and OrionLib.Flags.monsterlocker.Value then
        applylocker(v)
    end
    if v.Name == "OpenValue" and v.Parent.Parent.Name == "Entrances" and OrionLib.Flags.doorESP.Value then
        applyDoor(v.Parent)
    end
    if v.Name == "Door" and v.Parent.Name == "TricksterDoor" and OrionLib.Flags.fakeDoorESP.Value then
        applyFakeDoor(v)
    end
end

-- Update player speed
game:GetService("RunService").Heartbeat:Connect(function()
    local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
    if humanoid then
        if not humanoid:GetAttribute("IsCrouching") then  -- Ajusta esto según tu forma de verificar el estado de agachado
            humanoid.WalkSpeed = sp
        else
            humanoid.WalkSpeed = 16  -- Define la velocidad cuando está agachado
        end
    end
end)

-- Add dragging functionality if needed
if AddDraggingFunctionality then
    AddDraggingFunctionality(DragPoint, Main)
end

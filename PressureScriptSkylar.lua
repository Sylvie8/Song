local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/Sylvie8/Song/refs/heads/main/source'))()

-- Configuración inicial
local p = Instance.new("Part")
p.Position = Vector3.new(-34, 1494, -1120)
p.Size = Vector3.new(100, 10, 100)
p.Transparency = 0
p.Anchored = true  
p.Parent = workspace

-- Variables globales
local interacts = {}
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
    Name = "DmN",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "DmN"
})



-- Creación de pestañas
local Maikn = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local espp = Window:MakeTab({
    Name = "ESP",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local others = Window:MakeTab({
    Name = "Otros",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


local Lobby = Window:MakeTab({
    Name = "Lobby",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


local othscripts = Window:MakeTab({
    Name = "Sub Scripts",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


local function canCarry(v)
    if not v or not v:FindFirstChild("ProximityPrompt", math.huge) or not v:FindFirstChild("ProximityPrompt", math.huge).Enabled then
        return false
    end
    
    if v.Name:match("Document") then
        return false
    end
    
    if v:GetAttribute("Price") then 
        return false 
    end
    
    if v.Name:lower():match("battery") then
        return game.Players.LocalPlayer.PlayerFolder.Batteries.Value < 5
    end
    
    if not game.Players.LocalPlayer.PlayerFolder.Inventory:FindFirstChild(v.Name:gsub("Small", "Big"):gsub("Big", "")) then
        if v:GetAttribute("InteractionType") == "KeyCard" and (game.Players.LocalPlayer.PlayerFolder.Inventory:FindFirstChild("NormalKeyCard") or game.Players.LocalPlayer.PlayerFolder.Inventory:FindFirstChild("RidgeKeyCard")) then
            return false
        end
        return true
    else
        if v.Name:match("KeyCard") then
            return false
        end

        local item = game.Players.LocalPlayer.PlayerFolder.Inventory:FindFirstChild(v.Name:gsub("Small", "Big"):gsub("Big", ""))

        local res = false
        local doesExist = false
        local function check(attr)
            if v:GetAttribute(attr) then
                doesExist = true
                res = item.Value < v:GetAttribute(attr)
            end
        end

        check("Charge")
        check("Uses")

        if doesExist then
            return res
        end

        if game.ReplicatedStorage.EquipableItems:FindFirstChild(v.Name:gsub("Small", "Big"):gsub("Big", "")) and 
           game.ReplicatedStorage.EquipableItems[v.Name:gsub("Small", "Big"):gsub("Big", "")]:GetAttribute("MaxStack") then
            return item.Value < game.ReplicatedStorage.EquipableItems[v.Name:gsub("Small", "Big"):gsub("Big", "")]:GetAttribute("MaxStack")
        end
    end
    return true
end

local cd = {}
local fppn = false
local fpp = getfenv().fireproximityprompt

if fpp then
    pcall(function()
        task.spawn(function()
            local pp = Instance.new("ProximityPrompt", game.Players.LocalPlayer.Character)
            local con; con = pp.Triggered:Connect(function()
                print("fppn")
                con:Disconnect()
                pp:Destroy()
                fppn = true
            end)
            task.wait(0.1)
            fpp(pp)
            task.wait(1.5)
            if pp and pp.Parent then
                pp:Destroy()
                print("fppb")
                con:Disconnect()
            end
        end)
    end)
end

-- Updated fireproximityprompt function
local function fireproximityprompt(pp)
    if typeof(pp) ~= "Instance" or not pp:IsA("ProximityPrompt") or not pcall(function() return pp.Parent.GetPivot end) or cd[pp] or not workspace.CurrentCamera or ((game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character.HumanoidRootPart or workspace.CurrentCamera).CFrame.Position - pp.Parent:GetPivot().Position).Magnitude > pp.MaxActivationDistance then return end
    if fppn then
        return fpp(pp)
    end
    
    cd[pp] = true
    local a,b,c,d,e = pp.MaxActivationDistance, pp.Enabled, pp.Parent, pp.HoldDuration, pp.RequiresLineOfSight
    local obj = Instance.new("Part", workspace)
    obj.Transparency = 1
    obj.CanCollide = false
    obj.Size = Vector3.new(0.1, 0.1, 0.1)
    obj.Anchored = true
    obj:PivotTo(workspace.CurrentCamera.CFrame + (workspace.CurrentCamera.CFrame.LookVector / 5))
    local con = workspace.CurrentCamera.Changed:Connect(function()
        obj:PivotTo(workspace.CurrentCamera.CFrame + (workspace.CurrentCamera.CFrame.LookVector / 5))
    end)
    local function finish()
        obj:Destroy()
        con:Disconnect()
    end
    pp.Parent = obj
    pp.MaxActivationDistance = math.huge
    pp.Enabled = true
    pp.HoldDuration = 0
    pp.RequiresLineOfSight = false
    if not pp then finish() return end
    game["Run Service"].RenderStepped:Wait()
    game["Run Service"].RenderStepped:Wait()
    pp:InputHoldBegin()
    game["Run Service"].RenderStepped:Wait()
    pp:InputHoldEnd()
    game["Run Service"].RenderStepped:Wait()
    if pp.Parent == obj then
        pp.Parent = c
        pp.MaxActivationDistance = a
        pp.Enabled = b
        pp.HoldDuration = d
        pp.RequiresLineOfSight = e
    end
    finish()
    cd[pp] = false
end

-- Funciones de utilidad para ESP
local function createBillboardGui(name, adornee, text, textColor)
    local gui = Instance.new("BillboardGui")
    gui.Name = name
    gui.Adornee = adornee
    gui.Size = UDim2.new(0, 80, 0, 20)
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
    if keyType == "KeyCard" then
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
        Angler = Color3.fromRGB(80, 134, 193),      -- Blue
        Froger = Color3.fromRGB(253, 253, 150),    -- Yellow
        Pinkie = Color3.fromRGB(143, 113, 147),  -- Pink
        Blitz = Color3.fromRGB(228, 251, 251),   -- Light blue
        Pandemonium = Color3.fromRGB(60, 0, 0), -- Red
        WallDweller = Color3.fromRGB(136, 138, 138), -- Gray
        RottenWallDweller = Color3.fromRGB(2, 104, 66),
        Chainsmoker = Color3.fromRGB(90, 181, 7),
        Eyefestation = Color3.fromRGB(155, 250, 176),
        ["A-60"] = Color3.fromRGB(150, 0, 24) 
    }
    return colors[monsterName] or Color3.new(238, 14, 14)
end


local function applykey(inst)
    local keyType = inst:GetAttribute("InteractionType")
    local keyColor = getKeyColor(keyType)

    -- Create text GUI
    local gui = createBillboardGui("key", inst, inst.Name, keyColor)
    table.insert(key, gui)
    local fillTransparency = 0.2  -- Default value
    if keyType == "KeyCard" then
        fillTransparency = 0.2    -- 0.8 opacity (1 - 0.2)
    elseif keyType == "InnerKeyCard" then
        fillTransparency = 0.2    -- 0.4 opacity (1 - 0.6)
    elseif keyType == "RidgeKeyCard" then
        fillTransparency = 0.2    -- 0.6 opacity (1 - 0.4)
    end
    

    -- Create highlight with adjusted opacity
    local highlight = Instance.new("Highlight")
    highlight.Name = "keyHighlight"
    highlight.Adornee = inst
    highlight.FillColor = keyColor
    highlight.OutlineColor = keyColor
    highlight.FillTransparency = fillTransparency
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
            Content = "Wall Dweller has spawned! Cuidado!",
            Image = "rbxassetid://4483345998",
            Time = 10
        })
    end
    
    if OrionLib.Flags.monsters.Value then
        applymos(inst)
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
                    Content = inst.Name .. " has spawned! Hide!",
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

Maikn:AddTextbox({
    Name = "Set Walkspeed",
    Default = "16",
    TextDisappear = false,
    Callback = function(Value)
        -- Convert input to number and validate
        local newSpeed = tonumber(Value)
        if newSpeed then
            -- Clamp value between 0 and 100 for safety
            sp = math.clamp(newSpeed, 0, 100)
        end
    end
})


Maikn:AddButton({
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

Maikn:AddToggle({
    Name = "Notify Monster",
    Default = false,
    Flag = "NotifyMonster",
    Save = true
})

-- Toggles Main

Maikn:AddToggle({
    Name = "Insta open door",
    Default = true,
    Flag = "asdas",
    Save = true
})


Maikn:AddToggle({
    Name = "Auto Pick up Loots",
    Default = false,
    Flag = "AutoPickup",
    Save = true
})

-- Toggles Esp
espp:AddToggle({
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


espp:AddToggle({
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


espp:AddToggle({
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


espp:AddToggle({
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


espp:AddToggle({
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


-- Toggles Others
others:AddToggle({
    Name = "No Searchlights",
    Default = false,
    Flag = "Searchlights",
    Save = true
})


others:AddToggle({
    Name = "Anti Eyefestation",
    Default = false,
    Flag = "AntiEyefestation",
    Save = true
})


-- Toggles Lobby
Lobby:AddButton({
    Name = "Join Random Game",
    Callback = function()
        game:GetService("TeleportService"):Teleport(12552538292, game.Players.LocalPlayer)
    end    
})



-- Toggles Scripts 
othscripts:AddButton({
    Name = "Infinity Yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end    
})


othscripts:AddButton({
    Name = "Dex",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
    end    
})


othscripts:AddButton({
    Name = "God Mode (Desactivar Notificaciones)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/uuuuuuu/main/pressure%20god.lua"))()
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
        if inst:IsA("Model") and inst:GetAttribute("InteractionType") == "RidgeKeyCard" then
            applykey(inst)
        end
    end)
end)
coroutine.resume(keycor)


workspace.DescendantAdded:Connect(function(inst)
    if inst.Name == "ProxyPart" and inst.Parent:IsA("Model") then
        if inst.Parent.Parent:IsA("BasePart") and inst.Parent.Parent.Name ~= "ShopSpawn" then
            table.insert(interacts, inst)
        end
    end
    if inst.Name == "OpenValue" and inst.Parent.Parent.Name == "Entrances" and OrionLib.Flags.doorESP.Value then
        task.wait(0.1)
        applyDoor(inst.Parent)
    end
    if inst.Name == "Door" and inst.Parent.Name == "TricksterDoor" and OrionLib.Flags.fakeDoorESP.Value then
        task.wait(0.1)
        applyFakeDoor(inst)
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
    if inst.Name == "Eyefestation" and (inst.Parent.Name == "EyefestationSpawn" or inst.Parent.Name == "EyefestationRoot") then
        task.spawn(function()
            repeat task.wait() until inst and inst:FindFirstChild("Active") and inst.Active.Value or not inst
            if not inst then return end
            
            task.spawn(function()
                while inst and inst.Parent and inst:FindFirstChild("Active") and not closed do
                    if OrionLib.Flags.AntiEyefestation.Value then
                        inst.Active.Value = false
                    end
                    task.wait()
                end
            end)
        end)
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
    if v:IsA("Model") and v:GetAttribute("InteractionType") == "RidgeKeyCard" then
        applykey(v)
    end
end


game:GetService("RunService").Heartbeat:Connect(function()
    if OrionLib.Flags.AutoPickup.Value then
        for _, v in pairs(interacts) do
            if v and v.Parent and v:FindFirstChild("ProximityPrompt") and canCarry(v.Parent) then
                fireproximityprompt(v.ProximityPrompt)
            end
        end
    end
end)

-- Control de velocidad del jugador
game:GetService("RunService").Heartbeat:Connect(function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = sp
end)

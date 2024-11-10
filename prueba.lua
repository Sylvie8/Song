local p = Instance.new("Part")
p.Position = Vector3.new(-34, 1494, -1120)
p.Size = Vector3.new(100, 10, 100)
p.Transparency = 0
p.Anchored = true  
p.Parent = workspace
local sp = 16
local key = {}
local monster = {}
local trickster ={}
local locker = {}
local door = {}
local fakeDoor = {}
local maxVisibleDoors = 1
local maxVisibleFakeDoors = 3

local function getGlobalTable()
	return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end

if getGlobalTable().ESPLib then
	return getGlobalTable().ESPLib
end

local ESPChange = Instance.new("BindableEvent")
local espLib; espLib = {
	ESPValues = setmetatable({}, {
		__index = function(self, name)
			return espLib.Values[name]
		end,
		__newindex = function(self, name, value)
			if espLib.Values[name] == value then return end
			espLib.Values[name] = value
			ESPChange:Fire()
		end
	}),
	Values = {},
	ESPApplied = {}
}
local cons = {}

function GetRGBValue()
	return Color3.new(
		math.sin(((os.clock() * 12) % 360) / 360 * 2 * math.pi) * 0.5 + 0.5,
		math.sin((((os.clock() * 12) % 360) / 360 + 1/3) * 2 * math.pi) * 0.5 + 0.5,
		math.sin((((os.clock() * 12) % 360) / 360 + 2/3) * 2 * math.pi) * 0.5 + 0.5
	)
end

local function applyESP(obj, espSettings)
	if not obj then return end
	obj = obj:IsA("Model") and obj or obj:FindFirstAncestorOfClass("Model") or obj

	espSettings = espSettings or {}
	espSettings.Color = espSettings.Color or Color3.new(1,1,1)
	espSettings.HighlightEnabled = type(espSettings.HighlightEnabled) ~= "nil" and espSettings.HighlightEnabled or type(espSettings.HighlightEnabled) == "nil"
	espSettings.Text = espSettings.Text or obj.Name
	espSettings.ESPName = espSettings.ESPName or ""

	local col = espSettings.Color

	local function updateESP()
		local found = table.find(espLib.ESPApplied, obj)
		if not found then
			table.insert(espLib.ESPApplied, obj)
		end

		local ESPFolder = obj:FindFirstChild("ESPFolder") or Instance.new("Folder", obj)
		ESPFolder.Name = "ESPFolder"

		local hl = ESPFolder:FindFirstChild("Highlight") or Instance.new("Highlight", ESPFolder)
		hl.Adornee = obj
		hl.OutlineColor = col
		hl.FillColor = col
		hl.FillTransparency = 0.8
		hl.OutlineTransparency = 0.5
		hl.Enabled = not not espLib.ESPValues[espSettings.ESPName]

		if not espSettings.HighlightEnabled then
			hl:Destroy()
		end

		local bg = ESPFolder:FindFirstChild("BillboardGui") or Instance.new("BillboardGui", ESPFolder)
		bg.Adornee = espSettings.Object or obj
		bg.AlwaysOnTop = true
		bg.Size = UDim2.fromOffset(100, 100)
		bg.MaxDistance = math.huge
		bg.Enabled = not not espLib.ESPValues[espSettings.ESPName]

		local circle = bg:FindFirstChild("Frame") or Instance.new("Frame", bg)
		circle.Position = UDim2.fromScale(0.5, 0.5)
		circle.AnchorPoint = Vector2.new(0.5, 0.5)
		circle.Size = UDim2.fromOffset(10, 10)
		circle.BackgroundColor3 = col
		
        local corner = circle:FindFirstChild("UICorner") or Instance.new("UICorner", circle)
		corner.CornerRadius = UDim.new(1,0)

		local gradient = circle:FindFirstChild("UIGradient") or Instance.new("UIGradient", circle)
		gradient.Rotation = 90
		gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1,1,1)), ColorSequenceKeypoint.new(1, Color3.new(0.5, 0.5, 0.5))})

		local stroke = circle:FindFirstChild("UIStroke") or Instance.new("UIStroke", circle)
		stroke.Thickness = 2.5

		local label = bg:FindFirstChild("TextLabel") or Instance.new("TextLabel", bg)
		label.TextStrokeTransparency = 1
		label.BackgroundTransparency = 1
		label.TextColor3 = col
		label.Text = espSettings.Text
		label.TextScaled = true
		label.Font = Enum.Font.Code
		label.Size = UDim2.fromScale(1, 0.2)
		label.Position = UDim2.new(0, 0, 0.5, 24)
		label.AnchorPoint = Vector2.new(0, 0.5)

		local stroke = label:FindFirstChild("UIStroke") or Instance.new("UIStroke", label)
		stroke.Thickness = 2.5
	end

	deapplyESP()
	updateESP()
	local con1, con2, con3;

	cons[obj] = {}

	local function doCon3()
		if con3 then
			con3:Disconnect()
			con3 = nil
			cons[obj][3] = nil
		end
		con3 = game["Run Service"].RenderStepped:Connect(function()
			if not obj or not obj.Parent or not obj:FindFirstChild("ESPFolder") then
				con1:Disconnect()
				con2:Disconnect()
				con3:Disconnect()
				con3 = nil
				cons[obj][3] = nil
				col = espSettings.Color
				updateESP()
				return
			end
			col = GetRGBValue()
			updateESP()
		end)
		cons[obj][3] = con3
	end
	con1 = ESPChange.Event:Connect(function()
		updateESP()
		if espLib.ESPValues.RGBESP and not con3 then
			doCon3()
		elseif not espLib.ESPValues.RGBESP and con3 then
			con3:Disconnect()
			con3 = nil
			cons[obj][3] = nil
			col = espSettings.Color
			updateESP()
		end
	end)
	con2 = obj.Destroying:Connect(function()
		con1:Disconnect()
		con2:Disconnect()
		if con3 then
			con3:Disconnect()
			con3 = nil
			cons[obj][3] = nil
			col = espSettings.Color
			updateESP()
		end
	end)
	cons[obj][1] = con1
	cons[obj][2] = con2
	if espLib.ESPValues.RGBESP then
		doCon3()
	end
end

function deapplyESP(obj)
	if not obj then return end
	obj = obj:IsA("Model") and obj or obj:FindFirstAncestorOfClass("Model") or obj

	local found = table.find(espLib.ESPApplied, obj)
	if found then
		table.remove(espLib.ESPApplied, found)
	end

	for i,v in (cons[obj] or {}) do
		if v then
			v:Disconnect()
		end
	end

	if obj:FindFirstChild("ESPFolder") then
		obj.ESPFolder:Destroy()
	end
end

espLib.ApplyESP = applyESP
espLib.DeapplyESP = deapplyESP

getGlobalTable().ESPLib = espLib

local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/Sylvie8/Song/refs/heads/main/source'))()
local Window = OrionLib:MakeWindow({
    Name = "Sylvie",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "Sylvie",
    BackgroundTransparency = 0.5
})

local function notifyMonster(monster, text)
    if OrionLib.Flags.NotifyMonsters.Value then
        OrionLib:MakeNotification({
            Name = monster,
            Content = text,
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        
        if OrionLib.Flags.NotifyChat.Value then
            local formatted = OrionLib.Flags.NotifyChatMessage.Value:gsub("{monster}", monster)
            for i,v in OrionLib.Flags.NotifyChatFormat.Value:split("; ") do
                local s = v:split("=")
                if s[2] == "None" then return end
                formatted = formatted:gsub(s[1], s[2])
            end
            game.TextChatService.TextChannels.RBXGeneral:SendAsync(formatted)
        end
    end
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

Tab:AddToggle({
    Name = "Monster ESP88",
    Default = true,
    Flag = "monsterESP",
    Save = true,
    Callback = function(Value)
        espLib.ESPValues.MonsterESP = Value
    end    
})

local function applyMonsterESP(monster)
    if not monster:IsA("Model") then return end
    
    espLib.ApplyESP(monster, {
        Color = Color3.new(1, 0, 0), -- Red color for monsters
        Text = monster.Name,
        ESPName = "MonsterESP",
        HighlightEnabled = true
    })
end

workspace.Monsters.ChildAdded:Connect(function(monster)
    applyMonsterESP(monster)
end)

for _, monster in ipairs(workspace.Monsters:GetChildren()) do
    applyMonsterESP(monster)
end

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

Maikn:AddToggle({
    Name = "Notify Monsters",
    Default = true,
    Flag = "NotifyMonsters",
    Save = true
})

local others = Window:MakeTab({
	Name = "other stuff",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

others:AddButton({
	Name = "Infinity Yield",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end    
})

others:AddButton({
	Name = "Dark Dex",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
	end    
})

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

for _, v in ipairs(workspace.Rooms:GetDescendants()) do
    if v:IsA("Model") and v:GetAttribute("InteractionType") == "KeyCard" then
        applykey(v)
    end
    if v:IsA("Model") and v:GetAttribute("InteractionType") == "InnerKeyCard" then
        applykey(v)
    end
end

workspace.DescendantAdded:Connect(function(inst)
    if inst.Name == "Eyefestation" then
        if OrionLib.Flags.noeyefestation.Value then
            task.wait(0.1)
            inst:Destroy()
        end
        notifyMonster("Eyefestation", "Eyefestation has spawned!\nAvoid looking at it!")
    end
    
    if inst.Name == "WallDweller" or inst.Name == "RottenWallDweller" then
        notifyMonster("Wall Dweller", "Wall Dweller has spawned!\nTurn around!")
    end
    
    if inst.Parent == workspace.Monsters then
        applyMonsterESP(inst)
        notifyMonster(inst.Name:gsub("H", " H"):gsub("Root", ""), 
            inst.Name:gsub("H", " H"):gsub("Root", "") .. " has spawned!")
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

game:GetService("RunService").Heartbeat:Connect(function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = sp
end)

AddDraggingFunctionality(DragPoint, Main)

espLib.ESPValues.MonsterESP = true

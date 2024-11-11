local Instance1 = Instance.new("ScreenGui", game.StarterGui) --FireLib5.0
Instance1.Enabled = true
Instance1.SafeAreaCompatibility = Enum.SafeAreaCompatibility.FullscreenExtension
Instance1.IgnoreGuiInset = true
Instance1.ClipToDeviceSafeArea = true
Instance1.DisplayOrder = 999999999
Instance1.Name = "FireLib5.0"
Instance1.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets

local Instance2 = Instance.new("Folder", Instance1) --Sounds
Instance2.Name = "Sounds"

local Instance3 = Instance.new("Folder", Instance2) --SoundsFolder
Instance3.Name = "SoundsFolder"

local Instance4 = Instance.new("Sound", Instance3) --Notification
Instance4.Pitch = 1
Instance4.EmitterSize = 10
Instance4.RollOffMode = Enum.RollOffMode.Inverse
Instance4.LoopRegion = NumberRange.new(0, 60000)
Instance4.TimePosition = 0
Instance4.PlaybackSpeed = 1
Instance4.RollOffMaxDistance = 10000
Instance4.Volume = 0.5
Instance4.PlaybackRegion = NumberRange.new(0, 60000)
Instance4.SoundId = "rbxassetid://4590657391"
Instance4.Playing = false
Instance4.Name = "Notification"
Instance4.RollOffMinDistance = 10
Instance4.Looped = false
Instance4.MinDistance = 10
Instance4.MaxDistance = 10000
Instance4.PlaybackRegionsEnabled = false
Instance4.PlayOnRemove = false

local Instance5 = Instance.new("Sound", Instance3) --MouseHover
Instance5.Pitch = 1
Instance5.EmitterSize = 10
Instance5.RollOffMode = Enum.RollOffMode.Inverse
Instance5.LoopRegion = NumberRange.new(0, 60000)
Instance5.TimePosition = 0
Instance5.PlaybackSpeed = 1
Instance5.RollOffMaxDistance = 10000
Instance5.Volume = 0.5
Instance5.PlaybackRegion = NumberRange.new(0, 60000)
Instance5.SoundId = "rbxassetid://9113884125"
Instance5.Playing = false
Instance5.Name = "MouseHover"
Instance5.RollOffMinDistance = 10
Instance5.Looped = false
Instance5.MinDistance = 10
Instance5.MaxDistance = 10000
Instance5.PlaybackRegionsEnabled = false
Instance5.PlayOnRemove = false

local Instance6 = Instance.new("Sound", Instance3) --Click
Instance6.Pitch = 1
Instance6.EmitterSize = 10
Instance6.RollOffMode = Enum.RollOffMode.Inverse
Instance6.LoopRegion = NumberRange.new(0, 60000)
Instance6.TimePosition = 0
Instance6.PlaybackSpeed = 1
Instance6.RollOffMaxDistance = 10000
Instance6.Volume = 0.5
Instance6.PlaybackRegion = NumberRange.new(0, 60000)
Instance6.SoundId = "rbxassetid://15675032796"
Instance6.Playing = false
Instance6.Name = "Click"
Instance6.RollOffMinDistance = 10
Instance6.Looped = false
Instance6.MinDistance = 10
Instance6.MaxDistance = 10000
Instance6.PlaybackRegionsEnabled = false
Instance6.PlayOnRemove = false

local Instance7 = Instance.new("Frame", Instance1) --Holder
Instance7.Visible = true
Instance7.SelectionOrder = 0
Instance7.Name = "Holder"
Instance7.Active = false
Instance7.AutomaticSize = Enum.AutomaticSize.None
Instance7.AnchorPoint = Vector2.new(0.5, 0.5)
Instance7.Style = Enum.FrameStyle.Custom
Instance7.LayoutOrder = 0
Instance7.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance7.ZIndex = 10000
Instance7.Size = UDim2.new(1, 0, 1, 0)
Instance7.Draggable = false
Instance7.Position = UDim2.new(0.5, 0, 0.5, 0)
Instance7.Selectable = false
Instance7.ClipsDescendants = false
Instance7.BorderColor3 = Color3.new(0, 0, 0)
Instance7.BorderSizePixel = 0
Instance7.Rotation = 0
Instance7.BackgroundTransparency = 1
Instance7.BorderMode = Enum.BorderMode.Outline
Instance7.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance8 = Instance.new("TextButton", Instance7) --Window
Instance8.LayoutOrder = 0
Instance8.TextWrapped = false
Instance8.LineHeight = 1
Instance8.Active = true
Instance8.TextStrokeTransparency = 1
Instance8.TextTruncate = Enum.TextTruncate.None
Instance8.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance8.ZIndex = 10001
Instance8.TextWrap = false
Instance8.Draggable = false
Instance8.RichText = false
Instance8.Modal = false
Instance8.SelectionOrder = 0
Instance8.Selectable = true
Instance8.AutoButtonColor = false
Instance8.TextXAlignment = Enum.TextXAlignment.Center
Instance8.Name = "Window"
Instance8.TextYAlignment = Enum.TextYAlignment.Center
Instance8.TextScaled = false
Instance8.TextDirection = Enum.TextDirection.Auto
Instance8.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance8.Visible = false
Instance8.BorderMode = Enum.BorderMode.Outline
Instance8.TextTransparency = 0
Instance8.FontSize = Enum.FontSize.Size14
Instance8.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance8.BackgroundColor3 = Color3.new(0.666667, 0, 1)
Instance8.AnchorPoint = Vector2.new(0.5, 0.5)
Instance8.TextSize = 14
Instance8.TextColor3 = Color3.new(0, 0, 0)
Instance8.Selected = false
Instance8.AutomaticSize = Enum.AutomaticSize.None
Instance8.Size = UDim2.new(0.699999988079071, 0, 0.7749999761581421, 0)
Instance8.ClipsDescendants = false
Instance8.BorderColor3 = Color3.new(0, 0, 0)
Instance8.Text = ""
Instance8.BorderSizePixel = 0
Instance8.Rotation = 0
Instance8.BackgroundTransparency = 0
Instance8.MaxVisibleGraphemes = -1
Instance8.Position = UDim2.new(0.5, 0, 0.5, 0)
Instance8.Style = Enum.ButtonStyle.Custom

local Instance9 = Instance.new("UIStroke", Instance8) --UIStroke
Instance9.Enabled = true
Instance9.Color = Color3.new(0, 0, 0)
Instance9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instance9.Thickness = 1
Instance9.Transparency = 0
Instance9.Name = "UIStroke"
Instance9.LineJoinMode = Enum.LineJoinMode.Miter

local Instance10 = Instance.new("Frame", Instance8) --HolderFrame
Instance10.Visible = true
Instance10.SelectionOrder = 0
Instance10.Name = "HolderFrame"
Instance10.Active = false
Instance10.AutomaticSize = Enum.AutomaticSize.None
Instance10.AnchorPoint = Vector2.new(0, 0)
Instance10.Style = Enum.FrameStyle.Custom
Instance10.LayoutOrder = 0
Instance10.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance10.ZIndex = 10002
Instance10.Size = UDim2.new(1, -4, 1, -4)
Instance10.Draggable = false
Instance10.Position = UDim2.new(0, 2, 0, 2)
Instance10.Selectable = false
Instance10.ClipsDescendants = false
Instance10.BorderColor3 = Color3.new(0, 0, 0)
Instance10.BorderSizePixel = 0
Instance10.Rotation = 0
Instance10.BackgroundTransparency = 0
Instance10.BorderMode = Enum.BorderMode.Outline
Instance10.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance11 = Instance.new("TextLabel", Instance10) --Title
Instance11.LayoutOrder = 0
Instance11.TextWrapped = true
Instance11.LineHeight = 1
Instance11.Active = false
Instance11.TextStrokeTransparency = 1
Instance11.TextTruncate = Enum.TextTruncate.None
Instance11.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance11.ZIndex = 10003
Instance11.BorderSizePixel = 0
Instance11.Draggable = false
Instance11.RichText = false
Instance11.TextWrap = true
Instance11.TextTransparency = 0
Instance11.TextYAlignment = Enum.TextYAlignment.Center
Instance11.TextScaled = true
Instance11.TextXAlignment = Enum.TextXAlignment.Center
Instance11.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance11.Name = "Title"
Instance11.BorderMode = Enum.BorderMode.Outline
Instance11.Selectable = false
Instance11.TextDirection = Enum.TextDirection.Auto
Instance11.Visible = true
Instance11.FontSize = Enum.FontSize.Size14
Instance11.AnchorPoint = Vector2.new(0, 0)
Instance11.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance11.TextSize = 14
Instance11.AutomaticSize = Enum.AutomaticSize.None
Instance11.Size = UDim2.new(1, 0, 0.06499999761581421, 0)
Instance11.TextColor3 = Color3.new(1, 1, 1)
Instance11.ClipsDescendants = false
Instance11.BorderColor3 = Color3.new(0, 0, 0)
Instance11.Text = "Fire Library | 5.0"
Instance11.SelectionOrder = 0
Instance11.BackgroundColor3 = Color3.new(1, 1, 1)
Instance11.Rotation = 0
Instance11.BackgroundTransparency = 1
Instance11.Position = UDim2.new(0, 0, 0.012500000186264515, 0)
Instance11.MaxVisibleGraphemes = -1

local Instance12 = Instance.new("Frame", Instance10) --Separator
Instance12.Visible = true
Instance12.SelectionOrder = 0
Instance12.Name = "Separator"
Instance12.Active = false
Instance12.AutomaticSize = Enum.AutomaticSize.None
Instance12.AnchorPoint = Vector2.new(0, 0)
Instance12.Style = Enum.FrameStyle.Custom
Instance12.LayoutOrder = 0
Instance12.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance12.ZIndex = 10003
Instance12.Size = UDim2.new(1, 0, 0, 2)
Instance12.Draggable = false
Instance12.Position = UDim2.new(0, 0, 0.15600000321865082, 0)
Instance12.Selectable = false
Instance12.ClipsDescendants = false
Instance12.BorderColor3 = Color3.new(0, 0, 0)
Instance12.BorderSizePixel = 0
Instance12.Rotation = 0
Instance12.BackgroundTransparency = 0
Instance12.BorderMode = Enum.BorderMode.Outline
Instance12.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance13 = Instance.new("ScrollingFrame", Instance10) --PageButtons
Instance13.LayoutOrder = 0
Instance13.Active = true
Instance13.ScrollingDirection = Enum.ScrollingDirection.X
Instance13.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance13.ZIndex = 10003
Instance13.CanvasSize = UDim2.new(0, 0, 0, 0)
Instance13.Draggable = false
Instance13.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Instance13.CanvasPosition = Vector2.new(0, 0)
Instance13.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
Instance13.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
Instance13.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
Instance13.VerticalScrollBarInset = Enum.ScrollBarInset.None
Instance13.BorderMode = Enum.BorderMode.Outline
Instance13.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
Instance13.AutomaticCanvasSize = Enum.AutomaticSize.X
Instance13.Selectable = true
Instance13.AnchorPoint = Vector2.new(0, 0)
Instance13.Name = "PageButtons"
Instance13.Visible = true
Instance13.Size = UDim2.new(1, 0, 0.06499999761581421, 0)
Instance13.ScrollBarImageColor3 = Color3.new(0, 0, 0)
Instance13.BorderSizePixel = 0
Instance13.ScrollBarImageTransparency = 0
Instance13.ClipsDescendants = true
Instance13.BorderColor3 = Color3.new(0, 0, 0)
Instance13.ScrollBarThickness = 0
Instance13.SelectionOrder = 0
Instance13.Rotation = 0
Instance13.BackgroundTransparency = 1
Instance13.Position = UDim2.new(0, 0, 0.09099999815225601, 0)
Instance13.ScrollingEnabled = true
Instance13.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
Instance13.AutomaticSize = Enum.AutomaticSize.None
Instance13.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance14 = Instance.new("UIListLayout", Instance13) --UIListLayout
Instance14.FillDirection = Enum.FillDirection.Horizontal
Instance14.HorizontalAlignment = Enum.HorizontalAlignment.Left
Instance14.HorizontalFlex = Enum.UIFlexAlignment.None
Instance14.VerticalFlex = Enum.UIFlexAlignment.None
Instance14.VerticalAlignment = Enum.VerticalAlignment.Top
Instance14.SortOrder = Enum.SortOrder.LayoutOrder
Instance14.Name = "UIListLayout"
Instance14.Padding = UDim.new(0, 0)
Instance14.ItemLineAlignment = Enum.ItemLineAlignment.Automatic

local Instance15 = Instance.new("Frame", Instance13) --PageButton
Instance15.Visible = false
Instance15.SelectionOrder = 0
Instance15.Name = "PageButton"
Instance15.Active = false
Instance15.AutomaticSize = Enum.AutomaticSize.None
Instance15.AnchorPoint = Vector2.new(0, 0)
Instance15.Style = Enum.FrameStyle.Custom
Instance15.LayoutOrder = 0
Instance15.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance15.ZIndex = 1
Instance15.Size = UDim2.new(0.22200000286102295, 0, 1, 0)
Instance15.Draggable = false
Instance15.Position = UDim2.new(0, 0, 0, 0)
Instance15.Selectable = false
Instance15.ClipsDescendants = false
Instance15.BorderColor3 = Color3.new(0, 0, 0)
Instance15.BorderSizePixel = 0
Instance15.Rotation = 0
Instance15.BackgroundTransparency = 0
Instance15.BorderMode = Enum.BorderMode.Outline
Instance15.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance16 = Instance.new("Frame", Instance15) --Selection
Instance16.Visible = false
Instance16.SelectionOrder = 0
Instance16.Name = "Selection"
Instance16.Active = false
Instance16.AutomaticSize = Enum.AutomaticSize.None
Instance16.AnchorPoint = Vector2.new(0, 0)
Instance16.Style = Enum.FrameStyle.Custom
Instance16.LayoutOrder = 0
Instance16.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance16.ZIndex = 10005
Instance16.Size = UDim2.new(1, 0, 0, 2)
Instance16.Draggable = false
Instance16.Position = UDim2.new(0, 0, 1, -2)
Instance16.Selectable = false
Instance16.ClipsDescendants = false
Instance16.BorderColor3 = Color3.new(0, 0, 0)
Instance16.BorderSizePixel = 0
Instance16.Rotation = 0
Instance16.BackgroundTransparency = 0
Instance16.BorderMode = Enum.BorderMode.Outline
Instance16.BackgroundColor3 = Color3.new(0.666667, 0, 1)

local Instance17 = Instance.new("TextLabel", Instance15) --Text
Instance17.LayoutOrder = 0
Instance17.TextWrapped = true
Instance17.LineHeight = 1
Instance17.Active = true
Instance17.TextStrokeTransparency = 1
Instance17.TextTruncate = Enum.TextTruncate.None
Instance17.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance17.ZIndex = 10005
Instance17.BorderSizePixel = 0
Instance17.Draggable = false
Instance17.RichText = false
Instance17.TextWrap = true
Instance17.TextTransparency = 0
Instance17.TextYAlignment = Enum.TextYAlignment.Center
Instance17.TextScaled = true
Instance17.TextXAlignment = Enum.TextXAlignment.Center
Instance17.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance17.Name = "Text"
Instance17.BorderMode = Enum.BorderMode.Outline
Instance17.Selectable = false
Instance17.TextDirection = Enum.TextDirection.Auto
Instance17.Visible = true
Instance17.FontSize = Enum.FontSize.Size14
Instance17.AnchorPoint = Vector2.new(0, 0.5)
Instance17.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance17.TextSize = 14
Instance17.AutomaticSize = Enum.AutomaticSize.None
Instance17.Size = UDim2.new(1, 0, 0.4749999940395355, 0)
Instance17.TextColor3 = Color3.new(1, 1, 1)
Instance17.ClipsDescendants = false
Instance17.BorderColor3 = Color3.new(0, 0, 0)
Instance17.Text = "Page Button"
Instance17.SelectionOrder = 0
Instance17.BackgroundColor3 = Color3.new(1, 1, 1)
Instance17.Rotation = 0
Instance17.BackgroundTransparency = 1
Instance17.Position = UDim2.new(0, 0, 0.5, 0)
Instance17.MaxVisibleGraphemes = -1

local Instance18 = Instance.new("TextButton", Instance15) --Trigger
Instance18.LayoutOrder = 0
Instance18.TextWrapped = false
Instance18.LineHeight = 1
Instance18.Active = true
Instance18.TextStrokeTransparency = 1
Instance18.TextTruncate = Enum.TextTruncate.None
Instance18.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance18.ZIndex = 20000
Instance18.TextWrap = false
Instance18.Draggable = false
Instance18.RichText = false
Instance18.Modal = false
Instance18.SelectionOrder = 0
Instance18.Selectable = true
Instance18.AutoButtonColor = true
Instance18.TextXAlignment = Enum.TextXAlignment.Center
Instance18.Name = "Trigger"
Instance18.TextYAlignment = Enum.TextYAlignment.Center
Instance18.TextScaled = false
Instance18.TextDirection = Enum.TextDirection.Auto
Instance18.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance18.Visible = true
Instance18.BorderMode = Enum.BorderMode.Outline
Instance18.TextTransparency = 0
Instance18.FontSize = Enum.FontSize.Size14
Instance18.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance18.BackgroundColor3 = Color3.new(1, 1, 1)
Instance18.AnchorPoint = Vector2.new(0, 0)
Instance18.TextSize = 14
Instance18.TextColor3 = Color3.new(0, 0, 0)
Instance18.Selected = false
Instance18.AutomaticSize = Enum.AutomaticSize.None
Instance18.Size = UDim2.new(1, 0, 1, 0)
Instance18.ClipsDescendants = false
Instance18.BorderColor3 = Color3.new(0, 0, 0)
Instance18.Text = ""
Instance18.BorderSizePixel = 0
Instance18.Rotation = 0
Instance18.BackgroundTransparency = 1
Instance18.MaxVisibleGraphemes = -1
Instance18.Position = UDim2.new(0, 0, 0, 0)
Instance18.Style = Enum.ButtonStyle.Custom

local Instance19 = Instance.new("Frame", Instance10) --PageDisplay
Instance19.Visible = true
Instance19.SelectionOrder = 0
Instance19.Name = "PageDisplay"
Instance19.Active = false
Instance19.AutomaticSize = Enum.AutomaticSize.None
Instance19.AnchorPoint = Vector2.new(0, 0)
Instance19.Style = Enum.FrameStyle.Custom
Instance19.LayoutOrder = 0
Instance19.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance19.ZIndex = 10003
Instance19.Size = UDim2.new(1, 0, 0.843999981880188, -1)
Instance19.Draggable = false
Instance19.Position = UDim2.new(0, 0, 0.15600000321865082, 1)
Instance19.Selectable = false
Instance19.ClipsDescendants = false
Instance19.BorderColor3 = Color3.new(0, 0, 0)
Instance19.BorderSizePixel = 0
Instance19.Rotation = 0
Instance19.BackgroundTransparency = 1
Instance19.BorderMode = Enum.BorderMode.Outline
Instance19.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance20 = Instance.new("ScrollingFrame", Instance19) --Page
Instance20.LayoutOrder = 0
Instance20.Active = true
Instance20.ScrollingDirection = Enum.ScrollingDirection.Y
Instance20.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance20.ZIndex = 10004
Instance20.CanvasSize = UDim2.new(0, 0, 0.20000000298023224, 0)
Instance20.Draggable = false
Instance20.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Instance20.CanvasPosition = Vector2.new(0, 0)
Instance20.ElasticBehavior = Enum.ElasticBehavior.Always
Instance20.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Instance20.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
Instance20.VerticalScrollBarInset = Enum.ScrollBarInset.Always
Instance20.BorderMode = Enum.BorderMode.Outline
Instance20.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
Instance20.AutomaticCanvasSize = Enum.AutomaticSize.Y
Instance20.Selectable = true
Instance20.AnchorPoint = Vector2.new(0, 0)
Instance20.Name = "Page"
Instance20.Visible = false
Instance20.Size = UDim2.new(1, 0, 1, 0)
Instance20.ScrollBarImageColor3 = Color3.new(0.666667, 0.333333, 1)
Instance20.BorderSizePixel = 0
Instance20.ScrollBarImageTransparency = 0
Instance20.ClipsDescendants = true
Instance20.BorderColor3 = Color3.new(0, 0, 0)
Instance20.ScrollBarThickness = 4
Instance20.SelectionOrder = 0
Instance20.Rotation = 0
Instance20.BackgroundTransparency = 1
Instance20.Position = UDim2.new(0, 0, 0, 0)
Instance20.ScrollingEnabled = true
Instance20.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Instance20.AutomaticSize = Enum.AutomaticSize.None
Instance20.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance21 = Instance.new("UIListLayout", Instance20) --UIListLayout
Instance21.FillDirection = Enum.FillDirection.Vertical
Instance21.HorizontalAlignment = Enum.HorizontalAlignment.Left
Instance21.HorizontalFlex = Enum.UIFlexAlignment.None
Instance21.VerticalFlex = Enum.UIFlexAlignment.None
Instance21.VerticalAlignment = Enum.VerticalAlignment.Top
Instance21.SortOrder = Enum.SortOrder.LayoutOrder
Instance21.Name = "UIListLayout"
Instance21.Padding = UDim.new(0, 0)
Instance21.ItemLineAlignment = Enum.ItemLineAlignment.Automatic

local Instance22 = Instance.new("Frame", Instance20) --Label
Instance22.Visible = false
Instance22.SelectionOrder = 0
Instance22.Name = "Label"
Instance22.Active = false
Instance22.AutomaticSize = Enum.AutomaticSize.None
Instance22.AnchorPoint = Vector2.new(0, 0)
Instance22.Style = Enum.FrameStyle.Custom
Instance22.LayoutOrder = 0
Instance22.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance22.ZIndex = 10005
Instance22.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
Instance22.Draggable = false
Instance22.Position = UDim2.new(0, 0, 0, 0)
Instance22.Selectable = false
Instance22.ClipsDescendants = false
Instance22.BorderColor3 = Color3.new(0, 0, 0)
Instance22.BorderSizePixel = 0
Instance22.Rotation = 0
Instance22.BackgroundTransparency = 1
Instance22.BorderMode = Enum.BorderMode.Outline
Instance22.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance23 = Instance.new("TextLabel", Instance22) --Text
Instance23.LayoutOrder = 0
Instance23.TextWrapped = true
Instance23.LineHeight = 1
Instance23.Active = true
Instance23.TextStrokeTransparency = 1
Instance23.TextTruncate = Enum.TextTruncate.None
Instance23.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance23.ZIndex = 10006
Instance23.BorderSizePixel = 0
Instance23.Draggable = false
Instance23.RichText = false
Instance23.TextWrap = true
Instance23.TextTransparency = 0
Instance23.TextYAlignment = Enum.TextYAlignment.Center
Instance23.TextScaled = true
Instance23.TextXAlignment = Enum.TextXAlignment.Left
Instance23.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance23.Name = "Text"
Instance23.BorderMode = Enum.BorderMode.Outline
Instance23.Selectable = false
Instance23.TextDirection = Enum.TextDirection.Auto
Instance23.Visible = true
Instance23.FontSize = Enum.FontSize.Size14
Instance23.AnchorPoint = Vector2.new(0.5, 0.5)
Instance23.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance23.TextSize = 14
Instance23.AutomaticSize = Enum.AutomaticSize.None
Instance23.Size = UDim2.new(0.8999999761581421, 0, 0.4000000059604645, 0)
Instance23.TextColor3 = Color3.new(1, 1, 1)
Instance23.ClipsDescendants = false
Instance23.BorderColor3 = Color3.new(0, 0, 0)
Instance23.Text = "LabelExample"
Instance23.SelectionOrder = 0
Instance23.BackgroundColor3 = Color3.new(1, 1, 1)
Instance23.Rotation = 0
Instance23.BackgroundTransparency = 1
Instance23.Position = UDim2.new(0.5, 0, 0.5, 0)
Instance23.MaxVisibleGraphemes = -1

local Instance24 = Instance.new("Frame", Instance22) --Separator
Instance24.Visible = true
Instance24.SelectionOrder = 0
Instance24.Name = "Separator"
Instance24.Active = false
Instance24.AutomaticSize = Enum.AutomaticSize.None
Instance24.AnchorPoint = Vector2.new(0, 0)
Instance24.Style = Enum.FrameStyle.Custom
Instance24.LayoutOrder = 0
Instance24.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance24.ZIndex = 10001
Instance24.Size = UDim2.new(1, 0, 0, 1)
Instance24.Draggable = false
Instance24.Position = UDim2.new(0, 0, 0, 0)
Instance24.Selectable = false
Instance24.ClipsDescendants = false
Instance24.BorderColor3 = Color3.new(0, 0, 0)
Instance24.BorderSizePixel = 0
Instance24.Rotation = 0
Instance24.BackgroundTransparency = 0
Instance24.BorderMode = Enum.BorderMode.Outline
Instance24.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance25 = Instance.new("TextButton", Instance20) --Toggle
Instance25.LayoutOrder = 0
Instance25.TextWrapped = false
Instance25.LineHeight = 1
Instance25.Active = true
Instance25.TextStrokeTransparency = 1
Instance25.TextTruncate = Enum.TextTruncate.None
Instance25.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance25.ZIndex = 10005
Instance25.TextWrap = false
Instance25.Draggable = false
Instance25.RichText = false
Instance25.Modal = false
Instance25.SelectionOrder = 0
Instance25.Selectable = true
Instance25.AutoButtonColor = true
Instance25.TextXAlignment = Enum.TextXAlignment.Center
Instance25.Name = "Toggle"
Instance25.TextYAlignment = Enum.TextYAlignment.Center
Instance25.TextScaled = false
Instance25.TextDirection = Enum.TextDirection.Auto
Instance25.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance25.Visible = false
Instance25.BorderMode = Enum.BorderMode.Outline
Instance25.TextTransparency = 0
Instance25.FontSize = Enum.FontSize.Size14
Instance25.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance25.BackgroundColor3 = Color3.new(1, 1, 1)
Instance25.AnchorPoint = Vector2.new(0, 0)
Instance25.TextSize = 14
Instance25.TextColor3 = Color3.new(0, 0, 0)
Instance25.Selected = false
Instance25.AutomaticSize = Enum.AutomaticSize.None
Instance25.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
Instance25.ClipsDescendants = false
Instance25.BorderColor3 = Color3.new(0, 0, 0)
Instance25.Text = ""
Instance25.BorderSizePixel = 0
Instance25.Rotation = 0
Instance25.BackgroundTransparency = 1
Instance25.MaxVisibleGraphemes = -1
Instance25.Position = UDim2.new(0, 0, 0, 0)
Instance25.Style = Enum.ButtonStyle.Custom

local Instance26 = Instance.new("Frame", Instance25) --ToggleOuter
Instance26.Visible = true
Instance26.SelectionOrder = 0
Instance26.Name = "ToggleOuter"
Instance26.Active = false
Instance26.AutomaticSize = Enum.AutomaticSize.None
Instance26.AnchorPoint = Vector2.new(0, 0.5)
Instance26.Style = Enum.FrameStyle.Custom
Instance26.LayoutOrder = 0
Instance26.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance26.ZIndex = 10006
Instance26.Size = UDim2.new(0.05000000074505806, -1, 1, 0)
Instance26.Draggable = false
Instance26.Position = UDim2.new(0.05000000074505806, 0, 0.5, 0)
Instance26.Selectable = false
Instance26.ClipsDescendants = false
Instance26.BorderColor3 = Color3.new(0, 0, 0)
Instance26.BorderSizePixel = 0
Instance26.Rotation = 0
Instance26.BackgroundTransparency = 0
Instance26.BorderMode = Enum.BorderMode.Outline
Instance26.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance27 = Instance.new("UIAspectRatioConstraint", Instance26) --UIAspectRatioConstraint
Instance27.DominantAxis = Enum.DominantAxis.Width
Instance27.AspectRatio = 1
Instance27.Name = "UIAspectRatioConstraint"
Instance27.AspectType = Enum.AspectType.FitWithinMaxSize

local Instance28 = Instance.new("UIStroke", Instance26) --UIStroke
Instance28.Enabled = true
Instance28.Color = Color3.new(0, 0, 0)
Instance28.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
Instance28.Thickness = 1
Instance28.Transparency = 0
Instance28.Name = "UIStroke"
Instance28.LineJoinMode = Enum.LineJoinMode.Miter

local Instance29 = Instance.new("Frame", Instance26) --Frame
Instance29.Visible = true
Instance29.SelectionOrder = 0
Instance29.Name = "Frame"
Instance29.Active = false
Instance29.AutomaticSize = Enum.AutomaticSize.None
Instance29.AnchorPoint = Vector2.new(0, 0)
Instance29.Style = Enum.FrameStyle.Custom
Instance29.LayoutOrder = 0
Instance29.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance29.ZIndex = 10007
Instance29.Size = UDim2.new(1, -4, 1, -4)
Instance29.Draggable = false
Instance29.Position = UDim2.new(0, 2, 0, 2)
Instance29.Selectable = false
Instance29.ClipsDescendants = false
Instance29.BorderColor3 = Color3.new(0, 0, 0)
Instance29.BorderSizePixel = 0
Instance29.Rotation = 0
Instance29.BackgroundTransparency = 0
Instance29.BorderMode = Enum.BorderMode.Outline
Instance29.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance30 = Instance.new("ImageLabel", Instance29) --ImageLabel
Instance30.Visible = true
Instance30.Active = false
Instance30.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance30.ZIndex = 10008
Instance30.BorderSizePixel = 0
Instance30.SliceCenter = Rect.new(0, 0, 0, 0)
Instance30.Draggable = false
Instance30.ScaleType = Enum.ScaleType.Stretch
Instance30.BackgroundColor3 = Color3.new(1, 1, 1)
Instance30.ImageTransparency = 0
Instance30.AnchorPoint = Vector2.new(0.5, 0.5)
Instance30.Image = "rbxassetid://136165335"
Instance30.TileSize = UDim2.new(1, 0, 1, 0)
Instance30.ImageRectSize = Vector2.new(0, 0)
Instance30.SelectionOrder = 0
Instance30.Selectable = false
Instance30.Size = UDim2.new(1, 0, 1, 0)
Instance30.Name = "ImageLabel"
Instance30.ResampleMode = Enum.ResamplerMode.Default
Instance30.ClipsDescendants = false
Instance30.BorderColor3 = Color3.new(0, 0, 0)
Instance30.ImageColor3 = Color3.new(0.666667, 0, 1)
Instance30.LayoutOrder = 0
Instance30.BorderMode = Enum.BorderMode.Outline
Instance30.Rotation = 0
Instance30.ImageRectOffset = Vector2.new(0, 0)
Instance30.BackgroundTransparency = 1
Instance30.Position = UDim2.new(0.5, 0, 0.5, 0)
Instance30.SliceScale = 1
Instance30.AutomaticSize = Enum.AutomaticSize.None

local Instance31 = Instance.new("TextLabel", Instance25) --Text
Instance31.LayoutOrder = 0
Instance31.TextWrapped = true
Instance31.LineHeight = 1
Instance31.Active = true
Instance31.TextStrokeTransparency = 1
Instance31.TextTruncate = Enum.TextTruncate.None
Instance31.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance31.ZIndex = 10006
Instance31.BorderSizePixel = 0
Instance31.Draggable = false
Instance31.RichText = false
Instance31.TextWrap = true
Instance31.TextTransparency = 0
Instance31.TextYAlignment = Enum.TextYAlignment.Center
Instance31.TextScaled = true
Instance31.TextXAlignment = Enum.TextXAlignment.Left
Instance31.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance31.Name = "Text"
Instance31.BorderMode = Enum.BorderMode.Outline
Instance31.Selectable = false
Instance31.TextDirection = Enum.TextDirection.Auto
Instance31.Visible = true
Instance31.FontSize = Enum.FontSize.Size14
Instance31.AnchorPoint = Vector2.new(0.5, 0.5)
Instance31.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance31.TextSize = 14
Instance31.AutomaticSize = Enum.AutomaticSize.None
Instance31.Size = UDim2.new(0.824999988079071, 0, 0.4000000059604645, 0)
Instance31.TextColor3 = Color3.new(1, 1, 1)
Instance31.ClipsDescendants = false
Instance31.BorderColor3 = Color3.new(0, 0, 0)
Instance31.Text = "ToggleExample"
Instance31.SelectionOrder = 0
Instance31.BackgroundColor3 = Color3.new(1, 1, 1)
Instance31.Rotation = 0
Instance31.BackgroundTransparency = 1
Instance31.Position = UDim2.new(0.5249999761581421, 0, 0.5, 0)
Instance31.MaxVisibleGraphemes = -1

local Instance32 = Instance.new("Frame", Instance25) --Separator
Instance32.Visible = true
Instance32.SelectionOrder = 0
Instance32.Name = "Separator"
Instance32.Active = false
Instance32.AutomaticSize = Enum.AutomaticSize.None
Instance32.AnchorPoint = Vector2.new(0, 0)
Instance32.Style = Enum.FrameStyle.Custom
Instance32.LayoutOrder = 0
Instance32.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance32.ZIndex = 10006
Instance32.Size = UDim2.new(1, 0, 0, 1)
Instance32.Draggable = false
Instance32.Position = UDim2.new(0, 0, 0, 0)
Instance32.Selectable = false
Instance32.ClipsDescendants = false
Instance32.BorderColor3 = Color3.new(0, 0, 0)
Instance32.BorderSizePixel = 0
Instance32.Rotation = 0
Instance32.BackgroundTransparency = 0
Instance32.BorderMode = Enum.BorderMode.Outline
Instance32.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance33 = Instance.new("TextButton", Instance25) --Trigger
Instance33.LayoutOrder = 0
Instance33.TextWrapped = false
Instance33.LineHeight = 1
Instance33.Active = true
Instance33.TextStrokeTransparency = 1
Instance33.TextTruncate = Enum.TextTruncate.None
Instance33.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance33.ZIndex = 20000
Instance33.TextWrap = false
Instance33.Draggable = false
Instance33.RichText = false
Instance33.Modal = false
Instance33.SelectionOrder = 0
Instance33.Selectable = true
Instance33.AutoButtonColor = true
Instance33.TextXAlignment = Enum.TextXAlignment.Center
Instance33.Name = "Trigger"
Instance33.TextYAlignment = Enum.TextYAlignment.Center
Instance33.TextScaled = false
Instance33.TextDirection = Enum.TextDirection.Auto
Instance33.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance33.Visible = true
Instance33.BorderMode = Enum.BorderMode.Outline
Instance33.TextTransparency = 0
Instance33.FontSize = Enum.FontSize.Size14
Instance33.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance33.BackgroundColor3 = Color3.new(1, 1, 1)
Instance33.AnchorPoint = Vector2.new(0, 0)
Instance33.TextSize = 14
Instance33.TextColor3 = Color3.new(0, 0, 0)
Instance33.Selected = false
Instance33.AutomaticSize = Enum.AutomaticSize.None
Instance33.Size = UDim2.new(1, 0, 1, 0)
Instance33.ClipsDescendants = false
Instance33.BorderColor3 = Color3.new(0, 0, 0)
Instance33.Text = ""
Instance33.BorderSizePixel = 0
Instance33.Rotation = 0
Instance33.BackgroundTransparency = 1
Instance33.MaxVisibleGraphemes = -1
Instance33.Position = UDim2.new(0, 0, 0, 0)
Instance33.Style = Enum.ButtonStyle.Custom

local Instance34 = Instance.new("Frame", Instance25) --Separator
Instance34.Visible = true
Instance34.SelectionOrder = 0
Instance34.Name = "Separator"
Instance34.Active = false
Instance34.AutomaticSize = Enum.AutomaticSize.None
Instance34.AnchorPoint = Vector2.new(0, 0)
Instance34.Style = Enum.FrameStyle.Custom
Instance34.LayoutOrder = 0
Instance34.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance34.ZIndex = 10006
Instance34.Size = UDim2.new(1, 0, 0, 1)
Instance34.Draggable = false
Instance34.Position = UDim2.new(0, 0, 1, -1)
Instance34.Selectable = false
Instance34.ClipsDescendants = false
Instance34.BorderColor3 = Color3.new(0, 0, 0)
Instance34.BorderSizePixel = 0
Instance34.Rotation = 0
Instance34.BackgroundTransparency = 0
Instance34.BorderMode = Enum.BorderMode.Outline
Instance34.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance35 = Instance.new("TextButton", Instance20) --Slider
Instance35.LayoutOrder = 0
Instance35.TextWrapped = false
Instance35.LineHeight = 1
Instance35.Active = true
Instance35.TextStrokeTransparency = 1
Instance35.TextTruncate = Enum.TextTruncate.None
Instance35.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance35.ZIndex = 10005
Instance35.TextWrap = false
Instance35.Draggable = false
Instance35.RichText = false
Instance35.Modal = false
Instance35.SelectionOrder = 0
Instance35.Selectable = true
Instance35.AutoButtonColor = true
Instance35.TextXAlignment = Enum.TextXAlignment.Center
Instance35.Name = "Slider"
Instance35.TextYAlignment = Enum.TextYAlignment.Center
Instance35.TextScaled = false
Instance35.TextDirection = Enum.TextDirection.Auto
Instance35.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance35.Visible = false
Instance35.BorderMode = Enum.BorderMode.Outline
Instance35.TextTransparency = 0
Instance35.FontSize = Enum.FontSize.Size14
Instance35.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance35.BackgroundColor3 = Color3.new(1, 1, 1)
Instance35.AnchorPoint = Vector2.new(0, 0)
Instance35.TextSize = 14
Instance35.TextColor3 = Color3.new(0, 0, 0)
Instance35.Selected = false
Instance35.AutomaticSize = Enum.AutomaticSize.None
Instance35.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
Instance35.ClipsDescendants = false
Instance35.BorderColor3 = Color3.new(0, 0, 0)
Instance35.Text = ""
Instance35.BorderSizePixel = 0
Instance35.Rotation = 0
Instance35.BackgroundTransparency = 1
Instance35.MaxVisibleGraphemes = -1
Instance35.Position = UDim2.new(0, 0, 0, 0)
Instance35.Style = Enum.ButtonStyle.Custom

local Instance36 = Instance.new("TextLabel", Instance35) --Text
Instance36.LayoutOrder = 0
Instance36.TextWrapped = true
Instance36.LineHeight = 1
Instance36.Active = true
Instance36.TextStrokeTransparency = 1
Instance36.TextTruncate = Enum.TextTruncate.None
Instance36.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance36.ZIndex = 10006
Instance36.BorderSizePixel = 0
Instance36.Draggable = false
Instance36.RichText = false
Instance36.TextWrap = true
Instance36.TextTransparency = 0
Instance36.TextYAlignment = Enum.TextYAlignment.Center
Instance36.TextScaled = true
Instance36.TextXAlignment = Enum.TextXAlignment.Left
Instance36.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance36.Name = "Text"
Instance36.BorderMode = Enum.BorderMode.Outline
Instance36.Selectable = false
Instance36.TextDirection = Enum.TextDirection.Auto
Instance36.Visible = true
Instance36.FontSize = Enum.FontSize.Size14
Instance36.AnchorPoint = Vector2.new(0.5, 0.5)
Instance36.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance36.TextSize = 14
Instance36.AutomaticSize = Enum.AutomaticSize.None
Instance36.Size = UDim2.new(0.8999999761581421, 0, 0.4000000059604645, 0)
Instance36.TextColor3 = Color3.new(1, 1, 1)
Instance36.ClipsDescendants = false
Instance36.BorderColor3 = Color3.new(0, 0, 0)
Instance36.Text = "SliderExample"
Instance36.SelectionOrder = 0
Instance36.BackgroundColor3 = Color3.new(1, 1, 1)
Instance36.Rotation = 0
Instance36.BackgroundTransparency = 1
Instance36.Position = UDim2.new(0.5, 0, 0.25, 0)
Instance36.MaxVisibleGraphemes = -1

local Instance37 = Instance.new("Frame", Instance35) --Separator
Instance37.Visible = true
Instance37.SelectionOrder = 0
Instance37.Name = "Separator"
Instance37.Active = false
Instance37.AutomaticSize = Enum.AutomaticSize.None
Instance37.AnchorPoint = Vector2.new(0, 0)
Instance37.Style = Enum.FrameStyle.Custom
Instance37.LayoutOrder = 0
Instance37.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance37.ZIndex = 10006
Instance37.Size = UDim2.new(1, 0, 0, 1)
Instance37.Draggable = false
Instance37.Position = UDim2.new(0, 0, 0, 0)
Instance37.Selectable = false
Instance37.ClipsDescendants = false
Instance37.BorderColor3 = Color3.new(0, 0, 0)
Instance37.BorderSizePixel = 0
Instance37.Rotation = 0
Instance37.BackgroundTransparency = 0
Instance37.BorderMode = Enum.BorderMode.Outline
Instance37.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance38 = Instance.new("Frame", Instance35) --SliderOuter
Instance38.Visible = true
Instance38.SelectionOrder = 0
Instance38.Name = "SliderOuter"
Instance38.Active = false
Instance38.AutomaticSize = Enum.AutomaticSize.None
Instance38.AnchorPoint = Vector2.new(0, 0)
Instance38.Style = Enum.FrameStyle.Custom
Instance38.LayoutOrder = 0
Instance38.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance38.ZIndex = 10006
Instance38.Size = UDim2.new(0.8999999761581421, -2, 0.4000000059604645, 0)
Instance38.Draggable = false
Instance38.Position = UDim2.new(0.05000000074505806, 1, 0.5, 0)
Instance38.Selectable = false
Instance38.ClipsDescendants = false
Instance38.BorderColor3 = Color3.new(0, 0, 0)
Instance38.BorderSizePixel = 0
Instance38.Rotation = 0
Instance38.BackgroundTransparency = 0
Instance38.BorderMode = Enum.BorderMode.Outline
Instance38.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance39 = Instance.new("UIStroke", Instance38) --UIStroke
Instance39.Enabled = true
Instance39.Color = Color3.new(0, 0, 0)
Instance39.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
Instance39.Thickness = 1
Instance39.Transparency = 0
Instance39.Name = "UIStroke"
Instance39.LineJoinMode = Enum.LineJoinMode.Miter

local Instance40 = Instance.new("Frame", Instance38) --Bar
Instance40.Visible = true
Instance40.SelectionOrder = 0
Instance40.Name = "Bar"
Instance40.Active = false
Instance40.AutomaticSize = Enum.AutomaticSize.None
Instance40.AnchorPoint = Vector2.new(0, 0)
Instance40.Style = Enum.FrameStyle.Custom
Instance40.LayoutOrder = 0
Instance40.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance40.ZIndex = 10007
Instance40.Size = UDim2.new(1, -4, 1, -4)
Instance40.Draggable = false
Instance40.Position = UDim2.new(0, 2, 0, 2)
Instance40.Selectable = false
Instance40.ClipsDescendants = false
Instance40.BorderColor3 = Color3.new(0, 0, 0)
Instance40.BorderSizePixel = 0
Instance40.Rotation = 0
Instance40.BackgroundTransparency = 0
Instance40.BorderMode = Enum.BorderMode.Outline
Instance40.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance41 = Instance.new("Frame", Instance40) --Fill
Instance41.Visible = true
Instance41.SelectionOrder = 0
Instance41.Name = "Fill"
Instance41.Active = false
Instance41.AutomaticSize = Enum.AutomaticSize.None
Instance41.AnchorPoint = Vector2.new(0, 0)
Instance41.Style = Enum.FrameStyle.Custom
Instance41.LayoutOrder = 0
Instance41.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance41.ZIndex = 10008
Instance41.Size = UDim2.new(0.5, 0, 1, 0)
Instance41.Draggable = false
Instance41.Position = UDim2.new(0, 0, 0, 0)
Instance41.Selectable = false
Instance41.ClipsDescendants = false
Instance41.BorderColor3 = Color3.new(0, 0, 0)
Instance41.BorderSizePixel = 0
Instance41.Rotation = 0
Instance41.BackgroundTransparency = 0
Instance41.BorderMode = Enum.BorderMode.Outline
Instance41.BackgroundColor3 = Color3.new(0.666667, 0, 1)

local Instance42 = Instance.new("TextLabel", Instance40) --Progress
Instance42.LayoutOrder = 0
Instance42.TextWrapped = true
Instance42.LineHeight = 1
Instance42.Active = false
Instance42.TextStrokeTransparency = 1
Instance42.TextTruncate = Enum.TextTruncate.None
Instance42.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance42.ZIndex = 10009
Instance42.BorderSizePixel = 0
Instance42.Draggable = false
Instance42.RichText = false
Instance42.TextWrap = true
Instance42.TextTransparency = 0
Instance42.TextYAlignment = Enum.TextYAlignment.Center
Instance42.TextScaled = true
Instance42.TextXAlignment = Enum.TextXAlignment.Center
Instance42.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance42.Name = "Progress"
Instance42.BorderMode = Enum.BorderMode.Outline
Instance42.Selectable = false
Instance42.TextDirection = Enum.TextDirection.Auto
Instance42.Visible = true
Instance42.FontSize = Enum.FontSize.Size14
Instance42.AnchorPoint = Vector2.new(0, 0)
Instance42.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance42.TextSize = 14
Instance42.AutomaticSize = Enum.AutomaticSize.None
Instance42.Size = UDim2.new(1, 0, 1, 0)
Instance42.TextColor3 = Color3.new(1, 1, 1)
Instance42.ClipsDescendants = false
Instance42.BorderColor3 = Color3.new(0, 0, 0)
Instance42.Text = "50 / 100"
Instance42.SelectionOrder = 0
Instance42.BackgroundColor3 = Color3.new(1, 1, 1)
Instance42.Rotation = 0
Instance42.BackgroundTransparency = 1
Instance42.Position = UDim2.new(0, 0, 0, 0)
Instance42.MaxVisibleGraphemes = -1

local Instance43 = Instance.new("TextButton", Instance35) --Trigger
Instance43.LayoutOrder = 0
Instance43.TextWrapped = false
Instance43.LineHeight = 1
Instance43.Active = true
Instance43.TextStrokeTransparency = 1
Instance43.TextTruncate = Enum.TextTruncate.None
Instance43.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance43.ZIndex = 20000
Instance43.TextWrap = false
Instance43.Draggable = false
Instance43.RichText = false
Instance43.Modal = false
Instance43.SelectionOrder = 0
Instance43.Selectable = true
Instance43.AutoButtonColor = true
Instance43.TextXAlignment = Enum.TextXAlignment.Center
Instance43.Name = "Trigger"
Instance43.TextYAlignment = Enum.TextYAlignment.Center
Instance43.TextScaled = false
Instance43.TextDirection = Enum.TextDirection.Auto
Instance43.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance43.Visible = true
Instance43.BorderMode = Enum.BorderMode.Outline
Instance43.TextTransparency = 0
Instance43.FontSize = Enum.FontSize.Size14
Instance43.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance43.BackgroundColor3 = Color3.new(1, 1, 1)
Instance43.AnchorPoint = Vector2.new(0, 0)
Instance43.TextSize = 14
Instance43.TextColor3 = Color3.new(0, 0, 0)
Instance43.Selected = false
Instance43.AutomaticSize = Enum.AutomaticSize.None
Instance43.Size = UDim2.new(1, 0, 1, 0)
Instance43.ClipsDescendants = false
Instance43.BorderColor3 = Color3.new(0, 0, 0)
Instance43.Text = ""
Instance43.BorderSizePixel = 0
Instance43.Rotation = 0
Instance43.BackgroundTransparency = 1
Instance43.MaxVisibleGraphemes = -1
Instance43.Position = UDim2.new(0, 0, 0, 0)
Instance43.Style = Enum.ButtonStyle.Custom

local Instance44 = Instance.new("Frame", Instance35) --Separator
Instance44.Visible = true
Instance44.SelectionOrder = 0
Instance44.Name = "Separator"
Instance44.Active = false
Instance44.AutomaticSize = Enum.AutomaticSize.None
Instance44.AnchorPoint = Vector2.new(0, 0)
Instance44.Style = Enum.FrameStyle.Custom
Instance44.LayoutOrder = 0
Instance44.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance44.ZIndex = 10006
Instance44.Size = UDim2.new(1, 0, 0, 1)
Instance44.Draggable = false
Instance44.Position = UDim2.new(0, 0, 1, -1)
Instance44.Selectable = false
Instance44.ClipsDescendants = false
Instance44.BorderColor3 = Color3.new(0, 0, 0)
Instance44.BorderSizePixel = 0
Instance44.Rotation = 0
Instance44.BackgroundTransparency = 0
Instance44.BorderMode = Enum.BorderMode.Outline
Instance44.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance45 = Instance.new("Frame", Instance20) --ColorPicker
Instance45.Visible = false
Instance45.SelectionOrder = 0
Instance45.Name = "ColorPicker"
Instance45.Active = false
Instance45.AutomaticSize = Enum.AutomaticSize.None
Instance45.AnchorPoint = Vector2.new(0, 0)
Instance45.Style = Enum.FrameStyle.Custom
Instance45.LayoutOrder = 0
Instance45.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance45.ZIndex = 10005
Instance45.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
Instance45.Draggable = false
Instance45.Position = UDim2.new(0, 0, 0, 0)
Instance45.Selectable = false
Instance45.ClipsDescendants = false
Instance45.BorderColor3 = Color3.new(0, 0, 0)
Instance45.BorderSizePixel = 0
Instance45.Rotation = 0
Instance45.BackgroundTransparency = 1
Instance45.BorderMode = Enum.BorderMode.Outline
Instance45.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance46 = Instance.new("Frame", Instance45) --Separator
Instance46.Visible = true
Instance46.SelectionOrder = 0
Instance46.Name = "Separator"
Instance46.Active = false
Instance46.AutomaticSize = Enum.AutomaticSize.None
Instance46.AnchorPoint = Vector2.new(0, 0)
Instance46.Style = Enum.FrameStyle.Custom
Instance46.LayoutOrder = 0
Instance46.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance46.ZIndex = 10006
Instance46.Size = UDim2.new(1, 0, 0, 1)
Instance46.Draggable = false
Instance46.Position = UDim2.new(0, 0, 0, 0)
Instance46.Selectable = false
Instance46.ClipsDescendants = false
Instance46.BorderColor3 = Color3.new(0, 0, 0)
Instance46.BorderSizePixel = 0
Instance46.Rotation = 0
Instance46.BackgroundTransparency = 0
Instance46.BorderMode = Enum.BorderMode.Outline
Instance46.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance47 = Instance.new("TextLabel", Instance45) --Text
Instance47.LayoutOrder = 0
Instance47.TextWrapped = true
Instance47.LineHeight = 1
Instance47.Active = true
Instance47.TextStrokeTransparency = 1
Instance47.TextTruncate = Enum.TextTruncate.None
Instance47.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance47.ZIndex = 10006
Instance47.BorderSizePixel = 0
Instance47.Draggable = false
Instance47.RichText = false
Instance47.TextWrap = true
Instance47.TextTransparency = 0
Instance47.TextYAlignment = Enum.TextYAlignment.Center
Instance47.TextScaled = true
Instance47.TextXAlignment = Enum.TextXAlignment.Left
Instance47.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance47.Name = "Text"
Instance47.BorderMode = Enum.BorderMode.Outline
Instance47.Selectable = false
Instance47.TextDirection = Enum.TextDirection.Auto
Instance47.Visible = true
Instance47.FontSize = Enum.FontSize.Size14
Instance47.AnchorPoint = Vector2.new(0, 0.5)
Instance47.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance47.TextSize = 14
Instance47.AutomaticSize = Enum.AutomaticSize.None
Instance47.Size = UDim2.new(0.8999999761581421, 0, 0.4000000059604645, 0)
Instance47.TextColor3 = Color3.new(1, 1, 1)
Instance47.ClipsDescendants = false
Instance47.BorderColor3 = Color3.new(0, 0, 0)
Instance47.Text = "ColorPickerExample"
Instance47.SelectionOrder = 0
Instance47.BackgroundColor3 = Color3.new(1, 1, 1)
Instance47.Rotation = 0
Instance47.BackgroundTransparency = 1
Instance47.Position = UDim2.new(0.05000000074505806, 0, 0.25, 0)
Instance47.MaxVisibleGraphemes = -1

local Instance48 = Instance.new("Frame", Instance47) --Color
Instance48.Visible = true
Instance48.SelectionOrder = 0
Instance48.Name = "Color"
Instance48.Active = false
Instance48.AutomaticSize = Enum.AutomaticSize.None
Instance48.AnchorPoint = Vector2.new(0, 0.5)
Instance48.Style = Enum.FrameStyle.Custom
Instance48.LayoutOrder = 0
Instance48.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance48.ZIndex = 10007
Instance48.Size = UDim2.new(0.699999988079071, 0, 0.699999988079071, 0)
Instance48.Draggable = false
Instance48.Position = UDim2.new(0.9700000286102295, 0, 0.5, 0)
Instance48.Selectable = false
Instance48.ClipsDescendants = false
Instance48.BorderColor3 = Color3.new(0, 0, 0)
Instance48.BorderSizePixel = 0
Instance48.Rotation = 0
Instance48.BackgroundTransparency = 0
Instance48.BorderMode = Enum.BorderMode.Outline
Instance48.BackgroundColor3 = Color3.new(0.498039, 0.498039, 0.498039)

local Instance49 = Instance.new("UIAspectRatioConstraint", Instance48) --UIAspectRatioConstraint
Instance49.DominantAxis = Enum.DominantAxis.Width
Instance49.AspectRatio = 1
Instance49.Name = "UIAspectRatioConstraint"
Instance49.AspectType = Enum.AspectType.FitWithinMaxSize

local Instance50 = Instance.new("UIStroke", Instance48) --UIStroke
Instance50.Enabled = true
Instance50.Color = Color3.new(0, 0, 0)
Instance50.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instance50.Thickness = 1
Instance50.Transparency = 0
Instance50.Name = "UIStroke"
Instance50.LineJoinMode = Enum.LineJoinMode.Miter

local Instance51 = Instance.new("Frame", Instance45) --RGB
Instance51.Visible = true
Instance51.SelectionOrder = 0
Instance51.Name = "RGB"
Instance51.Active = false
Instance51.AutomaticSize = Enum.AutomaticSize.None
Instance51.AnchorPoint = Vector2.new(0.5, 0)
Instance51.Style = Enum.FrameStyle.Custom
Instance51.LayoutOrder = 0
Instance51.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance51.ZIndex = 10006
Instance51.Size = UDim2.new(0.9300000071525574, 0, 0.4000000059604645, 0)
Instance51.Draggable = false
Instance51.Position = UDim2.new(0.5, 0, 0.5, 0)
Instance51.Selectable = false
Instance51.ClipsDescendants = false
Instance51.BorderColor3 = Color3.new(0, 0, 0)
Instance51.BorderSizePixel = 0
Instance51.Rotation = 0
Instance51.BackgroundTransparency = 1
Instance51.BorderMode = Enum.BorderMode.Outline
Instance51.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance52 = Instance.new("UIListLayout", Instance51) --UIListLayout
Instance52.FillDirection = Enum.FillDirection.Horizontal
Instance52.HorizontalAlignment = Enum.HorizontalAlignment.Left
Instance52.HorizontalFlex = Enum.UIFlexAlignment.None
Instance52.VerticalFlex = Enum.UIFlexAlignment.None
Instance52.VerticalAlignment = Enum.VerticalAlignment.Top
Instance52.SortOrder = Enum.SortOrder.LayoutOrder
Instance52.Name = "UIListLayout"
Instance52.Padding = UDim.new(0, 0)
Instance52.ItemLineAlignment = Enum.ItemLineAlignment.Automatic

local Instance53 = Instance.new("Frame", Instance51) --RHolder
Instance53.Visible = true
Instance53.SelectionOrder = 0
Instance53.Name = "RHolder"
Instance53.Active = false
Instance53.AutomaticSize = Enum.AutomaticSize.None
Instance53.AnchorPoint = Vector2.new(0, 0)
Instance53.Style = Enum.FrameStyle.Custom
Instance53.LayoutOrder = 0
Instance53.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance53.ZIndex = 10007
Instance53.Size = UDim2.new(0.3330000042915344, 0, 1, 0)
Instance53.Draggable = false
Instance53.Position = UDim2.new(0, 0, 0, 0)
Instance53.Selectable = false
Instance53.ClipsDescendants = false
Instance53.BorderColor3 = Color3.new(0, 0, 0)
Instance53.BorderSizePixel = 0
Instance53.Rotation = 0
Instance53.BackgroundTransparency = 1
Instance53.BorderMode = Enum.BorderMode.Outline
Instance53.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance54 = Instance.new("TextButton", Instance53) --SliderOuter
Instance54.LayoutOrder = 0
Instance54.TextWrapped = false
Instance54.LineHeight = 1
Instance54.Active = true
Instance54.TextStrokeTransparency = 1
Instance54.TextTruncate = Enum.TextTruncate.None
Instance54.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance54.ZIndex = 10001
Instance54.TextWrap = false
Instance54.Draggable = false
Instance54.RichText = false
Instance54.Modal = false
Instance54.SelectionOrder = 0
Instance54.Selectable = true
Instance54.AutoButtonColor = false
Instance54.TextXAlignment = Enum.TextXAlignment.Center
Instance54.Name = "SliderOuter"
Instance54.TextYAlignment = Enum.TextYAlignment.Center
Instance54.TextScaled = false
Instance54.TextDirection = Enum.TextDirection.Auto
Instance54.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance54.Visible = true
Instance54.BorderMode = Enum.BorderMode.Outline
Instance54.TextTransparency = 0
Instance54.FontSize = Enum.FontSize.Size14
Instance54.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance54.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Instance54.AnchorPoint = Vector2.new(0.5, 0)
Instance54.TextSize = 14
Instance54.TextColor3 = Color3.new(0, 0, 0)
Instance54.Selected = false
Instance54.AutomaticSize = Enum.AutomaticSize.None
Instance54.Size = UDim2.new(0.8999999761581421, 0, 1, 0)
Instance54.ClipsDescendants = false
Instance54.BorderColor3 = Color3.new(0, 0, 0)
Instance54.Text = ""
Instance54.BorderSizePixel = 0
Instance54.Rotation = 0
Instance54.BackgroundTransparency = 0
Instance54.MaxVisibleGraphemes = -1
Instance54.Position = UDim2.new(0.5, 0, 0, 0)
Instance54.Style = Enum.ButtonStyle.Custom

local Instance55 = Instance.new("Frame", Instance54) --Bar
Instance55.Visible = true
Instance55.SelectionOrder = 0
Instance55.Name = "Bar"
Instance55.Active = false
Instance55.AutomaticSize = Enum.AutomaticSize.None
Instance55.AnchorPoint = Vector2.new(0, 0)
Instance55.Style = Enum.FrameStyle.Custom
Instance55.LayoutOrder = 0
Instance55.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance55.ZIndex = 10009
Instance55.Size = UDim2.new(1, -4, 1, -4)
Instance55.Draggable = false
Instance55.Position = UDim2.new(0, 2, 0, 2)
Instance55.Selectable = false
Instance55.ClipsDescendants = false
Instance55.BorderColor3 = Color3.new(0, 0, 0)
Instance55.BorderSizePixel = 0
Instance55.Rotation = 0
Instance55.BackgroundTransparency = 0
Instance55.BorderMode = Enum.BorderMode.Outline
Instance55.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance56 = Instance.new("Frame", Instance55) --Fill
Instance56.Visible = true
Instance56.SelectionOrder = 0
Instance56.Name = "Fill"
Instance56.Active = false
Instance56.AutomaticSize = Enum.AutomaticSize.None
Instance56.AnchorPoint = Vector2.new(0, 0)
Instance56.Style = Enum.FrameStyle.Custom
Instance56.LayoutOrder = 0
Instance56.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance56.ZIndex = 10010
Instance56.Size = UDim2.new(0.5, 0, 1, 0)
Instance56.Draggable = false
Instance56.Position = UDim2.new(0, 0, 0, 0)
Instance56.Selectable = false
Instance56.ClipsDescendants = false
Instance56.BorderColor3 = Color3.new(0, 0, 0)
Instance56.BorderSizePixel = 0
Instance56.Rotation = 0
Instance56.BackgroundTransparency = 0
Instance56.BorderMode = Enum.BorderMode.Outline
Instance56.BackgroundColor3 = Color3.new(0.498039, 0, 0)

local Instance57 = Instance.new("TextLabel", Instance55) --Progress
Instance57.LayoutOrder = 0
Instance57.TextWrapped = true
Instance57.LineHeight = 1
Instance57.Active = false
Instance57.TextStrokeTransparency = 1
Instance57.TextTruncate = Enum.TextTruncate.None
Instance57.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance57.ZIndex = 10011
Instance57.BorderSizePixel = 0
Instance57.Draggable = false
Instance57.RichText = false
Instance57.TextWrap = true
Instance57.TextTransparency = 0
Instance57.TextYAlignment = Enum.TextYAlignment.Center
Instance57.TextScaled = true
Instance57.TextXAlignment = Enum.TextXAlignment.Center
Instance57.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance57.Name = "Progress"
Instance57.BorderMode = Enum.BorderMode.Outline
Instance57.Selectable = false
Instance57.TextDirection = Enum.TextDirection.Auto
Instance57.Visible = true
Instance57.FontSize = Enum.FontSize.Size14
Instance57.AnchorPoint = Vector2.new(0, 0)
Instance57.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance57.TextSize = 14
Instance57.AutomaticSize = Enum.AutomaticSize.None
Instance57.Size = UDim2.new(1, 0, 1, 0)
Instance57.TextColor3 = Color3.new(1, 1, 1)
Instance57.ClipsDescendants = false
Instance57.BorderColor3 = Color3.new(0, 0, 0)
Instance57.Text = "127 / 255"
Instance57.SelectionOrder = 0
Instance57.BackgroundColor3 = Color3.new(1, 1, 1)
Instance57.Rotation = 0
Instance57.BackgroundTransparency = 1
Instance57.Position = UDim2.new(0, 0, 0, 0)
Instance57.MaxVisibleGraphemes = -1

local Instance58 = Instance.new("UIStroke", Instance54) --UIStroke
Instance58.Enabled = true
Instance58.Color = Color3.new(0, 0, 0)
Instance58.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instance58.Thickness = 1
Instance58.Transparency = 0
Instance58.Name = "UIStroke"
Instance58.LineJoinMode = Enum.LineJoinMode.Miter

local Instance59 = Instance.new("Frame", Instance51) --GHolder
Instance59.Visible = true
Instance59.SelectionOrder = 0
Instance59.Name = "GHolder"
Instance59.Active = false
Instance59.AutomaticSize = Enum.AutomaticSize.None
Instance59.AnchorPoint = Vector2.new(0, 0)
Instance59.Style = Enum.FrameStyle.Custom
Instance59.LayoutOrder = 0
Instance59.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance59.ZIndex = 10007
Instance59.Size = UDim2.new(0.3330000042915344, 0, 1, 0)
Instance59.Draggable = false
Instance59.Position = UDim2.new(0, 0, 0, 0)
Instance59.Selectable = false
Instance59.ClipsDescendants = false
Instance59.BorderColor3 = Color3.new(0, 0, 0)
Instance59.BorderSizePixel = 0
Instance59.Rotation = 0
Instance59.BackgroundTransparency = 1
Instance59.BorderMode = Enum.BorderMode.Outline
Instance59.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance60 = Instance.new("TextButton", Instance59) --SliderOuter
Instance60.LayoutOrder = 0
Instance60.TextWrapped = false
Instance60.LineHeight = 1
Instance60.Active = true
Instance60.TextStrokeTransparency = 1
Instance60.TextTruncate = Enum.TextTruncate.None
Instance60.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance60.ZIndex = 10001
Instance60.TextWrap = false
Instance60.Draggable = false
Instance60.RichText = false
Instance60.Modal = false
Instance60.SelectionOrder = 0
Instance60.Selectable = true
Instance60.AutoButtonColor = false
Instance60.TextXAlignment = Enum.TextXAlignment.Center
Instance60.Name = "SliderOuter"
Instance60.TextYAlignment = Enum.TextYAlignment.Center
Instance60.TextScaled = false
Instance60.TextDirection = Enum.TextDirection.Auto
Instance60.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance60.Visible = true
Instance60.BorderMode = Enum.BorderMode.Outline
Instance60.TextTransparency = 0
Instance60.FontSize = Enum.FontSize.Size14
Instance60.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance60.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Instance60.AnchorPoint = Vector2.new(0.5, 0)
Instance60.TextSize = 14
Instance60.TextColor3 = Color3.new(0, 0, 0)
Instance60.Selected = false
Instance60.AutomaticSize = Enum.AutomaticSize.None
Instance60.Size = UDim2.new(0.8999999761581421, 0, 1, 0)
Instance60.ClipsDescendants = false
Instance60.BorderColor3 = Color3.new(0, 0, 0)
Instance60.Text = ""
Instance60.BorderSizePixel = 0
Instance60.Rotation = 0
Instance60.BackgroundTransparency = 0
Instance60.MaxVisibleGraphemes = -1
Instance60.Position = UDim2.new(0.5, 0, 0, 0)
Instance60.Style = Enum.ButtonStyle.Custom

local Instance61 = Instance.new("Frame", Instance60) --Bar
Instance61.Visible = true
Instance61.SelectionOrder = 0
Instance61.Name = "Bar"
Instance61.Active = false
Instance61.AutomaticSize = Enum.AutomaticSize.None
Instance61.AnchorPoint = Vector2.new(0, 0)
Instance61.Style = Enum.FrameStyle.Custom
Instance61.LayoutOrder = 0
Instance61.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance61.ZIndex = 10009
Instance61.Size = UDim2.new(1, -4, 1, -4)
Instance61.Draggable = false
Instance61.Position = UDim2.new(0, 2, 0, 2)
Instance61.Selectable = false
Instance61.ClipsDescendants = false
Instance61.BorderColor3 = Color3.new(0, 0, 0)
Instance61.BorderSizePixel = 0
Instance61.Rotation = 0
Instance61.BackgroundTransparency = 0
Instance61.BorderMode = Enum.BorderMode.Outline
Instance61.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance62 = Instance.new("Frame", Instance61) --Fill
Instance62.Visible = true
Instance62.SelectionOrder = 0
Instance62.Name = "Fill"
Instance62.Active = false
Instance62.AutomaticSize = Enum.AutomaticSize.None
Instance62.AnchorPoint = Vector2.new(0, 0)
Instance62.Style = Enum.FrameStyle.Custom
Instance62.LayoutOrder = 0
Instance62.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance62.ZIndex = 10010
Instance62.Size = UDim2.new(0.5, 0, 1, 0)
Instance62.Draggable = false
Instance62.Position = UDim2.new(0, 0, 0, 0)
Instance62.Selectable = false
Instance62.ClipsDescendants = false
Instance62.BorderColor3 = Color3.new(0, 0, 0)
Instance62.BorderSizePixel = 0
Instance62.Rotation = 0
Instance62.BackgroundTransparency = 0
Instance62.BorderMode = Enum.BorderMode.Outline
Instance62.BackgroundColor3 = Color3.new(0, 0.498039, 0)

local Instance63 = Instance.new("TextLabel", Instance61) --Progress
Instance63.LayoutOrder = 0
Instance63.TextWrapped = true
Instance63.LineHeight = 1
Instance63.Active = false
Instance63.TextStrokeTransparency = 1
Instance63.TextTruncate = Enum.TextTruncate.None
Instance63.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance63.ZIndex = 10011
Instance63.BorderSizePixel = 0
Instance63.Draggable = false
Instance63.RichText = false
Instance63.TextWrap = true
Instance63.TextTransparency = 0
Instance63.TextYAlignment = Enum.TextYAlignment.Center
Instance63.TextScaled = true
Instance63.TextXAlignment = Enum.TextXAlignment.Center
Instance63.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance63.Name = "Progress"
Instance63.BorderMode = Enum.BorderMode.Outline
Instance63.Selectable = false
Instance63.TextDirection = Enum.TextDirection.Auto
Instance63.Visible = true
Instance63.FontSize = Enum.FontSize.Size14
Instance63.AnchorPoint = Vector2.new(0, 0)
Instance63.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance63.TextSize = 14
Instance63.AutomaticSize = Enum.AutomaticSize.None
Instance63.Size = UDim2.new(1, 0, 1, 0)
Instance63.TextColor3 = Color3.new(1, 1, 1)
Instance63.ClipsDescendants = false
Instance63.BorderColor3 = Color3.new(0, 0, 0)
Instance63.Text = "127 / 255"
Instance63.SelectionOrder = 0
Instance63.BackgroundColor3 = Color3.new(1, 1, 1)
Instance63.Rotation = 0
Instance63.BackgroundTransparency = 1
Instance63.Position = UDim2.new(0, 0, 0, 0)
Instance63.MaxVisibleGraphemes = -1

local Instance64 = Instance.new("UIStroke", Instance60) --UIStroke
Instance64.Enabled = true
Instance64.Color = Color3.new(0, 0, 0)
Instance64.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instance64.Thickness = 1
Instance64.Transparency = 0
Instance64.Name = "UIStroke"
Instance64.LineJoinMode = Enum.LineJoinMode.Miter

local Instance65 = Instance.new("Frame", Instance51) --BHolder
Instance65.Visible = true
Instance65.SelectionOrder = 0
Instance65.Name = "BHolder"
Instance65.Active = false
Instance65.AutomaticSize = Enum.AutomaticSize.None
Instance65.AnchorPoint = Vector2.new(0, 0)
Instance65.Style = Enum.FrameStyle.Custom
Instance65.LayoutOrder = 0
Instance65.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance65.ZIndex = 10007
Instance65.Size = UDim2.new(0.3330000042915344, 0, 1, 0)
Instance65.Draggable = false
Instance65.Position = UDim2.new(0, 0, 0, 0)
Instance65.Selectable = false
Instance65.ClipsDescendants = false
Instance65.BorderColor3 = Color3.new(0, 0, 0)
Instance65.BorderSizePixel = 0
Instance65.Rotation = 0
Instance65.BackgroundTransparency = 1
Instance65.BorderMode = Enum.BorderMode.Outline
Instance65.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance66 = Instance.new("TextButton", Instance65) --SliderOuter
Instance66.LayoutOrder = 0
Instance66.TextWrapped = false
Instance66.LineHeight = 1
Instance66.Active = true
Instance66.TextStrokeTransparency = 1
Instance66.TextTruncate = Enum.TextTruncate.None
Instance66.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance66.ZIndex = 10001
Instance66.TextWrap = false
Instance66.Draggable = false
Instance66.RichText = false
Instance66.Modal = false
Instance66.SelectionOrder = 0
Instance66.Selectable = true
Instance66.AutoButtonColor = false
Instance66.TextXAlignment = Enum.TextXAlignment.Center
Instance66.Name = "SliderOuter"
Instance66.TextYAlignment = Enum.TextYAlignment.Center
Instance66.TextScaled = false
Instance66.TextDirection = Enum.TextDirection.Auto
Instance66.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance66.Visible = true
Instance66.BorderMode = Enum.BorderMode.Outline
Instance66.TextTransparency = 0
Instance66.FontSize = Enum.FontSize.Size14
Instance66.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance66.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Instance66.AnchorPoint = Vector2.new(0.5, 0)
Instance66.TextSize = 14
Instance66.TextColor3 = Color3.new(0, 0, 0)
Instance66.Selected = false
Instance66.AutomaticSize = Enum.AutomaticSize.None
Instance66.Size = UDim2.new(0.8999999761581421, 0, 1, 0)
Instance66.ClipsDescendants = false
Instance66.BorderColor3 = Color3.new(0, 0, 0)
Instance66.Text = ""
Instance66.BorderSizePixel = 0
Instance66.Rotation = 0
Instance66.BackgroundTransparency = 0
Instance66.MaxVisibleGraphemes = -1
Instance66.Position = UDim2.new(0.5, 0, 0, 0)
Instance66.Style = Enum.ButtonStyle.Custom

local Instance67 = Instance.new("Frame", Instance66) --Bar
Instance67.Visible = true
Instance67.SelectionOrder = 0
Instance67.Name = "Bar"
Instance67.Active = false
Instance67.AutomaticSize = Enum.AutomaticSize.None
Instance67.AnchorPoint = Vector2.new(0, 0)
Instance67.Style = Enum.FrameStyle.Custom
Instance67.LayoutOrder = 0
Instance67.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance67.ZIndex = 10009
Instance67.Size = UDim2.new(1, -4, 1, -4)
Instance67.Draggable = false
Instance67.Position = UDim2.new(0, 2, 0, 2)
Instance67.Selectable = false
Instance67.ClipsDescendants = false
Instance67.BorderColor3 = Color3.new(0, 0, 0)
Instance67.BorderSizePixel = 0
Instance67.Rotation = 0
Instance67.BackgroundTransparency = 0
Instance67.BorderMode = Enum.BorderMode.Outline
Instance67.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance68 = Instance.new("Frame", Instance67) --Fill
Instance68.Visible = true
Instance68.SelectionOrder = 0
Instance68.Name = "Fill"
Instance68.Active = false
Instance68.AutomaticSize = Enum.AutomaticSize.None
Instance68.AnchorPoint = Vector2.new(0, 0)
Instance68.Style = Enum.FrameStyle.Custom
Instance68.LayoutOrder = 0
Instance68.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance68.ZIndex = 10010
Instance68.Size = UDim2.new(0.5, 0, 1, 0)
Instance68.Draggable = false
Instance68.Position = UDim2.new(0, 0, 0, 0)
Instance68.Selectable = false
Instance68.ClipsDescendants = false
Instance68.BorderColor3 = Color3.new(0, 0, 0)
Instance68.BorderSizePixel = 0
Instance68.Rotation = 0
Instance68.BackgroundTransparency = 0
Instance68.BorderMode = Enum.BorderMode.Outline
Instance68.BackgroundColor3 = Color3.new(0, 0, 0.498039)

local Instance69 = Instance.new("TextLabel", Instance67) --Progress
Instance69.LayoutOrder = 0
Instance69.TextWrapped = true
Instance69.LineHeight = 1
Instance69.Active = false
Instance69.TextStrokeTransparency = 1
Instance69.TextTruncate = Enum.TextTruncate.None
Instance69.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance69.ZIndex = 10011
Instance69.BorderSizePixel = 0
Instance69.Draggable = false
Instance69.RichText = false
Instance69.TextWrap = true
Instance69.TextTransparency = 0
Instance69.TextYAlignment = Enum.TextYAlignment.Center
Instance69.TextScaled = true
Instance69.TextXAlignment = Enum.TextXAlignment.Center
Instance69.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance69.Name = "Progress"
Instance69.BorderMode = Enum.BorderMode.Outline
Instance69.Selectable = false
Instance69.TextDirection = Enum.TextDirection.Auto
Instance69.Visible = true
Instance69.FontSize = Enum.FontSize.Size14
Instance69.AnchorPoint = Vector2.new(0, 0)
Instance69.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance69.TextSize = 14
Instance69.AutomaticSize = Enum.AutomaticSize.None
Instance69.Size = UDim2.new(1, 0, 1, 0)
Instance69.TextColor3 = Color3.new(1, 1, 1)
Instance69.ClipsDescendants = false
Instance69.BorderColor3 = Color3.new(0, 0, 0)
Instance69.Text = "127 / 255"
Instance69.SelectionOrder = 0
Instance69.BackgroundColor3 = Color3.new(1, 1, 1)
Instance69.Rotation = 0
Instance69.BackgroundTransparency = 1
Instance69.Position = UDim2.new(0, 0, 0, 0)
Instance69.MaxVisibleGraphemes = -1

local Instance70 = Instance.new("UIStroke", Instance66) --UIStroke
Instance70.Enabled = true
Instance70.Color = Color3.new(0, 0, 0)
Instance70.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instance70.Thickness = 1
Instance70.Transparency = 0
Instance70.Name = "UIStroke"
Instance70.LineJoinMode = Enum.LineJoinMode.Miter

local Instance71 = Instance.new("Frame", Instance45) --Separator
Instance71.Visible = true
Instance71.SelectionOrder = 0
Instance71.Name = "Separator"
Instance71.Active = false
Instance71.AutomaticSize = Enum.AutomaticSize.None
Instance71.AnchorPoint = Vector2.new(0, 0)
Instance71.Style = Enum.FrameStyle.Custom
Instance71.LayoutOrder = 0
Instance71.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance71.ZIndex = 10006
Instance71.Size = UDim2.new(1, 0, 0, 1)
Instance71.Draggable = false
Instance71.Position = UDim2.new(0, 0, 1, -1)
Instance71.Selectable = false
Instance71.ClipsDescendants = false
Instance71.BorderColor3 = Color3.new(0, 0, 0)
Instance71.BorderSizePixel = 0
Instance71.Rotation = 0
Instance71.BackgroundTransparency = 0
Instance71.BorderMode = Enum.BorderMode.Outline
Instance71.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance72 = Instance.new("TextButton", Instance20) --Button
Instance72.LayoutOrder = 0
Instance72.TextWrapped = false
Instance72.LineHeight = 1
Instance72.Active = true
Instance72.TextStrokeTransparency = 1
Instance72.TextTruncate = Enum.TextTruncate.None
Instance72.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance72.ZIndex = 10005
Instance72.TextWrap = false
Instance72.Draggable = false
Instance72.RichText = false
Instance72.Modal = false
Instance72.SelectionOrder = 0
Instance72.Selectable = true
Instance72.AutoButtonColor = true
Instance72.TextXAlignment = Enum.TextXAlignment.Center
Instance72.Name = "Button"
Instance72.TextYAlignment = Enum.TextYAlignment.Center
Instance72.TextScaled = false
Instance72.TextDirection = Enum.TextDirection.Auto
Instance72.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance72.Visible = false
Instance72.BorderMode = Enum.BorderMode.Outline
Instance72.TextTransparency = 0
Instance72.FontSize = Enum.FontSize.Size14
Instance72.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance72.BackgroundColor3 = Color3.new(1, 1, 1)
Instance72.AnchorPoint = Vector2.new(0, 0)
Instance72.TextSize = 14
Instance72.TextColor3 = Color3.new(0, 0, 0)
Instance72.Selected = false
Instance72.AutomaticSize = Enum.AutomaticSize.None
Instance72.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
Instance72.ClipsDescendants = false
Instance72.BorderColor3 = Color3.new(0, 0, 0)
Instance72.Text = ""
Instance72.BorderSizePixel = 0
Instance72.Rotation = 0
Instance72.BackgroundTransparency = 1
Instance72.MaxVisibleGraphemes = -1
Instance72.Position = UDim2.new(0, 0, 0, 0)
Instance72.Style = Enum.ButtonStyle.Custom

local Instance73 = Instance.new("Frame", Instance72) --ToggleOuter
Instance73.Visible = true
Instance73.SelectionOrder = 0
Instance73.Name = "ToggleOuter"
Instance73.Active = false
Instance73.AutomaticSize = Enum.AutomaticSize.None
Instance73.AnchorPoint = Vector2.new(0, 0.5)
Instance73.Style = Enum.FrameStyle.Custom
Instance73.LayoutOrder = 0
Instance73.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance73.ZIndex = 10006
Instance73.Size = UDim2.new(0.05000000074505806, -1, 1, 0)
Instance73.Draggable = false
Instance73.Position = UDim2.new(0.05000000074505806, 0, 0.5, 0)
Instance73.Selectable = false
Instance73.ClipsDescendants = false
Instance73.BorderColor3 = Color3.new(0, 0, 0)
Instance73.BorderSizePixel = 0
Instance73.Rotation = 0
Instance73.BackgroundTransparency = 0
Instance73.BorderMode = Enum.BorderMode.Outline
Instance73.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance74 = Instance.new("UIAspectRatioConstraint", Instance73) --UIAspectRatioConstraint
Instance74.DominantAxis = Enum.DominantAxis.Width
Instance74.AspectRatio = 1
Instance74.Name = "UIAspectRatioConstraint"
Instance74.AspectType = Enum.AspectType.FitWithinMaxSize

local Instance75 = Instance.new("Frame", Instance73) --Frame
Instance75.Visible = true
Instance75.SelectionOrder = 0
Instance75.Name = "Frame"
Instance75.Active = false
Instance75.AutomaticSize = Enum.AutomaticSize.None
Instance75.AnchorPoint = Vector2.new(0, 0)
Instance75.Style = Enum.FrameStyle.Custom
Instance75.LayoutOrder = 0
Instance75.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance75.ZIndex = 10007
Instance75.Size = UDim2.new(1, -4, 1, -4)
Instance75.Draggable = false
Instance75.Position = UDim2.new(0, 2, 0, 2)
Instance75.Selectable = false
Instance75.ClipsDescendants = false
Instance75.BorderColor3 = Color3.new(0, 0, 0)
Instance75.BorderSizePixel = 0
Instance75.Rotation = 0
Instance75.BackgroundTransparency = 0
Instance75.BorderMode = Enum.BorderMode.Outline
Instance75.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance76 = Instance.new("ImageLabel", Instance75) --ImageLabel
Instance76.Visible = true
Instance76.Active = false
Instance76.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance76.ZIndex = 10008
Instance76.BorderSizePixel = 0
Instance76.SliceCenter = Rect.new(0, 0, 0, 0)
Instance76.Draggable = false
Instance76.ScaleType = Enum.ScaleType.Stretch
Instance76.BackgroundColor3 = Color3.new(1, 1, 1)
Instance76.ImageTransparency = 0
Instance76.AnchorPoint = Vector2.new(0.5, 0.5)
Instance76.Image = "http://www.roblox.com/asset/?id=5715427603"
Instance76.TileSize = UDim2.new(1, 0, 1, 0)
Instance76.ImageRectSize = Vector2.new(0, 0)
Instance76.SelectionOrder = 0
Instance76.Selectable = false
Instance76.Size = UDim2.new(0.8999999761581421, 0, 0.8999999761581421, 0)
Instance76.Name = "ImageLabel"
Instance76.ResampleMode = Enum.ResamplerMode.Default
Instance76.ClipsDescendants = false
Instance76.BorderColor3 = Color3.new(0, 0, 0)
Instance76.ImageColor3 = Color3.new(0.666667, 0, 1)
Instance76.LayoutOrder = 0
Instance76.BorderMode = Enum.BorderMode.Outline
Instance76.Rotation = 0
Instance76.ImageRectOffset = Vector2.new(0, 0)
Instance76.BackgroundTransparency = 1
Instance76.Position = UDim2.new(0.5, 0, 0.5, 0)
Instance76.SliceScale = 1
Instance76.AutomaticSize = Enum.AutomaticSize.None

local Instance77 = Instance.new("UIStroke", Instance73) --UIStroke
Instance77.Enabled = true
Instance77.Color = Color3.new(0, 0, 0)
Instance77.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
Instance77.Thickness = 1
Instance77.Transparency = 0
Instance77.Name = "UIStroke"
Instance77.LineJoinMode = Enum.LineJoinMode.Miter

local Instance78 = Instance.new("TextLabel", Instance72) --Text
Instance78.LayoutOrder = 0
Instance78.TextWrapped = true
Instance78.LineHeight = 1
Instance78.Active = true
Instance78.TextStrokeTransparency = 1
Instance78.TextTruncate = Enum.TextTruncate.None
Instance78.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance78.ZIndex = 10006
Instance78.BorderSizePixel = 0
Instance78.Draggable = false
Instance78.RichText = false
Instance78.TextWrap = true
Instance78.TextTransparency = 0
Instance78.TextYAlignment = Enum.TextYAlignment.Center
Instance78.TextScaled = true
Instance78.TextXAlignment = Enum.TextXAlignment.Left
Instance78.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance78.Name = "Text"
Instance78.BorderMode = Enum.BorderMode.Outline
Instance78.Selectable = false
Instance78.TextDirection = Enum.TextDirection.Auto
Instance78.Visible = true
Instance78.FontSize = Enum.FontSize.Size14
Instance78.AnchorPoint = Vector2.new(0.5, 0.5)
Instance78.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance78.TextSize = 14
Instance78.AutomaticSize = Enum.AutomaticSize.None
Instance78.Size = UDim2.new(0.824999988079071, 0, 0.4000000059604645, 0)
Instance78.TextColor3 = Color3.new(1, 1, 1)
Instance78.ClipsDescendants = false
Instance78.BorderColor3 = Color3.new(0, 0, 0)
Instance78.Text = "ButtonExample"
Instance78.SelectionOrder = 0
Instance78.BackgroundColor3 = Color3.new(1, 1, 1)
Instance78.Rotation = 0
Instance78.BackgroundTransparency = 1
Instance78.Position = UDim2.new(0.5249999761581421, 0, 0.5, 0)
Instance78.MaxVisibleGraphemes = -1

local Instance79 = Instance.new("Frame", Instance72) --Separator
Instance79.Visible = true
Instance79.SelectionOrder = 0
Instance79.Name = "Separator"
Instance79.Active = false
Instance79.AutomaticSize = Enum.AutomaticSize.None
Instance79.AnchorPoint = Vector2.new(0, 0)
Instance79.Style = Enum.FrameStyle.Custom
Instance79.LayoutOrder = 0
Instance79.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance79.ZIndex = 10006
Instance79.Size = UDim2.new(1, 0, 0, 1)
Instance79.Draggable = false
Instance79.Position = UDim2.new(0, 0, 0, 0)
Instance79.Selectable = false
Instance79.ClipsDescendants = false
Instance79.BorderColor3 = Color3.new(0, 0, 0)
Instance79.BorderSizePixel = 0
Instance79.Rotation = 0
Instance79.BackgroundTransparency = 0
Instance79.BorderMode = Enum.BorderMode.Outline
Instance79.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance80 = Instance.new("TextButton", Instance72) --Trigger
Instance80.LayoutOrder = 0
Instance80.TextWrapped = false
Instance80.LineHeight = 1
Instance80.Active = true
Instance80.TextStrokeTransparency = 1
Instance80.TextTruncate = Enum.TextTruncate.None
Instance80.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance80.ZIndex = 20000
Instance80.TextWrap = false
Instance80.Draggable = false
Instance80.RichText = false
Instance80.Modal = false
Instance80.SelectionOrder = 0
Instance80.Selectable = true
Instance80.AutoButtonColor = true
Instance80.TextXAlignment = Enum.TextXAlignment.Center
Instance80.Name = "Trigger"
Instance80.TextYAlignment = Enum.TextYAlignment.Center
Instance80.TextScaled = false
Instance80.TextDirection = Enum.TextDirection.Auto
Instance80.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance80.Visible = true
Instance80.BorderMode = Enum.BorderMode.Outline
Instance80.TextTransparency = 0
Instance80.FontSize = Enum.FontSize.Size14
Instance80.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance80.BackgroundColor3 = Color3.new(1, 1, 1)
Instance80.AnchorPoint = Vector2.new(0, 0)
Instance80.TextSize = 14
Instance80.TextColor3 = Color3.new(0, 0, 0)
Instance80.Selected = false
Instance80.AutomaticSize = Enum.AutomaticSize.None
Instance80.Size = UDim2.new(1, 0, 1, 0)
Instance80.ClipsDescendants = false
Instance80.BorderColor3 = Color3.new(0, 0, 0)
Instance80.Text = ""
Instance80.BorderSizePixel = 0
Instance80.Rotation = 0
Instance80.BackgroundTransparency = 1
Instance80.MaxVisibleGraphemes = -1
Instance80.Position = UDim2.new(0, 0, 0, 0)
Instance80.Style = Enum.ButtonStyle.Custom

local Instance81 = Instance.new("Frame", Instance72) --Separator
Instance81.Visible = true
Instance81.SelectionOrder = 0
Instance81.Name = "Separator"
Instance81.Active = false
Instance81.AutomaticSize = Enum.AutomaticSize.None
Instance81.AnchorPoint = Vector2.new(0, 0)
Instance81.Style = Enum.FrameStyle.Custom
Instance81.LayoutOrder = 0
Instance81.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance81.ZIndex = 10006
Instance81.Size = UDim2.new(1, 0, 0, 1)
Instance81.Draggable = false
Instance81.Position = UDim2.new(0, 0, 1, -1)
Instance81.Selectable = false
Instance81.ClipsDescendants = false
Instance81.BorderColor3 = Color3.new(0, 0, 0)
Instance81.BorderSizePixel = 0
Instance81.Rotation = 0
Instance81.BackgroundTransparency = 0
Instance81.BorderMode = Enum.BorderMode.Outline
Instance81.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance82 = Instance.new("TextButton", Instance20) --TextBox
Instance82.LayoutOrder = 0
Instance82.TextWrapped = false
Instance82.LineHeight = 1
Instance82.Active = true
Instance82.TextStrokeTransparency = 1
Instance82.TextTruncate = Enum.TextTruncate.None
Instance82.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance82.ZIndex = 10005
Instance82.TextWrap = false
Instance82.Draggable = false
Instance82.RichText = false
Instance82.Modal = false
Instance82.SelectionOrder = 0
Instance82.Selectable = true
Instance82.AutoButtonColor = true
Instance82.TextXAlignment = Enum.TextXAlignment.Center
Instance82.Name = "TextBox"
Instance82.TextYAlignment = Enum.TextYAlignment.Center
Instance82.TextScaled = false
Instance82.TextDirection = Enum.TextDirection.Auto
Instance82.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance82.Visible = false
Instance82.BorderMode = Enum.BorderMode.Outline
Instance82.TextTransparency = 0
Instance82.FontSize = Enum.FontSize.Size14
Instance82.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance82.BackgroundColor3 = Color3.new(1, 1, 1)
Instance82.AnchorPoint = Vector2.new(0, 0)
Instance82.TextSize = 14
Instance82.TextColor3 = Color3.new(0, 0, 0)
Instance82.Selected = false
Instance82.AutomaticSize = Enum.AutomaticSize.None
Instance82.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
Instance82.ClipsDescendants = false
Instance82.BorderColor3 = Color3.new(0, 0, 0)
Instance82.Text = ""
Instance82.BorderSizePixel = 0
Instance82.Rotation = 0
Instance82.BackgroundTransparency = 1
Instance82.MaxVisibleGraphemes = -1
Instance82.Position = UDim2.new(0, 0, 0, 0)
Instance82.Style = Enum.ButtonStyle.Custom

local Instance83 = Instance.new("TextLabel", Instance82) --Text
Instance83.LayoutOrder = 0
Instance83.TextWrapped = true
Instance83.LineHeight = 1
Instance83.Active = true
Instance83.TextStrokeTransparency = 1
Instance83.TextTruncate = Enum.TextTruncate.None
Instance83.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance83.ZIndex = 10006
Instance83.BorderSizePixel = 0
Instance83.Draggable = false
Instance83.RichText = false
Instance83.TextWrap = true
Instance83.TextTransparency = 0
Instance83.TextYAlignment = Enum.TextYAlignment.Center
Instance83.TextScaled = true
Instance83.TextXAlignment = Enum.TextXAlignment.Left
Instance83.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance83.Name = "Text"
Instance83.BorderMode = Enum.BorderMode.Outline
Instance83.Selectable = false
Instance83.TextDirection = Enum.TextDirection.Auto
Instance83.Visible = true
Instance83.FontSize = Enum.FontSize.Size14
Instance83.AnchorPoint = Vector2.new(0.5, 0.5)
Instance83.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance83.TextSize = 14
Instance83.AutomaticSize = Enum.AutomaticSize.None
Instance83.Size = UDim2.new(0.8999999761581421, 0, 0.4000000059604645, 0)
Instance83.TextColor3 = Color3.new(1, 1, 1)
Instance83.ClipsDescendants = false
Instance83.BorderColor3 = Color3.new(0, 0, 0)
Instance83.Text = "TextBoxExample"
Instance83.SelectionOrder = 0
Instance83.BackgroundColor3 = Color3.new(1, 1, 1)
Instance83.Rotation = 0
Instance83.BackgroundTransparency = 1
Instance83.Position = UDim2.new(0.5, 0, 0.25, 0)
Instance83.MaxVisibleGraphemes = -1

local Instance84 = Instance.new("Frame", Instance82) --Separator
Instance84.Visible = true
Instance84.SelectionOrder = 0
Instance84.Name = "Separator"
Instance84.Active = false
Instance84.AutomaticSize = Enum.AutomaticSize.None
Instance84.AnchorPoint = Vector2.new(0, 0)
Instance84.Style = Enum.FrameStyle.Custom
Instance84.LayoutOrder = 0
Instance84.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance84.ZIndex = 10006
Instance84.Size = UDim2.new(1, 0, 0, 1)
Instance84.Draggable = false
Instance84.Position = UDim2.new(0, 0, 0, 0)
Instance84.Selectable = false
Instance84.ClipsDescendants = false
Instance84.BorderColor3 = Color3.new(0, 0, 0)
Instance84.BorderSizePixel = 0
Instance84.Rotation = 0
Instance84.BackgroundTransparency = 0
Instance84.BorderMode = Enum.BorderMode.Outline
Instance84.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance85 = Instance.new("Frame", Instance82) --TextBoxOuter
Instance85.Visible = true
Instance85.SelectionOrder = 0
Instance85.Name = "TextBoxOuter"
Instance85.Active = false
Instance85.AutomaticSize = Enum.AutomaticSize.None
Instance85.AnchorPoint = Vector2.new(0, 0)
Instance85.Style = Enum.FrameStyle.Custom
Instance85.LayoutOrder = 0
Instance85.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance85.ZIndex = 10006
Instance85.Size = UDim2.new(0.8999999761581421, -2, 0.4000000059604645, 0)
Instance85.Draggable = false
Instance85.Position = UDim2.new(0.05000000074505806, 1, 0.5, 0)
Instance85.Selectable = false
Instance85.ClipsDescendants = false
Instance85.BorderColor3 = Color3.new(0, 0, 0)
Instance85.BorderSizePixel = 0
Instance85.Rotation = 0
Instance85.BackgroundTransparency = 0
Instance85.BorderMode = Enum.BorderMode.Outline
Instance85.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance86 = Instance.new("UIStroke", Instance85) --UIStroke
Instance86.Enabled = true
Instance86.Color = Color3.new(0, 0, 0)
Instance86.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
Instance86.Thickness = 1
Instance86.Transparency = 0
Instance86.Name = "UIStroke"
Instance86.LineJoinMode = Enum.LineJoinMode.Miter

local Instance87 = Instance.new("Frame", Instance85) --TextBoxBackground
Instance87.Visible = true
Instance87.SelectionOrder = 0
Instance87.Name = "TextBoxBackground"
Instance87.Active = false
Instance87.AutomaticSize = Enum.AutomaticSize.None
Instance87.AnchorPoint = Vector2.new(0, 0)
Instance87.Style = Enum.FrameStyle.Custom
Instance87.LayoutOrder = 0
Instance87.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance87.ZIndex = 10007
Instance87.Size = UDim2.new(1, -4, 1, -4)
Instance87.Draggable = false
Instance87.Position = UDim2.new(0, 2, 0, 2)
Instance87.Selectable = false
Instance87.ClipsDescendants = false
Instance87.BorderColor3 = Color3.new(0, 0, 0)
Instance87.BorderSizePixel = 0
Instance87.Rotation = 0
Instance87.BackgroundTransparency = 0
Instance87.BorderMode = Enum.BorderMode.Outline
Instance87.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance88 = Instance.new("TextBox", Instance85) --TextBox
Instance88.Visible = true
Instance88.FontSize = Enum.FontSize.Size14
Instance88.LineHeight = 1
Instance88.Active = true
Instance88.ClearTextOnFocus = false
Instance88.TextStrokeTransparency = 1
Instance88.SelectionStart = -1
Instance88.TextTransparency = 0
Instance88.BackgroundColor3 = Color3.new(1, 1, 1)
Instance88.TextTruncate = Enum.TextTruncate.None
Instance88.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance88.ZIndex = 10008
Instance88.BorderSizePixel = 0
Instance88.TextEditable = true
Instance88.Draggable = false
Instance88.RichText = false
Instance88.TextXAlignment = Enum.TextXAlignment.Left
Instance88.Size = UDim2.new(1, 0, 1, 0)
Instance88.AutomaticSize = Enum.AutomaticSize.None
Instance88.SelectionOrder = 0
Instance88.PlaceholderColor3 = Color3.new(0.603922, 0.603922, 0.603922)
Instance88.TextYAlignment = Enum.TextYAlignment.Center
Instance88.TextScaled = true
Instance88.TextWrap = true
Instance88.TextColor3 = Color3.new(1, 1, 1)
Instance88.Position = UDim2.new(0, 0, 0, 0)
Instance88.BorderMode = Enum.BorderMode.Outline
Instance88.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance88.LayoutOrder = 0
Instance88.MultiLine = false
Instance88.AnchorPoint = Vector2.new(0, 0)
Instance88.TextSize = 14
Instance88.TextDirection = Enum.TextDirection.Auto
Instance88.CursorPosition = 1
Instance88.PlaceholderText = "Something in here"
Instance88.ShowNativeInput = true
Instance88.Selectable = true
Instance88.BackgroundTransparency = 1
Instance88.ClipsDescendants = false
Instance88.BorderColor3 = Color3.new(0, 0, 0)
Instance88.Text = ""
Instance88.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance88.Rotation = 0
Instance88.Name = "TextBox"
Instance88.MaxVisibleGraphemes = -1
Instance88.TextWrapped = true

local Instance89 = Instance.new("UIPadding", Instance88) --UIPadding
Instance89.PaddingTop = UDim.new(0, 0)
Instance89.PaddingRight = UDim.new(0, 0)
Instance89.PaddingLeft = UDim.new(0.0199999996, 0)
Instance89.Name = "UIPadding"
Instance89.PaddingBottom = UDim.new(0, 0)

local Instance90 = Instance.new("TextButton", Instance82) --Trigger
Instance90.LayoutOrder = 0
Instance90.TextWrapped = false
Instance90.LineHeight = 1
Instance90.Active = true
Instance90.TextStrokeTransparency = 1
Instance90.TextTruncate = Enum.TextTruncate.None
Instance90.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance90.ZIndex = 20000
Instance90.TextWrap = false
Instance90.Draggable = false
Instance90.RichText = false
Instance90.Modal = false
Instance90.SelectionOrder = 0
Instance90.Selectable = true
Instance90.AutoButtonColor = true
Instance90.TextXAlignment = Enum.TextXAlignment.Center
Instance90.Name = "Trigger"
Instance90.TextYAlignment = Enum.TextYAlignment.Center
Instance90.TextScaled = false
Instance90.TextDirection = Enum.TextDirection.Auto
Instance90.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance90.Visible = true
Instance90.BorderMode = Enum.BorderMode.Outline
Instance90.TextTransparency = 0
Instance90.FontSize = Enum.FontSize.Size14
Instance90.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance90.BackgroundColor3 = Color3.new(1, 1, 1)
Instance90.AnchorPoint = Vector2.new(0, 0)
Instance90.TextSize = 14
Instance90.TextColor3 = Color3.new(0, 0, 0)
Instance90.Selected = false
Instance90.AutomaticSize = Enum.AutomaticSize.None
Instance90.Size = UDim2.new(1, 0, 1, 0)
Instance90.ClipsDescendants = false
Instance90.BorderColor3 = Color3.new(0, 0, 0)
Instance90.Text = ""
Instance90.BorderSizePixel = 0
Instance90.Rotation = 0
Instance90.BackgroundTransparency = 1
Instance90.MaxVisibleGraphemes = -1
Instance90.Position = UDim2.new(0, 0, 0, 0)
Instance90.Style = Enum.ButtonStyle.Custom

local Instance91 = Instance.new("Frame", Instance82) --Separator
Instance91.Visible = true
Instance91.SelectionOrder = 0
Instance91.Name = "Separator"
Instance91.Active = false
Instance91.AutomaticSize = Enum.AutomaticSize.None
Instance91.AnchorPoint = Vector2.new(0, 0)
Instance91.Style = Enum.FrameStyle.Custom
Instance91.LayoutOrder = 0
Instance91.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance91.ZIndex = 10006
Instance91.Size = UDim2.new(1, 0, 0, 1)
Instance91.Draggable = false
Instance91.Position = UDim2.new(0, 0, 1, -1)
Instance91.Selectable = false
Instance91.ClipsDescendants = false
Instance91.BorderColor3 = Color3.new(0, 0, 0)
Instance91.BorderSizePixel = 0
Instance91.Rotation = 0
Instance91.BackgroundTransparency = 0
Instance91.BorderMode = Enum.BorderMode.Outline
Instance91.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance92 = Instance.new("TextButton", Instance20) --Input
Instance92.LayoutOrder = 0
Instance92.TextWrapped = false
Instance92.LineHeight = 1
Instance92.Active = true
Instance92.TextStrokeTransparency = 1
Instance92.TextTruncate = Enum.TextTruncate.None
Instance92.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance92.ZIndex = 10005
Instance92.TextWrap = false
Instance92.Draggable = false
Instance92.RichText = false
Instance92.Modal = false
Instance92.SelectionOrder = 0
Instance92.Selectable = true
Instance92.AutoButtonColor = true
Instance92.TextXAlignment = Enum.TextXAlignment.Center
Instance92.Name = "Input"
Instance92.TextYAlignment = Enum.TextYAlignment.Center
Instance92.TextScaled = false
Instance92.TextDirection = Enum.TextDirection.Auto
Instance92.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance92.Visible = false
Instance92.BorderMode = Enum.BorderMode.Outline
Instance92.TextTransparency = 0
Instance92.FontSize = Enum.FontSize.Size14
Instance92.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance92.BackgroundColor3 = Color3.new(1, 1, 1)
Instance92.AnchorPoint = Vector2.new(0, 0)
Instance92.TextSize = 14
Instance92.TextColor3 = Color3.new(0, 0, 0)
Instance92.Selected = false
Instance92.AutomaticSize = Enum.AutomaticSize.None
Instance92.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
Instance92.ClipsDescendants = false
Instance92.BorderColor3 = Color3.new(0, 0, 0)
Instance92.Text = ""
Instance92.BorderSizePixel = 0
Instance92.Rotation = 0
Instance92.BackgroundTransparency = 1
Instance92.MaxVisibleGraphemes = -1
Instance92.Position = UDim2.new(0, 0, 0, 0)
Instance92.Style = Enum.ButtonStyle.Custom

local Instance93 = Instance.new("Frame", Instance92) --InputOuter
Instance93.Visible = true
Instance93.SelectionOrder = 0
Instance93.Name = "InputOuter"
Instance93.Active = false
Instance93.AutomaticSize = Enum.AutomaticSize.None
Instance93.AnchorPoint = Vector2.new(0, 0.5)
Instance93.Style = Enum.FrameStyle.Custom
Instance93.LayoutOrder = 0
Instance93.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance93.ZIndex = 10006
Instance93.Size = UDim2.new(0.20000000298023224, -1, 0.5, 0)
Instance93.Draggable = false
Instance93.Position = UDim2.new(0.05000000074505806, 0, 0.5, 0)
Instance93.Selectable = false
Instance93.ClipsDescendants = false
Instance93.BorderColor3 = Color3.new(0, 0, 0)
Instance93.BorderSizePixel = 0
Instance93.Rotation = 0
Instance93.BackgroundTransparency = 0
Instance93.BorderMode = Enum.BorderMode.Outline
Instance93.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance94 = Instance.new("UIStroke", Instance93) --UIStroke
Instance94.Enabled = true
Instance94.Color = Color3.new(0, 0, 0)
Instance94.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
Instance94.Thickness = 1
Instance94.Transparency = 0
Instance94.Name = "UIStroke"
Instance94.LineJoinMode = Enum.LineJoinMode.Miter

local Instance95 = Instance.new("Frame", Instance93) --Frame
Instance95.Visible = true
Instance95.SelectionOrder = 0
Instance95.Name = "Frame"
Instance95.Active = false
Instance95.AutomaticSize = Enum.AutomaticSize.None
Instance95.AnchorPoint = Vector2.new(0, 0)
Instance95.Style = Enum.FrameStyle.Custom
Instance95.LayoutOrder = 0
Instance95.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance95.ZIndex = 10007
Instance95.Size = UDim2.new(1, -4, 1, -4)
Instance95.Draggable = false
Instance95.Position = UDim2.new(0, 2, 0, 2)
Instance95.Selectable = false
Instance95.ClipsDescendants = false
Instance95.BorderColor3 = Color3.new(0, 0, 0)
Instance95.BorderSizePixel = 0
Instance95.Rotation = 0
Instance95.BackgroundTransparency = 0
Instance95.BorderMode = Enum.BorderMode.Outline
Instance95.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance96 = Instance.new("TextLabel", Instance95) --Input
Instance96.LayoutOrder = 0
Instance96.TextWrapped = true
Instance96.LineHeight = 1
Instance96.Active = false
Instance96.TextStrokeTransparency = 1
Instance96.TextTruncate = Enum.TextTruncate.None
Instance96.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance96.ZIndex = 10008
Instance96.BorderSizePixel = 0
Instance96.Draggable = false
Instance96.RichText = false
Instance96.TextWrap = true
Instance96.TextTransparency = 0
Instance96.TextYAlignment = Enum.TextYAlignment.Center
Instance96.TextScaled = true
Instance96.TextXAlignment = Enum.TextXAlignment.Center
Instance96.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance96.Name = "Input"
Instance96.BorderMode = Enum.BorderMode.Outline
Instance96.Selectable = false
Instance96.TextDirection = Enum.TextDirection.Auto
Instance96.Visible = true
Instance96.FontSize = Enum.FontSize.Size14
Instance96.AnchorPoint = Vector2.new(0.5, 0.5)
Instance96.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance96.TextSize = 14
Instance96.AutomaticSize = Enum.AutomaticSize.None
Instance96.Size = UDim2.new(0.925000011920929, 0, 0.800000011920929, 0)
Instance96.TextColor3 = Color3.new(0.666667, 0, 1)
Instance96.ClipsDescendants = false
Instance96.BorderColor3 = Color3.new(0, 0, 0)
Instance96.Text = "A"
Instance96.SelectionOrder = 0
Instance96.BackgroundColor3 = Color3.new(1, 1, 1)
Instance96.Rotation = 0
Instance96.BackgroundTransparency = 1
Instance96.Position = UDim2.new(0.5, 0, 0.5, 0)
Instance96.MaxVisibleGraphemes = -1

local Instance97 = Instance.new("TextLabel", Instance92) --Text
Instance97.LayoutOrder = 0
Instance97.TextWrapped = true
Instance97.LineHeight = 1
Instance97.Active = true
Instance97.TextStrokeTransparency = 1
Instance97.TextTruncate = Enum.TextTruncate.None
Instance97.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance97.ZIndex = 10006
Instance97.BorderSizePixel = 0
Instance97.Draggable = false
Instance97.RichText = false
Instance97.TextWrap = true
Instance97.TextTransparency = 0
Instance97.TextYAlignment = Enum.TextYAlignment.Center
Instance97.TextScaled = true
Instance97.TextXAlignment = Enum.TextXAlignment.Left
Instance97.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance97.Name = "Text"
Instance97.BorderMode = Enum.BorderMode.Outline
Instance97.Selectable = false
Instance97.TextDirection = Enum.TextDirection.Auto
Instance97.Visible = true
Instance97.FontSize = Enum.FontSize.Size14
Instance97.AnchorPoint = Vector2.new(0.5, 0.5)
Instance97.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance97.TextSize = 14
Instance97.AutomaticSize = Enum.AutomaticSize.None
Instance97.Size = UDim2.new(0.699999988079071, 0, 0.4000000059604645, 0)
Instance97.TextColor3 = Color3.new(1, 1, 1)
Instance97.ClipsDescendants = false
Instance97.BorderColor3 = Color3.new(0, 0, 0)
Instance97.Text = "InputExample"
Instance97.SelectionOrder = 0
Instance97.BackgroundColor3 = Color3.new(1, 1, 1)
Instance97.Rotation = 0
Instance97.BackgroundTransparency = 1
Instance97.Position = UDim2.new(0.625, 0, 0.5, 0)
Instance97.MaxVisibleGraphemes = -1

local Instance98 = Instance.new("Frame", Instance92) --Separator
Instance98.Visible = true
Instance98.SelectionOrder = 0
Instance98.Name = "Separator"
Instance98.Active = false
Instance98.AutomaticSize = Enum.AutomaticSize.None
Instance98.AnchorPoint = Vector2.new(0, 0)
Instance98.Style = Enum.FrameStyle.Custom
Instance98.LayoutOrder = 0
Instance98.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance98.ZIndex = 10006
Instance98.Size = UDim2.new(1, 0, 0, 1)
Instance98.Draggable = false
Instance98.Position = UDim2.new(0, 0, 0, 0)
Instance98.Selectable = false
Instance98.ClipsDescendants = false
Instance98.BorderColor3 = Color3.new(0, 0, 0)
Instance98.BorderSizePixel = 0
Instance98.Rotation = 0
Instance98.BackgroundTransparency = 0
Instance98.BorderMode = Enum.BorderMode.Outline
Instance98.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance99 = Instance.new("TextButton", Instance92) --Trigger
Instance99.LayoutOrder = 0
Instance99.TextWrapped = false
Instance99.LineHeight = 1
Instance99.Active = true
Instance99.TextStrokeTransparency = 1
Instance99.TextTruncate = Enum.TextTruncate.None
Instance99.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance99.ZIndex = 20000
Instance99.TextWrap = false
Instance99.Draggable = false
Instance99.RichText = false
Instance99.Modal = false
Instance99.SelectionOrder = 0
Instance99.Selectable = true
Instance99.AutoButtonColor = true
Instance99.TextXAlignment = Enum.TextXAlignment.Center
Instance99.Name = "Trigger"
Instance99.TextYAlignment = Enum.TextYAlignment.Center
Instance99.TextScaled = false
Instance99.TextDirection = Enum.TextDirection.Auto
Instance99.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance99.Visible = true
Instance99.BorderMode = Enum.BorderMode.Outline
Instance99.TextTransparency = 0
Instance99.FontSize = Enum.FontSize.Size14
Instance99.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance99.BackgroundColor3 = Color3.new(1, 1, 1)
Instance99.AnchorPoint = Vector2.new(0, 0)
Instance99.TextSize = 14
Instance99.TextColor3 = Color3.new(0, 0, 0)
Instance99.Selected = false
Instance99.AutomaticSize = Enum.AutomaticSize.None
Instance99.Size = UDim2.new(1, 0, 1, 0)
Instance99.ClipsDescendants = false
Instance99.BorderColor3 = Color3.new(0, 0, 0)
Instance99.Text = ""
Instance99.BorderSizePixel = 0
Instance99.Rotation = 0
Instance99.BackgroundTransparency = 1
Instance99.MaxVisibleGraphemes = -1
Instance99.Position = UDim2.new(0, 0, 0, 0)
Instance99.Style = Enum.ButtonStyle.Custom

local Instance100 = Instance.new("Frame", Instance92) --Separator
Instance100.Visible = true
Instance100.SelectionOrder = 0
Instance100.Name = "Separator"
Instance100.Active = false
Instance100.AutomaticSize = Enum.AutomaticSize.None
Instance100.AnchorPoint = Vector2.new(0, 0)
Instance100.Style = Enum.FrameStyle.Custom
Instance100.LayoutOrder = 0
Instance100.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance100.ZIndex = 10006
Instance100.Size = UDim2.new(1, 0, 0, 1)
Instance100.Draggable = false
Instance100.Position = UDim2.new(0, 0, 1, -1)
Instance100.Selectable = false
Instance100.ClipsDescendants = false
Instance100.BorderColor3 = Color3.new(0, 0, 0)
Instance100.BorderSizePixel = 0
Instance100.Rotation = 0
Instance100.BackgroundTransparency = 0
Instance100.BorderMode = Enum.BorderMode.Outline
Instance100.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance101 = Instance.new("Frame", Instance20) --Separator
Instance101.Visible = false
Instance101.SelectionOrder = 0
Instance101.Name = "Separator"
Instance101.Active = false
Instance101.AutomaticSize = Enum.AutomaticSize.None
Instance101.AnchorPoint = Vector2.new(0, 0)
Instance101.Style = Enum.FrameStyle.Custom
Instance101.LayoutOrder = 0
Instance101.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance101.ZIndex = 10005
Instance101.Size = UDim2.new(1, 0, 0.02500000037252903, 0)
Instance101.Draggable = false
Instance101.Position = UDim2.new(0, 0, 0, 0)
Instance101.Selectable = false
Instance101.ClipsDescendants = false
Instance101.BorderColor3 = Color3.new(0, 0, 0)
Instance101.BorderSizePixel = 0
Instance101.Rotation = 0
Instance101.BackgroundTransparency = 1
Instance101.BorderMode = Enum.BorderMode.Outline
Instance101.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance102 = Instance.new("Frame", Instance101) --Separator
Instance102.Visible = true
Instance102.SelectionOrder = 0
Instance102.Name = "Separator"
Instance102.Active = false
Instance102.AutomaticSize = Enum.AutomaticSize.None
Instance102.AnchorPoint = Vector2.new(0, 0.5)
Instance102.Style = Enum.FrameStyle.Custom
Instance102.LayoutOrder = 0
Instance102.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance102.ZIndex = 10001
Instance102.Size = UDim2.new(1, 0, 0, 1)
Instance102.Draggable = false
Instance102.Position = UDim2.new(0, 0, 0.5, 0)
Instance102.Selectable = false
Instance102.ClipsDescendants = false
Instance102.BorderColor3 = Color3.new(0, 0, 0)
Instance102.BorderSizePixel = 0
Instance102.Rotation = 0
Instance102.BackgroundTransparency = 0
Instance102.BorderMode = Enum.BorderMode.Outline
Instance102.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance103 = Instance.new("TextButton", Instance20) --Dropdown
Instance103.LayoutOrder = 0
Instance103.TextWrapped = false
Instance103.LineHeight = 1
Instance103.Active = true
Instance103.TextStrokeTransparency = 1
Instance103.TextTruncate = Enum.TextTruncate.None
Instance103.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance103.ZIndex = 10005
Instance103.TextWrap = false
Instance103.Draggable = false
Instance103.RichText = false
Instance103.Modal = false
Instance103.SelectionOrder = 0
Instance103.Selectable = true
Instance103.AutoButtonColor = true
Instance103.TextXAlignment = Enum.TextXAlignment.Center
Instance103.Name = "Dropdown"
Instance103.TextYAlignment = Enum.TextYAlignment.Center
Instance103.TextScaled = false
Instance103.TextDirection = Enum.TextDirection.Auto
Instance103.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance103.Visible = false
Instance103.BorderMode = Enum.BorderMode.Outline
Instance103.TextTransparency = 0
Instance103.FontSize = Enum.FontSize.Size14
Instance103.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance103.BackgroundColor3 = Color3.new(1, 1, 1)
Instance103.AnchorPoint = Vector2.new(0, 0)
Instance103.TextSize = 14
Instance103.TextColor3 = Color3.new(0, 0, 0)
Instance103.Selected = false
Instance103.AutomaticSize = Enum.AutomaticSize.None
Instance103.Size = UDim2.new(1, 0, 0.10000000149011612, 0)
Instance103.ClipsDescendants = false
Instance103.BorderColor3 = Color3.new(0, 0, 0)
Instance103.Text = ""
Instance103.BorderSizePixel = 0
Instance103.Rotation = 0
Instance103.BackgroundTransparency = 1
Instance103.MaxVisibleGraphemes = -1
Instance103.Position = UDim2.new(0, 0, 0, 0)
Instance103.Style = Enum.ButtonStyle.Custom

local Instance104 = Instance.new("TextLabel", Instance103) --Text
Instance104.LayoutOrder = 0
Instance104.TextWrapped = true
Instance104.LineHeight = 1
Instance104.Active = true
Instance104.TextStrokeTransparency = 1
Instance104.TextTruncate = Enum.TextTruncate.None
Instance104.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance104.ZIndex = 10006
Instance104.BorderSizePixel = 0
Instance104.Draggable = false
Instance104.RichText = false
Instance104.TextWrap = true
Instance104.TextTransparency = 0
Instance104.TextYAlignment = Enum.TextYAlignment.Center
Instance104.TextScaled = true
Instance104.TextXAlignment = Enum.TextXAlignment.Left
Instance104.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance104.Name = "Text"
Instance104.BorderMode = Enum.BorderMode.Outline
Instance104.Selectable = false
Instance104.TextDirection = Enum.TextDirection.Auto
Instance104.Visible = true
Instance104.FontSize = Enum.FontSize.Size14
Instance104.AnchorPoint = Vector2.new(0.5, 0)
Instance104.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance104.TextSize = 14
Instance104.AutomaticSize = Enum.AutomaticSize.None
Instance104.Size = UDim2.new(0.8999999761581421, 0, 0.4000000059604645, 0)
Instance104.TextColor3 = Color3.new(1, 1, 1)
Instance104.ClipsDescendants = false
Instance104.BorderColor3 = Color3.new(0, 0, 0)
Instance104.Text = "DropdownExample"
Instance104.SelectionOrder = 0
Instance104.BackgroundColor3 = Color3.new(1, 1, 1)
Instance104.Rotation = 0
Instance104.BackgroundTransparency = 1
Instance104.Position = UDim2.new(0.5, 0, 0.05000000074505806, 0)
Instance104.MaxVisibleGraphemes = -1

local Instance105 = Instance.new("Frame", Instance103) --Separator
Instance105.Visible = true
Instance105.SelectionOrder = 0
Instance105.Name = "Separator"
Instance105.Active = false
Instance105.AutomaticSize = Enum.AutomaticSize.None
Instance105.AnchorPoint = Vector2.new(0, 0)
Instance105.Style = Enum.FrameStyle.Custom
Instance105.LayoutOrder = 0
Instance105.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance105.ZIndex = 10006
Instance105.Size = UDim2.new(1, 0, 0, 1)
Instance105.Draggable = false
Instance105.Position = UDim2.new(0, 0, 0, 0)
Instance105.Selectable = false
Instance105.ClipsDescendants = false
Instance105.BorderColor3 = Color3.new(0, 0, 0)
Instance105.BorderSizePixel = 0
Instance105.Rotation = 0
Instance105.BackgroundTransparency = 0
Instance105.BorderMode = Enum.BorderMode.Outline
Instance105.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance106 = Instance.new("Frame", Instance103) --DropdownOuter
Instance106.Visible = true
Instance106.SelectionOrder = 0
Instance106.Name = "DropdownOuter"
Instance106.Active = false
Instance106.AutomaticSize = Enum.AutomaticSize.None
Instance106.AnchorPoint = Vector2.new(0, 0)
Instance106.Style = Enum.FrameStyle.Custom
Instance106.LayoutOrder = 0
Instance106.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance106.ZIndex = 10006
Instance106.Size = UDim2.new(0.8999999761581421, -2, 0.4000000059604645, 0)
Instance106.Draggable = false
Instance106.Position = UDim2.new(0.05000000074505806, 1, 0.5, 0)
Instance106.Selectable = false
Instance106.ClipsDescendants = false
Instance106.BorderColor3 = Color3.new(0, 0, 0)
Instance106.BorderSizePixel = 0
Instance106.Rotation = 0
Instance106.BackgroundTransparency = 0
Instance106.BorderMode = Enum.BorderMode.Outline
Instance106.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance107 = Instance.new("UIStroke", Instance106) --UIStroke
Instance107.Enabled = true
Instance107.Color = Color3.new(0, 0, 0)
Instance107.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
Instance107.Thickness = 1
Instance107.Transparency = 0
Instance107.Name = "UIStroke"
Instance107.LineJoinMode = Enum.LineJoinMode.Miter

local Instance108 = Instance.new("Frame", Instance106) --ContentHolder
Instance108.Visible = true
Instance108.SelectionOrder = 0
Instance108.Name = "ContentHolder"
Instance108.Active = false
Instance108.AutomaticSize = Enum.AutomaticSize.None
Instance108.AnchorPoint = Vector2.new(0, 0)
Instance108.Style = Enum.FrameStyle.Custom
Instance108.LayoutOrder = 0
Instance108.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance108.ZIndex = 10007
Instance108.Size = UDim2.new(1, -4, 1, -4)
Instance108.Draggable = false
Instance108.Position = UDim2.new(0, 2, 0, 2)
Instance108.Selectable = false
Instance108.ClipsDescendants = false
Instance108.BorderColor3 = Color3.new(0, 0, 0)
Instance108.BorderSizePixel = 0
Instance108.Rotation = 0
Instance108.BackgroundTransparency = 0
Instance108.BorderMode = Enum.BorderMode.Outline
Instance108.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance109 = Instance.new("ScrollingFrame", Instance108) --Values
Instance109.LayoutOrder = 0
Instance109.Active = true
Instance109.ScrollingDirection = Enum.ScrollingDirection.XY
Instance109.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance109.ZIndex = 10008
Instance109.CanvasSize = UDim2.new(0, 0, 0, 0)
Instance109.Draggable = false
Instance109.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Instance109.CanvasPosition = Vector2.new(0, 0)
Instance109.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
Instance109.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
Instance109.HorizontalScrollBarInset = Enum.ScrollBarInset.None
Instance109.VerticalScrollBarInset = Enum.ScrollBarInset.None
Instance109.BorderMode = Enum.BorderMode.Outline
Instance109.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
Instance109.AutomaticCanvasSize = Enum.AutomaticSize.Y
Instance109.Selectable = true
Instance109.AnchorPoint = Vector2.new(0, 0)
Instance109.Name = "Values"
Instance109.Visible = false
Instance109.Size = UDim2.new(1, 0, 1, 0)
Instance109.ScrollBarImageColor3 = Color3.new(0, 0, 0)
Instance109.BorderSizePixel = 0
Instance109.ScrollBarImageTransparency = 0
Instance109.ClipsDescendants = true
Instance109.BorderColor3 = Color3.new(0, 0, 0)
Instance109.ScrollBarThickness = 0
Instance109.SelectionOrder = 0
Instance109.Rotation = 0
Instance109.BackgroundTransparency = 1
Instance109.Position = UDim2.new(0, 0, 0, 0)
Instance109.ScrollingEnabled = true
Instance109.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
Instance109.AutomaticSize = Enum.AutomaticSize.None
Instance109.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance110 = Instance.new("UIListLayout", Instance109) --UIListLayout
Instance110.FillDirection = Enum.FillDirection.Vertical
Instance110.HorizontalAlignment = Enum.HorizontalAlignment.Left
Instance110.HorizontalFlex = Enum.UIFlexAlignment.None
Instance110.VerticalFlex = Enum.UIFlexAlignment.None
Instance110.VerticalAlignment = Enum.VerticalAlignment.Top
Instance110.SortOrder = Enum.SortOrder.LayoutOrder
Instance110.Name = "UIListLayout"
Instance110.Padding = UDim.new(0, 0)
Instance110.ItemLineAlignment = Enum.ItemLineAlignment.Automatic

local Instance111 = Instance.new("TextButton", Instance109) --ListButton
Instance111.LayoutOrder = 0
Instance111.TextWrapped = true
Instance111.LineHeight = 1
Instance111.Active = true
Instance111.TextStrokeTransparency = 1
Instance111.TextTruncate = Enum.TextTruncate.None
Instance111.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance111.ZIndex = 10009
Instance111.TextWrap = true
Instance111.Draggable = false
Instance111.RichText = false
Instance111.Modal = false
Instance111.SelectionOrder = 0
Instance111.Selectable = true
Instance111.AutoButtonColor = true
Instance111.TextXAlignment = Enum.TextXAlignment.Left
Instance111.Name = "ListButton"
Instance111.TextYAlignment = Enum.TextYAlignment.Center
Instance111.TextScaled = true
Instance111.TextDirection = Enum.TextDirection.Auto
Instance111.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance111.Visible = false
Instance111.BorderMode = Enum.BorderMode.Outline
Instance111.TextTransparency = 0
Instance111.FontSize = Enum.FontSize.Size14
Instance111.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance111.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Instance111.AnchorPoint = Vector2.new(0, 0)
Instance111.TextSize = 14
Instance111.TextColor3 = Color3.new(1, 1, 1)
Instance111.Selected = false
Instance111.AutomaticSize = Enum.AutomaticSize.None
Instance111.Size = UDim2.new(1, 0, 0.15399999916553497, 0)
Instance111.ClipsDescendants = false
Instance111.BorderColor3 = Color3.new(0, 0, 0)
Instance111.Text = "ListButton"
Instance111.BorderSizePixel = 0
Instance111.Rotation = 0
Instance111.BackgroundTransparency = 0
Instance111.MaxVisibleGraphemes = -1
Instance111.Position = UDim2.new(0, 0, 0, 0)
Instance111.Style = Enum.ButtonStyle.Custom

local Instance112 = Instance.new("UIPadding", Instance111) --UIPadding
Instance112.PaddingTop = UDim.new(0, 0)
Instance112.PaddingRight = UDim.new(0, 0)
Instance112.PaddingLeft = UDim.new(0.0500000007, 0)
Instance112.Name = "UIPadding"
Instance112.PaddingBottom = UDim.new(0, 0)

local Instance113 = Instance.new("TextLabel", Instance106) --Default
Instance113.LayoutOrder = 0
Instance113.TextWrapped = true
Instance113.LineHeight = 1
Instance113.Active = false
Instance113.TextStrokeTransparency = 1
Instance113.TextTruncate = Enum.TextTruncate.None
Instance113.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance113.ZIndex = 10008
Instance113.BorderSizePixel = 0
Instance113.Draggable = false
Instance113.RichText = false
Instance113.TextWrap = true
Instance113.TextTransparency = 0
Instance113.TextYAlignment = Enum.TextYAlignment.Center
Instance113.TextScaled = true
Instance113.TextXAlignment = Enum.TextXAlignment.Center
Instance113.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance113.Name = "Default"
Instance113.BorderMode = Enum.BorderMode.Outline
Instance113.Selectable = false
Instance113.TextDirection = Enum.TextDirection.Auto
Instance113.Visible = true
Instance113.FontSize = Enum.FontSize.Size14
Instance113.AnchorPoint = Vector2.new(0, 0)
Instance113.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance113.TextSize = 14
Instance113.AutomaticSize = Enum.AutomaticSize.None
Instance113.Size = UDim2.new(1, 0, 1, 0)
Instance113.TextColor3 = Color3.new(1, 0.333333, 0)
Instance113.ClipsDescendants = false
Instance113.BorderColor3 = Color3.new(0, 0, 0)
Instance113.Text = "DefaultValue"
Instance113.SelectionOrder = 0
Instance113.BackgroundColor3 = Color3.new(1, 1, 1)
Instance113.Rotation = 0
Instance113.BackgroundTransparency = 1
Instance113.Position = UDim2.new(0, 0, 0, 0)
Instance113.MaxVisibleGraphemes = -1

local Instance114 = Instance.new("TextButton", Instance103) --Trigger
Instance114.LayoutOrder = 0
Instance114.TextWrapped = false
Instance114.LineHeight = 1
Instance114.Active = true
Instance114.TextStrokeTransparency = 1
Instance114.TextTruncate = Enum.TextTruncate.None
Instance114.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance114.ZIndex = 20000
Instance114.TextWrap = false
Instance114.Draggable = false
Instance114.RichText = false
Instance114.Modal = false
Instance114.SelectionOrder = 0
Instance114.Selectable = true
Instance114.AutoButtonColor = true
Instance114.TextXAlignment = Enum.TextXAlignment.Center
Instance114.Name = "Trigger"
Instance114.TextYAlignment = Enum.TextYAlignment.Center
Instance114.TextScaled = false
Instance114.TextDirection = Enum.TextDirection.Auto
Instance114.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance114.Visible = true
Instance114.BorderMode = Enum.BorderMode.Outline
Instance114.TextTransparency = 0
Instance114.FontSize = Enum.FontSize.Size14
Instance114.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance114.BackgroundColor3 = Color3.new(1, 1, 1)
Instance114.AnchorPoint = Vector2.new(0, 0)
Instance114.TextSize = 14
Instance114.TextColor3 = Color3.new(0, 0, 0)
Instance114.Selected = false
Instance114.AutomaticSize = Enum.AutomaticSize.None
Instance114.Size = UDim2.new(1, 0, 1, 0)
Instance114.ClipsDescendants = false
Instance114.BorderColor3 = Color3.new(0, 0, 0)
Instance114.Text = ""
Instance114.BorderSizePixel = 0
Instance114.Rotation = 0
Instance114.BackgroundTransparency = 1
Instance114.MaxVisibleGraphemes = -1
Instance114.Position = UDim2.new(0, 0, 0, 0)
Instance114.Style = Enum.ButtonStyle.Custom

local Instance115 = Instance.new("Frame", Instance103) --Separator
Instance115.Visible = true
Instance115.SelectionOrder = 0
Instance115.Name = "Separator"
Instance115.Active = false
Instance115.AutomaticSize = Enum.AutomaticSize.None
Instance115.AnchorPoint = Vector2.new(0, 0)
Instance115.Style = Enum.FrameStyle.Custom
Instance115.LayoutOrder = 0
Instance115.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance115.ZIndex = 10006
Instance115.Size = UDim2.new(1, 0, 0, 1)
Instance115.Draggable = false
Instance115.Position = UDim2.new(0, 0, 1, -1)
Instance115.Selectable = false
Instance115.ClipsDescendants = false
Instance115.BorderColor3 = Color3.new(0, 0, 0)
Instance115.BorderSizePixel = 0
Instance115.Rotation = 0
Instance115.BackgroundTransparency = 0
Instance115.BorderMode = Enum.BorderMode.Outline
Instance115.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance116 = Instance.new("Frame", Instance20) --Frame
Instance116.Visible = false
Instance116.SelectionOrder = 0
Instance116.Name = "Frame"
Instance116.Active = false
Instance116.AutomaticSize = Enum.AutomaticSize.None
Instance116.AnchorPoint = Vector2.new(0, 0)
Instance116.Style = Enum.FrameStyle.Custom
Instance116.LayoutOrder = 9999
Instance116.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance116.ZIndex = 999999
Instance116.Size = UDim2.new(1, 0, 0, 1)
Instance116.Draggable = false
Instance116.Position = UDim2.new(0, 0, 0, 0)
Instance116.Selectable = false
Instance116.ClipsDescendants = false
Instance116.BorderColor3 = Color3.new(0, 0, 0)
Instance116.BorderSizePixel = 0
Instance116.Rotation = 0
Instance116.BackgroundTransparency = 0.9900000095367432
Instance116.BorderMode = Enum.BorderMode.Outline
Instance116.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance117 = Instance.new("UIGradient", Instance10) --UIGradient
Instance117.Offset = Vector2.new(0, 0)
Instance117.Color = ColorSequence.new({
    [1] = ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
    [2] = ColorSequenceKeypoint.new(0.3499999940395355, Color3.new(1, 1, 1)),
    [3] = ColorSequenceKeypoint.new(1, Color3.new(0.588235, 0.588235, 0.588235))
})
Instance117.Rotation = 75
Instance117.Transparency = NumberSequence.new({
    [1] = NumberSequenceKeypoint.new(0, 0, 0),
    [2] = NumberSequenceKeypoint.new(1, 0, 0)
})
Instance117.Name = "UIGradient"
Instance117.Enabled = true

local Instance118 = Instance.new("Frame", Instance10) --StarterFade
Instance118.Visible = false
Instance118.SelectionOrder = 0
Instance118.Name = "StarterFade"
Instance118.Active = false
Instance118.AutomaticSize = Enum.AutomaticSize.None
Instance118.AnchorPoint = Vector2.new(0, 0)
Instance118.Style = Enum.FrameStyle.Custom
Instance118.LayoutOrder = 0
Instance118.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance118.ZIndex = 9520
Instance118.Size = UDim2.new(1, 0, 1, 0)
Instance118.Draggable = false
Instance118.Position = UDim2.new(0, 0, 0, 0)
Instance118.Selectable = false
Instance118.ClipsDescendants = false
Instance118.BorderColor3 = Color3.new(0, 0, 0)
Instance118.BorderSizePixel = 0
Instance118.Rotation = 0
Instance118.BackgroundTransparency = 0
Instance118.BorderMode = Enum.BorderMode.Outline
Instance118.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance119 = Instance.new("UIGradient", Instance8) --UIGradient
Instance119.Offset = Vector2.new(0, 0)
Instance119.Color = ColorSequence.new({
    [1] = ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
    [2] = ColorSequenceKeypoint.new(1, Color3.new(0.784314, 0.784314, 0.784314))
})
Instance119.Rotation = 45
Instance119.Transparency = NumberSequence.new({
    [1] = NumberSequenceKeypoint.new(0, 0, 0),
    [2] = NumberSequenceKeypoint.new(1, 0, 0)
})
Instance119.Name = "UIGradient"
Instance119.Enabled = true

local Instance120 = Instance.new("UIAspectRatioConstraint", Instance7) --UIAspectRatioConstraint
Instance120.DominantAxis = Enum.DominantAxis.Width
Instance120.AspectRatio = 1
Instance120.Name = "UIAspectRatioConstraint"
Instance120.AspectType = Enum.AspectType.FitWithinMaxSize

local Instance121 = Instance.new("Frame", Instance7) --MobileMaximize
Instance121.Visible = false
Instance121.SelectionOrder = 0
Instance121.Name = "MobileMaximize"
Instance121.Active = false
Instance121.AutomaticSize = Enum.AutomaticSize.None
Instance121.AnchorPoint = Vector2.new(0.5, 0)
Instance121.Style = Enum.FrameStyle.Custom
Instance121.LayoutOrder = 0
Instance121.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance121.ZIndex = 100001
Instance121.Size = UDim2.new(0, 50, 0, 50)
Instance121.Draggable = false
Instance121.Position = UDim2.new(0.5, 0, 0.800000011920929, 0)
Instance121.Selectable = false
Instance121.ClipsDescendants = false
Instance121.BorderColor3 = Color3.new(0, 0, 0)
Instance121.BorderSizePixel = 0
Instance121.Rotation = 0
Instance121.BackgroundTransparency = 1
Instance121.BorderMode = Enum.BorderMode.Outline
Instance121.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance122 = Instance.new("TextButton", Instance121) --DragButton
Instance122.LayoutOrder = 0
Instance122.TextWrapped = false
Instance122.LineHeight = 1
Instance122.Active = true
Instance122.TextStrokeTransparency = 1
Instance122.TextTruncate = Enum.TextTruncate.None
Instance122.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance122.ZIndex = 100002
Instance122.TextWrap = false
Instance122.Draggable = false
Instance122.RichText = false
Instance122.Modal = false
Instance122.SelectionOrder = 0
Instance122.Selectable = true
Instance122.AutoButtonColor = true
Instance122.TextXAlignment = Enum.TextXAlignment.Center
Instance122.Name = "DragButton"
Instance122.TextYAlignment = Enum.TextYAlignment.Center
Instance122.TextScaled = false
Instance122.TextDirection = Enum.TextDirection.Auto
Instance122.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance122.Visible = true
Instance122.BorderMode = Enum.BorderMode.Outline
Instance122.TextTransparency = 0
Instance122.FontSize = Enum.FontSize.Size14
Instance122.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance122.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Instance122.AnchorPoint = Vector2.new(0, 0)
Instance122.TextSize = 14
Instance122.TextColor3 = Color3.new(0, 0, 0)
Instance122.Selected = false
Instance122.AutomaticSize = Enum.AutomaticSize.None
Instance122.Size = UDim2.new(1, 0, 1, 0)
Instance122.ClipsDescendants = false
Instance122.BorderColor3 = Color3.new(0, 0, 0)
Instance122.Text = ""
Instance122.BorderSizePixel = 0
Instance122.Rotation = 45
Instance122.BackgroundTransparency = 0
Instance122.MaxVisibleGraphemes = -1
Instance122.Position = UDim2.new(0, 0, 0, 0)
Instance122.Style = Enum.ButtonStyle.Custom

local Instance123 = Instance.new("TextLabel", Instance122) --Text
Instance123.LayoutOrder = 0
Instance123.TextWrapped = true
Instance123.LineHeight = 1
Instance123.Active = false
Instance123.TextStrokeTransparency = 1
Instance123.TextTruncate = Enum.TextTruncate.None
Instance123.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance123.ZIndex = 100003
Instance123.BorderSizePixel = 0
Instance123.Draggable = false
Instance123.RichText = false
Instance123.TextWrap = true
Instance123.TextTransparency = 0
Instance123.TextYAlignment = Enum.TextYAlignment.Center
Instance123.TextScaled = true
Instance123.TextXAlignment = Enum.TextXAlignment.Center
Instance123.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance123.Name = "Text"
Instance123.BorderMode = Enum.BorderMode.Outline
Instance123.Selectable = false
Instance123.TextDirection = Enum.TextDirection.Auto
Instance123.Visible = true
Instance123.FontSize = Enum.FontSize.Size14
Instance123.AnchorPoint = Vector2.new(0, 0)
Instance123.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance123.TextSize = 14
Instance123.AutomaticSize = Enum.AutomaticSize.None
Instance123.Size = UDim2.new(1, 0, 1, 0)
Instance123.TextColor3 = Color3.new(1, 1, 1)
Instance123.ClipsDescendants = false
Instance123.BorderColor3 = Color3.new(0, 0, 0)
Instance123.Text = "+"
Instance123.SelectionOrder = 0
Instance123.BackgroundColor3 = Color3.new(1, 1, 1)
Instance123.Rotation = -45
Instance123.BackgroundTransparency = 1
Instance123.Position = UDim2.new(0, 0, 0, 0)
Instance123.MaxVisibleGraphemes = -1

local Instance124 = Instance.new("UIStroke", Instance122) --UIStroke
Instance124.Enabled = true
Instance124.Color = Color3.new(0, 0, 0)
Instance124.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instance124.Thickness = 3
Instance124.Transparency = 0
Instance124.Name = "UIStroke"
Instance124.LineJoinMode = Enum.LineJoinMode.Round

local Instance125 = Instance.new("UICorner", Instance122) --UICorner
Instance125.Name = "UICorner"
Instance125.CornerRadius = UDim.new(0.200000003, 0)

local Instance126 = Instance.new("Frame", Instance1) --Notification
Instance126.Visible = true
Instance126.SelectionOrder = 0
Instance126.Name = "Notification"
Instance126.Active = false
Instance126.AutomaticSize = Enum.AutomaticSize.None
Instance126.AnchorPoint = Vector2.new(0, 0)
Instance126.Style = Enum.FrameStyle.Custom
Instance126.LayoutOrder = 0
Instance126.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance126.ZIndex = 10030
Instance126.Size = UDim2.new(0.125, 0, 1, 0)
Instance126.Draggable = false
Instance126.Position = UDim2.new(0, 0, 0, 0)
Instance126.Selectable = false
Instance126.ClipsDescendants = false
Instance126.BorderColor3 = Color3.new(0, 0, 0)
Instance126.BorderSizePixel = 0
Instance126.Rotation = 0
Instance126.BackgroundTransparency = 1
Instance126.BorderMode = Enum.BorderMode.Outline
Instance126.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance127 = Instance.new("Frame", Instance126) --NotificationHolder
Instance127.Visible = false
Instance127.SelectionOrder = 0
Instance127.Name = "NotificationHolder"
Instance127.Active = false
Instance127.AutomaticSize = Enum.AutomaticSize.None
Instance127.AnchorPoint = Vector2.new(0, 0)
Instance127.Style = Enum.FrameStyle.Custom
Instance127.LayoutOrder = 0
Instance127.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance127.ZIndex = 10031
Instance127.Size = UDim2.new(1, 0, 0.11500000208616257, 0)
Instance127.Draggable = false
Instance127.Position = UDim2.new(0, 0, 0, 0)
Instance127.Selectable = false
Instance127.ClipsDescendants = false
Instance127.BorderColor3 = Color3.new(0, 0, 0)
Instance127.BorderSizePixel = 0
Instance127.Rotation = 0
Instance127.BackgroundTransparency = 1
Instance127.BorderMode = Enum.BorderMode.Outline
Instance127.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance128 = Instance.new("Frame", Instance127) --NotificationOrange
Instance128.Visible = true
Instance128.SelectionOrder = 0
Instance128.Name = "NotificationOrange"
Instance128.Active = false
Instance128.AutomaticSize = Enum.AutomaticSize.None
Instance128.AnchorPoint = Vector2.new(0, 0)
Instance128.Style = Enum.FrameStyle.Custom
Instance128.LayoutOrder = 0
Instance128.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance128.ZIndex = 10032
Instance128.Size = UDim2.new(1, 0, 1, 0)
Instance128.Draggable = false
Instance128.Position = UDim2.new(0, 0, 0, 0)
Instance128.Selectable = false
Instance128.ClipsDescendants = false
Instance128.BorderColor3 = Color3.new(0, 0, 0)
Instance128.BorderSizePixel = 0
Instance128.Rotation = 0
Instance128.BackgroundTransparency = 0
Instance128.BorderMode = Enum.BorderMode.Outline
Instance128.BackgroundColor3 = Color3.new(0.666667, 0, 1)

local Instance129 = Instance.new("UIStroke", Instance128) --UIStroke
Instance129.Enabled = true
Instance129.Color = Color3.new(0, 0, 0)
Instance129.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instance129.Thickness = 1
Instance129.Transparency = 0
Instance129.Name = "UIStroke"
Instance129.LineJoinMode = Enum.LineJoinMode.Miter

local Instance130 = Instance.new("Frame", Instance128) --NotificationMain
Instance130.Visible = true
Instance130.SelectionOrder = 0
Instance130.Name = "NotificationMain"
Instance130.Active = false
Instance130.AutomaticSize = Enum.AutomaticSize.None
Instance130.AnchorPoint = Vector2.new(0, 0)
Instance130.Style = Enum.FrameStyle.Custom
Instance130.LayoutOrder = 0
Instance130.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance130.ZIndex = 10033
Instance130.Size = UDim2.new(1, -5, 1, -2)
Instance130.Draggable = false
Instance130.Position = UDim2.new(0, 0, 0, 2)
Instance130.Selectable = false
Instance130.ClipsDescendants = false
Instance130.BorderColor3 = Color3.new(0, 0, 0)
Instance130.BorderSizePixel = 0
Instance130.Rotation = 0
Instance130.BackgroundTransparency = 0
Instance130.BorderMode = Enum.BorderMode.Outline
Instance130.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance131 = Instance.new("Frame", Instance130) --Bar
Instance131.Visible = true
Instance131.SelectionOrder = 0
Instance131.Name = "Bar"
Instance131.Active = false
Instance131.AutomaticSize = Enum.AutomaticSize.None
Instance131.AnchorPoint = Vector2.new(0, 0)
Instance131.Style = Enum.FrameStyle.Custom
Instance131.LayoutOrder = 0
Instance131.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance131.ZIndex = 10034
Instance131.Size = UDim2.new(1, 0, 0, 5)
Instance131.Draggable = false
Instance131.Position = UDim2.new(0, 0, 1, -5)
Instance131.Selectable = false
Instance131.ClipsDescendants = false
Instance131.BorderColor3 = Color3.new(0, 0, 0)
Instance131.BorderSizePixel = 0
Instance131.Rotation = 0
Instance131.BackgroundTransparency = 0
Instance131.BorderMode = Enum.BorderMode.Outline
Instance131.BackgroundColor3 = Color3.new(0.27451, 0, 0.607843)

local Instance132 = Instance.new("Frame", Instance131) --Fill
Instance132.Visible = true
Instance132.SelectionOrder = 0
Instance132.Name = "Fill"
Instance132.Active = false
Instance132.AutomaticSize = Enum.AutomaticSize.None
Instance132.AnchorPoint = Vector2.new(0, 0)
Instance132.Style = Enum.FrameStyle.Custom
Instance132.LayoutOrder = 0
Instance132.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance132.ZIndex = 10035
Instance132.Size = UDim2.new(0.5, 0, 1, 0)
Instance132.Draggable = false
Instance132.Position = UDim2.new(0.5, 0, 0, 0)
Instance132.Selectable = false
Instance132.ClipsDescendants = false
Instance132.BorderColor3 = Color3.new(0, 0, 0)
Instance132.BorderSizePixel = 0
Instance132.Rotation = 0
Instance132.BackgroundTransparency = 0
Instance132.BorderMode = Enum.BorderMode.Outline
Instance132.BackgroundColor3 = Color3.new(0.666667, 0, 1)

local Instance133 = Instance.new("TextLabel", Instance130) --Title
Instance133.LayoutOrder = 0
Instance133.TextWrapped = true
Instance133.LineHeight = 1
Instance133.Active = false
Instance133.TextStrokeTransparency = 1
Instance133.TextTruncate = Enum.TextTruncate.None
Instance133.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance133.ZIndex = 10034
Instance133.BorderSizePixel = 0
Instance133.Draggable = false
Instance133.RichText = false
Instance133.TextWrap = true
Instance133.TextTransparency = 0
Instance133.TextYAlignment = Enum.TextYAlignment.Center
Instance133.TextScaled = true
Instance133.TextXAlignment = Enum.TextXAlignment.Center
Instance133.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance133.Name = "Title"
Instance133.BorderMode = Enum.BorderMode.Outline
Instance133.Selectable = false
Instance133.TextDirection = Enum.TextDirection.Auto
Instance133.Visible = true
Instance133.FontSize = Enum.FontSize.Size14
Instance133.AnchorPoint = Vector2.new(0, 0)
Instance133.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance133.TextSize = 14
Instance133.AutomaticSize = Enum.AutomaticSize.None
Instance133.Size = UDim2.new(1, 0, 0.14300000667572021, 0)
Instance133.TextColor3 = Color3.new(1, 1, 1)
Instance133.ClipsDescendants = false
Instance133.BorderColor3 = Color3.new(0, 0, 0)
Instance133.Text = "Title"
Instance133.SelectionOrder = 0
Instance133.BackgroundColor3 = Color3.new(1, 1, 1)
Instance133.Rotation = 0
Instance133.BackgroundTransparency = 1
Instance133.Position = UDim2.new(0, 0, 0.02500000037252903, 0)
Instance133.MaxVisibleGraphemes = -1

local Instance134 = Instance.new("Frame", Instance130) --Separator
Instance134.Visible = true
Instance134.SelectionOrder = 0
Instance134.Name = "Separator"
Instance134.Active = false
Instance134.AutomaticSize = Enum.AutomaticSize.None
Instance134.AnchorPoint = Vector2.new(0, 0)
Instance134.Style = Enum.FrameStyle.Custom
Instance134.LayoutOrder = 0
Instance134.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance134.ZIndex = 10034
Instance134.Size = UDim2.new(1, 0, 0, 1)
Instance134.Draggable = false
Instance134.Position = UDim2.new(0, 0, 0.20000000298023224, -1)
Instance134.Selectable = false
Instance134.ClipsDescendants = false
Instance134.BorderColor3 = Color3.new(0, 0, 0)
Instance134.BorderSizePixel = 0
Instance134.Rotation = 0
Instance134.BackgroundTransparency = 0
Instance134.BorderMode = Enum.BorderMode.Outline
Instance134.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance135 = Instance.new("Frame", Instance130) --Lines
Instance135.Visible = true
Instance135.SelectionOrder = 0
Instance135.Name = "Lines"
Instance135.Active = false
Instance135.AutomaticSize = Enum.AutomaticSize.None
Instance135.AnchorPoint = Vector2.new(0, 0)
Instance135.Style = Enum.FrameStyle.Custom
Instance135.LayoutOrder = 0
Instance135.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance135.ZIndex = 10034
Instance135.Size = UDim2.new(1, 0, 0.800000011920929, -5)
Instance135.Draggable = false
Instance135.Position = UDim2.new(0, 0, 0.20000000298023224, 0)
Instance135.Selectable = false
Instance135.ClipsDescendants = false
Instance135.BorderColor3 = Color3.new(0, 0, 0)
Instance135.BorderSizePixel = 0
Instance135.Rotation = 0
Instance135.BackgroundTransparency = 1
Instance135.BorderMode = Enum.BorderMode.Outline
Instance135.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance136 = Instance.new("UIListLayout", Instance135) --UIListLayout
Instance136.FillDirection = Enum.FillDirection.Vertical
Instance136.HorizontalAlignment = Enum.HorizontalAlignment.Left
Instance136.HorizontalFlex = Enum.UIFlexAlignment.None
Instance136.VerticalFlex = Enum.UIFlexAlignment.None
Instance136.VerticalAlignment = Enum.VerticalAlignment.Top
Instance136.SortOrder = Enum.SortOrder.LayoutOrder
Instance136.Name = "UIListLayout"
Instance136.Padding = UDim.new(0, 0)
Instance136.ItemLineAlignment = Enum.ItemLineAlignment.Automatic

local Instance137 = Instance.new("TextLabel", Instance135) --1
Instance137.LayoutOrder = 0
Instance137.TextWrapped = true
Instance137.LineHeight = 1
Instance137.Active = false
Instance137.TextStrokeTransparency = 1
Instance137.TextTruncate = Enum.TextTruncate.None
Instance137.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance137.ZIndex = 10035
Instance137.BorderSizePixel = 0
Instance137.Draggable = false
Instance137.RichText = false
Instance137.TextWrap = true
Instance137.TextTransparency = 0
Instance137.TextYAlignment = Enum.TextYAlignment.Top
Instance137.TextScaled = false
Instance137.TextXAlignment = Enum.TextXAlignment.Left
Instance137.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance137.Name = "1"
Instance137.BorderMode = Enum.BorderMode.Outline
Instance137.Selectable = false
Instance137.TextDirection = Enum.TextDirection.Auto
Instance137.Visible = true
Instance137.FontSize = Enum.FontSize.Size10
Instance137.AnchorPoint = Vector2.new(0, 0)
Instance137.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance137.TextSize = 10
Instance137.AutomaticSize = Enum.AutomaticSize.None
Instance137.Size = UDim2.new(1, 0, 1, 0)
Instance137.TextColor3 = Color3.new(1, 1, 1)
Instance137.ClipsDescendants = false
Instance137.BorderColor3 = Color3.new(0, 0, 0)
Instance137.Text = "Line"
Instance137.SelectionOrder = 0
Instance137.BackgroundColor3 = Color3.new(1, 1, 1)
Instance137.Rotation = 0
Instance137.BackgroundTransparency = 1
Instance137.Position = UDim2.new(0, 0, 0, 0)
Instance137.MaxVisibleGraphemes = -1

local Instance138 = Instance.new("UIListLayout", Instance126) --UIListLayout
Instance138.FillDirection = Enum.FillDirection.Vertical
Instance138.HorizontalAlignment = Enum.HorizontalAlignment.Left
Instance138.HorizontalFlex = Enum.UIFlexAlignment.None
Instance138.VerticalFlex = Enum.UIFlexAlignment.None
Instance138.VerticalAlignment = Enum.VerticalAlignment.Bottom
Instance138.SortOrder = Enum.SortOrder.LayoutOrder
Instance138.Name = "UIListLayout"
Instance138.Padding = UDim.new(0.00999999978, 1)
Instance138.ItemLineAlignment = Enum.ItemLineAlignment.Automatic

local Instance139 = Instance.new("Frame", Instance126) --ChooseNotificationHolder
Instance139.Visible = false
Instance139.SelectionOrder = 0
Instance139.Name = "ChooseNotificationHolder"
Instance139.Active = false
Instance139.AutomaticSize = Enum.AutomaticSize.None
Instance139.AnchorPoint = Vector2.new(0, 0)
Instance139.Style = Enum.FrameStyle.Custom
Instance139.LayoutOrder = 0
Instance139.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance139.ZIndex = 10031
Instance139.Size = UDim2.new(1, 0, 0.11500000208616257, 0)
Instance139.Draggable = false
Instance139.Position = UDim2.new(0, 0, 0, 0)
Instance139.Selectable = false
Instance139.ClipsDescendants = false
Instance139.BorderColor3 = Color3.new(0, 0, 0)
Instance139.BorderSizePixel = 0
Instance139.Rotation = 0
Instance139.BackgroundTransparency = 1
Instance139.BorderMode = Enum.BorderMode.Outline
Instance139.BackgroundColor3 = Color3.new(1, 1, 1)

local Instance140 = Instance.new("Frame", Instance139) --NotificationOrange
Instance140.Visible = true
Instance140.SelectionOrder = 0
Instance140.Name = "NotificationOrange"
Instance140.Active = false
Instance140.AutomaticSize = Enum.AutomaticSize.None
Instance140.AnchorPoint = Vector2.new(0, 0)
Instance140.Style = Enum.FrameStyle.Custom
Instance140.LayoutOrder = 0
Instance140.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance140.ZIndex = 10032
Instance140.Size = UDim2.new(1, 0, 1, 0)
Instance140.Draggable = false
Instance140.Position = UDim2.new(0, 0, 0, 0)
Instance140.Selectable = false
Instance140.ClipsDescendants = false
Instance140.BorderColor3 = Color3.new(0, 0, 0)
Instance140.BorderSizePixel = 0
Instance140.Rotation = 0
Instance140.BackgroundTransparency = 0
Instance140.BorderMode = Enum.BorderMode.Outline
Instance140.BackgroundColor3 = Color3.new(0.666667, 0, 1)

local Instance141 = Instance.new("UIStroke", Instance140) --UIStroke
Instance141.Enabled = true
Instance141.Color = Color3.new(0, 0, 0)
Instance141.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Instance141.Thickness = 1
Instance141.Transparency = 0
Instance141.Name = "UIStroke"
Instance141.LineJoinMode = Enum.LineJoinMode.Miter

local Instance142 = Instance.new("Frame", Instance140) --NotificationMain
Instance142.Visible = true
Instance142.SelectionOrder = 0
Instance142.Name = "NotificationMain"
Instance142.Active = false
Instance142.AutomaticSize = Enum.AutomaticSize.None
Instance142.AnchorPoint = Vector2.new(0, 0)
Instance142.Style = Enum.FrameStyle.Custom
Instance142.LayoutOrder = 0
Instance142.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance142.ZIndex = 10033
Instance142.Size = UDim2.new(1, -5, 1, -2)
Instance142.Draggable = false
Instance142.Position = UDim2.new(0, 0, 0, 2)
Instance142.Selectable = false
Instance142.ClipsDescendants = false
Instance142.BorderColor3 = Color3.new(0, 0, 0)
Instance142.BorderSizePixel = 0
Instance142.Rotation = 0
Instance142.BackgroundTransparency = 0
Instance142.BorderMode = Enum.BorderMode.Outline
Instance142.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)

local Instance143 = Instance.new("Frame", Instance142) --Bar
Instance143.Visible = true
Instance143.SelectionOrder = 0
Instance143.Name = "Bar"
Instance143.Active = false
Instance143.AutomaticSize = Enum.AutomaticSize.None
Instance143.AnchorPoint = Vector2.new(0, 0)
Instance143.Style = Enum.FrameStyle.Custom
Instance143.LayoutOrder = 0
Instance143.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance143.ZIndex = 10034
Instance143.Size = UDim2.new(1, 0, 0, 5)
Instance143.Draggable = false
Instance143.Position = UDim2.new(0, 0, 1, -5)
Instance143.Selectable = false
Instance143.ClipsDescendants = false
Instance143.BorderColor3 = Color3.new(0, 0, 0)
Instance143.BorderSizePixel = 0
Instance143.Rotation = 0
Instance143.BackgroundTransparency = 0
Instance143.BorderMode = Enum.BorderMode.Outline
Instance143.BackgroundColor3 = Color3.new(0.27451, 0, 0.607843)

local Instance144 = Instance.new("Frame", Instance143) --Fill
Instance144.Visible = true
Instance144.SelectionOrder = 0
Instance144.Name = "Fill"
Instance144.Active = false
Instance144.AutomaticSize = Enum.AutomaticSize.None
Instance144.AnchorPoint = Vector2.new(0, 0)
Instance144.Style = Enum.FrameStyle.Custom
Instance144.LayoutOrder = 0
Instance144.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance144.ZIndex = 10035
Instance144.Size = UDim2.new(0.5, 0, 1, 0)
Instance144.Draggable = false
Instance144.Position = UDim2.new(0.5, 0, 0, 0)
Instance144.Selectable = false
Instance144.ClipsDescendants = false
Instance144.BorderColor3 = Color3.new(0, 0, 0)
Instance144.BorderSizePixel = 0
Instance144.Rotation = 0
Instance144.BackgroundTransparency = 0
Instance144.BorderMode = Enum.BorderMode.Outline
Instance144.BackgroundColor3 = Color3.new(0.666667, 0, 1)

local Instance145 = Instance.new("TextLabel", Instance142) --Title
Instance145.LayoutOrder = 0
Instance145.TextWrapped = true
Instance145.LineHeight = 1
Instance145.Active = false
Instance145.TextStrokeTransparency = 1
Instance145.TextTruncate = Enum.TextTruncate.None
Instance145.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance145.ZIndex = 10034
Instance145.BorderSizePixel = 0
Instance145.Draggable = false
Instance145.RichText = false
Instance145.TextWrap = true
Instance145.TextTransparency = 0
Instance145.TextYAlignment = Enum.TextYAlignment.Center
Instance145.TextScaled = true
Instance145.TextXAlignment = Enum.TextXAlignment.Center
Instance145.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance145.Name = "Title"
Instance145.BorderMode = Enum.BorderMode.Outline
Instance145.Selectable = false
Instance145.TextDirection = Enum.TextDirection.Auto
Instance145.Visible = true
Instance145.FontSize = Enum.FontSize.Size14
Instance145.AnchorPoint = Vector2.new(0, 0)
Instance145.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance145.TextSize = 14
Instance145.AutomaticSize = Enum.AutomaticSize.None
Instance145.Size = UDim2.new(0.800000011920929, 0, 0.14300000667572021, 0)
Instance145.TextColor3 = Color3.new(1, 1, 1)
Instance145.ClipsDescendants = false
Instance145.BorderColor3 = Color3.new(0, 0, 0)
Instance145.Text = "Title"
Instance145.SelectionOrder = 0
Instance145.BackgroundColor3 = Color3.new(1, 1, 1)
Instance145.Rotation = 0
Instance145.BackgroundTransparency = 1
Instance145.Position = UDim2.new(0, 0, 0.02500000037252903, 0)
Instance145.MaxVisibleGraphemes = -1

local Instance146 = Instance.new("Frame", Instance142) --Separator
Instance146.Visible = true
Instance146.SelectionOrder = 0
Instance146.Name = "Separator"
Instance146.Active = false
Instance146.AutomaticSize = Enum.AutomaticSize.None
Instance146.AnchorPoint = Vector2.new(0, 0)
Instance146.Style = Enum.FrameStyle.Custom
Instance146.LayoutOrder = 0
Instance146.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance146.ZIndex = 10034
Instance146.Size = UDim2.new(1, 0, 0, 1)
Instance146.Draggable = false
Instance146.Position = UDim2.new(0, 0, 0.20000000298023224, -1)
Instance146.Selectable = false
Instance146.ClipsDescendants = false
Instance146.BorderColor3 = Color3.new(0, 0, 0)
Instance146.BorderSizePixel = 0
Instance146.Rotation = 0
Instance146.BackgroundTransparency = 0
Instance146.BorderMode = Enum.BorderMode.Outline
Instance146.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance147 = Instance.new("Frame", Instance142) --Lines
Instance147.Visible = true
Instance147.SelectionOrder = 0
Instance147.Name = "Lines"
Instance147.Active = false
Instance147.AutomaticSize = Enum.AutomaticSize.None
Instance147.AnchorPoint = Vector2.new(0, 0)
Instance147.Style = Enum.FrameStyle.Custom
Instance147.LayoutOrder = 0
Instance147.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance147.ZIndex = 10034
Instance147.Size = UDim2.new(1, 0, 0.800000011920929, -5)
Instance147.Draggable = false
Instance147.Position = UDim2.new(0, 0, 0.20000000298023224, 0)
Instance147.Selectable = false
Instance147.ClipsDescendants = false
Instance147.BorderColor3 = Color3.new(0, 0, 0)
Instance147.BorderSizePixel = 0
Instance147.Rotation = 0
Instance147.BackgroundTransparency = 1
Instance147.BorderMode = Enum.BorderMode.Outline
Instance147.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)

local Instance148 = Instance.new("UIListLayout", Instance147) --UIListLayout
Instance148.FillDirection = Enum.FillDirection.Vertical
Instance148.HorizontalAlignment = Enum.HorizontalAlignment.Left
Instance148.HorizontalFlex = Enum.UIFlexAlignment.None
Instance148.VerticalFlex = Enum.UIFlexAlignment.None
Instance148.VerticalAlignment = Enum.VerticalAlignment.Top
Instance148.SortOrder = Enum.SortOrder.LayoutOrder
Instance148.Name = "UIListLayout"
Instance148.Padding = UDim.new(0, 0)
Instance148.ItemLineAlignment = Enum.ItemLineAlignment.Automatic

local Instance149 = Instance.new("TextLabel", Instance147) --1
Instance149.LayoutOrder = 0
Instance149.TextWrapped = true
Instance149.LineHeight = 1
Instance149.Active = false
Instance149.TextStrokeTransparency = 1
Instance149.TextTruncate = Enum.TextTruncate.None
Instance149.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance149.ZIndex = 10035
Instance149.BorderSizePixel = 0
Instance149.Draggable = false
Instance149.RichText = false
Instance149.TextWrap = true
Instance149.TextTransparency = 0
Instance149.TextYAlignment = Enum.TextYAlignment.Top
Instance149.TextScaled = false
Instance149.TextXAlignment = Enum.TextXAlignment.Left
Instance149.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false)
Instance149.Name = "1"
Instance149.BorderMode = Enum.BorderMode.Outline
Instance149.Selectable = false
Instance149.TextDirection = Enum.TextDirection.Auto
Instance149.Visible = true
Instance149.FontSize = Enum.FontSize.Size10
Instance149.AnchorPoint = Vector2.new(0, 0)
Instance149.TextStrokeColor3 = Color3.new(0, 0, 0)
Instance149.TextSize = 10
Instance149.AutomaticSize = Enum.AutomaticSize.None
Instance149.Size = UDim2.new(1, 0, 1, 0)
Instance149.TextColor3 = Color3.new(1, 1, 1)
Instance149.ClipsDescendants = false
Instance149.BorderColor3 = Color3.new(0, 0, 0)
Instance149.Text = "Line"
Instance149.SelectionOrder = 0
Instance149.BackgroundColor3 = Color3.new(1, 1, 1)
Instance149.Rotation = 0
Instance149.BackgroundTransparency = 1
Instance149.Position = UDim2.new(0, 0, 0, 0)
Instance149.MaxVisibleGraphemes = -1

local Instance150 = Instance.new("ImageButton", Instance142) --Yes
Instance150.LayoutOrder = 0
Instance150.Active = true
Instance150.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance150.ZIndex = 10034
Instance150.SliceCenter = Rect.new(0, 0, 0, 0)
Instance150.Draggable = false
Instance150.ScaleType = Enum.ScaleType.Fit
Instance150.Modal = false
Instance150.AutoButtonColor = true
Instance150.ResampleMode = Enum.ResamplerMode.Default
Instance150.BackgroundColor3 = Color3.new(1, 1, 1)
Instance150.BorderSizePixel = 0
Instance150.ImageTransparency = 0
Instance150.Name = "Yes"
Instance150.Selectable = true
Instance150.AnchorPoint = Vector2.new(0, 0)
Instance150.Image = "rbxassetid://12690727184"
Instance150.TileSize = UDim2.new(1, 0, 1, 0)
Instance150.ImageRectSize = Vector2.new(0, 0)
Instance150.Selected = false
Instance150.Size = UDim2.new(0.10000000149011612, 0, 0.14300000667572021, 0)
Instance150.Visible = true
Instance150.HoverImage = ""
Instance150.ImageColor3 = Color3.new(1, 1, 1)
Instance150.ClipsDescendants = false
Instance150.BorderColor3 = Color3.new(0, 0, 0)
Instance150.BorderMode = Enum.BorderMode.Outline
Instance150.PressedImage = ""
Instance150.Rotation = 0
Instance150.ImageRectOffset = Vector2.new(0, 0)
Instance150.BackgroundTransparency = 1
Instance150.Position = UDim2.new(0.800000011920929, 0, 0.02500000037252903, 0)
Instance150.SliceScale = 1
Instance150.AutomaticSize = Enum.AutomaticSize.None
Instance150.SelectionOrder = 0
Instance150.Style = Enum.ButtonStyle.Custom

local Instance151 = Instance.new("ImageButton", Instance142) --No
Instance151.LayoutOrder = 0
Instance151.Active = true
Instance151.SizeConstraint = Enum.SizeConstraint.RelativeXY
Instance151.ZIndex = 10034
Instance151.SliceCenter = Rect.new(0, 0, 0, 0)
Instance151.Draggable = false
Instance151.ScaleType = Enum.ScaleType.Fit
Instance151.Modal = false
Instance151.AutoButtonColor = true
Instance151.ResampleMode = Enum.ResamplerMode.Default
Instance151.BackgroundColor3 = Color3.new(1, 1, 1)
Instance151.BorderSizePixel = 0
Instance151.ImageTransparency = 0
Instance151.Name = "No"
Instance151.Selectable = true
Instance151.AnchorPoint = Vector2.new(0, 0)
Instance151.Image = "rbxassetid://168705076"
Instance151.TileSize = UDim2.new(1, 0, 1, 0)
Instance151.ImageRectSize = Vector2.new(0, 0)
Instance151.Selected = false
Instance151.Size = UDim2.new(0.10000000149011612, 0, 0.14300000667572021, 0)
Instance151.Visible = true
Instance151.HoverImage = ""
Instance151.ImageColor3 = Color3.new(1, 1, 1)
Instance151.ClipsDescendants = false
Instance151.BorderColor3 = Color3.new(0, 0, 0)
Instance151.BorderMode = Enum.BorderMode.Outline
Instance151.PressedImage = ""
Instance151.Rotation = 0
Instance151.ImageRectOffset = Vector2.new(0, 0)
Instance151.BackgroundTransparency = 1
Instance151.Position = UDim2.new(0.8999999761581421, 0, 0.02500000037252903, 0)
Instance151.SliceScale = 1
Instance151.AutomaticSize = Enum.AutomaticSize.None
Instance151.SelectionOrder = 0
Instance151.Style = Enum.ButtonStyle.Custom

local Instance152 = Instance.new("ModuleScript", Instance1) --ModuleScript
Instance152.Name = "ModuleScript"


----------

local require; local moduleScripts = {}

moduleScripts[Instance152] = function()
    local script = Instance152
    local function getGlobalTable()
    return typeof(getfenv().getgenv) == "function" and typeof(getfenv().getgenv()) == "table" and getfenv().getgenv() or _G
end
if getGlobalTable()._FIRELIB then
    task.spawn(function()
        task.wait()
        script.Parent:Destroy()
    end)
    return getGlobalTable()._FIRELIB
end
local writefile, readfile, makefolder, isfolder, isfile, listfiles = getfenv().writefile, getfenv().readfile, getfenv().makefolder or getfenv().createfolder, getfenv().isfolder, getfenv().isfile or getfenv().readfile and function(path)
    return pcall(readfile)
end, getfenv().listfiles
local configsEnabled = typeof(writefile) == "function" and typeof(readfile) == "function"

local versions
if not pcall(function()
        local str = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Fire-Hub/main/Core/Data/Versions.json"))
        versions = {
            ["FireLibraryVersion"] = str[2],
            ["FireHubVersion"] = str[1]
        }
    end) then
    versions = {
        ["FireLibraryVersion"] = "5.1.1",
        ["FireHubVersion"] = "4.0.2"
    }
end

script.Parent.Name = "Fire-Lib [ID:"..game.HttpService:GenerateGUID(false).."]"
getGlobalTable()._FLVersions = versions
local isMobile = game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled
local uiHolder = pcall(game.GetFullName, game.CoreGui) and game.CoreGui:FindFirstChild("DevConsoleMaster") and getfenv().gethui and getfenv().gethui() or pcall(game.GetFullName, game.CoreGui) and game.CoreGui:FindFirstChild("RobloxGui") or game:GetService("Players").LocalPlayer.PlayerGui
script.Parent.Parent = uiHolder
if pcall(game.GetFullName, game.CoreGui) then
    local devCon; devCon = game.CoreGui.ChildAdded:Connect(function(c)
        if c and c.Name == "DevConsoleMaster" then
            devCon:Disconnect()
            uiHolder = c
            script.Parent.Parent = c
        end
    end)
    pcall(function()
        script.Parent.OnTopOfCoreBlur = true
    end)
end

local function playSound(soundName)
    task.spawn(function()
        local sCopy = script.Parent.Sounds.SoundsFolder:FindFirstChild(soundName)
        if not sCopy then return end
        sCopy = sCopy:Clone()
        sCopy.Parent = script.Parent.Sounds
        sCopy.Volume = 0.5
        sCopy.Looped = false
        sCopy.TimePosition = 0
        sCopy:Play()
        task.wait(sCopy.TimeLength)
        sCopy:Destroy()
    end)
end

local function safeCall(f)
    return coroutine.wrap(function(...)
        local args = {...}
        pcall(f, unpack(args))
    end)
end

local function setupSlider(slider, holder, options)
    local val = options.Default
    local prevVal = val
    local customTextDisplay = function(val, max)
        if typeof(options.CustomTextDisplay) == "function" then
            local res = options.CustomTextDisplay(val, max)
            if typeof(res) == "string" or typeof(res) == "number" then
                return tostring(res)
            end
        end
        return val .. " / " .. max
    end
    holder = holder or slider.Parent:IsA("Button") and slider.Parent or slider:FindFirstChildOfClass("TextButton") or slider
    local sliderDrag = holder
    local sliderBar = slider.SliderOuter.Bar.Fill
    local dragging = false

    sliderDrag.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
            dragging = true 
        end 
    end)
    sliderDrag.InputEnded:Connect(function(input) 
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
            dragging = false 
        end 
    end)

    local function round(Number, Factor)
        local Result = math.floor(Number/Factor + (math.sign(Number) * 0.5)) * Factor
        if Result < 0 then Result = Result + Factor end
        return Result
    end

    local newVal
    local function set(num)
        newVal = math.round((math.clamp(round(num, options.Step), options.Min, options.Max))*1000)/1000
        if newVal then
            sliderBar:TweenSize(UDim2.fromScale((newVal - options.Min) / (options.Max - options.Min), 1), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.15, true)
            val = newVal
            sliderBar.Parent.Progress.Text = customTextDisplay(val, options.Max)
            if newVal ~= prevVal then
                safeCall(playSound)("MouseHover")
                safeCall(options.Callback)(newVal)
                prevVal = newVal
                newVal = nil
            end
        end
    end

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or Enum.UserInputType.Touch) then 
            local sizeScale = math.clamp((input.Position.X - sliderBar.Parent.AbsolutePosition.X) / sliderBar.Parent.AbsoluteSize.X, 0, 1)
            set(options.Min + ((options.Max - options.Min) * sizeScale)) 
        end
    end)

    set(val)

    return set
end

local delta, dragInput
local function update(input, gui, dragStart, startPos)
    delta = input.Position - dragStart
    gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), nil, nil, 0.3, true)
    delta = nil    
end

local function makeDraggable(gui)
    local dragging, dragStart, startPos, delta

    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input, gui, dragStart, startPos)
        end
    end)
end

local function getOptions(options) -- cuz i was lazy to always insert the same line of code
    -- also idk how properly call that function
    return typeof(options) == "table" and options or {}
end
local function getCallback(options)
    return typeof(options.Function) == "function" and options.Function or typeof(options.Callback) == "function" and options.Callback or function() end
end
local function getText(options)
    return typeof(options.Title) == "string" and options.Title or typeof(options.Caption) == "string" and options.Caption or typeof(options.Name) == "string" and options.Name or typeof(options.Text) == "string" and options.Text or typeof(options.Description) == "string" and options.Description or typeof(options.Content) == "string" and options.Content
end

local lib; lib = {
    Notifications = {
        _AnimateNotification = {
            In = function(notification)
                if not notification or not notification.Parent then return end
                playSound("Notification")
                local size = notification.Size
                notification.Size = UDim2.fromScale()
                notification.Visible = true
                notification:TweenSize(size, nil, nil, 0.3, true)
                notification.NotificationOrange.Position = UDim2.new(-1, -1, 0, 0)
                notification.NotificationOrange.NotificationMain.Position = UDim2.new(-1, 0, 0, 2)
                task.wait(0.32)
                if not notification or not notification.Parent then return end
                notification.NotificationOrange:TweenPosition(UDim2.fromScale(0,0), nil, nil, 0.3, true)
                notification.NotificationOrange.NotificationMain:TweenPosition(UDim2.fromOffset(0, 2), nil, nil, 0.45, true)
            end,
            Out = function(notification)
                if not notification or not notification.Parent then return end
                notification.NotificationOrange.NotificationMain:TweenPosition(UDim2.new(-1, 0, 0, 2), nil, nil, 0.45, true)
                notification.NotificationOrange:TweenPosition(UDim2.new(-1, -1, 0, 0), nil, nil, 0.3, true)
                task.wait(0.32)
                if not notification or not notification.Parent then return end
                notification:TweenSize(UDim2.fromScale(0, 0), nil, nil, 0.3, true)
                task.wait(0.31)
                if not notification or not notification.Parent then return end
                notification:Destroy()
            end
        },
        Notification = function(self, options)
            task.spawn(function()
                local notification = script.Parent.Notification.NotificationHolder:Clone()
                notification.Parent = script.Parent.Notification
                notification.Name = ""
                notification.NotificationOrange.NotificationMain.Bar.Fill.Size = UDim2.fromScale(1,1)
                notification.NotificationOrange.NotificationMain.Bar.Fill.Position = UDim2.fromScale(0,0)
                notification.NotificationOrange.NotificationMain.Title.Text = typeof(options.Title) == "string" and options.Title or typeof(options.Name) == "string" and options.Name or "Notification"
                local text = typeof(options.Text) == "string" and options.Text or typeof(options.Description) == "string" and options.Description or typeof(options.Content) == "string" and options.Content or ""
                notification.NotificationOrange.NotificationMain.Lines["1"].Text = text
                safeCall(self._AnimateNotification.In)(notification)
                local time = tonumber(options.Time) or tonumber(options.Delay) or tonumber(options.Length) or 5
                notification.NotificationOrange.NotificationMain.Bar.Fill:TweenSizeAndPosition(UDim2.fromScale(0, 1), UDim2.fromScale(1, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, time, true)
                task.wait(time)
                safeCall(self._AnimateNotification.Out)(notification)
            end)
        end,
        ChooseNotification = function(self, options)
            task.spawn(function()
                local notification = script.Parent.Notification.ChooseNotificationHolder:Clone()
                notification.Parent = script.Parent.Notification
                notification.Name = ""
                notification.NotificationOrange.NotificationMain.Bar.Fill.Size = UDim2.fromScale(1,1)
                notification.NotificationOrange.NotificationMain.Bar.Fill.Position = UDim2.fromScale(0,0)
                notification.NotificationOrange.NotificationMain.Title.Text = typeof(options.Title) == "string" and options.Title or typeof(options.Name) == "string" and options.Name or "Notification"
                local text = typeof(options.Text) == "string" and options.Text or typeof(options.Description) == "string" and options.Description or typeof(options.Content) == "string" and options.Content or ""
                notification.NotificationOrange.NotificationMain.Lines["1"].Text = text
                local done = false
                notification.NotificationOrange.NotificationMain.Yes.MouseButton1Click:Connect(function()
                    if done then return end
                    safeCall(self._AnimateNotification.Out)(notification)
                    done = true
                    getCallback(options)(true)
                end)
                notification.NotificationOrange.NotificationMain.No.MouseButton1Click:Connect(function()
                    if done then return end
                    safeCall(self._AnimateNotification.Out)(notification)
                    done = true
                    getCallback(options)(false)
                end)
                safeCall(self._AnimateNotification.In)(notification)
                local time = tonumber(options.Time) or tonumber(options.Delay) or tonumber(options.Length) or 5
                notification.NotificationOrange.NotificationMain.Bar.Fill:TweenSizeAndPosition(UDim2.fromScale(0, 1), UDim2.fromScale(1, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, time, true)
                task.wait(time)
                safeCall(self._AnimateNotification.Out)(notification)
            end)
        end
    },
    Versions = versions,
    MakeWindow = function(self, options)
        local configStructure = {}

        getGlobalTable().Struct = configStructure

        local configEvent = Instance.new("BindableEvent")
        local counter = {}
        local function count(name, layer)
            counter[layer] = counter[layer] or {}
            counter[layer][name] = (tonumber(counter[layer][name]) or 0) + 1
            return name..counter[layer][name]
        end
        options = getOptions(options)
        for i=1, 5 do
            game["Run Service"].RenderStepped:Wait()
        end
        local session = {}
        local cons = {}
        local window = script.Parent.Holder.Window:Clone()
        window.Parent = script.Parent.Holder
        local fadeTime = 1
        local size = window.Size
        window.Name = ""
        window.HolderFrame.Title.Text = getText(options) or "Fire Library | "..versions.FireLibraryVersion
        window.Visible = true
        window.Position = UDim2.fromScale(0.5, 0.5)
        window.HolderFrame.StarterFade.Visible = true
        window.Size = UDim2.fromScale(0,0)
        local maximize = script.Parent.Holder.MobileMaximize:Clone()
        maximize.Parent = script.Parent.Holder
        maximize.Name = ""
        maximize.Visible = false
        makeDraggable(maximize.DragButton)
        makeDraggable(window)

        local function getColorOffset(a,b)
            return Color3.new(math.clamp(a.R - b.R, 0, 1),math.clamp(a.G - b.G, 0, 1),math.clamp(a.B - b.B, 0, 1))
        end
        local function setColorOffset(a,b)
            return Color3.new(math.clamp(a.R + b.R, 0, 1),math.clamp(a.G + b.G, 0, 1),math.clamp(a.B + b.B, 0, 1))
        end

        local colors = {
            ["Main"] = {
                Color = window.BackgroundColor3,
                Instances = {
                    {Class = "Main", Instance = script.Parent.Notification.ChooseNotificationHolder.NotificationOrange, Default = window.BackgroundColor3, Offset = Color3.new()},
                    {Class = "Main", Instance = script.Parent.Notification.ChooseNotificationHolder.NotificationOrange.NotificationMain.Bar, Default = window.BackgroundColor3, Offset = getColorOffset(script.Parent.Notification.ChooseNotificationHolder.NotificationOrange.NotificationMain.Bar.BackgroundColor3, window.BackgroundColor3)},
                    {Class = "Main", Instance = script.Parent.Notification.ChooseNotificationHolder.NotificationOrange.NotificationMain.Bar.Fill, Default = window.BackgroundColor3, Offset = Color3.new()},

                    {Class = "Main", Instance = script.Parent.Notification.NotificationHolder.NotificationOrange, Default = window.BackgroundColor3, Offset = Color3.new()},
                    {Class = "Main", Instance = script.Parent.Notification.NotificationHolder.NotificationOrange.NotificationMain.Bar, Default = window.BackgroundColor3, Offset = getColorOffset(script.Parent.Notification.ChooseNotificationHolder.NotificationOrange.NotificationMain.Bar.BackgroundColor3, window.BackgroundColor3)},
                    {Class = "Main", Instance = script.Parent.Notification.NotificationHolder.NotificationOrange.NotificationMain.Bar.Fill, Default = window.BackgroundColor3, Offset = Color3.new()},

                    {Class = "Main", Instance = window, Default = window.BackgroundColor3, Offset = Color3.new()}
                }
            },
            ["Back"] = {
                Color = window.HolderFrame.BackgroundColor3,
                Instances = {
                    {Class = "Back", Instance = script.Parent.Notification.ChooseNotificationHolder.NotificationOrange.NotificationMain, Default = window.BackgroundColor3, Offset = Color3.new()},
                    {Class = "Back", Instance = script.Parent.Notification.ChooseNotificationHolder.NotificationOrange.NotificationMain.Lines, Default = window.BackgroundColor3, Offset = getColorOffset(script.Parent.Notification.ChooseNotificationHolder.NotificationOrange.NotificationMain.Lines.BackgroundColor3, window.BackgroundColor3)},
                    {Class = "Back", Instance = script.Parent.Notification.ChooseNotificationHolder.NotificationOrange.NotificationMain.Separator, Default = window.BackgroundColor3, Offset = getColorOffset(script.Parent.Notification.ChooseNotificationHolder.NotificationOrange.NotificationMain.Separator.BackgroundColor3, window.BackgroundColor3)},

                    {Class = "Back", Instance = script.Parent.Notification.NotificationHolder.NotificationOrange.NotificationMain, Default = window.BackgroundColor3, Offset = Color3.new()},
                    {Class = "Back", Instance = script.Parent.Notification.NotificationHolder.NotificationOrange.NotificationMain.Lines, Default = window.BackgroundColor3, Offset = getColorOffset(script.Parent.Notification.ChooseNotificationHolder.NotificationOrange.NotificationMain.Lines.BackgroundColor3, window.BackgroundColor3)},
                    {Class = "Back", Instance = script.Parent.Notification.NotificationHolder.NotificationOrange.NotificationMain.Separator, Default = window.BackgroundColor3, Offset = getColorOffset(script.Parent.Notification.ChooseNotificationHolder.NotificationOrange.NotificationMain.Separator.BackgroundColor3, window.BackgroundColor3)}
                }
            },
            ["Text"] = {
                Color = window.HolderFrame.PageDisplay.Page.Label.Text.TextColor3,
                Instances = {
                    {Class = "Text", Instance = script.Parent.Notification.ChooseNotificationHolder.NotificationOrange.NotificationMain.Title, Default = window.HolderFrame.PageDisplay.Page.Label.Text.TextColor3, Offset = Color3.new()},
                    {Class = "Text", Instance = script.Parent.Notification.NotificationHolder.NotificationOrange.NotificationMain.Title, Default = window.HolderFrame.PageDisplay.Page.Label.Text.TextColor3, Offset = Color3.new()},

                    {Class = "Text", Instance = script.Parent.Notification.NotificationHolder.NotificationOrange.NotificationMain:WaitForChild("No", 0.1), Default = window.HolderFrame.PageDisplay.Page.Label.Text.TextColor3, Offset = Color3.new()},
                    {Class = "Text", Instance = script.Parent.Notification.NotificationHolder.NotificationOrange.NotificationMain:WaitForChild("Yes", 0.1), Default = window.HolderFrame.PageDisplay.Page.Label.Text.TextColor3, Offset = Color3.new()},

                    {Class = "Text", Instance = script.Parent.Notification.ChooseNotificationHolder.NotificationOrange.NotificationMain:WaitForChild("No", 0.1), Default = window.HolderFrame.PageDisplay.Page.Label.Text.TextColor3, Offset = Color3.new()},
                    {Class = "Text", Instance = script.Parent.Notification.ChooseNotificationHolder.NotificationOrange.NotificationMain:WaitForChild("Yes", 0.1), Default = window.HolderFrame.PageDisplay.Page.Label.Text.TextColor3, Offset = Color3.new()},
                } 
            }
        }

        local function compareProperties(v,class,prop)
            if not v:IsA(class) then return end
            for idx,val in colors do
                if v[prop] == val.Color then
                    table.insert(val.Instances, {Class = idx, Offset = Color3.new(), Default = v[prop], Instance = v})
                end
            end
        end

        local function updateThemeTable(v)
            if v and v:IsA("GuiObject") then
                compareProperties(v, "Frame", "BackgroundColor3")
                compareProperties(v, "TextButton", "BackgroundColor3")

                compareProperties(v, "ImageLabel", "ImageColor3")
                compareProperties(v, "ImageButton", "ImageColor3")
                
                compareProperties(v, "ScrollingFrame", "ScrollBarImageColor3")

                compareProperties(v, "TextLabel", "TextColor3")
                compareProperties(v, "TextButton", "TextColor3")

                if v.Name == "Separator" and v:IsA("Frame") then
                    table.insert(colors.Back.Instances, {Class = "Back", Offset = getColorOffset(v.BackgroundColor3, colors.Back.Color), Default = v.BackgroundColor3, Instance = v})
                end
            end
        end

        for i,v in window:GetDescendants() do
            updateThemeTable(v)
        end
        window.DescendantAdded:Connect(function(v)
            updateThemeTable(v)
        end)
        for i,v in maximize:GetDescendants() do
            updateThemeTable(v)
        end
        updateThemeTable(maximize)

        local cd = false
        local windowFuncs; windowFuncs = {
            ThemeColors = setmetatable({}, {
                __newindex = function(self, name, newVal)
                    if colors[name] and typeof(newVal) == "Color3" then
                        colors[name].Color = newVal
                        for i,v in colors[name].Instances do
                            if v.Instance then
                                if v.Instance:IsA("Frame") then
                                    v.Instance.BackgroundColor3 = setColorOffset(colors[v.Class].Color, v.Offset)
                                elseif v.Instance:IsA("ImageLabel") or v.Instance:IsA("ImageButton") then
                                    v.Instance.ImageColor3 = setColorOffset(colors.Text.Color, v.Offset)
                                    v.Instance.BackgroundColor3 = setColorOffset(colors[v.Class].Color, v.Offset)
                                elseif v.Instance:IsA("TextLabel") or v.Instance:IsA("TextButton") then
                                    v.Instance.TextColor3 = setColorOffset(colors.Text.Color, v.Offset)
                                    v.Instance.BackgroundColor3 = setColorOffset(colors[v.Class].Color, v.Offset)
                                end
                            end
                        end
                    end
                end,
                __index = function(self, name)
                    if colors[name] then
                        return colors[name].Color
                    end
                end,    
            }),
            Opened = true,
            Close = function(self)
                task.spawn(function()
                    while cd and task.wait() do end
                    self.Opened = false
                    self:Hide()
                    task.wait(fadeTime + 0.01)
                    window:Destroy()
                end)
            end,
            Show = function(self)
                if cd then return false end
                task.spawn(function()
                    -- for some reason window:TweenSize does not work :|
                    cd = true
                    maximize.Visible = false
                    window.Visible = true
                    game.TweenService:Create(window, TweenInfo.new(fadeTime / 2.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = size}):Play()
                    game.TweenService:Create(window.HolderFrame.StarterFade, TweenInfo.new(fadeTime, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
                    task.wait(fadeTime + 0.01)
                    cd = false
                    window.HolderFrame.StarterFade.ZIndex -= 1000
                    window.HolderFrame.StarterFade.Visible = false
                end)
                return true
            end,
            Toggle = function(self, state)
                if state == nil then
                    state = window.Visible
                else
                    state = not state
                end
                if state then
                    return self:Hide()
                else
                    return self:Show()
                end
            end,
            Hide = function(self)
                if cd then return false end
                task.spawn(function()
                    cd = true
                    maximize.Visible = isMobile
                    window.HolderFrame.StarterFade.Visible = true
                    window.HolderFrame.StarterFade.ZIndex += 1000
                    game.TweenService:Create(window, TweenInfo.new(fadeTime, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {Size = UDim2.fromScale(0,0)}):Play()
                    game.TweenService:Create(window.HolderFrame.StarterFade, TweenInfo.new(fadeTime / 2.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
                    task.wait(fadeTime + 0.01)
                    cd = false
                    window.Visible = false
                end)
                return true
            end,
            AddPage = function(self, options)
                options = getOptions(options)
                local text = getText(options) or "Page"
                local counterTextPage = count(text, 1)
                local order = math.clamp(tonumber(options.Order) or 1, 0, 999)
                configStructure[counterTextPage] = {}
                local struct = configStructure[counterTextPage]
                local pageButton = window.HolderFrame.PageButtons.PageButton:Clone()
                pageButton.Parent = window.HolderFrame.PageButtons
                pageButton.Visible = true
                pageButton.Name = ""
                pageButton.LayoutOrder = -order

                pageButton:FindFirstChild("Text").Text = text
                cons[#cons+1] = pageButton.Trigger.MouseEnter:Connect(function()
                    playSound("MouseHover")
                end)
                pageButton.Size = UDim2.fromScale((#pageButton:FindFirstChild("Text").Text / 65) + 0.05, 1)
                local page = window.HolderFrame.PageDisplay.Page:Clone()
                page.Parent = window.HolderFrame.PageDisplay
                page.Name = ""
                cons[#cons+1] = pageButton.Trigger.MouseButton1Click:Connect(function()
                    playSound("Click")
                    if pageButton.Selection.Visible then
                        page.Visible = false
                        pageButton.Selection.Visible = false
                    else
                        for i,v in page.Parent:GetChildren() do
                            if v and v:IsA(page.ClassName) then
                                v.Visible = false
                            end
                        end
                        page.Visible = true
                        for i,v in pageButton.Parent:GetChildren() do
                            if v and v:IsA(pageButton.ClassName) then
                                v.Selection.Visible = false
                            end
                        end
                        pageButton.Selection.Visible = true
                    end
                end)

                task.spawn(function()
                    while window and window.Parent and task.wait() do
                        page.Frame.Visible = not page.Frame.Visible
                    end
                end)

                windowFuncs.Tabs[counterTextPage] = {}

                local pageFuncs = {
                    AddSlider = function(self, options)
                        options = getOptions(options)
                        options.Min = tonumber(options.Min or options.Minimum) or 0
                        options.Max = tonumber(options.Max or options.Maximum) or 100
                        options.Callback = getCallback(options)
                        local text = getText(options) or "Slider"
                        local counterText = count(text, 2)
                        if options.Min > options.Max then
                            local max, min = options.Max, options.Min
                            options.Min = max
                            options.Max = min
                        elseif options.Min == options.Max then
                            local cb = options.Callback
                            options.Callback = function()
                                cb(options.Min)
                            end
                            return self:AddButton(options)
                        end
                        local funcs = {Options = options}
                        options.Step = tonumber(options.Step) or tonumber(options.Per) or (options.Max - options.Min) / 25
                        options.Default = tonumber(options.Default) or tonumber(options.Base) or options.Min
                        local cb = options.Callback

                        --

                        local slider = page.Slider:Clone()
                        slider.Parent = page
                        slider.Name = ""
                        slider.Visible = true
                        slider:FindFirstChild("Text").Text = text
                        funcs.Object = slider

                        local set = setupSlider(slider, nil, options)
                        set(options.Default)
                        options.Callback = function(newVal)
                            if funcs.Value == newVal then return end
                            funcs.Value = newVal
                            set(newVal)
                            struct[counterText] = newVal
                            return cb(newVal)
                        end
                        options.Set = set

                        --

                        windowFuncs.Tabs[counterTextPage][counterText] = funcs
                        function funcs:Set(value)
                            if not self or not self.Object then return end
                            self.Options.Set(tonumber(value) or self.Value)
                        end
                        function funcs:SetCustomTextDisplay(func)
                            if not self or not self.Object then return end
                            self.Options.CustomTextDisplay = func
                        end
                        function funcs:SetStep(val)
                            if not self or not self.Object then return end
                            self.Options.Step = tonumber(val) or self.Options.Step
                        end
                        function funcs:SetMinimum(val)
                            if not self or not self.Object then return end
                            self.Options.Min = tonumber(val) or self.Options.Min
                        end
                        function funcs:SetMaximum(val)
                            if not self or not self.Object then return end
                            self.Options.Max = tonumber(val) or self.Options.Max
                        end
                        function funcs:SetCallback(cb)
                            if not self or not self.Object then return end
                            self.Options.Callback = function(newVal)
                                funcs.Value = newVal
                                struct[counterText] = newVal
                                return cb(newVal)
                            end
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end
                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        funcs.SetMax = funcs.SetMaximum
                        funcs.SetMin = funcs.SetMinimum

                        configEvent.Event:Connect(function(config)
                            if options.IgnoreConfig or options.IgnoreConfigs then return end
                            local val = config[counterTextPage]
                            if val then
                                val = val[counterText]
                            end
                            if not val then return end
                            funcs:Set(val)
                        end)

                        return funcs
                    end,
                    AddSeparator = function(self)
                        local sep = page.Separator:Clone()
                        sep.Parent = page
                        sep.Visible = true
                        sep.Name = ""

                        local funcs = {}
                        funcs.Object = sep

                        windowFuncs.Tabs[counterTextPage][count(getText({Text = "Separator"}), 2)] = funcs
                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end

                        return sep
                    end,
                    AddButton = function(self, options)
                        options = getOptions(options)

                        local button = page.Button:Clone()
                        button.Parent = page
                        button.Visible = true
                        button.Name = ""
                        button:FindFirstChild("Text").Text = getText(options) or "Button"
                        cons[#cons+1] = button.Trigger.MouseEnter:Connect(function()
                            playSound("MouseHover")
                        end)
                        cons[#cons+1] = button.Trigger.MouseButton1Click:Connect(function()
                            playSound("Click")
                            getCallback(options)()
                        end)
                        local funcs = {}
                        funcs.Object = button

                        windowFuncs.Tabs[counterTextPage][count(getText(options) or "Object", 2)] = funcs
                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        function funcs:SetCallback(cb)
                            if not self or not self.Object then return end
                            self.Options.Callback = function()
                                return cb()
                            end
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end

                        return funcs
                    end,
                    AddToggle = function(self, options)
                        options = getOptions(options)

                        local state = typeof(options.Default) == "boolean" and options.Default or typeof(options.Base) == "boolean" and options.Base or false
                        local toggle = page.Toggle:Clone()
                        toggle.Parent = page
                        toggle.Visible = true
                        toggle.Name = ""
                        local text = getText(options) or "Toggle"
                        local counterText = count(text, 2)
                        toggle:FindFirstChild("Text").Text = text
                        cons[#cons+1] = toggle.Trigger.MouseEnter:Connect(function()
                            playSound("MouseHover")
                        end)
                        local funcs = {Options = options}
                        local cb = function(bool)
                            funcs.Value = bool
                            state = bool
                            toggle.ToggleOuter.Frame.ImageLabel.Visible = bool
                            struct[counterText] = bool
                            getCallback(options)(bool)
                        end
                        safeCall(cb)(state)
                        options.CB = cb
                        toggle.ToggleOuter.Frame.ImageLabel.Visible = state
                        cons[#cons+1] = toggle.Trigger.MouseButton1Click:Connect(function()
                            playSound("Click")
                            state = not state
                            cb(state)
                        end)

                        funcs.Object = toggle

                        windowFuncs.Tabs[counterTextPage][counterText] = funcs
                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Set(val)
                            if not self or not self.Object then return end
                            self.Object.ToggleOuter.Frame.ImageLabel.Visible = val
                            self.Options.CB(not not val)
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        function funcs:SetCallback(cb)
                            if not self or not self.Object then return end
                            self.Options.Callback = function(newVal)
                                funcs.Value = newVal
                                struct[counterText] = newVal
                                return cb(newVal)
                            end
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end

                        configEvent.Event:Connect(function(config)
                            if options.IgnoreConfig or options.IgnoreConfigs then return end
                            local val = config[counterTextPage]
                            if val then
                                val = val[counterText]
                            end
                            if not val then return end
                            funcs:Set(val)
                        end)

                        return funcs
                    end,
                    AddLabel = function(self, options)
                        options = getOptions(options)

                        local label = page.Label:Clone()
                        label.Parent = page
                        label.Visible = true
                        label.Name = ""
                        label:FindFirstChild("Text").Text = getText(options) or "Label"

                        local funcs = {}
                        funcs.Object = label

                        windowFuncs.Tabs[counterTextPage][count(getText(options) or "Object", 2)] = funcs
                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end

                        return funcs
                    end,
                    AddTextBox = function(self, options)
                        options = getOptions(options)

                        local tb = page.TextBox:Clone()
                        tb.Parent = page
                        tb.Visible = true
                        tb.Name = ""
                        local text = getText(options) or "Text Box"
                        local counterText = count(text, 2)
                        tb:FindFirstChild("Text").Text = text
                        tb.TextBoxOuter.TextBox.PlaceholderText = typeof(options.Placeholder) == "string" and options.Placeholder or typeof(options.PlaceholderText) == "string" and options.PlaceholderText or ""
                        tb.TextBoxOuter.TextBox.Text = typeof(options.Default) == "string" and options.Default or typeof(options.Base) == "string" and options.Base or ""
                        cons[#cons+1] = tb.Trigger.MouseButton1Click:Connect(function()
                            playSound("MouseHover")
                            tb.TextBoxOuter.TextBox:CaptureFocus()
                        end)
                        local funcs = {}
                        local function cb(txt)
                            funcs.Value = txt
                            tb.TextBoxOuter.TextBox.Text = txt
                            struct[counterText] = txt
                            getCallback(options)(txt)
                        end
                        safeCall(cb)(tb.TextBoxOuter.TextBox.Text)
                        options.CB = cb
                        cons[#cons+1] = tb.TextBoxOuter.TextBox.FocusLost:Connect(function(enter)
                            if (options.Enter or options.NeedEnter or options.NeedsEnter) and enter or not (options.Enter or options.NeedEnter or options.NeedsEnter) then
                                playSound("Click")
                                cb(tb.TextBoxOuter.TextBox.Text)
                            end
                        end)

                        funcs.Object = tb
                        funcs.Options = options

                        windowFuncs.Tabs[counterTextPage][counterText] = funcs
                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Set(txt)
                            if not self or not self.Object then return end
                            self.Object.TextBoxOuter.TextBox.Text = tostring(txt)
                            getCallback(self.Options)(tostring(txt))
                        end
                        function funcs:SetPlaceholder(txt)
                            if not self or not self.Object then return end
                            self.Object.TextBoxOuter.TextBox.PlaceholderText = tostring(txt)
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        function funcs:SetCallback(cb)
                            if not self or not self.Object then return end
                            self.Options.Callback = function(newVal)
                                funcs.Value = newVal
                                struct[counterText] = newVal
                                return cb(newVal)
                            end
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end
                        funcs.SetPlaceholderText = funcs.SetPlaceholder

                        configEvent.Event:Connect(function(config)
                            if options.IgnoreConfig or options.IgnoreConfigs then return end
                            local val = config[counterTextPage]
                            if val then
                                val = val[counterText]
                            end
                            if not val then return end
                            funcs:Set(val)
                        end)

                        return funcs
                    end,
                    AddInput = function(self, options)
                        options = getOptions(options)
                        options.Default = typeof(options.Default) == "string" and options.Default or typeof(options.Base) == "string" and options.Base or "LeftAlt"

                        local blockedCodes = {
                            Enum.KeyCode.Unknown,
                            Enum.KeyCode.Power,
                            Enum.KeyCode.Left,
                            Enum.KeyCode.Right,
                            Enum.KeyCode.Up,
                            Enum.KeyCode.Down,
                            Enum.KeyCode.F11,
                            Enum.KeyCode.F9,
                            Enum.KeyCode.CapsLock,
                            Enum.KeyCode.ScrollLock,
                            Enum.KeyCode.NumLock
                        }
                        local funcs = {}
                        local text = getText(options) or "Input"
                        local counterText = count(text, 2)
                        local input = page.Input:Clone()
                        local function cb(inpt)
                            if tonumber(inpt) then
                                inpt = Enum.KeyCode:FromValue(inpt)
                            else
                                pcall(function()
                                    inpt = Enum.KeyCode[inpt]
                                end)
                            end
                            funcs.Value = inpt
                            input.InputOuter.Frame.Input.Text = inpt.Name
                            struct[counterText] = inpt.Value
                            getCallback(options)(inpt)
                        end
                        options.CB = cb
                        local focused = false
                        local con
                        input.Parent = page
                        input.Visible = not isMobile
                        input.Name = ""
                        input:FindFirstChild("Text").Text = text
                        local inpt = Enum.KeyCode:FromName(options.Default) or Enum.KeyCode:FromValue(options.Default)
                        safeCall(cb)(inpt)
                        input.InputOuter.Frame.Input.Text = inpt.Name
                        cons[#cons+1] = input.Trigger.MouseButton1Click:Connect(function()
                            playSound("Click")
                            focused = not focused
                            input.InputOuter.Frame.Input.Text = "..."
                            if focused then
                                con = game:GetService("UserInputService").InputBegan:Connect(function(s, chat)
                                    if chat or table.find(blockedCodes, s.KeyCode) then return end
                                    focused = false
                                    con:Disconnect()
                                    con = nil
                                    inpt = s.KeyCode
                                    cb(inpt)
                                end)
                            else
                                input.InputOuter.Frame.Input.Text = inpt.Name
                                if con then
                                    con:Disconnect()
                                    con = nil
                                end
                            end
                        end)
                        cons[#cons+1] = input.Trigger.MouseEnter:Connect(function()
                            playSound("MouseHover")
                        end)

                        funcs.Object = input

                        windowFuncs.Tabs[counterTextPage][counterText] = funcs
                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Set(input)
                            if not self or not self.Object or (typeof(input) ~= "EnumItem" or input.EnumType ~= Enum.KeyCode or not tonumber(input)) then return end
                            if tonumber(input) then
                                input = Enum.KeyCode:FromValue(input)
                            end
                            if not input then return end
                            self.Object.InputOuter.Frame.Input.Text = input.Name
                            self.Options.CB(input)
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        function funcs:SetCallback(cb)
                            if not self or not self.Object then return end
                            self.Options.Callback = function(newVal)
                                funcs.Value = newVal
                                struct[counterText] = newVal
                                return cb(newVal)
                            end
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end

                        configEvent.Event:Connect(function(config)
                            if options.IgnoreConfig or options.IgnoreConfigs then return end
                            local val = config[counterTextPage]
                            if val then
                                val = val[counterText]
                            end
                            if not val then return end
                            funcs:Set(val)
                        end)

                        return funcs
                    end,
                    AddDropdown = function(self, options)
                        options = getOptions()
                        options.Default = typeof(options.Default) == "string" and options.Default or typeof(options.Base) == "string" and options.Base or "None"
                        local dd = page.Dropdown:Clone()
                        dd.Parent = page
                        dd.Visible = true
                        dd.Name = ""
                        local text = getText(options) or "Dropdown"
                        local counterText = count(text, 2)
                        dd:FindFirstChild("Text").Text = text
                        local selected = options.Default
                        dd.DropdownOuter.Default.Text = selected
                        local open = false
                        local function toggle(state)
                            state = state == nil and not open or not not state
                            open = state
                            dd.Size = state and UDim2.fromScale(1, 0.4) or UDim2.fromScale(1, 0.1)
                            dd.DropdownOuter.Default.Visible = not state
                            dd.DropdownOuter.ContentHolder.Values.Visible = state
                            dd:FindFirstChild("Text").Size = state and UDim2.fromScale(0.9, 0.1) or UDim2.fromScale(0.9, 0.4)
                            dd:FindFirstChild("Text").Position = state and UDim2.fromScale(0.5, 0.013) or UDim2.fromScale(0.5, 0.05)
                            dd.DropdownOuter.Size = state and UDim2.new(0.9, -2, 0.8, 0) or UDim2.new(0.9, -2, 0.4, 0)
                            dd.DropdownOuter.Position = state and UDim2.new(0.05, 1, 0.125, 0) or UDim2.new(0.05, 1, 0.5)
                        end
                        local function cb(newVal)
                            selected = newVal
                            dd.DropdownOuter.Default.Text = newVal
                            struct[counterText] = newVal
                            for i,v in dd.DropdownOuter.ContentHolder.Values:GetChildren() do
                                if v.Text == newVal then
                                    v.TextColor = Color3.fromRGB(255, 125, 0)
                                else
                                    v.TextColor = Color3.new(1,1,1)
                                end
                            end
                            getCallback(options)(newVal)
                        end
                        toggle(false)
                        dd.Trigger.MouseButton1Click:Connect(toggle)
                        for i,v in typeof(options.Selections) == "table" and options.Selections or typeof(options.Rows) == "table" and options.Rows or {} do
                            if typeof(v) == "string" then
                                local row = dd.DropdownOuter.ContentHolder.Values.ListButton:Clone()
                                row.Parent = dd.DropdownOuter.ContentHolder.Values
                                row.Name = ""
                                row.Text = v
                                row.Visible = true
                                if v == selected then
                                    row.TextColor3 = Color3.fromRGB(255, 125, 0)
                                end
                                row.MouseButton1Click:Connect(function()
                                    toggle(false)
                                    safeCall(cb)(v)
                                    for i,v in row.Parent:GetChildren() do
                                        v.TextColor3 = Color3.new(1,1,1)
                                    end
                                    row.TextColor3 = Color3.fromRGB(255, 125, 0)
                                end)
                            end
                        end

                        local funcs = {}
                        funcs.Object = dd
                        funcs.TGL = toggle
                        funcs.CB = cb

                        windowFuncs.Tabs[counterTextPage][counterText] = funcs
                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end
                        function funcs:Set(txt)
                            if not self or not self.Object then return end
                            self.CB(txt)
                        end
                        function funcs:Toggle(state)
                            if not self or not self.Object then return end
                            self.TGL(state)
                        end

                        configEvent.Event:Connect(function(config)
                            if options.IgnoreConfig or options.IgnoreConfigs then return end
                            local val = config[counterTextPage]
                            if val then
                                val = val[counterText]
                            end
                            if not val then return end
                            funcs:Set(val)
                        end)

                        return funcs
                    end,
                    AddToggleDropdown = function(self, options)
                        options = getOptions()
                        options.Default = typeof(options.Default) == "table" and options.Default or typeof(options.Base) == "table" and options.Base or {}
                        local dd = page.Dropdown:Clone()
                        dd.Parent = page
                        dd.Visible = true
                        dd.Name = ""
                        local text = getText(options) or "Toggle Dropdown"
                        local counterText = count(text, 2)
                        dd:FindFirstChild("Text").Text = text
                        local selected = options.Default
                        local function getSelectedText()
                            local bools = {}
                            for i,v in selected do
                                table.insert(bools, i)
                            end
                            return table.concat(bools, ", ")
                        end
                        dd.DropdownOuter.Default.Text = getSelectedText()
                        local open = false
                        local function toggle(state)
                            state = state == nil and not open or not not state
                            open = state
                            dd.Size = state and UDim2.fromScale(1, 0.4) or UDim2.fromScale(1, 0.1)
                            dd.DropdownOuter.Default.Visible = not state
                            dd.DropdownOuter.ContentHolder.Values.Visible = state
                            dd:FindFirstChild("Text").Size = state and UDim2.fromScale(0.9, 0.1) or UDim2.fromScale(0.9, 0.4)
                            dd:FindFirstChild("Text").Position = state and UDim2.fromScale(0.5, 0.013) or UDim2.fromScale(0.5, 0.05)
                            dd.DropdownOuter.Size = state and UDim2.new(0.9, -2, 0.8, 0) or UDim2.new(0.9, -2, 0.4, 0)
                            dd.DropdownOuter.Position = state and UDim2.new(0.05, 1, 0.125, 0) or UDim2.new(0.05, 1, 0.5)
                        end
                        local function cb(newVal)
                            selected = newVal
                            dd.DropdownOuter.Default.Text = getSelectedText()
                            struct[counterText] = newVal
                            for i,v in dd.DropdownOuter.ContentHolder.Values:GetChildren() do
                                if v.Text == newVal then
                                    v.TextColor = Color3.fromRGB(255, 125, 0)
                                else
                                    v.TextColor = Color3.new(1,1,1)
                                end
                            end
                            getCallback(options)(newVal)
                        end
                        toggle(false)
                        dd.Trigger.MouseButton1Click:Connect(toggle)
                        for i,v in selected do
                            if typeof(i) == "string" and typeof(v) == "boolean" then
                                local row = dd.DropdownOuter.ContentHolder.Values.ListButton:Clone()
                                row.Parent = dd.DropdownOuter.ContentHolder.Values
                                row.Name = ""
                                row.Text = i
                                local state = v
                                row.Visible = true
                                row.TextColor3 = state and Color3.fromRGB(255, 125, 0) or not Color3.fromRGB(255, 255, 255)
                                row.MouseButton1Click:Connect(function()
                                    state = not state
                                    row.TextColor3 = state and Color3.fromRGB(255, 125, 0) or not Color3.fromRGB(255, 255, 255)
                                    selected[i] = state
                                    safeCall(cb)(selected)
                                end)
                            end
                        end

                        local funcs = {}
                        funcs.Object = dd
                        funcs.TGL = toggle
                        funcs.CB = cb

                        windowFuncs.Tabs[counterTextPage][counterText] = funcs
                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end
                        function funcs:Set(txt)
                            if not self or not self.Object then return end
                            self.CB(txt)
                        end
                        function funcs:Toggle(state)
                            if not self or not self.Object then return end
                            self.TGL(state)
                        end

                        configEvent.Event:Connect(function(config)
                            if options.IgnoreConfig or options.IgnoreConfigs then return end
                            local val = config[counterTextPage]
                            if val then
                                val = val[counterText]
                            end
                            if not val then return end
                            funcs:Set(val)
                        end)

                        return funcs
                    end,
                    AddColorPicker = function(self, options)
                        options = getOptions(options)
                        options.Default = typeof(options.Default) == "Color3" and options.Default or typeof(options.Base) == "Color3" and options.Base or Color3.fromRGB(255, 255, 255)

                        local cp = page.ColorPicker:Clone()
                        cp.Parent = page
                        cp.Visible = true
                        cp.Name = ""
                        local text = getText(options) or "Color Picker"
                        local counterText = count(text, 2)
                        cp:FindFirstChild("Text").Text = text

                        local col = options.Default
                        cp:FindFirstChild("Text").Color.BackgroundColor3 = col
                        cp.RGB.RHolder.SliderOuter.Bar.Fill.BackgroundColor3 = Color3.new(col.R, 0, 0)
                        cp.RGB.GHolder.SliderOuter.Bar.Fill.BackgroundColor3 = Color3.new(0, col.G, 0)
                        cp.RGB.BHolder.SliderOuter.Bar.Fill.BackgroundColor3 = Color3.new(0, 0, col.B)
                        local funcs = {}
                        local Rs, Gs, Bs
                        local function cb(col)
                            funcs.Value = col
                            Rs(math.round(col.R * 255))
                            Gs(math.round(col.G * 255))
                            Bs(math.round(col.B * 255))
                            struct[counterText] = {col.R * 255, col.G * 255, col.B * 255}
                            getCallback(options)(col)
                        end
                        safeCall(cb)(col)
                        options.CB = cb
                        Rs, Gs, Bs = 
                            setupSlider(cp.RGB.RHolder, nil, {Min = 0, Max = 255, Step = 1, Default = math.round(col.R * 255), Callback = function(v)
                                if v == col.R then return end
                                col = Color3.new(v/255, col.G, col.B)
                                cp:FindFirstChild("Text").Color.BackgroundColor3 = col
                                cp.RGB.RHolder.SliderOuter.Bar.Fill.BackgroundColor3 = Color3.fromRGB(v, 0, 0)
                                cb(col)
                            end}),
                        setupSlider(cp.RGB.GHolder, nil, {Min = 0, Max = 255, Step = 1, Default = math.round(col.G * 255), Callback = function(v)
                            if v == col.G then return end
                            col = Color3.new(col.R, v/255, col.B)
                            cp:FindFirstChild("Text").Color.BackgroundColor3 = col
                            cp.RGB.GHolder.SliderOuter.Bar.Fill.BackgroundColor3 = Color3.fromRGB(0, v, 0)
                            cb(col)
                        end}),
                        setupSlider(cp.RGB.BHolder, nil, {Min = 0, Max = 255, Step = 1, Default = math.round(col.B * 255), Callback = function(v)
                            if v == col.B then return end
                            col = Color3.new(col.R, col.G, v/255)
                            cp:FindFirstChild("Text").Color.BackgroundColor3 = col
                            cp.RGB.BHolder.SliderOuter.Bar.Fill.BackgroundColor3 = Color3.fromRGB(0, 0, v)
                            cb(col)
                        end})

                        funcs.Object = cp
                        funcs.Options = options

                        windowFuncs.Tabs[counterTextPage][counterText] = funcs
                        function funcs:Destroy()
                            if not self or not self.Object then return end
                            self.Object:Destroy()
                        end
                        function funcs:Set(obj)
                            if not self or not self.Object or typeof(obj) ~= "Color3" then return end
                            self.Options.CB(obj)
                        end
                        function funcs:Hide()
                            if not self or not self.Object then return end
                            self.Object.Visible = false
                        end
                        function funcs:Show()
                            if not self or not self.Object then return end
                            self.Object.Visible = true
                        end
                        function funcs:Visible(bool)
                            if not self or not self.Object then return end
                            self.Object.Visible = not not bool
                        end
                        function funcs:SetCallback(cb)
                            if not self or not self.Object then return end
                            self.Options.Callback = function(newVal)
                                funcs.Value = newVal
                                struct[counterText] = {newVal.R * 255, newVal.G * 255, newVal.B * 255}
                                return cb(newVal)
                            end
                        end
                        function funcs:SetText(txt)
                            if not self or not self.Object then return end
                            self.Object:FindFirstChild("Text").Text = tostring(txt)
                        end

                        configEvent.Event:Connect(function(config)
                            if options.IgnoreConfig or options.IgnoreConfigs then return end
                            local val = config[counterTextPage]
                            if val then
                                val = val[counterText]
                            end
                            if not val then return end
                            funcs:Set(Color3.fromRGB(val[1], val[2], val[3]))
                        end)

                        return funcs
                    end,
                }
                pageFuncs.AddSwitch = pageFuncs.AddToggle
                for i,v in pageFuncs do
                    if i:sub(1,3) == "Add" then
                        pageFuncs[i:gsub("Add", "Create")] = v
                        pageFuncs[i:gsub("Add", "")] = v
                    end
                end

                return pageFuncs
            end,
        }

        windowFuncs.Tabs = windowFuncs.Tabs or {}
        windowFuncs.Pages = windowFuncs.Tabs

        windowFuncs.CreatePage = windowFuncs.AddPage
        windowFuncs.AddTab = windowFuncs.AddPage
        windowFuncs.CreateTab = windowFuncs.AddPage

        windowFuncs.Shutdown = windowFuncs.Close
        windowFuncs.Minimize = windowFuncs.Hide
        windowFuncs.Maximize = windowFuncs.Show

        windowFuncs:Show()

        local page = windowFuncs:AddPage({Title = "Main", Order = 999})
        local toggleKey = Enum.KeyCode.LeftAlt
        page:AddButton({Text = "Hide UI", Callback = function()
            if windowFuncs:Minimize() then
                lib.Notifications:Notification({Title = "UI Hidden", Text = "Press "..toggleKey.Name.." to show the UI"})
            end
        end})
        page:AddInput({Text = "Toggle UI Key", Default = toggleKey.Name, Callback = function(kk)
            toggleKey = kk
        end, IgnoreConfigs = true})
        cons[#cons+1] = game:GetService("UserInputService").InputBegan:Connect(function(input)
            if game:GetService("UserInputService"):GetFocusedTextBox() or input.KeyCode ~= toggleKey then return end
            windowFuncs:Toggle()
        end)
        local closeCallback = function()
            maximize:Destroy()
            for i,v in cons do
                if v and v.Connected then
                    v:Disconnect()
                end
            end;
            (typeof(options.CloseCallback) == "function" and options.CloseCallback or getCallback(options))()
        end
        maximize.DragButton.MouseButton1Click:Connect(function()
            windowFuncs:Show()
        end)
        page:AddButton({Text = "Close UI", Callback = function()
            lib.Notifications:ChooseNotification({Title = "Are you sure?", Text = "Are you sure that you want to close\n"..window.HolderFrame.Title.Text.."?", Callback = function(b)
                if b then
                    windowFuncs:Close()
                    closeCallback()
                end
            end})
        end})
        page:AddSeparator()
        local execName = "RobloxClient"
        local execVersion = getfenv().version()

        if getfenv().identifyexecutor then
            local s, en, ev = pcall(getfenv().identifyexecutor)
            if s then
                if en then
                    execName = tostring(en)
                    if ev then
                        execVersion = tostring(ev)
                    end
                end
            end
        end

        page:AddLabel({Text = "NullFire Version: "..versions.FireHubVersion})
        page:AddLabel({Text = "FireLib Version: "..versions.FireLibraryVersion})
        page:AddLabel({Text = "Executor Name & Version: " .. execName .. "; " .. execVersion})
        if configsEnabled then
            local function load(got)
                for i,v in got do
                    if typeof(v) == "table" then
                        for idx, val in v do
                            if typeof(val) == "table" then
                                for index, value in val do
                                    if configStructure[i] and configStructure[i][idx] and configStructure[i][idx][index] then
                                        configStructure[i][idx][index] = value
                                    end
                                end
                            else
                                configStructure[i][idx] = val
                            end
                        end
                    else
                        configStructure[i] = v
                    end
                end
                configStructure = got
                configEvent:Fire(got)
            end
            page:AddSeparator()
            page:AddLabel({Text = "Configs"})
            page:AddSeparator()
            local currentConfig = ""
            page:AddTextBox({Text = "Config name", NeedEnter = false, Callback = function(text)
                currentConfig = text
            end, IgnoreConfigs = true})
            local suffix = ""
            local prefix = ""
            local format = "json"
            local folder = "FireLib_Configs"
            if makefolder then
                makefolder(folder)
                prefix = folder.."\\"
                suffix = "-Config."..format
            else
                suffix = "-FireLib_Config."..format
            end
            if isfolder and isfile and listfiles then
                if ({pcall(isfolder, "FireLib")})[2] then
                    if not ({pcall(isfolder, folder)})[2] then
                        
                    end
                end
            end
            suffix = "-"..game.HttpService:UrlEncode(window.HolderFrame.Title.Text)..suffix
            page:AddButton({Text = "Save Config", Callback = function()
                local s,got = pcall(readfile,prefix..currentConfig..suffix)
                if s then
                    lib.Notifications:ChooseNotification({Callback = function(b)
                        if b then
                            writefile(prefix..currentConfig..suffix, game.HttpService:JSONEncode(configStructure))
                            lib.Notifications:Notification({Title = "Success", Text = "Config \""..currentConfig.."\" has been created!"})
                        end
                    end, Title = "Wait!", Text = "Config called \""..currentConfig.."\" already exist, do you want to rewrite it?"})
                else
                    writefile(prefix..currentConfig..suffix, game.HttpService:JSONEncode(configStructure))
                    lib.Notifications:Notification({Title = "Success", Text = "Config \""..currentConfig.."\" has been created!"})
                end
            end})
            page:AddButton({Text = "Load Config", Callback = function()
                local s,got = pcall(readfile,prefix..currentConfig..suffix)
                if not s then
                    return lib.Notifications:Notification({Title = "Uh oh!", Text = "Config called \""..currentConfig.."\" not found!"})
                end
                if got then
                    got = game.HttpService:JSONDecode(got)
                end
                load(got)
                lib.Notifications:Notification({Title = "Success", Text = "Config \""..currentConfig.."\" has been loaded!"})
            end})

            local first = true
            local tb = page:AddTextBox({Text = "Auto load config [leave empty to disable]", NeedEnter = false, Default = "", Callback = function(text)
                if first then first = false return end
                writefile("AutoLoad"..suffix..".skibidi", text)
            end, IgnoreConfigs = true})
            local s,e = task.spawn(function()
                task.wait(0.5)
                local content = readfile("AutoLoad"..suffix..".skibidi")
                content = content:gsub("\n", ""):gsub("\r", "")

                if content:gsub(" ", ""):gsub("\t", "") == "" then return print("not skibidi") end
                tb:Set(content)
                print("skibidi", content)

                local s,got = pcall(readfile, prefix..content..suffix)
                if not s then
                    return lib.Notifications:Notification({Title = "Uh oh!", Text = "Config called \""..content.."\" not found!"})
                end
                if got then
                    got = game.HttpService:JSONDecode(got)
                end
                if not got then return end
                load(got)
                lib.Notifications:Notification({Title = "Success", Text = "Config \""..content.."\" has been loaded!"})
            end)
            if not s then warn(e) end
        end

        page:AddSeparator()
        page:AddLabel({Text = "Themes"})
        page:AddSeparator()

        local themeColorPickers = {}
        for i,v in colors do
            themeColorPickers[i] = page:AddColorPicker({Text = i, Default = v.Color, Callback = function(col)
                windowFuncs.ThemeColors[i] = col
                for idx,val in colors do
                    if idx ~= i then
                        windowFuncs.ThemeColors[idx] = windowFuncs.ThemeColors[idx]
                    end
                end
            end})
        end
        if configsEnabled then
            local currentConfig = ""
            page:AddTextBox({Text = "Theme name", NeedEnter = false, Callback = function(text)
                currentConfig = text
            end, IgnoreConfigs = true})
            local suffix = ""
            local prefix = ""
            local format = "wave"
            local folder = "FireLib_Themes"
            if makefolder then
                makefolder(folder)
                prefix = folder.."\\"
                suffix = "-Theme."..format
            else
                suffix = "-"..folder.."."..format
            end
            suffix = "-"..suffix
            page:AddButton({Text = "Save Theme", Callback = function()
                local s,got = pcall(readfile,prefix..currentConfig..suffix)
                if s then
                    lib.Notifications:ChooseNotification({Callback = function(b)
                        if b then
                            local colorsT = {}
                            for i,v in colors do
                                colorsT[i] = {R = v.Color.R, G = v.Color.G, B = v.Color.B}
                            end
                            writefile(prefix..currentConfig..suffix, game.HttpService:JSONEncode(colorsT))
                            lib.Notifications:Notification({Title = "Success", Text = "Theme \""..currentConfig.."\" has been created!"})
                        end
                    end, Title = "Wait!", Text = "Theme called \""..currentConfig.."\" already exist, do you want to rewrite it?"})
                else
                    local colorsT = {}
                    for i,v in colors do
                        colorsT[i] = {R = v.Color.R, G = v.Color.G, B = v.Color.B}
                    end
                    writefile(prefix..currentConfig..suffix, game.HttpService:JSONEncode(colorsT))
                    lib.Notifications:Notification({Title = "Success", Text = "Theme \""..currentConfig.."\" has been created!"})
                end
            end})
            page:AddButton({Text = "Load Theme", Callback = function()
                local s,got = pcall(readfile, prefix..currentConfig..suffix)
                if not s then
                    return lib.Notifications:Notification({Title = "Uh oh!", Text = "Theme called \""..currentConfig.."\" not found!"})
                end
                if got then
                    got = game.HttpService:JSONDecode(got)
                end
                if not got then return end
                for i,v in got do
                    windowFuncs.ThemeColors[i] = Color3.new(v.R, v.G, v.B)
                    themeColorPickers[i]:Set(windowFuncs.ThemeColors[i])
                    lib.Notifications:Notification({Title = "Success", Text = "Theme \""..currentConfig.."\" has been loaded!"})
                end
            end})
        end

        return windowFuncs
    end,
}

lib.CreateWindow = lib.MakeWindow
lib.AddWindow = lib.MakeWindow
lib.Notifications.Notify = lib.Notifications.Notification
lib.Notifications.SelectNotification = lib.Notifications.ChooseNotification
lib.Notifications.SelectionNotification = lib.Notifications.ChooseNotification

if isMobile then
    script.Parent.Notification.ChooseNotificationHolder.NotificationOrange.NotificationMain.Lines['1'].TextSize -= 3
    script.Parent.Notification.NotificationHolder.NotificationOrange.NotificationMain.Lines['1'].TextSize -= 3
end

getGlobalTable()._FIRELIB = lib

return lib
end

local oldRequire = getfenv().require
getfenv().require = function(scr)
    if typeof(scr) ~= "Instance" or (not scr:IsA("ModuleScript") and not moduleScripts[scr]) then return oldRequire(scr) end
    if moduleScripts[scr] then
        return moduleScripts[scr]()
    else
        return oldRequire(scr)
    end
end

require = getfenv().require

-- Your code down below --

local screenGui = Instance1
return require(screenGui.ModuleScript)

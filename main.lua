local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local RenderDistance = 300

local Camera = Workspace.CurrentCamera
local RenderStepped = RunService.RenderStepped

local Cache = {}
local TrinketType = loadstring(game:HttpGet("https://raw.githubusercontent.com/xxypher/rogue-lineage-trinket-esp/main/TrinketData.lua"))()

local function NewDrawing(Type, Properties)
	local Drawing = Drawing.new(Type)

	for i, v in pairs(Properties) do
		Drawing[i] = v
	end

	return Drawing
end

local function NewESP(Object, Info)
	local ESP = {}

	ESP.Box = NewDrawing('Square', {
		Thickness = 0.5,
		ZIndex = 1
	})

	ESP.BoxOutline = NewDrawing('Square', {
		Color = Color3.fromRGB(0, 0, 0),
		Thickness = 1.5,
	})

	ESP.Distance = NewDrawing('Text', {
		Center = true,
		Font = 0,
		Outline = true,
		Size = 12
	})

	ESP.Name = NewDrawing('Text', {
		Center = true,
		Font = 0,
		Outline = true,
		Size = 12
	})

	Cache[Object] = {
		Info = Info,
		ESP = ESP
	}
end

local function RemoveESP(Object)
	if Cache[Object] then
		for _, v in pairs(Cache[Object].ESP) do
			v:Remove()
		end

		Cache[Object] = nil
	end
end

local function Update()
    print("UPDATED")
	for i, v in pairs(Cache) do
		if not i or not i.Parent then
			RemoveESP(i); continue
		end

		local Distance = math.floor((Camera.CFrame.Position - i.Position).Magnitude + 0.5)
		local Pos, InView = Camera:WorldToViewportPoint(i.Position)

		if not InView or Distance > RenderDistance then
			v.ESP.Box.Visible = false; v.ESP.BoxOutline.Visible = false; v.ESP.Distance.Visible = false; v.ESP.Name.Visible = false; continue
		end

		local ScaleFactor = 1 / (Pos.Z * math.tan(math.rad(Camera.FieldOfView / 2)) * 2) * 100
		local Size = 16 * ScaleFactor

		v.ESP.Box.Color = v.Info.Color
		v.ESP.Box.Position = Vector2.new(Pos.X - (Size / 2), Pos.Y - (Size / 2))
		v.ESP.Box.Size = Vector2.new(Size, Size)
		v.ESP.Box.Visible = true

		v.ESP.BoxOutline.Position = v.ESP.Box.Position
		v.ESP.BoxOutline.Size = v.ESP.Box.Size
		v.ESP.BoxOutline.Visible = true

		v.ESP.Distance.Color = v.Info.Color
		v.ESP.Distance.Text = tostring(Distance)
		v.ESP.Distance.Position = Vector2.new(Pos.X, Pos.Y + Size / 2)
		v.ESP.Distance.Visible = true

		v.ESP.Name.Color = v.Info.Color
		v.ESP.Name.Text = v.Info.Name
		v.ESP.Name.Position = Vector2.new(Pos.X, Pos.Y - Size / 2 - v.ESP.Name.TextBounds.Y)
		v.ESP.Name.Visible = true
	end
end

for _, v in pairs(Workspace.Trinkets:GetChildren()) do
	if v:FindFirstChildWhichIsA('ClickDetector', true) then
		local Info = TrinketType(v)
		NewESP(v, Info)
	end
end

Workspace.Trinkets.ChildAdded:Connect(function(Object)
	if Object:FindFirstChildWhichIsA('ClickDetector', true) then
		local Info = TrinketType(Object)
		NewESP(Object, Info)
	end
end)

RenderStepped:Connect(function()
    wait(5)
    Update()
end)    

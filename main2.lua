local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local RenderDistance = 10000000000000000

local Camera = Workspace.CurrentCamera
local RenderStepped = RunService.RenderStepped

local uis = game:GetService("UserInputService")

local ToggleKey = Enum.KeyCode.Insert

getgenv().EspToggle = true


local Cache = {}
local TrinketType = loadstring(game:HttpGet("https://raw.githubusercontent.com/xxypher/rogue-lineage-trinket-esp/main/TrinketArtifactsOnlyData.lua"))()

local function NewDrawing(Type, Properties)
	local Drawing = Drawing.new(Type)

	for i, v in pairs(Properties) do
		Drawing[i] = v
	end

	return Drawing
end

local function NewESP(Object, Info)
	local ESP = {}

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
	
	if getgenv().EspToggle == true then
		for i, v in pairs(Cache) do
			if not i or not i.Parent then
				RemoveESP(i); continue
			end

			local Distance = math.floor((Camera.CFrame.Position - i.Position).Magnitude + 0.5)
			local Pos, InView = Camera:WorldToViewportPoint(i.Position)

			if not InView or Distance > RenderDistance then
				v.ESP.Name.Visible = false 
				continue
			end

			v.ESP.Name.Color = v.Info.Color
			v.ESP.Name.Text = v.Info.Name
			v.ESP.Name.Position = Vector2.new(Pos.X, Pos.Y)
			v.ESP.Name.Visible = true
		end
	else 
		for i, v in pairs(Cache) do
			if v.ESP.Name.Visible == true then
				v.ESP.Name.Visible = false
			end
		end
	end
end


for _, v in pairs(Workspace.Trinkets:GetChildren()) do
	if v:FindFirstChildWhichIsA('ClickDetector', true) then
		local Info = TrinketType(v)
		if Info ~= nil then 
			print("Seen arti")
			NewESP(v, Info)
		end 
	end
end

Workspace.Trinkets.ChildAdded:Connect(function(Object)
	if Object:FindFirstChildWhichIsA('ClickDetector', true) then
		local Info = TrinketType(Object)


		if Info ~= nil then
			print("Seen arti")
			NewESP(Object, Info)
		end 
	end
end)

uis.InputBegan:Connect(function(key, gp)
	if not gp then
		if key.KeyCode == ToggleKey then
			if getgenv().EspToggle == true then
				getgenv().EspToggle = false
			else 
				getgenv().EspToggle = true
			end
		end
	end
end)

RenderStepped:Connect(function()
	if getgenv().EspToggle == true then
		Update()
	end
end)


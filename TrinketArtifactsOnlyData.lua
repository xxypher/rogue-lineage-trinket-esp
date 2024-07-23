return function(Object: Instance)
	local Light: PointLight = Object:FindFirstChildWhichIsA('PointLight')
	local Mesh: SpecialMesh = Object:FindFirstChildWhichIsA("SpecialMesh")
	local Particle: ParticleEmitter = Object:FindFirstChildWhichIsA('ParticleEmitter', true)

	if Object:IsA('MeshPart') then
		if Object.MeshId == 'rbxassetid://2520762076' then
			return {
				Color = Color3.fromRGB(137, 207, 240),
				Name = 'Howler Friend'
			}
		elseif Object.MeshId == 'rbxassetid://439102658' then
			return {
				Color = Color3.fromRGB(255, 43, 5),
				Name = 'Phoenix Feather'
			}	
		end
	elseif Object:IsA('Part') then
		if Object.Color == Color3.fromRGB(89, 34, 89) then
			return {
				Color = Color3.fromRGB(137, 207, 240),
				Name = '???'
			}
		elseif Object.Color == Color3.fromRGB(128, 187, 219) then
			return {
				Color = Color3.fromRGB(255, 0, 255),
				Name = 'Fairfrozen'
			}
		elseif Particle and Particle.Color == Color3.fromRGB(25, 185, 155) then
			return {
				Color = Color3.fromRGB(137, 207, 240),
				Name = 'Ice Essence'
			}
		elseif Particle and Particle.Color.Keypoints[1].Value == Color3.new(0.45098, 1, 0) then
			return {
				Color = Color3.fromRGB(255, 213, 128),
				Name = 'Mysterious Artifact'
			}
		elseif Particle and Particle.Color.Keypoints[1].Value == Color3.new(1, 0.8, 0) then
			return {
				Color = Color3.fromRGB(137, 207, 240),
				Name = 'Phoenix Down'
			}
		elseif Object.Color == Color3.fromRGB(255, 0, 191) then
			return {
				Color = Color3.fromRGB(255, 0, 255),
				Name = 'Rift Gem'
			}
		elseif Object.Color == Color3.fromRGB(255, 255, 0) then
			return {
				Color = Color3.fromRGB(255, 0, 255),
				Name = 'Spider Cloak'
			}
		end	
	elseif Object:IsA('UnionOperation') then
		if Light and Light.Color == Color3.fromRGB(255, 255, 255) then
			return {
				Color = Color3.fromRGB(255, 0, 255),
				Name = 'Amulet of the White King'
			}
		elseif Object.Color == Color3.fromRGB(248, 248, 248) and not Object.UsePartColor then
			return {
				Color = Color3.fromRGB(255, 0, 255),
				Name = [[Lannis's Amulet]]
			}
		elseif Object.Color == Color3.fromRGB(29, 46, 58) then
			return {
				Color = Color3.fromRGB(255, 0, 255),
				Name = 'Night Stone'
			}
		elseif Object.Color == Color3.fromRGB(255, 89, 89) then
			return {
				Color = Color3.fromRGB(255, 0, 255),
				Name = [[Philosopher's Stone]]
			}
		elseif Object.Color == Color3.fromRGB(248, 217, 109) then
			return {
				Color = Color3.fromRGB(255, 0, 255),
				Name = 'Scroom Key'
			}
		elseif Object.Color == Color3.fromRGB(21, 30, 38) then
			return {
				Color = Color3.fromRGB(21, 30, 38),
				Name = 'Solans Key',
			}	
		end
	end
	return nil
end

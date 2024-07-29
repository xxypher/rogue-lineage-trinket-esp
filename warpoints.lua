return function(Object: Instance)
	local Light: PointLight = Object:FindFirstChildWhichIsA('PointLight')
	local Mesh: SpecialMesh = Object:FindFirstChildWhichIsA("SpecialMesh")
	local Particle: ParticleEmitter = Object:FindFirstChildWhichIsA('ParticleEmitter', true)

	if Object:IsA('MeshPart') then
		return nil
	elseif Object:IsA('Part') then
		return nil
	elseif Object:IsA('UnionOperation') then
		if Object.Color == Color3.fromRGB(211, 0, 0) then
			return {
				Color = Color3.fromRGB(211, 0, 0),
				Name = 'Tome of War'
			}
		end
	end
return nil
end

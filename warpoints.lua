return function(Object: Instance)
	local Light: PointLight = Object:FindFirstChildWhichIsA('PointLight')
	local Mesh: SpecialMesh = Object:FindFirstChildWhichIsA("SpecialMesh")
	local Particle: ParticleEmitter = Object:FindFirstChildWhichIsA('ParticleEmitter', true)
	
	if Object:IsA('MeshPart') then
			
		end
	elseif Object:IsA('Part') then
		
		end
	elseif Object:IsA('UnionOperation') then
		if Light and Light.Color == Color3.fromRGB(211, 0, 0) then
			return {
				Color = Color3.fromRGB(211, 0, 0),
				Name = 'Tome of War'
			}
		end
	end
	
	return nil
end

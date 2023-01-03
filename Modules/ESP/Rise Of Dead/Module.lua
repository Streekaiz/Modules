local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()

ESP:Toggle(true)
ESP.Players = false
ESP.AutoRemove = true
ESP.RenderInNil = false
ESP:AddObjectListener(game:GetService("Workspace").Entity, {
    Name = "Ticks Zombie",
    CustomName = "Tick Zombie",
    Color = Color3.fromRGB(158, 25, 39),
	PrimaryPart = function(Part)
	    local ESPAddPart = Part:FindFirstChildWhichIsA("BasePart")
		while not ESPAddPart do
			task.wait()
			ESPAddPart = Part:FindFirstChildWhichIsA("BasePart")
		end
		return ESPAddPart
	end,
    IsEnabled = "TickZombie"
})

ESP:AddObjectListener(game:GetService("Workspace").Entity, {
    Name = "Heavy Zombie",
    Color = Color3.fromRGB(227, 70, 86),
	PrimaryPart = function(Part)
	    local ESPAddPart = Part:FindFirstChildWhichIsA("BasePart")
		while not ESPAddPart do
			task.wait()
			ESPAddPart = Part:FindFirstChildWhichIsA("BasePart")
		end
		return ESPAddPart
	end,
    IsEnabled = "HeavyZombie"
})

ESP:AddObjectListener(game:GetService("Workspace").Entity, {
    Name = "Leaper Zombie",
    Color = Color3.fromRGB(196, 24, 42),
	PrimaryPart = function(Part)
	    local ESPAddPart = Part:FindFirstChildWhichIsA("BasePart")
		while not ESPAddPart do
			task.wait()
			ESPAddPart = Part:FindFirstChildWhichIsA("BasePart")
		end
		return ESPAddPart
	end,
    IsEnabled = "LeaperZombie"
})

ESP:AddObjectListener(game:GetService("Workspace").Entity, {
    Name = "Zombie",
    Color = Color3.fromRGB(219, 18, 39),
	PrimaryPart = function(Part)
	    local ESPAddPart = Part:FindFirstChildWhichIsA("BasePart")
		while not ESPAddPart do
			task.wait()
			ESPAddPart = Part:FindFirstChildWhichIsA("BasePart")
		end
		return ESPAddPart
	end,
    IsEnabled = "Zombie"
})

return ESP

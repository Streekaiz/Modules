if not game:GetService("CoreGui"):FindFirstChild("Chams") then
    local Chams = Instance.new("Folder")
    Chams.Parent = game:GetService("CoreGui")
    Chams.Name = "Chams"
end
local Utility = {}
function Utility.AddPlayer(Name, args)
  local cfg = args or {}
	local Enabled = cfg.Enabled or true
	local Color1 = cfg.FColor or Color3.fromRGB(255, 0, 0)
	local Color2 = cfg.OColor or Color3.fromRGB(0, 0, 0)
	local Transparency1 = cfg.FTransparency or 0
	local Transparency2 = cfg.OTransparency or 0
	local Depth = cfg.Depth or "AlwaysOnTop"
	local Folder = cfg.Folder or Chams
	local Highlight = Instance.new("Highlight"):Clone()
	repeat task.wait() until game.Players[name]:FindFirstChild("Character")
	Highlight.Adornee = game.Players[name].Character
	Highlight.Enabled = Enabled
	Highlight.Parent = Folder
	Highlight.Name = Name
	Highlight.FillColor = FColor
	Highlight.OutlineColor = OColor
	Highlight.FillTransparency = FTransparency
	Highlight.OutlineTransparency = OTransparency
	Highlight.DepthMode = Depth
end
function Utility.Team(plr)
    if plr.Team == game:GetService("Players").LocalPlayer.Team then
		return true else return false end
end
function Utility.Health(plr)
    repeat task.wait() until plr.Character
	local Humanoid = plr.Character:FindFirstChildOfClass("Humanoid")
	if Humanoid then return Humanoid.Health end
end
function Utility.Unload()
    for _, v in next, Chams:GetChildren() do
		v:Destroy()
	end
end


local Utility = {
	Highlight = Instance.new("Highlight"),
	Folder = Instance.new("Folder")
}
Utility.Folder.Parent = game:GetService("CoreGui")

function Utility:ESP(Player, Args)
    local args = Args
	local FillColor = args.FillColor or Color3.fromRGB(255, 0, 0)
	local OutlineColor = args.OutlineColor or Color3.fromRGB(0, 0, 0)
	local FillTransparency = args.FillTransparency or 0
	local OutlineTransparency = args.OutlineTransparency or 0
	local Depth = args.Depth or "AlwaysOnTop"
	local F = args.Folder or Utility.Folder

	local Clone = Utility.Highlight:Clone()
	Clone.Parent = F
	Clone.FillColor = FillColor
	Clone.OutlineColor = OutlineColor
	Clone.FillTransparency = FillTransparency
	Clone.OutlineTransparency = OutlineTransparency
	Clone.Adornee = Player
	Clone.Name = Player.Name
	Clone.Depth = Depth
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

return Utility

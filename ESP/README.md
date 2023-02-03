# Documentation
created by streekaiz#1132
## Loading
```lua
local Chams = loadstring(
	game:HttpGet(
		"https://raw.githubusercontent.com/Streekaiz/Modules/main/ESP/Source.lua"
	)
)()
```
## Functions
### Chams:ESP()
look at source because i cant be bothered to make doc rn
```lua
function Chams:ESP(Player, Args)
    local args = Args
	local FillColor = args.FillColor or Color3.fromRGB(255, 0, 0)
	local OutlineColor = args.OutlineColor or Color3.fromRGB(0, 0, 0)
	local FillTransparency = args.FillTransparency or 0
	local OutlineTransparency = args.OutlineTransparency or 0
	local F = args.Folder or Utility.Folder

	local Clone = Utility.Highlight:Clone()
	Clone.Parent = F
	Clone.FillColor = FillColor
	Clone.OutlineColor = OutlineColor
	Clone.FillTransparency = FillTransparency
	Clone.OutlineTransparency = OutlineTransparency
	Clone.Adornee = Player
	Clone.Name = Player.Name
end
```

### Chams.Team()
```lua
Chams.Team(Player)
```
This will return true if the player is in a team with the local player, and return false if not. This can be helpful for team checks.

### Chams.Health()
```lua
Chams.Health(Player)
```
This will return the humanoid's health. You can possibly make their highlights change color depending on health!
## Resources
[Highlight Documentation](https://create.roblox.com/docs/reference/engine/classes/Highlight)

A reminder that this is to easily highlight players & make it easier to manage those highlights.

This is the end of the documentation. Have any ideas I could add to this? DM me via discord.

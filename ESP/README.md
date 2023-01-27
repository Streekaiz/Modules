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
### Chams.AddPlayer()
```lua
Chams.AddPlayer(
	PlayerName
	{
		Enabled = bool,
		Color1 = color,
		Color2 = color,
		Transparency1 = number,
		Transparency2 = number,
		Depth = string, -- look further into highlight docs
		Folder = path --[[
			There is already a folder made parented to coregui, 
			so you wont need to define this unless you'd like to
			use your own folder.
		]]
})
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

This is the end of the documentation. Have any ideas I could add to this? DM me via discord.

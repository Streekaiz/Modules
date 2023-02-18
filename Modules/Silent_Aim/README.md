# Silent Aim
make ur own silent aim if ur too lazy!
## Loader:
```lua
local SilentAimSettings, FOVCircle = loadstring(game:HttpGet("https://raw.githubusercontent.com/Streekaiz/Modules/main/Modules/Silent_Aim/source.lua", true))()
```
## Settings:
```lua
getgenv().SilentAimSettings = {
    Enabled = false
    TeamCheck = false,
    VisibleCheck = false, 
    TargetPart = "HumanoidRootPart",
    SilentAimMethod = "Raycast",
    FOVRadius = 130,
    FOVColor = Color3.fromRGB(255, 255, 255),
    FOVVisible = false,
    ShowSilentAimTarget = false,
    HitChance = 100
}
```

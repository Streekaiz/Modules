# Documentation (doc outdated, update tommorow)

**At the moment, this module does not have much content.**
**More content will be added as time goes on.**

Created by streekaiz#1132 / github.com/Streekaiz
Remember that this is open source, so feel free to do whatever with it.
If you have any questions, it's likely in the source code.

### Loading the module
```lua
local Utility = loadstring(
   game:HttpGet(
      "https://raw.githubusercontent.com/Streekaiz/Modules/main/Modules/Variables/Module.lua"
   )
)
```

### Notifications
```lua
Utility.Icon.Home
Utility.Icon.Aimbot
Utility.Icon.Visuals
Utility.Icon.Player
Utility.Icon.Misc
Utility.Icon.Settings
Utility.Icon.Credits
Utility.Icon.Exit
Utility.Icon.Notification.Success
Utility.Icon.Notification.Warning
Utility.Icon.Notification.Error
Utility.Icon.Notification.Informational
Utility.Icon.Notification.Custom
```

### Services
```lua
Utility.Service.Run
Utility.Service.Tween
Utility.Service.Players
Utility.Service.Teleport
Utility.Service.Replicated
Utility.Service.Http
Utility.Service.Input
Utility.Service.Path
Utility.Service.Badge
Utility.Service.Stat
```

### Player
```lua
Utility.Player.Character
Utility.Player.Humanoid
Utility.Player.HRP
Utility.Player.State
Utility.Player.CF 
```

### Unlabeled
```lua
Utility.LocalPlayer
```
## Functions
## Utility.GetExecutor()
```lua
Utility.Functions.GetExecutor(boolean)
```
If the boolean in the function is true then it'll uses the executor's functions to identify the executor
However, if the boolean is false then it'll use identifyexecutor() to identify the executor.

## Utility.GetKey()

```lua
Utility.Functions.GetKey(key)
```
returns Enum.KeyCode[key] (a little useless but whatever
## Utility.Log()
```lua
Utility.Functions.Log(type, content)
```
**Types**
```lua
"Info"
"Warn"
"Error"
```
Logs content into the F9 console.
## Utility.DisableLogService()
```lua
Utility.Functions.DisableLogService()
```
Disables anything logged into the F9 console. This can be used for games like Pet Simulator X because they log anything in the console.
If your executor doesn't support **getconnections()**, this function will not work.
## Utility.Highlight()
> No documentation, look in source (sory)
## Utility.GetClosestPlayerToFOV()
> No documentation, look in source (sory)
## Utility.Load()
```lua
Utility.Load(string)
```
string = github link or pastebin
## Utility.Crash()
hate the guy that executed your script? use this
## Utility.LearnCatFact(bool)
```lua
Utility.LearnCatFact(true)
```
This will return a fact about cats, and if the bool is true, will also print that fact!!

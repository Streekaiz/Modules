local game; game = game -- Yes


local Utility = {
   Version = 1.1,
   Icon = {
		Home = "rbxassetid://9792650361",
		Aimbot = "rbxassetid://9792632523",
		Visuals = "rbxassetid://9792631281",
		Player = "rbxassetid://9792631906",
		Misc = "rbxassetid://9792634811",
		Settings = "rbxassetid://9792633222",
		Credits = "rbxassetid://9792634075",
		Exit = "rbxassetid://9792635572",
      Notification = {
        Success = "rbxassetid://9838874163",
        Warning = "rbxassetid://9838873385",
        Error = "rbxassetid://9838876113",
        Informational = "rbxassetid://9838877673",
        Custom = "rbxassetid://9838878267"
      }
   },
   Service = {},
   Performance = {},
   Uptime = {},
   Player = {},
   LocalPlayer = game:GetService("Players").LocalPlayer,

}

Utility.Service.Run = game:GetService("RunService")
Utility.Service.Tween = game:GetService("TweenService")
Utility.Service.Players = game:GetService("Players")
Utility.Service.Teleport = game:GetService("TeleportService")
Utility.Service.Replicated = game:GetService("ReplicatedStorage")
Utility.Service.Http = game:GetService("HttpService")
Utility.Service.Input = game:GetService("UserInputService")
Utility.Service.Path = game:GetService("PathfindingService")
Utility.Service.Badge = game:GetService("BadgeService")
Utility.Service.Stat = game:GetService("Stats")


Utility.Player.Character = Utility.Service.Players.LocalPlayer.Character or Utility.Service.Players.LocalPlayer:WaitForChild("Character") or Utility.Service.Players.LocalPlayer:FindFirstChildOfClass("Character")
Utility.Player.Humanoid = Utility.Player.Character.Humanoid or Utility.Player.Character:WaitForChild("Humanoid") or Utility.Player.Character:FindFirstChildOfClass("Humanoid")
Utility.Player.HRP = Utility.Player.Character.HumanoidRootPart or Utility.Player.Character:WaitForChild("HumanoidRootPart")
Utility.Player.MoveDirection = Utility.Player.Humanoid.MoveDirection
Utility.Player.CF = Utility.Player.HRP.
Utility.Player.State = Utility.Player.Humanoid:GetState() 


function Utility.GetExecutor(bool)
    if bool~=true and identifyexecutor then return identifyexecutor()else return syn and syn.protect_gui and not getexecutorname and not is_sirhurt_closure and not pebc_execute and"Synapse X"or getexecutorname and identifyexecutor and gethui and"ScriptWare"or secure_load and"Sentinel"or is_sirhurt_closure and"Sirhurt"or pebc_execute and"ProtoSmasher"or KRNL_LOADED and"Krnl"or WrapGlobal and"WeAreDevs"or isvm and"Proxo"or shadow_env and"Shadow"or jit and"EasyExploits"or getreg()['CalamariLuaEnv']and"Calamari"or unit and"Unit"or IS_VIVA_LOADED and"VIVA"or IS_COCO_LOADED and"Coco"or"maane wtf is this executor lmfao"end
end

function Utility.Log(type, content)
    if type=="Info"then print("[INFO] "..content)elseif type=="Warn"then warn("[WARNING] "..content)elseif type=="Error"then warn("[ERROR] "..content)end
end

function Utility.DisableLogService()
    for a,b in next,getconnections(game:GetService("LogService").MessageOut)do b:Disable()end
end

function Utility.GetKey(key)
    return Enum.KeyCode[key]
end

function Utility.Highlight(b)
local a=b or{}local c=a.Part;local d=a.Name or"Highlight"local e=a.Parent or c;local f=Instance.new("Highlight")f.Adornee=c;f.Name=d;f.Parent=e
end

function Utility.GetClosestPlayerToFOV(a)
    local b=a or{}local c=b.Radius;local d=nil;for e,f in next,Utility.Service.Players:GetPlayers()do if f.Name~=Utility.LocalPlayer.Name then if b.TeamCheck and f.Team~=Utility.LocalPlayer.Team then if f.Character:FindFirstChild("HumanoidRootPart")and f.Character.Humanoid.Health~=0 then local g=workspace.CurrentCamera:WorldToScreenPoint(f.Character:WaitForChild("HumanoidRootPart",math.huge).Position)local h=(Vector2.new(game:GetService("UserInputService"):GetMouseLocation().X,game:GetService("UserInputService"):GetMouseLocation().Y)-Vector2.new(g.X,g.Y)).Magnitude;if h<c then d=f end end end end end;return d 
end

return Utility

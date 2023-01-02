local game; game = game -- Yes


local Utility = {
   Version = 1,
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
   Functions = {
      GetExecutor = function(bool)
         if bool ~= true then
            return identifyexecutor()
         else
            return     (syn and syn.protect_gui and not getexecutorname and not is_sirhurt_closure and not pebc_execute and "Synapse X") or
            (getexecutorname and identifyexecutor and gethui and "ScriptWare") or
            (secure_load and "Sentinel") or
            (is_sirhurt_closure and "Sirhurt") or
            (pebc_execute and "ProtoSmasher") or
            (KRNL_LOADED and "Krnl") or
            (WrapGlobal and "WeAreDevs") or
            (isvm and "Proxo") or
            (shadow_env and "Shadow") or
            (jit and "EasyExploits") or
            (getreg()['CalamariLuaEnv'] and "Calamari") or
            (unit and "Unit") or
            (IS_VIVA_LOADED and "VIVA") or
            (IS_COCO_LOADED and "Coco") or
            ("maane wtf is this executor lmfao")
         end
      end
      GetKey = function(key)
         return Enum.KeyCode[key]
      end,
      Log = function(type, content)
         if type == "Info" then print("[INFO] " ..content) elseif type == "Warn" then warn("[WARNING] " .. content) elseif type == "Error" then warn("[ERROR] "..content) end
      end,
      DisableLogService = function()
         for _, connection in next, getconnections(game:GetService("LogService").MessageOut) do
            connection:Disable()
         end
      end
   }
   LocalPlayer = game:GetService("Players").LocalPlayer,

}

do
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
end

do
   Utility.Player.Character = Utility.Service.Players.LocalPlayer.Character or Utility.Service.Players.LocalPlayer:WaitForChild("Character") or Utility.Service.Players.LocalPlayer:FindFirstChildOfClass("Character")
   Utility.Player.Humanoid = Utility.Player.Character.Humanoid or Utility.Player.Character:WaitForChild("Humanoid") or Utility.Player.Character:FindFirstChildOfClass("Humanoid")
   Utility.Player.HRP = Utility.Player.Character.HumanoidRootPart or Utility.Player.Character:WaitForChild("HumanoidRootPart")
   Utility.Player.State = Utility.Player.Humanoid:GetState() 
end

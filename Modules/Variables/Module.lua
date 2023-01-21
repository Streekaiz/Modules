
local Utility = {
   Version = 1.2,
   CatFacts = {
	   "A house cat’s genome is 95.6 percent tiger, and they share many behaviors with their jungle ancestors, says Layla Morgan Wilde, a cat behavior expert and the founder of Cat Wisdom 101. These behaviors include scent marking by scratching, prey play, prey stalking, pouncing, chinning, and urine marking.",
	   "Cats are believed to be the only mammals who don’t taste sweetness.",
	   "Cats are nearsighted, but their peripheral vision and night vision are much better than that of humans.",
	   "Cats are supposed to have 18 toes (five toes on each front paw; four toes on each back paw).",
	   "Cats can jump up to six times their length.",
	   "Cats have 230 bones, while humans only have 206.",
	   "Cats have an extra organ that allows them to taste scents on the air, which is why your cat stares at you with her mouth open from time to time.",
	   "Cats have whiskers on the backs of their front legs, as well.",
	   "Cats’ claws all curve downward, which means that they can’t climb down trees head-first. Instead, they have to back down the trunk.",
	   "Cats have the largest eyes relative to their head size of any mammal.",
	   "Cats make very little noise when they walk around. The thick, soft pads on their paws allow them to sneak up on their prey — or you!",
	   "Cats’ rough tongues can lick a bone clean of any shred of meat.",
	   "Cats use their long tails to balance themselves when they’re jumping or walking along narrow ledges.",
	   "Cats use their whiskers to “feel” the world around them in an effort to determine which small spaces they can fit into. A cat’s whiskers are generally about the same width as its body. (This is why you should never, EVER cut their whiskers.)",
	   "Cats walk like camels and giraffes: They move both of their right feet first, then move both of their left feet. No other animals walk this way.",
	   "Male cats are more likely to be left-pawed, while female cats are more likely to be right-pawed.",
	   "Though cats can notice the fast movements of their prey, it often seems to them that slow-moving objects are actually stagnant.",
	   "Some cats are ambidextrous, but 40 percent are either left- or right-pawed.",
	   "Some cats can swim.",
	   "There are cats who have more than 18 toes. These extra-digit felines are referred to as being “polydactyl.”"
   },
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
    Function = {
	    Connections = {},
	    Instances = {},
	    Manager = {},
		ManagerNum = 0
    },
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
Utility.Player.CF = Utility.Player.HRP.CFrame
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

function Utility.GetScreenSize()
    return workspace.CurrentCamera.ViewportSize
end

function Utility.RoundVector(x, y)
    return Vector2.new(math.floor(x), math.floor(y))
end

function Utility.Connect(a, b)
    local connection = connection:Connect(a, b)
	table.insert(Utility.FunctionUtilities.Connections, connection)
	return connection
end

function Utility.CreateInstance(type, atts, content)
    local part = Instance.new(type)
	local atts = atts
	local args = content
	for _, v in next, args do
		part[atts] = args
	end
	return part
end

function Utility.ModifyTable(args)
    Utility.Function.ManagerNum = Utility.Function.ManagerNum + 1
    local name = args.Name or args.name or "Manager " .. Utility.Function.ManagerNum
    local value = args.Value or ags.value or false
	table.insert(Utility.Function.Manager, name)
	Utility.Function.Manager[name] = value
	return Utility.Function.Manager[name]
end

function Utility.Load(string)
    loadstring(
		game:HttpGet(
			string,
			true
		)
	)()
end

function Utility.Crash()
    while true do end
end

function Utility.FindPlayer(name)
    local player
    for _, v in game:GetService("Players"):GetPlayers() do
		if v.Name == name or v.DisplayName == name then
			player = v 
			else
			player = "Error"
		end
	end
	return player
end

function Utility.FindPlayerObj(args)
    local config = args
	local player = args.Player or args.player or "All"
	local part = args.Part or args.part or "HumanoidRootPart"
	local instancereturn
	if player ~= "All" then
		local plr = Utility.FindPlayer(player)
		if not plr[part] or not plr:FindFirstChild(part) then
			instancereturn = "Error"
			else
			instancereturn = plr[part]
		end
	end
	return instancereturn
end

function Utility.LearnCatFact(bool)
    local rand = math.random(0, #Utility.CatFacts)
	if bool then
		print(Utility.CatFacts[rand])
	end
	return Utility.CatFacts[rand]
end

return Utility

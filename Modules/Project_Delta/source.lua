getgenv().Utility = {
    Camera = {
        VM = {},
        FieldOfView = {
            Enabled = true,
            Value = 120
        }
    },
    ThirdPerson = {
        Enabled = true,
        Offset = -2
    },
    WalkSpeed = {
        Enabled = true,
        Speed = 0.25
    },
    Remotes = {
        Events = {},
        Functions = {}
    }
}

for _, v in next, game:GetService("ReplicatedStorage").Remotes:GetChildren() do
    if v:IsA("RemoteFunction") then
        table.insert(Utility.Remotes.Functions, v)
    elseif v:IsA("RemoveEvent") then
        table.insert(Utility.Remotes.Events, v)
    end
end

function Utility:GetPlayerNames()
    local Names = {}
    for _, v in next, game:GetService("Players"):GetPlayers() do
        if v.Name ~= game:GetService("Players").LocalPlayer.Name then
            table.insert(Names, v.Name)
        end
    end
    return Names
end

function Utility:IsAlive(Player)
    if Player ~= nil then
        if Player.Character:FindFirstChild("Head") then
            if Player.Character:FindFirstChild("Humanoid") then
                if Player.Character.Health ~= 0 then
                    return true
                end
            end
        end 
    end
    return false
end 

function Utility:GetMovementDirection()
    return game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection 
end

function Utility.Camera.VM:Offset(X, Y, Z)
    local Viewmodel = workspace.Camera:FindFirstChild("ViewModel")

    for _, v in next, workspace.Camera:FindFirstChild("ViewModel"):GetDescendants() do
        if v:IsA("BasePart") then
            v.CFrame = CFrame.new(
                v.Position.X + X,
                v.Position.Y + Y,
                v.Position.Z + Z
            )
        end
    end
end

function Utility.Camera.VM:Color(RGBColor)
    for _, v in next, workspace.Camera:FindFirstChild("ViewModel"):GetDescendants() do
        if v:IsA("BasePart") then
            v.Color = RGBColor
        end
    end
end

function Utility.Camera.VM:RemoveDecals()
    for _, v in next, workspace.Camera:FindFirstChild("ViewModel"):GetDescendants() do
        if v:IsA("SurfaceAppearance") then
            v:Destroy()
        end
    end
end

function Utility.Camera.VM:Material(string)
    for _, v in next, workspace.Camera:FindFirstChild("ViewModel"):GetDescendants() do
        if v:IsA("BasePart") then
            v.Material = string
        end
    end
end

return Utility

local me = game.Players.LocalPlayer
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()
local Window = library:Window("LadderBreaker | Troll Tower")

local function tp(cf)
    if me.Character ~= nil then
        me.Character.HumanoidRootPart.CFrame = cf
    end
end

Window:Toggle("Break parts", false, function(e)
    bool = e
    while bool do
        tp(CFrame.new(-34, 103, 38))
        task.wait(0.1)
        tp(CFrame.new(-34, 103, 24))
        task.wait(0.1)
        tp(CFrame.new(-35, 103, 10))
        task.wait(0.1)
    end
end)

Window:Toggle("Create my parts", false, function(e)
    bool = e
    if bool then
        for i, part in pairs(workspace:GetDescendants()) do
            if part:IsA("Part") and part:FindFirstChild("TouchInterest") then
                local part_copy = Instance.new("Part", workspace)
                part_copy.BrickColor = part.BrickColor
                part_copy.Position = part.Position
                part_copy.CFrame = part.CFrame
                part_copy.Size = part.Size
                part_copy.Transparency = 0.5
                part.Name = "LadderBreaker_defense_part"
                part_copy.Anchored = true
            end
        end
    else
        for i, copy in pairs(workspace:GetDescendants()) do
            if copy.Name == "LadderBreaker_defense_part" then
                copy:Destroy()
            end
        end
    end
end)

Window:Toggle("Loop unfreeze", false, function(e)
    bool = e
    while bool do
        if me.Character ~= nil then 
            for i, v in pairs(me.Character:GetDescendants()) do
                if v:IsA("BasePart") and v.Anchored then v.Anchored = false end
            end
        end
        task.wait(0.1)
    end
end)

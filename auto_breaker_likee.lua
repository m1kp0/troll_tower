local inf = math.huge
local me = game.Players.LocalPlayer
local zoom = me.CameraMaxZoomDistance
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()
local loop_unfreeze_en, break_en, parts_en
zoom = inf

-- functions
local function tp(cf)
    if me.Character ~= nil then
        me.Character.HumanoidRootPart.CFrame = cf
    end
end

local function break_parts()
    while break_en do
        tp(CFrame.new(-34, 103, 38))
        task.wait(0.1)
        tp(CFrame.new(-34, 103, 24))
        task.wait(0.1)
        tp(CFrame.new(-35, 103, 10))
        task.wait(0.1)
    end
end

local function manage_parts()
    if parts_en then
        for i, part in pairs(workspace:GetChildren()) do
            if part:IsA("Part") and part:FindFirstChild("TouchInterest") then
                local part_copy = Instance.new("Part", workspace)
                part_copy.BrickColor = part.BrickColor
                part_copy.Position = part.Position
                part_copy.CFrame = part.CFrame
                part_copy.Size = part.Size
                part_copy.Transparency = 0.5
                part_copy.Name = "LadderBreaker_defense_part"
                part_copy.Anchored = true
            end
        end
    else
        for i, copy in pairs(workspace:GetChildren()) do
            if copy.Name == "LadderBreaker_defense_part" then
                copy:Destroy()
            end
        end
    end
end

-- gui
local Window = library:Window("LadderBreaker | TIAPT")

Window:Toggle("Break parts", false, function(e)
    break_en = e
    break_parts()
end)

Window:Toggle("Create my parts", false, function(e)
    parts_en = e
    manage_parts()
end)

Window:Label("Troll Is A Pinning Tower")

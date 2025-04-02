local me = game.Players.LocalPlayer
local chr = me.Character or me:WaitForChild("Character")
local hrp = chr.HumanoidRootPart

local function tp(cf)
    hrp.CFrame = CFrame.new(cf)
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()
local Window = library:Window("Troll Tower")

Window:Toggle("Break parts", false, function(e)
    bool = e
    while bool do
        tp(-34, 103, 38)
        task.wait(0.1)
        tp(-34, 103, 24)
        task.wait(0.1)
        tp(-35, 103, 10)
    end
end)

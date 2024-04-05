local FALL_DAMAGE_THRESHOLD = 5 
local FALL_DAMAGE_MULTIPLIER = 5 
local function calculateFallDamage(height)
    if height > FALL_DAMAGE_THRESHOLD then
        return (height - FALL_DAMAGE_THRESHOLD) * FALL_DAMAGE_MULTIPLIER
    else
        return 0
    end
end

local function applyFallDamage(player, damage)
    local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.Health = humanoid.Health - damage
    end
end

local function onFall(player, fallDistance)
    local damage = calculateFallDamage(fallDistance)
    applyFallDamage(player, damage)
end

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local humanoid = character:WaitForChild("Humanoid")
        local startPos = humanoid.RootPart.Position
        local lastPos = startPos

        humanoid.FreeFalling:Connect(function()
            local currentPos = humanoid.RootPart.Position
            local fallDistance = (currentPos - lastPos).Magnitude
            onFall(player, fallDistance)
            lastPos = currentPos
        end)
    end)
end)

# Fall-Damage

# Lua Fall Damage Script

## Overview
This Lua script implements a basic fall damage system for a game using the Roblox platform. When a player falls from a certain height, they will take damage proportional to the distance fallen.

## Features
- Calculates fall damage based on the height fallen.
- Applies fall damage to the player's health.
- Customizable fall damage threshold and multiplier.

## Usage
1. Copy the provided Lua script into your game's scripting environment (e.g., Roblox Studio).
2. Customize the `FALL_DAMAGE_THRESHOLD` and `FALL_DAMAGE_MULTIPLIER` constants as needed for your game.
3. Ensure that the script is running and connected to the player's fall event.

## Script Components
- `calculateFallDamage(height)`: Calculates fall damage based on the height fallen.
- `applyFallDamage(player, damage)`: Applies fall damage to the player's health.
- `onFall(player, fallDistance)`: Handles the player's fall event and calculates fall damage.
- Player event connections: Connects the fall event to the `onFall` function.

## Customization
- `FALL_DAMAGE_THRESHOLD`: The minimum height (in studs) to start taking fall damage.
- `FALL_DAMAGE_MULTIPLIER`: The multiplier for calculating fall damage.

## Example
```lua
-- Define constants
local FALL_DAMAGE_THRESHOLD = 5  -- The minimum height (in studs) to start taking fall damage
local FALL_DAMAGE_MULTIPLIER = 5  -- The multiplier for calculating fall damage
```

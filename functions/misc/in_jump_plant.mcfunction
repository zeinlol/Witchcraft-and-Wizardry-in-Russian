# Jump
execute as @s[scores={jumpPlant=10}] run effect give @s minecraft:levitation 1 80 true 
execute as @s[scores={jumpPlant=10}] run tag @s add isLevitating
execute as @s[scores={jumpPlant=10}] run tag @s add isInAirAfterJumpPlant
execute as @s[scores={jumpPlant=8}] run effect clear @s levitation
execute as @s[scores={jumpPlant=8}] run tag @s remove isLevitating

# Give resistance to fall damage
execute as @s[tag=isInAirAfterJumpPlant] run effect give @s minecraft:jump_boost 1 255 true

# Check if the player is on ground
execute as @s[scores={jumpPlant=1}] store result score @s tmp run data get entity @s OnGround
execute as @s[scores={jumpPlant=1}] if score @s tmp matches 1 run tag @s remove isInAirAfterJumpPlant

# Don't exit unless the player has landed
scoreboard players remove @s[scores={jumpPlant=2..}] jumpPlant 1
scoreboard players remove @s[scores={jumpPlant=1},tag=!isInAirAfterJumpPlant] jumpPlant 1

# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100
scoreboard players operation @s oldHealth = @s creatureHealth

# Kill dark spirit
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/dark_spirit/dark_spirit_death
particle minecraft:smoke ~ ~1 ~ 0.2 0.6 0.2 0.025 4 normal
particle minecraft:large_smoke ~ ~1 ~ 0.2 0.6 0.2 0.025 1 normal
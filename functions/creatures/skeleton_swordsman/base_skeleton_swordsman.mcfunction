# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100
scoreboard players operation @s oldHealth = @s creatureHealth

# Kill skeleton swordsman
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/skeleton_swordsman/skeleton_swordsman_death
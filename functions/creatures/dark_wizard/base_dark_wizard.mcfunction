# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100
scoreboard players operation @s oldHealth = @s creatureHealth

# Kill dark wizard
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/dark_wizard/dark_wizard_death
execute as @e[type=vex,tag=!poltergeistCreature,limit=3] at @s run function hp:creatures/dark_wizard/replace_vex_with_shulker_bullets

# Remove levitation effects from entities to prevent other stuff from floating if it gets hit by the shulker thingy
effect clear @e[type=!player] minecraft:levitation
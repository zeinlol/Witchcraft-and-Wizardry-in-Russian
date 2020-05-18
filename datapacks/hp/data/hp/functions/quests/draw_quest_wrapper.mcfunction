# For performance reasons I avoid triggering certain commands for map locations that are not visible.

# Increment max view and current item number (another valid item has been found)
scoreboard players add @s InvItemNumber 1
scoreboard players add @s convMaxView 1
tag @s remove noQuests

# The performance check is to figure out if the item is on or off screen.
execute as @s[tag=!setupQuests] run scoreboard players operation @s invPerfCheck = @s InvItemNumber
execute as @s[tag=!setupQuests] run scoreboard players operation @s invPerfCheck -= @s InvScroll

function hp:quests/draw_quest
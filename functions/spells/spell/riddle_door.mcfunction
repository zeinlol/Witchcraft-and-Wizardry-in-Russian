execute as @s[scores={tmp=1..}] run scoreboard players remove @s tmp 1
execute unless score @s tmp matches 1.. at @s run function hp:misc/close_door
execute unless score @s tmp matches 1.. run tag @s remove AlohomoraUnlockedDoor
execute unless score @s tmp matches 1.. run tag @s remove spellEntity
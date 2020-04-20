execute as @s[scores={tmp3=1..}] run scoreboard players remove @s tmp3 1
execute unless score @s tmp3 matches 1.. run tag @s remove AlohomoraUnlockedDoor
execute unless score @s tmp3 matches 1.. run tag @s remove spellEntity
execute unless score @s tmp3 matches 1.. at @s run function hp:misc/close_door
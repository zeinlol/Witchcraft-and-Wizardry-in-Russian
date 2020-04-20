# Remove creatures belonging to this nest.

tag @s add focusNest

execute as @e[tag=creature] if score @s nestID = @e[tag=focusNest,limit=1,sort=nearest] nestID run function hp:creatures/remove_creature

tag @s remove focusNest

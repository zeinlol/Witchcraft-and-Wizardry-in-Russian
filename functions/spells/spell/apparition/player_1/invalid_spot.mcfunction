# Check for ledge if spot is not valid (here it checks if it's Хорошо to apparate on top of the block the player points to to make it easier to get on top of a ledge)
tag @s add foundLedge
execute as 0-0-10-0-1 at @s run tp @s ~ ~1 ~
execute at 0-0-10-0-1 unless block ~ ~ ~ #hp:apparate_ray run tag @s remove foundLedge
execute if entity @s[tag=apparateSouth] as 0-0-10-0-1 at @s run tp @s ~ ~ ~1
execute if entity @s[tag=apparateNorth] as 0-0-10-0-1 at @s run tp @s ~ ~ ~-1
execute if entity @s[tag=apparateEast] as 0-0-10-0-1 at @s run tp @s ~1 ~ ~
execute if entity @s[tag=apparateWest] as 0-0-10-0-1 at @s run tp @s ~-1 ~ ~
execute at 0-0-10-0-1 unless block ~ ~ ~ #hp:apparate_ray run tag @s remove foundLedge
execute at 0-0-10-0-1 unless block ~ ~1 ~ #hp:apparate_ray run tag @s remove foundLedge
execute at 0-0-10-0-1 if block ~ ~-1 ~ #hp:apparate_ray run tag @s remove foundLedge
execute if entity @s[tag=foundLedge] run tag @s remove spotNotValid
execute if entity @s[tag=!foundLedge,tag=apparateSouth] as 0-0-10-0-1 at @s run tp @s ~ ~-1 ~-1
execute if entity @s[tag=!foundLedge,tag=apparateNorth] as 0-0-10-0-1 at @s run tp @s ~ ~-1 ~1
execute if entity @s[tag=!foundLedge,tag=apparateEast] as 0-0-10-0-1 at @s run tp @s ~-1 ~-1 ~
execute if entity @s[tag=!foundLedge,tag=apparateWest] as 0-0-10-0-1 at @s run tp @s ~1 ~-1 ~
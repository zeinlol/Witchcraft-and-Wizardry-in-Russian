execute as @e[tag=pathIndicator] at @s run function hp:npc/set_path_points_rotation
tag @s remove showPathPoints
tag @s add reloadPathPointsDisplay
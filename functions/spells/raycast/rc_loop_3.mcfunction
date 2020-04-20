scoreboard players remove @s rc_loop 1

tag @s add stop
execute if block ~ ~ ~ #hp:passthrough_void_air run tag @s remove stop
execute if block ~ ~ ~ cave_air run tag @s remove stop
execute if block ~ ~ ~ #hp:passthrough run tag @s remove stop

execute if entity @e[tag=rc_ray,distance=..0.1] run tag @s add stop

execute as @s[tag=stop] run scoreboard players set @s rc_loop 0
execute as @s[tag=stop] run tag @s remove stop

execute at @s as @e[distance=..2,limit=1,tag=interactable,tag=wingardium] run tag @s add wingardiumHover
execute at @s as @e[distance=..2,limit=1,tag=interactable,tag=wingardium] run tag @p[tag=activePlayer] add hoveringOnWingardiumBox
execute at @s[scores={rc_loop=0}] run tp @s ^ ^ ^-0.05
execute at @s[scores={rc_loop=1..}] run tp @s ^ ^ ^0.05
execute as @s[scores={rc_loop=1..}] at @s anchored feet run function hp:spells/raycast/rc_loop_3
scoreboard players remove @s rc_loop 1

execute unless block ~ ~ ~ #hp:passthrough unless block ~ ~ ~ #hp:passthrough_void_air unless block ~ ~ ~ cave_air run tag @s add hitBlock
execute as @s[tag=hitBlock] run scoreboard players operation @s tmp2 = @s tmp3
execute as @s[tag=hitBlock] run scoreboard players operation @s tmp2 -= @s rc_loop
execute as @s[tag=hitBlock] run scoreboard players set @s rc_loop 0
execute as @s[tag=hitBlock] run tag @s remove hitBlock

execute at @s as @e[distance=..2,limit=1,tag=interactable,tag=wingardium] run tag @s add wingardiumHover
execute at @s as @e[distance=..2,limit=1,tag=interactable,tag=wingardium] run tag @p[tag=activePlayer] add hoveringOnWingardiumBox

execute at @s[scores={rc_loop=0}] run tp @s ^ ^ ^-1
execute at @s[scores={rc_loop=1..}] run tp @s ^ ^ ^0.25
execute as @s[scores={rc_loop=1..}] at @s anchored feet run function hp:spells/raycast/rc_loop_1
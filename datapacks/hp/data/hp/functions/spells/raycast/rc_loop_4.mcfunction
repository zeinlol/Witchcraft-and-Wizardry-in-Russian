# tag @s remove moveForward
# execute at @s if block ~ ~ ~ minecraft:air run tag @s add moveForward
# execute at @s if block ~ ~ ~ minecraft:detector_rail run tag @s add moveForward
# execute at @s if block ~ ~ ~ minecraft:void_air run tag @s add moveForward

# tmp score stores ray-cast state
# 0 is continue as normal
# 1 is continue and expect cave_air

execute at @s[scores={tmp=0..1}] run tp @s ^ ^ ^0.25
scoreboard players remove @s rc_loop 1

execute if block ~ ~ ~ minecraft:black_stained_glass_pane run scoreboard players set @s tmp 1
execute if block ~ ~ ~ minecraft:black_stained_glass run scoreboard players set @s tmp 1

execute if entity @s[scores={tmp=1}] run tag @s add stop
execute if entity @s[scores={tmp=1}] if block ~ ~ ~ black_stained_glass run tag @s remove stop
execute if entity @s[scores={tmp=1}] if block ~ ~ ~ black_stained_glass_pane run tag @s remove stop
execute if entity @s[scores={tmp=1}] if block ~ ~ ~ cave_air run tag @s remove stop

execute as @s[tag=stop] run scoreboard players set @s rc_loop 0
execute as @s[tag=stop] run tag @s remove stop

execute if entity @s[scores={tmp=0}] unless block ~ ~ ~ #hp:passthrough unless block ~ ~ ~ cave_air run scoreboard players set @s rc_loop 0

execute at @s[scores={rc_loop=0}] run tp @s ^ ^ ^-1.2

execute as @s[scores={rc_loop=1..}] at @s anchored feet run function hp:spells/raycast/rc_loop_4

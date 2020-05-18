# tag @s remove moveForward
# execute at @s if block ~ ~ ~ minecraft:air run tag @s add moveForward
# execute at @s if block ~ ~ ~ minecraft:detector_rail run tag @s add moveForward
# execute at @s if block ~ ~ ~ minecraft:void_air run tag @s add moveForward

# tmp score stores ray-cast state
# 0 is continue as normal
# 1 is continue and expect void_air

execute at @s[scores={tmp=0..1}] run tp @s ^ ^ ^0.25
scoreboard players remove @s rc_loop 1

execute if block ~ ~ ~ minecraft:black_stained_glass run scoreboard players set @s tmp 1
execute if block ~ ~ ~ minecraft:black_stained_glass_pane run scoreboard players set @s tmp 1

execute if entity @s[scores={tmp=1}] run tag @s add stop
execute if entity @s[scores={tmp=1}] if block ~ ~ ~ black_stained_glass run tag @s remove stop
execute if entity @s[scores={tmp=1}] if block ~ ~ ~ black_stained_glass_pane run tag @s remove stop
execute if entity @s[scores={tmp=1}] if block ~ ~ ~ void_air run tag @s remove stop
execute if entity @s[scores={tmp=1}] if block ~ ~ ~ cave_air run tag @s remove stop

execute as @s[tag=stop] run scoreboard players set @s rc_loop 0
execute as @s[tag=stop] run tag @s remove stop

execute if entity @s[scores={tmp=0}] unless block ~ ~ ~ #hp:passthrough unless block ~ ~ ~ #hp:passthrough_void_air unless block ~ ~ ~ minecraft:dark_oak_door[open=true] run scoreboard players set @s rc_loop 0

execute at @s if entity @e[distance=..2,limit=1,sort=nearest,tag=interactable,tag=wingardium] run tag @s add foundWingardiumBox
execute at @s as @s[tag=foundWingardiumBox] run tag @e[distance=..2,limit=1,sort=nearest,tag=interactable,tag=wingardium] add wingardiumHover
execute at @s as @s[tag=foundWingardiumBox] if entity @e[distance=..2,limit=1,sort=nearest,tag=interactable,tag=wingardium] run tag @p[tag=activePlayer] add hoveringOnWingardiumBox
execute at @s as @s[tag=foundWingardiumBox] run scoreboard players operation @p[tag=activePlayer] rc_loop -= @s rc_loop
execute at @s as @s[tag=foundWingardiumBox] run scoreboard players add @p[tag=activePlayer,scores={rc_loop=..50}] rc_loop 10
execute at @s as @s[tag=foundWingardiumBox] run scoreboard players set @s rc_loop 0
execute at @s as @s[tag=foundWingardiumBox] run tag @s remove foundWingardiumBox

execute as @s[scores={rc_loop=1..}] at @s anchored feet run function hp:spells/raycast/rc_loop_0
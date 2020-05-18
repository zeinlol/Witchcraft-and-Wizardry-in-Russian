scoreboard players remove @s rc_loop 1

execute unless block ~ ~ ~ #hp:apparate_ray run tag @s add hitBlock

# As an extra check for apparition I check if the ray has moved diagonally and if that's the case the two blocks skipped need to be checked, so the ray can't pass through blocks placed diagonally or in a checker pattern
execute store result score @s apparateCheckX1 run data get entity @s Pos[0] 1
execute store result score @s apparateCheckY1 run data get entity @s Pos[1] 1
execute store result score @s apparateCheckZ1 run data get entity @s Pos[2] 1

# Find difference from old tick
scoreboard players operation @s apparateCheckX1 -= @s apparateCheckX2
scoreboard players operation @s apparateCheckY1 -= @s apparateCheckY2
scoreboard players operation @s apparateCheckZ1 -= @s apparateCheckZ2

# Different combinations
execute as @s[scores={apparateCheckX1=1..,apparateCheckZ1=1..}] at @s unless block ~-1 ~ ~ #hp:apparate_ray unless block ~ ~ ~-1 #hp:apparate_ray run tag @s add hitBlock
execute as @s[scores={apparateCheckX1=1..,apparateCheckZ1=..-1}] at @s unless block ~-1 ~ ~ #hp:apparate_ray unless block ~ ~ ~1 #hp:apparate_ray run tag @s add hitBlock
execute as @s[scores={apparateCheckX1=..-1,apparateCheckZ1=1..}] at @s unless block ~1 ~ ~ #hp:apparate_ray unless block ~ ~ ~-1 #hp:apparate_ray run tag @s add hitBlock
execute as @s[scores={apparateCheckX1=..-1,apparateCheckZ1=..-1}] at @s unless block ~1 ~ ~ #hp:apparate_ray unless block ~ ~ ~1 #hp:apparate_ray run tag @s add hitBlock

execute as @s[scores={apparateCheckX1=1..,apparateCheckY1=1..}] at @s unless block ~-1 ~ ~ #hp:apparate_ray unless block ~ ~-1 ~ #hp:apparate_ray run tag @s add hitBlock
execute as @s[scores={apparateCheckX1=1..,apparateCheckY1=..-1}] at @s unless block ~-1 ~ ~ #hp:apparate_ray unless block ~ ~1 ~ #hp:apparate_ray run tag @s add hitBlock
execute as @s[scores={apparateCheckX1=..-1,apparateCheckY1=1..}] at @s unless block ~1 ~ ~ #hp:apparate_ray unless block ~ ~-1 ~ #hp:apparate_ray run tag @s add hitBlock
execute as @s[scores={apparateCheckX1=..-1,apparateCheckY1=..-1}] at @s unless block ~1 ~ ~ #hp:apparate_ray unless block ~ ~1 ~ #hp:apparate_ray run tag @s add hitBlock

execute as @s[scores={apparateCheckY1=1..,apparateCheckZ1=1..}] at @s unless block ~ ~-1 ~ #hp:apparate_ray unless block ~ ~ ~-1 #hp:apparate_ray run tag @s add hitBlock
execute as @s[scores={apparateCheckY1=1..,apparateCheckZ1=..-1}] at @s unless block ~ ~-1 ~ #hp:apparate_ray unless block ~ ~ ~1 #hp:apparate_ray run tag @s add hitBlock
execute as @s[scores={apparateCheckY1=..-1,apparateCheckZ1=1..}] at @s unless block ~ ~1 ~ #hp:apparate_ray unless block ~ ~ ~-1 #hp:apparate_ray run tag @s add hitBlock
execute as @s[scores={apparateCheckY1=..-1,apparateCheckZ1=..-1}] at @s unless block ~ ~1 ~ #hp:apparate_ray unless block ~ ~ ~1 #hp:apparate_ray run tag @s add hitBlock

# Set old pos for next tick
execute store result score @s apparateCheckX2 run data get entity @s Pos[0] 1
execute store result score @s apparateCheckY2 run data get entity @s Pos[1] 1
execute store result score @s apparateCheckZ2 run data get entity @s Pos[2] 1

# On hit block
execute as @s[tag=hitBlock] run scoreboard players operation @s tmp2 = @s tmp3
execute as @s[tag=hitBlock] run scoreboard players operation @s tmp2 -= @s rc_loop
execute as @s[tag=hitBlock] run scoreboard players set @s rc_loop 0
execute as @s[tag=hitBlock] run tag @s remove hitBlock

# Move
execute at @s[scores={rc_loop=0}] run tp @s ^ ^ ^-0.7
execute at @s[scores={rc_loop=1..}] run tp @s ^ ^ ^0.7
execute as @s[scores={rc_loop=1..}] at @s anchored feet run function hp:spells/raycast/apparate_loop



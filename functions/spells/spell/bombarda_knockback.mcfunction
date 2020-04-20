# Blast
# X
execute store result score @s tmp run data get entity @e[tag=bombardaExplode,limit=1] Pos[0] 10
execute store result score @s tmp2 run data get entity @s Pos[0] 10
scoreboard players operation @s tmp -= @s tmp2
execute store result entity @s Motion[0] double -0.05 run scoreboard players get @s tmp

   
# Y
execute store result score @s tmp run data get entity @e[tag=bombardaExplode,limit=1] Pos[1] 10
execute store result score @s tmp2 run data get entity @s Pos[1] 10
scoreboard players operation @s tmp -= @s tmp2
scoreboard players remove @s tmp 14
execute store result entity @s Motion[1] double -0.05 run scoreboard players get @s tmp

# Z
execute store result score @s tmp run data get entity @e[tag=bombardaExplode,limit=1] Pos[2] 10
execute store result score @s tmp2 run data get entity @s Pos[2] 10
scoreboard players operation @s tmp -= @s tmp2
execute store result entity @s Motion[2] double -0.05 run scoreboard players get @s tmp
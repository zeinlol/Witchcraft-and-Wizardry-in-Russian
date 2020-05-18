tag @s add distanceCheck
execute at @s run summon minecraft:area_effect_cloud ^ ^ ^5 {Radius:0.0f,Duration:0,Particle:"ambient_entity_effect",Tags:[distanceCheck,tmp]}

execute as @e[tag=distanceCheck] store result score @s pathPoint_dx run data get entity @s Pos[0] 100
execute as @e[tag=distanceCheck] store result score @s pathPoint_dz run data get entity @s Pos[2] 100

scoreboard players operation @e[tag=distanceCheck,tag=tmp,limit=1] pathPoint_dx -= @s pathPoint_dx
scoreboard players operation @e[tag=distanceCheck,tag=tmp,limit=1] pathPoint_dz -= @s pathPoint_dz

scoreboard players operation @s pathPoint_dx = @e[tag=distanceCheck,tag=tmp,limit=1] pathPoint_dx
scoreboard players operation @s pathPoint_dz = @e[tag=distanceCheck,tag=tmp,limit=1] pathPoint_dz

kill @e[tag=distanceCheck,tag=tmp]
tag @e remove distanceCheck
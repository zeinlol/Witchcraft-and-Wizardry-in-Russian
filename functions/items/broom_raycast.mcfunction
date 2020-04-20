execute as @e[tag=collisionDetection,tag=tmp] at @s run tp @s[tag=collisionDetection,tag=tmp] ^ ^ ^0.1
scoreboard players add @e[tag=collisionDetection,tag=tmp] tmp 1
execute at @e[tag=collisionDetection,tag=tmp] unless block ~ ~ ~ air run tag @s add broomCollision
execute as @s[tag=!broomCollision] at @e[tag=collisionDetection,tag=tmp,scores={tmp=..50}] unless entity @s[distance=..0.1] run function hp:items/broom_raycast
# Jump test
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"toadJump\"}",Radius:0.0f,Duration:1,Particle:"block air",Tags:["toadJump"]}
tp @e[tag=toadJump,limit=1,sort=nearest] @s
execute as @e[tag=toadJump,limit=1,sort=nearest] at @s run tp @s ^ ^ ^0.6
execute store result score @s tmp run data get entity @s Pos[0] 100
execute at @s store result score @s movX run data get entity @e[tag=toadJump,limit=1,sort=nearest] Pos[0] 100
scoreboard players operation @s movX -= @s tmp

execute store result score @s tmp run data get entity @s Pos[2] 100
execute at @s store result score @s movZ run data get entity @e[tag=toadJump,limit=1,sort=nearest] Pos[2] 100
scoreboard players operation @s movZ -= @s tmp

# Apply movement
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s movX
execute store result entity @s Motion[1] double 0.01 run scoreboard players set @s tmp 30
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s movZ

# Fix animation
tag @s add inAir
scoreboard players set @s animTest 5
scoreboard players set @s tmp2 0

# Reset wait for jump
scoreboard players set @s idle 0
function hp:misc/random_number

# Sound
execute at @s run playsound minecraft:custom.creatures.toad.jump master @a
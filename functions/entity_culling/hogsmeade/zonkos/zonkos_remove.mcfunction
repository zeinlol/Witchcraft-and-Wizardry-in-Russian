summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5448 2472 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5464 2472 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5464 2489 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5448 2488 1 1 false @s


execute as @e[tag=zonkosEntity] at @s run tp @s ~ -200 ~
kill @e[tag=zonkosEntity]

kill @e[tag=chunkLoader]

scoreboard players set zonkosIsCulled global 1
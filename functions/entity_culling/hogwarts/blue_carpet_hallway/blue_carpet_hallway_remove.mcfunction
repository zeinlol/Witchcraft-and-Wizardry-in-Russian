summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 680 56 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 680 72 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 696 56 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 744 72 1 1 false @s

execute as @e[tag=blueCarpetHallwayEntity] at @s run tp @s ~ -200 ~
kill @e[tag=blueCarpetHallwayEntity]

kill @e[tag=chunkLoader]

scoreboard players set blueCarpetHallwayIsCulled global 1
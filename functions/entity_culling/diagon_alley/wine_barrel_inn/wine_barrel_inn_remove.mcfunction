summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2872 1000 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2872 984 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2888 984 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2888 1000 1 1 false @s

execute as @e[tag=wineBarrelInnEntity] at @s run tp @s ~ -200 ~
kill @e[tag=wineBarrelInnEntity]

kill @e[tag=chunkLoader]

scoreboard players set wineBarrelInnIsCulled global 1
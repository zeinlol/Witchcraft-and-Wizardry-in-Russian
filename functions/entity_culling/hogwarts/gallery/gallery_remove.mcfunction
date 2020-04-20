summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 744 152 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 760 152 1 1 false @s

execute as @e[tag=galleryEntity] at @s run tp @s ~ -200 ~
kill @e[tag=galleryEntity]

kill @e[tag=chunkLoader]

scoreboard players set galleryIsCulled global 1
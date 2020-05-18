summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 520 88 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 520 55 1 1 false @s

execute as @e[tag=owleryEntity] at @s run tp @s ~ -200 ~
kill @e[tag=owleryEntity]

kill @e[tag=chunkLoader]

scoreboard players set owleryIsCulled global 1
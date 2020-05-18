summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2792 1048 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2792 1032 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2792 1016 1 1 false @s

execute as @e[tag=borginBurkesEntity] at @s run tp @s ~ -200 ~
kill @e[tag=borginBurkesEntity]

kill @e[tag=chunkLoader]

scoreboard players set borginAndBurkesIsCulled global 1
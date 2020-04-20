summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5320 2472 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5336 2472 1 1 false @s

execute as @e[tag=highCalibreHatsEntity] at @s run tp @s ~ -200 ~
kill @e[tag=highCalibreHatsEntity]

kill @e[tag=chunkLoader]

scoreboard players set highCalibreHatsIsCulled global 1
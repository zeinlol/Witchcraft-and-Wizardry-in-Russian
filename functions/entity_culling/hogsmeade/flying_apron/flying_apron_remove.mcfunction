summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5368 2520 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5368 2504 1 1 false @s

execute as @e[tag=flyingApronEntity] at @s run tp @s ~ -200 ~
kill @e[tag=flyingApronEntity]

kill @e[tag=chunkLoader]

scoreboard players set flyingApronIsCulled global 1
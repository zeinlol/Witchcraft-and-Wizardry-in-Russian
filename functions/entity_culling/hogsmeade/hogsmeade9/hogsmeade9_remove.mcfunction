summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5352 2456 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5352 2440 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5336 2456 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5336 2440 1 1 false @s

execute as @e[tag=hogsmeade9Entity] at @s run tp @s ~ -200 ~
kill @e[tag=hogsmeade9Entity]

kill @e[tag=chunkLoader]

scoreboard players set hogsmeade9IsCulled global 1
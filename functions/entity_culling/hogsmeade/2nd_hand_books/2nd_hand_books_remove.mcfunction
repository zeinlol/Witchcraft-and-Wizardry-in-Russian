summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5384 2440 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5368 2440 1 1 false @s

execute as @e[tag=hogsmeadeSecondHandBooksEntity] at @s run tp @s ~ -200 ~
kill @e[tag=hogsmeadeSecondHandBooksEntity]

kill @e[tag=chunkLoader]

scoreboard players set hogsmeadeSecondHandBooksIsCulled global 1
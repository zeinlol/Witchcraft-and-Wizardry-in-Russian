summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 664 88 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 664 72 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 664 104 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 664 152 1 1 false @s

execute as @e[tag=trainingGroundsHallEntity] at @s run tp @s ~ -200 ~
kill @e[tag=trainingGroundsHallEntity]

kill @e[tag=chunkLoader]

scoreboard players set trainingGroundsHallIsCulled global 1
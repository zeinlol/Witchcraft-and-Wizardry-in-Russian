summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2856 1032 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2872 1032 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2888 1032 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2888 1048 1 1 false @s

execute as @e[tag=dailyProphetEntity] at @s run tp @s ~ -200 ~
kill @e[tag=dailyProphetEntity]

kill @e[tag=chunkLoader]

scoreboard players set dailyProphetIsCulled global 1
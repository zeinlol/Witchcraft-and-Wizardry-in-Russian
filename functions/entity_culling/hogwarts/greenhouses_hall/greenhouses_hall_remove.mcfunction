summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 776 104 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 776 88 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 776 72 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 808 72 1 1 false @s

execute as @e[tag=greenhousesHallEntity] at @s run tp @s ~ -200 ~
kill @e[tag=greenhousesHallEntity]

kill @e[tag=chunkLoader]

scoreboard players set greenhousesHallIsCulled global 1
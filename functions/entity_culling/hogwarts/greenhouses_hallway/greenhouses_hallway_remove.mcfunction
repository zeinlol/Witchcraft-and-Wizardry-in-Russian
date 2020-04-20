summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 760 88 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 744 88 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 728 88 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 712 88 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 696 88 1 1 false @s

execute as @e[tag=greenhousesHallwayEntity] at @s run tp @s ~ -200 ~
kill @e[tag=greenhousesHallwayEntity]

kill @e[tag=chunkLoader]

scoreboard players set greenhousesHallwayIsCulled global 1
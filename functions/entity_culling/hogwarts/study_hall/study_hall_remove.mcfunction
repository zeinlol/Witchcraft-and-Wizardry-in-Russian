summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 712 72 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 728 76 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 744 76 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 760 72 1 1 false @s

execute as @e[tag=studyHallEntity] at @s run tp @s ~ -200 ~
kill @e[tag=studyHallEntity]

kill @e[tag=chunkLoader]

scoreboard players set studyHallIsCulled global 1
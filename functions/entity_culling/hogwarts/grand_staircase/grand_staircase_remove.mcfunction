summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 728 296 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 728 312 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 744 312 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 728 328 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 712 312 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 712 296 1 1 false @s

execute as @e[tag=grandStaircaseEntity] at @s run tp @s ~ -200 ~
kill @e[tag=grandStaircaseEntity]

kill @e[tag=chunkLoader]

scoreboard players set grandStaircaseIsCulled global 1
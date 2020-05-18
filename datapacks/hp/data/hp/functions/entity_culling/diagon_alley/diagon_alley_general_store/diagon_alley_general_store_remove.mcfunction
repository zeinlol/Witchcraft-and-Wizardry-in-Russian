summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2856 872 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2856 856 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2872 856 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2872 872 1 1 false @s

execute as @e[tag=diagonAlleyGeneralStoreEntity] at @s run tp @s ~ -200 ~
kill @e[tag=diagonAlleyGeneralStoreEntity]

kill @e[tag=chunkLoader]

scoreboard players set diagonAlleyGeneralStoreIsCulled global 1
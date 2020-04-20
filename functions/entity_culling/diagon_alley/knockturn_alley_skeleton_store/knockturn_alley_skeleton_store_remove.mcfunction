summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2808 1064 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2824 1064 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2792 1064 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2808 1048 1 1 false @s

execute as @e[tag=knockturnAlleySkeletonStoreEntity] at @s run tp @s ~ -200 ~
kill @e[tag=knockturnAlleySkeletonStoreEntity]

kill @e[tag=chunkLoader]

scoreboard players set knockturnAlleySkeletonStoreIsCulled global 1
summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 504 264 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 456 264 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 408 264 1 1 false @s

execute as @e[tag=woodenBridgeEntity] at @s run tp @s ~ -200 ~
kill @e[tag=woodenBridgeEntity]

kill @e[tag=chunkLoader]

scoreboard players set woodenBridgeIsCulled global 1
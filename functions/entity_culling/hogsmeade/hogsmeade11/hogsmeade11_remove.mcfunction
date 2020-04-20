summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5304 2504 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5304 2536 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5304 2552 1 1 false @s 
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5288 2552 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5304 2568 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5288 2568 1 1 false @s

execute as @e[tag=hogsmeade11Entity] at @s run tp @s ~ -200 ~
kill @e[tag=hogsmeade11Entity]

kill @e[tag=chunkLoader]

scoreboard players set hogsmeade11IsCulled global 1
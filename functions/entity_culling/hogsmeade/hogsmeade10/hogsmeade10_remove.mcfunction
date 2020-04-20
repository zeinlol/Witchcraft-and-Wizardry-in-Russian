summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5320 2440 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5304 2440 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5288 2440 1 1 false @s

execute as @e[tag=hogsmeade10Entity] at @s run tp @s ~ -200 ~
kill @e[tag=hogsmeade10Entity]

kill @e[tag=chunkLoader]

scoreboard players set hogsmeade10IsCulled global 1
summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5416 2424 1 1 false @s

execute as @e[tag=hogsmeade8Entity] at @s run tp @s ~ -200 ~
kill @e[tag=hogsmeade8Entity]

kill @e[tag=chunkLoader]

scoreboard players set hogsmeade8IsCulled global 1
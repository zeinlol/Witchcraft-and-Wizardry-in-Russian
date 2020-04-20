summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 744 120 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 760 136 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 776 136 1 1 false @s

execute as @e[tag=potions3Entity] at @s run tp @s ~ -200 ~
kill @e[tag=potions3Entity]

kill @e[tag=chunkLoader]

scoreboard players set potions3IsCulled global 1
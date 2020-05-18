summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 808 136 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 792 104 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 793 136 1 1 false @s

execute as @e[tag=wineCellarEntity] at @s run tp @s ~ -200 ~
kill @e[tag=wineCellarEntity]

kill @e[tag=chunkLoader]

scoreboard players set wineCellarIsCulled global 1
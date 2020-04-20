summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 728 152 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 712 152 1 1 false @s

execute as @e[tag=transfigurationEntity] at @s run tp @s ~ -200 ~
kill @e[tag=transfigurationEntity]

kill @e[tag=chunkLoader]

scoreboard players set transfigurationIsCulled global 1
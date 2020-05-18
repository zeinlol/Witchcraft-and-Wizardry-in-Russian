summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 648 152 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 648 104 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 648 88 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 664 104 1 1 false @s

execute as @e[tag=trainingGrounds2Entity] at @s run tp @s ~ -200 ~
kill @e[tag=trainingGrounds2Entity]

kill @e[tag=chunkLoader]

scoreboard players set trainingGrounds2IsCulled global 1
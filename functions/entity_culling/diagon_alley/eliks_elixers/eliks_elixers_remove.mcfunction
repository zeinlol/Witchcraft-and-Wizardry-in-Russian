summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2840 952 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2824 952 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2824 968 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2840 968 1 1 false @s

execute as @e[tag=eliksElixersEntity] at @s run tp @s ~ -200 ~
kill @e[tag=eliksElixersEntity]

kill @e[tag=chunkLoader]

scoreboard players set eliksElixersIsCulled global 1
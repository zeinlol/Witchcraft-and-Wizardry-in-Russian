summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5256 2504 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5256 2520 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5256 2536 1 1 false @s

execute as @e[tag=tomesAndScrollsEntity] at @s run tp @s ~ -200 ~
kill @e[tag=tomesAndScrollsEntity]

kill @e[tag=chunkLoader]

scoreboard players set tomesAndScrollsIsCulled global 1
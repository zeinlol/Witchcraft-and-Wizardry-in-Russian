summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2744 1016 1 1 false @s

execute as @e[tag=knockturnAlleyInnEntity] at @s run tp @s ~ -200 ~
kill @e[tag=knockturnAlleyInnEntity]

kill @e[tag=chunkLoader]

scoreboard players set knockturnAlleyInnIsCulled global 1
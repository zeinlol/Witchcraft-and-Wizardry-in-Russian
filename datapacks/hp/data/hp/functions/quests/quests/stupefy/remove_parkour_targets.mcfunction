scoreboard players set stupefyParkourTargetsExist global 0

summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5496 -8 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5496 -24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5512 -24 1 1 false @s

execute as @e[tag=stupefyChallengeParkourTarget] at @s run tp @s ~ ~-200 ~
kill @e[tag=stupefyChallengeParkourTarget]

kill @e[tag=chunkLoader]
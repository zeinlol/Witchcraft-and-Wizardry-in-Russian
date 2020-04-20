summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2856 952 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2867 952 1 1 false @s

execute as @e[tag=2ndHandBroomsEntity] at @s run tp @s ~ -200 ~
kill @e[tag=2ndHandBroomsEntity]

kill @e[tag=chunkLoader]

scoreboard players set 2ndHandBroomsIsCulled global 1
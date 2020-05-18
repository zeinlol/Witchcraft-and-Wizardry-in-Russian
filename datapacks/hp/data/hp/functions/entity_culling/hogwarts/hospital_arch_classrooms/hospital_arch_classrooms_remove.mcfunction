summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 696 232 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 696 248 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 712 280 1 1 false @s

execute as @e[tag=hospitalArchClassroomEntity] at @s run tp @s ~ -200 ~
kill @e[tag=hospitalArchClassroomEntity]

kill @e[tag=chunkLoader]

scoreboard players set hospitalArchClassroomsIsCulled global 1
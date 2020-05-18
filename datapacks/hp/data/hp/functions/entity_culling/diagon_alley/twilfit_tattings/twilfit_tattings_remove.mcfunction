summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2856 824 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2872 824 1 1 false @s

execute as @e[tag=TwilfitTattingsEntity] at @s run tp @s ~ -200 ~
kill @e[tag=TwilfitTattingsEntity]

kill @e[tag=chunkLoader]

scoreboard players set twilfitAndTattingsIsCulled global 1
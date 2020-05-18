# Increment class sessionID
scoreboard players add herbologyClassID global 1

# Set score
scoreboard players set resetHerbologyClass global 0
scoreboard players set herbologyClassIsSetUp global 0

# Set students
summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 728 56 1 1 false @s

execute as @e[tag=herbologyClassNPC] at @s run tp @s ~ ~-500 ~
kill @e[tag=herbologyClassNPC]


kill @e[tag=chunkLoader]
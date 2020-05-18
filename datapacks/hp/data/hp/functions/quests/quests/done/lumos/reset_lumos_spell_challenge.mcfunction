# Increment spell challenge sessionID
scoreboard players add lumosSpellChallengeID global 1
scoreboard players set collectedLumosStars sharedQuests 0

# This resets the lumos spell challenge

summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

# Stars
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5048 56 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5064 24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5048 8 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5032 24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5064 40 1 1 false @s

execute as @e[tag=lumosStar] run function hp:misc/reset_star

kill @e[tag=chunkLoader]
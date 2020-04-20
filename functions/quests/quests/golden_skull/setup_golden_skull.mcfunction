# Increment spell challenge sessionID
scoreboard players add undergoundLibraryID global 1
scoreboard players set goldenSkull sharedQuests 0


summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 712 56 1 1 false @s
execute as d89859a6-1c58-4146-878c-f9a54cfc377c run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1334}}]}

kill @e[tag=chunkLoader]
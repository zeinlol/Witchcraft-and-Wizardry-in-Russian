execute positioned 5507.23 50.00 35.17 run function hp:creatures/skeleton/summon_skeleton
execute positioned 5507.23 50.00 35.17 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 10 force
execute positioned 5504.35 50.00 33.21 run function hp:creatures/skeleton/summon_skeleton
execute positioned 5504.35 50.00 33.21 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 10 force
execute positioned 5502.45 50.00 33.91 run function hp:creatures/skeleton/summon_skeleton
execute positioned 5502.45 50.00 33.91 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 10 force
execute positioned 5499.91 50.00 26.35 run function hp:creatures/skeleton/summon_skeleton
execute positioned 5499.91 50.00 26.35 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 10 force
execute positioned 5509.30 50.00 22.62 run function hp:creatures/skeleton_archer/summon_skeleton_archer
execute positioned 5509.30 50.00 22.62 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 10 force
execute positioned 5509.06 50.00 24.66 run function hp:creatures/skeleton_swordsman/summon_skeleton_swordsman
execute positioned 5509.06 50.00 24.66 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 10 force

execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 15
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = stupefySpellChallengeID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 2
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 15
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = stupefySpellChallengeID global
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 2
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] run tag @s remove skeletonSwordsmanCreatureIsBeingSummoned

execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 15
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = stupefySpellChallengeID global
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 2
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] run tag @s remove skeletonArcherCreatureIsBeingSummoned
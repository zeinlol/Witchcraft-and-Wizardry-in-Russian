execute positioned 5504.46 50.00 34.11 run function hp:creatures/skeleton/summon_skeleton
execute positioned 5504.46 50.00 34.11 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 10 force

execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 15
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = stupefySpellChallengeID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 1
execute as @e[tag=skeletonCreatureIsBeingSummoned] at @s run tp @s ~ ~ ~ ~180 ~
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

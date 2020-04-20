scoreboard players set hogwartsPuzzle4HasTriggeredSkeletons global 1

execute positioned 667 28 272 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 24
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = undergoundLibraryID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 666 28 271 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 24
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = undergoundLibraryID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 667 28 270 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 24
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = undergoundLibraryID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned
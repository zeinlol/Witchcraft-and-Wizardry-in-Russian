scoreboard players set dungeonDelvingHasTriggeredEnemies8 global 1

execute positioned 1740 48 814 run function hp:creatures/skeleton_swordsman/summon_skeleton_swordsman
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] run tag @s remove skeletonSwordsmanCreatureIsBeingSummoned

execute positioned 1734 48 816 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 1728 48 815 run function hp:creatures/skeleton_swordsman/summon_skeleton_swordsman
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] run tag @s remove skeletonSwordsmanCreatureIsBeingSummoned
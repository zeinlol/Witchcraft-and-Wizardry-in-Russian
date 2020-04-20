scoreboard players set dungeonDelvingHasTriggeredEnemies10 global 1

execute positioned 1710 50 881 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 1716 51 883 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 1722 51 883 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 1745 49 874 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned
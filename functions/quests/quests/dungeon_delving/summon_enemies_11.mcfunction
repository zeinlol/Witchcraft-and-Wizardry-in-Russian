scoreboard players set dungeonDelvingHasTriggeredEnemies11 global 1

execute positioned 1726 45 870 run function hp:creatures/small_spider/summon_small_spider
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] run tag @s remove smallSpiderCreatureIsBeingSummoned

execute positioned 1720 42 884 run function hp:creatures/large_spider/summon_large_spider
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] run tag @s remove largeSpiderCreatureIsBeingSummoned

execute positioned 1725 42 892 run function hp:creatures/large_spider/summon_large_spider
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] run tag @s remove largeSpiderCreatureIsBeingSummoned

execute positioned 1727 38 882 run function hp:creatures/small_spider/summon_small_spider
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] run tag @s remove smallSpiderCreatureIsBeingSummoned

execute positioned 1736 42 894 run function hp:creatures/large_spider/summon_large_spider
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] run tag @s remove largeSpiderCreatureIsBeingSummoned

execute positioned 1720 48 870 run function hp:creatures/skeleton_archer/summon_skeleton_archer
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] run tag @s remove skeletonArcherCreatureIsBeingSummoned

execute positioned 1719 48 865 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned
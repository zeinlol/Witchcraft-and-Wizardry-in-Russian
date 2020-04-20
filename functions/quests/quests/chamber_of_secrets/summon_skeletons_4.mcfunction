scoreboard players set chamberOfSecretsHasTriggeredSkeletons4 global 1

execute positioned 6576 52 896 run function hp:creatures/skeleton_swordsman/summon_skeleton_swordsman
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 42
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = chamberOfSecretsID global
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] run tag @s remove skeletonSwordsmanCreatureIsBeingSummoned

execute positioned 6574 52 899 run function hp:creatures/skeleton_archer/summon_skeleton_archer
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 42
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = chamberOfSecretsID global
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] run tag @s remove skeletonArcherCreatureIsBeingSummoned

execute positioned 6562 52 897 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 42
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = chamberOfSecretsID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 6555 52 903 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 42
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = chamberOfSecretsID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 6552 52 900 run function hp:creatures/skeleton_swordsman/summon_skeleton_swordsman
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 42
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = chamberOfSecretsID global
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] run tag @s remove skeletonSwordsmanCreatureIsBeingSummoned
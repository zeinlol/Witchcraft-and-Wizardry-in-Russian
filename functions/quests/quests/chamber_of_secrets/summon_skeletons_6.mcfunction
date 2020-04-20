scoreboard players set chamberOfSecretsHasTriggeredSkeletons6 global 1

execute positioned 6452 47 880 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 42
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = chamberOfSecretsID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 6437 47 904 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 42
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = chamberOfSecretsID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 6412 47 890 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 42
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = chamberOfSecretsID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 6412 47 920 run function hp:creatures/skeleton_archer/summon_skeleton_archer
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 42
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = chamberOfSecretsID global
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] run tag @s remove skeletonArcherCreatureIsBeingSummoned

execute positioned 6437 47 920 run function hp:creatures/skeleton_archer/summon_skeleton_archer
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 42
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = chamberOfSecretsID global
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] run tag @s remove skeletonArcherCreatureIsBeingSummoned

execute positioned 6437 47 927 run function hp:creatures/skeleton_swordsman/summon_skeleton_swordsman
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 42
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = chamberOfSecretsID global
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] run tag @s remove skeletonSwordsmanCreatureIsBeingSummoned
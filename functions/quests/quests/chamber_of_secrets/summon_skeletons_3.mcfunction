scoreboard players set chamberOfSecretsHasTriggeredSkeletons3 global 1

execute positioned 6568 53 855 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 42
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = chamberOfSecretsID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 6570 53 855 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 42
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = chamberOfSecretsID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 6568 53 876 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 42
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = chamberOfSecretsID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned
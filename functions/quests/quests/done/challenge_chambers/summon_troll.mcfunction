scoreboard players set challengeChambersHasTriggeredTroll global 1

execute positioned 1916 34 751 run function hp:creatures/skeleton_archer/summon_skeleton_archer
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 43
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = challengeChambersID global
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] run tag @s remove skeletonArcherCreatureIsBeingSummoned

execute positioned 1921 25 757 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 43
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = challengeChambersID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 1924 28 752 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 43
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = challengeChambersID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 1935 28 765 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 43
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = challengeChambersID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 1934 28 756 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 43
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = challengeChambersID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 1927 24 759 run function hp:creatures/troll/summon_troll
execute as @e[tag=trollCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 43
execute as @e[tag=trollCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = challengeChambersID global
execute as @e[tag=trollCreatureIsBeingSummoned] run tag @s add keyBearer
execute as @e[tag=trollCreatureIsBeingSummoned] run tag @s remove trollCreatureIsBeingSummoned
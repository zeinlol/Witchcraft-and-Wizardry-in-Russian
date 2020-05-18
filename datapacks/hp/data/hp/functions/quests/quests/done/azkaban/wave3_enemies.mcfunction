execute positioned 4978 121 10003 run function hp:creatures/dark_wizard/summon_dark_wizard
execute positioned 4988 121 9996 run function hp:creatures/skeleton/summon_skeleton
# execute positioned 4990 121 9981 run function hp:creatures/skeleton/summon_skeleton
execute positioned 5008 121 9983 run function hp:creatures/skeleton_swordsman/summon_skeleton_swordsman
execute positioned 5009 121 9995 run function hp:creatures/dark_wizard/summon_dark_wizard
# execute positioned 5019 121 9998 run function hp:creatures/skeleton_swordsman/summon_skeleton_swordsman
execute positioned 5006 121 10019 run function hp:creatures/skeleton/summon_skeleton
# execute positioned 5015 121 10012 run function hp:creatures/skeleton/summon_skeleton
execute positioned 5017 121 10008 run function hp:creatures/dark_wizard/summon_dark_wizard
execute positioned 5025 121 10011 run function hp:creatures/skeleton_archer/summon_skeleton_archer
# execute positioned 4971 121 10012 run function hp:creatures/skeleton/summon_skeleton
execute positioned 5021 121 10019 run function hp:creatures/skeleton/summon_skeleton
execute positioned 4990 121 9987 run function hp:creatures/skeleton_archer/summon_skeleton_archer
# execute positioned 4982 121 10002 run function hp:creatures/skeleton_archer/summon_skeleton_archer
execute positioned 5002 121 10012 run function hp:creatures/skeleton_swordsman/summon_skeleton_swordsman



execute as @e[tag=darkWizardCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 35
execute as @e[tag=darkWizardCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = azkabanSpellChallengeID global
execute as @e[tag=darkWizardCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 4
execute as @e[tag=darkWizardCreatureIsBeingSummoned,limit=1,sort=nearest] run tag @s remove darkWizardCreatureIsBeingSummoned

execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 35
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = azkabanSpellChallengeID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 4
execute as @e[tag=skeletonCreatureIsBeingSummoned,limit=1,sort=nearest] run tag @s remove skeletonCreatureIsBeingSummoned

execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 35
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = azkabanSpellChallengeID global
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 4
execute as @e[tag=skeletonSwordsmanCreatureIsBeingSummoned,limit=1,sort=nearest] run tag @s remove skeletonSwordsmanCreatureIsBeingSummoned

execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 35
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = azkabanSpellChallengeID global
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 4
execute as @e[tag=skeletonArcherCreatureIsBeingSummoned,limit=1,sort=nearest] run tag @s remove skeletonArcherCreatureIsBeingSummoned
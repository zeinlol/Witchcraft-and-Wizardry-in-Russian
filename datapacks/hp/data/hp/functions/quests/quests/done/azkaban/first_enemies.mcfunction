execute positioned 4978 121 10003 run function hp:creatures/death_eater/summon_death_eater
# execute positioned 4988 121 9996 run function hp:creatures/death_eater/summon_death_eater
execute positioned 4990 121 9981 run function hp:creatures/death_eater/summon_death_eater
execute positioned 5008 121 9983 run function hp:creatures/death_eater/summon_death_eater
execute positioned 5009 121 9995 run function hp:creatures/death_eater/summon_death_eater
execute positioned 5019 121 9998 run function hp:creatures/death_eater/summon_death_eater


execute as @e[tag=deathEaterCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 35
execute as @e[tag=deathEaterCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = azkabanSpellChallengeID global
execute as @e[tag=deathEaterCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 1
execute as @e[tag=deathEaterCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.nestID int 1 run scoreboard players set @s nestID 3
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run tag @s remove deathEaterCreatureIsBeingSummoned
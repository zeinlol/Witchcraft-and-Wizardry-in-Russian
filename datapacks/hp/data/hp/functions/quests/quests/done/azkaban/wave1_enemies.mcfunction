execute positioned 4978 141 10003 run function hp:creatures/death_eater/summon_death_eater
# execute positioned 4988 141 9996 run function hp:creatures/death_eater/summon_death_eater
execute positioned 4990 141 9981 run function hp:creatures/death_eater/summon_death_eater
execute positioned 5008 141 9983 run function hp:creatures/death_eater/summon_death_eater
# execute positioned 5009 141 9995 run function hp:creatures/death_eater/summon_death_eater
# execute positioned 5019 141 9998 run function hp:creatures/death_eater/summon_death_eater
execute positioned 5006 141 10019 run function hp:creatures/death_eater/summon_death_eater
# execute positioned 5015 141 10012 run function hp:creatures/death_eater/summon_death_eater
execute positioned 5017 141 10008 run function hp:creatures/death_eater/summon_death_eater
execute positioned 5025 141 10011 run function hp:creatures/death_eater/summon_death_eater


execute as @e[tag=deathEaterCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 35
execute as @e[tag=deathEaterCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = azkabanSpellChallengeID global
execute as @e[tag=deathEaterCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 2
execute as @e[tag=deathEaterCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.nestID int 1 run scoreboard players set @s nestID 3
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run scoreboard players set @s dSinceAppiration 3
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run scoreboard players set @s deathEaterA 101
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s deathEaterA 96
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s deathEaterA 91
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s deathEaterA 86
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s deathEaterA 81
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s deathEaterA 76
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s deathEaterA 71
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s deathEaterA 66
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s deathEaterA 61
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s deathEaterA 56
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s deathEaterA 51
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run tag @s add deathEaterApparate
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run data merge entity @s {NoGravity:1b,Invulnerable:1b}
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run effect give @s minecraft:invisibility 10 1 true
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run effect give @s minecraft:jump_boost 100000 255 true
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run tag @s add isSpawningDeathEater
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run tag @s remove deathEaterCreatureIsBeingSummoned
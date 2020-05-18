execute positioned 9060 109 84 run function hp:creatures/death_eater/summon_death_eater
execute positioned 9033 98 111 run function hp:creatures/death_eater/summon_death_eater
execute positioned 9038 98 129 run function hp:creatures/death_eater/summon_death_eater
execute positioned 9081 98 121 run function hp:creatures/death_eater/summon_death_eater
execute positioned 9084 109 108 run function hp:creatures/death_eater/summon_death_eater
execute positioned 9073 101 82 run function hp:creatures/death_eater/summon_death_eater
execute positioned 9067 69 96 run function hp:creatures/dark_spirit/summon_dark_spirit
execute positioned 9055 72 121 run function hp:creatures/dark_spirit/summon_dark_spirit
execute positioned 9071 69 122 run function hp:creatures/dark_spirit/summon_dark_spirit
execute positioned 9065 71 105 run function hp:creatures/dark_spirit/summon_dark_spirit


execute as @e[tag=deathEaterCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 22
execute as @e[tag=deathEaterCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = apparitionSpellChallengeID global
execute as @e[tag=deathEaterCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 3
execute as @e[tag=deathEaterCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.nestID int 1 run scoreboard players set @s nestID 2
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
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run tag @s add glowWaveCreature
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run tag @s remove deathEaterCreatureIsBeingSummoned

execute as @e[tag=darkSpiritCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 22
execute as @e[tag=darkSpiritCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = apparitionSpellChallengeID global
execute as @e[tag=darkSpiritCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 3
execute as @e[tag=darkSpiritCreatureIsBeingSummoned] run tag @s remove darkSpiritCreatureIsBeingSummoned
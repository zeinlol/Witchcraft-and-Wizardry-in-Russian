execute positioned 9029 90 85 run function hp:creatures/death_eater/summon_death_eater
execute positioned 9026 90 78 run function hp:creatures/death_eater/summon_death_eater
execute positioned 9030 90 72 run function hp:creatures/death_eater/summon_death_eater


execute as @e[tag=deathEaterCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 22
execute as @e[tag=deathEaterCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = apparitionSpellChallengeID global
execute as @e[tag=deathEaterCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 1
execute as @e[tag=deathEaterCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.nestID int 1 run scoreboard players set @s nestID 2
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run scoreboard players set @s dSinceAppiration 3
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run scoreboard players set @s deathEaterA 101
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s tmp 96
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s tmp 91
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s tmp 86
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s tmp 81
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s tmp 76
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s tmp 71
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s tmp 66
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s tmp 61
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s tmp 56
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=random] run scoreboard players set @s tmp 51
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run tag @s add deathEaterApparate
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run data merge entity @s {NoGravity:1b,Invulnerable:1b,Attributes:[{Name:generic.movementSpeed,Base:0}]}
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run effect give @s minecraft:invisibility 10 1 true
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run effect give @s minecraft:jump_boost 100000 255 true
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run tag @s add isSpawningDeathEater
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run tag @s add doNotApparate
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run tag @s add firstRoomDeathEater
execute as @e[tag=deathEaterCreatureIsBeingSummoned] run tag @s remove deathEaterCreatureIsBeingSummoned
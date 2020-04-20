execute positioned 5999.5 37.59 25.14 run function hp:creatures/small_spider/summon_small_spider
execute positioned 6000.0 37.59 25.14 run function hp:creatures/small_spider/summon_small_spider
execute positioned 6000.5 37.59 25.14 run function hp:creatures/large_spider/summon_large_spider
execute positioned 6001.0 37.59 25.14 run function hp:creatures/large_spider/summon_large_spider
execute positioned 6001.5 37.59 25.14 run function hp:creatures/large_spider/summon_large_spider

execute as @e[tag=smallSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 16
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = brackiumSpellChallengeID global
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 2
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] run data merge entity @s {Motion:[0.0d,1.0d,-2.1d]}
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.1d,-2.2d]}
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,0.9d,-2.3d]}
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.0d,-2.05d]}
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.05d,-2.01d]}

execute as @e[tag=smallSpiderCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:resistance 2 255 true
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:jump_boost 2 255 true
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s add brackiumEmendoClassWaveTwoEnemy
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s add glowWaveCreature
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s remove smallSpiderCreatureIsBeingSummoned

execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 16
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = brackiumSpellChallengeID global
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 2
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] run data merge entity @s {Motion:[0.0d,1.0d,-2.1d]}
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.1d,-2.2d]}
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,0.9d,-2.3d]}
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.0d,-2.05d]}
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.05d,-2.01d]}

execute as @e[tag=largeSpiderCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:resistance 2 255 true
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:jump_boost 2 255 true
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s add brackiumEmendoClassWaveTwoEnemy
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s add glowWaveCreature
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s remove largeSpiderCreatureIsBeingSummoned

execute positioned 6025.14 36.66 1.5 run function hp:creatures/small_spider/summon_small_spider
execute positioned 6025.14 36.66 1.0 run function hp:creatures/small_spider/summon_small_spider
execute positioned 6025.14 36.66 0.5 run function hp:creatures/small_spider/summon_small_spider
execute positioned 6025.14 36.66 0.0 run function hp:creatures/large_spider/summon_large_spider
execute positioned 6025.14 36.66 -0.5 run function hp:creatures/large_spider/summon_large_spider

execute as @e[tag=smallSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 16
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = brackiumSpellChallengeID global
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 2
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] run data merge entity @s {Motion:[-2.1d,1.0d,0.0d]}
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[-2.2d,1.1d,0.0d]}
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[-2.3d,0.9d,0.0d]}
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[-2.05d,1.0d,0.0d]}
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[-2.01d,1.05d,0.0d]}

execute as @e[tag=smallSpiderCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:resistance 2 255 true
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:jump_boost 2 255 true
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s add brackiumEmendoClassWaveTwoEnemy
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s add glowWaveCreature
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s remove smallSpiderCreatureIsBeingSummoned

execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 16
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = brackiumSpellChallengeID global
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 2
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] run data merge entity @s {Motion:[-2.1d,1.0d,0.0d]}
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[-2.2d,1.1d,0.0d]}
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[-2.3d,0.9d,0.0d]}
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[-2.05d,1.0d,0.0d]}
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[-2.01d,1.05d,0.0d]}

execute as @e[tag=largeSpiderCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:resistance 2 255 true
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:jump_boost 2 255 true
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s add brackiumEmendoClassWaveTwoEnemy
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s add glowWaveCreature
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s remove largeSpiderCreatureIsBeingSummoned




execute positioned 5999.5 37.59 -24.14 run function hp:creatures/small_spider/summon_small_spider
execute positioned 6000.0 37.59 -24.14 run function hp:creatures/small_spider/summon_small_spider
execute positioned 6000.5 37.59 -24.14 run function hp:creatures/large_spider/summon_large_spider
execute positioned 6001.0 37.59 -24.14 run function hp:creatures/large_spider/summon_large_spider
execute positioned 6001.5 37.59 -24.14 run function hp:creatures/large_spider/summon_large_spider

execute as @e[tag=smallSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 16
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = brackiumSpellChallengeID global
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 2
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] run data merge entity @s {Motion:[0.0d,1.0d,2.1d]}
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.1d,2.2d]}
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,0.9d,2.3d]}
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.0d,2.05d]}
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.05d,2.01d]}

execute as @e[tag=smallSpiderCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:resistance 2 255 true
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:jump_boost 2 255 true
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s add brackiumEmendoClassWaveTwoEnemy
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s add glowWaveCreature
execute as @e[tag=smallSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s remove smallSpiderCreatureIsBeingSummoned

execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 16
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = brackiumSpellChallengeID global
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 2
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] run data merge entity @s {Motion:[0.0d,1.0d,2.1d]}
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.1d,2.2d]}
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,0.9d,2.3d]}
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.0d,2.05d]}
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,limit=1,sort=random] run data merge entity @s {Motion:[0.0d,1.05d,2.01d]}

execute as @e[tag=largeSpiderCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:resistance 2 255 true
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,sort=nearest] run effect give @s minecraft:jump_boost 2 255 true
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s add brackiumEmendoClassWaveTwoEnemy
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s add glowWaveCreature
execute as @e[tag=largeSpiderCreatureIsBeingSummoned,sort=nearest] run tag @s remove largeSpiderCreatureIsBeingSummoned
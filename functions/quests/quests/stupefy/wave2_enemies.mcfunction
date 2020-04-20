execute positioned 5506.34 50.00 33.54 run function hp:creatures/large_spider/summon_large_spider
execute positioned 5506.34 50.00 33.54 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 10 force
execute positioned 5504.34 50.00 33.54 run function hp:creatures/large_spider/summon_large_spider
execute positioned 5504.34 50.00 33.54 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 10 force
execute positioned 5502.45 50.00 33.91 run function hp:creatures/large_spider/summon_large_spider
execute positioned 5502.45 50.00 33.91 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 10 force
execute positioned 5501.16 50.00 34.82 run function hp:creatures/large_spider/summon_large_spider
execute positioned 5501.16 50.00 34.82 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 10 force
execute positioned 5500.32 50.00 22.57 run function hp:creatures/large_spider/summon_large_spider
execute positioned 5500.32 50.00 22.57 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 10 force
execute positioned 5509.30 50.00 22.62 run function hp:creatures/small_spider/summon_small_spider
execute positioned 5509.30 50.00 22.62 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 10 force
execute positioned 5509.06 50.00 24.66 run function hp:creatures/small_spider/summon_small_spider
execute positioned 5509.06 50.00 24.66 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 10 force
execute positioned 5509.27 50.00 26.51 run function hp:creatures/small_spider/summon_small_spider
execute positioned 5509.27 50.00 26.51 run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.05 10 force

execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 15
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = stupefySpellChallengeID global
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 3
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] run tag @s add glowWaveCreature
execute as @e[tag=largeSpiderCreatureIsBeingSummoned] run tag @s remove largeSpiderCreatureIsBeingSummoned

execute as @e[tag=smallSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 15
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = stupefySpellChallengeID global
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players set @s waveID 3
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] run tag @s add glowWaveCreature
execute as @e[tag=smallSpiderCreatureIsBeingSummoned] run tag @s remove smallSpiderCreatureIsBeingSummoned
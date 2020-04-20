scoreboard players set dungeonDelvingHasTriggeredEnemies13 global 1

execute positioned 1803 86 889 run function hp:creatures/rat/summon_rat
execute as @e[tag=ratCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=ratCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=ratCreatureIsBeingSummoned] run tag @s remove ratCreatureIsBeingSummoned

execute positioned 1803 86 891 run function hp:creatures/murtlap/summon_murtlap
execute as @e[tag=murtlapCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=murtlapCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=murtlapCreatureIsBeingSummoned] run tag @s remove murtlapCreatureIsBeingSummoned

execute positioned 1803 86 893 run function hp:creatures/rat/summon_rat
execute as @e[tag=ratCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=ratCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=ratCreatureIsBeingSummoned] run tag @s remove ratCreatureIsBeingSummoned

execute positioned 1811 86 891 run function hp:creatures/rat/summon_rat
execute as @e[tag=ratCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=ratCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=ratCreatureIsBeingSummoned] run tag @s remove ratCreatureIsBeingSummoned

execute positioned 1811 86 889 run function hp:creatures/murtlap/summon_murtlap
execute as @e[tag=ratCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=ratCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=ratCreatureIsBeingSummoned] run tag @s remove ratCreatureIsBeingSummoned

execute positioned 1811 86 887 run function hp:creatures/rat/summon_rat
execute as @e[tag=ratCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=ratCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=ratCreatureIsBeingSummoned] run tag @s remove ratCreatureIsBeingSummoned
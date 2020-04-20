scoreboard players set herbologyHasTriggeredToads global 1
execute positioned 831 47 44 run playsound minecraft:custom.ui.event15 master @a ~ ~ ~ 2 1

execute positioned 826 48 43 run function hp:creatures/toad/summon_toad
execute positioned 826 48 43 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 27
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = herbologyClassID global
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.toadType int 1 run scoreboard players set @s toadType 1
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 828 48 42 run function hp:creatures/toad/summon_toad
execute positioned 828 48 42 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 27
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = herbologyClassID global
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.toadType int 1 run scoreboard players set @s toadType 2
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 833 48 41 run function hp:creatures/toad/summon_toad
execute positioned 833 48 41 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 27
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = herbologyClassID global
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.toadType int 1 run scoreboard players set @s toadType 3
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 836 48 42 run function hp:creatures/toad/summon_toad
execute positioned 836 48 42 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 27
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = herbologyClassID global
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.toadType int 1 run scoreboard players set @s toadType 4
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 835 48 46 run function hp:creatures/toad/summon_toad
execute positioned 835 48 46 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 27
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = herbologyClassID global
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.toadType int 1 run scoreboard players set @s toadType 1
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 832 48 46 run function hp:creatures/toad/summon_toad
execute positioned 832 48 46 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 27
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = herbologyClassID global
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.toadType int 1 run scoreboard players set @s toadType 6
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned

execute positioned 829 48 46 run function hp:creatures/toad/summon_toad
execute positioned 829 48 46 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 27
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = herbologyClassID global
execute as @e[tag=toadCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.toadType int 1 run scoreboard players set @s toadType 8
execute as @e[tag=toadCreatureIsBeingSummoned] run tag @s remove toadCreatureIsBeingSummoned
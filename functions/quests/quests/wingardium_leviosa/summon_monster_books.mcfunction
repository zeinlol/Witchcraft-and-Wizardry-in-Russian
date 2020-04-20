scoreboard players set wingardiumHasTriggeredMonsterBook global 1
execute positioned 6992 39 27 run playsound minecraft:custom.ui.event15 master @a ~ ~ ~ 2 1

execute positioned 6992 39 27 run function hp:creatures/monster_book/summon_monster_book
execute positioned 6992 39 27 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 18
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = wingardiumSpellChallengeID global
execute as @e[tag=monsterBookCreatureIsBeingSummoned] run tag @s remove monsterBookCreatureIsBeingSummoned

execute positioned 6992 39 31 run function hp:creatures/monster_book/summon_monster_book
execute positioned 6992 39 31 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 18
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = wingardiumSpellChallengeID global
execute as @e[tag=monsterBookCreatureIsBeingSummoned] run tag @s remove monsterBookCreatureIsBeingSummoned

execute positioned 6991 39 32 run function hp:creatures/monster_book/summon_monster_book
execute positioned 6991 39 32 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 18
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = wingardiumSpellChallengeID global
execute as @e[tag=monsterBookCreatureIsBeingSummoned] run tag @s remove monsterBookCreatureIsBeingSummoned

execute positioned 6987 39 32 run function hp:creatures/monster_book/summon_monster_book
execute positioned 6987 39 32 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 18
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = wingardiumSpellChallengeID global
execute as @e[tag=monsterBookCreatureIsBeingSummoned] run tag @s remove monsterBookCreatureIsBeingSummoned

execute positioned 6986 39 31 run function hp:creatures/monster_book/summon_monster_book
execute positioned 6986 39 31 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 18
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = wingardiumSpellChallengeID global
execute as @e[tag=monsterBookCreatureIsBeingSummoned] run tag @s remove monsterBookCreatureIsBeingSummoned

execute positioned 6986 39 27 run function hp:creatures/monster_book/summon_monster_book
execute positioned 6986 39 27 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 18
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = wingardiumSpellChallengeID global
execute as @e[tag=monsterBookCreatureIsBeingSummoned] run tag @s remove monsterBookCreatureIsBeingSummoned
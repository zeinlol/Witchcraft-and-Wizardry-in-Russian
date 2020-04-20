scoreboard players set alohomoraHasTriggeredMonsterBook global 1
execute positioned 6499 36 42 run playsound minecraft:custom.ui.event15 master @a ~ ~ ~ 2 1

execute positioned 6501 36 37 run function hp:creatures/monster_book/summon_monster_book
execute positioned 6501 36 37 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 17
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = alohomoraSpellChallengeID global
execute as @e[tag=monsterBookCreatureIsBeingSummoned] run tag @s remove monsterBookCreatureIsBeingSummoned

execute positioned 6501 36 43 run function hp:creatures/monster_book/summon_monster_book
execute positioned 6501 36 43 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 17
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = alohomoraSpellChallengeID global
execute as @e[tag=monsterBookCreatureIsBeingSummoned] run tag @s remove monsterBookCreatureIsBeingSummoned

execute positioned 6495 36 47 run function hp:creatures/monster_book/summon_monster_book
execute positioned 6495 36 47 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 17
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = alohomoraSpellChallengeID global
execute as @e[tag=monsterBookCreatureIsBeingSummoned] run tag @s remove monsterBookCreatureIsBeingSummoned

execute positioned 6497 36 40 run function hp:creatures/monster_book/summon_monster_book
execute positioned 6497 36 40 run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0.02 10
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 17
execute as @e[tag=monsterBookCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = alohomoraSpellChallengeID global
execute as @e[tag=monsterBookCreatureIsBeingSummoned] run tag @s remove monsterBookCreatureIsBeingSummoned
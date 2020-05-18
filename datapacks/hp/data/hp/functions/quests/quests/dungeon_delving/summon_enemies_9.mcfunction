scoreboard players set dungeonDelvingHasTriggeredEnemies9 global 1

execute positioned 1661 56 864 run function hp:creatures/pixie_gnome/summon_pixie
execute as @e[tag=pixieCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=pixieCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=pixieCreatureIsBeingSummoned] run tag @s remove pixieCreatureIsBeingSummoned

execute positioned 1661 51 862 run function hp:creatures/pixie_gnome/summon_pixie
execute as @e[tag=pixieCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=pixieCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=pixieCreatureIsBeingSummoned] run tag @s remove pixieCreatureIsBeingSummoned

execute positioned 1668 51 859 run function hp:creatures/pixie_gnome/summon_pixie
execute as @e[tag=pixieCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=pixieCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=pixieCreatureIsBeingSummoned] run tag @s remove pixieCreatureIsBeingSummoned
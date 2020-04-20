scoreboard players set dungeonDelvingHasTriggeredEnemies12 global 1

execute positioned 1768 32 893 run function hp:creatures/skeleton/summon_skeleton
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=skeletonCreatureIsBeingSummoned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=skeletonCreatureIsBeingSummoned] run tag @s remove skeletonCreatureIsBeingSummoned

execute positioned 1763 33 887 run function hp:creatures/armor_suit/summon_armor_suit
execute as @e[tag=armorSuitCreatureIsBeingSpawned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=armorSuitCreatureIsBeingSpawned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=armorSuitCreatureIsBeingSpawned] run tag @s remove armorSuitCreatureIsBeingSpawned

execute positioned 1773 33 891 run function hp:creatures/armor_suit/summon_armor_suit
execute as @e[tag=armorSuitCreatureIsBeingSpawned] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players set @s questID 58
execute as @e[tag=armorSuitCreatureIsBeingSpawned] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players operation @s questSession = dungeonDelvingID global
execute as @e[tag=armorSuitCreatureIsBeingSpawned] run tag @s remove armorSuitCreatureIsBeingSpawned
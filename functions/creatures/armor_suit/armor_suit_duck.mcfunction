# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100

# Death
execute as @s[scores={creatureHealth=..0},tag=keyBearer] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Страж Ключаˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}",Team:"NPC",Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["interactable","glowable","restorable","chest","removeContainerIfEmpty","isDroppedItem"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{invItem.Key.count:1,Unbreakable:1b,Damage:59}}]}
execute as @s[scores={creatureHealth=..0}] run kill @s

scoreboard players add @s idle 1
execute as @s[scores={creatureHealth=1..,idle=300..},tag=keyBearer] at @s run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Страж Ключаˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}",Team:"NPC",Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["interactable","glowable","restorable","chest","removeContainerIfEmpty","isDroppedItem"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{invItem.Key.count:1,Unbreakable:1b,Damage:59}}]}
execute as @s[scores={creatureHealth=1..,idle=300..}] at @s run particle minecraft:cloud ~ ~.1 ~ 0.1 0.1 0.1 0.05 40 force
execute as @s[scores={creatureHealth=1..,idle=300..}] at @s run tp @s ~ ~-100 ~
execute as @s[scores={creatureHealth=1..,idle=301..}] run kill @s
# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100

# Stun
execute as @s[scores={creatureHealth=..0},tag=!isStunned] unless score @s veraVertoStun matches 1.. run function hp:creatures/armor_suit/stun_armor_suit

execute as @s[scores={veraVertoStun=1..}] run scoreboard players remove @s veraVertoStun 1

execute as @s[tag=isStunned,scores={veraVertoStun=49}] run data merge entity @s {NoAI:0b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:iron_helmet",Count:1b}],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1482}},{}]}
execute as @s[tag=isStunned,scores={veraVertoStun=49}] store result entity @s ArmorItems[3].tag.nestID int 1 run scoreboard players get @s nestID
execute as @s[tag=isStunned,scores={veraVertoStun=49}] store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players get @s questID
execute as @s[tag=isStunned,scores={veraVertoStun=49}] store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players get @s waveID
execute as @s[tag=isStunned,scores={veraVertoStun=49}] store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players get @s questSession
execute as @s[tag=isStunned,scores={veraVertoStun=49}] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players get @s sessionID
execute as @s[tag=isStunned,scores={veraVertoStun=49}] run tag @s remove isStunned
execute as @s[scores={veraVertoStun=50}] run effect give @s minecraft:instant_damage 1 1 true
execute as @s[scores={veraVertoStun=40}] run effect give @s minecraft:instant_damage 1 1 true
execute as @s[scores={veraVertoStun=30}] run effect give @s minecraft:instant_damage 1 1 true
execute as @s[scores={veraVertoStun=20}] run effect give @s minecraft:instant_damage 1 1 true
execute as @s[scores={veraVertoStun=10}] run effect give @s minecraft:instant_damage 1 1 true
execute as @s[scores={veraVertoStun=1}] run effect give @s minecraft:instant_damage 1 1 true
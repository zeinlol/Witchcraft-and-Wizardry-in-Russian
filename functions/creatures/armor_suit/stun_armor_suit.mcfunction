tag @s add isStunned
data merge entity @s {NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Damage:32,Unbreakable:1b}}],HandItems:[{},{}]}
execute store result entity @s ArmorItems[3].tag.nestID int 1 run scoreboard players get @s nestID
execute store result entity @s ArmorItems[3].tag.questID int 1 run scoreboard players get @s questID
execute store result entity @s ArmorItems[3].tag.waveID int 1 run scoreboard players get @s waveID
execute store result entity @s ArmorItems[3].tag.questSession int 1 run scoreboard players get @s questSession
execute store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players get @s sessionID
scoreboard players set @s veraVertoStun 200
execute at @s run function hp:creatures/armor_suit/summon_stunned_armor_suit
# Determine Item being reset
data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1331}}]}
execute store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
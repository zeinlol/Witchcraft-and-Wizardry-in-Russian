execute at @s[tag=!underwaterBarrier] run fill ^1 ^ ^ ^-1 ^2 ^ minecraft:barrier replace minecraft:air
execute at @s[tag=underwaterBarrier] run fill ^1 ^ ^ ^-1 ^2 ^ minecraft:birch_slab[type=top,waterlogged=true] replace minecraft:water
execute at @s run data merge entity @s {Marker:0b,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:47}}]}
execute store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
tag @s remove explodedBlockade
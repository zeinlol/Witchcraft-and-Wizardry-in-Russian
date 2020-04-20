execute at @s[tag=!underwaterBarrier] run fill ^1 ^ ^ ^-1 ^2 ^ minecraft:air replace minecraft:barrier
execute at @s[tag=underwaterBarrier] run fill ^1 ^ ^ ^-1 ^2 ^ minecraft:water replace minecraft:birch_slab[type=top,waterlogged=true]
execute at @s run particle minecraft:block minecraft:oak_planks ^ ^1 ^ 0.5 0.5 0.5 2 200 force
execute at @s run data merge entity @s {Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
tag @s add explodedBlockade
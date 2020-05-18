# Gradually switch between valid and invalid indicator
execute as @s[tag=!isApparating,scores={appirationMarker=1..2}] run data merge entity 0-0-10-0-4 {ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:28}}]}
execute as @s[tag=!isApparating,scores={appirationMarker=3..4}] run data merge entity 0-0-10-0-4 {ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:26}}]}
execute as @s[tag=!isApparating,scores={appirationMarker=5..6}] run data merge entity 0-0-10-0-4 {ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:25}}]}
execute as @s[tag=!isApparating,scores={appirationMarker=7..8}] run data merge entity 0-0-10-0-4 {ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:24}}]}
execute as @s[tag=!isApparating,scores={appirationMarker=9..10}] run data merge entity 0-0-10-0-4 {ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:23}}]}
execute as @s[tag=!isApparating,scores={appirationMarker=1..2}] run data merge entity 0-0-10-0-4 {HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:27}},{}]}
execute as @s[tag=!isApparating,scores={appirationMarker=3..10}] run data merge entity 0-0-10-0-4 {HandItems:[{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}},{}]}
data merge entity 0-0-10-0-4 {Fire:1000000}
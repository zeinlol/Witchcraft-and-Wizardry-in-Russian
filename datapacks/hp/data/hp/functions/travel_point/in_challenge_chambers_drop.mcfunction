execute as @s[scores={travelPoint=39},tag=offhandCanBeReplaced,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:12}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:12,qDetect:1b,fDetect:1b}
execute as @s[scores={travelPoint=38},tag=offhandCanBeReplaced,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:11}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:11,qDetect:1b,fDetect:1b}
execute as @s[scores={travelPoint=37},tag=offhandCanBeReplaced,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:10}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:10,qDetect:1b,fDetect:1b}
execute as @s[scores={travelPoint=36},tag=offhandCanBeReplaced,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:8}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:8,qDetect:1b,fDetect:1b}
execute as @s[scores={travelPoint=35},tag=offhandCanBeReplaced,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:7}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:7,qDetect:1b,fDetect:1b}
execute as @s[scores={travelPoint=34},tag=offhandCanBeReplaced,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:5}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:5,qDetect:1b,fDetect:1b}
execute as @s[scores={travelPoint=33},tag=offhandCanBeReplaced,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:4}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:4,qDetect:1b,fDetect:1b}
execute as @s[scores={travelPoint=32},tag=offhandCanBeReplaced,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:2}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:2,qDetect:1b,fDetect:1b}
execute as @s[scores={travelPoint=31},tag=offhandCanBeReplaced,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:1}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:1,qDetect:1b,fDetect:1b}
execute as @s[scores={travelPoint=31}] at @s run effect give @s minecraft:levitation 1 255 true
execute as @s[scores={travelPoint=31}] run tag @s add isLevitating
execute as @s[scores={travelPoint=30}] at @s run tp @s 1836.82 79.80 651.80 539.05 67.09
execute as @s[scores={travelPoint=29}] at @s run tp @s 1836.82 79.80 651.80 539.05 66.09
execute as @s[scores={travelPoint=29}] at @s run effect clear @s minecraft:levitation
execute as @s[scores={travelPoint=29}] run tag @s remove isLevitating
execute as @s[scores={travelPoint=0}] run tag @s remove inTravelPoint
execute as @s[scores={travelPoint=0}] run tag @s remove travelPointChallengeChambersDrop
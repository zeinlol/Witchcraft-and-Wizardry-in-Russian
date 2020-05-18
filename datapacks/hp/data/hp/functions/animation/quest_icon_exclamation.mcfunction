execute as @s[scores={questAnim=1..}] run scoreboard players remove @s questAnim 1

execute as @s[tag=playQuestIconAnimExclamation,tag=!playingQuestIconAnimExclamation] run tag @s add questExclamation
execute as @s[tag=playQuestIconAnimExclamation,tag=!playingQuestIconAnimExclamation] run tag @s remove questQuestion
execute as @s[tag=playQuestIconAnimExclamation,tag=!playingQuestIconAnimExclamation] run tag @s add playingQuestIconAnim
execute as @s[tag=playQuestIconAnimExclamation,tag=!playingQuestIconAnimExclamation] run scoreboard players set @s questAnim 13
execute as @s[tag=playQuestIconAnimExclamation,tag=!playingQuestIconAnimExclamation] run tag @s add playingQuestIconAnimExclamation

execute as @s[tag=questExclamation,scores={questAnim=13},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:stone_axe",tag:{Damage:93}}]}] run replaceitem entity @s weapon.offhand minecraft:stone_axe{Damage:93,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
execute as @s[tag=questExclamation,scores={questAnim=12},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:stone_axe",tag:{Damage:92}}]}] run replaceitem entity @s weapon.offhand minecraft:stone_axe{Damage:92,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
execute as @s[tag=questExclamation,scores={questAnim=11},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:stone_axe",tag:{Damage:91}}]}] run replaceitem entity @s weapon.offhand minecraft:stone_axe{Damage:91,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
execute as @s[tag=questExclamation,scores={questAnim=10},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:stone_axe",tag:{Damage:90}}]}] run replaceitem entity @s weapon.offhand minecraft:stone_axe{Damage:90,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
execute as @s[tag=questExclamation,scores={questAnim=9},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:stone_axe",tag:{Damage:89}}]}] run replaceitem entity @s weapon.offhand minecraft:stone_axe{Damage:89,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
execute as @s[tag=questExclamation,scores={questAnim=8},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:stone_axe",tag:{Damage:88}}]}] run replaceitem entity @s weapon.offhand minecraft:stone_axe{Damage:88,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
execute as @s[tag=questExclamation,scores={questAnim=7},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:stone_axe",tag:{Damage:87}}]}] run replaceitem entity @s weapon.offhand minecraft:stone_axe{Damage:87,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
execute as @s[tag=questExclamation,scores={questAnim=6},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:stone_axe",tag:{Damage:93}}]}] run replaceitem entity @s weapon.offhand minecraft:stone_axe{Damage:93,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
execute as @s[tag=questExclamation,scores={questAnim=5},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:stone_axe",tag:{Damage:86}}]}] run replaceitem entity @s weapon.offhand minecraft:stone_axe{Damage:86,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
execute as @s[tag=questExclamation,scores={questAnim=4},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:stone_axe",tag:{Damage:85}}]}] run replaceitem entity @s weapon.offhand minecraft:stone_axe{Damage:85,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
execute as @s[tag=questExclamation,scores={questAnim=3},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:stone_axe",tag:{Damage:84}}]}] run replaceitem entity @s weapon.offhand minecraft:stone_axe{Damage:84,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
execute as @s[tag=questExclamation,scores={questAnim=2},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:stone_axe",tag:{Damage:93}}]}] run replaceitem entity @s weapon.offhand minecraft:stone_axe{Damage:93,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1
execute as @s[tag=questExclamation,scores={questAnim=1},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:stone_axe",tag:{Damage:83}}]}] run replaceitem entity @s weapon.offhand minecraft:stone_axe{Damage:83,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1

execute as @s[tag=questExclamation,scores={questAnim=0}] run tag @s remove playingQuestIconAnimExclamation
execute as @s[tag=questExclamation,scores={questAnim=0}] run tag @s remove playQuestIconAnimExclamation
execute as @s[tag=questExclamation,scores={questAnim=0}] run tag @s remove playingQuestIconAnim
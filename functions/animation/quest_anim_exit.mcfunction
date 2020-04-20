scoreboard players add @s[tag=playingQuestAnim] questAnim 1

# execute as @s[tag=showingTrackedQuest,tag=!playingQuestAnim] run tag @s add playingQuestAnimExit
execute as @s[tag=showingTrackedQuest,tag=!playingQuestAnim] run scoreboard players set @s questAnim 0
execute as @s[tag=showingTrackedQuest,tag=!playingQuestAnim] run tag @s add playingQuestAnim

execute as @s[scores={questAnim=1..8}] run replaceitem entity @s hotbar.2 minecraft:golden_hoe{Damage:32,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1} 1

execute as @s[scores={questAnim=9..}] run replaceitem entity @s hotbar.1 minecraft:golden_hoe{Damage:32,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1} 1
execute as @s[scores={questAnim=9..},tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:23}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Damage:23,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1

execute as @s[scores={questAnim=8}] run replaceitem entity @s hotbar.1 minecraft:stone_axe{Damage:82,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1} 1
execute as @s[scores={questAnim=8},tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:23}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Damage:23,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1

execute as @s[scores={questAnim=7}] run replaceitem entity @s hotbar.1 minecraft:stone_axe{Damage:81,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1} 1
execute as @s[scores={questAnim=7},tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:23}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Damage:23,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1

execute as @s[scores={questAnim=6}] run replaceitem entity @s hotbar.1 minecraft:stone_axe{Damage:80,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1} 1
execute as @s[scores={questAnim=6},tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:23}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Damage:23,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1

execute as @s[scores={questAnim=5}] run replaceitem entity @s hotbar.1 minecraft:stone_axe{Damage:79,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1} 1
execute as @s[scores={questAnim=5},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:23}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Damage:23,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1

execute as @s[scores={questAnim=4}] run replaceitem entity @s hotbar.1 minecraft:stone_axe{Damage:78,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1} 1
execute as @s[scores={questAnim=4},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:stone_axe",tag:{Damage:74}}]}] run replaceitem entity @s weapon.offhand minecraft:stone_axe{Damage:74,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1

execute as @s[scores={questAnim=3}] run replaceitem entity @s hotbar.1 minecraft:stone_axe{Damage:77,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1} 1
execute as @s[scores={questAnim=3},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:stone_axe",tag:{Damage:73}}]}] run replaceitem entity @s weapon.offhand minecraft:stone_axe{Damage:73,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1

execute as @s[scores={questAnim=2}] run replaceitem entity @s hotbar.1 minecraft:stone_axe{Damage:76,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1} 1
execute as @s[scores={questAnim=2},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:stone_axe",tag:{Damage:72}}]}] run replaceitem entity @s weapon.offhand minecraft:stone_axe{Damage:72,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1

execute as @s[scores={questAnim=1}] run replaceitem entity @s hotbar.1 minecraft:stone_axe{Damage:75,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1} 1
execute as @s[scores={questAnim=1},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:stone_axe",tag:{Damage:71}}]}] run replaceitem entity @s weapon.offhand minecraft:stone_axe{Damage:71,display:{Name:"{\"text\":\" \"}"},HideFlags:63,Unbreakable:1,fDetect:1b} 1

execute as @s[scores={questAnim=9}] run tag @s remove playingQuestAnim
execute as @s[scores={questAnim=9}] run tag @s remove showingTrackedQuest

execute as @s unless entity @s[scores={questAnim=..4}] run tag @s remove offhandCanBeReplaced
execute as @s[scores={questAnim=5..9}] run tag @s add offhandCanBeReplaced

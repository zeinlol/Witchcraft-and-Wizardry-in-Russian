scoreboard players remove @s[tag=playingQuestAnim] questAnim 1


# execute as @s[tag=!showingTrackedQuest,tag=!playingQuestAnim,tag=!silentQuestAnimation] run playsound minecraft:custom.ui.quest.quest_focus master @s ~ ~ ~ 0.1 1 0.1
execute as @s[tag=!showingTrackedQuest,tag=!playingQuestAnim] run scoreboard players set @s questAnim 9
execute as @s[tag=!showingTrackedQuest,tag=!playingQuestAnim] run tag @s add playingQuestAnim

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

execute as @s[scores={questAnim=0}] run tag @s remove playingQuestAnim
execute as @s[scores={questAnim=0}] run tag @s add showingTrackedQuest
execute as @s[scores={questAnim=0},tag=!silentQuestAnimation,tag=questExclamation] run tag @s add playQuestIconAnimExclamation
execute as @s[scores={questAnim=0},tag=!silentQuestAnimation,tag=questQuestion] run tag @s add playQuestIconAnimExclamation
execute as @s[scores={questAnim=0},tag=!silentQuestAnimation] run playsound minecraft:custom.ui.quest.quest_updated master @s ~ ~ ~ 0.5 1 0.5
execute as @s[scores={questAnim=0},tag=silentQuestAnimation] run tag @s remove silentQuestAnimation

execute as @s unless entity @s[scores={questAnim=5..}] run tag @s remove offhandCanBeReplaced
execute as @s[scores={questAnim=5..8}] run tag @s add offhandCanBeReplaced
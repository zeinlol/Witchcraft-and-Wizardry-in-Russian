# This used to be a spell but we changed it to a potion, so some of the scoreboard and tag names don't make that much sense

execute as @s[tag=usingRespiratioPotion] run scoreboard players set @s air 300

# Effects
execute as @s[tag=!showingDrowningBar,tag=isDrowning] run function hp:misc/update_bossbars
execute as @s[tag=!showingDrowningBar,tag=isDrowning] run tag @s add showingDrowningBar
execute as @s[tag=isDrowning,tag=showTrackedQuest] run tag @s remove showTrackedQuest

execute as @s[scores={air=300,trackedQuestID=1..,questQueue=0},tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,tag=!inLumosAir,tag=isDrowning] run tag @s add silentQuestAnimation
execute as @s[scores={air=300,trackedQuestID=1..,questQueue=0},tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,tag=!inLumosAir,tag=isDrowning] run tag @s remove showingTrackedQuest
execute as @s[scores={air=300,trackedQuestID=1..,questQueue=0},tag=!stunnedByDarkSpirit,tag=!stunnedByMandrake,tag=!inLumosTransitionArea,tag=!inLumosAir,tag=isDrowning] run tag @s add showTrackedQuest
execute as @s[scores={air=300},tag=!inLumosTransitionArea,tag=!inLumosAir,tag=isDrowning] run tag @s add exitDrowningState
execute as @s[scores={air=300},tag=!inLumosTransitionArea,tag=!inLumosAir,tag=exitDrowningState] run tag @s remove isDrowning
execute as @s[scores={air=300},tag=!inLumosTransitionArea,tag=!inLumosAir,tag=exitDrowningState] run tag @s remove showingDrowningBar
execute as @s[scores={air=300},tag=!inLumosTransitionArea,tag=!inLumosAir,tag=exitDrowningState] run function hp:misc/update_bossbars
execute as @s[scores={air=300},tag=!inLumosTransitionArea,tag=!inLumosAir,tag=exitDrowningState] run tag @s remove exitDrowningState

execute at @s[tag=isDrowning,scores={air=150..299},tag=!inLumosAir,tag=!lumosScreenFade] run effect clear @s minecraft:nausea
execute at @s[tag=isDrowning,scores={air=119},tag=!inLumosAir,tag=!lumosScreenFade] run effect give @s minecraft:nausea 10 1 true
execute at @s[tag=isDrowning,scores={air=105},tag=!inLumosAir,tag=!lumosScreenFade] anchored eyes run particle minecraft:bubble ^ ^ ^1 0.2 0.2 0.2 0.1 10 normal
execute at @s[tag=isDrowning,scores={air=80},tag=!inLumosAir,tag=!lumosScreenFade] anchored eyes run particle minecraft:bubble ^ ^ ^1 0.2 0.2 0.2 0.1 10 normal
execute at @s[tag=isDrowning,scores={air=60},tag=!inLumosAir,tag=!lumosScreenFade] anchored eyes run particle minecraft:bubble ^ ^ ^1 0.2 0.2 0.2 0.1 10 normal
execute at @s[tag=isDrowning,scores={air=95..},tag=!inLumosAir,tag=!lumosScreenFade,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:23}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:23,qDetect:1b,fDetect:1b}
execute at @s[tag=isDrowning,scores={air=90..94},tag=!inLumosAir,tag=!lumosScreenFade,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:12}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:12,qDetect:1b,fDetect:1b}
execute at @s[tag=isDrowning,scores={air=85..89},tag=!inLumosAir,tag=!lumosScreenFade,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:11}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:11,qDetect:1b,fDetect:1b}
execute at @s[tag=isDrowning,scores={air=80..84},tag=!inLumosAir,tag=!lumosScreenFade,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:10}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:10,qDetect:1b,fDetect:1b}
execute at @s[tag=isDrowning,scores={air=75..79},tag=!inLumosAir,tag=!lumosScreenFade,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:9}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:9,qDetect:1b,fDetect:1b}
execute at @s[tag=isDrowning,scores={air=70..74},tag=!inLumosAir,tag=!lumosScreenFade,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:8}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:8,qDetect:1b,fDetect:1b}
execute at @s[tag=isDrowning,scores={air=65..69},tag=!inLumosAir,tag=!lumosScreenFade,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:7}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:7,qDetect:1b,fDetect:1b}
execute at @s[tag=isDrowning,scores={air=60..64},tag=!inLumosAir,tag=!lumosScreenFade,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:6}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:6,qDetect:1b,fDetect:1b}
execute at @s[tag=isDrowning,scores={air=55..59},tag=!inLumosAir,tag=!lumosScreenFade,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:5}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:5,qDetect:1b,fDetect:1b}
execute at @s[tag=isDrowning,scores={air=50..54},tag=!inLumosAir,tag=!lumosScreenFade,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:4}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:4,qDetect:1b,fDetect:1b}
execute at @s[tag=isDrowning,scores={air=45..49},tag=!inLumosAir,tag=!lumosScreenFade,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:3}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:3,qDetect:1b,fDetect:1b}
execute at @s[tag=isDrowning,scores={air=40..44},tag=!inLumosAir,tag=!lumosScreenFade,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:2}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:2,qDetect:1b,fDetect:1b}
execute at @s[tag=isDrowning,scores={air=35..39},tag=!inLumosAir,tag=!lumosScreenFade,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:1}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:1,qDetect:1b,fDetect:1b}
execute at @s[tag=isDrowning,scores={air=30..34},tag=!inLumosAir,tag=!lumosScreenFade,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Damage:0}}]}] run replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Unbreakable:1,Damage:0,qDetect:1b,fDetect:1b}
execute at @s[tag=isDrowning,scores={air=..1},tag=!inLumosAir,tag=!lumosScreenFade,tag=!inProperCutScene,tag=!inResetPoint] run function hp:respawn/init_respawn


# Bossbar
# execute as @s[tag=isDrowning,scores={tmp=10..}] store result score @s air run scoreboard players get @s tmp
# execute as @s[tag=isDrowning] run scoreboard players set @s tmp 3
execute as @s[tag=isDrowning] run scoreboard players operation @s tmp = @s air
execute as @s[tag=isDrowning] run scoreboard players add @s tmp 300
# execute as @s[tag=isDrowning] run tellraw @a {"score":{"name":"@s","objective":"tmp"}}


execute as @s[tag=isDrowning,scores={playerID=1}] store result bossbar minecraft:player1enemy value run scoreboard players get @s tmp
execute as @s[tag=isDrowning,scores={playerID=2}] store result bossbar minecraft:player2enemy value run scoreboard players get @s tmp
execute as @s[tag=isDrowning,scores={playerID=3}] store result bossbar minecraft:player3enemy value run scoreboard players get @s tmp
execute as @s[tag=isDrowning,scores={playerID=4}] store result bossbar minecraft:player4enemy value run scoreboard players get @s tmp




# Get spell duration - Can't be a timer since you might run on a lower tickrate if your computer is struggling.
scoreboard players set @s tmp 0
scoreboard players set @s respiratioTime 0

execute store result score @s tmp run data get entity @s ActiveEffects[0].Id
execute as @s[scores={tmp=13}] store result score @s respiratioTime run data get entity @s ActiveEffects[0].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[1].Id
execute as @s[scores={tmp=13}] store result score @s respiratioTime run data get entity @s ActiveEffects[1].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[2].Id
execute as @s[scores={tmp=13}] store result score @s respiratioTime run data get entity @s ActiveEffects[2].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[3].Id
execute as @s[scores={tmp=13}] store result score @s respiratioTime run data get entity @s ActiveEffects[3].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[4].Id
execute as @s[scores={tmp=13}] store result score @s respiratioTime run data get entity @s ActiveEffects[4].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[5].Id
execute as @s[scores={tmp=13}] store result score @s respiratioTime run data get entity @s ActiveEffects[5].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[6].Id
execute as @s[scores={tmp=13}] store result score @s respiratioTime run data get entity @s ActiveEffects[6].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[7].Id
execute as @s[scores={tmp=13}] store result score @s respiratioTime run data get entity @s ActiveEffects[7].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[8].Id
execute as @s[scores={tmp=13}] store result score @s respiratioTime run data get entity @s ActiveEffects[8].Duration
execute store result score @s tmp run data get entity @s ActiveEffects[9].Id
execute as @s[scores={tmp=13}] store result score @s respiratioTime run data get entity @s ActiveEffects[9].Duration
execute as @s[scores={respiratioTime=0},tag=usingRespiratioPotion] run tag @s remove usingRespiratioPotion
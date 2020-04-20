
execute if block ~ 0 ~ minecraft:dropper store result score @s PathPointTargetX store result entity @s ArmorItems[3].tag.PathPointTargetX int 1 run data get block ~ 0 ~ Items[0].tag.Enchantments[7].lvl 1
execute if block ~ 0 ~ minecraft:dropper store result score @s PathPointTargetZ store result entity @s ArmorItems[3].tag.PathPointTargetZ int 1 run data get block ~ 0 ~ Items[0].tag.Enchantments[8].lvl 1

execute if block ~ 0 ~ minecraft:dropper store result score @s targetPathPoint store result entity @s ArmorItems[3].tag.targetPathPoint int 1 run data get block ~ 0 ~ Items[0].tag.Enchantments[4].lvl 1
execute if block ~ 0 ~ minecraft:dropper store result score @s tmp run data get block ~ 0 ~ Items[0].tag.Enchantments[6].lvl 1
scoreboard players add @s[scores={tmp=0}] targetPathPoint 1
scoreboard players set @s[scores={tmp=1..2}] targetPathPoint 0
tag @s[scores={tmp=2}] add permStop
tag @s[scores={tmp=3}] add cutsceneStop
scoreboard players add @s[scores={tmp=3}] targetPathPoint 1

execute store result entity @s ArmorItems[3].tag.targetPathPoint int 1 run scoreboard players get @s targetPathPoint

tag @s[scores={tmp=0..2}] remove inLerp1
tag @s[scores={tmp=0..2}] remove lerp1
tag @s[scores={tmp=0..2}] remove inLerp2
tag @s[scores={tmp=0..2}] remove lerp2
tag @s[scores={tmp=0..2}] remove inLerp3
tag @s[scores={tmp=0..2}] remove lerp3

# Setup lerping
scoreboard players operation @s[scores={tmp=0..1}] lerp1Start = @s lerp1Current
scoreboard players operation @s[scores={tmp=0..1}] lerp2Start = @s lerp2Current
scoreboard players operation @s[scores={tmp=0..1}] lerp3Start = @s lerp3Current

scoreboard players set @s[scores={tmp=0..1}] lerp1Time 10
scoreboard players set @s[scores={tmp=0..1}] lerp2Time 10
scoreboard players set @s[scores={tmp=0..1}] lerp3Time 15

execute if block ~ 0 ~ minecraft:dropper store result score @s[scores={tmp=0..1}] lerp1End store result entity @s ArmorItems[3].tag.lerp1End int 1 run data get block ~ 0 ~ Items[0].tag.Enchantments[2].lvl 1
execute if block ~ 0 ~ minecraft:dropper store result score @s[scores={tmp=0..1}] lerp2End store result entity @s ArmorItems[3].tag.lerp2End int 1 run data get block ~ 0 ~ Items[0].tag.Enchantments[3].lvl 1
execute if block ~ 0 ~ minecraft:dropper store result score @s[scores={tmp=0..1}] lerp3End store result entity @s ArmorItems[3].tag.npcRotY int 1 store result entity @s ArmorItems[3].tag.lerp3End int 1 run data get block ~ 0 ~ Items[0].tag.Enchantments[1].lvl 1

tag @s[scores={tmp=0..1}] add lerp1
tag @s[scores={tmp=0..1}] add lerp2
tag @s[scores={tmp=0..1}] add lerp3


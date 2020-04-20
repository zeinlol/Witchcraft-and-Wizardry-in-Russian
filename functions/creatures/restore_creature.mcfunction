# If the creature's team and scoreboards are reset they get restored here. Some creatures require certain scores to be set to work which is handled here. WaveID and questID is also restored.

execute as @s[tag=armorSuitCreature] at @s run scoreboard players set @s tmp 0
execute as @s[tag=armorSuitCreature] run data merge entity @s {NoAI:0b,ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:iron_helmet",Count:1b}],HandItems:[{},{}]}
execute as @s[tag=armorSuitCreature] run tag @s remove isStunned

execute as @s[tag=deathEaterCreature] at @s run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.3}]}

execute as @s[tag=largeSpiderCreature] at @s run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.3}]}

execute as @s[tag=monsterBookCreature] run scoreboard players set @s animTest 1
execute as @s[tag=monsterBookCreature] run scoreboard players set @s animState 1
execute as @s[tag=monsterBookCreature] store result score @s creatureID run data get entity @s ArmorItems[3].tag.creatureID 1

# Just kill these if they get unloaded
execute as @s[tag=skeletonArm] at @s run function hp:creatures/skeleton/skeleton_arm_death
execute as @s[tag=skeletonFallenBody] at @s run function hp:creatures/skeleton/skeleton_fallen_body_death
execute as @s[tag=skeletonHead] at @s run function hp:creatures/skeleton/skeleton_head_death

execute as @s[tag=toadCreature] store result score @s toadType run data get entity @s ArmorItems[3].tag.toadType 1
execute as @s[tag=toadCreature] run scoreboard players set @s animTest 0

execute as @s[tag=trollCreature] at @s run scoreboard players set @s tmp 4
execute as @s[tag=trollCreature] store result score @s trollID run data get entity @s ArmorItems[3].tag.trollID 1

execute as @s[tag=ratCreature] run scoreboard players set @s animTest 1
execute as @s[tag=ratCreature] run scoreboard players set @s animState 1
execute as @s[tag=ratCreature] store result score @s creatureID run data get entity @s ArmorItems[3].tag.creatureID 1

# Quest, nest and wave ID
execute store result score @s creatureID run data get entity @s ArmorItems[3].tag.creatureID 1
execute store result score @s nestID run data get entity @s ArmorItems[3].tag.nestID 1
execute store result score @s questID run data get entity @s ArmorItems[3].tag.questID 1
execute store result score @s waveID run data get entity @s ArmorItems[3].tag.waveID 1
execute store result score @s questSession run data get entity @s ArmorItems[3].tag.questSession 1
execute store result score @s sessionID run data get entity @s ArmorItems[3].tag.sessionID 1
execute store result score @s maxHealth run data get entity @s ArmorItems[3].tag.maxHealth 1

# Join team
team join Creature @s
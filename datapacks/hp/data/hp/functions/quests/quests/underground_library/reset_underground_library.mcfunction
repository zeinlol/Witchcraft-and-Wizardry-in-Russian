# Increment spell challenge sessionID
scoreboard players add undergoundLibraryID global 1

summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

# Setup
# Restricted section door
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 792 88 1 1 false @s
scoreboard players set restricedSectionDoorDirection global 0
scoreboard players set restricedSectionDoor global -2
fill 788 76 90 788 78 90 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

# Underground library entrance
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 56 -8 1 1 false @s
scoreboard players set undergroundLibraryEntranceDirection global 0
scoreboard players set undergroundLibraryEntrance global -2
setblock 58 16 -10 minecraft:coarse_dirt
setblock 58 16 -11 minecraft:spruce_planks
setblock 58 16 -12 minecraft:coarse_dirt
setblock 57 16 -12 minecraft:spruce_planks
setblock 57 16 -11 minecraft:coarse_dirt
setblock 57 16 -10 minecraft:spruce_planks
setblock 56 16 -10 minecraft:spruce_planks
setblock 56 16 -11 minecraft:spruce_planks
setblock 56 16 -12 minecraft:spruce_planks
setblock 56 15 -11 minecraft:ladder[facing=east,waterlogged=false]

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6952 4936 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6952 4952 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6968 4936 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6968 4952 1 1 false @s


execute as d0e801d2-2592-4e6e-839d-9cd861a7b88b run function hp:misc/reset_rotating_pillar
execute as 415b1852-a1ab-4c93-8943-77dc96e688c9 run function hp:misc/reset_rotating_pillar
execute as b44aab91-b706-4fac-a826-9294baf82b99 run function hp:misc/reset_rotating_pillar
execute as 5d643847-6710-40e5-8f9d-9a9ad05aae30 run function hp:misc/reset_rotating_pillar


# Door 1
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6968 4968 1 1 false @s
fill 6960 68 4964 6964 73 4964 minecraft:dark_oak_fence[east=true,north=false,south=false,waterlogged=false,west=true]

scoreboard players set undergroundLibraryDoor1Direction global 0
scoreboard players set undergroundLibraryDoor1 global -2


execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7000 5000 1 1 false @s
summon armor_stand 7001 54 4998 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession -1
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7000 4984 1 1 false @s
summon armor_stand 7000 70 4979 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession -1
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7000 4984 1 1 false @s
summon armor_stand 7000 57 4980 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession -1
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

execute as a6d11ee6-7bb8-4766-9733-f8f5f5be4062 at @s run function hp:misc/reset_bombarda_blockade

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7000 5016 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7000 5032 1 1 false @s
execute as 74dbdfe3-c61c-4d11-8fe4-6f8aa4fc94f4 at @s run function hp:misc/reset_book_shelf


execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7016 5000 1 1 false @s
execute as ec0b4137-a1cb-4427-84d0-bb0202b99df8 at @s run function hp:misc/reset_wingardium_switch
execute as 21ad19b0-9758-461d-bdd7-d5235c2204a0 at @s run function hp:misc/reset_wingardium_switch
execute as b349fcb3-4312-4790-8484-385da0a40dac at @s run function hp:misc/reset_wingardium_switch

setblock 7016 2 4999 minecraft:redstone_block
setblock 7017 2 4999 minecraft:redstone_block
setblock 7018 2 4999 minecraft:redstone_block

fill 7022 56 4999 7022 58 4999 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
fill 7021 56 5000 7021 58 5000 air
fill 7021 56 4998 7021 58 4998 air
scoreboard players set undergroundLibraryDoor2 global -2
scoreboard players set undergroundLibraryDoor2Direction global 0



scoreboard players set undergroundLibraryHasTriggeredSkeletons global 0


kill @e[tag=chunkLoader]
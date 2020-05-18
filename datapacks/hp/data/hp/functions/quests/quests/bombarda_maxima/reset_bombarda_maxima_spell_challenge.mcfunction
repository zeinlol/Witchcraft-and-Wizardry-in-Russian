# Increment spell challenge sessionID
scoreboard players add bombardaMaximaSpellChallengeID global 1
scoreboard players add wingardiumBox6ID global 1

# This resets the bombarda spell challenge by cloning default stairs, resetting pipes, etc.

summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

# Pipes
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7464 -24 1 1 false @s
setblock 7466 57 -22 minecraft:stripped_dark_oak_wood[axis=x]
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7448 184 1 1 false @s
setblock 7453 67 180 minecraft:stripped_dark_oak_wood[axis=x]
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7480 216 1 1 false @s
setblock 7473 84 220 minecraft:stripped_birch_wood[axis=x]

# Switches + stairs + fall bridge
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7464 232 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7448 232 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7448 216 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7464 216 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7464 200 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7448 200 1 1 false @s

# Stair 1
clone 7468 96 220 7470 102 225 7468 74 220
# Stair 2
clone 7427 93 207 7432 101 213 7447 67 217
# Draw Bridge
clone 7450 113 208 7463 122 215 7450 74 208

# Blockade
execute as 5373e3d9-025e-4e8e-8ab9-e63affedda72 run function hp:misc/reset_bombarda_blockade

# Wingardium box
summon armor_stand 7449 68 206 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession 2
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSessionID int 1 run scoreboard players operation @s SCSessionID = bombardaMaximaSpellChallengeID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBox int 1 run scoreboard players set @s wingardiumBox 6
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBoxID int 1 run scoreboard players operation @s wingardiumBoxID = wingardiumBox6ID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

# Switches
execute as 23163949-ec7f-4d7d-a3f4-c7fc65878d7f run function hp:misc/reset_wingardium_switch
execute as 29b8424c-8a69-4414-baf5-b50d55846ced run function hp:misc/reset_wingardium_switch
execute as c400cf67-78f8-4dfc-a4b8-038fd5516ba6 run function hp:misc/reset_wingardium_switch

# Blockade 2
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7448 152 1 1 false @s
execute as 40143fa9-a530-4d68-88ec-481f62c3b42e run function hp:misc/reset_bombarda_blockade

# Blockade 3
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7480 408 1 1 false @s
execute as 732b0c70-393a-45be-b441-222518777ff7 run function hp:misc/reset_bombarda_blockade

# Blockade 4
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7464 -24 1 1 false @s
execute as 0b628cde-797b-4b15-99bb-8ceea78bd981 run function hp:misc/reset_bombarda_blockade

# Scoreboards
scoreboard players set bombardaStair1Direction global 0
scoreboard players set bombardaStair2Direction global 0
scoreboard players set bombardaDrawBridgeDirection global 0
scoreboard players set bombardaStair1 global -10
scoreboard players set bombardaStair2 global -10
scoreboard players set bombardaDrawBridge global -10

# Fix water from pipes
scoreboard players set bombardaFirstPipeHasBeenDestroyed global 0
scoreboard players set bombardaSecondPipeHasBeenDestroyed global 0
scoreboard players set bombardaThirdPipeHasBeenDestroyed global 0
scoreboard players set bombardaFirstPipeDestroyed global 0
scoreboard players set bombardaSecondPipeDestroyed global 0
scoreboard players set bombardaThirdPipeDestroyed global 0


# Door 1
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7480 408 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7480 392 1 1 false @s
fill 7479 86 401 7479 89 399 air
setblock 7480 87 399 minecraft:dark_oak_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=false]
setblock 7480 87 401 minecraft:spruce_trapdoor[facing=north,half=top,open=true,powered=false,waterlogged=false]

# Door 2
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7496 408 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7496 392 1 1 false @s
setblock 7500 85 401 minecraft:green_concrete_powder
setblock 7500 85 400 minecraft:cyan_concrete_powder
setblock 7500 85 399 minecraft:blue_concrete_powder
setblock 7500 86 401 minecraft:stripped_spruce_wood[axis=z]
setblock 7500 86 400 minecraft:light_blue_concrete_powder
setblock 7500 86 399 minecraft:stripped_spruce_wood[axis=x]
setblock 7500 87 401 minecraft:blue_ice
setblock 7500 87 400 minecraft:lime_concrete_powder
setblock 7500 87 399 minecraft:dried_kelp_block
setblock 7500 88 401 minecraft:stripped_spruce_wood[axis=z]
setblock 7500 88 400 minecraft:lime_concrete_powder
setblock 7500 88 399 minecraft:stripped_spruce_wood[axis=x]
setblock 7500 89 401 minecraft:blue_ice
setblock 7500 89 400 minecraft:lime_concrete_powder
setblock 7500 89 399 minecraft:dried_kelp_block
setblock 7500 90 401 minecraft:stripped_spruce_wood[axis=z]
setblock 7500 90 400 minecraft:lime_concrete_powder
setblock 7500 90 399 minecraft:stripped_spruce_wood[axis=x]
setblock 7500 91 401 minecraft:blue_ice
setblock 7500 91 400 minecraft:lime_concrete_powder
setblock 7500 91 399 minecraft:dried_kelp_block
setblock 7500 92 401 minecraft:stripped_spruce_wood[axis=z]
setblock 7500 92 400 minecraft:lime_concrete_powder
setblock 7500 92 399 minecraft:stripped_spruce_wood[axis=x]
setblock 7500 93 401 minecraft:blue_ice
setblock 7500 93 400 minecraft:lime_concrete_powder
setblock 7500 93 399 minecraft:dried_kelp_block
setblock 7499 85 399 air
setblock 7499 87 399 air
setblock 7499 89 399 air
setblock 7499 91 399 air
setblock 7499 91 401 air
setblock 7499 89 401 air
setblock 7499 87 401 air
setblock 7499 85 401 air

# Fighting room
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7496 344 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7496 328 1 1 false @s
# Lamps
execute store result entity 81136510-c437-40cd-bb22-fcd45e0eaa92 ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute store result entity bee7f703-6bd0-42a9-b5fa-ee1742c8fc33 ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute store result entity 537d9c87-554e-481c-9076-1cd712c07888 ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute store result entity fe6192d4-42e9-44a4-8026-7d48171c5c93 ArmorItems[3].tag."invItem.Key.count" int 1 run scoreboard players set tmp tmp 1
fill 7493 95 335 7493 96 335 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

# Parkour room
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7496 312 1 1 false @s
execute as 62a54138-9671-41ca-bfa1-a483ac68e308 run function hp:misc/reset_bombarda_blockade

# Platforms
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7496 296 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7496 280 1 1 false @s
clone 7498 149 287 7500 155 289 7498 126 287
clone 7498 149 291 7500 155 293 7498 126 291
clone 7498 149 295 7500 155 297 7498 126 295

# Stair if you get stuck
fill 7496 110 286 7496 127 286 air

scoreboard players set bombardaStuckTimer global 0
scoreboard players set bombardaStuckTimerIsGoing global 0

execute as c4499875-70ed-42fd-80fe-d9e4bc596160 run function hp:misc/reset_bombarda_blockade
execute store result entity 0ac24ff2-1253-41bc-9a73-7d4db4f44988 ArmorItems[3].tag."invItem.Key.count" int 1 run scoreboard players set tmp tmp 1

# Scoreboards for waves
scoreboard players set bombardaWaveIsGoing global 0
scoreboard players set bombardaWave global 1
scoreboard players set bombardaWaveTimer global 0
scoreboard players set bombardaCompleteWave1 global 0
scoreboard players set bombardaCompleteWave2 global 0
scoreboard players set bombardaCompleteWave3 global 0

scoreboard players set bombardaHasTriggeredPixies global 0
scoreboard players set bombardaHasTriggeredRats global 0
scoreboard players set bombardaHasTriggeredSkeletons global 0

# Platforms
scoreboard players set bombardaDropPlatform1Direction 1
scoreboard players set bombardaDropPlatform2Direction 1
scoreboard players set bombardaDropPlatform3Direction 1
scoreboard players set bombardaDropPlatform1Timer 0
scoreboard players set bombardaDropPlatform2Timer 0
scoreboard players set bombardaDropPlatform3Timer 0
scoreboard players set bombardaDropPlatform1 0
scoreboard players set bombardaDropPlatform2 0
scoreboard players set bombardaDropPlatform3 0


kill @e[tag=chunkLoader]
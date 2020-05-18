# Increment spell challenge sessionID
scoreboard players add chamberOfSecretsID global 1
scoreboard players set chamberOfScecretsSecondSpawnPointUnlocked global 0


summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6456 936 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6472 936 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6472 920 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6472 952 1 1 false @s

summon armor_stand 6452 44 940 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession 5
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSessionID int 1 run scoreboard players operation @s SCSessionID = chamberOfSecretsID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBox int 1 run scoreboard players set @s wingardiumBox 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBoxID int 1 run scoreboard players set @s wingardiumBoxID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

execute as 29b88161-d15e-4039-bff9-6b8bccef72d8 at @s run function hp:misc/reset_magnetic_object

execute as 09011aa6-0f71-4ddc-beda-ffa063652196 at @s run function hp:misc/reset_lever
fill 6471 42 949 6471 47 953 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
fill 6471 42 956 6471 45 957 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

scoreboard players set chamberOfSecretsDoor1 global -2
scoreboard players set chamberOfSecretsDoor2 global -2
scoreboard players set chamberOfSecretsDoor1Direction global 0
scoreboard players set chamberOfSecretsDoor1Direction global 0


execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6472 920 1 1 false @s
setblock 6474 41 918 minecraft:chiseled_sandstone
setblock 6474 42 918 minecraft:air
setblock 6474 43 918 minecraft:air
tp @e[tag=cosPillarMagnet,limit=1] 6474 41 919
tag @e[tag=cosPillarMagnet,limit=1] remove interactable

# Reset skeleton triggers
scoreboard players set chamberOfSecretsHasTriggeredSkeletons1 global 0
scoreboard players set chamberOfSecretsHasTriggeredSkeletons2 global 0
scoreboard players set chamberOfSecretsHasTriggeredSkeletons3 global 0
scoreboard players set chamberOfSecretsHasTriggeredSkeletons4 global 0
scoreboard players set chamberOfSecretsHasTriggeredSkeletons5 global 0
scoreboard players set chamberOfSecretsHasTriggeredSkeletons6 global 0
scoreboard players set chamberOfSecretsHasTriggeredSkeletons7 global 0
scoreboard players set chamberOfSecretsHasTriggeredSkeletons8 global 0

kill @e[tag=chunkLoader]
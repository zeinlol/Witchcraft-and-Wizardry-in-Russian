# Increment spell challenge sessionID
scoreboard players add wingardiumSpellChallengeID global 1

# This resets the wingardium spell challenge by cloning default stairs / pillars / doors and resetting switches and boxes

# First room with stair and that
summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6920 -24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6920 -40 1 1 false @s
execute as 5a78a59f-b430-47c8-9a8b-1f742829d804 run function hp:misc/reset_wingardium_switch
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6936 -40 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6936 -24 1 1 false @s
clone 6927 82 -35 6936 86 -31 6927 32 -35
fill 6936 37 -31 6936 37 -35 air
function hp:quests/quests/wingardium_leviosa/summon_first_room_cube

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6968 -24 1 1 false @s
summon armor_stand 6968 41 -19 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["secondRoomWingardiumCube","wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession 1
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSessionID int 1 run scoreboard players operation @s SCSessionID = wingardiumSpellChallengeID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBox int 1 run scoreboard players set @s wingardiumBox 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBoxID int 1 run scoreboard players set @s wingardiumBoxID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 6984 24 1 1 false @s
summon armor_stand 6989 48 20 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["secondRoomWingardiumCube","wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession 1
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSessionID int 1 run scoreboard players operation @s SCSessionID = wingardiumSpellChallengeID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBox int 1 run scoreboard players set @s wingardiumBox 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBoxID int 1 run scoreboard players set @s wingardiumBoxID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned
summon armor_stand 6989 41 29 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["secondRoomWingardiumCube","monsterBookTriggerBox","wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession 1
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSessionID int 1 run scoreboard players operation @s SCSessionID = wingardiumSpellChallengeID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBox int 1 run scoreboard players set @s wingardiumBox 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBoxID int 1 run scoreboard players set @s wingardiumBoxID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7000 -8 1 1 false @s
summon armor_stand 7005 48 -9 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["secondRoomWingardiumCube","wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession 1
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSessionID int 1 run scoreboard players operation @s SCSessionID = wingardiumSpellChallengeID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBox int 1 run scoreboard players set @s wingardiumBox 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBoxID int 1 run scoreboard players set @s wingardiumBoxID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

# Switches in front of big door
execute as cc540e82-d237-44a9-8935-01192825d849 run function hp:misc/reset_wingardium_switch
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7000 -24 1 1 false @s
execute as 9f988807-1e7f-420c-9a39-a361a9588f53 run function hp:misc/reset_wingardium_switch
execute as bb868874-1cff-444c-9837-b3b2c92ccc4a run function hp:misc/reset_wingardium_switch
execute as 1a0e5c7e-1be7-498b-8c8e-69a9552e5f66 run function hp:misc/reset_wingardium_switch

# Drop bridge
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7048 -24 1 1 false @s
fill 7040 32 -21 7048 47 -17 minecraft:air
clone 7040 114 -21 7048 121 -17 7040 46 -21 replace force

# Stairs 2+3+4 + door 4
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7080 -24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7096 -24 1 1 false @s
clone 7072 63 -20 7077 67 -18 7072 38 -20
clone 7087 63 -28 7089 67 -23 7087 42 -28
clone 7096 63 -20 7101 67 -18 7096 42 -20
fill 7086 48 -31 7090 52 -31 minecraft:air

# Pillars
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7128 -8 1 1 false @s
clone 7124 97 -14 7126 102 -12 7124 47 -14
clone 7128 97 -14 7130 102 -12 7128 47 -14
clone 7132 97 -14 7134 102 -12 7132 47 -14
summon armor_stand 7133 50 -3 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumGlitchFix1","wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession 1
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSessionID int 1 run scoreboard players operation @s SCSessionID = wingardiumSpellChallengeID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBox int 1 run scoreboard players set @s wingardiumBox 4
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBoxID int 1 run scoreboard players operation @s wingardiumBoxID = wingardiumBox4ID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7144 -8 1 1 false @s
clone 7136 97 -14 7138 102 -12 7136 47 -14
clone 7140 97 -14 7142 102 -12 7140 47 -14

# Bookshelf
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7112 -40 1 1 false @s
execute as 2501c866-ce21-4fc3-ba5e-34d76fd7a889 run function hp:misc/reset_wingardium_switch
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7112 -24 1 1 false @s
execute as a6ef8e29-68dc-424b-92f1-6c2632d1166f run function hp:misc/reset_book_shelf

# Doors + rotating pillar
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7096 -40 1 1 false @s
fill 7099 48 -44 7099 52 -40 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

execute as 8b7ab45d-a052-4e50-bb28-3b15b00cc5a4 run function hp:misc/reset_rotating_pillar

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7080 -40 1 1 false @s
fill 7077 48 -44 7077 52 -40 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7080 -56 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7096 -56 1 1 false @s
fill 7086 48 -53 7090 52 -53 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]


execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7096 -8 1 1 false @s
summon armor_stand 7094 45 -5 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumGlitchFix1","wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession 1
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSessionID int 1 run scoreboard players operation @s SCSessionID = wingardiumSpellChallengeID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBox int 1 run scoreboard players set @s wingardiumBox 3
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBoxID int 1 run scoreboard players operation @s wingardiumBoxID = wingardiumBox3ID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned


# Wingardium box in sideways maze thingy
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7064 -40 1 1 false @s
summon armor_stand 7070 48 -45.001 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession 1
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSessionID int 1 run scoreboard players operation @s SCSessionID = wingardiumSpellChallengeID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBox int 1 run scoreboard players set @s wingardiumBox 5
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBoxID int 1 run scoreboard players operation @s wingardiumBoxID = wingardiumBox5ID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

# Big door
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7016 -24 1 1 false @s
fill 7008 37 -21 7008 46 -17 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

# Boxes that can be reset by lever
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7016 -8 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7032 -8 1 1 false @s

execute as c998e8f7-72e5-4945-928b-30fd8e928281 run function hp:misc/reset_wingardium_switch

summon armor_stand 7026 42 -5 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumGlitchFix1","wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession 1
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSessionID int 1 run scoreboard players operation @s SCSessionID = wingardiumSpellChallengeID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBox int 1 run scoreboard players set @s wingardiumBox 1
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBoxID int 1 run scoreboard players operation @s wingardiumBoxID = wingardiumBox1ID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

summon armor_stand 7020 42 -5 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumGlitchFix1","wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession 1
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSessionID int 1 run scoreboard players operation @s SCSessionID = wingardiumSpellChallengeID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBox int 1 run scoreboard players set @s wingardiumBox 1
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBoxID int 1 run scoreboard players operation @s wingardiumBoxID = wingardiumBox1ID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

# Last switches
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7080 -8 1 1 false @s
execute as 7fdac4cc-ac42-443f-a262-ebb0ff1157f5 run function hp:misc/reset_wingardium_switch
execute as 761df6d5-c79f-4d9a-af8d-73062ed6e3d6 run function hp:misc/reset_wingardium_switch
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7096 -8 1 1 false @s
execute as 541183e4-4dd8-4309-b840-92b77a0da1c3 run function hp:misc/reset_wingardium_switch
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7128 -8 1 1 false @s
execute as 17d99f00-6cc4-456c-8e94-aeeda374c02b run function hp:misc/reset_wingardium_switch
execute as 7e2dba1a-7f60-43db-a21f-9d9cf16ab651 run function hp:misc/reset_wingardium_switch
execute as 26f406cd-0482-45c8-bce1-759d286d424e run function hp:misc/reset_wingardium_switch
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7144 -8 1 1 false @s
execute as 4919898e-4f60-42b1-bd6c-f25ba8a14b6a run function hp:misc/reset_wingardium_switch
execute as f5cec870-ee41-4d4d-8ec6-753ce961af78 run function hp:misc/reset_wingardium_switch


# Reset scores for each movable object
scoreboard players set wingardiumBigDoor global -10
scoreboard players set wingardiumBigDoorDirection global 0

scoreboard players set wingardiumDoor1 global -10
scoreboard players set wingardiumDoor1Direction global 0

scoreboard players set wingardiumDoor2 global -10
scoreboard players set wingardiumDoor2Direction global 0

scoreboard players set wingardiumDoor3 global -10
scoreboard players set wingardiumDoor3Direction global 0

scoreboard players set wingardiumDoor4 global 15
scoreboard players set wingardiumDoor4Direction global 1

scoreboard players set wingardiumDropBridge global -10
scoreboard players set wingardiumDropBridgeDirection global 0

scoreboard players set wingardiumPillar1 global -10
scoreboard players set wingardiumPillar1Direction global 0

scoreboard players set wingardiumPillar2 global -10
scoreboard players set wingardiumPillar2Direction global 0

scoreboard players set wingardiumPillar3 global -10
scoreboard players set wingardiumPillar3Direction global 0

scoreboard players set wingardiumPillar4 global -10
scoreboard players set wingardiumPillar4Direction global 0

scoreboard players set wingardiumPillar5 global -10
scoreboard players set wingardiumPillar5Direction global 0

scoreboard players set wingardiumStair1 global -10
scoreboard players set wingardiumStair1Direction global 0

scoreboard players set wingardiumStair2 global -10
scoreboard players set wingardiumStair2Direction global 0

scoreboard players set wingardiumStair3 global -10
scoreboard players set wingardiumStair3Direction global 0

scoreboard players set wingardiumStair4 global -10
scoreboard players set wingardiumStair4Direction global 0

scoreboard players set wingardiumHasTriggeredMonsterBook global 0

kill @e[tag=chunkLoader]
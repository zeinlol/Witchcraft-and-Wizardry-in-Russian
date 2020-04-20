# Increment wingardium box ID Number (so old ones can be deleted when they are loaded)
scoreboard players add wingardiumBox2ID global 1

summon armor_stand 6931 38 -37 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["firstRoomWingardiumCube","wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession 1
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSessionID int 1 run scoreboard players operation @s SCSessionID = wingardiumSpellChallengeID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBox int 1 run scoreboard players set @s wingardiumBox 2
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBoxID int 1 run scoreboard players operation @s wingardiumBoxID = wingardiumBox2ID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned
# Increment spell challenge sessionID
scoreboard players add apparitionSpellChallengeID global 1

# This resets the apparition spell challenge by cloning default stairs, resetting pipes, etc.

summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8936 -24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8936 -40 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8952 -24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8952 -40 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8968 -24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8968 -40 1 1 false @s

function hp:quests/quests/apparition/lamps/lamp1_off
function hp:quests/quests/apparition/lamps/lamp2_off
function hp:quests/quests/apparition/lamps/lamp3_off
function hp:quests/quests/apparition/lamps/lamp4_off

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8952 -8 1 1 false @s
fill 8953 70 -13 8951 79 -13 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute as ea848d49-9178-49e1-9ff6-8c095b428355 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 5
execute as 4b398f53-276d-4381-b2a5-a5a3ce30573a store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 5
execute as 89180a35-46ef-47d3-9b86-82b2fef79e63 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 5
execute as 65a02476-4b82-4531-bc30-d3aea204b15e store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 5


# Chests
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8856 72 1 1 false @s
execute store result entity e0fead3f-11d0-4cc6-8495-29cb4af7aaeb ArmorItems[3].tag."invItem.Key.count" int 1 run scoreboard players set tmp tmp 1

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8984 168 1 1 false @s
execute store result entity 4d49db6e-b130-4cef-a40c-7b7bd2e24839 ArmorItems[3].tag."invItem.Key.count" int 1 run scoreboard players set tmp tmp 1

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8904 200 1 1 false @s
execute store result entity dc6031e2-e4f6-405e-85da-7817d43cec65 ArmorItems[3].tag."invItem.Key.count" int 1 run scoreboard players set tmp tmp 1

# Locked doors
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8936 56 1 1 false @s
execute as 9743f407-86a2-4feb-8a60-ef92785ed7d4 at @s run function hp:misc/close_door

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8920 56 1 1 false @s
execute as 52cc6507-6836-4ef5-ae3a-8a205c7d587e at @s run function hp:misc/close_door
execute as 86a8d295-fba4-4e56-b2af-79a398b93ef8 at @s run function hp:misc/close_door


execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8920 65 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8936 65 1 1 false @s

# Increment wingardium box ID Number (so old ones can be deleted when they are loaded)
scoreboard players add wingardiumBox3ID global 1

summon armor_stand 8936 72 65 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession 3
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSessionID int 1 run scoreboard players operation @s SCSessionID = apparitionSpellChallengeID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBox int 1 run scoreboard players set @s wingardiumBox 3
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBoxID int 1 run scoreboard players operation @s wingardiumBoxID = wingardiumBox3ID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

summon armor_stand 8928 72 65 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession 3
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSessionID int 1 run scoreboard players operation @s SCSessionID = apparitionSpellChallengeID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBox int 1 run scoreboard players set @s wingardiumBox 3
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBoxID int 1 run scoreboard players operation @s wingardiumBoxID = wingardiumBox3ID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

summon armor_stand 8920 72 65 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession 3
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSessionID int 1 run scoreboard players operation @s SCSessionID = apparitionSpellChallengeID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBox int 1 run scoreboard players set @s wingardiumBox 3
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.wingardiumBoxID int 1 run scoreboard players operation @s wingardiumBoxID = wingardiumBox3ID global
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned


# Reset switches + door
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8968 56 1 1 false @s

fill 8966 70 55 8966 76 59 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute as 9a7c2685-eaaf-4ff7-a03c-d4f9a4e0788f run function hp:misc/reset_wingardium_switch
execute as 9a8ee93a-84a0-4081-acc7-d1c0681c97c4 run function hp:misc/reset_wingardium_switch
execute as c36f5a64-5060-405c-a15c-d11c388dc647 run function hp:misc/reset_wingardium_switch

# Reset reinforcement NPCs
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 9048 104 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 9048 88 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 9032 88 1 1 false @s

tp @e[tag=ministryWorker1Engine,limit=1] 9039 63 91
tag @e[tag=ministryWorker1Engine,limit=1] remove idle
tag @e[tag=ministryWorker1Engine,limit=1] remove stop
tag @e[tag=ministryWorker1Engine,limit=1] remove permStop
tag @e[tag=ministryWorker1Engine,limit=1] add cutsceneStop
execute as @e[tag=ministryWorker1Engine,limit=1] run scoreboard players set @s targetPathPoint 0
execute as @e[tag=ministryWorker1Engine,limit=1] store result entity @s ArmorItems[3].tag.targetPathPoint int 1 run scoreboard players get @s targetPathPoint

tp @e[tag=ministryWorker2Engine,limit=1] 9038 63 90
tag @e[tag=ministryWorker2Engine,limit=1] remove idle
tag @e[tag=ministryWorker2Engine,limit=1] remove stop
tag @e[tag=ministryWorker2Engine,limit=1] remove permStop
tag @e[tag=ministryWorker2Engine,limit=1] add cutsceneStop
execute as @e[tag=ministryWorker2Engine,limit=1] run scoreboard players set @s targetPathPoint 0
execute as @e[tag=ministryWorker2Engine,limit=1] store result entity @s ArmorItems[3].tag.targetPathPoint int 1 run scoreboard players get @s targetPathPoint

tp @e[tag=walkingTwycrossEngine2,limit=1] 9040 63 92
tag @e[tag=walkingTwycrossEngine2,limit=1] remove idle
tag @e[tag=walkingTwycrossEngine2,limit=1] remove stop
tag @e[tag=walkingTwycrossEngine2,limit=1] remove permStop
tag @e[tag=walkingTwycrossEngine2,limit=1] add cutsceneStop
execute as @e[tag=walkingTwycrossEngine2,limit=1] run scoreboard players set @s targetPathPoint 0
execute as @e[tag=walkingTwycrossEngine2,limit=1] store result entity @s ArmorItems[3].tag.targetPathPoint int 1 run scoreboard players get @s targetPathPoint

# Scores
# Combination lock
scoreboard players set apparitionChainProgress global 1
scoreboard players set apparitionMelodyProgress global 1
scoreboard players set apparitionMelodyProgress global 1

# Door1 
scoreboard players set apparitionDoor1Direction global 0
scoreboard players set apparitionDoor1 global -5

scoreboard players set apparitionDoor2Direction global 0
scoreboard players set apparitionDoor2 global -5

scoreboard players set apparitionDoor3Direction global 0
scoreboard players set apparitionDoor3 global -5

# Explosion
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 9032 56 1 1 false @s
setblock 9029 70 60 minecraft:air
setblock 9024 70 60 minecraft:air
setblock 9028 70 60 minecraft:redstone_lamp[lit=false]
setblock 9028 75 60 minecraft:red_nether_bricks
setblock 9028 74 60 minecraft:red_nether_bricks
setblock 9028 73 60 minecraft:red_nether_bricks
setblock 9028 72 60 minecraft:red_nether_bricks
setblock 9028 71 60 minecraft:red_nether_bricks
setblock 9028 70 61 minecraft:redstone_lamp[lit=false]
setblock 9027 70 61 minecraft:redstone_lamp[lit=false]
setblock 9026 70 61 minecraft:redstone_lamp[lit=false]
setblock 9025 70 61 minecraft:redstone_lamp[lit=false]
setblock 9029 71 61 minecraft:red_nether_bricks
setblock 9028 71 61 minecraft:red_nether_bricks
setblock 9027 71 61 minecraft:red_nether_bricks
setblock 9026 71 61 minecraft:red_nether_bricks
setblock 9025 71 61 minecraft:red_nether_bricks
setblock 9029 72 61 minecraft:red_nether_bricks
setblock 9028 72 61 minecraft:red_nether_bricks
setblock 9027 72 61 minecraft:red_nether_bricks
setblock 9026 72 61 minecraft:red_nether_bricks
setblock 9025 72 61 minecraft:red_nether_bricks
setblock 9029 73 61 minecraft:red_nether_bricks
setblock 9028 73 61 minecraft:red_nether_bricks
setblock 9027 73 61 minecraft:red_nether_bricks
setblock 9026 73 61 minecraft:red_nether_bricks
setblock 9025 73 61 minecraft:red_nether_bricks
setblock 9028 74 61 minecraft:red_nether_bricks
setblock 9027 74 61 minecraft:red_nether_bricks
setblock 9026 70 59 minecraft:air



kill @e[tag=chunkLoader]
# Because of a bug (perhaps this? https://bugs.mojang.com/browse/MC-96131?page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel&showAll=true) 
# entities lose their team and scoreboard values in multiplayer, seemingly at random. I've kind of akwardly moved everything into NBT, and this takes care of 
# the scoreboard stuff that need to be set in case the entity gets reset. It complicates everything tremendously and is really annoying to work with.

# Makes sure that entities that lose their team and scores still function    -   Mojang please! The amount of pain this has caused :,-(
team join NPC @s[tag=!brewer,tag=!wingardium,tag=!creaturePoint,tag=!pathIndicator,tag=!veraVerto,tag=!helper]
team join brewer @s[tag=brewer]
team join wingardium @s[tag=wingardium]
team join pathPoints @s[tag=creaturePoint]
team join veraVerto @s[tag=veraVerto]
team join Creature @s[tag=helper]
team join Creature @s[tag=twycross]

# This score is required at all times since quests use it to identify what NPC's to put particles over
execute as @s[tag=convNPC] store result score @s conv run data get entity @s ArmorItems[3].tag.conv 1

# Fix the ID for path following NPC'score
execute as @s[tag=fpActor] store result score @s fpNPCID run data get entity @s ArmorItems[3].tag.fpNPCID 1
execute as @s[tag=fpEngine] run function hp:misc/restore/restore_fp_engine

# Fix the ID for notice boards
execute as @s[tag=noticeBoard] store result score @s toolID run data get entity @s ArmorItems[3].tag.toolID 1

# Creature point
execute as @s[tag=creaturePoint] run function hp:misc/restore/restore_creature_point

execute as @s[tag=creature] run kill @s
execute as @s[tag=creatureDrop] store result score @s idle run data get entity @s ArmorItems[3].tag.idle 1

execute as @s[tag=wingardium] run scoreboard players set @s playerID 0

# SessionID
execute as @s[tag=resettable] store result score @s sessionID run data get entity @s ArmorItems[3].tag.sessionID 1

# PlayerID
execute as @s[tag=wingardium] run scoreboard players set @s playerID 0

# Wingardium Box ID / Number
execute as @s[tag=wingardium] store result score @s wingardiumBox run data get entity @s ArmorItems[3].tag.wingardiumBox 1
execute as @s[tag=wingardium] store result score @s wingardiumBoxID run data get entity @s ArmorItems[3].tag.wingardiumBoxID 1
execute as @s[tag=wingardium] store result score @s sessionID run data get entity @s ArmorItems[3].tag.sessionID 1
execute as @s[tag=wingardium] store result score @s SCSession run data get entity @s ArmorItems[3].tag.SCSession 1
execute as @s[tag=wingardium] store result score @s SCSessionID run data get entity @s ArmorItems[3].tag.SCSessionID 1

# Doors
execute as @s[tag=alohomora_door] store result score @s toolType run data get entity @s ArmorItems[3].tag.toolType 1
execute as @s[tag=keyLockedDoor] store result score @s toolType run data get entity @s ArmorItems[3].tag.toolType 1
execute as @s[tag=riddleLockedDoor] store result score @s toolType run data get entity @s ArmorItems[3].tag.toolType 1

# Lever
execute as @s[tag=lever] store result score @s tmp2 run data get entity @s ArmorItems[3].tag.tmp2 1
execute as @s[tag=lever] store result score @s tmp3 run data get entity @s ArmorItems[3].tag.tmp3 1

# Radio
execute as @s[tag=radio] store result score @s tmp2 run data get entity @s ArmorItems[3].tag.tmp2 1
execute as @s[tag=radio] store result score @s tmp3 run data get entity @s ArmorItems[3].tag.tmp3 1

# Vera Verto
execute as @s[tag=veraVerto] store result score @s tmp2 run data get entity @s ArmorItems[3].tag.tmp2 1
execute as @s[tag=veraVerto] store result score @s tmp3 run data get entity @s ArmorItems[3].tag.tmp3 1
execute as @s[tag=veraVerto] store result score @s veraVertoID run data get entity @s ArmorItems[3].tag.veraVertoID 1

# Magnetic Object
execute as @s[tag=magneticObject] store result score @s height run data get entity @s ArmorItems[3].tag.height 1
execute as @s[tag=magneticObject] store result score @s magnetPriority run data get entity @s ArmorItems[3].tag.magnetPriority 1
execute as @s[tag=magneticObject] store result score @s type run data get entity @s ArmorItems[3].tag.type 1

# Fix for an issue that's sometimes there on servers where npcs will get stuck looking in one direction
tag @s remove isLerpingBackToNormalRotation
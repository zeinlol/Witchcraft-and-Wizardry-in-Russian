execute positioned 826 49 -1717 run summon wither_skeleton ~ ~ ~ {PersistenceRequired:1b,Invulnerable:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"NPC",NoAI:1b,Tags:["restorable","fpActor","npc","convNPC","interactable","glowable","restorable","hagrid","hagridLayer1","boatWalkingHagridLayer1"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Team:"NPC",NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["restorable","glowable","npc","convNPC","hagrid","hagridLayer2","ignorePlayers"],Pose:{LeftArm:[0.0001f,0.0001f,0.0001f],RightArm:[0.0001f,0.0001f,0.0001f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:81}}]}],HandItems:[{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute positioned 826 49 -1717 run summon wither_skeleton ~ ~0.75 ~ {PersistenceRequired:1b,Invulnerable:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"NPC",NoAI:1b,Tags:["restorable","npc","convNPC","hagrid","hagridLayer3","glowable","ignorePlayers","boatWalkingHagridLayer3"],HandItems:[{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:83}},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:82}}],ArmorItems:[{},{},{},{id:"minecraft:stone_shovel",Count:1b,tag:{Unbreakable:1b,Damage:79}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:10000000,ShowParticles:0b}]}
execute positioned 826 49 -1717 run replaceitem entity @e[tag=hagrid,tag=hagridLayer2,limit=1,sort=nearest,distance=..30] weapon.mainhand stone_shovel{Damage:74,Unbreakable:1b}
execute positioned 826 49 -1717 run replaceitem entity @e[tag=hagrid,tag=hagridLayer2,limit=1,sort=nearest,distance=..30] weapon.offhand stone_shovel{Damage:76,Unbreakable:1b}
execute positioned 826 49 -1717 run replaceitem entity @e[tag=hagrid,tag=hagridLayer1,limit=1,sort=nearest,distance=..30] weapon.mainhand golden_hoe{Damage:32,Unbreakable:1b}
execute positioned 826 49 -1717 run replaceitem entity @e[tag=hagrid,tag=hagridLayer1,limit=1,sort=nearest,distance=..30] weapon.offhand golden_hoe{Damage:32,Unbreakable:1b}
execute positioned 826 49 -1717 run summon villager ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:0b,Team:"NPC",CareerLevel:1,Tags:["restorable","fpEngine","invisible","fpEngineIsBeingInitialized","boatWalkingHagridFpEngine"],CustomName:"{\"text\":\"fpEngine\"}",Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{},ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32,npcRotY:90,npcPhase:2}}]}
execute as @e[tag=boatWalkingHagridLayer1] run scoreboard players set @s fpNPCID -10
execute as @e[tag=boatWalkingHagridLayer1] store result entity @s ArmorItems[3].tag.fpNPCID int 1 run scoreboard players get @s fpNPCID
execute as @e[tag=boatWalkingHagridLayer1] run scoreboard players operation @e[tag=fpEngineIsBeingInitialized,limit=1] fpNPCID = @s fpNPCID
execute as @e[tag=fpEngineIsBeingInitialized,limit=1] store result entity @s ArmorItems[3].tag.fpNPCID int 1 run scoreboard players get @s fpNPCID 
execute as @e[tag=fpEngineIsBeingInitialized,limit=1] store result entity @s ArmorItems[3].tag.npcPhase int 1 run scoreboard players set @s npcPhase 2
tag @e[tag=fpEngineIsBeingInitialized,limit=1] add stop
execute as @e[tag=fpEngineIsBeingInitialized,limit=1] store result entity @s ArmorItems[3].tag.PathID int 1 run scoreboard players set @s PathID 8
execute as @e[tag=fpEngineIsBeingInitialized,limit=1] at @s run function hp:npc/read_path_point
execute as @e[tag=fpEngineIsBeingInitialized,limit=1] at @s run tag @s remove stop
execute as @e[tag=fpEngineIsBeingInitialized,limit=1] at @s run tag @s remove idle
execute as @e[tag=fpEngineIsBeingInitialized,limit=1] at @s run function hp:npc/update_path


execute as @e[tag=fpEngineIsBeingInitialized,limit=1] store result score @s lerp3End run data get entity @s ArmorItems[3].tag.npcRotY
execute as @e[tag=fpEngineIsBeingInitialized,limit=1] store result score @s lerp3Current run data get entity @s Rotation[0]
execute as @e[tag=fpEngineIsBeingInitialized,limit=1] run scoreboard players operation @s lerp3Start = @s lerp3Current
execute as @e[tag=fpEngineIsBeingInitialized,limit=1] run scoreboard players set @s lerp3Time 5
execute as @e[tag=fpEngineIsBeingInitialized,limit=1] run tag @s add lerp3

tag @e[tag=fpEngineIsBeingInitialized] remove fpEngineIsBeingInitialized

scoreboard players set boatWalkingHagridExists global 1
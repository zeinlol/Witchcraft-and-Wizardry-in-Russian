tag @s add fpActor
execute at @s run summon villager ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:0b,Team:"NPC",CareerLevel:1,Tags:["restorable","fpEngine","invisible","fpEngineIsBeingInitialized"],CustomName:"{\"text\":\"fpEngine\"}",Attributes:[{Name:generic.knockbackResistance,Base:1},{Name:generic.movementSpeed,Base:0}],Offers:{},ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
scoreboard players operation @s fpNPCID = currentFpNPCID fpNPCID
execute store result entity @s ArmorItems[3].tag.fpNPCID int 1 run scoreboard players get @s fpNPCID 
scoreboard players operation @e[tag=fpEngineIsBeingInitialized,limit=1] fpNPCID = @s fpNPCID
execute as @e[tag=fpEngineIsBeingInitialized,limit=1] store result entity @s ArmorItems[3].tag.fpNPCID int 1 run scoreboard players get @s fpNPCID 
execute as @e[tag=fpEngineIsBeingInitialized,limit=1] store result entity @s ArmorItems[3].tag.npcPhase int 1 run scoreboard players set @s npcPhase 1
execute store result entity @s ArmorItems[3].tag.npcPhase int 1 run scoreboard players get @s npcPhase
tag @e[tag=fpEngineIsBeingInitialized] add stop
tag @e[tag=fpEngineIsBeingInitialized] remove fpEngineIsBeingInitialized
scoreboard players add currentFpNPCID fpNPCID 1

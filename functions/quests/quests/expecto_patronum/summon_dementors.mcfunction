# Spawn dementors in first room
tag @s add hasSummonedDementors
playsound minecraft:custom.ui.event6 master @a 8035 131 26 10000 1 1

execute at @s run summon phantom 8035 131 25.5 {Motion:[3.0,0.0,0.0],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Damage:32}}],Size:6,PersistenceRequired:1b,Tags:["firstRoomDementor","creature","dementor","dementorEngine","dementorEngineIsBeingSummoned"],Invulnerable:1b,Team:"Creature",Attributes:[{Name:generic.followRange,Base:150},{Name:generic.attackDamage,Base:50}]}
execute at @s run summon armor_stand 8035 131 25.5 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["firstRoomDementor","creature","dementor","dementorActor","dementorActorBeingSpawned"],Pose:{Head:[0f,0f,0.00001f]},ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:74}}]}
execute as @e[tag=dementorActorBeingSpawned] store result entity @s ArmorItems[3].tag.creatureID int 1 run scoreboard players operation @s creatureID = currentCreatureID creatureID
execute as @e[tag=dementorActorBeingSpawned] run tag @s remove dementorActorBeingSpawned
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.creatureID int 1 run scoreboard players operation @s creatureID = currentCreatureID creatureID
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AX int 1 run scoreboard players set @s tmp 8017
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AY int 1 run scoreboard players set @s tmp 142
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AZ int 1 run scoreboard players set @s tmp 26
execute as @e[tag=dementorEngineIsBeingSummoned] run tag @s remove dementorEngineIsBeingSummoned

scoreboard players add currentCreatureID creatureID 1
tag @s remove spawnDementor


execute at @s run summon phantom 8035 132 26 {Motion:[3.0,0.0,-0.5],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Damage:32}}],Size:6,PersistenceRequired:1b,Tags:["firstRoomDementor","creature","dementor","dementorEngine","dementorEngineIsBeingSummoned"],Invulnerable:1b,Team:"Creature",Attributes:[{Name:generic.followRange,Base:150},{Name:generic.attackDamage,Base:50}]}
execute at @s run summon armor_stand 8035 132 26 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["firstRoomDementor","creature","dementor","dementorActor","dementorActorBeingSpawned"],Pose:{Head:[0f,0f,0.00001f]},ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:74}}]}
execute as @e[tag=dementorActorBeingSpawned] store result entity @s ArmorItems[3].tag.creatureID int 1 run scoreboard players operation @s creatureID = currentCreatureID creatureID
execute as @e[tag=dementorActorBeingSpawned] run tag @s remove dementorActorBeingSpawned
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.creatureID int 1 run scoreboard players operation @s creatureID = currentCreatureID creatureID
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AX int 1 run scoreboard players set @s tmp 8017
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AY int 1 run scoreboard players set @s tmp 142
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AZ int 1 run scoreboard players set @s tmp 26
execute as @e[tag=dementorEngineIsBeingSummoned] run tag @s remove dementorEngineIsBeingSummoned

scoreboard players add currentCreatureID creatureID 1
tag @s remove spawnDementor


execute at @s run summon phantom 8035 132 26.5 {Motion:[3.0,0.0,-0.5],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Damage:32}}],Size:6,PersistenceRequired:1b,Tags:["firstRoomDementor","creature","dementor","dementorEngine","dementorEngineIsBeingSummoned"],Invulnerable:1b,Team:"Creature",Attributes:[{Name:generic.followRange,Base:150},{Name:generic.attackDamage,Base:50}]}
execute at @s run summon armor_stand 8035 132 26.5 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["firstRoomDementor","creature","dementor","dementorActor","dementorActorBeingSpawned"],Pose:{Head:[0f,0f,0.00001f]},ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:74}}]}
execute as @e[tag=dementorActorBeingSpawned] store result entity @s ArmorItems[3].tag.creatureID int 1 run scoreboard players operation @s creatureID = currentCreatureID creatureID
execute as @e[tag=dementorActorBeingSpawned] run tag @s remove dementorActorBeingSpawned
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.creatureID int 1 run scoreboard players operation @s creatureID = currentCreatureID creatureID
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AX int 1 run scoreboard players set @s tmp 8017
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AY int 1 run scoreboard players set @s tmp 142
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AZ int 1 run scoreboard players set @s tmp 26
execute as @e[tag=dementorEngineIsBeingSummoned] run tag @s remove dementorEngineIsBeingSummoned

scoreboard players add currentCreatureID creatureID 1
tag @s remove spawnDementor

execute at @s run summon phantom 8035 132 27 {Motion:[3.0,0.0,-0.5],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Damage:32}}],Size:6,PersistenceRequired:1b,Tags:["firstRoomDementor","creature","dementor","dementorEngine","dementorEngineIsBeingSummoned"],Invulnerable:1b,Team:"Creature",Attributes:[{Name:generic.followRange,Base:150},{Name:generic.attackDamage,Base:50}]}
execute at @s run summon armor_stand 8035 132 27 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["firstRoomDementor","creature","dementor","dementorActor","dementorActorBeingSpawned"],Pose:{Head:[0f,0f,0.00001f]},ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:74}}]}
execute as @e[tag=dementorActorBeingSpawned] store result entity @s ArmorItems[3].tag.creatureID int 1 run scoreboard players operation @s creatureID = currentCreatureID creatureID
execute as @e[tag=dementorActorBeingSpawned] run tag @s remove dementorActorBeingSpawned
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.creatureID int 1 run scoreboard players operation @s creatureID = currentCreatureID creatureID
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AX int 1 run scoreboard players set @s tmp 8017
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AY int 1 run scoreboard players set @s tmp 142
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AZ int 1 run scoreboard players set @s tmp 26
execute as @e[tag=dementorEngineIsBeingSummoned] run tag @s remove dementorEngineIsBeingSummoned

scoreboard players add currentCreatureID creatureID 1
tag @s remove spawnDementor


execute at @s run summon phantom 8035 132 27.5 {Motion:[3.0,0.0,0.5],ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Damage:32}}],Size:6,PersistenceRequired:1b,Tags:["firstRoomDementor","creature","dementor","dementorEngine","dementorEngineIsBeingSummoned"],Invulnerable:1b,Team:"Creature",Attributes:[{Name:generic.followRange,Base:150},{Name:generic.attackDamage,Base:50}]}
execute at @s run summon armor_stand 8035 132 27.5 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["firstRoomDementor","creature","dementor","dementorActor","dementorActorBeingSpawned"],Pose:{Head:[0f,0f,0.00001f]},ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:74}}]}
execute as @e[tag=dementorActorBeingSpawned] store result entity @s ArmorItems[3].tag.creatureID int 1 run scoreboard players operation @s creatureID = currentCreatureID creatureID
execute as @e[tag=dementorActorBeingSpawned] run tag @s remove dementorActorBeingSpawned
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.creatureID int 1 run scoreboard players operation @s creatureID = currentCreatureID creatureID
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AX int 1 run scoreboard players set @s tmp 8017
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AY int 1 run scoreboard players set @s tmp 142
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AZ int 1 run scoreboard players set @s tmp 26
execute as @e[tag=dementorEngineIsBeingSummoned] run tag @s remove dementorEngineIsBeingSummoned

scoreboard players add currentCreatureID creatureID 1
tag @s remove spawnDementor
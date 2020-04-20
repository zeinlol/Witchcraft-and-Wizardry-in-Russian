execute at @s run summon phantom ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Damage:32}}],Size:6,PersistenceRequired:1b,Tags:["creature","dementor","dementorEngine","dementorEngineIsBeingSummoned"],Invulnerable:1b,Team:"Creature",Attributes:[{Name:generic.followRange,Base:150},{Name:generic.attackDamage,Base:50}]}
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["creature","dementor","dementorActor","dementorActorBeingSpawned"],Pose:{Head:[0f,0f,0.00001f]},ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:74}}]}
execute as @e[tag=dementorActorBeingSpawned] store result entity @s ArmorItems[3].tag.creatureID int 1 run scoreboard players operation @s creatureID = currentCreatureID creatureID
execute as @e[tag=dementorActorBeingSpawned] run tag @s remove dementorActorBeingSpawned
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.creatureID int 1 run scoreboard players operation @s creatureID = currentCreatureID creatureID
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AX int 1 run data get entity @s Pos[0] 1
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AY int 1 run data get entity @s Pos[1] 1
execute as @e[tag=dementorEngineIsBeingSummoned] store result entity @s ArmorItems[3].tag.AZ int 1 run data get entity @s Pos[2] 1
execute as @e[tag=dementorEngineIsBeingSummoned] run tag @s remove dementorEngineIsBeingSummoned

scoreboard players add currentCreatureID creatureID 1
tag @s remove spawnDementor
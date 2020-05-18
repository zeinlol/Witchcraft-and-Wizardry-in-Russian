summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

# Puzzle 8
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 728 312 1 1 false @s
setblock 732 114 311 minecraft:cut_sandstone
setblock 732 114 312 minecraft:cut_sandstone
setblock 732 114 313 minecraft:orange_concrete
setblock 732 114 314 minecraft:cut_sandstone
setblock 732 114 315 minecraft:cut_sandstone
setblock 732 113 311 minecraft:cut_sandstone
setblock 732 113 312 minecraft:yellow_concrete
setblock 732 113 313 minecraft:orange_concrete
setblock 732 113 314 minecraft:yellow_concrete
setblock 732 113 315 minecraft:cut_sandstone
setblock 732 112 311 minecraft:cut_sandstone
setblock 732 112 312 minecraft:orange_concrete
setblock 732 112 313 minecraft:orange_concrete
setblock 732 112 314 minecraft:yellow_concrete
setblock 732 112 315 minecraft:cut_sandstone
setblock 732 111 311 minecraft:cut_sandstone
setblock 732 111 312 minecraft:orange_concrete
setblock 732 111 313 minecraft:orange_concrete
setblock 732 111 314 minecraft:orange_concrete
setblock 732 110 311 minecraft:yellow_concrete
setblock 732 110 312 minecraft:orange_concrete
setblock 732 110 313 minecraft:cut_sandstone
setblock 732 110 314 minecraft:cut_sandstone

scoreboard players set hogwartsPuzzle8 global -10
scoreboard players set hogwartsPuzzle8Direction global 0


# Puzzle 9
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 760 200 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 760 184 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 792 200 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 760 168 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 776 168 1 1 false @s

summon armor_stand 765 51 179 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession -1
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

summon armor_stand 788 52 197 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession -1
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

summon armor_stand 767 59 204 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession -1
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

fill 766 51 171 768 53 171 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
scoreboard players set hogwartsPuzzleDoor9 global -2
scoreboard players set hogwartsPuzzleDoor9Direction global 0

kill @e[tag=chunkLoader]

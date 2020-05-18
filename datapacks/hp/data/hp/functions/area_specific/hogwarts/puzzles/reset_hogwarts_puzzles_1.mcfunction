summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

# Puzzle 1 /execute in minecraft:overworld run tp @s 793.24 71.06 132.50 733.72 2.15
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 792 136 1 1 false @s
fill 790 71 141 795 74 141 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]

scoreboard players set hogwartsPuzzleDoor1Direction global 0
scoreboard players set hogwartsPuzzleDoor1 global -2

# Puzzle 2 
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 776 104 1 1 false @s
fill 778 79 111 778 80 111 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

scoreboard players set hogwartsPuzzleDoor2Direction global 0
scoreboard players set hogwartsPuzzleDoor2 global -2

# Puzzle 3
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 664 264 1 1 false @s
fill 662 57 272 662 58 272 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]

scoreboard players set hogwartsPuzzleDoor3Direction global 0
scoreboard players set hogwartsPuzzleDoor3 global -2

# Puzzle 4
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 664 264 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 664 280 1 1 false @s
fill 665 28 270 665 31 272 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

scoreboard players set hogwartsPuzzle4HasTriggeredSkeletons global 0
scoreboard players set hogwartsPuzzleDoor4Direction global 0
scoreboard players set hogwartsPuzzleDoor4 global -2

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 648 248 1 1 false @s
summon armor_stand 641 28 250 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession -1
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

kill @e[tag=chunkLoader]
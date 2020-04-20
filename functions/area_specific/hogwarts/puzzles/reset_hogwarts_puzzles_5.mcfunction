summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

# Puzzle 15
scoreboard players set puzzle15MazeIsEmpty global 1
scoreboard players add puzzle15ID global 1

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 712 -24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 696 -24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 696 -8 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 712 -8 1 1 false @s

fill 703 5 -14 705 11 -12 air
fill 703 5 -20 705 11 -18 air
fill 703 5 -26 705 11 -24 air

clone 703 33 -14 705 40 -12 703 2 -14
clone 703 34 -20 705 40 -18 703 0 -20
clone 703 37 -26 705 46 -24 703 0 -26

scoreboard players set hogwartsPuzzle15Pillar1Direction global 0
scoreboard players set hogwartsPuzzle15Pillar2Direction global 0
scoreboard players set hogwartsPuzzle15Pillar3Direction global 0

scoreboard players set hogwartsPuzzle15Pillar1 global -10
scoreboard players set hogwartsPuzzle15Pillar2 global -10
scoreboard players set hogwartsPuzzle15Pillar3 global -10

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 744 -40 1 1 false @s
fill 740 4 -39 742 8 -39 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]

scoreboard players set hogwartsPuzzleDoor15Direction global 0
scoreboard players set hogwartsPuzzleDoor15 global -2

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 744 -24 1 1 false @s
summon armor_stand 740 4 -25 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession -1
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

# Puzzle 16
scoreboard players set puzzle16TowerIsEmpty global 1

# Puzzle 17
scoreboard players set puzzle17LibraryIsEmpty global 1

# Puzzle 18
scoreboard players set puzzle18SmallWineCellarIsEmpty global 1

# Puzzle 19
scoreboard players set puzzle19WaterCaveIsEmpty global 1

# Puzzle 20
scoreboard players set hogwartsPuzzle20 global 0
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers -72 216 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers -88 216 1 1 false @s
setblock -81 12 221 minecraft:dirt
setblock -80 12 221 minecraft:dirt
setblock -79 12 221 minecraft:stone
setblock -81 13 221 minecraft:netherrack
setblock -80 13 221 minecraft:dirt
setblock -79 13 221 minecraft:netherrack
setblock -81 14 221 minecraft:stone
setblock -80 14 221 minecraft:netherrack
setblock -79 14 221 minecraft:stone

# Riddle Riches Door
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 728 136 1 1 false @s
fill 723 170 140 723 171 140 minecraft:iron_bars[east=true,north=true,south=false,waterlogged=false,west=false]
fill 724 170 140 724 171 140 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=true]
fill 723 170 139 723 171 139 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=true]
fill 724 170 141 724 171 141 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
fill 722 170 139 722 171 139 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
scoreboard players set hogwartsPuzzleDoor21Direction global 0
scoreboard players set hogwartsPuzzleDoor21 global -2

# Puzzle 21
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers -104 232 1 1 false @s
fill -97 21 232 -103 21 226 minecraft:purple_stained_glass replace air


# Malfoy manor wingardium box because i don't want to put it anywhere else
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5048 7064 1 1 false @s
summon armor_stand 5043 84 7070 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession -1
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

# And knockturn alley too
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2744 1000 1 1 false @s
summon armor_stand 2743 28 992 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession -1
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned

kill @e[tag=chunkLoader]

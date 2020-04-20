summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

# Puzzle 10
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 792 136 1 1 false @s
scoreboard players set hogwartsPuzzleDoor10 global -2
scoreboard players set hogwartsPuzzleDoor10Direction global 0


# Puzzle 11
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 616 264 1 1 false @s
fill 615 133 267 615 134 270 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
fill 615 135 268 615 135 269 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

# Puzzle 12
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 600 280 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 600 296 1 1 false @s

fill 599 86 287 599 89 285 minecraft:black_stained_glass_pane[east=false,north=true,south=true,waterlogged=false,west=false]
fill 598 86 284 594 89 284 minecraft:black_stained_glass_pane[east=true,north=false,south=false,waterlogged=false,west=true]
fill 593 86 285 593 89 287 minecraft:black_stained_glass_pane[east=false,north=true,south=true,waterlogged=false,west=false]
fill 594 86 288 598 89 288 minecraft:black_stained_glass_pane[east=true,north=false,south=false,waterlogged=false,west=true]

summon armor_stand 605 87 286 {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Invisible:1b,Marker:0b,Small:1b,Tags:["wingardiumBoxIsBeingSpawned","spellEntity","interactable","glowable","restorable","wingardium","noInteraction"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @e[tag=wingardiumBoxIsBeingSpawned] store result entity @s ArmorItems[3].tag.SCSession int 1 run scoreboard players set @s SCSession -1
execute as @e[tag=wingardiumBoxIsBeingSpawned] run scoreboard players set @s playerID 0
execute as @e[tag=wingardiumBoxIsBeingSpawned] run tag @s remove wingardiumBoxIsBeingSpawned


# Puzzle 14
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 664 72 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 680 72 1 1 false @s
setblock 671 115 71 minecraft:purple_glazed_terracotta[facing=south]
setblock 670 115 71 minecraft:purple_glazed_terracotta[facing=west]
setblock 671 115 70 minecraft:purple_glazed_terracotta[facing=east]
setblock 670 115 70 minecraft:purple_glazed_terracotta[facing=north]
setblock 668 115 70 minecraft:purple_glazed_terracotta[facing=east]
setblock 667 115 70 minecraft:purple_glazed_terracotta[facing=north]
setblock 667 115 71 minecraft:purple_glazed_terracotta[facing=west]
setblock 668 115 71 minecraft:purple_glazed_terracotta[facing=south]
setblock 671 115 66 minecraft:purple_glazed_terracotta[facing=south]
setblock 671 115 65 minecraft:purple_glazed_terracotta[facing=east]
setblock 670 115 65 minecraft:purple_glazed_terracotta[facing=north]
setblock 670 115 66 minecraft:purple_glazed_terracotta[facing=west]
setblock 672 110 67 minecraft:purple_glazed_terracotta[facing=south]
setblock 671 110 67 minecraft:purple_glazed_terracotta[facing=west]
setblock 671 110 66 minecraft:purple_glazed_terracotta[facing=north]
setblock 672 110 66 minecraft:purple_glazed_terracotta[facing=east]
setblock 667 110 66 minecraft:purple_glazed_terracotta[facing=east]
setblock 666 110 66 minecraft:purple_glazed_terracotta[facing=north]
setblock 666 110 67 minecraft:purple_glazed_terracotta[facing=west]
setblock 667 110 67 minecraft:purple_glazed_terracotta[facing=south]
setblock 667 105 66 minecraft:purple_glazed_terracotta[facing=north]
setblock 667 105 67 minecraft:purple_glazed_terracotta[facing=west]
setblock 668 105 66 minecraft:purple_glazed_terracotta[facing=east]
setblock 668 105 67 minecraft:purple_glazed_terracotta[facing=south]
setblock 667 105 69 minecraft:purple_glazed_terracotta[facing=north]
setblock 667 105 70 minecraft:purple_glazed_terracotta[facing=west]
setblock 668 105 69 minecraft:purple_glazed_terracotta[facing=east]
setblock 668 105 70 minecraft:purple_glazed_terracotta[facing=south]

scoreboard players set hogwartsPuzzle14Trapdoor1 global 0
scoreboard players set hogwartsPuzzle14Trapdoor2 global 0
scoreboard players set hogwartsPuzzle14Trapdoor3 global 0
scoreboard players set hogwartsPuzzle14Trapdoor4 global 0
scoreboard players set hogwartsPuzzle14Trapdoor5 global 0
scoreboard players set hogwartsPuzzle14Trapdoor6 global 0
scoreboard players set hogwartsPuzzle14Trapdoor7 global 0

kill @e[tag=chunkLoader]

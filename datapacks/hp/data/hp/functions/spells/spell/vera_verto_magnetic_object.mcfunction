# Play start sound + set a max move distance if something should go wrong
execute as @s[tag=!magneticObjectIsMoving] at @s run playsound minecraft:custom.fx.rocks_move_short master @a ~ ~ ~ 3 1
execute as @s[tag=!magneticObjectIsMoving] at @s run playsound minecraft:custom.fx.stone_slide master @a ~ ~ ~ 3 1
execute as @s[tag=!magneticObjectIsMoving] run scoreboard players set @s tmp 0
execute as @s[tag=!magneticObjectIsMoving] run tag @s add magneticObjectIsMoving

# Stop the magnet if it moves too far
scoreboard players add @s tmp 1
execute as @s[scores={tmp=30..}] run tag @s add collision

# Check for magnet collision
execute as @s[tag=moveSouth,tag=!collision] at @s positioned ~ ~1 ~2 if entity @e[tag=magnet,limit=1,distance=..0.5] run tag @s add collision
execute as @s[tag=moveNorth,tag=!collision] at @s positioned ~ ~1 ~-2 if entity @e[tag=magnet,limit=1,distance=..0.5] run tag @s add collision
execute as @s[tag=moveEast,tag=!collision] at @s positioned ~2 ~1 ~ if entity @e[tag=magnet,limit=1,distance=..0.5] run tag @s add collision
execute as @s[tag=moveWest,tag=!collision] at @s positioned ~-2 ~1 ~ if entity @e[tag=magnet,limit=1,distance=..0.5] run tag @s add collision
execute as @s[tag=moveSouth,tag=!collision] at @s positioned ~ ~ ~3 if entity @e[tag=magneticObject,limit=1,distance=..0.5] run tag @s add collision
execute as @s[tag=moveNorth,tag=!collision] at @s positioned ~ ~ ~-3 if entity @e[tag=magneticObject,limit=1,distance=..0.5] run tag @s add collision
execute as @s[tag=moveEast,tag=!collision] at @s positioned ~3 ~ ~ if entity @e[tag=magneticObject,limit=1,distance=..0.5] run tag @s add collision
execute as @s[tag=moveWest,tag=!collision] at @s positioned ~-3 ~ ~ if entity @e[tag=magneticObject,limit=1,distance=..0.5] run tag @s add collision
execute as @s[tag=moveSouth,tag=!collision] at @s positioned ~ ~ ~4 if entity @e[tag=magneticObject,limit=1,distance=..0.5] run tag @s add collision
execute as @s[tag=moveNorth,tag=!collision] at @s positioned ~ ~ ~-4 if entity @e[tag=magneticObject,limit=1,distance=..0.5] run tag @s add collision
execute as @s[tag=moveEast,tag=!collision] at @s positioned ~4 ~ ~ if entity @e[tag=magneticObject,limit=1,distance=..0.5] run tag @s add collision
execute as @s[tag=moveWest,tag=!collision] at @s positioned ~-4 ~ ~ if entity @e[tag=magneticObject,limit=1,distance=..0.5] run tag @s add collision
execute as @s[tag=moveSouth,tag=!collision] at @s positioned ~ ~ ~2 unless block ~ ~ ~ #hp:magnet_passthrough run tag @s add collision
execute as @s[tag=moveNorth,tag=!collision] at @s positioned ~ ~ ~-2 unless block ~ ~ ~ #hp:magnet_passthrough run tag @s add collision
execute as @s[tag=moveEast,tag=!collision] at @s positioned ~2 ~ ~ unless block ~ ~ ~ #hp:magnet_passthrough run tag @s add collision
execute as @s[tag=moveWest,tag=!collision] at @s positioned ~-2 ~ ~ unless block ~ ~ ~ #hp:magnet_passthrough run tag @s add collision

# On collision
execute as @s[tag=collision] run tag @s remove moveSouth
execute as @s[tag=collision] run tag @s remove moveNorth
execute as @s[tag=collision] run tag @s remove moveEast
execute as @s[tag=collision] run tag @s remove moveWest
execute as @s[tag=collision] run scoreboard players remove @e[scores={magnetPriority=1..}] magnetPriority 1
execute as @s[tag=collision] store result entity @s ArmorItems[3].tag.magnetPriority int 1 run scoreboard players get @s magnetPriority
execute as @s[tag=collision] run scoreboard players remove global magnetPriority 1
execute as @s[tag=collision] at @s run playsound minecraft:custom.fx.rocks_move_short master @a ~ ~ ~ 3 1
execute as @s[tag=collision] run tag @s remove magneticObjectIsMoving
execute as @s[tag=collision] run tag @s remove collision

# Move
execute as @s[tag=moveSouth] at @s run tp @s ~ ~ ~1
execute as @s[tag=moveNorth] at @s run tp @s ~ ~ ~-1
execute as @s[tag=moveEast] at @s run tp @s ~1 ~ ~
execute as @s[tag=moveWest] at @s run tp @s ~-1 ~ ~

# fill
execute as @s[scores={type=1}] at @s run function hp:spells/spell/magnetic_object/vera_verto_magnetic_object_fill_normal
execute as @s[scores={type=2}] at @s run function hp:spells/spell/magnetic_object/vera_verto_magnetic_object_fill_mirror
execute as @s[scores={type=3}] at @s run function hp:spells/spell/magnetic_object/vera_verto_magnetic_object_fill_ladder
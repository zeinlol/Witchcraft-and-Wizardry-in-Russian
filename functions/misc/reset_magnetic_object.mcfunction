# Reset blocks
execute as @s[scores={type=1}] at @s run fill ~2 ~5 ~2 ~-2 ~0 ~-2 air replace clay
execute as @s[scores={type=1}] at @s run fill ~2 ~5 ~2 ~-2 ~0 ~-2 air replace mushroom_stem

execute as @s[scores={type=2}] at @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:frosted_ice[age=0] replace clay
execute as @s[scores={type=2}] at @s run fill ~1 ~3 ~1 ~-1 ~0 ~-1 air replace clay
execute as @s[scores={type=2}] at @s run fill ~1 ~-3 ~1 ~-1 ~-2 ~-1 air replace clay
execute as @s[scores={type=2}] at @s run fill ~1 ~-4 ~1 ~-1 ~-4 ~-1 minecraft:frosted_ice[age=0] replace clay

execute as @s[scores={type=3}] at @s run fill ~2 ~5 ~2 ~-2 ~0 ~-2 air replace clay

# I need to wait until all the magnetic objects are reset before filling blocks so I don't remove new blocks if another magnetic object is at this magnetic object's starting position
tag @s add magneticObjectHasBeenReset

# Revert to original position stored in NBT.
execute store result entity @s Pos[0] double 1 run data get entity @s ArmorItems[3].tag.posX 1
execute store result entity @s Pos[1] double 1 run data get entity @s ArmorItems[3].tag.posY 1
execute store result entity @s Pos[2] double 1 run data get entity @s ArmorItems[3].tag.posZ 1
execute at @s run tp @s ~.5 ~ ~.5

# Reset tags 
tag @s remove moveSouth
tag @s remove moveNorth
tag @s remove moveEast
tag @s remove moveWest
tag @s remove magneticObjectIsMoving
tag @s add close
tag @s remove changedDirectionThisTick

execute as @s[scores={magnetPriority=1..}] run scoreboard players remove global magnetPriority 1
execute store result entity @s ArmorItems[3].tag.magnetPriority int 1 as @s[scores={magnetPriority=1..}] run scoreboard players set @s magnetPriority 0


# Set new session ID
execute store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
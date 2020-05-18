# Remove a potential block door at the entity's current position
execute at @s run fill ^ ^ ^ ^ ^ ^ minecraft:air replace minecraft:melon
execute at @s run fill ^-1 ^ ^ ^-1 ^ ^ minecraft:air replace minecraft:melon
execute at @s run fill ^ ^1 ^ ^ ^1 ^ minecraft:air replace minecraft:stripped_birch_wood[axis=z]
execute at @s run fill ^-1 ^1 ^ ^-1 ^1 ^ minecraft:air replace minecraft:stripped_birch_wood[axis=y]
execute at @s run fill ^ ^2 ^ ^ ^2 ^ minecraft:air replace minecraft:stripped_birch_wood[axis=y]
execute at @s run fill ^-1 ^2 ^ ^-1 ^2 ^ minecraft:air replace minecraft:stripped_birch_wood[axis=z]

# Revert to original position stored in NBT. This is done so there's no wonkiness resetting mid animation, etc.
execute store result entity @s Pos[0] double 1 run data get entity @s ArmorItems[3].tag.posX 1
execute store result entity @s Pos[1] double 1 run data get entity @s ArmorItems[3].tag.posY 1
execute store result entity @s Pos[2] double 1 run data get entity @s ArmorItems[3].tag.posZ 1
execute at @s run tp @s ~.5 ~ ~.5

# Reset tags so bookshelf is closed
tag @s remove bookShelfOpen
tag @s add bookShelfClose
tag @s remove open
tag @s add close
tag @s remove changedDirectionThisTick

# Reset blocks
execute at @s run fill ^ ^ ^ ^ ^ ^ minecraft:melon replace minecraft:air
execute at @s run fill ^-1 ^ ^ ^-1 ^ ^ minecraft:melon replace minecraft:air
execute at @s run fill ^ ^1 ^ ^ ^1 ^ minecraft:stripped_birch_wood[axis=z] replace minecraft:air
execute at @s run fill ^-1 ^1 ^ ^-1 ^1 ^ minecraft:stripped_birch_wood[axis=y] replace minecraft:air
execute at @s run fill ^ ^2 ^ ^ ^2 ^ minecraft:stripped_birch_wood[axis=y] replace minecraft:air
execute at @s run fill ^-1 ^2 ^ ^-1 ^2 ^ minecraft:stripped_birch_wood[axis=z] replace minecraft:air

# Hide bookshelf entity since it's closed and the visuals are done with blocks
execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 0

# Set animation scoreboard value to cancel a potential animation
scoreboard players set @s animTest 0

# Set new session ID
execute store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
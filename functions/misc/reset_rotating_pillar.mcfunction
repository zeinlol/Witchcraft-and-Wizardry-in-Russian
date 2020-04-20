# Restore rotation from saved NBT
execute store result score @s pillarState run data get entity @s ArmorItems[3].tag.storedRotation 1

# Restore visual rotation by multiplying with 90
scoreboard players set @s tmp 90
scoreboard players operation @s pillarRotation = @s pillarState
scoreboard players operation @s pillarRotation *= @s tmp

execute as @s store result entity @s Pose.Head[1] float 1 run scoreboard players get @s pillarRotation

# Set new session ID
execute store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
# Reset switch
tag @s remove wingardiumSwitchIsOccupied
execute at @s run setblock ~ 1 ~ quartz_block
execute at @s run setblock ~ 2 ~ redstone_block

# Set new session ID
execute store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
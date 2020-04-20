# Reset state
execute store result entity @s ArmorItems[3].tag.tmp2 int 1 run scoreboard players set @s tmp2 1
execute store result entity @s ArmorItems[3].tag.tmp3 int 1 run scoreboard players set @s tmp3 0
# Reset visual
execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 14

# Set new session ID
execute store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID

# Reset blocks 
execute at @s run setblock ~ 1 ~ minecraft:redstone_block
execute at @s run setblock ~ 2 ~ minecraft:quartz_block
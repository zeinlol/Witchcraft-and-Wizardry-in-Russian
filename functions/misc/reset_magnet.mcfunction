# Reset state
execute store result entity @s ArmorItems[3].tag.tmp2 int 1 run scoreboard players set @s tmp2 1
execute store result entity @s ArmorItems[3].tag.tmp3 int 1 run scoreboard players set @s tmp3 0
# Reset visual
# execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 14

# Reset active
tag @s remove activeVeraVertoObject

scoreboard players reset @s veraVertoID

# Set new session ID
execute store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
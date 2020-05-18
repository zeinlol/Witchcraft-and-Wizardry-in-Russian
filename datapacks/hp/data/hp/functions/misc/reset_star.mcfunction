execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 39
execute store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
tag @s remove starHasBeenCollected
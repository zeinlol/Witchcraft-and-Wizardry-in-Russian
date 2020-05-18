#################################
#           Secrets             #
#################################

scoreboard players set @p[tag=activePlayer,tag=onlyCommonRoomIsUnlocked] mapUnlocked 0
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.MirrorOfErised"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 55
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.ChamberOfSecrets"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 56
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.HoneydukesPassage"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 57
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.WhompingWillowPassage"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 58
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.RoomOfRequirement"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 59
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper
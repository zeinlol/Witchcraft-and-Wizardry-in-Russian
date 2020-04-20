#################################
#          Hogsmeade            #
#################################

scoreboard players set @p[tag=activePlayer,tag=onlyCommonRoomIsUnlocked] mapUnlocked 0
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.HogsmeadePlatform"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 48
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.RoadToHogsmeade"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 49
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.HogsmeadeEntrance"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 50
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.Honeydukes"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 51
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.ThreeBroomsicksInn"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 52
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.HogsHeadIn"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 53
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TheShriekingShack"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 54
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper
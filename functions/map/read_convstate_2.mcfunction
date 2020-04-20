#################################
#       The Muggle World        #
#################################

scoreboard players set @p[tag=activePlayer,tag=onlyCommonRoomIsUnlocked] mapUnlocked 0
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.PrivetDrive"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 30
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.KingsCross"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 31
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.StPancras"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 32
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.BigBen"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 33
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.LondonEye"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 34
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.GrimmauldPlace"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 35
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.GodricsHollow"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 36
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper
#################################
#     The Wizarding World       #
#################################

scoreboard players set @p[tag=activePlayer,tag=onlyCommonRoomIsUnlocked] mapUnlocked 0
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.Platform9_3_4"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 37
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.DiagonAlley"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 38
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TheLeakyCauldron"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 39
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.Gringotts"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 40
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.Ollivanders"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 41
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.MadamMalkins"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 42
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.KnockturnAlley"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 71
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.BorginAndBurkes"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 72
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.MinistryOfMagic"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 43
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TheBurrow"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 44
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.MalfoyManor"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 45
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.LovegoodResidence"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 46
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

# execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.DurmstrangShip"
# execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 47
# execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.FlourishBlotts"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 60
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.Azkaban"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 61
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper
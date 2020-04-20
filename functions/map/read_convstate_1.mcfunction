#################################
#         Hogwarts              #
#################################

# When first unlocked and the player can only travel to their commmon room

# Nice spelling past me you dumb dumb. Too late to fix it.
scoreboard players set @p[tag=activePlayer,tag=onlyCommonRoomIsUnlocked,scores={house=1}] mapUnlocked 1
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TheGriffendorCommonRoom"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 6
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper
scoreboard players set @p[tag=activePlayer,tag=onlyCommonRoomIsUnlocked,scores={house=1}] mapUnlocked 0

scoreboard players set @p[tag=activePlayer,tag=onlyCommonRoomIsUnlocked,scores={house=3}] mapUnlocked 1
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TheHufflepuffCommonRoom"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 7
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper
scoreboard players set @p[tag=activePlayer,tag=onlyCommonRoomIsUnlocked,scores={house=3}] mapUnlocked 0

scoreboard players set @p[tag=activePlayer,tag=onlyCommonRoomIsUnlocked,scores={house=2}] mapUnlocked 1
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TheRavenclawCommonRoom"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 8
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper
scoreboard players set @p[tag=activePlayer,tag=onlyCommonRoomIsUnlocked,scores={house=2}] mapUnlocked 0

scoreboard players set @p[tag=activePlayer,tag=onlyCommonRoomIsUnlocked,scores={house=4}] mapUnlocked 1
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TheSlytherinCommonRoom"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 9
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper
scoreboard players set @p[tag=activePlayer,tag=onlyCommonRoomIsUnlocked,scores={house=4}] mapUnlocked 0


scoreboard players set @p[tag=activePlayer,tag=onlyCommonRoomIsUnlocked] mapUnlocked 0
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.GreatHall"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 1
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.GrandStaircase"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 62
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TheLibrary"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 2
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.PotionsClassroom"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 3
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.DefenceAgainstTheDarkArtsClassroom"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 4
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.CharmsClassroom"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 5
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TransfigurationClassroom"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 63
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.AstronomyTower"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 64
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TransfigurationCoutyard"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 65
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TheHospitalWing"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 10
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TheWoodenBridge"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 11
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TheGreenhouses"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 12
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TheOwlery"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 13
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TheBoatHouse"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 14
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.HagridsHut"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 68
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.EntranceGates"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 15
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TheForbiddenForrest"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 16
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.SpiderLair"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 73
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TheQuidditchPitch"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 17
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.Attic"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 18
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TrophyRoom"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 75
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.MoaningMyrtlesBathroom"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 19
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.HeadMastersOffice"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 20
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TheWhompingWillow"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 21
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.RoadToHogwarts"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 22
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.TrainingGrounds"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 23
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.ClockTowerCourtyard"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 24
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.ClockTower"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 69
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.DungeonHall"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 25
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.Sewers"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 74
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.HistoryOfMagic"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 26
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.Divination"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 27
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper


execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.CaretakersOffice"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 70
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.HogwartsKitchens"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 28
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.HogwartsLaundry"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 29
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.ThirdFloorCorridor"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 66
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer,tag=!onlyCommonRoomIsUnlocked] mapUnlocked run data get entity @s ArmorItems[3].tag."mapLocation.ToadSwamp"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run scoreboard players set @s InvItemID 67
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer] run function hp:map/draw_map_location_wrapper
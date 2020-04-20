# This function "reads" quests that are stored on custom tags on items, and stores it in the quest drawing related armorstands

execute as @p[tag=activePlayer,tag=!setupQuests] run function hp:quests/read_for_questbook

############################################################
#                      Read Quests                         #
############################################################
# tmp prevents the move_quest_setup from overriding player wrapper. Shouldn't be a problem unless you really just don't want to complete your quests.
scoreboard players set 00000000-0000-0003-0000-000000000007 tmp 19

# Reset performance check
scoreboard players set @p[tag=activePlayer] invPerfCheck 0
# This tag is removed in the draw_quest_wrapper, but it wont be removed if the player has no quests
tag @p[tag=activePlayer] add noQuests

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.theLetterFromNoOne"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 1
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 1
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.diagonAlley"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 2
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 2
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.gringottsWizardingBank"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 3
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 3
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.purchaseWand"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 4
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 4
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.purchaseBooks"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 5
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 5
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.purchaseRobes"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 6
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 6
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.platform934"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 7
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 7
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.arrivalAtHogwarts"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 8
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 8
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.talkToGryffindorPrefect"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 9
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 9
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.talkToRavenclawPrefect"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 10
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 10
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.talkToHufflepuffPrefect"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 11
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 11
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.talkToSlytherinPrefect"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 12
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 12
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.toadHunt"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 13
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 13
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.lumos"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 14
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 14
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.stupefy"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 15
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 15
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.brackiumEmmendo"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 16
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 16
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.alohomora"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 17
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 17
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.wingardiumLeviosa"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 18
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 18
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.bombardaMaxima"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 19
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 19
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.veraVerto"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 20
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 20
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.expectoPatronum"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 21
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 21
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.apparition"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 22
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 22
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.goldenSkull"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 23
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 23
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.undergroundLibrary"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 24
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 24
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.oneMansTrash"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 25
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 25
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.flyingLesson"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 26
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 26
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.herbology"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 27
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 27
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.potions"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 28
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 28
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.extracurricularLearning"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 29
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 29
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.flying"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 30
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 30
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.monsterBookOfMonsters"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 31
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 31
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.sewerRats"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 32
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 32
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.unfriendlyCompetition"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 33
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 33
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.theOrderOfThePhoenix"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 34
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 34
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.azkaban"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 35
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 35
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.thePensive"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 36
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 36
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.toadHunt2"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 37
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 37
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.toadHunt3"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 38
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 38
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.toadHunt4"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 39
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 39
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.toadHunt5"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 40
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 40
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.toadHunt6"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 41
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 41
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.chamberOfSecrets"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 42
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 42
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.mirrorOfErised"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 43
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 43
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.theRoomOfRequirement"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 44
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 44
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.hogsmeadeLetterDelivery"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 45
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 45
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.burrowInfestation"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 46
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 46
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.trainingGroundToads"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 47
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 47
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.followTheSpiders"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 48
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 48
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.londonLetterDelivery"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 49
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 49
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.delinquentDailyProphet"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 50
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 50
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.anticAdvertisement"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 51
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 51
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.postponedPostage"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 52
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 52
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.snowmanSupplies"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 53
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 53
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.theMostHauntedPlaceInBritain"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 54
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 54
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.curableCreatureConsultation"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 55
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 55
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.snipeHunt"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 56
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 56
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.riddleRiches"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 57
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 57
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.dungeonDelving"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 58
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 58
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.handOfGlory"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 59
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 59
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.parchmentPoverty"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 60
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 60
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.submergedShrub"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 61
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 61
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.quidditchSquabble"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 62
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 62
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.kitchenRaid"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 63
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 63
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.dubiousDivination"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 64
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 64
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.frogChoirQuarrel"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 65
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 65
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.quidditchMischief"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 66
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 66
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.justBusiness"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 67
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 67
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.bubotuberBurglary"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 68
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 68
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.demiguiseDodge"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 69
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 69
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.aLovelyLetter"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 71
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 71
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] store result score @p[tag=activePlayer] questState run data get entity @s ArmorItems[3].tag."quests.illegalItems"
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run scoreboard players set @s questID 72
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..,questMenu=1}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run scoreboard players set @s questID 72
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=-1,questMenu=3}] run function hp:quests/draw_quest_wrapper
execute if entity @p[tag=activePlayer,scores={invPerfCheck=..6}] as @p[tag=activePlayer,scores={questState=1..},tag=setupQuests] as 0-0-3-0-7 if entity @s[scores={tmp=1..}] at @s run function hp:quests/move_quest_setup

tag @p[tag=activePlayer] remove setupQuests
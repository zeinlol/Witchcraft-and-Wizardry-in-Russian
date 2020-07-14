##############################################
# The Выручай-комната
##############################################
scoreboard players set @s questID 44
scoreboard players operation @s questState = theRoomOfRequirement sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Locate the Выручай-комната

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1432,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 778 99 106
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1


execute as @s[scores={questState=1,lastRegion=8,lastLocation=59},tag=isTrackedQuest] run scoreboard players set theRoomOfRequirement sharedQuests 2

execute as @s[scores={playerID=1}] unless score theRoomOfRequirement p1Quests = theRoomOfRequirement sharedQuests if score theRoomOfRequirement sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score theRoomOfRequirement p2Quests = theRoomOfRequirement sharedQuests if score theRoomOfRequirement sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score theRoomOfRequirement p3Quests = theRoomOfRequirement sharedQuests if score theRoomOfRequirement sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score theRoomOfRequirement p4Quests = theRoomOfRequirement sharedQuests if score theRoomOfRequirement sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound

execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation theRoomOfRequirement p1Quests = theRoomOfRequirement sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation theRoomOfRequirement p2Quests = theRoomOfRequirement sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation theRoomOfRequirement p3Quests = theRoomOfRequirement sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation theRoomOfRequirement p4Quests = theRoomOfRequirement sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Find Luna's Possessions

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1431,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

# /execute in minecraft:overworld run tp @s 5581.15 49.06 1018.75 -36.42 -4.67
# /execute in minecraft:overworld run tp @s 5562.25 50.86 1059.88 60.82 29.59
# /execute in minecraft:overworld run tp @s 5538.06 50.48 1044.20 138.46 41.81
# /execute in minecraft:overworld run tp @s 5509.83 50.82 1010.93 77.65 37.46
# /execute in minecraft:overworld run tp @s 5595.34 50.67 1019.06 232.72 25.63

### Function ###
execute as @s[scores={questState=2}] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=lunaBelonging,tag=!pickedUp] add questHover
execute as @s[scores={questState=2}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

### Trigger ###
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=lunaBelonging,tag=!pickedUp] run scoreboard players add lunaBelongings sharedQuests 1
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=lunaBelonging,tag=!pickedUp] at @s run playsound minecraft:custom.ui.inventory.game_inventory.generic.picked_up_generic master @a
execute as @s[tag=hasPressedF] as @e[tag=questHover,tag=lunaBelonging,tag=!pickedUp] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[tag=hasPressedF] as @e[tag=questHover,tag=lunaBelonging,tag=!pickedUp] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @s[tag=hasPressedF] as @e[tag=questHover,tag=lunaBelonging,tag=!pickedUp] run tag @s add pickedUp

execute as @s[scores={questState=2},tag=isTrackedQuest] as @e[tag=lunaBelonging,tag=!pickedUp] at @s run particle minecraft:portal ~ ~ ~ 0.1 0.1 0.1 0.5 1 force @p[tag=activePlayer]

# Title
execute as @s[scores={questState=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=2,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Найдите вещи Полумны Лавгуд (","color":"gold"},{"score":{"name":"lunaBelongings","objective":"sharedQuests"},"color":"gold"},{"text":" / 5","color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Найдите вещи Полумны Лавгуд (","color":"gold"},{"score":{"name":"lunaBelongings","objective":"sharedQuests"},"color":"gold"},{"text":" / 5","color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Найдите вещи Полумны Лавгуд (","color":"gold"},{"score":{"name":"lunaBelongings","objective":"sharedQuests"},"color":"gold"},{"text":" / 5","color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Найдите вещи Полумны Лавгуд (","color":"gold"},{"score":{"name":"lunaBelongings","objective":"sharedQuests"},"color":"gold"},{"text":" / 5","color":"gold"},{"text":")","color":"gold"}]


execute if score lunaBelongings sharedQuests matches 5 run scoreboard players set theRoomOfRequirement sharedQuests 3

execute as @s[scores={playerID=1}] unless score theRoomOfRequirement p1Quests = theRoomOfRequirement sharedQuests if score theRoomOfRequirement sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score theRoomOfRequirement p2Quests = theRoomOfRequirement sharedQuests if score theRoomOfRequirement sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score theRoomOfRequirement p3Quests = theRoomOfRequirement sharedQuests if score theRoomOfRequirement sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score theRoomOfRequirement p4Quests = theRoomOfRequirement sharedQuests if score theRoomOfRequirement sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound

execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation theRoomOfRequirement p1Quests = theRoomOfRequirement sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation theRoomOfRequirement p2Quests = theRoomOfRequirement sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation theRoomOfRequirement p3Quests = theRoomOfRequirement sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation theRoomOfRequirement p4Quests = theRoomOfRequirement sharedQuests
execute as @s[tag=newState] run tag @s remove newState



#############
## State 3 ###########################################################################################
#############
# Return to Luna

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1430,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3,lastRegion=8},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5493 50 1038
execute as @s[scores={questState=3,lastRegion=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 8
execute as @s[scores={questState=3,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 667 52 57
execute as @s[scores={questState=3,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=3,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=16},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s


### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=3,conv=16,convState=1}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Я нашёл твои вещи\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 12
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use



### Trigger ###
execute as @s[scores={questState=3},tag=inNormalState,tag=hasCompletedtheRoomOfRequirement] run scoreboard players set theRoomOfRequirement sharedQuests -1
execute as @s[scores={playerID=1}] unless score theRoomOfRequirement p1Quests = theRoomOfRequirement sharedQuests if score theRoomOfRequirement sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score theRoomOfRequirement p2Quests = theRoomOfRequirement sharedQuests if score theRoomOfRequirement sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score theRoomOfRequirement p3Quests = theRoomOfRequirement sharedQuests if score theRoomOfRequirement sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score theRoomOfRequirement p4Quests = theRoomOfRequirement sharedQuests if score theRoomOfRequirement sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players add @s money 150
execute as @s[tag=completeQuest] run scoreboard players set theRoomOfRequirement sharedQuests -1
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run tag @s remove hasCompletedtheRoomOfRequirement
execute as @s[tag=completeQuest] run scoreboard players set lunaBelongings sharedQuests 0

execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation theRoomOfRequirement p1Quests = theRoomOfRequirement sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation theRoomOfRequirement p2Quests = theRoomOfRequirement sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation theRoomOfRequirement p3Quests = theRoomOfRequirement sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation theRoomOfRequirement p4Quests = theRoomOfRequirement sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# reset quest tracking boolean
tag @s remove isTrackedQuest


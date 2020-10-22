##############################################
# Demiguise Dodge
##############################################
scoreboard players set @s questID 69
scoreboard players operation @s questState = demiguiseDodge sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Find and approach the demiguise

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1357,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Trigger ###
execute positioned 351.34 17.00 355.48 as @s[distance=..4,scores={questState=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set demiguiseDodge sharedQuests 2

execute as @s[scores={playerID=1}] unless score demiguiseDodge p1Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score demiguiseDodge p2Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score demiguiseDodge p3Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score demiguiseDodge p4Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation demiguiseDodge p1Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation demiguiseDodge p2Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation demiguiseDodge p3Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation demiguiseDodge p4Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Find and approach the demiguise

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1357,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Trigger ###
execute positioned 317.48 12.00 379.40 as @s[distance=..4,scores={questState=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set demiguiseDodge sharedQuests 3

execute as @s[scores={playerID=1}] unless score demiguiseDodge p1Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score demiguiseDodge p2Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score demiguiseDodge p3Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score demiguiseDodge p4Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation demiguiseDodge p1Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation demiguiseDodge p2Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation demiguiseDodge p3Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation demiguiseDodge p4Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 3 ###########################################################################################
#############
# Find and approach the demiguise

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1357,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Trigger ###
execute positioned 309.38 14.00 357.45 as @s[distance=..4,scores={questState=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set demiguiseDodge sharedQuests 4

execute as @s[scores={playerID=1}] unless score demiguiseDodge p1Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=2}] unless score demiguiseDodge p2Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=3}] unless score demiguiseDodge p3Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=4}] unless score demiguiseDodge p4Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 4 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation demiguiseDodge p1Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation demiguiseDodge p2Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation demiguiseDodge p3Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation demiguiseDodge p4Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 4 ###########################################################################################
#############
# Find and approach the demiguise

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1357,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Trigger ###
execute positioned 340.47 18.00 327.28 as @s[distance=..4,scores={questState=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set demiguiseDodge sharedQuests 5

execute as @s[scores={playerID=1}] unless score demiguiseDodge p1Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=2}] unless score demiguiseDodge p2Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=3}] unless score demiguiseDodge p3Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=4}] unless score demiguiseDodge p4Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 5 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation demiguiseDodge p1Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation demiguiseDodge p2Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation demiguiseDodge p3Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation demiguiseDodge p4Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 5 ###########################################################################################
#############
# Find and approach the demiguise

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1357,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 1


### Function ###
execute as @s[scores={questState=5}] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=demiguise,tag=visible] add questHover
execute as @s[scores={questState=5}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

### Trigger ###
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=demiguise] run scoreboard players set demiguiseDodge sharedQuests 6

execute as @s[scores={playerID=1}] unless score demiguiseDodge p1Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=2}] unless score demiguiseDodge p2Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=3}] unless score demiguiseDodge p3Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=4}] unless score demiguiseDodge p4Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches 6 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation demiguiseDodge p1Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation demiguiseDodge p2Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation demiguiseDodge p3Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation demiguiseDodge p4Quests = demiguiseDodge sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 6 ###########################################################################################
#############
# Speak to Hagrid

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1356,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=6,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[tag=hagridLayer2] unless entity @e[tag=hagridLayer1,tag=inConversationNPC,limit=1,sort=nearest,distance=..2] run particle minecraft:angry_villager ~ ~1 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 328.92 14.00 359.86

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=6,convState=1,conv=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Я приручил Демигуза\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 29
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


# Trigger
execute as @s[scores={questState=6},tag=inNormalState,tag=hasCompletedDemiguiseDodge] run scoreboard players set demiguiseDodge sharedQuests -1
execute as @s[scores={playerID=1}] unless score demiguiseDodge p1Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score demiguiseDodge p2Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score demiguiseDodge p3Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score demiguiseDodge p4Quests = demiguiseDodge sharedQuests if score demiguiseDodge sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set demiguiseDodge sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players add @s money 150
execute as @s[tag=completeQuest] run tag @s remove hasCompletedDemiguiseDodge
execute as @s[tag=completeQuest] run scoreboard players set @s InvItemID 51
execute as @s[tag=completeQuest] run scoreboard players set @s InvItemCount 5
execute as @s[tag=completeQuest] run function hp:inventory/give_player_item
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation demiguiseDodge p1Quests = demiguiseDodge sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation demiguiseDodge p2Quests = demiguiseDodge sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation demiguiseDodge p3Quests = demiguiseDodge sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation demiguiseDodge p4Quests = demiguiseDodge sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# Complete Quest Cheat
execute as @s[tag=completeTrackedQuest] run scoreboard players set demiguiseDodge sharedQuests -1
execute as @s[tag=completeTrackedQuest] run tag @s remove completeTrackedQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
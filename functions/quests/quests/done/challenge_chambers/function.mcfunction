##############################################
# Зеркало Еиналеж
##############################################
scoreboard players set @s questID 43
scoreboard players operation @s questState = mirrorOfErised sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Locate the Third Floor Corridor

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1436,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 716.36 92.00 286.05

### Trigger ###
execute positioned 716.36 92.00 286.05 as @s[distance=..4,scores={questState=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set mirrorOfErised sharedQuests 2
execute positioned 2004 10 799 as @s[distance=..18,scores={questState=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set mirrorOfErised sharedQuests 2

execute as @s[scores={playerID=1}] unless score mirrorOfErised p1Quests = mirrorOfErised sharedQuests if score mirrorOfErised sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score mirrorOfErised p2Quests = mirrorOfErised sharedQuests if score mirrorOfErised sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score mirrorOfErised p3Quests = mirrorOfErised sharedQuests if score mirrorOfErised sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score mirrorOfErised p4Quests = mirrorOfErised sharedQuests if score mirrorOfErised sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation mirrorOfErised p1Quests = mirrorOfErised sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation mirrorOfErised p2Quests = mirrorOfErised sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation mirrorOfErised p3Quests = mirrorOfErised sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation mirrorOfErised p4Quests = mirrorOfErised sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Make your way to the Зеркало Еиналеж

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1435,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2,lastRegion=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2,lastRegion=8},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=2,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=2,lastRegion=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 8
execute as @s[scores={questState=2,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 704.98 93.30 307.03

### Trigger ###
execute positioned 2004 10 799 as @s[distance=..18,scores={questState=2},tag=isTrackedQuest] run scoreboard players set mirrorOfErised sharedQuests 3

execute as @s[scores={playerID=1}] unless score mirrorOfErised p1Quests = mirrorOfErised sharedQuests if score mirrorOfErised sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score mirrorOfErised p2Quests = mirrorOfErised sharedQuests if score mirrorOfErised sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score mirrorOfErised p3Quests = mirrorOfErised sharedQuests if score mirrorOfErised sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score mirrorOfErised p4Quests = mirrorOfErised sharedQuests if score mirrorOfErised sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation mirrorOfErised p1Quests = mirrorOfErised sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation mirrorOfErised p2Quests = mirrorOfErised sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation mirrorOfErised p3Quests = mirrorOfErised sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation mirrorOfErised p4Quests = mirrorOfErised sharedQuests
execute as @s[tag=newState] run scoreboard players set mirrorOfErisedLocation global 1
execute as @s[tag=newState] run tag @s remove newState



#############
## State 3 ###########################################################################################
#############
# Move the Mirror to its proper location

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1434,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2004 11 799
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 8


# Special selection
execute as @s[scores={questState=3}] at @s positioned ^ ^-.25 ^1 run tag @e[distance=..2,limit=1,sort=nearest,tag=mirrorOfErised] add questHover
execute as @s[scores={questState=3}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

execute as @s[tag=inNormalState,tag=hasPressedF] if entity @e[tag=questHover,tag=mirrorOfErised] as @p[tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] as @a[scores={trackedQuestID=43}] run scoreboard players set @s cutSceneID 50
execute as @s[tag=inNormalState,tag=hasPressedF] if entity @e[tag=questHover,tag=mirrorOfErised] as @p[tag=activePlayer,tag=hasPressedF,tag=!flyingBroom] as @a[scores={trackedQuestID=43}] run function hp:cutscenes/init_cutscene


# Trigger
execute as @s[scores={questState=3},tag=isTrackedQuest,tag=hasMovedMirrorOfErised] run scoreboard players set mirrorOfErised sharedQuests 4

execute as @s[scores={playerID=1}] unless score mirrorOfErised p1Quests = mirrorOfErised sharedQuests if score mirrorOfErised sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=2}] unless score mirrorOfErised p2Quests = mirrorOfErised sharedQuests if score mirrorOfErised sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=3}] unless score mirrorOfErised p3Quests = mirrorOfErised sharedQuests if score mirrorOfErised sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=4}] unless score mirrorOfErised p4Quests = mirrorOfErised sharedQuests if score mirrorOfErised sharedQuests matches 4 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation mirrorOfErised p1Quests = mirrorOfErised sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation mirrorOfErised p2Quests = mirrorOfErised sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation mirrorOfErised p3Quests = mirrorOfErised sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation mirrorOfErised p4Quests = mirrorOfErised sharedQuests
execute as @s[tag=newState] run function hp:discovery/locations/mirror_of_erised
execute as @s[tag=newState] run tag @s remove hasMovedMirrorOfErised
execute as @s[tag=newState] run tag @s remove newState


#############
## State 4 ###########################################################################################
#############
# Return to Filch

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1433,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 769 66 351
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=4,npcQuestIcon=1},tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=5},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s



### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=4,convState=1,conv=5}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I've moved the mirror\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 22
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=4},tag=inNormalState,tag=hasSpokenToFilchAfterMovingMirrorOfErised] run scoreboard players set mirrorOfErised sharedQuests -1
execute as @s[scores={playerID=1}] unless score mirrorOfErised p1Quests = mirrorOfErised sharedQuests if score mirrorOfErised sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score mirrorOfErised p2Quests = mirrorOfErised sharedQuests if score mirrorOfErised sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score mirrorOfErised p3Quests = mirrorOfErised sharedQuests if score mirrorOfErised sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score mirrorOfErised p4Quests = mirrorOfErised sharedQuests if score mirrorOfErised sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set mirrorOfErised sharedQuests -1
execute as @s[tag=completeQuest] run tag @s remove hasSpokenToFilchAfterMovingMirrorOfErised
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation mirrorOfErised p1Quests = mirrorOfErised sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation mirrorOfErised p2Quests = mirrorOfErised sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation mirrorOfErised p3Quests = mirrorOfErised sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation mirrorOfErised p4Quests = mirrorOfErised sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
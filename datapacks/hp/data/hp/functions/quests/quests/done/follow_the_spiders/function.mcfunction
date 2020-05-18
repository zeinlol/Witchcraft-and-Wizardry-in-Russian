##############################################
# Follow the Spiders
##############################################
scoreboard players set @s questID 48
scoreboard players operation @s questState = followTheSpiders sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Find the Spider Lair

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1422,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 88 35 728
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
### Function ###
### Trigger ###
execute as @s[scores={questState=1,lastLocation=73},tag=isTrackedQuest] run scoreboard players set followTheSpiders sharedQuests 2


execute as @s[scores={playerID=1}] unless score followTheSpiders p1Quests = followTheSpiders sharedQuests if score followTheSpiders sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score followTheSpiders p2Quests = followTheSpiders sharedQuests if score followTheSpiders sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score followTheSpiders p3Quests = followTheSpiders sharedQuests if score followTheSpiders sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score followTheSpiders p4Quests = followTheSpiders sharedQuests if score followTheSpiders sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound

execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation followTheSpiders p1Quests = followTheSpiders sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation followTheSpiders p2Quests = followTheSpiders sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation followTheSpiders p3Quests = followTheSpiders sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation followTheSpiders p4Quests = followTheSpiders sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Retrieve the Pet Parrot

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1421,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 114.03 43.00 812.98
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###
execute as @s[scores={questState=2}] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=spiderParrot] add questHover
# execute as @s[scores={questState=2}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

### Trigger ###
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=spiderParrot] run tag @s add hasCollectedSpiderParrot
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=spiderParrot] at @s run playsound minecraft:custom.inventory.pickup.meat master @a
execute as @s[tag=hasPressedF] as @e[tag=questHover,tag=spiderParrot] at @s run particle minecraft:cloud ~ ~.3 ~ 0.1 0.1 0.1 0.01 10 force
execute as @s[tag=hasPressedF] as @e[tag=questHover,tag=spiderParrot] run effect give @s minecraft:invisibility 999999 1 true

### Trigger ###
execute as @s[scores={questState=2},tag=isTrackedQuest,tag=hasCollectedSpiderParrot] run scoreboard players set followTheSpiders sharedQuests 3


execute as @s[scores={playerID=1}] unless score followTheSpiders p1Quests = followTheSpiders sharedQuests if score followTheSpiders sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score followTheSpiders p2Quests = followTheSpiders sharedQuests if score followTheSpiders sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score followTheSpiders p3Quests = followTheSpiders sharedQuests if score followTheSpiders sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score followTheSpiders p4Quests = followTheSpiders sharedQuests if score followTheSpiders sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove hasCollectedSpiderParrot
execute as @s[tag=newState] run scoreboard players set oliverRivers p1convOverride 4
execute as @s[tag=newState] run scoreboard players set oliverRivers p2convOverride 4
execute as @s[tag=newState] run scoreboard players set oliverRivers p3convOverride 4
execute as @s[tag=newState] run scoreboard players set oliverRivers p4convOverride 4
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation followTheSpiders p1Quests = followTheSpiders sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation followTheSpiders p2Quests = followTheSpiders sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation followTheSpiders p3Quests = followTheSpiders sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation followTheSpiders p4Quests = followTheSpiders sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Return to Теодор Нотт
### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1420,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 387 59 271
execute as @s[scores={questState=3,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=421},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 1


### Function ###

### Trigger ###
execute as @s[scores={questState=3},tag=inNormalState,tag=hasCompletedFollowTheSpiders] run scoreboard players set followTheSpiders sharedQuests -1
execute as @s[scores={playerID=1}] unless score followTheSpiders p1Quests = followTheSpiders sharedQuests if score followTheSpiders sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score followTheSpiders p2Quests = followTheSpiders sharedQuests if score followTheSpiders sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score followTheSpiders p3Quests = followTheSpiders sharedQuests if score followTheSpiders sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score followTheSpiders p4Quests = followTheSpiders sharedQuests if score followTheSpiders sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set followTheSpiders sharedQuests -1
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run tag @s remove hasCompletedFollowTheSpiders
execute as @s[tag=completeQuest] run scoreboard players add @s money 200
execute as @s[tag=completeQuest] run scoreboard players set oliverRivers p1convOverride 5
execute as @s[tag=completeQuest] run scoreboard players set oliverRivers p2convOverride 5
execute as @s[tag=completeQuest] run scoreboard players set oliverRivers p3convOverride 5
execute as @s[tag=completeQuest] run scoreboard players set oliverRivers p4convOverride 5
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation followTheSpiders p1Quests = followTheSpiders sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation followTheSpiders p2Quests = followTheSpiders sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation followTheSpiders p3Quests = followTheSpiders sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation followTheSpiders p4Quests = followTheSpiders sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# reset quest tracking boolean
tag @s remove isTrackedQuest
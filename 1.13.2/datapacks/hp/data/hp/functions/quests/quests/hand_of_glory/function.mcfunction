##############################################
# Hand of Glory
##############################################
scoreboard players set @s questID 59
scoreboard players operation @s questState = handOfGlory sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Pick up the hand

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1383,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2789.48 32.00 1039.50

### Function ###
execute as @s[scores={questState=1}] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=handOfGlory] add questHover
execute as @s[scores={questState=1}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

### Trigger ###
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=handOfGlory,tag=!pickedUp] run scoreboard players set handOfGlory sharedQuests 2
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=handOfGlory,tag=!pickedUp] at @s run playsound minecraft:custom.ui.inventory.game_inventory.generic.picked_up_generic master @a
execute as @s[tag=hasPressedF] as @e[tag=questHover,tag=handOfGlory,tag=!pickedUp] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[tag=hasPressedF] as @e[tag=questHover,tag=handOfGlory,tag=!pickedUp] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @s[tag=hasPressedF] as @e[tag=questHover,tag=handOfGlory,tag=!pickedUp] run tag @s add pickedUp


### Trigger ###
execute as @s[scores={playerID=1}] unless score handOfGlory p1Quests = handOfGlory sharedQuests if score handOfGlory sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score handOfGlory p2Quests = handOfGlory sharedQuests if score handOfGlory sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score handOfGlory p3Quests = handOfGlory sharedQuests if score handOfGlory sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score handOfGlory p4Quests = handOfGlory sharedQuests if score handOfGlory sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run scoreboard players set hogwarts174 p1convOverride 1
execute as @s[tag=newState] run scoreboard players set hogwarts174 p2convOverride 1
execute as @s[tag=newState] run scoreboard players set hogwarts174 p3convOverride 1
execute as @s[tag=newState] run scoreboard players set hogwarts174 p4convOverride 1
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation handOfGlory p1Quests = handOfGlory sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation handOfGlory p2Quests = handOfGlory sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation handOfGlory p3Quests = handOfGlory sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation handOfGlory p4Quests = handOfGlory sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Look for Блейз Забини in the Гостиная Слизерина

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1382,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 681.51 15.50 284.18
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=425},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Trigger ###
execute as @s[scores={questState=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest,tag=hasLookedForBlaiseZabiniInTheSlytherinCommonRoom] run scoreboard players set handOfGlory sharedQuests 3

execute as @s[scores={playerID=1}] unless score handOfGlory p1Quests = handOfGlory sharedQuests if score handOfGlory sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score handOfGlory p2Quests = handOfGlory sharedQuests if score handOfGlory sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score handOfGlory p3Quests = handOfGlory sharedQuests if score handOfGlory sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score handOfGlory p4Quests = handOfGlory sharedQuests if score handOfGlory sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run scoreboard players set hogwarts174 p1convOverride 0
execute as @s[tag=newState] run scoreboard players set hogwarts174 p2convOverride 0
execute as @s[tag=newState] run scoreboard players set hogwarts174 p3convOverride 0
execute as @s[tag=newState] run scoreboard players set hogwarts174 p4convOverride 0
execute as @s[tag=newState] run scoreboard players set hogwarts175 p1convOverride 1
execute as @s[tag=newState] run scoreboard players set hogwarts175 p2convOverride 1
execute as @s[tag=newState] run scoreboard players set hogwarts175 p3convOverride 1
execute as @s[tag=newState] run scoreboard players set hogwarts175 p4convOverride 1
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation handOfGlory p1Quests = handOfGlory sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation handOfGlory p2Quests = handOfGlory sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation handOfGlory p3Quests = handOfGlory sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation handOfGlory p4Quests = handOfGlory sharedQuests
execute as @s[tag=newState] run tag @s remove hasLookedForBlaiseZabiniInTheSlytherinCommonRoom
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Look for Блейз Забини in the Астрономическая Башня

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1381,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 724.93 155.00 151.25
execute as @s[scores={questState=3,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=426},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

# Trigger
execute as @s[scores={questState=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest,tag=hasLookedForBlaiseZabiniInTheAstronomyTower] run scoreboard players set handOfGlory sharedQuests 4

execute as @s[scores={playerID=1}] unless score handOfGlory p1Quests = handOfGlory sharedQuests if score handOfGlory sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=2}] unless score handOfGlory p2Quests = handOfGlory sharedQuests if score handOfGlory sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=3}] unless score handOfGlory p3Quests = handOfGlory sharedQuests if score handOfGlory sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=4}] unless score handOfGlory p4Quests = handOfGlory sharedQuests if score handOfGlory sharedQuests matches 4 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run scoreboard players set hogwarts175 p1convOverride 0
execute as @s[tag=newState] run scoreboard players set hogwarts175 p2convOverride 0
execute as @s[tag=newState] run scoreboard players set hogwarts175 p3convOverride 0
execute as @s[tag=newState] run scoreboard players set hogwarts175 p4convOverride 0
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation handOfGlory p1Quests = handOfGlory sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation handOfGlory p2Quests = handOfGlory sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation handOfGlory p3Quests = handOfGlory sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation handOfGlory p4Quests = handOfGlory sharedQuests
execute as @s[tag=newState] run tag @s remove hasLookedForBlaiseZabiniInTheAstronomyTower
execute as @s[tag=newState] run tag @s remove newState

#############
## State 4 ###########################################################################################
#############
# Look for Блейз Забини in the studyhall

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1380,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 731.12 66.00 69.31
execute as @s[scores={questState=4,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=271},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s


execute as @s[scores={questState=..4},tag=inNormalState,tag=hasCompletedHandOfGlory] run scoreboard players set handOfGlory sharedQuests -1
execute as @s[scores={playerID=1}] unless score handOfGlory p1Quests = handOfGlory sharedQuests if score handOfGlory sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score handOfGlory p2Quests = handOfGlory sharedQuests if score handOfGlory sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score handOfGlory p3Quests = handOfGlory sharedQuests if score handOfGlory sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score handOfGlory p4Quests = handOfGlory sharedQuests if score handOfGlory sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set handOfGlory sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players add @s money 150
execute as @s[tag=completeQuest] run tag @s remove hasCompletedHandOfGlory
execute as @s[tag=completeQuest] run scoreboard players set hogwarts174 p1convOverride 0
execute as @s[tag=completeQuest] run scoreboard players set hogwarts174 p2convOverride 0
execute as @s[tag=completeQuest] run scoreboard players set hogwarts174 p3convOverride 0
execute as @s[tag=completeQuest] run scoreboard players set hogwarts174 p4convOverride 0
execute as @s[tag=completeQuest] run scoreboard players set hogwarts175 p1convOverride 0
execute as @s[tag=completeQuest] run scoreboard players set hogwarts175 p2convOverride 0
execute as @s[tag=completeQuest] run scoreboard players set hogwarts175 p3convOverride 0
execute as @s[tag=completeQuest] run scoreboard players set hogwarts175 p4convOverride 0
execute as @s[tag=completeQuest] run scoreboard players set blaiseZabini p1convOverride 0
execute as @s[tag=completeQuest] run scoreboard players set blaiseZabini p2convOverride 0
execute as @s[tag=completeQuest] run scoreboard players set blaiseZabini p3convOverride 0
execute as @s[tag=completeQuest] run scoreboard players set blaiseZabini p4convOverride 0
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation handOfGlory p1Quests = handOfGlory sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation handOfGlory p2Quests = handOfGlory sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation handOfGlory p3Quests = handOfGlory sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation handOfGlory p4Quests = handOfGlory sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# Complete Quest Cheat
execute as @s[tag=completeTrackedQuest] run scoreboard players set handOfGlory sharedQuests -1
execute as @s[tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

# reset quest tracking boolean
tag @s remove isTrackedQuest
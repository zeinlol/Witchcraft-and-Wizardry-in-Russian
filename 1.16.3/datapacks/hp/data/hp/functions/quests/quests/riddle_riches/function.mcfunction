##############################################
# Riddle Riches
##############################################
scoreboard players set @s questID 57
scoreboard players operation @s questState = riddleRiches sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Read the first clue

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1393,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Trigger ###
execute as @s[scores={questState=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set riddleRiches sharedQuests 2

execute as @s[scores={playerID=1}] unless score riddleRiches p1Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score riddleRiches p2Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score riddleRiches p3Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score riddleRiches p4Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation riddleRiches p1Quests = riddleRiches sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation riddleRiches p2Quests = riddleRiches sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation riddleRiches p3Quests = riddleRiches sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation riddleRiches p4Quests = riddleRiches sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Find the second clue

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1392,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###
execute as @s[scores={questState=2..6}] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=clue2] add questHover
execute as @s[scores={questState=2..6}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Trigger
execute as @s[scores={questState=2},tag=isTrackedQuest,tag=hasReadSecondClue] run scoreboard players set riddleRiches sharedQuests 3

execute as @s[scores={playerID=1}] unless score riddleRiches p1Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score riddleRiches p2Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score riddleRiches p3Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score riddleRiches p4Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation riddleRiches p1Quests = riddleRiches sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation riddleRiches p2Quests = riddleRiches sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation riddleRiches p3Quests = riddleRiches sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation riddleRiches p4Quests = riddleRiches sharedQuests
execute as @s[tag=newState] run tag @s remove hasReadSecondClue
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Find the third clue

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1391,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###
execute as @s[scores={questState=3..6}] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=clue3] add questHover
execute as @s[scores={questState=3..6}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch
# Trigger
execute as @s[scores={questState=3},tag=isTrackedQuest,tag=hasReadThirdClue] run scoreboard players set riddleRiches sharedQuests 4

execute as @s[scores={playerID=1}] unless score riddleRiches p1Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=2}] unless score riddleRiches p2Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=3}] unless score riddleRiches p3Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=4}] unless score riddleRiches p4Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 4 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation riddleRiches p1Quests = riddleRiches sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation riddleRiches p2Quests = riddleRiches sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation riddleRiches p3Quests = riddleRiches sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation riddleRiches p4Quests = riddleRiches sharedQuests
execute as @s[tag=newState] run tag @s remove hasReadThirdClue
execute as @s[tag=newState] run tag @s remove newState

#############
## State 4 ###########################################################################################
#############
# Find the fourth clue

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1390,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###
execute as @s[scores={questState=4..6}] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=clue4] add questHover
execute as @s[scores={questState=4..6}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Trigger
execute as @s[scores={questState=4},tag=isTrackedQuest,tag=hasReadFourthClue] run scoreboard players set riddleRiches sharedQuests 5

execute as @s[scores={playerID=1}] unless score riddleRiches p1Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=2}] unless score riddleRiches p2Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=3}] unless score riddleRiches p3Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=4}] unless score riddleRiches p4Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 5 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation riddleRiches p1Quests = riddleRiches sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation riddleRiches p2Quests = riddleRiches sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation riddleRiches p3Quests = riddleRiches sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation riddleRiches p4Quests = riddleRiches sharedQuests
execute as @s[tag=newState] run tag @s remove hasReadFourthClue
execute as @s[tag=newState] run tag @s remove newState

#############
## State 5 ###########################################################################################
#############
# Find the fifth clue

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1389,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###
execute as @s[scores={questState=5..6}] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=clue5] add questHover
execute as @s[scores={questState=5..6}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Trigger
execute as @s[scores={questState=5},tag=isTrackedQuest,tag=hasReadFifthClue] run scoreboard players set riddleRiches sharedQuests 6

execute as @s[scores={playerID=1}] unless score riddleRiches p1Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=2}] unless score riddleRiches p2Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=3}] unless score riddleRiches p3Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=4}] unless score riddleRiches p4Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches 6 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation riddleRiches p1Quests = riddleRiches sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation riddleRiches p2Quests = riddleRiches sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation riddleRiches p3Quests = riddleRiches sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation riddleRiches p4Quests = riddleRiches sharedQuests
execute as @s[tag=newState] run tag @s remove hasReadFifthClue
execute as @s[tag=newState] run tag @s remove newState


#############
## State 6 ###########################################################################################
#############
# Find the Treasure

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1388,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###
execute as @s[scores={questState=6}] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=clue6] add questHover
execute as @s[scores={questState=6}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch


execute as @s[scores={questState=6},tag=inNormalState,tag=hasCompletedRiddleRiches] run scoreboard players set riddleRiches sharedQuests -1
execute as @s[scores={playerID=1}] unless score riddleRiches p1Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score riddleRiches p2Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score riddleRiches p3Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score riddleRiches p4Quests = riddleRiches sharedQuests if score riddleRiches sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set riddleRiches sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players set hogwartsPuzzleDoor21Direction global 1
execute as @s[tag=completeQuest] run tag @s remove hasCompletedRiddleRiches
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation riddleRiches p1Quests = riddleRiches sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation riddleRiches p2Quests = riddleRiches sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation riddleRiches p3Quests = riddleRiches sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation riddleRiches p4Quests = riddleRiches sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
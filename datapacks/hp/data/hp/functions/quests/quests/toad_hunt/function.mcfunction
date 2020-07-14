  ##############################################
# Охота за жабой
##############################################
scoreboard players set @s questID 13
scoreboard players operation @s questState = toadHunt1 sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Find the Toad

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1490,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1,lastLocation=37},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] unless score @s lastLocation matches 37 run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2960.30 60.81 -4.46
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

execute as @s[scores={playerID=1}] unless score toadHunt1 p1Quests = toadHunt1 sharedQuests if score toadHunt1 sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score toadHunt1 p2Quests = toadHunt1 sharedQuests if score toadHunt1 sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score toadHunt1 p3Quests = toadHunt1 sharedQuests if score toadHunt1 sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score toadHunt1 p4Quests = toadHunt1 sharedQuests if score toadHunt1 sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1},tag=!hasCompletedSortingCeremony] run scoreboard players set neville p1convOverride 4
execute as @s[tag=newState,scores={playerID=2},tag=!hasCompletedSortingCeremony] run scoreboard players set neville p2convOverride 4
execute as @s[tag=newState,scores={playerID=3},tag=!hasCompletedSortingCeremony] run scoreboard players set neville p3convOverride 4
execute as @s[tag=newState,scores={playerID=4},tag=!hasCompletedSortingCeremony] run scoreboard players set neville p4convOverride 4
execute as @s[tag=newState,scores={playerID=1},tag=hasCompletedSortingCeremony] run scoreboard players set neville p1convOverride 22
execute as @s[tag=newState,scores={playerID=2},tag=hasCompletedSortingCeremony] run scoreboard players set neville p2convOverride 22
execute as @s[tag=newState,scores={playerID=3},tag=hasCompletedSortingCeremony] run scoreboard players set neville p3convOverride 22
execute as @s[tag=newState,scores={playerID=4},tag=hasCompletedSortingCeremony] run scoreboard players set neville p4convOverride 22

execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation toadHunt1 p1Quests = toadHunt1 sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation toadHunt1 p2Quests = toadHunt1 sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation toadHunt1 p3Quests = toadHunt1 sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation toadHunt1 p4Quests = toadHunt1 sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Return to neville with the toad

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1489,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 3022.66 59.00 -451.52
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=15},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

### Function ###

### Trigger ###
execute as @s[scores={questState=2},tag=inNormalState,tag=hasCompletedToadHunt1] run scoreboard players set toadHunt1 sharedQuests -1
execute as @s[scores={playerID=1}] unless score toadHunt1 p1Quests = toadHunt1 sharedQuests if score toadHunt1 sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score toadHunt1 p2Quests = toadHunt1 sharedQuests if score toadHunt1 sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score toadHunt1 p3Quests = toadHunt1 sharedQuests if score toadHunt1 sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score toadHunt1 p4Quests = toadHunt1 sharedQuests if score toadHunt1 sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set toadHunt1 sharedQuests -1
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run tag @s remove hasCompletedToadHunt1
execute as @s[tag=completeQuest] run scoreboard players set toadHuntIsGoing sharedQuests 0
execute as @s[tag=completeQuest] run scoreboard players add @s money 100
execute as @s[tag=completeQuest,scores={playerID=1,hotbar_state=..9}] run scoreboard players set neville p1convOverride 5
execute as @s[tag=completeQuest,scores={playerID=2,hotbar_state=..9}] run scoreboard players set neville p2convOverride 5
execute as @s[tag=completeQuest,scores={playerID=3,hotbar_state=..9}] run scoreboard players set neville p3convOverride 5
execute as @s[tag=completeQuest,scores={playerID=4,hotbar_state=..9}] run scoreboard players set neville p4convOverride 5
execute as @s[tag=completeQuest,scores={playerID=1,hotbar_state=10}] run scoreboard players set neville p1convOverride 6
execute as @s[tag=completeQuest,scores={playerID=2,hotbar_state=10}] run scoreboard players set neville p2convOverride 6
execute as @s[tag=completeQuest,scores={playerID=3,hotbar_state=10}] run scoreboard players set neville p3convOverride 6
execute as @s[tag=completeQuest,scores={playerID=4,hotbar_state=10}] run scoreboard players set neville p4convOverride 6


execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set toad_1 p1convOverride 0
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set toad_1 p2convOverride 0
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set toad_1 p3convOverride 0
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set toad_1 p4convOverride 0
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set toad_2 p1convOverride 0
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set toad_2 p2convOverride 0
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set toad_2 p3convOverride 0
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set toad_2 p4convOverride 0
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set toad_3 p1convOverride 0
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set toad_3 p2convOverride 0
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set toad_3 p3convOverride 0
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set toad_3 p4convOverride 0

execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation toadHunt1 p1Quests = toadHunt1 sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation toadHunt1 p2Quests = toadHunt1 sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation toadHunt1 p3Quests = toadHunt1 sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation toadHunt1 p4Quests = toadHunt1 sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# This is to make the correct trevor toad visible only when the quest is active
execute as @s[scores={questState=1}] as @e[tag=trevor1,tag=!visible,limit=1] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:122}}]}
execute as @s[scores={questState=1}] as @e[tag=trevor1,tag=!visible,limit=1] run tag @s add visible
execute as @s[scores={questState=1},tag=gameLeader] as @e[tag=trevor1,tag=!visible,limit=1] run function hp:quests/quests/toad_hunt/croak

# Complete Quest Cheat
execute as @s[tag=completeTrackedQuest] run scoreboard players set toadHunt1 sharedQuests -1
execute as @s[tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

# reset quest tracking boolean
tag @s remove isTrackedQuest



# Reminder tip that you can change your active quest
# Some players get stuck unable to find the toad believing that they have to complete the side quest before they can progress
execute as @s[scores={playerID=1},tag=!hasBeenRemindedAboutQuestBook] unless score toadHuntStuckTimer p1Quests matches 300000.. run scoreboard players operation toadHuntStuckTimer p1Quests += systick time
execute as @s[scores={playerID=2},tag=!hasBeenRemindedAboutQuestBook] unless score toadHuntStuckTimer p2Quests matches 300000.. run scoreboard players operation toadHuntStuckTimer p2Quests += systick time
execute as @s[scores={playerID=3},tag=!hasBeenRemindedAboutQuestBook] unless score toadHuntStuckTimer p3Quests matches 300000.. run scoreboard players operation toadHuntStuckTimer p3Quests += systick time
execute as @s[scores={playerID=4},tag=!hasBeenRemindedAboutQuestBook] unless score toadHuntStuckTimer p4Quests matches 300000.. run scoreboard players operation toadHuntStuckTimer p4Quests += systick time

execute as @s[scores={playerID=1},tag=!hasBeenRemindedAboutQuestBook] if score toadHuntStuckTimer p1Quests matches 300000.. run playsound minecraft:custom.ui.tips.tip master @s ~ ~ ~ 1 1 1
execute as @s[scores={playerID=2},tag=!hasBeenRemindedAboutQuestBook] if score toadHuntStuckTimer p2Quests matches 300000.. run playsound minecraft:custom.ui.tips.tip master @s ~ ~ ~ 1 1 1
execute as @s[scores={playerID=3},tag=!hasBeenRemindedAboutQuestBook] if score toadHuntStuckTimer p3Quests matches 300000.. run playsound minecraft:custom.ui.tips.tip master @s ~ ~ ~ 1 1 1
execute as @s[scores={playerID=4},tag=!hasBeenRemindedAboutQuestBook] if score toadHuntStuckTimer p4Quests matches 300000.. run playsound minecraft:custom.ui.tips.tip master @s ~ ~ ~ 1 1 1
execute as @s[scores={playerID=1},tag=!hasBeenRemindedAboutQuestBook] if score toadHuntStuckTimer p1Quests matches 300000.. run tag @s add remindQuestBook
execute as @s[scores={playerID=2},tag=!hasBeenRemindedAboutQuestBook] if score toadHuntStuckTimer p2Quests matches 300000.. run tag @s add remindQuestBook
execute as @s[scores={playerID=3},tag=!hasBeenRemindedAboutQuestBook] if score toadHuntStuckTimer p3Quests matches 300000.. run tag @s add remindQuestBook
execute as @s[scores={playerID=4},tag=!hasBeenRemindedAboutQuestBook] if score toadHuntStuckTimer p4Quests matches 300000.. run tag @s add remindQuestBook
execute as @s[scores={playerID=1}] if score toadHuntStuckTimer p1Quests matches 200000.. run tag @s add hasBeenRemindedAboutQuestBook
execute as @s[scores={playerID=2}] if score toadHuntStuckTimer p2Quests matches 200000.. run tag @s add hasBeenRemindedAboutQuestBook
execute as @s[scores={playerID=3}] if score toadHuntStuckTimer p3Quests matches 200000.. run tag @s add hasBeenRemindedAboutQuestBook
execute as @s[scores={playerID=4}] if score toadHuntStuckTimer p4Quests matches 200000.. run tag @s add hasBeenRemindedAboutQuestBook
##############################################
# London Letter Delivery
##############################################
scoreboard players set @s questID 49
scoreboard players operation @s questState = londonLetterDelivery sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Отправиться в London

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1419,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 1010.35 78.00 -180.75
execute as @s[scores={questState=1,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] at @s if entity @s[x=2870,y=53,z=-465,dx=268,dy=27,dz=40] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 3047 60 -462
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=1,lastRegion=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 834.49 49.00 -1731.57
execute as @s[scores={questState=1,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=1,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=1,lastRegion=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5122.86 80.38 2094.01
execute as @s[scores={questState=1,lastRegion=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 6
execute as @s[scores={questState=1,lastRegion=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2351.53 64.00 -774.45
execute as @s[scores={questState=1,lastRegion=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 9
execute as @s[scores={questState=1,lastRegion=9},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 6850.44 36.25 3101.50
### Function ###
### Trigger ###
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] unless entity @s[x=2870,y=53,z=-465,dx=268,dy=27,dz=40] run scoreboard players set londonLetterDelivery sharedQuests 2


execute as @s[scores={playerID=1}] unless score londonLetterDelivery p1Quests = londonLetterDelivery sharedQuests if score londonLetterDelivery sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score londonLetterDelivery p2Quests = londonLetterDelivery sharedQuests if score londonLetterDelivery sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score londonLetterDelivery p3Quests = londonLetterDelivery sharedQuests if score londonLetterDelivery sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score londonLetterDelivery p4Quests = londonLetterDelivery sharedQuests if score londonLetterDelivery sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound

execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation londonLetterDelivery p1Quests = londonLetterDelivery sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation londonLetterDelivery p2Quests = londonLetterDelivery sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation londonLetterDelivery p3Quests = londonLetterDelivery sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation londonLetterDelivery p4Quests = londonLetterDelivery sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Deliver the letter to Демельза Робинс' friend in the park near Глаз Лондона

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1418,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2408 60 153
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=417},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2


### Trigger ###
execute as @s[scores={questState=2},tag=inNormalState,tag=hasCompletedlondonLetterDelivery] run scoreboard players set londonLetterDelivery sharedQuests -1
execute as @s[scores={playerID=1}] unless score londonLetterDelivery p1Quests = londonLetterDelivery sharedQuests if score londonLetterDelivery sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score londonLetterDelivery p2Quests = londonLetterDelivery sharedQuests if score londonLetterDelivery sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score londonLetterDelivery p3Quests = londonLetterDelivery sharedQuests if score londonLetterDelivery sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score londonLetterDelivery p4Quests = londonLetterDelivery sharedQuests if score londonLetterDelivery sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set londonLetterDelivery sharedQuests -1
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run tag @s remove hasCompletedlondonLetterDelivery
execute as @s[tag=completeQuest] run scoreboard players add @s money 100
execute as @s[tag=completeQuest] run scoreboard players set londonFriend p1convOverride 0
execute as @s[tag=completeQuest] run scoreboard players set londonFriend p2convOverride 0
execute as @s[tag=completeQuest] run scoreboard players set londonFriend p3convOverride 0
execute as @s[tag=completeQuest] run scoreboard players set londonFriend p4convOverride 0
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation londonLetterDelivery p1Quests = londonLetterDelivery sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation londonLetterDelivery p2Quests = londonLetterDelivery sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation londonLetterDelivery p3Quests = londonLetterDelivery sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation londonLetterDelivery p4Quests = londonLetterDelivery sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# reset quest tracking boolean
tag @s remove isTrackedQuest
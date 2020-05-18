##############################################
# Training Ground Toads
##############################################
scoreboard players set @s questID 47
scoreboard players operation @s questState = trainingGroundToads sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Deal with the Toads

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1424,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] positioned 644 52 -39 if entity @s[distance=..50] run tag @s add questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] positioned 644 52 -39 unless entity @s[distance=..50] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 644 52 -39
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1


execute as @s[scores={questState=1},tag=isTrackedQuest,tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=1,playerID=1},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Защитись от 20 Флоббер-червей (","color":"gold"},{"score":{"name":"trainingGroundToadsKills","objective":"sharedQuests"},"color":"gold"},{"text":" из 20)","color":"gold"}]
execute as @s[scores={questState=1,playerID=2},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Защитись от 20 Флоббер-червей (","color":"gold"},{"score":{"name":"trainingGroundToadsKills","objective":"sharedQuests"},"color":"gold"},{"text":" из 20)","color":"gold"}]
execute as @s[scores={questState=1,playerID=3},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Защитись от 20 Флоббер-червей (","color":"gold"},{"score":{"name":"trainingGroundToadsKills","objective":"sharedQuests"},"color":"gold"},{"text":" из 20)","color":"gold"}]
execute as @s[scores={questState=1,playerID=4},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Защитись от 20 Флоббер-червей (","color":"gold"},{"score":{"name":"trainingGroundToadsKills","objective":"sharedQuests"},"color":"gold"},{"text":" из 20)","color":"gold"}]



### Trigger ###
execute positioned 644 52 -39 as @s[distance=..50,scores={questState=1},tag=isTrackedQuest] run scoreboard players operation trainingGroundToadsKills sharedQuests += @s flobberwormK


execute as @s[scores={questState=1},tag=isTrackedQuest] if score trainingGroundToadsKills sharedQuests matches 20.. run scoreboard players set trainingGroundToads sharedQuests 2

execute as @s[scores={playerID=1}] unless score trainingGroundToads p1Quests = trainingGroundToads sharedQuests if score trainingGroundToads sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score trainingGroundToads p2Quests = trainingGroundToads sharedQuests if score trainingGroundToads sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score trainingGroundToads p3Quests = trainingGroundToads sharedQuests if score trainingGroundToads sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score trainingGroundToads p4Quests = trainingGroundToads sharedQuests if score trainingGroundToads sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set zacheriasSmith p1convOverride 4
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set zacheriasSmith p2convOverride 4
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set zacheriasSmith p3convOverride 4
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set zacheriasSmith p4convOverride 4
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation trainingGroundToads p1Quests = trainingGroundToads sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation trainingGroundToads p2Quests = trainingGroundToads sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation trainingGroundToads p3Quests = trainingGroundToads sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation trainingGroundToads p4Quests = trainingGroundToads sharedQuests
execute as @s[tag=newState] run tag 9d645cf9-a09f-48cd-89fd-9256b9a2ee7c add disable
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Return to Zacharias Smith

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1423,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 646 51 -45
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=436},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
### Function ###


### Function ###
execute as @s[scores={questState=2},tag=inNormalState,tag=hasCompletedTrainingGroundToads] run scoreboard players set trainingGroundToads sharedQuests -1
execute as @s[scores={playerID=1}] unless score trainingGroundToads p1Quests = trainingGroundToads sharedQuests if score trainingGroundToads sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score trainingGroundToads p2Quests = trainingGroundToads sharedQuests if score trainingGroundToads sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score trainingGroundToads p3Quests = trainingGroundToads sharedQuests if score trainingGroundToads sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score trainingGroundToads p4Quests = trainingGroundToads sharedQuests if score trainingGroundToads sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set trainingGroundToads sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players set trainingGroundToadsKills sharedQuests 0
execute as @s[tag=completeQuest] run scoreboard players add @s money 150
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run tag @s remove hasCompletedTrainingGroundToads
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set zacheriasSmith p1convOverride 5
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set zacheriasSmith p2convOverride 5
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set zacheriasSmith p3convOverride 5
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set zacheriasSmith p4convOverride 5
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation trainingGroundToads p1Quests = trainingGroundToads sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation trainingGroundToads p2Quests = trainingGroundToads sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation trainingGroundToads p3Quests = trainingGroundToads sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation trainingGroundToads p4Quests = trainingGroundToads sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
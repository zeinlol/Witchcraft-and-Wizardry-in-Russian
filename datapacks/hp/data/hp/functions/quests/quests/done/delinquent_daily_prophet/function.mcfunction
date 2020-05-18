##############################################
# Delinquent 'Ежедневный Пророк'
##############################################
scoreboard players set @s questID 50
scoreboard players operation @s questState = delinquentDailyProphet sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Отправиться в the 'Ежедневный Пророк' offices in Diagon Alley

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1417,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2867 45 1038
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
### Function ###
### Trigger ###
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest,x=2862,y=44,z=1025,dx=11,dy=8,dz=11] run scoreboard players set delinquentDailyProphet sharedQuests 2


execute as @s[scores={playerID=1}] unless score delinquentDailyProphet p1Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score delinquentDailyProphet p2Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score delinquentDailyProphet p3Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score delinquentDailyProphet p4Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run scoreboard players set barnabasCuffe p1convOverride 3
execute as @s[tag=newState] run scoreboard players set barnabasCuffe p2convOverride 3
execute as @s[tag=newState] run scoreboard players set barnabasCuffe p3convOverride 3
execute as @s[tag=newState] run scoreboard players set barnabasCuffe p4convOverride 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation delinquentDailyProphet p1Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation delinquentDailyProphet p2Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation delinquentDailyProphet p3Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation delinquentDailyProphet p4Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Speak to Варнава Кафф

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1416,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2868 44 1039
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=45},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2


# Trigger
execute as @s[scores={questState=2},tag=isTrackedQuest,tag=hasSpokenToBarnabasCuffe] run scoreboard players set delinquentDailyProphet sharedQuests 3

execute as @s[scores={playerID=1}] unless score delinquentDailyProphet p1Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score delinquentDailyProphet p2Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score delinquentDailyProphet p3Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score delinquentDailyProphet p4Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run scoreboard players set barnabasCuffe p1convOverride 0
execute as @s[tag=newState] run scoreboard players set barnabasCuffe p2convOverride 0
execute as @s[tag=newState] run scoreboard players set barnabasCuffe p3convOverride 0
execute as @s[tag=newState] run scoreboard players set barnabasCuffe p4convOverride 0
execute as @s[tag=newState] run scoreboard players set kevinLethas p1convOverride 6
execute as @s[tag=newState] run scoreboard players set kevinLethas p2convOverride 6
execute as @s[tag=newState] run scoreboard players set kevinLethas p3convOverride 6
execute as @s[tag=newState] run scoreboard players set kevinLethas p4convOverride 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation delinquentDailyProphet p1Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation delinquentDailyProphet p2Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation delinquentDailyProphet p3Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation delinquentDailyProphet p4Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=newState] run tag @s remove hasSpokenToBarnabasCuffe
execute as @s[tag=newState] run tag @s remove newState


#############
## State 3 ###########################################################################################
#############
# Speak to Кевин Летас

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1415,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2839 56 840
execute as @s[scores={questState=3,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=428},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 2


# Trigger
execute as @s[scores={questState=3,lastRegion=2},tag=isTrackedQuest,tag=hasSpokenToKevinLethas] run scoreboard players set delinquentDailyProphet sharedQuests 4

execute as @s[scores={playerID=1}] unless score delinquentDailyProphet p1Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=2}] unless score delinquentDailyProphet p2Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=3}] unless score delinquentDailyProphet p3Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=4}] unless score delinquentDailyProphet p4Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches 4 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run scoreboard players set kevinLethas p1convOverride 3
execute as @s[tag=newState] run scoreboard players set kevinLethas p2convOverride 3
execute as @s[tag=newState] run scoreboard players set kevinLethas p3convOverride 3
execute as @s[tag=newState] run scoreboard players set kevinLethas p4convOverride 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation delinquentDailyProphet p1Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation delinquentDailyProphet p2Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation delinquentDailyProphet p3Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation delinquentDailyProphet p4Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 4 ###########################################################################################
#############
# Give Кевин Летас a remembrall

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1414,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2839 56 840
execute as @s[scores={questState=4,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=428},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 2


# Trigger
execute as @s[scores={questState=4},tag=isTrackedQuest,tag=inNormalState,tag=hasGivenKevinLethasARemembrall] run scoreboard players set @s InvItemID 70
execute as @s[scores={questState=4},tag=isTrackedQuest,tag=inNormalState,tag=hasGivenKevinLethasARemembrall] run scoreboard players set @s InvItemCount -1
execute as @s[scores={questState=4},tag=isTrackedQuest,tag=inNormalState,tag=hasGivenKevinLethasARemembrall] run function hp:inventory/give_player_item
execute as @s[scores={questState=4},tag=isTrackedQuest,tag=inNormalState,tag=hasGivenKevinLethasARemembrall] run scoreboard players set delinquentDailyProphet sharedQuests 5

execute as @s[scores={playerID=1}] unless score delinquentDailyProphet p1Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=2}] unless score delinquentDailyProphet p2Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=3}] unless score delinquentDailyProphet p3Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=4}] unless score delinquentDailyProphet p4Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches 5 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set kevinLethas p1convOverride 5
execute as @s[tag=newState] run scoreboard players set kevinLethas p2convOverride 5
execute as @s[tag=newState] run scoreboard players set kevinLethas p3convOverride 5
execute as @s[tag=newState] run scoreboard players set kevinLethas p4convOverride 5
execute as @s[tag=newState] run scoreboard players set wayneBrocklehurst p1convOverride 4
execute as @s[tag=newState] run scoreboard players set wayneBrocklehurst p2convOverride 4
execute as @s[tag=newState] run scoreboard players set wayneBrocklehurst p3convOverride 4
execute as @s[tag=newState] run scoreboard players set wayneBrocklehurst p4convOverride 4
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation delinquentDailyProphet p1Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation delinquentDailyProphet p2Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation delinquentDailyProphet p3Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation delinquentDailyProphet p4Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 5 ###########################################################################################
#############
# Speak to Уэйн Броклхерст

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1355,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 9861 122 10171
execute as @s[scores={questState=5,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=427},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 5

### Trigger ###
execute as @s[scores={questState=5},tag=inNormalState,tag=hasCompletedDelinquentDailyProphet] run scoreboard players set delinquentDailyProphet sharedQuests -1


execute as @s[scores={playerID=1}] unless score delinquentDailyProphet p1Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score delinquentDailyProphet p2Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score delinquentDailyProphet p3Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score delinquentDailyProphet p4Quests = delinquentDailyProphet sharedQuests if score delinquentDailyProphet sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set delinquentDailyProphet sharedQuests -1
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run tag @s remove hasCompleteddelinquentDailyProphet
execute as @s[tag=completeQuest] run scoreboard players add @s money 200
execute as @s[tag=completeQuest] run scoreboard players set wayneBrocklehurst p1convOverride 5
execute as @s[tag=completeQuest] run scoreboard players set wayneBrocklehurst p2convOverride 5
execute as @s[tag=completeQuest] run scoreboard players set wayneBrocklehurst p3convOverride 5
execute as @s[tag=completeQuest] run scoreboard players set wayneBrocklehurst p4convOverride 5
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation delinquentDailyProphet p1Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation delinquentDailyProphet p2Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation delinquentDailyProphet p3Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation delinquentDailyProphet p4Quests = delinquentDailyProphet sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# reset quest tracking boolean
tag @s remove isTrackedQuest
##############################################
# Parchment Poverty
##############################################
scoreboard players set @s questID 60
scoreboard players operation @s questState = parchmentPoverty sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Return to Роджер Корнфут with parchemnt and a spell checking quill

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1379,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 5
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 9856 121 10161
execute as @s[scores={questState=1,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=424},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s


### Trigger ###
execute as @s[scores={questState=1},tag=inNormalState,tag=hasCompletedParchmentPoverty] run scoreboard players set @s InvItemID 69
execute as @s[scores={questState=1},tag=inNormalState,tag=hasCompletedParchmentPoverty] run scoreboard players set @s InvItemCount -20
execute as @s[scores={questState=1},tag=inNormalState,tag=hasCompletedParchmentPoverty] run function hp:inventory/give_player_item
execute as @s[scores={questState=1},tag=inNormalState,tag=hasCompletedParchmentPoverty] run scoreboard players set @s InvItemID 122
execute as @s[scores={questState=1},tag=inNormalState,tag=hasCompletedParchmentPoverty] run scoreboard players set @s InvItemCount -1
execute as @s[scores={questState=1},tag=inNormalState,tag=hasCompletedParchmentPoverty] run function hp:inventory/give_player_item
execute as @s[scores={questState=1},tag=inNormalState,tag=hasCompletedParchmentPoverty] run scoreboard players set parchmentPoverty sharedQuests -1

execute as @s[scores={playerID=1}] unless score parchmentPoverty p1Quests = parchmentPoverty sharedQuests if score parchmentPoverty sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score parchmentPoverty p2Quests = parchmentPoverty sharedQuests if score parchmentPoverty sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score parchmentPoverty p3Quests = parchmentPoverty sharedQuests if score parchmentPoverty sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score parchmentPoverty p4Quests = parchmentPoverty sharedQuests if score parchmentPoverty sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set parchmentPoverty sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players add @s money 100
execute as @s[tag=completeQuest] run tag @s remove hasCompletedParchmentPoverty
execute as @s[tag=completeQuest] run scoreboard players set rogerCornfoot p1convOverride 6
execute as @s[tag=completeQuest] run scoreboard players set rogerCornfoot p2convOverride 6
execute as @s[tag=completeQuest] run scoreboard players set rogerCornfoot p3convOverride 6
execute as @s[tag=completeQuest] run scoreboard players set rogerCornfoot p4convOverride 6
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation parchmentPoverty p1Quests = parchmentPoverty sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation parchmentPoverty p2Quests = parchmentPoverty sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation parchmentPoverty p3Quests = parchmentPoverty sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation parchmentPoverty p4Quests = parchmentPoverty sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
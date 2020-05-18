##############################################
# Common room
##############################################
scoreboard players set @s questID 12
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.talkToSlytherinPrefect"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Speak to Slytherin prefect

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1547,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 4968.48 31.00 1018.44
execute as @s[scores={questState=1,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[tag=slytherinPrefect,limit=1] run particle minecraft:angry_villager ~ ~2 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Trigger ###
execute as @s[tag=SpokeWithPrefect,scores={questState=1},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove SpokeWithPrefect
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set fredGeorge p1convOverride 0
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set fredGeorge p2convOverride 0
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set fredGeorge p3convOverride 0
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set fredGeorge p4convOverride 0
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Speak to one of the Weasley twins

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1548,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 4961.89 31.00 1049.16
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[tag=standingWeasleyTwin,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~2 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Trigger ###
execute as @s[tag=spokeWithWeasleyTwins,scores={questState=2},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set fredGeorge p1convOverride 5
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set fredGeorge p2convOverride 5
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set fredGeorge p3convOverride 5
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set fredGeorge p4convOverride 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s questTimer 70
execute as @s[tag=newState] run tag @s remove spokeWithWeasleyTwins
execute as @s[tag=newState] run tag @s remove newState


#############
## State 3 ###########################################################################################
#############
# Use the map to Отправиться в your common room

scoreboard players remove @s[scores={questTimer=1..}] questTimer 1
execute as @s[scores={questTimer=1}] run scoreboard players set @s hotbar_stage 9
execute as @s[scores={questTimer=1}] at @s run playsound minecraft:custom.ui.learn.spell_temporarily_unlocked master @s ~ ~ ~ 100 1.25 1



### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1546,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
# execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing -160.50 56.00 -673.54
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Trigger ###
execute positioned 704.63 19.00 282.46 as @s[distance=..10,scores={questState=3},tag=inNormalState] run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set @s overrideRespawn 0
execute as @s[tag=completeQuest] run scoreboard players set @s questQueueID 14
execute as @s[tag=completeQuest] run scoreboard players set @s questQueue 100
execute as @s[tag=completeQuest] run tag @s add queingQuest
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set molly p1convOverride 1
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set molly p2convOverride 1
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set molly p3convOverride 1
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set molly p4convOverride 1
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set hagrid p1convOverride 1
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set hagrid p2convOverride 1
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set hagrid p3convOverride 1
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set hagrid p4convOverride 1
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set fredGeorge p1convOverride 11
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set fredGeorge p2convOverride 11
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set fredGeorge p3convOverride 11
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set fredGeorge p4convOverride 11
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set malfoy p1convOverride 14
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set malfoy p2convOverride 14
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set malfoy p3convOverride 14
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set malfoy p4convOverride 14
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set percy p1convOverride 8
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set percy p2convOverride 8
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set percy p3convOverride 8
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set percy p4convOverride 8
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set cedric p1convOverride 8
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set cedric p2convOverride 8
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set cedric p3convOverride 8
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set cedric p4convOverride 8
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set ravenclawPrefect p1convOverride 8
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set ravenclawPrefect p2convOverride 8
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set ravenclawPrefect p3convOverride 8
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set ravenclawPrefect p4convOverride 8
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set slytherinPrefect p1convOverride 9
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set slytherinPrefect p2convOverride 9
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set slytherinPrefect p3convOverride 9
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set slytherinPrefect p4convOverride 9
execute as @s[tag=completeQuest,tag=gameLeader] run gamerule doDaylightCycle true
execute as @s[tag=completeQuest] run tag @s remove onlyCommonRoomIsUnlocked
execute as @s[tag=completeQuest] run tag @s add hogwartsExpressUnlocked
execute as @s[tag=completeQuest] run tag @s add knightBusUnlocked
execute as @s[tag=completeQuest] run tag @s add hasCompletedSortingCeremony
execute as @s[tag=completeQuest] run tag @s add musicController
execute as @s[tag=completeQuest,scores={musicPhase=..0}] run scoreboard players set @s musicPhase 0
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
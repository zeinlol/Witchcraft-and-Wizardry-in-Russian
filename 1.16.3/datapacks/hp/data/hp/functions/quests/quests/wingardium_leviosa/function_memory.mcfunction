##############################################
# Wingardium Leviosa Lesson
##############################################
scoreboard players set @s questID 18
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.wingardiumLeviosa"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest


# Memory catch up (Skip walking to classroom, etc.)
execute as @s[scores={questState=1},tag=inNormalState,tag=isTrackedQuest] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 14
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s add unlockedSpells
execute as @s[tag=newState] run scoreboard players set @s unlockedSpell 5
execute as @s[tag=newState] run scoreboard players set @s selectedSpell 5
execute as @s[tag=newState] run scoreboard players set @s currentSpell 5
execute as @s[tag=newState] run scoreboard players set @s cutSceneID 17
execute as @s[tag=newState] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=17}] run tag @s add cutsceneLeader
execute as @s[tag=newState] run function hp:cutscenes/init_cutscene
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set flitwick p1convOverride 12
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set flitwick p2convOverride 12
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set flitwick p3convOverride 12
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set flitwick p4convOverride 12
execute as @s[tag=newState] run tag @s add maraudersMapLocked
execute as @s[tag=newState] run tag @s add lockTrackedQuest
execute as @s[tag=newState,tag=gameLeader] run time set day
execute as @s[tag=newState,tag=gameLeader] run gamerule doDaylightCycle false
execute as @s[tag=newState] run tag @s remove hasLearnedWingardiumLeviosa
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Make your way through the obstacle course

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1473,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
# execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 7145.57 54.00 -12.26
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 8


### Trigger ###
execute positioned 7145.57 54.00 -12.26 as @s[distance=..5,scores={questState=3},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set flitwick p1convOverride 14
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set flitwick p2convOverride 14
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set flitwick p3convOverride 14
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set flitwick p4convOverride 14
execute as @s[tag=newState] run tag @s remove newState



#############
## State 4 ###########################################################################################
#############
# Speak to professor Flitwick

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1472,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 7145.47 54.00 -24.49
execute as @s[scores={questState=4,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=6},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Function ###

### Trigger ###
execute as @s[scores={questState=4},tag=inNormalState,tag=isTrackedQuest,tag=hasSpokenToFlitwickAfterWingardiumLeviosa] run tag @s add completeQuest


#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/timer/end_pensive_timer
execute as @s[tag=completeQuest] run scoreboard players set @s overrideRespawn 0
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set flitwick p1convOverride 1
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set flitwick p2convOverride 1
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set flitwick p3convOverride 1
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set flitwick p4convOverride 1
execute as @s[tag=completeQuest] run tag @s remove hasSpokenToFlitwickAfterWingardiumLeviosa
execute as @s[tag=completeQuest] run tag @s remove lockTrackedQuest
execute as @s[tag=completeQuest] run tag @s remove maraudersMapLocked
execute as @s[tag=completeQuest,tag=gameLeader] run gamerule doDaylightCycle false
execute as @s[tag=completeQuest] run tag @s add hasLearnedWingardiumLeviosa
execute as @s[tag=completeQuest] unless entity @p[scores={trackedQuestID=18}] run scoreboard players set playerInWingardiumSpellChallenge global 0
execute as @s[tag=completeQuest] run scoreboard players set @s queuedMusic 4
execute as @s[tag=completeQuest] run scoreboard players set @s unlockedSpell 9
execute as @s[tag=completeQuest] run tag @s add musicController
execute as @s[tag=completeQuest,scores={musicPhase=..0}] run scoreboard players set @s musicPhase 0
execute as @s[tag=completeQuest] run tag @s remove inMemory
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
##############################################
# Alohomora Lesson
##############################################
scoreboard players set @s questID 17
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.alohomora"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest


#############
## State 1 ###########################################################################################
#############
# Make your way through the obstacle course

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1561,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s add questHasNoDirection
# execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 6467.08 42.00 0.83
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

# Play cutscene to catch up. Normally this is played at the end of extracurricular learning
execute as @s[scores={questState=1},tag=isTrackedQuest,tag=!hasPlayedAlohomoraCutscene] run scoreboard players set @s unlockedSpell 4
execute as @s[scores={questState=1},tag=isTrackedQuest,tag=!hasPlayedAlohomoraCutscene] run scoreboard players set @s selectedSpell 4
execute as @s[scores={questState=1},tag=isTrackedQuest,tag=!hasPlayedAlohomoraCutscene] run scoreboard players set @s currentSpell 4
execute as @s[scores={questState=1},tag=isTrackedQuest,tag=!hasPlayedAlohomoraCutscene] run tag @s add maraudersMapLocked
execute as @s[scores={questState=1},tag=isTrackedQuest,tag=!hasPlayedAlohomoraCutscene] run tag @s add lockTrackedQuest
execute as @s[scores={questState=1},tag=isTrackedQuest,tag=!hasPlayedAlohomoraCutscene,tag=gameLeader] run time set day
execute as @s[scores={questState=1},tag=isTrackedQuest,tag=!hasPlayedAlohomoraCutscene,tag=gameLeader] run gamerule doDaylightCycle false
execute as @s[scores={questState=1},tag=isTrackedQuest,tag=!hasPlayedAlohomoraCutscene] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=15}] run tag @s add cutsceneLeader
execute as @s[scores={questState=1},tag=isTrackedQuest,tag=!hasPlayedAlohomoraCutscene] run scoreboard players set @s cutSceneID 15
execute as @s[scores={questState=1},tag=isTrackedQuest,tag=!hasPlayedAlohomoraCutscene] run function hp:cutscenes/init_cutscene
execute as @s[scores={questState=1},tag=isTrackedQuest,tag=!hasPlayedAlohomoraCutscene] run tag @s remove hasLearnedAlohomora
execute as @s[scores={questState=1},tag=isTrackedQuest,tag=!hasPlayedAlohomoraCutscene] run tag @s add hasPlayedAlohomoraCutscene


### Trigger ###
execute positioned 6601.79 19.00 -26.10 as @s[distance=..5,scores={questState=1},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set hermione p1convOverride 16
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set hermione p2convOverride 16
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set hermione p3convOverride 16
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set hermione p4convOverride 16
execute as @s[tag=newState] run tag @s remove hasPlayedAlohomoraCutscene
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Speak to Hermione

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1560,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 6605.43 17.00 -39.40
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 8
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=14},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Function ###


### Trigger ###
execute as @s[scores={questState=2},tag=inNormalState,tag=hasSpokenToHermioneAfterAlohomora] run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/timer/end_pensive_timer
execute as @s[tag=completeQuest] run scoreboard players set @s overrideRespawn 0
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set hermione p1convOverride 1
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set hermione p2convOverride 1
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set hermione p3convOverride 1
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set hermione p4convOverride 1
execute as @s[tag=completeQuest] run tag @s remove hasSpokenToHermioneAfterAlohomora
execute as @s[tag=completeQuest,tag=gameLeader] run gamerule doDaylightCycle true
execute as @s[tag=completeQuest] run tag @s remove maraudersMapLocked
execute as @s[tag=completeQuest] run tag @s remove lockTrackedQuest
execute as @s[tag=completeQuest] run tag @s add hasLearnedAlohomora
execute as @s[tag=completeQuest] unless entity @p[scores={trackedQuestID=17}] run scoreboard players set playerInAlohomoraSpellChallenge global 0
execute as @s[tag=completeQuest] run scoreboard players set @s unlockedSpell 9
execute as @s[tag=completeQuest] run tag @s remove inMemory
execute as @s[tag=completeQuest] run tag @s add musicController
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
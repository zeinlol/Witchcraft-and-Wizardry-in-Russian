##############################################
# Alohomora Lesson
##############################################
scoreboard players set @s questID 17
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.alohomora"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

# Complete Quest Cheat
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s add completeQuest
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tp @s 774.70 76.00 84.42 348.94 0.19
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

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

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=4,convState=1,conv=26}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1
execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Флитвик упомянул, что вы могли бы обучить меня чему-то\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 12
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

### Trigger ###
execute positioned 6601.79 19.00 -26.10 as @s[distance=..5,scores={questState=1},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set hermione p1convOverride 16
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set hermione p2convOverride 16
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set hermione p3convOverride 16
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set hermione p4convOverride 16
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
execute as @s[tag=completeQuest] run scoreboard players set @s questQueueID 26
execute as @s[tag=completeQuest] run scoreboard players set @s questQueue 100
execute as @s[tag=completeQuest] run tag @s add queingQuest
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set hermione p1convOverride 1
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set hermione p2convOverride 1
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set hermione p3convOverride 1
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set hermione p4convOverride 1
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set hooch p1convOverride 9
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set hooch p2convOverride 9
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set hooch p3convOverride 9
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set hooch p4convOverride 9
execute as @s[tag=completeQuest] run tag @s remove hasSpokenToHermioneAfterAlohomora
execute if score flyingClassIsSetUp global matches 0 as @s[tag=completeQuest,tag=gameLeader] run function hp:quests/quests/flying_lesson/setup_flying_lesson
execute as @s[tag=completeQuest,tag=gameLeader] run gamerule doDaylightCycle true
execute as @s[tag=completeQuest] run tag @s remove maraudersMapLocked
execute as @s[tag=completeQuest] run tag @s remove lockTrackedQuest
execute as @s[tag=completeQuest] run tag @s add hasLearnedAlohomora
execute as @s[tag=completeQuest] unless entity @p[scores={trackedQuestID=17}] run scoreboard players set playerInAlohomoraSpellChallenge global 0
execute as @s[tag=completeQuest] run tag @s add musicController
execute as @s[tag=completeQuest,scores={musicPhase=..0}] run scoreboard players set @s musicPhase 0
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
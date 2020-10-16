##############################################
# Lumos Lesson
##############################################
scoreboard players set @s questID 14
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.lumos"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest


# Memory catch up (Skip walking to classroom, etc.)
execute as @s[scores={questState=1},tag=inNormalState,tag=isTrackedQuest] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 9
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s add unlockedSpells
execute as @s[tag=newState] run scoreboard players set @s unlockedSpell 1
execute as @s[tag=newState] run scoreboard players set @s selectedSpell 1
execute as @s[tag=newState] run scoreboard players set @s currentSpell 1
execute as @s[tag=newState] run scoreboard players set @s cutSceneID 9
execute as @s[tag=newState] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=9}] run tag @s add cutsceneLeader
execute as @s[tag=newState] run function hp:cutscenes/init_cutscene
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set flitwick p1convOverride 7
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set flitwick p2convOverride 7
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set flitwick p3convOverride 7
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set flitwick p4convOverride 7
execute as @s[tag=newState] run tag @s add maraudersMapLocked
execute as @s[tag=newState] run tag @s add lockTrackedQuest
execute as @s[tag=newState,tag=gameLeader] run time set day
execute as @s[tag=newState,tag=gameLeader] run gamerule doDaylightCycle false
execute as @s[tag=newState] run tag @s remove hasLearnedLumos
execute as @s[tag=newState] run tag @s add lumosTimer
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Collect stars

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1519,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing -213.47 57.00 -707.57
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 8
### Function ###

# Special selection
execute at @s[scores={questState=3},tag=!inProperCutScene] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=star,tag=lumosStar,tag=!starHasBeenCollected] add questHover
execute as @s[scores={questState=3},tag=!inProperCutScene] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

execute as @s[tag=hasPressedF,scores={questState=3}] if entity @e[tag=questHover,tag=star,tag=lumosStar,limit=1] run scoreboard players add collectedLumosStars sharedQuests 1
execute as @s[tag=hasPressedF,scores={questState=3}] if entity @e[tag=questHover,tag=star,tag=lumosStar,limit=1] at @s run playsound minecraft:custom.ui.learn.spell_learned master @a ~ ~ ~ 1 1
execute if entity @s[tag=hasPressedF,scores={questState=3}] as @e[tag=questHover,tag=star,tag=lumosStar,limit=1] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 0
execute if entity @s[tag=hasPressedF,scores={questState=3}] as @e[tag=questHover,tag=star,tag=lumosStar,limit=1] run tag @s add starHasBeenCollected


# Title
execute as @s[scores={questState=3},tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=1},tag=!inConversation,tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run bossbar set minecraft:player1quest name ["",{"text":"Найдите все 5 звёзд в тёмном лабиринте (","color":"gold"},{"score":{"name":"collectedLumosStars","objective":"sharedQuests"},"color":"gold"},{"text":" / 5)","color":"gold"}]
execute as @s[scores={questState=3,playerID=2},tag=!inConversation,tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run bossbar set minecraft:player2quest name ["",{"text":"Найдите все 5 звёзд в тёмном лабиринте (","color":"gold"},{"score":{"name":"collectedLumosStars","objective":"sharedQuests"},"color":"gold"},{"text":" / 5)","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=!inConversation,tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run bossbar set minecraft:player3quest name ["",{"text":"Найдите все 5 звёзд в тёмном лабиринте (","color":"gold"},{"score":{"name":"collectedLumosStars","objective":"sharedQuests"},"color":"gold"},{"text":" / 5)","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=!inConversation,tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run bossbar set minecraft:player4quest name ["",{"text":"Найдите все 5 звёзд в тёмном лабиринте (","color":"gold"},{"score":{"name":"collectedLumosStars","objective":"sharedQuests"},"color":"gold"},{"text":" / 5)","color":"gold"}]



### Trigger ###
execute as @s[scores={questState=3},tag=inNormalState] if score collectedLumosStars sharedQuests matches 5.. run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState


#############
## State 4 ###########################################################################################
#############
# Exit the dark maze

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1518,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5097.50 94.00 32.51
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 8


execute as @s[scores={questState=4},tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=4,playerID=1},tag=!inConversation,tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run bossbar set minecraft:player1quest name ["",{"text":"Выйдите из темного лабиринта","color":"gold"}]
execute as @s[scores={questState=4,playerID=2},tag=!inConversation,tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run bossbar set minecraft:player2quest name ["",{"text":"Выйдите из темного лабиринта","color":"gold"}]
execute as @s[scores={questState=4,playerID=3},tag=!inConversation,tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run bossbar set minecraft:player3quest name ["",{"text":"Выйдите из темного лабиринта","color":"gold"}]
execute as @s[scores={questState=4,playerID=4},tag=!inConversation,tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run bossbar set minecraft:player4quest name ["",{"text":"Выйдите из темного лабиринта","color":"gold"}]



### Trigger ###
execute positioned 5097.50 94.00 32.51 as @s[distance=..5,scores={questState=4},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set flitwick p1convOverride 9
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set flitwick p2convOverride 9
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set flitwick p3convOverride 9
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set flitwick p4convOverride 9
execute as @s[tag=newState] run tag @s remove newState

#############
## State 5 ###########################################################################################
#############
# Speak to professor Flitwick

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1517,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5095.44 94.00 35.42
execute as @s[scores={questState=5,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=6},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

### Function ###

### Trigger ###
execute as @s[scores={questState=5},tag=inNormalState,tag=isTrackedQuest,tag=hasSpokenToFlitwickAfterLumosLesson] run tag @s add completeQuest


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
execute as @s[tag=completeQuest] run tag @s add hasLearnedLumos
execute as @s[tag=completeQuest] run tag @s remove hasSpokenToFlitwickAfterLumosLesson
execute as @s[tag=completeQuest,tag=gameLeader] run gamerule doDaylightCycle true
execute as @s[tag=completeQuest] run tag @s remove maraudersMapLocked
execute as @s[tag=completeQuest] run tag @s remove lockTrackedQuest
execute as @s[tag=completeQuest] unless entity @p[scores={trackedQuestID=14}] run scoreboard players set playerInLumosSpellChallenge global 0
execute as @s[tag=completeQuest] run scoreboard players set @s unlockedSpell 9
execute as @s[tag=completeQuest] run tag @s remove inMemory
execute as @s[tag=completeQuest] run tag @s add musicController
execute as @s[tag=completeQuest,scores={musicPhase=..0}] run scoreboard players set @s musicPhase 0
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
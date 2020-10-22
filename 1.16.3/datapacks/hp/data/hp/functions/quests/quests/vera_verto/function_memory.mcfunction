##############################################
# Vera Verto
##############################################
scoreboard players set @s questID 20
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.veraVerto"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

# Complete Quest Cheat
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s add completeQuest
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 728 136 1 1 false @s
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tp @s 722.52 66.00 152.50 179.84 0.68
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s add unlockedSpells
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s unlockedSpell 7
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] at @s run tp @e[tag=veraVertoGoblet] ~ ~-500 ~
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] at @s run tp @e[tag=mcGonagallClassroomCat] ~ ~-500 ~
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] at @s run tp @e[tag=mcGonagallClassroomCutscene] ~ ~-500 ~
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run kill @e[tag=veraVertoGoblet]
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run kill @e[tag=mcGonagallClassroomCat]
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run kill @e[tag=mcGonagallClassroomCutscene]
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run effect clear @e[tag=veraVertoParrot,limit=1] minecraft:invisibility
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tp @e[tag=mcGonagallClassroom] 724 66 140
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run kill @e[tag=chunkLoader]
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

# Memory catch up (Skip walking to classroom, etc.)
execute as @s[scores={questState=1},tag=inNormalState,tag=isTrackedQuest] run tag @s add newState
execute as @s[tag=newState,tag=gameLeader] run function hp:quests/quests/vera_verto/setup_transfiguration_classroom
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 23
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s add unlockedSpells
execute as @s[tag=newState] run scoreboard players set @s unlockedSpell 7
execute as @s[tag=newState] run scoreboard players set @s selectedSpell 7
execute as @s[tag=newState] run scoreboard players set @s currentSpell 7
execute as @s[tag=newState] run scoreboard players set @s cutSceneID 25
execute as @s[tag=newState] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=25}] run tag @s add cutsceneLeader
execute as @s[tag=newState] run function hp:cutscenes/init_cutscene
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set mcGonagall p1convOverride 10
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set mcGonagall p2convOverride 10
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set mcGonagall p3convOverride 10
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set mcGonagall p4convOverride 10
execute as @s[tag=newState] run tag @s add maraudersMapLocked
execute as @s[tag=newState] run tag @s add lockTrackedQuest
execute as @s[tag=newState,tag=gameLeader] run time set day
execute as @s[tag=newState,tag=gameLeader] run gamerule doDaylightCycle false
execute as @s[tag=newState] run tag @s remove hasLearnedVeraVerto
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Make your way through the obstacle course

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1476,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 8


### Trigger ###
execute as @s[x=8633,y=85,z=-3,dx=19,dy=6,dz=7,scores={questState=3},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set mcGonagall p1convOverride 13
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set mcGonagall p2convOverride 13
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set mcGonagall p3convOverride 13
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set mcGonagall p4convOverride 13
execute as @s[tag=newState] run tag @s remove newState



#############
## State 4 ###########################################################################################
#############
# Speak to Профессор Макгонаггал

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1475,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 8653.47 85.00 1.52
execute as @s[scores={questState=4,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=3},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Function ###

### Trigger ###
execute as @s[scores={questState=4},tag=inNormalState,tag=isTrackedQuest,tag=hasSpokenToMcGonagallAfterVeraVertoLesson] run tag @s add completeQuest


#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/timer/end_pensive_timer
execute as @s[tag=completeQuest] run scoreboard players set @s overrideRespawn 0
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set mcGonagall p1convOverride 1
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set mcGonagall p2convOverride 1
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set mcGonagall p3convOverride 1
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set mcGonagall p4convOverride 1
execute as @s[tag=completeQuest] run tag @s remove hasSpokenToMcGonagallAfterVeraVertoLesson
execute as @s[tag=completeQuest] run tag @s remove lockTrackedQuest
execute as @s[tag=completeQuest] run tag @s remove maraudersMapLocked
execute as @s[tag=completeQuest,tag=gameLeader] run gamerule doDaylightCycle false
execute as @s[tag=completeQuest] run tag @s add hasLearnedVeraVerto
execute as @s[tag=completeQuest] unless entity @p[scores={trackedQuestID=20}] run scoreboard players set playerInVeraVertoSpellChallenge global 0
execute as @s[tag=completeQuest] run scoreboard players set @s unlockedSpell 9
execute as @s[tag=completeQuest] run tag @s remove inMemory
execute as @s[tag=completeQuest] run tag @s add musicController
execute as @s[tag=completeQuest,scores={musicPhase=..0}] run scoreboard players set @s musicPhase 0
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
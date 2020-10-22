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

#############
## State 1 ###########################################################################################
#############
# Locate the Класс Трансфигурации

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1477,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 722.70 66.00 146.53
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Trigger
execute as @s[scores={questState=1,lastLocation=63,discoverLocation=0},tag=isTrackedQuest,x=714,dx=16,y=66,dy=10,z=139,dz=14,tag=inNormalState] run tag @s add newState
execute as @s[scores={questState=1,lastLocation=63,discoverLocation=0},tag=isTrackedQuest,x=715,dx=13,y=67,dy=10,z=137,dz=1,tag=inNormalState] run tag @s add newState
execute as @s[scores={questState=1,lastLocation=63,discoverLocation=0},tag=isTrackedQuest,x=715,dx=11,y=67,dy=9,z=135,dz=1,tag=inNormalState] run tag @s add newState
execute as @s[scores={questState=1,lastLocation=63,discoverLocation=0},tag=isTrackedQuest,x=721,dx=2,y=67,dy=6,z=134,dz=0,tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState,tag=isTrackedQuest] run scoreboard players operation @s trackQuestState = @s questState
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set mcGonagall p1convOverride 16
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set mcGonagall p2convOverride 16
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set mcGonagall p3convOverride 16
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set mcGonagall p4convOverride 16
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Wait for everyone to arrive

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1477,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 722.70 66.00 146.53
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasLearnedVeraVerto,tag=play] unless score @s trackedQuestID matches 20 run scoreboard players add @p[tag=activePlayer] suitableCount 1
execute as @a[tag=!hasLearnedVeraVerto,scores={trackedQuestID=20,trackQuestState=..2},tag=play] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute as @a[tag=!hasLearnedVeraVerto,scores={trackQuestState=2,trackedQuestID=20,lastLocation=63},x=714,dx=16,y=66,dy=10,z=139,dz=14,tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1
execute as @a[tag=!hasLearnedVeraVerto,scores={trackQuestState=2,trackedQuestID=20,lastLocation=63},x=715,dx=13,y=67,dy=10,z=137,dz=1,tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1
execute as @a[tag=!hasLearnedVeraVerto,scores={trackQuestState=2,trackedQuestID=20,lastLocation=63},x=715,dx=11,y=67,dy=9,z=135,dz=1,tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1
execute as @a[tag=!hasLearnedVeraVerto,scores={trackQuestState=2,trackedQuestID=20,lastLocation=63},x=721,dx=2,y=67,dy=6,z=134,dz=0,tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=2,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Подождите пока все не будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Подождите пока все не будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Подождите пока все не будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Подождите пока все не будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]

# Trigger
# This weird double tag thing is because of a super strange bug I can't explain some people run into where all the commands below execute but they don't progress to the next
# Quest state. The tag "goToNextQuestState" is removed in set_quest, and so it should just execute everything again if it for some reason doesn't set the quest the first time
# Around
execute as @s[scores={questState=2},tag=inNormalState,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add goToNextQuestState
execute as @s[tag=goToNextQuestState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 23
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s add unlockedSpells
execute as @s[tag=newState] run scoreboard players set @s unlockedSpell 7
execute as @s[tag=newState] run scoreboard players set @s cutSceneID 25
execute as @s[tag=newState] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=25}] run tag @s add cutsceneLeader
execute as @s[tag=newState] run function hp:cutscenes/init_cutscene
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set mcGonagall p1convOverride 10
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set mcGonagall p2convOverride 10
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set mcGonagall p3convOverride 10
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set mcGonagall p4convOverride 10
execute as @s[tag=newState] run tag @s add maraudersMapLocked
execute as @s[tag=newState] run tag @s add lockTrackedQuest
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
execute as @s[tag=completeQuest] run scoreboard players set @s questQueueID 21
execute as @s[tag=completeQuest] run scoreboard players set @s questQueue 120
execute as @s[tag=completeQuest] run tag @s add queingQuest
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set mcGonagall p1convOverride 1
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set mcGonagall p2convOverride 1
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set mcGonagall p3convOverride 1
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set mcGonagall p4convOverride 1
execute as @s[tag=completeQuest] run tag @s remove hasSpokenToMcGonagallAfterVeraVertoLesson
execute if score patronumClassIsSetUp global matches 0 as @s[tag=completeQuest,tag=gameLeader] run function hp:quests/quests/expecto_patronum/setup_expecto_patronum_lesson
execute as @s[tag=completeQuest] run tag @s remove lockTrackedQuest
execute as @s[tag=completeQuest] run tag @s remove maraudersMapLocked
execute as @s[tag=completeQuest,tag=gameLeader] run gamerule doDaylightCycle false
execute as @s[tag=completeQuest] run tag @s add hasLearnedVeraVerto
execute as @s[tag=completeQuest] unless entity @p[scores={trackedQuestID=20}] run scoreboard players set playerInVeraVertoSpellChallenge global 0
execute as @s[tag=completeQuest] run tag @s add musicController
execute as @s[tag=completeQuest,scores={musicPhase=..0}] run scoreboard players set @s musicPhase 0
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
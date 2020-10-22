##############################################
# Golden Skull
##############################################
scoreboard players set @s questID 23
scoreboard players operation @s questState = goldenSkull sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest


#############
## State 1 ###########################################################################################
#############
# Inspect the artifact

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1527,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 704.38 53.00 53.90
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
### Function ###


# Special selection
execute as @s[scores={questState=1}] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=goldenSkullArtifact] add questHover
execute as @s[scores={questState=1}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

### Trigger ###
execute as @s[tag=inNormalState,tag=hasPressedF] as @e[tag=questHover,tag=goldenSkullArtifact] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:gold_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[tag=inNormalState,tag=hasPressedF] if entity @e[tag=questHover,tag=goldenSkullArtifact] run tag @s add hasInteractedWithGoldenSkull

execute as @s[tag=hasInteractedWithGoldenSkull] run scoreboard players set goldenSkull sharedQuests 2

execute as @s[scores={playerID=1}] unless score goldenSkull p1Quests = goldenSkull sharedQuests if score goldenSkull sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score goldenSkull p2Quests = goldenSkull sharedQuests if score goldenSkull sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score goldenSkull p3Quests = goldenSkull sharedQuests if score goldenSkull sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score goldenSkull p4Quests = goldenSkull sharedQuests if score goldenSkull sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s questTextTimer 100
execute as @s[tag=newState,scores={playerID=1}] run bossbar set minecraft:player1quest name {"text":"Это какой-то золотой череп. Похоже, кто-то пытался от него избавиться","bold":false,"color":"gold"}
execute as @s[tag=newState,scores={playerID=2}] run bossbar set minecraft:player2quest name {"text":"Это какой-то золотой череп. Похоже, кто-то пытался от него избавиться","bold":false,"color":"gold"}
execute as @s[tag=newState,scores={playerID=3}] run bossbar set minecraft:player3quest name {"text":"Это какой-то золотой череп. Похоже, кто-то пытался от него избавиться","bold":false,"color":"gold"}
execute as @s[tag=newState,scores={playerID=4}] run bossbar set minecraft:player4quest name {"text":"Это какой-то золотой череп. Похоже, кто-то пытался от него избавиться","bold":false,"color":"gold"}
execute as @s[tag=newState] run tag @s remove hasInteractedWithGoldenSkull
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation goldenSkull p1Quests = goldenSkull sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation goldenSkull p2Quests = goldenSkull sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation goldenSkull p3Quests = goldenSkull sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation goldenSkull p4Quests = goldenSkull sharedQuests
execute as @s[tag=newState] run tag @s remove newState



#############
## State 2 ###########################################################################################
#############
# Get Professor Lupin to inspect the artifact.

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1526,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 639 95 246
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=4},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

# Function
### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=2,convState=1,conv=4}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Я нашёл это. Вам что-то известно про этот череп?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 15
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use



### Trigger ###
execute as @s[scores={questState=2},tag=inNormalState,tag=hasTalkedToLupinAboutTheGoldenSkull] run scoreboard players set goldenSkull sharedQuests -1
execute as @s[scores={playerID=1}] unless score goldenSkull p1Quests = goldenSkull sharedQuests if score goldenSkull sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score goldenSkull p2Quests = goldenSkull sharedQuests if score goldenSkull sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score goldenSkull p3Quests = goldenSkull sharedQuests if score goldenSkull sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score goldenSkull p4Quests = goldenSkull sharedQuests if score goldenSkull sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set goldenSkull sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players set @s questQueueID 24
execute as @s[tag=completeQuest] run scoreboard players set @s questQueue 120
execute as @s[tag=completeQuest] run scoreboard players set undergroundLibrary sharedQuests 1
execute as @s[tag=completeQuest] run scoreboard players set undergroundLibrary p1Quests 1
execute as @s[tag=completeQuest] run scoreboard players set undergroundLibrary p2Quests 1
execute as @s[tag=completeQuest] run scoreboard players set undergroundLibrary p3Quests 1
execute as @s[tag=completeQuest] run scoreboard players set undergroundLibrary p4Quests 1
execute as @s[tag=completeQuest] run scoreboard players set @s InvItemID 3
execute as @s[tag=completeQuest] run scoreboard players set @s InvItemCount 5
execute as @s[tag=completeQuest] run function hp:inventory/give_player_item
execute as @s[tag=completeQuest] run tag @s add queingQuest
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run tag @s remove hasTalkedToLupinAboutTheGoldenSkull
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation goldenSkull p1Quests = goldenSkull sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation goldenSkull p2Quests = goldenSkull sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation goldenSkull p3Quests = goldenSkull sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation goldenSkull p4Quests = goldenSkull sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# Complete Quest Cheat
execute as @s[tag=completeTrackedQuest] run scoreboard players set goldenSkull sharedQuests -1
execute as @s[tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

# reset quest tracking boolean
tag @s remove isTrackedQuest
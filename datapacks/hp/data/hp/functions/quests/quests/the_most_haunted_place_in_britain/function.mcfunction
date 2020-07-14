##############################################
# The Most Haunted Place in Britain
##############################################
scoreboard players set @s questID 54
scoreboard players operation @s questState = theMostHauntedPlaceInBritain sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Отправиться в Визжащая Хижина

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1405,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5429 65 2787

### Trigger ###
execute positioned 5429 65 2787 as @s[distance=..40,scores={questState=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set theMostHauntedPlaceInBritain sharedQuests 2

execute as @s[scores={playerID=1}] unless score theMostHauntedPlaceInBritain p1Quests = theMostHauntedPlaceInBritain sharedQuests if score theMostHauntedPlaceInBritain sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score theMostHauntedPlaceInBritain p2Quests = theMostHauntedPlaceInBritain sharedQuests if score theMostHauntedPlaceInBritain sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score theMostHauntedPlaceInBritain p3Quests = theMostHauntedPlaceInBritain sharedQuests if score theMostHauntedPlaceInBritain sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score theMostHauntedPlaceInBritain p4Quests = theMostHauntedPlaceInBritain sharedQuests if score theMostHauntedPlaceInBritain sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation theMostHauntedPlaceInBritain p1Quests = theMostHauntedPlaceInBritain sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation theMostHauntedPlaceInBritain p2Quests = theMostHauntedPlaceInBritain sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation theMostHauntedPlaceInBritain p3Quests = theMostHauntedPlaceInBritain sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation theMostHauntedPlaceInBritain p4Quests = theMostHauntedPlaceInBritain sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Fight off the poltergeists 
### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1404,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] positioned 5429 65 2787 if entity @s[distance=..50] run tag @s add questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] positioned 5429 65 2787 unless entity @s[distance=..50] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5429 65 2787
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 4

execute as @s[scores={questState=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=2,playerID=1},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Уничтожьте 10 полтергейстов (","color":"gold"},{"score":{"name":"shriekingShackPoltergeistKills","objective":"sharedQuests"},"color":"gold"},{"text":" из 10)","color":"gold"}]
execute as @s[scores={questState=2,playerID=2},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Уничтожьте 10 полтергейстов (","color":"gold"},{"score":{"name":"shriekingShackPoltergeistKills","objective":"sharedQuests"},"color":"gold"},{"text":" из 10)","color":"gold"}]
execute as @s[scores={questState=2,playerID=3},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Уничтожьте 10 полтергейстов (","color":"gold"},{"score":{"name":"shriekingShackPoltergeistKills","objective":"sharedQuests"},"color":"gold"},{"text":" из 10)","color":"gold"}]
execute as @s[scores={questState=2,playerID=4},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Уничтожьте 10 полтергейстов (","color":"gold"},{"score":{"name":"shriekingShackPoltergeistKills","objective":"sharedQuests"},"color":"gold"},{"text":" из 10)","color":"gold"}]


### Trigger ###
execute positioned 5429 65 2787 as @s[distance=..70,scores={questState=2},tag=isTrackedQuest] run scoreboard players operation shriekingShackPoltergeistKills sharedQuests += @s poltergeistsK

execute as @s[scores={questState=2},tag=isTrackedQuest] if score shriekingShackPoltergeistKills sharedQuests matches 10.. run scoreboard players set theMostHauntedPlaceInBritain sharedQuests 3
execute as @s[scores={playerID=1}] unless score theMostHauntedPlaceInBritain p1Quests = theMostHauntedPlaceInBritain sharedQuests if score theMostHauntedPlaceInBritain sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score theMostHauntedPlaceInBritain p2Quests = theMostHauntedPlaceInBritain sharedQuests if score theMostHauntedPlaceInBritain sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score theMostHauntedPlaceInBritain p3Quests = theMostHauntedPlaceInBritain sharedQuests if score theMostHauntedPlaceInBritain sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score theMostHauntedPlaceInBritain p4Quests = theMostHauntedPlaceInBritain sharedQuests if score theMostHauntedPlaceInBritain sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation theMostHauntedPlaceInBritain p1Quests = theMostHauntedPlaceInBritain sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation theMostHauntedPlaceInBritain p2Quests = theMostHauntedPlaceInBritain sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation theMostHauntedPlaceInBritain p3Quests = theMostHauntedPlaceInBritain sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation theMostHauntedPlaceInBritain p4Quests = theMostHauntedPlaceInBritain sharedQuests
execute as @s[tag=newState] run tag 692ffc30-3f23-47c5-b043-9b9b6d4cc29a add disable
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Return to Aberforth Dumbledore

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1403,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5391 107 2665
execute as @s[scores={questState=3,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=388},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 4


### Inject conversation ###
execute as @s[tag=inConversation,scores={conv=388,convState=0,questState=3}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Я разобрался с пугающим шумом\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 4
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use



execute as @s[scores={questState=3},tag=inNormalState,tag=hasSpokenToAberforthAfterTakingCareOfPoltergeists] run scoreboard players set theMostHauntedPlaceInBritain sharedQuests -1
execute as @s[scores={playerID=1}] unless score theMostHauntedPlaceInBritain p1Quests = theMostHauntedPlaceInBritain sharedQuests if score theMostHauntedPlaceInBritain sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score theMostHauntedPlaceInBritain p2Quests = theMostHauntedPlaceInBritain sharedQuests if score theMostHauntedPlaceInBritain sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score theMostHauntedPlaceInBritain p3Quests = theMostHauntedPlaceInBritain sharedQuests if score theMostHauntedPlaceInBritain sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score theMostHauntedPlaceInBritain p4Quests = theMostHauntedPlaceInBritain sharedQuests if score theMostHauntedPlaceInBritain sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set theMostHauntedPlaceInBritain sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players set shriekingShackPoltergeistKills sharedQuests 0
execute as @s[tag=completeQuest] run scoreboard players add @s money 150
execute as @s[tag=completeQuest] run tag @s remove hasSpokenToAberforthAfterTakingCareOfPoltergeists
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation theMostHauntedPlaceInBritain p1Quests = theMostHauntedPlaceInBritain sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation theMostHauntedPlaceInBritain p2Quests = theMostHauntedPlaceInBritain sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation theMostHauntedPlaceInBritain p3Quests = theMostHauntedPlaceInBritain sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation theMostHauntedPlaceInBritain p4Quests = theMostHauntedPlaceInBritain sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# Complete Quest Cheat
execute as @s[tag=completeTrackedQuest] run scoreboard players set theMostHauntedPlaceInBritain sharedQuests -1
execute as @s[tag=completeTrackedQuest] run tag @s remove completeTrackedQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
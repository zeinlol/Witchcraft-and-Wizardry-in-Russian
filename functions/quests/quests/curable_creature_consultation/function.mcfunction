##############################################
# Curable Creature Consultation
##############################################
scoreboard players set @s questID 55
scoreboard players operation @s questState = curableCreatureConsultation sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Visit Hagrid at his hut

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1402,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 328.92 14.00 359.86

### Trigger ###
execute as @s[scores={questState=1,lastRegion=1,lastLocation=68},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set curableCreatureConsultation sharedQuests 2

execute as @s[scores={playerID=1}] unless score curableCreatureConsultation p1Quests = curableCreatureConsultation sharedQuests if score curableCreatureConsultation sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score curableCreatureConsultation p2Quests = curableCreatureConsultation sharedQuests if score curableCreatureConsultation sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score curableCreatureConsultation p3Quests = curableCreatureConsultation sharedQuests if score curableCreatureConsultation sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score curableCreatureConsultation p4Quests = curableCreatureConsultation sharedQuests if score curableCreatureConsultation sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation curableCreatureConsultation p1Quests = curableCreatureConsultation sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation curableCreatureConsultation p2Quests = curableCreatureConsultation sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation curableCreatureConsultation p3Quests = curableCreatureConsultation sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation curableCreatureConsultation p4Quests = curableCreatureConsultation sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Speak to Hagrid

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1401,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[tag=hagridLayer2] unless entity @e[tag=hagridLayer1,tag=inConversationNPC,limit=1,sort=nearest,distance=..2] run particle minecraft:angry_villager ~ ~1 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=1..2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 328.92 14.00 359.86

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=1..2,convState=1,conv=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ (Пообщаться с Хагридом насчёт больного Лунного Тельца)\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 30
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


# Trigger
execute as @s[scores={questState=1..2},tag=isTrackedQuest,tag=hasSpokenToHagridAboutSickCreature] run scoreboard players set curableCreatureConsultation sharedQuests 3

execute as @s[scores={playerID=1}] unless score curableCreatureConsultation p1Quests = curableCreatureConsultation sharedQuests if score curableCreatureConsultation sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score curableCreatureConsultation p2Quests = curableCreatureConsultation sharedQuests if score curableCreatureConsultation sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score curableCreatureConsultation p3Quests = curableCreatureConsultation sharedQuests if score curableCreatureConsultation sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score curableCreatureConsultation p4Quests = curableCreatureConsultation sharedQuests if score curableCreatureConsultation sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation curableCreatureConsultation p1Quests = curableCreatureConsultation sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation curableCreatureConsultation p2Quests = curableCreatureConsultation sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation curableCreatureConsultation p3Quests = curableCreatureConsultation sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation curableCreatureConsultation p4Quests = curableCreatureConsultation sharedQuests
execute as @s[tag=newState] run tag @s remove hasSpokenToHagridAboutSickCreature
execute as @s[tag=newState] run tag @s remove newState


#############
## State 3 ###########################################################################################
#############
# Return to Wilhelmina Grubbly-Plank

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1400,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5320 101 2498
execute as @s[scores={questState=3,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=116},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=3,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 1010.35 78.00 -180.75
execute as @s[scores={questState=3,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=3,lastRegion=3},tag=isTrackedQuest] at @s if entity @s[x=512,y=0,z=-2048,dx=178,dy=196,dz=180] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 703.45 65.00 -1868.58
execute as @s[scores={questState=3,lastRegion=3},tag=isTrackedQuest] at @s unless entity @s[x=512,y=0,z=-2048,dx=178,dy=196,dz=180] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 779.69 81.00 -2042.85
execute as @s[scores={questState=3,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=3,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=3,lastRegion=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5320 101 2498



### Inject conversation ###
execute as @s[tag=inConversation,scores={conv=116,convState=0,questState=3}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ (Передать совет Хагрида)\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 18
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use



execute as @s[scores={questState=3},tag=inNormalState,tag=hasCompletedCurableCreatureConsultation] run scoreboard players set curableCreatureConsultation sharedQuests -1
execute as @s[scores={playerID=1}] unless score curableCreatureConsultation p1Quests = curableCreatureConsultation sharedQuests if score curableCreatureConsultation sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score curableCreatureConsultation p2Quests = curableCreatureConsultation sharedQuests if score curableCreatureConsultation sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score curableCreatureConsultation p3Quests = curableCreatureConsultation sharedQuests if score curableCreatureConsultation sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score curableCreatureConsultation p4Quests = curableCreatureConsultation sharedQuests if score curableCreatureConsultation sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set curableCreatureConsultation sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players add @s money 75
execute as @s[tag=completeQuest] run tag @s remove hasCompletedCurableCreatureConsultation
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation curableCreatureConsultation p1Quests = curableCreatureConsultation sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation curableCreatureConsultation p2Quests = curableCreatureConsultation sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation curableCreatureConsultation p3Quests = curableCreatureConsultation sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation curableCreatureConsultation p4Quests = curableCreatureConsultation sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
##############################################
# Postponed Postage
##############################################
scoreboard players set @s questID 52
scoreboard players operation @s questState = postponedPostage sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5448 100 2482
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=1,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=113},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=1,conv=113,convState=1}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 10
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=1},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 2


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5419 104 2485
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=112},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=2,conv=112,convState=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 3
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=2},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 3


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState


#############
## State 3 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5364 106 2497
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=3,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=114},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=3,conv=114,convState=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 4
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=3},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 4


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 4 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 4 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5328 102 2473
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=4,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=205},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=4,conv=205,convState=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 1
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=4},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 5


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 5 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 5 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5320 101 2498
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=5,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=116},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=5,conv=116,convState=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 19
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=5},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 6


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 6 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 6 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5305 100 2468
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=6,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=125},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=6,conv=125,convState=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 23
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=6},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 7


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 7 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 7 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 7 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 7 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 7
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 7 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=7},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=7},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5277 105 2479
execute as @s[scores={questState=7},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=7,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=127},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=7,conv=127,convState=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 3
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=7},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 8


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 8 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 8 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 8 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 8 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 8
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 8 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=8},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=8},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5266 98 2479
execute as @s[scores={questState=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=8,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=128},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=8,conv=128,convState=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 1
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=8},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 9


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 9 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 9 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 9 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 9 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 9
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 9 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=9},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=9},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5245 96 2514
execute as @s[scores={questState=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=9,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=120},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=9,conv=120,convState=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 2
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=9},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 10


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 10 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 10 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 10 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 10 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 10
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 10 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=10},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=10},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=10},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=10},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5234 96 2515
execute as @s[scores={questState=10},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=10,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=121},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=10,conv=121,convState=0}] run tag @s add use
execute as @s[tag=inConversation,scores={questState=10,conv=121,convState=6}] run tag @s add use
execute as @s[tag=inConversation,scores={questState=10,conv=121,convState=8}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 1
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=10},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 11


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 11 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 11 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 11 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 11 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 11
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 11 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=11},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=11},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=11},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=11},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5220 95 2516
execute as @s[scores={questState=11},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=11,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=122},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=11,conv=122,convState=1}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 2
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=11},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 12


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 12 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 12 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 12 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 12 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 12
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 12 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=12},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=12},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=12},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=12},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5365 105 2514
execute as @s[scores={questState=12},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=12,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=133},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=12,conv=133,convState=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 2
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=12},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 13


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 13 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 13 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 13 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 13 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 13
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 13 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=13},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=13},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=13},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=13},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5367 103 2529
execute as @s[scores={questState=13},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=13,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=206},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=13,conv=206,convState=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 1
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=13},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 14


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 14 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 14 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 14 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 14 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 14
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 14 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=14},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=14},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=14},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=14},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5385 107 2438
execute as @s[scores={questState=14},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=14,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=208},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=14,conv=208,convState=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 3
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=14},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 15


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 15 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 15 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 15 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 15 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 15
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 15 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=15},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=15},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=15},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=15},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5350 104 2437
execute as @s[scores={questState=15},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=15,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=135},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=15,conv=135,convState=1}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 8
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=15},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 16


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 16 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 16 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 16 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 16 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 16
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 16 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=16},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=16},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=16},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=16},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5334 104 2458
execute as @s[scores={questState=16},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=16,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=137},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=16,conv=137,convState=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 2
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=16},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 17


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 17 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 17 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 17 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 17 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 17
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 17 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=17},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=17},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=17},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=17},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5334 102 2436
execute as @s[scores={questState=17},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=17,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=136},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=17,conv=136,convState=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 2
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=17},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 18


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 18 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 18 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 18 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 18 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 18
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 18 ###########################################################################################
#############
# Deliver the letters to the Hogsmeade residents

### Tracked Quest ###
execute as @s[scores={questState=18},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=18},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1410,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=18},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=18},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5391 107 2665
execute as @s[scores={questState=18},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=18,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=388},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=18,conv=388,convState=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I have a letter for you\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 5
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=18},tag=inNormalState,tag=isTrackedQuest,tag=hasDeliveredLetter] run scoreboard players set postponedPostage sharedQuests 19


execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 19 run tag @s add newState
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 19 run tag @s add newState
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 19 run tag @s add newState
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches 19 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 19
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 19 ###########################################################################################
#############
# Return to Jesper Hopkirk

### Tracked Quest ###
execute as @s[scores={questState=19},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=19},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1409,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=19},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=19},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5353 106 2472
execute as @s[scores={questState=19,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=218},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=19},tag=isTrackedQuest] run scoreboard players set @s questRegion 4

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=19,conv=218,convState=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I've delivered all the letters\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 9
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use



### Trigger ###
execute as @s[scores={questState=19},tag=inNormalState,tag=hasCompletedPostponedPostage] run scoreboard players set postponedPostage sharedQuests -1
execute as @s[scores={playerID=1}] unless score postponedPostage p1Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score postponedPostage p2Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score postponedPostage p3Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score postponedPostage p4Quests = postponedPostage sharedQuests if score postponedPostage sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set postponedPostage sharedQuests -1
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run tag @s remove hasCompletedPostponedPostage
execute as @s[tag=completeQuest] run scoreboard players add @s money 150
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation postponedPostage p1Quests = postponedPostage sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation postponedPostage p2Quests = postponedPostage sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation postponedPostage p3Quests = postponedPostage sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation postponedPostage p4Quests = postponedPostage sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# reset quest tracking boolean
tag @s remove isTrackedQuest
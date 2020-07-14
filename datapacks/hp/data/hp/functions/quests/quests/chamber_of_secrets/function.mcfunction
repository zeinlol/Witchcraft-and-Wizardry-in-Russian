##############################################
# Тайная Комната
##############################################
scoreboard players set @s questID 42
scoreboard players operation @s questState = chamberOfSecrets sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Отправиться в Hogwarts

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1441,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=1,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=1,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] unless entity @s[x=2870,dx=268,y=54,dy=26,z=-465,dz=39] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2940 61 -5
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] if entity @s[x=2870,dx=268,y=54,dy=26,z=-465,dz=39] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2978 58 -453
execute as @s[scores={questState=1,lastRegion=3},tag=isTrackedQuest] at @s if entity @s[x=730,dx=470,y=0,dy=255,z=-2048,dz=179] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 702.01 65.00 -1867.73
execute as @s[scores={questState=1,lastRegion=3},tag=isTrackedQuest] at @s unless entity @s[x=730,dx=470,y=0,dy=255,z=-2048,dz=179] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 564.81 90.00 -2018.65
execute as @s[scores={questState=1,lastRegion=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5121.53 80.75 2079.63

### Trigger ###
execute as @s[scores={questState=1,lastRegion=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set chamberOfSecrets sharedQuests 2

execute as @s[scores={playerID=1}] unless score chamberOfSecrets p1Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score chamberOfSecrets p2Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score chamberOfSecrets p3Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score chamberOfSecrets p4Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation chamberOfSecrets p1Quests = chamberOfSecrets sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation chamberOfSecrets p2Quests = chamberOfSecrets sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation chamberOfSecrets p3Quests = chamberOfSecrets sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation chamberOfSecrets p4Quests = chamberOfSecrets sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Locate the girls' lavatory

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1440,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 793 53 152

### Trigger ###
execute positioned 793 53 152 as @s[distance=..7,scores={questState=2},tag=isTrackedQuest] run scoreboard players set chamberOfSecrets sharedQuests 3

execute as @s[scores={playerID=1}] unless score chamberOfSecrets p1Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score chamberOfSecrets p2Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score chamberOfSecrets p3Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score chamberOfSecrets p4Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation chamberOfSecrets p1Quests = chamberOfSecrets sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation chamberOfSecrets p2Quests = chamberOfSecrets sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation chamberOfSecrets p3Quests = chamberOfSecrets sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation chamberOfSecrets p4Quests = chamberOfSecrets sharedQuests
execute as @s[tag=newState] run tag @s remove newState



#############
## State 3 ###########################################################################################
#############
# Find the entrance to the Тайная Комната

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1439,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3,lastRegion=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3,lastRegion=8},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=3,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=3,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 793 53 152
execute as @s[scores={questState=3,lastRegion=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

# Trigger
execute as @s[x=6532,y=47,z=930,dx=30,dy=8,dz=18,scores={questState=3},tag=isTrackedQuest] run scoreboard players set chamberOfSecrets sharedQuests 4

execute as @s[scores={playerID=1}] unless score chamberOfSecrets p1Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=2}] unless score chamberOfSecrets p2Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=3}] unless score chamberOfSecrets p3Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=4}] unless score chamberOfSecrets p4Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches 4 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation chamberOfSecrets p1Quests = chamberOfSecrets sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation chamberOfSecrets p2Quests = chamberOfSecrets sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation chamberOfSecrets p3Quests = chamberOfSecrets sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation chamberOfSecrets p4Quests = chamberOfSecrets sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 4 ###########################################################################################
#############
# Collect a basilisk tooth

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1438,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 6621.77 48.00 922.40
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

# Special selection
execute as @s[scores={questState=4}] at @s positioned ^ ^-.25 ^1 run tag @e[distance=..2,limit=1,sort=nearest,tag=basaliskFang] add questHover
execute as @s[scores={questState=4}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

execute as @s[tag=inNormalState,tag=hasPressedF] as @e[tag=questHover,tag=basaliskFang] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:gold_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[tag=inNormalState,tag=hasPressedF] if entity @e[tag=questHover,tag=basaliskFang] at @s run playsound minecraft:custom.ui.inventory.game_inventory.generic.picked_up_generic master @a ~ ~ ~ 2 1
execute as @s[tag=inNormalState,tag=hasPressedF] if entity @e[tag=questHover,tag=basaliskFang] run tag @s add hasPickedUpBasiliskTooth


### Trigger ###
execute positioned as @s[scores={questState=4},tag=inNormalState,tag=hasPickedUpBasiliskTooth] run scoreboard players set chamberOfSecrets sharedQuests 5

execute as @s[scores={playerID=1}] unless score chamberOfSecrets p1Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=2}] unless score chamberOfSecrets p2Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=3}] unless score chamberOfSecrets p3Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=4}] unless score chamberOfSecrets p4Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches 5 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation chamberOfSecrets p1Quests = chamberOfSecrets sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation chamberOfSecrets p2Quests = chamberOfSecrets sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation chamberOfSecrets p3Quests = chamberOfSecrets sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation chamberOfSecrets p4Quests = chamberOfSecrets sharedQuests
execute as @s[tag=newState] run tag @s remove hasPickedUpBasiliskTooth
execute as @s[tag=newState] run tag @s remove newState

#############
## State 5 ###########################################################################################
#############
# Return to Наземникус Флетчер

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1437,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2454 62 -247
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=5,npcQuestIcon=1},tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=220},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s


### Inject conversation ###
execute as @s[tag=isTrackedQuest,tag=inConversation,scores={questState=5,conv=220,convState=8}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Клык василиска со мной\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 22
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use



execute as @s[scores={questState=5},tag=inNormalState,tag=hasSpokenToMundungusFletcherAfterRetrievingBasiliskTooth] run scoreboard players set chamberOfSecrets sharedQuests -1
execute as @s[scores={playerID=1}] unless score chamberOfSecrets p1Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score chamberOfSecrets p2Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score chamberOfSecrets p3Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score chamberOfSecrets p4Quests = chamberOfSecrets sharedQuests if score chamberOfSecrets sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set chamberOfSecrets sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players add @s money 400
execute as @s[tag=completeQuest] run tag @s remove hasSpokenToMundungusFletcherAfterRetrievingBasiliskTooth
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation chamberOfSecrets p1Quests = chamberOfSecrets sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation chamberOfSecrets p2Quests = chamberOfSecrets sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation chamberOfSecrets p3Quests = chamberOfSecrets sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation chamberOfSecrets p4Quests = chamberOfSecrets sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# Complete Quest Cheat
execute as @s[tag=completeTrackedQuest] run scoreboard players set chamberOfSecrets sharedQuests -1
execute as @s[tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

# reset quest tracking boolean
tag @s remove isTrackedQuest
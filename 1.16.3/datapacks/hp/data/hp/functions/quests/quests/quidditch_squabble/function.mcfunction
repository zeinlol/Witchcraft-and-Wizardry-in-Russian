##############################################
# Спор из-за Квиддича
##############################################
scoreboard players set @s questID 62
scoreboard players operation @s questState = quidditchSquabble sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Speak to Оливер Вуд

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1376,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 448 12 -218

### Trigger ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set quidditchSquabble sharedQuests 2

execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove hasSpokenToOliverWood
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Speak to Маркус Флинт

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1375,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 450 12 -218
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=423},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

# Trigger
execute as @s[scores={questState=2},tag=isTrackedQuest,tag=hasSpokenToMarcusFlint] run scoreboard players set quidditchSquabble sharedQuests 3

execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set marcusFlint p1convOverride 5
execute as @s[tag=newState] run scoreboard players set marcusFlint p2convOverride 5
execute as @s[tag=newState] run scoreboard players set marcusFlint p3convOverride 5
execute as @s[tag=newState] run scoreboard players set marcusFlint p4convOverride 5
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove hasSpokenToMarcusFlint
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Go to the marked location and jump on your broom

### Tracked Quest ###
execute as @s[scores={questState=3..60},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3..60},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1374,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3..60},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3..60},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 459 13 -219
execute as @s[scores={questState=3..60},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=3..15},tag=isTrackedQuest] positioned 459 13 -219 rotated 0 -90 run function hp:quests/quests/flying/fire_circle

### Function ###
# Title
execute as @s[scores={questState=3},tag=!inConversation,tag=!inProperCutScene,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Идите в отмеченную область и оседлайте метлу","color":"gold"}]
execute as @s[scores={questState=3,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Идите в отмеченную область и оседлайте метлу","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Идите в отмеченную область и оседлайте метлу","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Идите в отмеченную область и оседлайте метлу","color":"gold"}]



# Trigger
execute positioned 459 13 -219 as @s[tag=flyingBroom,scores={questState=3},tag=!inConversation,tag=isTrackedQuest,distance=..3] run scoreboard players set quidditchSquabble sharedQuests 9
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 9 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 9 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 9 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 9 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 9
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set qudditchQuarrelFlyingTimer p1Quests -5000
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set qudditchQuarrelFlyingTimer p2Quests -5000
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set qudditchQuarrelFlyingTimer p3Quests -5000
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set qudditchQuarrelFlyingTimer p4Quests -5000
execute as @s[tag=newState] run tag @s add lockTrackedQuest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 9 ###########################################################################################
#############
# Count down 3!

### Tracked Quest ###
execute as @s[scores={questState=9..12},tag=isTrackedQuest] positioned 459 13 -219 rotated 0 90 run function hp:quests/quests/flying/fire_circle
execute as @s[scores={questState=9..12},tag=isTrackedQuest] at @s as @e[tag=broomElytra,limit=1,sort=nearest] run data merge entity @s {Motion:[0.0,0.0,0.0]}

### Function ###
# Increment timer
execute as @s[scores={questState=9..,playerID=1},tag=isTrackedQuest] run scoreboard players operation qudditchQuarrelFlyingTimer p1Quests += systick time
execute as @s[scores={questState=9..,playerID=2},tag=isTrackedQuest] run scoreboard players operation qudditchQuarrelFlyingTimer p2Quests += systick time
execute as @s[scores={questState=9..,playerID=3},tag=isTrackedQuest] run scoreboard players operation qudditchQuarrelFlyingTimer p3Quests += systick time
execute as @s[scores={questState=9..,playerID=4},tag=isTrackedQuest] run scoreboard players operation qudditchQuarrelFlyingTimer p4Quests += systick time

execute as @s[scores={questState=9,playerID=1},tag=isTrackedQuest] if score qudditchQuarrelFlyingTimer p1Quests matches -3000.. run scoreboard players set quidditchSquabble sharedQuests 10
execute as @s[scores={questState=9,playerID=2},tag=isTrackedQuest] if score qudditchQuarrelFlyingTimer p2Quests matches -3000.. run scoreboard players set quidditchSquabble sharedQuests 10
execute as @s[scores={questState=9,playerID=3},tag=isTrackedQuest] if score qudditchQuarrelFlyingTimer p3Quests matches -3000.. run scoreboard players set quidditchSquabble sharedQuests 10
execute as @s[scores={questState=9,playerID=4},tag=isTrackedQuest] if score qudditchQuarrelFlyingTimer p4Quests matches -3000.. run scoreboard players set quidditchSquabble sharedQuests 10

# Trigger
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 10 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 10 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 10 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 10 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 10
execute as @s[tag=newState] run title @s times 2 16 2
execute as @s[tag=newState] run title @s subtitle {"text":"3","color":"gold"}
execute as @s[tag=newState] at @s run playsound minecraft:custom.ui.event1 master @s ~ ~ ~ 10 0.7 1
execute as @s[tag=newState] run title @s title {"text":""}
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 10 ###########################################################################################
#############
# Count down 2!

### Function ###
execute as @s[scores={questState=10,playerID=1},tag=isTrackedQuest] if score qudditchQuarrelFlyingTimer p1Quests matches -2000.. run scoreboard players set quidditchSquabble sharedQuests 11
execute as @s[scores={questState=10,playerID=2},tag=isTrackedQuest] if score qudditchQuarrelFlyingTimer p2Quests matches -2000.. run scoreboard players set quidditchSquabble sharedQuests 11
execute as @s[scores={questState=10,playerID=3},tag=isTrackedQuest] if score qudditchQuarrelFlyingTimer p3Quests matches -2000.. run scoreboard players set quidditchSquabble sharedQuests 11
execute as @s[scores={questState=10,playerID=4},tag=isTrackedQuest] if score qudditchQuarrelFlyingTimer p4Quests matches -2000.. run scoreboard players set quidditchSquabble sharedQuests 11

# Trigger
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 11 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 11 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 11 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 11 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 11
execute as @s[tag=newState] run title @s times 2 16 2
execute as @s[tag=newState] run title @s subtitle {"text":"2","color":"gold"}
execute as @s[tag=newState] at @s run playsound minecraft:custom.ui.event1 master @s ~ ~ ~ 10 0.8 1
execute as @s[tag=newState] run title @s title {"text":""}
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 11 ###########################################################################################
#############
# Count down 1!

### Function ###
execute as @s[scores={questState=11,playerID=1},tag=isTrackedQuest] if score qudditchQuarrelFlyingTimer p1Quests matches -1000.. run scoreboard players set quidditchSquabble sharedQuests 12
execute as @s[scores={questState=11,playerID=2},tag=isTrackedQuest] if score qudditchQuarrelFlyingTimer p2Quests matches -1000.. run scoreboard players set quidditchSquabble sharedQuests 12
execute as @s[scores={questState=11,playerID=3},tag=isTrackedQuest] if score qudditchQuarrelFlyingTimer p3Quests matches -1000.. run scoreboard players set quidditchSquabble sharedQuests 12
execute as @s[scores={questState=11,playerID=4},tag=isTrackedQuest] if score qudditchQuarrelFlyingTimer p4Quests matches -1000.. run scoreboard players set quidditchSquabble sharedQuests 12

# Trigger
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 12 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 12 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 12 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 12 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 12
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run title @s times 2 16 2
execute as @s[tag=newState] run title @s subtitle {"text":"1","color":"gold"}
execute as @s[tag=newState] at @s run playsound minecraft:custom.ui.event1 master @s ~ ~ ~ 10 0.9 1
execute as @s[tag=newState] run title @s title {"text":""}
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 12 ###########################################################################################
#############
# Count down GO!

### Function ###
execute as @s[scores={questState=12,playerID=1},tag=isTrackedQuest] if score qudditchQuarrelFlyingTimer p1Quests matches 0.. run scoreboard players set quidditchSquabble sharedQuests 13
execute as @s[scores={questState=12,playerID=2},tag=isTrackedQuest] if score qudditchQuarrelFlyingTimer p2Quests matches 0.. run scoreboard players set quidditchSquabble sharedQuests 13
execute as @s[scores={questState=12,playerID=3},tag=isTrackedQuest] if score qudditchQuarrelFlyingTimer p3Quests matches 0.. run scoreboard players set quidditchSquabble sharedQuests 13
execute as @s[scores={questState=12,playerID=4},tag=isTrackedQuest] if score qudditchQuarrelFlyingTimer p4Quests matches 0.. run scoreboard players set quidditchSquabble sharedQuests 13

# Trigger
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 13 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 13 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 13 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 13 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 13
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run title @s times 2 16 2
execute as @s[tag=newState] run title @s subtitle {"text":"Go!","color":"gold"}
execute as @s[tag=newState] at @s run playsound minecraft:custom.ui.event3 master @s ~ ~ ~ 10 1 1
execute as @s[tag=newState] run title @s title {"text":""}
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState



#############
## State 13 ###########################################################################################
#############
# Ring 1


execute as @s[scores={questState=13..59},tag=isTrackedQuest] run scoreboard players set @s tmp 240000

execute as @s[scores={playerID=1,questState=13..59},tag=isTrackedQuest] run scoreboard players operation @s tmp -= qudditchQuarrelFlyingTimer p1Quests
execute as @s[scores={playerID=2,questState=13..59},tag=isTrackedQuest] run scoreboard players operation @s tmp -= qudditchQuarrelFlyingTimer p2Quests
execute as @s[scores={playerID=3,questState=13..59},tag=isTrackedQuest] run scoreboard players operation @s tmp -= qudditchQuarrelFlyingTimer p3Quests
execute as @s[scores={playerID=4,questState=13..59},tag=isTrackedQuest] run scoreboard players operation @s tmp -= qudditchQuarrelFlyingTimer p4Quests

# If too slow
### Trigger ###
execute as @s[scores={questState=13..58,tmp=..-1}] run scoreboard players set quidditchSquabble sharedQuests 59
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 59 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 59 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 59 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 59 run tag @s add newState
execute as @s[tag=newState] at @s run playsound minecraft:custom.ui.error master @s ~ ~ ~ 10 1.2 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation @s tmp = qudditchQuarrelFlyingTimer p1Quests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation @s tmp = qudditchQuarrelFlyingTimer p2Quests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation @s tmp = qudditchQuarrelFlyingTimer p3Quests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation @s tmp = qudditchQuarrelFlyingTimer p4Quests
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set qudditchQuarrelFlyingTimer p1Quests -5000
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set qudditchQuarrelFlyingTimer p2Quests -5000
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set qudditchQuarrelFlyingTimer p3Quests -5000
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set qudditchQuarrelFlyingTimer p4Quests -5000
execute as @s[tag=newState] run scoreboard players set @s questState 59
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState




scoreboard players set @s[scores={questState=13..59},tag=isTrackedQuest] tmp2 0
scoreboard players set @s[scores={questState=13..59},tag=isTrackedQuest] tmp3 0
execute as @s[scores={questState=13..59},tag=isTrackedQuest] run function hp:quests/quests/flying/timer

execute as @s[scores={questState=13..59},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=13..59,playerID=1,tmp2=10..},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Complete a lap before the timer runs out (","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=13..59,playerID=3,tmp2=10..},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Complete a lap before the timer runs out (","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=13..59,playerID=2,tmp2=10..},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Complete a lap before the timer runs out (","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=13..59,playerID=4,tmp2=10..},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Complete a lap before the timer runs out (","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=13..59,playerID=1,tmp2=..9},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Complete a lap before the timer runs out (","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":0","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=13..59,playerID=3,tmp2=..9},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Complete a lap before the timer runs out (","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":0","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=13..59,playerID=2,tmp2=..9},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Complete a lap before the timer runs out (","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":0","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=13..59,playerID=4,tmp2=..9},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Complete a lap before the timer runs out (","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":0","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]


### Tracked Quest ###
execute as @s[scores={questState=9..13},tag=isTrackedQuest] positioned 477 21 -222 rotated -127 -40 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 477 21 -222 as @s[scores={questState=13},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 15
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 15 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 15 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 15 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 15 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 15
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 15 ###########################################################################################
#############
# Ring 2

### Tracked Quest ###
execute as @s[scores={questState=9..15},tag=isTrackedQuest] positioned 492 37 -233 rotated -139 -21 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 492 37 -233 as @s[scores={questState=15},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 16
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 16 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 16 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 16 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 16 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 16
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 16 ###########################################################################################
#############
# Ring 3

### Tracked Quest ###
execute as @s[scores={questState=9..16},tag=isTrackedQuest] positioned 504 45 -248 rotated 172 0 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 504 45 -248 as @s[scores={questState=16},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 17
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 17 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 17 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 17 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 17 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 17
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 17 ###########################################################################################
#############
# Ring 4

### Tracked Quest ###
execute as @s[scores={questState=15..17},tag=isTrackedQuest] positioned 497 45 -266 rotated 126 12 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 497 45 -266 as @s[scores={questState=17},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 18
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 18 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 18 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 18 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 18 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 18
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 18 ###########################################################################################
#############
# Ring 5

### Tracked Quest ###
execute as @s[scores={questState=16..18},tag=isTrackedQuest] positioned 476 40 -281 rotated 119 34 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 476 40 -281 as @s[scores={questState=18},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 19
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 19 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 19 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 19 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 19 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 19
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 19 ###########################################################################################
#############
# Ring 6

### Tracked Quest ###
execute as @s[scores={questState=17..19},tag=isTrackedQuest] positioned 464 31 -288 rotated 97 180 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 464 31 -288 as @s[scores={questState=19},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 20
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 20 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 20 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 20 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 20 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 20
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 20 ###########################################################################################
#############
# Ring 7

### Tracked Quest ###
execute as @s[scores={questState=18..20},tag=isTrackedQuest] positioned 428 21 -292 rotated 87 13 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 428 21 -292 as @s[scores={questState=20},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 21
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 21 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 21 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 21 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 21 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 21
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 21 ###########################################################################################
#############
# Ring 8

### Tracked Quest ###
execute as @s[scores={questState=19..21},tag=isTrackedQuest] positioned 404 16 -290 rotated 58 -19 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 404 16 -290 as @s[scores={questState=21},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 22
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 22 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 22 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 22 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 22 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 22
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 22 ###########################################################################################
#############
# Ring 9

### Tracked Quest ###
execute as @s[scores={questState=20..22},tag=isTrackedQuest] positioned 389 25 -282 rotated 50 -22 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 389 25 -282 as @s[scores={questState=22},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 23
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 23 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 23 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 23 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 23 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 23
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 23 ###########################################################################################
#############
# Ring 10

### Tracked Quest ###
execute as @s[scores={questState=21..23},tag=isTrackedQuest] positioned 374 33 -269 rotated 43 -14 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 374 33 -269 as @s[scores={questState=23},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 24
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 24 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 24 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 24 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 24 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 24
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 24 ###########################################################################################
#############
# Ring 11

### Tracked Quest ###
execute as @s[scores={questState=22..24},tag=isTrackedQuest] positioned 358 39 -253 rotated 38 -19 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 358 39 -253 as @s[scores={questState=24},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 25
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 25 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 25 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 25 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 25 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 25
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 25 ###########################################################################################
#############
# Ring 12

### Tracked Quest ###
execute as @s[scores={questState=23..25},tag=isTrackedQuest] positioned 343 47 -234 rotated 61 -19 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 343 47 -234 as @s[scores={questState=25},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 26
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 26 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 26 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 26 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 26 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 26
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 26 ###########################################################################################
#############
# Ring 13

### Tracked Quest ###
execute as @s[scores={questState=24..26},tag=isTrackedQuest] positioned 326 54 -223 rotated 105 -22 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 326 54 -223 as @s[scores={questState=26},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 28
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 28 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 28 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 28 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 28 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 28
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 28 ###########################################################################################
#############
# Ring 15

### Tracked Quest ###
execute as @s[scores={questState=26..28},tag=isTrackedQuest] positioned 314 61 -231 rotated 169 -10 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 314 61 -231 as @s[scores={questState=28},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 29
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 29 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 29 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 29 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 29 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 29
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 29 ###########################################################################################
#############
# Ring 16

### Tracked Quest ###
execute as @s[scores={questState=27..29},tag=isTrackedQuest] positioned 312 66 -257 rotated -171 -17 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 312 66 -257 as @s[scores={questState=29},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 30
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 30 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 30 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 30 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 30 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 30
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 30 ###########################################################################################
#############
# Ring 17

### Tracked Quest ###
execute as @s[scores={questState=28..30},tag=isTrackedQuest] positioned 309 74 -275 rotated -175 12 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 309 74 -275 as @s[scores={questState=30},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 31
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 31 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 31 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 31 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 31 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 31
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 31 ###########################################################################################
#############
# Ring 18

### Tracked Quest ###
execute as @s[scores={questState=29..31},tag=isTrackedQuest] positioned 311 67 -297 rotated -176 26 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 311 67 -297 as @s[scores={questState=31},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 32
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 32 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 32 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 32 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 32 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 32
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 32 ###########################################################################################
#############
# Ring 19

### Tracked Quest ###
execute as @s[scores={questState=30..32},tag=isTrackedQuest] positioned 313 59 -317 rotated -178 21 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 313 59 -317 as @s[scores={questState=32},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 33
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 33 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 33 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 33 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 33 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 33
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 33 ###########################################################################################
#############
# Ring 20

### Tracked Quest ###
execute as @s[scores={questState=31..33},tag=isTrackedQuest] positioned 313 51 -336 rotated -156 16 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 313 51 -336 as @s[scores={questState=33},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 34
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 34 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 34 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 34 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 34 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 34
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 34 ###########################################################################################
#############
# Ring 21

### Tracked Quest ###
execute as @s[scores={questState=32..34},tag=isTrackedQuest] positioned 320 46 -352 rotated -113 3 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 320 46 -352 as @s[scores={questState=34},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 35
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 35 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 35 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 35 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 35 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 35
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 35 ###########################################################################################
#############
# Ring 22

### Tracked Quest ###
execute as @s[scores={questState=33..35},tag=isTrackedQuest] positioned 330 46 -354 rotated -61 2 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 330 46 -354 as @s[scores={questState=35},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 36
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 36 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 36 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 36 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 36 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 36
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 36 ###########################################################################################
#############
# Ring 23

### Tracked Quest ###
execute as @s[scores={questState=34..36},tag=isTrackedQuest] positioned 338 46 -347 rotated -48 2 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 338 46 -347 as @s[scores={questState=36},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 37
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 37 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 37 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 37 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 37 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 37
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 37 ###########################################################################################
#############
# Ring 24

### Tracked Quest ###
execute as @s[scores={questState=35..37},tag=isTrackedQuest] positioned 353 46 -335 rotated -84 10 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 353 46 -335 as @s[scores={questState=37},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 38
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 38 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 38 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 38 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 38 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 38
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 38 ###########################################################################################
#############
# Ring 25

### Tracked Quest ###
execute as @s[scores={questState=36..38},tag=isTrackedQuest] positioned 372 41 -335 rotated -111 11 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 372 41 -335 as @s[scores={questState=38},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 39
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 39 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 39 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 39 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 39 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 39
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 39 ###########################################################################################
#############
# Ring 26

### Tracked Quest ###
execute as @s[scores={questState=37..39},tag=isTrackedQuest] positioned 392 36 -343 rotated -139 7 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 392 36 -343 as @s[scores={questState=39},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 40
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 40 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 40 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 40 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 40 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 40
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 40 ###########################################################################################
#############
# Ring 27

### Tracked Quest ###
execute as @s[scores={questState=38..40},tag=isTrackedQuest] positioned 401 35 -357 rotated -94 29 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 401 35 -357 as @s[scores={questState=40},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 41
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 41 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 41 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 41 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 41 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 41
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 41 ###########################################################################################
#############
# Ring 28

### Tracked Quest ###
execute as @s[scores={questState=39..41},tag=isTrackedQuest] positioned 416 25 -359 rotated -84 26 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 416 25 -359 as @s[scores={questState=41},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 42
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 42 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 42 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 42 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 42 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 42
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 42 ###########################################################################################
#############
# Ring 29

### Tracked Quest ###
execute as @s[scores={questState=40..42},tag=isTrackedQuest] positioned 431 17 -358 rotated -84 -12 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 431 17 -358 as @s[scores={questState=42},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 43
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 43 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 43 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 43 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 43 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 43
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 43 ###########################################################################################
#############
# Ring 30

### Tracked Quest ###
execute as @s[scores={questState=41..43},tag=isTrackedQuest] positioned 450 15 -357 rotated -80 -1 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 450 15 -357 as @s[scores={questState=43},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 44
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 44 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 44 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 44 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 44 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 44
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 44 ###########################################################################################
#############
# Ring 31

### Tracked Quest ###
execute as @s[scores={questState=42..44},tag=isTrackedQuest] positioned 473 17 -354 rotated -66 -20 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 473 17 -354 as @s[scores={questState=44},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 45
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 45 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 45 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 45 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 45 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 45
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 45 ###########################################################################################
#############
# Ring 32

### Tracked Quest ###
execute as @s[scores={questState=43..45},tag=isTrackedQuest] positioned 492 27 -346 rotated -40 -20 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 492 27 -346 as @s[scores={questState=45},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 46
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 46 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 46 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 46 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 46 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 46
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 46 ###########################################################################################
#############
# Ring 33

### Tracked Quest ###
execute as @s[scores={questState=44..46},tag=isTrackedQuest] positioned 506 37 -327 rotated 6 -13 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 506 37 -327 as @s[scores={questState=46},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 47
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 47 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 47 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 47 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 47 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 47
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 47 ###########################################################################################
#############
# Ring 34

### Tracked Quest ###
execute as @s[scores={questState=45..47},tag=isTrackedQuest] positioned 494 41 -311 rotated 51 -9 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 494 41 -311 as @s[scores={questState=47},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 48
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 48 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 48 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 48 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 48 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 48
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 48 ###########################################################################################
#############
# Ring 35

### Tracked Quest ###
execute as @s[scores={questState=46..48},tag=isTrackedQuest] positioned 479 47 -299 rotated 48 -15 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 479 47 -299 as @s[scores={questState=48},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 49
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 49 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 49 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 49 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 49 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 49
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 49 ###########################################################################################
#############
# Ring 36

### Tracked Quest ###
execute as @s[scores={questState=47..49},tag=isTrackedQuest] positioned 466 54 -287 rotated 36 1 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 466 54 -287 as @s[scores={questState=49},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 50
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 50 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 50 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 50 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 50 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 50
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 50 ###########################################################################################
#############
# Ring 37

### Tracked Quest ###
execute as @s[scores={questState=48..50},tag=isTrackedQuest] positioned 457 54 -271 rotated 12 1 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 457 54 -271 as @s[scores={questState=50},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 51
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 51 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 51 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 51 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 51 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 51
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 51 ###########################################################################################
#############
# Ring 38

### Tracked Quest ###
execute as @s[scores={questState=49..51},tag=isTrackedQuest] positioned 454 54 -255 rotated 5 2 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 454 54 -255 as @s[scores={questState=51},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 52
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 52 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 52 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 52 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 52 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 52
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 52 ###########################################################################################
#############
# Ring 39

### Tracked Quest ###
execute as @s[scores={questState=50..52},tag=isTrackedQuest] positioned 454 54 -240 rotated 3 28 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 454 54 -240 as @s[scores={questState=52},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 53
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 53 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 53 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 53 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 53 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 53
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 53 ###########################################################################################
#############
# Ring 40

### Tracked Quest ###
execute as @s[scores={questState=51..53},tag=isTrackedQuest] positioned 454 45 -223 rotated 26 17 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 454 45 -223 as @s[scores={questState=53},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 54
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 54 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 54 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 54 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 54 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 54
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 54 ###########################################################################################
#############
# Ring 41

### Tracked Quest ###
execute as @s[scores={questState=52..54},tag=isTrackedQuest] positioned 444 39 -207 rotated 0 20 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 444 39 -207 as @s[scores={questState=54},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 55
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 55 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 55 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 55 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 55 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 55
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 55 ###########################################################################################
#############
# Ring 42

### Tracked Quest ###
execute as @s[scores={questState=53..55},tag=isTrackedQuest] positioned 447 32 -187 rotated -47 26 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 447 32 -187 as @s[scores={questState=55},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 56
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 56 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 56 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 56 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 56 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 56
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 56 ###########################################################################################
#############
# Ring 43

### Tracked Quest ###
execute as @s[scores={questState=54..56},tag=isTrackedQuest] positioned 455 27 -186 rotated -145 28 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 455 27 -186 as @s[scores={questState=56},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 57
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 57 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 57 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 57 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 57 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 57
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 57 ###########################################################################################
#############
# Ring 44

### Tracked Quest ###
execute as @s[scores={questState=55..57},tag=isTrackedQuest] positioned 461 20 -197 rotated 162 5 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 461 20 -197 as @s[scores={questState=57},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 58
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 58 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 58 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 58 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 58 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 58
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 58 ###########################################################################################
#############
# Ring 45

### Tracked Quest ###
execute as @s[scores={questState=56..58},tag=isTrackedQuest] positioned 457 20 -207 rotated 146 17 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 457 20 -207 as @s[scores={questState=58},distance=..2.5] run scoreboard players set quidditchSquabble sharedQuests 60
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 60 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 60 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 60 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 60 run tag @s add newState
execute as @s[tag=newState] at @s run playsound minecraft:custom.ui.quest.accept_quest master @s ~ ~ ~ 10 1.2 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation @s tmp = qudditchQuarrelFlyingTimer p1Quests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation @s tmp = qudditchQuarrelFlyingTimer p2Quests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation @s tmp = qudditchQuarrelFlyingTimer p3Quests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation @s tmp = qudditchQuarrelFlyingTimer p4Quests
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set qudditchQuarrelFlyingTimer p1Quests -5000
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set qudditchQuarrelFlyingTimer p2Quests -5000
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set qudditchQuarrelFlyingTimer p3Quests -5000
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set qudditchQuarrelFlyingTimer p4Quests -5000
execute as @s[tag=newState] run scoreboard players set @s questState 60
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState



##############
## State 59 ###########################################################################################
##############
# Cancelled
execute as @s[scores={questState=59,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=59,playerID=1},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"You were too slow.","color":"red"}]
execute as @s[scores={questState=59,playerID=3},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"You were too slow.","color":"red"}]
execute as @s[scores={questState=59,playerID=2},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"You were too slow.","color":"red"}]
execute as @s[scores={questState=59,playerID=4},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"You were too slow.","color":"red"}]

### Trigger ###
execute as @s[scores={questState=59,playerID=1}] if score qudditchQuarrelFlyingTimer p1Quests matches 0.. run scoreboard players set quidditchSquabble sharedQuests 70
execute as @s[scores={questState=59,playerID=2}] if score qudditchQuarrelFlyingTimer p2Quests matches 0.. run scoreboard players set quidditchSquabble sharedQuests 70
execute as @s[scores={questState=59,playerID=3}] if score qudditchQuarrelFlyingTimer p3Quests matches 0.. run scoreboard players set quidditchSquabble sharedQuests 70
execute as @s[scores={questState=59,playerID=4}] if score qudditchQuarrelFlyingTimer p4Quests matches 0.. run scoreboard players set quidditchSquabble sharedQuests 70

### Trigger ###
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 70 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 70 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 70 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 70 run tag @s add newState
execute as @s[tag=newState] run tag @s add completedQuidditchSquabbleTimeTooSlow
execute as @s[tag=newState] run scoreboard players set @s questState 70
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set oliverWood p1convOverride 4
execute as @s[tag=newState] run scoreboard players set oliverWood p2convOverride 4
execute as @s[tag=newState] run scoreboard players set oliverWood p3convOverride 4
execute as @s[tag=newState] run scoreboard players set oliverWood p4convOverride 4
execute as @s[tag=newState] run scoreboard players set marcusFlint p1convOverride 6
execute as @s[tag=newState] run scoreboard players set marcusFlint p2convOverride 6
execute as @s[tag=newState] run scoreboard players set marcusFlint p3convOverride 6
execute as @s[tag=newState] run scoreboard players set marcusFlint p4convOverride 6
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

##############
## State 60 ###########################################################################################
##############
# Success
execute as @s[scores={questState=60,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=60,playerID=1},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Вы побили рекорд Маркуса Флинта!","color":"gold"}]
execute as @s[scores={questState=60,playerID=3},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Вы побили рекорд Маркуса Флинта!","color":"gold"}]
execute as @s[scores={questState=60,playerID=2},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Вы побили рекорд Маркуса Флинта!","color":"gold"}]
execute as @s[scores={questState=60,playerID=4},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Вы побили рекорд Маркуса Флинта!","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=60,playerID=1}] if score qudditchQuarrelFlyingTimer p1Quests matches 0.. run scoreboard players set quidditchSquabble sharedQuests 70
execute as @s[scores={questState=60,playerID=2}] if score qudditchQuarrelFlyingTimer p2Quests matches 0.. run scoreboard players set quidditchSquabble sharedQuests 70
execute as @s[scores={questState=60,playerID=3}] if score qudditchQuarrelFlyingTimer p3Quests matches 0.. run scoreboard players set quidditchSquabble sharedQuests 70
execute as @s[scores={questState=60,playerID=4}] if score qudditchQuarrelFlyingTimer p4Quests matches 0.. run scoreboard players set quidditchSquabble sharedQuests 70

### Trigger ###
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 70 run tag @s add newState
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 70 run tag @s add newState
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 70 run tag @s add newState
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches 70 run tag @s add newState
execute as @s[tag=newState] run tag @s add completedQuidditchSquabbleTimeFastEnough
execute as @s[tag=newState] run scoreboard players set @s questState 70
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set oliverWood p1convOverride 5
execute as @s[tag=newState] run scoreboard players set oliverWood p2convOverride 5
execute as @s[tag=newState] run scoreboard players set oliverWood p3convOverride 5
execute as @s[tag=newState] run scoreboard players set oliverWood p4convOverride 5
execute as @s[tag=newState] run scoreboard players set marcusFlint p1convOverride 7
execute as @s[tag=newState] run scoreboard players set marcusFlint p2convOverride 7
execute as @s[tag=newState] run scoreboard players set marcusFlint p3convOverride 7
execute as @s[tag=newState] run scoreboard players set marcusFlint p4convOverride 7
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 70 ###########################################################################################
#############
# Speak to Оливер Вуд

### Tracked Quest ###
execute as @s[scores={questState=70}] run tag @s remove hideQuestTracking
execute as @s[scores={questState=70}] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1373,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=70}] run tag @s remove questHasNoDirection
execute as @s[scores={questState=70}] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 448 12 -218
execute as @s[scores={questState=70,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=422},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=70}] run scoreboard players set @s questRegion 1

execute as @s[scores={questState=70},tag=inNormalState,tag=hasCompletedQuidditchSquabble] run scoreboard players set quidditchSquabble sharedQuests -1
execute as @s[scores={playerID=1}] unless score quidditchSquabble p1Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score quidditchSquabble p2Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score quidditchSquabble p3Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score quidditchSquabble p4Quests = quidditchSquabble sharedQuests if score quidditchSquabble sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set quidditchSquabble sharedQuests -1
execute as @s[tag=completeQuest] run tag @s remove hasCompletedQuidditchSquabble
execute as @s[tag=completeQuest,tag=completedQuidditchSquabbleTimeFastEnough] run scoreboard players add @s money 200
execute as @s[tag=completeQuest,tag=completedQuidditchSquabbleTimeFastEnough] run scoreboard players set oliverWood p1convOverride 6
execute as @s[tag=completeQuest,tag=completedQuidditchSquabbleTimeFastEnough] run scoreboard players set oliverWood p2convOverride 6
execute as @s[tag=completeQuest,tag=completedQuidditchSquabbleTimeFastEnough] run scoreboard players set oliverWood p3convOverride 6
execute as @s[tag=completeQuest,tag=completedQuidditchSquabbleTimeFastEnough] run scoreboard players set oliverWood p4convOverride 6
execute as @s[tag=completeQuest,tag=completedQuidditchSquabbleTimeFastEnough] run tag @s remove completedQuidditchSquabbleTimeFastEnough
execute as @s[tag=completeQuest,tag=completedQuidditchSquabbleTimeTooSlow] run tag @s remove completedQuidditchSquabbleTimeTooSlow
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation quidditchSquabble p1Quests = quidditchSquabble sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation quidditchSquabble p2Quests = quidditchSquabble sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation quidditchSquabble p3Quests = quidditchSquabble sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation quidditchSquabble p4Quests = quidditchSquabble sharedQuests
execute as @s[tag=completeQuest] run tag @s remove lockTrackedQuest
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# Complete Quest Cheat
execute as @s[tag=completeTrackedQuest] run scoreboard players set quidditchSquabble sharedQuests -1
execute as @s[tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

# reset quest tracking boolean
tag @s remove isTrackedQuest
##############################################
# Illegal Items
##############################################
scoreboard players set @s questID 72
scoreboard players operation @s questState = illegalItems sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Speak to Драко Малфой 


execute as @s[scores={questState=1..3,lastRegion=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1..3,lastRegion=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1..3,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=1..3,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 677 64 223

# Title
execute as @s[scores={questState=1..3,lastRegion=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless entity @s[x=4929,dx=228,y=0,dy=255,z=6958,dz=214] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=1..3,playerID=1,lastRegion=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless entity @s[x=4929,dx=228,y=0,dy=255,z=6958,dz=214] run bossbar set minecraft:player1quest name ["",{"text":"Поговорите с Драко Малфоем, чтобы отправиться в Поместье Малфоев","color":"gold"}]
execute as @s[scores={questState=1..3,playerID=2,lastRegion=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless entity @s[x=4929,dx=228,y=0,dy=255,z=6958,dz=214] run bossbar set minecraft:player2quest name ["",{"text":"Поговорите с Драко Малфоем, чтобы отправиться в Поместье Малфоев","color":"gold"}]
execute as @s[scores={questState=1..3,playerID=3,lastRegion=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless entity @s[x=4929,dx=228,y=0,dy=255,z=6958,dz=214] run bossbar set minecraft:player3quest name ["",{"text":"Поговорите с Драко Малфоем, чтобы отправиться в Поместье Малфоев","color":"gold"}]
execute as @s[scores={questState=1..3,playerID=4,lastRegion=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless entity @s[x=4929,dx=228,y=0,dy=255,z=6958,dz=214] run bossbar set minecraft:player4quest name ["",{"text":"Поговорите с Драко Малфоем, чтобы отправиться в Поместье Малфоев","color":"gold"}]



### Tracked Quest ###
execute as @s[scores={questState=1,lastRegion=11},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1341,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1,lastRegion=11},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1,lastRegion=11},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5042 62 7062
execute as @s[scores={questState=1,lastRegion=11},tag=isTrackedQuest] run scoreboard players set @s questRegion 11
execute as @s[scores={questState=1,lastRegion=11,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=17},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s


execute as @s[scores={questState=1},tag=isTrackedQuest,tag=hasSpokenWithMalfoyAtMalfoyManor] run scoreboard players set illegalItems sharedQuests 2

execute as @s[scores={playerID=1}] unless score illegalItems p1Quests = illegalItems sharedQuests if score illegalItems sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score illegalItems p2Quests = illegalItems sharedQuests if score illegalItems sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score illegalItems p3Quests = illegalItems sharedQuests if score illegalItems sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score illegalItems p4Quests = illegalItems sharedQuests if score illegalItems sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound

execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation illegalItems p1Quests = illegalItems sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation illegalItems p2Quests = illegalItems sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation illegalItems p3Quests = illegalItems sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation illegalItems p4Quests = illegalItems sharedQuests
execute as @s[tag=newState] run tag @s remove hasSpokenWithMalfoyAtMalfoyManor
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Find the illegal items

### Tracked Quest ###
execute as @s[scores={questState=2,lastRegion=11},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1340,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2,lastRegion=11},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=2,lastRegion=11},tag=isTrackedQuest] run scoreboard players set @s questRegion 11

# /execute in minecraft:overworld run tp @s 5581.15 49.06 1018.75 -36.42 -4.67
# /execute in minecraft:overworld run tp @s 5562.25 50.86 1059.88 60.82 29.59
# /execute in minecraft:overworld run tp @s 5538.06 50.48 1044.20 138.46 41.81
# /execute in minecraft:overworld run tp @s 5509.83 50.82 1010.93 77.65 37.46
# /execute in minecraft:overworld run tp @s 5595.34 50.67 1019.06 232.72 25.63

### Function ###
execute as @s[scores={questState=2}] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=illegalItem,tag=!pickedUp] add questHover
execute as @s[scores={questState=2}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

### Trigger ###
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=illegalItem,tag=!pickedUp] run scoreboard players add illegalItemsFound sharedQuests 1
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=illegalItem,tag=!pickedUp] at @s run playsound minecraft:custom.ui.inventory.game_inventory.generic.picked_up_generic master @a
execute as @s[tag=hasPressedF] as @e[tag=questHover,tag=illegalItem,tag=!pickedUp] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[tag=hasPressedF] as @e[tag=questHover,tag=illegalItem,tag=!pickedUp] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID
execute as @s[tag=hasPressedF] as @e[tag=questHover,tag=illegalItem,tag=!pickedUp] run tag @s add pickedUp

execute as @s[scores={questState=2},tag=isTrackedQuest] as @e[tag=illegalItem,tag=!pickedUp] at @s run particle minecraft:portal ~ ~ ~ 0.1 0.1 0.1 0.5 1 force @p[tag=activePlayer]

# Title
execute as @s[scores={questState=2,lastRegion=11},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=2,playerID=1,lastRegion=11},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Соберите незаконные предметы в поместье Малфоев (","color":"gold"},{"score":{"name":"illegalItemsFound","objective":"sharedQuests"},"color":"gold"},{"text":" / 5","color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=2,lastRegion=11},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Соберите незаконные предметы в поместье Малфоев (","color":"gold"},{"score":{"name":"illegalItemsFound","objective":"sharedQuests"},"color":"gold"},{"text":" / 5","color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=3,lastRegion=11},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Соберите незаконные предметы в поместье Малфоев (","color":"gold"},{"score":{"name":"illegalItemsFound","objective":"sharedQuests"},"color":"gold"},{"text":" / 5","color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=4,lastRegion=11},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Соберите незаконные предметы в поместье Малфоев (","color":"gold"},{"score":{"name":"illegalItemsFound","objective":"sharedQuests"},"color":"gold"},{"text":" / 5","color":"gold"},{"text":")","color":"gold"}]


execute as @s[scores={questState=2},tag=isTrackedQuest] if score illegalItemsFound sharedQuests matches 5 run scoreboard players set illegalItems sharedQuests 3

execute as @s[scores={playerID=1}] unless score illegalItems p1Quests = illegalItems sharedQuests if score illegalItems sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score illegalItems p2Quests = illegalItems sharedQuests if score illegalItems sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score illegalItems p3Quests = illegalItems sharedQuests if score illegalItems sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score illegalItems p4Quests = illegalItems sharedQuests if score illegalItems sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound

execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation illegalItems p1Quests = illegalItems sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation illegalItems p2Quests = illegalItems sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation illegalItems p3Quests = illegalItems sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation illegalItems p4Quests = illegalItems sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Return to Malfoy

### Tracked Quest ###
execute as @s[scores={questState=3,lastRegion=11},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1339,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3,lastRegion=11},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3,lastRegion=11},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5042 62 7062
execute as @s[scores={questState=3,lastRegion=11},tag=isTrackedQuest] run scoreboard players set @s questRegion 11
execute as @s[scores={questState=3,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=17},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s


### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=3,conv=17,convState=14}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Я собрал все вещи\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 28
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

execute as @s[scores={questState=3},tag=isTrackedQuest,tag=hasCollectedAllItemsAndSpokenToMalfoy] run scoreboard players set illegalItems sharedQuests 4

execute as @s[scores={playerID=1}] unless score illegalItems p1Quests = illegalItems sharedQuests if score illegalItems sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=2}] unless score illegalItems p2Quests = illegalItems sharedQuests if score illegalItems sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=3}] unless score illegalItems p3Quests = illegalItems sharedQuests if score illegalItems sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=4}] unless score illegalItems p4Quests = illegalItems sharedQuests if score illegalItems sharedQuests matches 4 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound

execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation illegalItems p1Quests = illegalItems sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation illegalItems p2Quests = illegalItems sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation illegalItems p3Quests = illegalItems sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation illegalItems p4Quests = illegalItems sharedQuests
execute as @s[tag=newState] run tag @s remove hasCollectedAllItemsAndSpokenToMalfoy
execute as @s[tag=newState] run tag @s remove newState


#############
## State 4 ###########################################################################################
#############
# Deliver the items to Caractus Burke in Лютный Переулок

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1338,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2790.58 31.00 1037.88
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=4,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=75},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=4,conv=75,convState=1}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ У меня есть вещи, которые могут вас заинтересовать\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 14
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

### Trigger ###
execute as @s[scores={questState=4},tag=inNormalState,tag=hasCompletedIllegalItems] run scoreboard players set illegalItems sharedQuests -1
execute as @s[scores={playerID=1}] unless score illegalItems p1Quests = illegalItems sharedQuests if score illegalItems sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score illegalItems p2Quests = illegalItems sharedQuests if score illegalItems sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score illegalItems p3Quests = illegalItems sharedQuests if score illegalItems sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score illegalItems p4Quests = illegalItems sharedQuests if score illegalItems sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players add @s money 250
execute as @s[tag=completeQuest] run scoreboard players set illegalItems sharedQuests -1
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run tag @s remove hasCompletedIllegalItems
execute as @s[tag=completeQuest] run scoreboard players set illegalItemsFound sharedQuests 0

execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation illegalItems p1Quests = illegalItems sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation illegalItems p2Quests = illegalItems sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation illegalItems p3Quests = illegalItems sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation illegalItems p4Quests = illegalItems sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# reset quest tracking boolean
tag @s remove isTrackedQuest


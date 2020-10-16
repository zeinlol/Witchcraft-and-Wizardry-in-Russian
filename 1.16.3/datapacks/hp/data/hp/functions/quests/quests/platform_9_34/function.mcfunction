##############################################
# Platform 9 3/4
##############################################
scoreboard players set @s questID 7
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.platform934"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest


#############
## State 1 ###########################################################################################
#############
# Exit Косой Переулок

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1513,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2885.03 55.00 748.01
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

### Function ###
tag @s[tag=hasNotUnlockedTrading] remove hasNotUnlockedTrading

### Trigger ###
execute positioned 2885.03 55.00 748.01 as @s[distance=..6,scores={questState=1}] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 2
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set stan p1convOverride 12
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set stan p2convOverride 12
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set stan p3convOverride 12
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set stan p4convOverride 12
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Walk to Станция Кингс-Кросс

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1512,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2838.27 61.00 -4.56
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

### Function ###

### Trigger ###
execute as @s[scores={questState=2,lastLocation=31},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 4
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState


#############
## State 3 ###########################################################################################
#############
# Find an entrance to platform 9 3/4

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1511,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute positioned 2938.60 61.00 -4.55 as @s[scores={questState=3},tag=isTrackedQuest,distance=..20] run tag @s add questHasNoDirection
execute positioned 2938.60 61.00 -4.55 as @s[scores={questState=3},tag=isTrackedQuest,distance=21..] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2938.60 61.00 -4.55
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=3,convState=1,conv=32}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Извините, а где находится Платформа 9 3/4?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 12
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Function ###


### Trigger ### 
execute positioned 3048 58 -462 as @s[distance=..11,scores={questState=3},tag=inNormalState,tag=showingTrackedQuest] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 5
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState


#############
## State 4 ###########################################################################################
#############
# Speak to the Проводник

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1510,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2978.37 59.00 -452.49
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=4,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=30},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Trigger ###
execute as @s[tag=trigger,scores={questState=4},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set trainConductor p1convOverride 11
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set trainConductor p2convOverride 11
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set trainConductor p3convOverride 11
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set trainConductor p4convOverride 11
execute as @s[tag=newState] run tag @s remove trigger
execute as @s[tag=newState] run tag @s remove newState


#############
## State 5 ###########################################################################################
#############
# Enter the train

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1509,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5,lastLocation=37},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] unless score @s lastLocation matches 37 run tag @s remove questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2939.70 61.00 -4.55
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

# Train compartments
# 2908 60 -444 2912 64 -441
execute as @s[x=2908,y=60,z=-444,dx=4,dy=4,dz=3,scores={questState=5},tag=!isFastTravelling,tag=!playingQuestAnim,tag=play] run tag @s add trigger
# 2946 60 -444 2950 64 -441
execute as @s[x=2946,y=60,z=-444,dx=4,dy=4,dz=3,scores={questState=5},tag=!isFastTravelling,tag=!playingQuestAnim,tag=play] run tag @s add trigger
# 2968 60 -444 2972 64 -440
execute as @s[x=2968,y=60,z=-444,dx=4,dy=4,dz=3,scores={questState=5},tag=!isFastTravelling,tag=!playingQuestAnim,tag=play] run tag @s add trigger
# 2987 60 -444 2990 64 -441
execute as @s[x=2987,y=60,z=-444,dx=4,dy=4,dz=3,scores={questState=5},tag=!isFastTravelling,tag=!playingQuestAnim,tag=play] run tag @s add trigger
# 2994 60 -444 2998 64 -441
execute as @s[x=2994,y=60,z=-444,dx=4,dy=4,dz=3,scores={questState=5},tag=!isFastTravelling,tag=!playingQuestAnim,tag=play] run tag @s add trigger
# 3020 60 -444 3024 64 -441
execute as @s[x=3020,y=60,z=-444,dx=4,dy=4,dz=3,scores={questState=5},tag=!isFastTravelling,tag=!playingQuestAnim,tag=play] run tag @s add trigger

### Trigger ###
execute as @s[tag=trigger,scores={questState=5},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState,tag=isTrackedQuest] run scoreboard players operation @s trackQuestState = @s questState
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove trigger
execute as @s[tag=newState] run tag @s remove newState


#############
## State 6 ###########################################################################################
#############
# Wait for everyone

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1509,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 2


# Function
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasTravelledWithHogswartsExpress,tag=play] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute as @a[scores={trackedQuestID=7,trackQuestState=6},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=6},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=6,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=6,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=6,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]

# Trigger
execute as @s[scores={questState=6},tag=inNormalState,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set @s overrideRespawn 6
execute as @s[tag=completeQuest] run scoreboard players set @s questQueueID 8
execute as @s[tag=completeQuest] run scoreboard players set @s questQueue 400
execute as @s[tag=completeQuest] run tag @s add queingQuest
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest,scores={playerID=1}] run tag @s add cutsceneLeader
execute as @s[tag=completeQuest] run scoreboard players set @s cutSceneID 2
execute as @s[tag=completeQuest] run function hp:cutscenes/init_cutscene
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set hagrid p1convOverride 20
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set hagrid p2convOverride 20
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set hagrid p3convOverride 20
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set hagrid p4convOverride 20
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set trainConductor p1convOverride 10
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set trainConductor p2convOverride 10
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set trainConductor p3convOverride 10
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set trainConductor p4convOverride 10
execute as @s[tag=completeQuest] run tag @s add hasTravelledWithHogswartsExpress
execute as @s[tag=completeQuest,tag=gameLeader] run function hp:area_specific/london/remove_westminster_gate
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
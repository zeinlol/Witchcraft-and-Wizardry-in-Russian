##############################################
# The Order of the Phoenix
##############################################
scoreboard players set @s questID 34
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.theOrderOfThePhoenix"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Отправиться в Кабинет Директора

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1460,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=1,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=1,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=1,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 736 112 307
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] unless entity @s[x=2870,dx=268,y=54,dy=26,z=-465,dz=39] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2940 61 -5
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] if entity @s[x=2870,dx=268,y=54,dy=26,z=-465,dz=39] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2978 58 -453
execute as @s[scores={questState=1,lastRegion=3},tag=isTrackedQuest] at @s if entity @s[x=730,dx=470,y=0,dy=255,z=-2048,dz=179] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 702.01 65.00 -1867.73
execute as @s[scores={questState=1,lastRegion=3},tag=isTrackedQuest] at @s unless entity @s[x=730,dx=470,y=0,dy=255,z=-2048,dz=179] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 564.81 90.00 -2018.65
execute as @s[scores={questState=1,lastRegion=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5121.53 80.75 2079.63

# Trigger
execute as @s[scores={questState=1,lastLocation=20,discoverLocation=0,trackedQuestID=34},x=5943,y=35,z=956,dx=82,dy=68,dz=63,tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Speak to Dumbledore

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1459,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5994 52 992
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=2},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=2,convState=1,conv=2}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ (Рассказать Дамблдору про Пожирателей Смерти)\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 34
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

### Trigger ###
execute as @s[scores={questState=2},tag=hasSpokenToDumbledoreAboutDeathEaterAttack,tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove hasSpokenToDumbledoreAboutDeathEaterAttack
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set dumbledore p1convOverride 36
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set dumbledore p2convOverride 36
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set dumbledore p3convOverride 36
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set dumbledore p4convOverride 36
execute as @s[tag=newState] run scoreboard players set stupefyProgressLocked global 0
execute as @s[tag=newState] run tag @s remove newState


#############
## State 3 ###########################################################################################
#############
# Отправиться в площадь Гриммо

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1458,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection

execute as @s[scores={questState=3,lastRegion=1},tag=isTrackedQuest] unless entity @s[x=5943,y=35,z=956,dx=82,dy=68,dz=63] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 1010.35 78.00 -180.75
execute as @s[scores={questState=3,lastRegion=1},tag=isTrackedQuest] if entity @s[x=5943,y=35,z=956,dx=82,dy=68,dz=63] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 6015 50 998
execute as @s[scores={questState=3,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=3,lastRegion=2},tag=isTrackedQuest] unless score @s lastLocation matches 37 at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2456 60 -218
execute as @s[scores={questState=3,lastRegion=2},tag=isTrackedQuest] if score @s lastLocation matches 37 at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 3047 60 -462
execute as @s[scores={questState=3,lastRegion=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=3,lastRegion=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 834.49 49.00 -1731.57
execute as @s[scores={questState=3,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=3,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=3,lastRegion=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5122.86 80.38 2094.01
execute as @s[scores={questState=3,lastRegion=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 5
execute as @s[scores={questState=3,lastRegion=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2351.53 64.00 -774.45
execute as @s[scores={questState=3,lastRegion=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 5
execute as @s[scores={questState=3,lastRegion=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2351.53 64.00 -774.45
execute as @s[scores={questState=3,lastRegion=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 5
execute as @s[scores={questState=3,lastRegion=9},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 6850.44 36.25 3101.50

execute as @s[scores={questState=3,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=220},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=3,convState=0,conv=220}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Я здесь из-за Ордена Феникса\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 1
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

### Trigger ###
execute as @s[scores={questState=3},tag=inNormalState,tag=hasConvincedMundungusFletcherToRevealGrimmauldPlace12] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove hasConvincedMundungusFletcherToRevealGrimmauldPlace12
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set alastorMoody p1convOverride 0
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set alastorMoody p2convOverride 0
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set alastorMoody p3convOverride 0
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set alastorMoody p4convOverride 0
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set mundungusFletcher p1convOverride 8
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set mundungusFletcher p2convOverride 8
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set mundungusFletcher p3convOverride 8
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set mundungusFletcher p4convOverride 8
execute as @s[tag=newState] run scoreboard players set unlockedGrimmauldPlace sharedQuests 1
execute as @s[tag=newState] run tag @s remove newState


#############
## State 4 ###########################################################################################
#############
# Speak to Аластор Грюм

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1457,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2463 69 -262
execute as @s[scores={questState=4,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=22},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

# Trigger
execute as @s[scores={questState=4},tag=isTrackedQuest,tag=inNormalState,tag=hasSpokenToAlastorMoodyAboutDeathEaterAttack] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove hasSpokenToAlastorMoodyAboutDeathEaterAttack
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set alastorMoody p1convOverride 4
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set alastorMoody p2convOverride 4
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set alastorMoody p3convOverride 4
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set alastorMoody p4convOverride 4
execute as @s[tag=newState] run tag @s remove newState

#############
## State 5 ###########################################################################################
#############
# Speak to Аластор Грюм

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1456,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2463 69 -262
execute as @s[scores={questState=5,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=22},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

# Trigger
execute as @s[scores={questState=5},tag=isTrackedQuest,tag=inNormalState,tag=isReadyToTravelToAzkaban] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove isReadyToTravelToAzkaban
execute as @s[tag=newState] run tag @s remove newState



#############
## State 6 ###########################################################################################
#############
# Wait for everyone to arrive

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1495,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasTravelledToAzkaban,tag=play] unless score @s trackedQuestID matches 34 run scoreboard players add @p[tag=activePlayer] suitableCount 1
execute as @a[tag=!hasTravelledToAzkaban,scores={trackedQuestID=34,trackQuestState=..6},tag=play] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute as @a[tag=!hasTravelledToAzkaban,scores={trackQuestState=6,trackedQuestID=34},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=6},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=6,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=6,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=6,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]

# Trigger
execute as @s[scores={questState=6},tag=isTrackedQuest,tag=inNormalState] if score @s suitableCount <= @s tmp run tag @s add completeQuest


#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set @s overrideRespawn 0
execute as @s[tag=completeQuest] run scoreboard players set @s questQueueID 35
execute as @s[tag=completeQuest] run scoreboard players set @s questQueue 120
execute as @s[tag=completeQuest] run tag @s add queingQuest
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set @s cutSceneID 47
execute as @s[tag=completeQuest] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=47}] run tag @s add cutsceneLeader
execute as @s[tag=completeQuest] run function hp:cutscenes/init_cutscene
execute as @s[tag=completeQuest] run tag @s add maraudersMapLocked
execute as @s[tag=completeQuest] run tag @s add lockTrackedQuest
execute as @s[tag=completeQuest] run scoreboard players set @s overrideRespawn 33
execute as @s[tag=completeQuest,tag=gameLeader] run gamerule doDaylightCycle false
execute as @s[tag=completeQuest] run tag @s add hasTravelledToAzkaban
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
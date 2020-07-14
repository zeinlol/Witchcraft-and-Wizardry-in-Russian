##############################################
# Expecto Patronum
##############################################
scoreboard players set @s questID 21
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.expectoPatronum"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

# Complete Quest Cheat
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s add completeQuest
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s add unlockedSpells
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s unlockedSpell 8
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tp @s 642.29 96.00 224.73 -381.35 1.11
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Go to the DADA classroom

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1540,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 641.50 96.00 224.61
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###

# Trigger
execute as @s[scores={questState=1,lastLocation=4},tag=inNormalState,tag=isTrackedQuest] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set lupin p1convOverride 23
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set lupin p2convOverride 23
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set lupin p3convOverride 23
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set lupin p4convOverride 23
execute as @s[tag=newState] run tag @s remove hasLearnedExpectoPatronum
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Speak to Lupin in his classroom

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1539,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 640.54 98.00 266.44
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=4},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###

# Trigger
execute as @s[scores={questState=2},tag=inNormalState,tag=isTrackedQuest,tag=readyToTravelToExpectoPatronumTrainingArea] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set lupin p1convOverride 26
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set lupin p2convOverride 26
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set lupin p3convOverride 26
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set lupin p4convOverride 26
execute as @s[tag=newState] run tag @s remove readyToTravelToExpectoPatronumTrainingArea
execute as @s[tag=newState] run tag @s remove newState



#############
## State 3 ###########################################################################################
#############
# Wait for everyone to arrive

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1539,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 643.49 96.00 240.65
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasLearnedExpectoPatronum,tag=play] unless score @s trackedQuestID matches 21 run scoreboard players add @p[tag=activePlayer] suitableCount 1
execute as @a[scores={trackedQuestID=21,trackQuestState=..3},tag=play] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute as @a[scores={trackedQuestID=21,trackQuestState=3},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=3,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]

# Trigger
# This weird double tag thing is because of a super strange bug I can't explain some people run into where all the commands below execute but they don't progress to the next
# Quest state. The tag "goToNextQuestState" is removed in set_quest, and so it should just execute everything again if it for some reason doesn't set the quest the first time
# Around
execute as @s[scores={questState=3},tag=inNormalState,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add goToNextQuestState
execute as @s[tag=goToNextQuestState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 22
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s cutSceneID 23
execute as @s[tag=newState] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=23}] run tag @s add cutsceneLeader
execute as @s[tag=newState] run function hp:cutscenes/init_cutscene
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set lupin p1convOverride 27
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set lupin p2convOverride 27
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set lupin p3convOverride 27
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set lupin p4convOverride 27
execute as @s[tag=newState] run scoreboard players set @s unlockedSpell 8
execute as @s[tag=newState] run tag @s add maraudersMapLocked
execute as @s[tag=newState] run tag @s add lockTrackedQuest
execute as @s[tag=newState] run tag @s remove newState


#############
## State 4 ###########################################################################################
#############
# Speak to Professor Lupin

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1538,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 8003.12 133.00 -26.49
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 8
execute as @s[scores={questState=4,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=4},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
### Function ###



### Trigger ###
execute as @s[scores={questState=4},tag=inNormalState,tag=isReadyToApproachBoggardChest] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set lupin p1convOverride 30
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set lupin p2convOverride 30
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set lupin p3convOverride 30
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set lupin p4convOverride 30
execute as @s[tag=newState] run tag @s remove isReadyToApproachBoggardChest
execute as @s[tag=newState] run tag @s remove newState


#############
## State 5 ###########################################################################################
#############
# Wait for your turn to apprach the boggart chest

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1537,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 8010.49 132.00 -12.67
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Ждите своей очереди, чтобы подойти к сундуку","color":"gold"}]
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Ждите своей очереди, чтобы подойти к сундуку","color":"gold"}]
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Ждите своей очереди, чтобы подойти к сундуку","color":"gold"}]
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Ждите своей очереди, чтобы подойти к сундуку","color":"gold"}]


### Trigger ###
execute as @s[scores={questState=5},tag=inNormalState] unless entity @p[scores={trackedQuestID=21,trackQuestState=6..7}] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 6 ###########################################################################################
#############
# Approach the boggart chest

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1537,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 8010.49 132.00 -12.67
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Подойдите к сундуку","color":"gold"}]
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Подойдите к сундуку","color":"gold"}]
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Подойдите к сундуку","color":"gold"}]
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Подойдите к сундуку","color":"gold"}]

### Trigger ###
execute at @s as @e[tag=!returnToChest,tag=dementorChest,limit=1,sort=nearest] at @s as @p[tag=activePlayer,distance=..8,scores={questState=6},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 7
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] at @s as @e[tag=!returnToChest,tag=dementorChest,limit=1,sort=nearest] run scoreboard players set @s animTest 0
execute as @s[tag=newState] run tag @s remove newState


#############
## State 7 ###########################################################################################
#############
# Cast the "Expecto Patronum" spell

### Tracked Quest ###
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=7},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1537,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=7},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 8010.49 132.00 -12.67
execute as @s[scores={questState=7},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute as @s[scores={questState=7},tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Отгоните Дементора с помощью заклинания 'Экспекто Патронум'","color":"gold"}]
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Отгоните Дементора с помощью заклинания 'Экспекто Патронум'","color":"gold"}]
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Отгоните Дементора с помощью заклинания 'Экспекто Патронум'","color":"gold"}]
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Отгоните Дементора с помощью заклинания 'Экспекто Патронум'","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=7,patronusBlast=299},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 8
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set lupin p1convOverride 32
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set lupin p2convOverride 32
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set lupin p3convOverride 32
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set lupin p4convOverride 32
execute as @s[tag=newState] at @s as @e[tag=dementorChest,limit=1,sort=nearest] run tag @s add returnToChest
execute as @s[tag=newState] run tag @s remove newState

#############
## State 8 ###########################################################################################
#############
# Speak to Professor Lupin

### Tracked Quest ###
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=8},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1538,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=8},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 8003.12 133.00 -26.49
execute as @s[scores={questState=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 8
execute as @s[scores={questState=8,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=4},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
### Function ###



### Trigger ###
execute as @s[scores={questState=8},tag=inNormalState,tag=hasSpokenToLupinAfterBoggartDementorChest] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 9
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove hasSpokenToLupinAfterBoggartDementorChest
execute as @s[tag=newState] run scoreboard players set expectoPatronumDoor1Direction global 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 9 ###########################################################################################
#############
# Proceed to the next room

### Tracked Quest ###
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=9},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1467,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=9},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 8007.53 129.00 26.51
execute as @s[scores={questState=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 8
### Function ###



### Trigger ###
execute positioned 8007.53 129.00 26.51 as @s[distance=..7,scores={questState=9},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 10
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState



#############
## State 10 ###########################################################################################
#############
# Wait for everyone to arrive

### Tracked Quest ###
execute as @s[scores={questState=10},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=10},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1467,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=10},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=10},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 8007.53 129.00 26.51
execute as @s[scores={questState=10},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

### Function ###
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasLearnedExpectoPatronum,tag=play] unless score @s trackedQuestID matches 21 run scoreboard players add @p[tag=activePlayer] suitableCount 1
execute as @a[scores={trackedQuestID=21,trackQuestState=..10},tag=play] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute positioned 8007.53 129.00 26.51 as @a[distance=..7,scores={trackedQuestID=21,trackQuestState=10},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=10},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=10,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=10,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=10,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=10,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]

# Trigger
execute as @s[scores={questState=10},tag=inNormalState,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 19
execute as @s[tag=newState] run scoreboard players set @s questState 11
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set expectoPatronumDoor1Direction global 0
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set patronusTimer p1Quests 125000
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set patronusTimer p2Quests 125000
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set patronusTimer p3Quests 125000
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set patronusTimer p4Quests 125000
execute as @s[tag=newState] run tag @s remove newState

#############
## State 11 ###########################################################################################
#############
# Fend off the dementors for 2 minutes

### Tracked Quest ###
execute as @s[scores={questState=11},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=11},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1464,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=11},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=11},tag=isTrackedQuest] run scoreboard players set @s questRegion 8
### Function ###

execute as @s[scores={questState=11..,playerID=1},tag=isTrackedQuest] run scoreboard players operation patronusTimer p1Quests -= systick time
execute as @s[scores={questState=11..,playerID=2},tag=isTrackedQuest] run scoreboard players operation patronusTimer p2Quests -= systick time
execute as @s[scores={questState=11..,playerID=3},tag=isTrackedQuest] run scoreboard players operation patronusTimer p3Quests -= systick time
execute as @s[scores={questState=11..,playerID=4},tag=isTrackedQuest] run scoreboard players operation patronusTimer p4Quests -= systick time


execute as @s[scores={questState=11,playerID=1},tag=isTrackedQuest] if score patronusTimer p1Quests matches 1..125000 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=11,playerID=2},tag=isTrackedQuest] if score patronusTimer p2Quests matches 1..125000 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=11,playerID=3},tag=isTrackedQuest] if score patronusTimer p3Quests matches 1..125000 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=11,playerID=4},tag=isTrackedQuest] if score patronusTimer p4Quests matches 1..125000 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=11,playerID=1},tag=isTrackedQuest] if score patronusTimer p1Quests matches 120000..125000 run bossbar set minecraft:player1quest name ["",{"text":"Отгоняйте Дементоров на протяжении 2 минут!","color":"gold"}]	
execute as @s[scores={questState=11,playerID=2},tag=isTrackedQuest] if score patronusTimer p2Quests matches 120000..125000 run bossbar set minecraft:player2quest name ["",{"text":"Отгоняйте Дементоров на протяжении 2 минут!","color":"gold"}]
execute as @s[scores={questState=11,playerID=3},tag=isTrackedQuest] if score patronusTimer p3Quests matches 120000..125000 run bossbar set minecraft:player3quest name ["",{"text":"Отгоняйте Дементоров на протяжении 2 минут!","color":"gold"}]
execute as @s[scores={questState=11,playerID=4},tag=isTrackedQuest] if score patronusTimer p4Quests matches 120000..125000 run bossbar set minecraft:player4quest name ["",{"text":"Отгоняйте Дементоров на протяжении 2 минут!","color":"gold"}]


execute as @s[scores={playerID=1,questState=11},tag=isTrackedQuest] run scoreboard players operation @s tmp = patronusTimer p1Quests
execute as @s[scores={playerID=2,questState=11},tag=isTrackedQuest] run scoreboard players operation @s tmp = patronusTimer p2Quests
execute as @s[scores={playerID=3,questState=11},tag=isTrackedQuest] run scoreboard players operation @s tmp = patronusTimer p3Quests
execute as @s[scores={playerID=4,questState=11},tag=isTrackedQuest] run scoreboard players operation @s tmp = patronusTimer p4Quests

scoreboard players set @s[scores={questState=11},tag=isTrackedQuest] tmp2 0
scoreboard players set @s[scores={questState=11},tag=isTrackedQuest] tmp3 0
execute as @s[scores={questState=11},tag=isTrackedQuest] run function hp:quests/quests/expecto_patronum/timer

execute as @s[scores={questState=11,playerID=1,tmp2=10..},tag=isTrackedQuest] if score patronusTimer p1Quests matches 1..120000 run bossbar set minecraft:player1quest name ["",{"text":"(","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=11,playerID=2,tmp2=10..},tag=isTrackedQuest] if score patronusTimer p2Quests matches 1..120000 run bossbar set minecraft:player2quest name ["",{"text":"(","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=11,playerID=3,tmp2=10..},tag=isTrackedQuest] if score patronusTimer p3Quests matches 1..120000 run bossbar set minecraft:player3quest name ["",{"text":"(","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=11,playerID=4,tmp2=10..},tag=isTrackedQuest] if score patronusTimer p4Quests matches 1..120000 run bossbar set minecraft:player4quest name ["",{"text":"(","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=11,playerID=1,tmp2=..9},tag=isTrackedQuest] if score patronusTimer p1Quests matches 1..120000 run bossbar set minecraft:player1quest name ["",{"text":"(","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":0","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=11,playerID=2,tmp2=..9},tag=isTrackedQuest] if score patronusTimer p2Quests matches 1..120000 run bossbar set minecraft:player2quest name ["",{"text":"(","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":0","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=11,playerID=3,tmp2=..9},tag=isTrackedQuest] if score patronusTimer p3Quests matches 1..120000 run bossbar set minecraft:player3quest name ["",{"text":"(","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":0","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=11,playerID=4,tmp2=..9},tag=isTrackedQuest] if score patronusTimer p4Quests matches 1..120000 run bossbar set minecraft:player4quest name ["",{"text":"(","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":0","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]



execute as @s[scores={questState=11,playerID=1},tag=gameLeader,tag=!hasSummonedDementors] if score patronusTimer p1Quests matches ..120000 run function hp:quests/quests/expecto_patronum/summon_dementors
execute as @s[scores={questState=11,playerID=2},tag=gameLeader,tag=!hasSummonedDementors] if score patronusTimer p2Quests matches ..120000 run function hp:quests/quests/expecto_patronum/summon_dementors
execute as @s[scores={questState=11,playerID=3},tag=gameLeader,tag=!hasSummonedDementors] if score patronusTimer p3Quests matches ..120000 run function hp:quests/quests/expecto_patronum/summon_dementors
execute as @s[scores={questState=11,playerID=4},tag=gameLeader,tag=!hasSummonedDementors] if score patronusTimer p4Quests matches ..120000 run function hp:quests/quests/expecto_patronum/summon_dementors

### Trigger ###
execute as @s[scores={questState=11,playerID=1}] if score patronusTimer p1Quests matches ..0 run tag @s add newState
execute as @s[scores={questState=11,playerID=2}] if score patronusTimer p2Quests matches ..0 run tag @s add newState
execute as @s[scores={questState=11,playerID=3}] if score patronusTimer p3Quests matches ..0 run tag @s add newState
execute as @s[scores={questState=11,playerID=4}] if score patronusTimer p4Quests matches ..0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 12
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,tag=gameLeader] as @e[tag=firstRoomDementor] run function hp:quests/quests/expecto_patronum/dissolve_dementors
execute as @s[tag=newState] run tag @s remove hasSummonedDementors
execute as @s[tag=newState] run scoreboard players set expectoPatronumDoor2Direction global 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 12 ###########################################################################################
#############
# Proceed to the next room

### Tracked Quest ###
execute as @s[scores={questState=12},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=12},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1466,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=12},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=12},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 8056.51 134.00 26.59
execute as @s[scores={questState=12},tag=isTrackedQuest] run scoreboard players set @s questRegion 8
### Function ###


### Trigger ###
execute positioned 8056.51 134.00 26.59 as @s[distance=..5,scores={questState=12},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 13
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run tag @s remove newState

#############
## State 13 ###########################################################################################
#############
# Proceed to the next room

### Tracked Quest ###
execute as @s[scores={questState=13},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=13},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1466,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=13},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=13},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 8056.64 134.00 66.58
execute as @s[scores={questState=13},tag=isTrackedQuest] run scoreboard players set @s questRegion 8
### Function ###



### Trigger ###
execute positioned 8056.64 134.00 66.58 as @s[distance=..5,scores={questState=13},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 14
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run tag @s remove newState

#############
## State 14 ###########################################################################################
#############
# Proceed to the next room

### Tracked Quest ###
execute as @s[scores={questState=14},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=14},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1466,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=14},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=14},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 8042.54 134.00 66.58
execute as @s[scores={questState=14},tag=isTrackedQuest] run scoreboard players set @s questRegion 8
### Function ###



### Trigger ###
execute positioned 8042.54 134.00 66.58 as @s[distance=..5,scores={questState=14},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 15
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 15 ###########################################################################################
#############
# Wait for everyone to arrive

### Tracked Quest ###
execute as @s[scores={questState=15},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=15},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1539,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=15},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=15},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

### Function ###
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasLearnedExpectoPatronum,tag=play] unless score @s trackedQuestID matches 21 run scoreboard players add @p[tag=activePlayer] suitableCount 1
execute as @a[scores={trackedQuestID=21,trackQuestState=..15},tag=play] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute as @a[scores={trackedQuestID=21,trackQuestState=15},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=15},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=15,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=15,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=15,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=15,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]

# Trigger
# This weird double tag thing is because of a super strange bug I can't explain some people run into where all the commands below execute but they don't progress to the next
# Quest state. The tag "goToNextQuestState" is removed in set_quest, and so it should just execute everything again if it for some reason doesn't set the quest the first time
# Around
execute as @s[scores={questState=15},tag=inNormalState,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add goToNextQuestState
execute as @s[tag=goToNextQuestState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 20
execute as @s[tag=newState] run scoreboard players set @s questState 16
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s cutSceneID 24
execute as @s[tag=newState] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=24}] run tag @s add cutsceneLeader
execute as @s[tag=newState] run function hp:cutscenes/init_cutscene
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set lupin p1convOverride 35
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set lupin p2convOverride 35
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set lupin p3convOverride 35
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set lupin p4convOverride 35
execute as @s[tag=newState] run tag @s remove newState

#############
## State 16 ###########################################################################################
#############
# Bridge collapse

### Tracked Quest ###
execute as @s[scores={questState=16},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=16},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1466,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=16},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=16},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 8021.5 133 66.5
execute as @s[scores={questState=16},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

### Function ###
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasLearnedExpectoPatronum,tag=play] unless score @s trackedQuestID matches 21 run scoreboard players add @p[tag=activePlayer] suitableCount 1
execute as @a[scores={trackedQuestID=21,trackQuestState=..16},tag=play] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute positioned 8026 133 66 as @a[distance=..8,scores={trackedQuestID=21,trackQuestState=16},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1


### Trigger ###
execute as @s[scores={questState=16},tag=inNormalState,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 17
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,tag=gameLeader] run scoreboard players set patronusBridgeCollapseDirection global 1
execute as @s[tag=newState,tag=gameLeader] run function hp:quests/quests/expecto_patronum/clear_expecto_patronum_lesson
execute as @s[tag=newState] run tag @s add waitingToPlayPatronusMusic
execute as @s[tag=newState] run tag @s remove newState

execute as @s[scores={questState=14..16},tag=isTrackedQuest,x=8025,y=59,z=56,dx=24,dy=29,dz=29] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 17
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,tag=gameLeader] run function hp:quests/quests/expecto_patronum/clear_expecto_patronum_lesson
execute as @s[tag=newState] run tag @s add waitingToPlayPatronusMusic
execute as @s[tag=newState] run tag @s remove newState



#############
## State 17 ###########################################################################################
#############
# Find a way out of the cave

### Tracked Quest ###
execute as @s[scores={questState=17},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=17},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1465,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=17},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=17},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

### Trigger ###
execute positioned 8100 96 220 as @s[distance=..12,scores={questState=17},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 18
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 18 ###########################################################################################
#############
# Speak to Lupin

### Tracked Quest ###
execute as @s[scores={questState=18},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=18},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1466,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=18},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=18},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 8105.51 97.00 221.49
execute as @s[scores={questState=18},tag=isTrackedQuest] run scoreboard players set @s questRegion 8
execute as @s[scores={questState=18,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=4},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s


### Trigger ###
execute as @s[scores={questState=18},tag=inNormalState,tag=hasSpokenToLupinAfterExpectoPatronumLesson] run tag @s add completeQuest


#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/timer/end_pensive_timer
execute as @s[tag=completeQuest] run scoreboard players set @s overrideRespawn 0
execute as @s[tag=completeQuest] run scoreboard players set @s questQueueID 22
execute as @s[tag=completeQuest] run scoreboard players set @s questQueue 120
execute as @s[tag=completeQuest] run tag @s add queingQuest
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set lupin p1convOverride 1
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set lupin p2convOverride 1
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set lupin p3convOverride 1
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set lupin p4convOverride 1
execute as @s[tag=completeQuest] run tag @s remove hasSpokenToLupinAfterExpectoPatronumLesson
execute as @s[tag=completeQuest,tag=gameLeader] run gamerule doDaylightCycle true
execute as @s[tag=completeQuest] run tag @s remove maraudersMapLocked
execute as @s[tag=completeQuest] run tag @s remove lockTrackedQuest
execute as @s[tag=completeQuest] run tag @s add hasLearnedExpectoPatronum
execute as @s[tag=completeQuest] unless entity @p[scores={trackedQuestID=21}] run scoreboard players set playerInPatronusSpellChallenge global 0
execute as @s[tag=completeQuest] run tag @s add musicController
execute as @s[tag=completeQuest,scores={musicPhase=..0}] run scoreboard players set @s musicPhase 0
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest



# Music
execute positioned 8049 59 107 as @s[tag=waitingToPlayPatronusMusic,distance=..7] run function hp:music/music/mysterious
execute positioned 8049 59 107 as @s[tag=waitingToPlayPatronusMusic,distance=..7] run tag @s remove waitingToPlayPatronusMusic
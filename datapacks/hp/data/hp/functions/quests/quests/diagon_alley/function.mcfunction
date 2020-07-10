##############################################
# Косой Переулок
##############################################
scoreboard players set @s questID 2
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.diagonAlley"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Find 'Ночной рыцарь'

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1545,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2346.87 63.63 -777.97
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 6
### Function ###


### Trigger ###
execute positioned 2346.87 63.63 -777.97 as @s[distance=..25,scores={questState=1},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run scoreboard players set @s questTextTimer 100
execute as @s[tag=newState,scores={playerID=1}] run bossbar set minecraft:player1quest name {"text":"Вы можете отправиться в Лондон с помощью Ночного Рыцаря!","bold":false,"color":"gold"}
execute as @s[tag=newState,scores={playerID=2}] run bossbar set minecraft:player2quest name {"text":"Вы можете отправиться в Лондон с помощью Ночного Рыцаря!","bold":false,"color":"gold"}
execute as @s[tag=newState,scores={playerID=3}] run bossbar set minecraft:player3quest name {"text":"Вы можете отправиться в Лондон с помощью Ночного Рыцаря!","bold":false,"color":"gold"}
execute as @s[tag=newState,scores={playerID=4}] run bossbar set minecraft:player4quest name {"text":"Вы можете отправиться в Лондон с помощью Ночного Рыцаря!","bold":false,"color":"gold"}
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Speak to 'Ночной рыцарь' conductor

execute as @s[scores={questState=2,questTextTimer=1..},tag=isTrackedQuest] run scoreboard players remove @s questTextTimer 1
execute as @s[scores={questState=2,questTextTimer=24},tag=isTrackedQuest] run function hp:quests/ding_sound
execute as @s[scores={questState=2,questTextTimer=25..},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1545,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2,questTextTimer=0..24},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1544,Unbreakable:1b,qDetect:1b}


### Tracked Quest ###
execute as @s[scores={questState=2,questTextTimer=0..24},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2,questTextTimer=0..24},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2,questTextTimer=0..24},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2351.55 64.00 -774.63
execute as @s[scores={questState=2,questTextTimer=0..24,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=25},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=2,questTextTimer=0..24},tag=isTrackedQuest] run scoreboard players set @s questRegion 6

### Function ###


### Trigger ###
execute as @s[scores={questState=2},tag=inNormalState,tag=readyToTravelToTheLeakyCauldron] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState,tag=isTrackedQuest] run scoreboard players operation @s trackQuestState = @s questState
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove readyToTravelToTheLeakyCauldron
execute as @s[tag=newState] run tag @s remove newState


#############
## State 3 ###########################################################################################
#############
# Wait for everyone

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1544,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
# execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing -122.35 57.44 -591.46
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 6


# Function
scoreboard players set @s suitableCount 0
execute as @a[scores={trackedQuestID=1},tag=play] run scoreboard players add @p[tag=activePlayer] suitableCount 1
execute as @a[scores={trackedQuestID=2,trackQuestState=..3},tag=play] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute as @a[scores={trackedQuestID=2,trackQuestState=3},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Дождитесь пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=3,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Дождитесь пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Дождитесь пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Дождитесь пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=3},tag=inNormalState,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 2
execute as @s[tag=newState] run scoreboard players set @s cutSceneID 7
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set stan p1convOverride 11
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set stan p2convOverride 11
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set stan p3convOverride 11
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set stan p4convOverride 11
execute as @s[tag=newState] at @s run function hp:cutscenes/init_cutscene
execute as @s[tag=newState] run scoreboard players set @s worldBarrier 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 4 ###########################################################################################
#############
# Enter Дырявый Котёл

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1543,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2888.67 56.06 768.49
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

### Function ###

### Trigger ###
execute positioned 2888.67 56.06 768.49 as @s[distance=..8,scores={questState=4},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState


#############
## State 5 ###########################################################################################
#############
# Find an entrance to Косой Переулок

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1542,Unbreakable:1b,qDetect:1b}
execute positioned 2868.67 57.00 774.26 as @s[scores={questState=5},tag=isTrackedQuest,distance=..50] run tag @s add questHasNoDirection
execute positioned 2868.67 57.00 774.26 as @s[scores={questState=5},tag=isTrackedQuest,distance=51..] run tag @s remove questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2868.67 57.00 774.26
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=5,convState=1,conv=26}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Как попасть в Косой Переулок?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 12
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Function ###


### Trigger ###
execute positioned 2845.47 56.00 792.61 as @s[distance=..5,scores={questState=5},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 3
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState


#############
## State 6 ###########################################################################################
#############
# Speak to Hagrid

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1541,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2852.52 56.00 794.44
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=6,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[tag=hagridLayer2,tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1 ~ 0 0 0 100 1 force @s


### Trigger ###
execute as @s[tag=trigger,scores={questState=6},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 7
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove trigger
execute as @s[tag=newState] run tag @s remove diagonAlleyNotUnlocked
execute as @s[tag=newState] run scoreboard players set @s worldBarrier 2
execute as @s[tag=newState] run tag @s remove newState


#############
## State 7 ###########################################################################################
#############
# Enter Косой Переулок

### Tracked Quest ###
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=7},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1542,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s add questHasNoDirection
# execute as @s[scores={questState=7},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2850.30 55.50 813.59
execute as @s[scores={questState=7},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

### Trigger ###
execute as @s[x=2842,y=56,z=800,dx=14,dy=14,dz=23,scores={questState=7},tag=!isFastTravelling,tag=!playingQuestAnim] run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set @s questQueueID 3
execute as @s[tag=completeQuest] run scoreboard players set @s questQueue 820
execute as @s[tag=completeQuest] run tag @s add queingQuest
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set @s cutSceneID 1
execute as @s[tag=completeQuest] run function hp:cutscenes/init_cutscene
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set hagrid p1convOverride 24
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set hagrid p2convOverride 24
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set hagrid p3convOverride 24
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set hagrid p4convOverride 24
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
##############################################
# Flying Lesson
##############################################
scoreboard players set @s questID 26
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.flyingLesson"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

# Complete Quest Cheat
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s add completeQuest
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tp @s 671.94 53.00 30.10 527.99 6.11
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Find Роланда Трюк at the Тренировочные Поля

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1532,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 669.04 53.00 14.10
execute as @s[scores={questState=1,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=37},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Trigger ###
execute as @s[tag=spokeToMadamHoochAboutFlyingLesson,scores={questState=1},tag=!inConversation] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove spokeToMadamHoochAboutFlyingLesson
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set hooch p1convOverride 12
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set hooch p2convOverride 12
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set hooch p3convOverride 12
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set hooch p4convOverride 12
execute as @s[tag=newState] run tag @e[tag=inventory] remove inventory
execute as @s[tag=newState,scores={playerID=1}] run tag @e[tag=player1Inventory,limit=1] add inventory
execute as @s[tag=newState,scores={playerID=2}] run tag @e[tag=player2Inventory,limit=1] add inventory
execute as @s[tag=newState,scores={playerID=3}] run tag @e[tag=player3Inventory,limit=1] add inventory
execute as @s[tag=newState,scores={playerID=4}] run tag @e[tag=player4Inventory,limit=1] add inventory
execute as @s[tag=newState] run scoreboard players set @s InvItemID 34
execute as @s[tag=newState] run scoreboard players set @s InvItemCount 1
execute as @s[tag=newState] run function hp:inventory/give_player_item
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Wait for everyone to go to the marked location and jump on their broom

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1531,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 668.57 53.00 9.76
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=2},tag=isTrackedQuest] positioned 668.57 53.00 9.76 rotated 0 -90 run function hp:quests/quests/flying/fire_circle


### Function ###
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasLearnedToFly,tag=play] unless score @s trackedQuestID matches 26 run scoreboard players add @p[tag=activePlayer] suitableCount 1
execute as @a[tag=!hasLearnedToFly,scores={trackedQuestID=26,trackQuestState=..2},tag=play] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute positioned 668.57 53.00 9.76 as @a[distance=..2,scores={trackedQuestID=26,trackQuestState=2},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute positioned 668.57 53.00 9.76 as @s[distance=..2,scores={questState=2,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute positioned 668.57 53.00 9.76 as @s[distance=..2,scores={questState=2,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute positioned 668.57 53.00 9.76 as @s[distance=..2,scores={questState=2,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute positioned 668.57 53.00 9.76 as @s[distance=..2,scores={questState=2,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute positioned 668.57 53.00 9.76 as @s[distance=2..,scores={questState=2,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Идите в отмеченую область","color":"gold"}]
execute positioned 668.57 53.00 9.76 as @s[distance=2..,scores={questState=2,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Идите в отмеченую область","color":"gold"}]
execute positioned 668.57 53.00 9.76 as @s[distance=2..,scores={questState=2,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Идите в отмеченую область","color":"gold"}]
execute positioned 668.57 53.00 9.76 as @s[distance=2..,scores={questState=2,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Идите в отмеченую область","color":"gold"}]

# Trigger
execute as @s[scores={questState=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s add lockTrackedQuest
execute as @s[tag=newState] run tag @s remove newState


#############
## State 3 ###########################################################################################
#############
# Open your inventory

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1531,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=3},tag=isTrackedQuest] positioned 668.57 53.00 9.76 rotated 0 -90 run function hp:quests/quests/flying/fire_circle


### Function ###
# Title
execute as @s[scores={questState=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Откройте инвентарь","color":"gold"}]
execute as @s[scores={questState=3,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Откройте инвентарь","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Откройте инвентарь","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Откройте инвентарь","color":"gold"}]

# Trigger
execute as @s[scores={questState=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=inInventory,tag=isTrackedQuest] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 4 ###########################################################################################
#############
# Select 'Обычная Метла'

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1531,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=4},tag=isTrackedQuest] positioned 668.57 53.00 9.76 rotated 0 -90 run function hp:quests/quests/flying/fire_circle


### Function ###
# Title
execute as @s[scores={questState=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=4,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Выберите обычную метлу","color":"gold"}]
execute as @s[scores={questState=4,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Выберите обычную метлу","color":"gold"}]
execute as @s[scores={questState=4,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Выберите обычную метлу","color":"gold"}]
execute as @s[scores={questState=4,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Выберите обычную метлу","color":"gold"}]

# Trigger
execute as @s[scores={questState=4,InvSelectItemID=34},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=inInventory,tag=isTrackedQuest,tag=invInspectItem] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
# execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 5 ###########################################################################################
#############
# Add it to your quickslot

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1531,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=5},tag=isTrackedQuest] positioned 668.57 53.00 9.76 rotated 0 -90 run function hp:quests/quests/flying/fire_circle


### Function ###
# Title
execute as @s[scores={questState=5},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=5,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Добавьте метлу в одну из ячеек быстрого доступа","color":"gold"}]
execute as @s[scores={questState=5,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Добавьте метлу в одну из ячеек быстрого доступа","color":"gold"}]
execute as @s[scores={questState=5,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Добавьте метлу в одну из ячеек быстрого доступа","color":"gold"}]
execute as @s[scores={questState=5,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Добавьте метлу в одну из ячеек быстрого доступа","color":"gold"}]

# Trigger
execute as @s[scores={questState=5,quickSlot1ID=34},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=inInventory,tag=isTrackedQuest] run tag @s add newState
execute as @s[scores={questState=5,quickSlot2ID=34},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=inInventory,tag=isTrackedQuest] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 6 ###########################################################################################
#############
# Exit your inventory

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1531,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=6},tag=isTrackedQuest] positioned 668.57 53.00 9.76 rotated 0 -90 run function hp:quests/quests/flying/fire_circle


### Function ###
# Title
execute as @s[scores={questState=6},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Закройте инвентарь","color":"gold"}]
execute as @s[scores={questState=6,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Закройте инвентарь","color":"gold"}]
execute as @s[scores={questState=6,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Закройте инвентарь","color":"gold"}]
execute as @s[scores={questState=6,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Закройте инвентарь","color":"gold"}]

# Trigger
execute as @s[scores={questState=6},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=!inInventory,tag=isTrackedQuest] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 7
execute as @s[tag=newState] run function hp:quests/set_quest
# execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 7 ###########################################################################################
#############
# Place the broom

### Tracked Quest ###
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=7},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1531,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=7},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=7},tag=isTrackedQuest] positioned 668.57 53.00 9.76 rotated 0 -90 run function hp:quests/quests/flying/fire_circle


### Function ###
# Title
execute as @s[scores={questState=7},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=7,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Выберите метлу в быстром доступе и нажмите ","color":"gold"},{"text":"²","color":"white"}]
execute as @s[scores={questState=7,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Выберите метлу в быстром доступе и нажмите ","color":"gold"},{"text":"²","color":"white"}]
execute as @s[scores={questState=7,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Выберите метлу в быстром доступе и нажмите ","color":"gold"},{"text":"²","color":"white"}]
execute as @s[scores={questState=7,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Выберите метлу в быстром доступе и нажмите ","color":"gold"},{"text":"²","color":"white"}]

# Trigger
execute as @s[scores={questState=7},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=!inInventory,tag=isTrackedQuest] as @e[type=armor_stand,limit=4,sort=nearest,tag=broomElytra] if score @s broomID = @p[tag=activePlayer] broomID run tag @p[tag=activePlayer] add newState
execute as @s[tag=newState] run scoreboard players set @s questState 8
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 8 ###########################################################################################
#############
# Jump on the broom

### Tracked Quest ###
execute as @s[scores={questState=8..100},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=8..100},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1531,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=8..100},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=8..100},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=8},tag=isTrackedQuest] positioned 668.57 53.00 9.76 rotated 0 -90 run function hp:quests/quests/flying/fire_circle


### Function ###
# Title
execute as @s[scores={questState=8},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=8,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Сядьте на метлу","color":"gold"}]
execute as @s[scores={questState=8,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Сядьте на метлу","color":"gold"}]
execute as @s[scores={questState=8,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Сядьте на метлу","color":"gold"}]
execute as @s[scores={questState=8,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Сядьте на метлу","color":"gold"}]

# Trigger
execute as @s[scores={questState=8},tag=flyingBroom,tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 9
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set flyingTimer p1Quests -5000
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set flyingTimer p2Quests -5000
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set flyingTimer p3Quests -5000
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set flyingTimer p4Quests -5000
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set hooch p1convOverride 13
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set hooch p2convOverride 13
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set hooch p3convOverride 13
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set hooch p4convOverride 13
execute as @s[tag=newState] run tag @s remove musicController
execute as @s[tag=newState] run function hp:music/music/witchcraft_and_wizardry
execute as @s[tag=newState] run tag @s remove newState

#############
## State 9 ###########################################################################################
#############
# Count down 3!

### Tracked Quest ###
execute as @s[scores={questState=9..12},tag=isTrackedQuest] positioned 2850.50 55.50 625.50 rotated 0 90 run function hp:quests/quests/flying/fire_circle
execute as @s[scores={questState=9..12},tag=isTrackedQuest] at @s as @e[tag=broomElytra,limit=1,sort=nearest] run data merge entity @s {Motion:[0.0,0.0,0.0]}

### Function ###
# Increment timer
execute as @s[scores={questState=9..,playerID=1},tag=isTrackedQuest] run scoreboard players operation flyingTimer p1Quests += systick time
execute as @s[scores={questState=9..,playerID=2},tag=isTrackedQuest] run scoreboard players operation flyingTimer p2Quests += systick time
execute as @s[scores={questState=9..,playerID=3},tag=isTrackedQuest] run scoreboard players operation flyingTimer p3Quests += systick time
execute as @s[scores={questState=9..,playerID=4},tag=isTrackedQuest] run scoreboard players operation flyingTimer p4Quests += systick time

execute as @s[scores={questState=9,playerID=1},tag=isTrackedQuest] if score flyingTimer p1Quests matches -3000.. run tag @s add newState
execute as @s[scores={questState=9,playerID=2},tag=isTrackedQuest] if score flyingTimer p2Quests matches -3000.. run tag @s add newState
execute as @s[scores={questState=9,playerID=3},tag=isTrackedQuest] if score flyingTimer p3Quests matches -3000.. run tag @s add newState
execute as @s[scores={questState=9,playerID=4},tag=isTrackedQuest] if score flyingTimer p4Quests matches -3000.. run tag @s add newState

# Trigger
execute as @s[tag=newState] run scoreboard players set @s questState 10
execute as @s[tag=newState] run title @s times 2 16 2
execute as @s[tag=newState] run title @s subtitle {"text":"3","color":"gold"}
execute as @s[tag=newState] at @s run playsound minecraft:custom.ui.event1 master @s ~ ~ ~ 10 0.7 1
execute as @s[tag=newState] run title @s title {"text":""}
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run tag @s remove newState

#############
## State 10 ###########################################################################################
#############
# Count down 2!

### Function ###
execute as @s[scores={questState=10,playerID=1},tag=isTrackedQuest] if score flyingTimer p1Quests matches -2000.. run tag @s add newState
execute as @s[scores={questState=10,playerID=2},tag=isTrackedQuest] if score flyingTimer p2Quests matches -2000.. run tag @s add newState
execute as @s[scores={questState=10,playerID=3},tag=isTrackedQuest] if score flyingTimer p3Quests matches -2000.. run tag @s add newState
execute as @s[scores={questState=10,playerID=4},tag=isTrackedQuest] if score flyingTimer p4Quests matches -2000.. run tag @s add newState

# Trigger
execute as @s[tag=newState] run scoreboard players set @s questState 11
execute as @s[tag=newState] run title @s times 2 16 2
execute as @s[tag=newState] run title @s subtitle {"text":"2","color":"gold"}
execute as @s[tag=newState] at @s run playsound minecraft:custom.ui.event1 master @s ~ ~ ~ 10 0.8 1
execute as @s[tag=newState] run title @s title {"text":""}
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run tag @s remove newState

#############
## State 11 ###########################################################################################
#############
# Count down 1!

### Function ###
execute as @s[scores={questState=11,playerID=1},tag=isTrackedQuest] if score flyingTimer p1Quests matches -1000.. run tag @s add newState
execute as @s[scores={questState=11,playerID=2},tag=isTrackedQuest] if score flyingTimer p2Quests matches -1000.. run tag @s add newState
execute as @s[scores={questState=11,playerID=3},tag=isTrackedQuest] if score flyingTimer p3Quests matches -1000.. run tag @s add newState
execute as @s[scores={questState=11,playerID=4},tag=isTrackedQuest] if score flyingTimer p4Quests matches -1000.. run tag @s add newState

# Trigger
execute as @s[tag=newState] run scoreboard players set @s questState 12
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run title @s times 2 16 2
execute as @s[tag=newState] run title @s subtitle {"text":"1","color":"gold"}
execute as @s[tag=newState] at @s run playsound minecraft:custom.ui.event1 master @s ~ ~ ~ 10 0.9 1
execute as @s[tag=newState] run title @s title {"text":""}
execute as @s[tag=newState] run tag @s remove newState

#############
## State 12 ###########################################################################################
#############
# Count down GO!

### Function ###
execute as @s[scores={questState=12,playerID=1},tag=isTrackedQuest] if score flyingTimer p1Quests matches 0.. run tag @s add newState
execute as @s[scores={questState=12,playerID=2},tag=isTrackedQuest] if score flyingTimer p2Quests matches 0.. run tag @s add newState
execute as @s[scores={questState=12,playerID=3},tag=isTrackedQuest] if score flyingTimer p3Quests matches 0.. run tag @s add newState
execute as @s[scores={questState=12,playerID=4},tag=isTrackedQuest] if score flyingTimer p4Quests matches 0.. run tag @s add newState

# Trigger
execute as @s[tag=newState] run scoreboard players set @s questState 13
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run title @s times 2 16 2
execute as @s[tag=newState] run title @s subtitle {"text":"Вперёд!","color":"gold"}
execute as @s[tag=newState] at @s run playsound minecraft:custom.ui.event3 master @s ~ ~ ~ 10 1 1
execute as @s[tag=newState] run title @s title {"text":""}
execute as @s[tag=newState] run tag @s remove newState



#############
## State 13 ###########################################################################################
#############
# Ring 1

execute as @s[scores={playerID=1,questState=13..99},tag=isTrackedQuest] run scoreboard players operation @s tmp = flyingTimer p1Quests
execute as @s[scores={playerID=2,questState=13..99},tag=isTrackedQuest] run scoreboard players operation @s tmp = flyingTimer p2Quests
execute as @s[scores={playerID=3,questState=13..99},tag=isTrackedQuest] run scoreboard players operation @s tmp = flyingTimer p3Quests
execute as @s[scores={playerID=4,questState=13..99},tag=isTrackedQuest] run scoreboard players operation @s tmp = flyingTimer p4Quests

scoreboard players set @s[scores={questState=13..99},tag=isTrackedQuest] tmp2 0
scoreboard players set @s[scores={questState=13..99},tag=isTrackedQuest] tmp3 0
execute as @s[scores={questState=13..99},tag=isTrackedQuest] run function hp:quests/quests/flying_lesson/timer

execute as @s[scores={questState=13..99},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=13..99,playerID=1,tmp2=10..},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"(","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=13..99,playerID=3,tmp2=10..},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"(","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=13..99,playerID=2,tmp2=10..},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"(","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=13..99,playerID=4,tmp2=10..},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"(","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=13..99,playerID=1,tmp2=..9},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"(","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":0","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=13..99,playerID=3,tmp2=..9},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"(","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":0","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=13..99,playerID=2,tmp2=..9},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"(","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":0","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=13..99,playerID=4,tmp2=..9},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"(","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":0","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":")","color":"gold"}]

### Tracked Quest ###
execute as @s[scores={questState=9..13},tag=isTrackedQuest] positioned 662 62 -10 rotated 138 -18 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 662 62 -10 as @s[scores={questState=13},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 15
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 15 ###########################################################################################
#############
# Ring 2

### Tracked Quest ###
execute as @s[scores={questState=9..15},tag=isTrackedQuest] positioned 652 69 -20 rotated 107 -19 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 652 69 -20 as @s[scores={questState=15},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 16
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 16 ###########################################################################################
#############
# Ring 3

### Tracked Quest ###
execute as @s[scores={questState=9..16},tag=isTrackedQuest] positioned 639 75 -21 rotated 60 -20 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 639 75 -21 as @s[scores={questState=16},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 17
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 17 ###########################################################################################
#############
# Ring 4

### Tracked Quest ###
execute as @s[scores={questState=15..17},tag=isTrackedQuest] positioned 625 83 -7 rotated 28 -17 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 625 83 -7 as @s[scores={questState=17},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 18
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 18 ###########################################################################################
#############
# Ring 5

### Tracked Quest ###
execute as @s[scores={questState=16..18},tag=isTrackedQuest] positioned 609 95 25 rotated 42 -21 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 609 95 25 as @s[scores={questState=18},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 19
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 19 ###########################################################################################
#############
# Ring 6

### Tracked Quest ###
execute as @s[scores={questState=17..19},tag=isTrackedQuest] positioned 573 114 64 rotated 57 -20 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 573 114 64 as @s[scores={questState=19},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 20
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 20 ###########################################################################################
#############
# Ring 7

### Tracked Quest ###
execute as @s[scores={questState=18..20},tag=isTrackedQuest] positioned 542 128 83 rotated 75 -15 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 542 128 83 as @s[scores={questState=20},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 21
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 21 ###########################################################################################
#############
# Ring 8

### Tracked Quest ###
execute as @s[scores={questState=19..21},tag=isTrackedQuest] positioned 510 138 92 rotated 115 -20 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 510 138 92 as @s[scores={questState=21},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 22
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 22 ###########################################################################################
#############
# Ring 9

### Tracked Quest ###
execute as @s[scores={questState=20..22},tag=isTrackedQuest] positioned 486 148 73 rotated 128 -17 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 486 148 73 as @s[scores={questState=22},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 23
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 23 ###########################################################################################
#############
# Ring 10

### Tracked Quest ###
execute as @s[scores={questState=21..23},tag=isTrackedQuest] positioned 459 160 51 rotated 143 -20 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 459 160 51 as @s[scores={questState=23},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 24
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 24 ###########################################################################################
#############
# Ring 11

### Tracked Quest ###
execute as @s[scores={questState=22..24},tag=isTrackedQuest] positioned 435 176 18 rotated 162 -3 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 435 176 18 as @s[scores={questState=24},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 25
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 25 ###########################################################################################
#############
# Ring 12

### Tracked Quest ###
execute as @s[scores={questState=23..25},tag=isTrackedQuest] positioned 424 176 -23 rotated -162 35 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 424 176 -23 as @s[scores={questState=25},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 26
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 26 ###########################################################################################
#############
# Ring 13

### Tracked Quest ###
execute as @s[scores={questState=24..26},tag=isTrackedQuest] positioned 432 163 -39 rotated -141 55 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 432 163 -39 as @s[scores={questState=26},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 27
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 27 ###########################################################################################
#############
# Ring 14

### Tracked Quest ###
execute as @s[scores={questState=25..27},tag=isTrackedQuest] positioned 444 121 -58 rotated 179 33 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 444 121 -58 as @s[scores={questState=27},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 28
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 28 ###########################################################################################
#############
# Ring 15

### Tracked Quest ###
execute as @s[scores={questState=26..28},tag=isTrackedQuest] positioned 456 86 -99 rotated 164 21 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 456 86 -99 as @s[scores={questState=28},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 29
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 29 ###########################################################################################
#############
# Ring 16

### Tracked Quest ###
execute as @s[scores={questState=27..29},tag=isTrackedQuest] positioned 454 62 -147 rotated 158 10 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 454 62 -147 as @s[scores={questState=29},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 30
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 30 ###########################################################################################
#############
# Ring 17

### Tracked Quest ###
execute as @s[scores={questState=28..30},tag=isTrackedQuest] positioned 440 48 -178 rotated 167 5 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 440 48 -178 as @s[scores={questState=30},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 31
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 31 ###########################################################################################
#############
# Ring 18

### Tracked Quest ###
execute as @s[scores={questState=29..31},tag=isTrackedQuest] positioned 431 48 -203 rotated 164 1 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 431 48 -203 as @s[scores={questState=31},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 32
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 32 ###########################################################################################
#############
# Ring 19

### Tracked Quest ###
execute as @s[scores={questState=30..32},tag=isTrackedQuest] positioned 426 48 -230 rotated -169 9 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 426 48 -230 as @s[scores={questState=32},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 33
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 33 ###########################################################################################
#############
# Ring 20

### Tracked Quest ###
execute as @s[scores={questState=31..33},tag=isTrackedQuest] positioned 436 48 -262 rotated -121 -3 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 436 48 -262 as @s[scores={questState=33},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 34
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 34 ###########################################################################################
#############
# Ring 21

### Tracked Quest ###
execute as @s[scores={questState=32..34},tag=isTrackedQuest] positioned 475 48 -269 rotated -83 3 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 475 48 -269 as @s[scores={questState=34},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 35
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 35 ###########################################################################################
#############
# Ring 22

### Tracked Quest ###
execute as @s[scores={questState=33..35},tag=isTrackedQuest] positioned 497 48 -265 rotated -58 -1 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 497 48 -265 as @s[scores={questState=35},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 36
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 36 ###########################################################################################
#############
# Ring 23

### Tracked Quest ###
execute as @s[scores={questState=34..36},tag=isTrackedQuest] positioned 515 48 -247 rotated -22 2 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 515 48 -247 as @s[scores={questState=36},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 37
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 37 ###########################################################################################
#############
# Ring 24

### Tracked Quest ###
execute as @s[scores={questState=35..37},tag=isTrackedQuest] positioned 519 48 -218 rotated -20 -2 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 519 48 -218 as @s[scores={questState=37},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 38
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 38 ###########################################################################################
#############
# Ring 25

### Tracked Quest ###
execute as @s[scores={questState=36..38},tag=isTrackedQuest] positioned 540 57 -170 rotated -39 4 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 540 57 -170 as @s[scores={questState=38},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 39
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 39 ###########################################################################################
#############
# Ring 26

### Tracked Quest ###
execute as @s[scores={questState=37..39},tag=isTrackedQuest] positioned 581 56 -129 rotated -38 1 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 581 56 -129 as @s[scores={questState=39},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 40
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 40 ###########################################################################################
#############
# Ring 27

### Tracked Quest ###
execute as @s[scores={questState=38..40},tag=isTrackedQuest] positioned 603 56.5 -86 rotated -45 0 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 604 55 -85 as @s[scores={questState=40},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 41
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 41 ###########################################################################################
#############
# Ring 28

### Tracked Quest ###
execute as @s[scores={questState=39..41},tag=isTrackedQuest] positioned 618 63 -71 rotated -35 -29 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 618 63 -71 as @s[scores={questState=41},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 42
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 42 ###########################################################################################
#############
# Ring 29

### Tracked Quest ###
execute as @s[scores={questState=40..42},tag=isTrackedQuest] positioned 627 77 -56 rotated -33 -30 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 627 77 -56 as @s[scores={questState=42},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 43
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 43 ###########################################################################################
#############
# Ring 30

### Tracked Quest ###
execute as @s[scores={questState=41..43},tag=isTrackedQuest] positioned 642 89 -31 rotated -27 -20 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 642 89 -31 as @s[scores={questState=43},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 44
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 44 ###########################################################################################
#############
# Ring 31

### Tracked Quest ###
execute as @s[scores={questState=42..44},tag=isTrackedQuest] positioned 666 96 10 rotated -33 -10 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 666 96 10 as @s[scores={questState=44},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 45
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 45 ###########################################################################################
#############
# Ring 32

### Tracked Quest ###
execute as @s[scores={questState=43..45},tag=isTrackedQuest] positioned 704 103 64 rotated -44 -13 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 704 103 64 as @s[scores={questState=45},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 46
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 46 ###########################################################################################
#############
# Ring 33

### Tracked Quest ###
execute as @s[scores={questState=44..46},tag=isTrackedQuest] positioned 739 113 93 rotated -47 -8 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 739 113 93 as @s[scores={questState=46},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 47
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 47 ###########################################################################################
#############
# Ring 34

### Tracked Quest ###
execute as @s[scores={questState=45..47},tag=isTrackedQuest] positioned 764 119 125 rotated -73 8 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 764 119 125 as @s[scores={questState=47},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 48
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 48 ###########################################################################################
#############
# Ring 35

### Tracked Quest ###
execute as @s[scores={questState=46..48},tag=isTrackedQuest] positioned 796 109 122 rotated -91 37 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 796 109 122 as @s[scores={questState=48},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 49
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 49 ###########################################################################################
#############
# Ring 36

### Tracked Quest ###
execute as @s[scores={questState=47..49},tag=isTrackedQuest] positioned 821 89 122 rotated -54 25 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 821 89 122 as @s[scores={questState=49},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 50
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 50 ###########################################################################################
#############
# Ring 37

### Tracked Quest ###
execute as @s[scores={questState=48..50},tag=isTrackedQuest] positioned 840 83 153 rotated -15 5 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 840 83 153 as @s[scores={questState=50},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 51
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 51 ###########################################################################################
#############
# Ring 38

### Tracked Quest ###
execute as @s[scores={questState=49..51},tag=isTrackedQuest] positioned 845 75 189 rotated -17 5 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 845 75 189 as @s[scores={questState=51},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 52
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 52 ###########################################################################################
#############
# Ring 39

### Tracked Quest ###
execute as @s[scores={questState=50..52},tag=isTrackedQuest] positioned 855 65 220 rotated 0 14 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 855 65 220 as @s[scores={questState=52},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 53
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 53 ###########################################################################################
#############
# Ring 40

### Tracked Quest ###
execute as @s[scores={questState=51..53},tag=isTrackedQuest] positioned 845 60 250 rotated 69 12 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 845 60 250 as @s[scores={questState=53},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 54
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 54 ###########################################################################################
#############
# Ring 41

### Tracked Quest ###
execute as @s[scores={questState=52..54},tag=isTrackedQuest] positioned 818 54 248 rotated 91 6 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 818 54 248 as @s[scores={questState=54},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 55
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 55 ###########################################################################################
#############
# Ring 42

### Tracked Quest ###
execute as @s[scores={questState=53..55},tag=isTrackedQuest] positioned 780 51 245 rotated 90 0 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 780 51 245 as @s[scores={questState=55},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 56
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 56 ###########################################################################################
#############
# Ring 43

### Tracked Quest ###
execute as @s[scores={questState=54..56},tag=isTrackedQuest] positioned 740 64 225 rotated 120 -10 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 740 64 225 as @s[scores={questState=56},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 57
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 57 ###########################################################################################
#############
# Ring 44

### Tracked Quest ###
execute as @s[scores={questState=55..57},tag=isTrackedQuest] positioned 696 72 201 rotated 110 -1 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 696 72 201 as @s[scores={questState=57},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 58
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 58 ###########################################################################################
#############
# Ring 45

### Tracked Quest ###
execute as @s[scores={questState=56..58},tag=isTrackedQuest] positioned 670 71 195 rotated 109 -5 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 670 71 195 as @s[scores={questState=58},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 59
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 59 ###########################################################################################
#############
# Ring 46

### Tracked Quest ###
execute as @s[scores={questState=57..59},tag=isTrackedQuest] positioned 642 76 169 rotated 140 -12 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 642 76 169 as @s[scores={questState=59},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 60
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 60 ###########################################################################################
#############
# Ring 47

### Tracked Quest ###
execute as @s[scores={questState=58..60},tag=isTrackedQuest] positioned 643 80 136 rotated 178 -5 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 643 80 136 as @s[scores={questState=60},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 61
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 61 ###########################################################################################
#############
# Ring 48

### Tracked Quest ###
execute as @s[scores={questState=59..61},tag=isTrackedQuest] positioned 647 80 100 rotated -176 6 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 647 80 100 as @s[scores={questState=61},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 62
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 62 ###########################################################################################
#############
# Ring 49

### Tracked Quest ###
execute as @s[scores={questState=60..62},tag=isTrackedQuest] positioned 649 74 62 rotated -163 18 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 649 74 62 as @s[scores={questState=62},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 63
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] at @s run playsound minecraft:custom.gameplay_element.flame_ring master @s ~ ~ ~ 10000 1 1
execute as @s[tag=newState] run tag @s remove newState

#############
## State 63 ###########################################################################################
#############
# Ring 50

### Tracked Quest ###
execute as @s[scores={questState=61..63},tag=isTrackedQuest] positioned 661 62 32 rotated 157 24 run function hp:quests/quests/flying/fire_circle

### Trigger ###
execute positioned 661 62 32 as @s[scores={questState=63},distance=..2.5] run tag @s add newState
execute as @s[tag=newState] at @s run playsound minecraft:custom.ui.quest.accept_quest master @s ~ ~ ~ 10 1.2 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation lastFlyingTime p1Quests = flyingTimer p1Quests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation lastFlyingTime p2Quests = flyingTimer p2Quests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation lastFlyingTime p3Quests = flyingTimer p3Quests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation lastFlyingTime p4Quests = flyingTimer p4Quests
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation @s tmp = flyingTimer p1Quests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation @s tmp = flyingTimer p2Quests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation @s tmp = flyingTimer p3Quests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation @s tmp = flyingTimer p4Quests
execute as @s[tag=newState] if score @s tmp < timer flyingHighscore run tag @s add setHighScore
execute as @s[tag=newState] if score @s tmp < timer flyingHighscore run scoreboard players operation seconds flyingHighscore = @s tmp2
execute as @s[tag=newState] if score @s tmp < timer flyingHighscore run scoreboard players operation minutes flyingHighscore = @s tmp3
execute as @s[tag=newState] if score @s tmp < timer flyingHighscore run scoreboard players operation timer flyingHighscore = @s tmp
execute as @s[tag=newState] run function hp:pensive/write_result_trophy_room
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set flyingTimer p1Quests -8000
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set flyingTimer p2Quests -8000
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set flyingTimer p3Quests -8000
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set flyingTimer p4Quests -8000
execute as @s[tag=newState] run scoreboard players set @s questState 100
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run tag @s remove newState

##############
## State 100 ###########################################################################################
##############
# Show results

execute as @s[scores={questState=100,playerID=1},tag=isTrackedQuest] run scoreboard players operation @s tmp = lastFlyingTime p1Quests
execute as @s[scores={questState=100,playerID=2},tag=isTrackedQuest] run scoreboard players operation @s tmp = lastFlyingTime p2Quests
execute as @s[scores={questState=100,playerID=3},tag=isTrackedQuest] run scoreboard players operation @s tmp = lastFlyingTime p3Quests
execute as @s[scores={questState=100,playerID=4},tag=isTrackedQuest] run scoreboard players operation @s tmp = lastFlyingTime p4Quests
scoreboard players set @s[scores={questState=100},tag=isTrackedQuest] tmp2 0
scoreboard players set @s[scores={questState=100},tag=isTrackedQuest] tmp3 0
execute as @s[scores={questState=100},tag=isTrackedQuest] run function hp:quests/quests/flying_lesson/timer

# Not Highscore
execute as @s[scores={questState=100},tag=isTrackedQuest] run scoreboard players set @s questTextTimer 5
execute as @s[scores={questState=100,playerID=1},tag=isTrackedQuest,tag=!setHighScore] run bossbar set minecraft:player1quest name ["",{"text":"Время полёта: ","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":". Рекорд: ","color":"gold"},{"score":{"name":"minutes","objective":"flyingHighscore"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"seconds","objective":"flyingHighscore"},"color":"gold"},{"text":".","color":"gold"}]
execute as @s[scores={questState=100,playerID=3},tag=isTrackedQuest,tag=!setHighScore] run bossbar set minecraft:player3quest name ["",{"text":"Время полёта: ","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":". Рекорд: ","color":"gold"},{"score":{"name":"minutes","objective":"flyingHighscore"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"seconds","objective":"flyingHighscore"},"color":"gold"},{"text":".","color":"gold"}]
execute as @s[scores={questState=100,playerID=2},tag=isTrackedQuest,tag=!setHighScore] run bossbar set minecraft:player2quest name ["",{"text":"Время полёта: ","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":". Рекорд: ","color":"gold"},{"score":{"name":"minutes","objective":"flyingHighscore"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"seconds","objective":"flyingHighscore"},"color":"gold"},{"text":".","color":"gold"}]
execute as @s[scores={questState=100,playerID=4},tag=isTrackedQuest,tag=!setHighScore] run bossbar set minecraft:player4quest name ["",{"text":"Время полёта: ","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":". Рекорд: ","color":"gold"},{"score":{"name":"minutes","objective":"flyingHighscore"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"seconds","objective":"flyingHighscore"},"color":"gold"},{"text":".","color":"gold"}]

# Highscore
execute as @s[scores={questState=100,playerID=1},tag=isTrackedQuest,tag=setHighScore] run bossbar set minecraft:player1quest name ["",{"text":"Поставлен новый рекорд! Время полёта: ","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":".","color":"gold"}]
execute as @s[scores={questState=100,playerID=3},tag=isTrackedQuest,tag=setHighScore] run bossbar set minecraft:player3quest name ["",{"text":"Поставлен новый рекорд! Время полёта: ","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":".","color":"gold"}]
execute as @s[scores={questState=100,playerID=2},tag=isTrackedQuest,tag=setHighScore] run bossbar set minecraft:player2quest name ["",{"text":"Поставлен новый рекорд! Время полёта: ","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":".","color":"gold"}]
execute as @s[scores={questState=100,playerID=4},tag=isTrackedQuest,tag=setHighScore] run bossbar set minecraft:player4quest name ["",{"text":"Поставлен новый рекорд! Время полёта: ","color":"gold"},{"score":{"name":"@s","objective":"tmp3"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"@s","objective":"tmp2"},"color":"gold"},{"text":".","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=100,playerID=1},tag=isTrackedQuest] if score flyingTimer p1Quests matches 0.. run tag @s add newState
execute as @s[scores={questState=100,playerID=2},tag=isTrackedQuest] if score flyingTimer p2Quests matches 0.. run tag @s add newState
execute as @s[scores={questState=100,playerID=3},tag=isTrackedQuest] if score flyingTimer p3Quests matches 0.. run tag @s add newState
execute as @s[scores={questState=100,playerID=4},tag=isTrackedQuest] if score flyingTimer p4Quests matches 0.. run tag @s add newState

execute as @s[tag=newState] run scoreboard players set @s questState 101
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
# Ok
execute as @s[tag=newState,scores={playerID=1}] if score lastFlyingTime p1Quests matches 210000.. run scoreboard players set hooch p1convOverride 14
execute as @s[tag=newState,scores={playerID=2}] if score lastFlyingTime p2Quests matches 210000.. run scoreboard players set hooch p2convOverride 14
execute as @s[tag=newState,scores={playerID=3}] if score lastFlyingTime p3Quests matches 210000.. run scoreboard players set hooch p3convOverride 14
execute as @s[tag=newState,scores={playerID=4}] if score lastFlyingTime p4Quests matches 210000.. run scoreboard players set hooch p4convOverride 14
# Decent
execute as @s[tag=newState,scores={playerID=1}] if score lastFlyingTime p1Quests matches 180000..210000 run scoreboard players set hooch p1convOverride 15
execute as @s[tag=newState,scores={playerID=2}] if score lastFlyingTime p2Quests matches 180000..210000 run scoreboard players set hooch p2convOverride 15
execute as @s[tag=newState,scores={playerID=3}] if score lastFlyingTime p3Quests matches 180000..210000 run scoreboard players set hooch p3convOverride 15
execute as @s[tag=newState,scores={playerID=4}] if score lastFlyingTime p4Quests matches 180000..210000 run scoreboard players set hooch p4convOverride 15
# Excellent
execute as @s[tag=newState,scores={playerID=1}] if score lastFlyingTime p1Quests matches ..180000 run scoreboard players set hooch p1convOverride 16
execute as @s[tag=newState,scores={playerID=2}] if score lastFlyingTime p2Quests matches ..180000 run scoreboard players set hooch p2convOverride 16
execute as @s[tag=newState,scores={playerID=3}] if score lastFlyingTime p3Quests matches ..180000 run scoreboard players set hooch p3convOverride 16
execute as @s[tag=newState,scores={playerID=4}] if score lastFlyingTime p4Quests matches ..180000 run scoreboard players set hooch p4convOverride 16
execute as @s[tag=newState] run tag @s remove newState


#############
## State 101 ###########################################################################################
#############
# Speak to Роланда Трюк

### Tracked Quest ###
execute as @s[scores={questState=101},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=101},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1529,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=101},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=101},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 669.04 53.00 14.10
execute as @s[scores={questState=101,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=37},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=101},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Trigger ###
execute as @s[tag=spokeToMadamHoochAfterFlyingLesson,tag=inNormalState] run tag @s add completeQuest



#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set @s questQueueID 18
execute as @s[tag=completeQuest] run scoreboard players set @s questQueue 120
execute as @s[tag=completeQuest] run tag @s add queingQuest
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set hooch p1convOverride 1
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set hooch p2convOverride 1
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set hooch p4convOverride 1
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set hooch p3convOverride 1
execute as @s[tag=completeQuest] run tag @e[tag=inventory] remove inventory
execute as @s[tag=completeQuest,scores={playerID=1}] run tag @e[tag=player1Inventory,limit=1] add inventory
execute as @s[tag=completeQuest,scores={playerID=2}] run tag @e[tag=player2Inventory,limit=1] add inventory
execute as @s[tag=completeQuest,scores={playerID=3}] run tag @e[tag=player3Inventory,limit=1] add inventory
execute as @s[tag=completeQuest,scores={playerID=4}] run tag @e[tag=player4Inventory,limit=1] add inventory
execute as @s[tag=completeQuest] run scoreboard players set @s InvItemID 34
execute as @s[tag=completeQuest] run scoreboard players set @s InvItemCount -1
execute as @s[tag=completeQuest] run function hp:inventory/give_player_item
execute as @s[tag=completeQuest,scores={quickSlot1ID=34}] run scoreboard players set @s quickSlot1ID 0
execute as @s[tag=completeQuest,scores={quickSlot2ID=34}] run scoreboard players set @s quickSlot2ID 0
execute as @s[tag=completeQuest] run tag @s remove setHighScore
execute as @s[tag=completeQuest] run tag @s remove spokeToMadamHoochAfterFlyingLesson
execute as @s[tag=completeQuest] run tag @s add hasLearnedToFly
execute as @s[tag=completeQuest] run scoreboard players operation @s broomID = global broomID
execute as @s[tag=completeQuest] run scoreboard players add global broomID 1
execute as @s[tag=completeQuest] unless entity @p[tag=!hasLearnedToFly,tag=inGame] run scoreboard players set resetFlyingClass global 1
execute as @s[tag=completeQuest] run tag @s remove lockTrackedQuest
execute as @s[tag=completeQuest] run tag @s remove broomInInventory
execute as @s[tag=completeQuest] run tag @s add musicController
execute as @s[tag=completeQuest,scores={musicPhase=..0}] run scoreboard players set @s musicPhase 0
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest


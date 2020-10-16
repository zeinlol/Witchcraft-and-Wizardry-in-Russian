##############################################
# Snipe Hunt
##############################################
scoreboard players set @s questID 56
scoreboard players operation @s questState = snipeHunt sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Отправиться в the Дом Лавгудов

execute as @s[scores={questState=1..6,lastRegion=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1..6,lastRegion=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1..6,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=1..6,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 677 64 223

# Title
execute as @s[scores={questState=1..6,lastRegion=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless entity @s[x=4992,dx=819,y=0,dy=255,z=3968,dz=819] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=1..6,playerID=1,lastRegion=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless entity @s[x=4992,dx=819,y=0,dy=255,z=3968,dz=819] run bossbar set minecraft:player1quest name ["",{"text":"Поговорите с Полумной Лавгуд для путешествия в Дом Лавгудов","color":"gold"}]
execute as @s[scores={questState=1..6,playerID=2,lastRegion=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless entity @s[x=4992,dx=819,y=0,dy=255,z=3968,dz=819] run bossbar set minecraft:player2quest name ["",{"text":"Поговорите с Полумной Лавгуд для путешествия в Дом Лавгудов","color":"gold"}]
execute as @s[scores={questState=1..6,playerID=3,lastRegion=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless entity @s[x=4992,dx=819,y=0,dy=255,z=3968,dz=819] run bossbar set minecraft:player3quest name ["",{"text":"Поговорите с Полумной Лавгуд для путешествия в Дом Лавгудов","color":"gold"}]
execute as @s[scores={questState=1..6,playerID=4,lastRegion=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless entity @s[x=4992,dx=819,y=0,dy=255,z=3968,dz=819] run bossbar set minecraft:player4quest name ["",{"text":"Поговорите с Полумной Лавгуд для путешествия в Дом Лавгудов","color":"gold"}]


### Tracked Quest ###
execute as @s[scores={questState=1,lastRegion=10},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1399,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1,lastRegion=10},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=1,lastRegion=10},tag=isTrackedQuest] run scoreboard players set @s questRegion 10

### Trigger ###
execute as @s[scores={questState=1,lastRegion=10},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set snipeHunt sharedQuests 2

execute as @s[scores={playerID=1}] unless score snipeHunt p1Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score snipeHunt p2Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score snipeHunt p3Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score snipeHunt p4Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation snipeHunt p1Quests = snipeHunt sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation snipeHunt p2Quests = snipeHunt sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation snipeHunt p3Quests = snipeHunt sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation snipeHunt p4Quests = snipeHunt sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Talk to Ксенофилиус Лавгуд

### Tracked Quest ###
execute as @s[scores={questState=2,lastRegion=10},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1398,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2,lastRegion=10},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2,lastRegion=10},tag=isTrackedQuest] run scoreboard players set @s questRegion 10
execute as @s[scores={questState=2,lastRegion=10},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5168 120 4429
execute as @s[scores={questState=2,lastRegion=10,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=10},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=2,conv=10,convState=1}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Полумна сказала что вы ищите Нарглов?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 15
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use



# Trigger
execute as @s[scores={questState=2},tag=isTrackedQuest,tag=hasSpokenToXenophiliusAboutNargles] run scoreboard players set snipeHunt sharedQuests 4

execute as @s[scores={playerID=1}] unless score snipeHunt p1Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=2}] unless score snipeHunt p2Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=3}] unless score snipeHunt p3Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=4}] unless score snipeHunt p4Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches 4 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s InvItemID 45
execute as @s[tag=newState] run scoreboard players set @s InvItemCount 1
execute as @s[tag=newState] run function hp:inventory/give_player_item
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation snipeHunt p1Quests = snipeHunt sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation snipeHunt p2Quests = snipeHunt sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation snipeHunt p3Quests = snipeHunt sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation snipeHunt p4Quests = snipeHunt sharedQuests
execute as @s[tag=newState] run tag @s remove hasSpokenToXenophiliusAboutNargles
execute as @s[tag=newState] run tag @s remove newState

#############
## State 4 ###########################################################################################
#############
# Отправиться в the windmill

### Tracked Quest ###
execute as @s[scores={questState=4,lastRegion=10},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1396,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4,lastRegion=10},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4,lastRegion=10},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5675 100 4351
execute as @s[scores={questState=4,lastRegion=10},tag=isTrackedQuest] run scoreboard players set @s questRegion 10

# Trigger
execute positioned 5675 100 4351 as @s[distance=..20,scores={questState=4},tag=isTrackedQuest] run scoreboard players set snipeHunt sharedQuests 5

execute as @s[scores={playerID=1}] unless score snipeHunt p1Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=2}] unless score snipeHunt p2Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=3}] unless score snipeHunt p3Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=4}] unless score snipeHunt p4Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches 5 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation snipeHunt p1Quests = snipeHunt sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation snipeHunt p2Quests = snipeHunt sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation snipeHunt p3Quests = snipeHunt sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation snipeHunt p4Quests = snipeHunt sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 5 ###########################################################################################
#############
# Equip the Спектрально-астральные очки and investigate the area

### Tracked Quest ###
execute as @s[scores={questState=5,lastRegion=10},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1395,Unbreakable:1b,qDetect:1b}
execute positioned 5675 100 4351 as @s[distance=..30,scores={questState=5,lastRegion=10},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute positioned 5675 100 4351 as @s[distance=30..,scores={questState=5,lastRegion=10},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=5,lastRegion=10},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5675 100 4351
execute as @s[scores={questState=5,lastRegion=10},tag=isTrackedQuest] run scoreboard players set @s questRegion 10

# Trigger
execute positioned 5675 100 4351 as @s[distance=..50,scores={playerID=1,questState=5,clothesSlot1ID=45},tag=isTrackedQuest] run scoreboard players add investigateWindMill p1Quests 1
execute positioned 5675 100 4351 as @s[distance=..50,scores={playerID=2,questState=5,clothesSlot1ID=45},tag=isTrackedQuest] run scoreboard players add investigateWindMill p2Quests 1
execute positioned 5675 100 4351 as @s[distance=..50,scores={playerID=3,questState=5,clothesSlot1ID=45},tag=isTrackedQuest] run scoreboard players add investigateWindMill p3Quests 1
execute positioned 5675 100 4351 as @s[distance=..50,scores={playerID=4,questState=5,clothesSlot1ID=45},tag=isTrackedQuest] run scoreboard players add investigateWindMill p4Quests 1

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score investigateWindMill p1Quests matches 300.. run scoreboard players set snipeHunt sharedQuests 6
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score investigateWindMill p2Quests matches 300.. run scoreboard players set snipeHunt sharedQuests 6
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score investigateWindMill p3Quests matches 300.. run scoreboard players set snipeHunt sharedQuests 6
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score investigateWindMill p4Quests matches 300.. run scoreboard players set snipeHunt sharedQuests 6

execute as @s[scores={playerID=1}] unless score snipeHunt p1Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=2}] unless score snipeHunt p2Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=3}] unless score snipeHunt p3Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=4}] unless score snipeHunt p4Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches 6 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questTextTimer 150
execute as @s[tag=newState,scores={playerID=1}] run bossbar set minecraft:player1quest name {"text":"Расскажите про ваши находки Ксенофилиусу Лавгуду","bold":false,"color":"gold"}
execute as @s[tag=newState,scores={playerID=2}] run bossbar set minecraft:player2quest name {"text":"Расскажите про ваши находки Ксенофилиусу Лавгуду","bold":false,"color":"gold"}
execute as @s[tag=newState,scores={playerID=3}] run bossbar set minecraft:player3quest name {"text":"Расскажите про ваши находки Ксенофилиусу Лавгуду","bold":false,"color":"gold"}
execute as @s[tag=newState,scores={playerID=4}] run bossbar set minecraft:player4quest name {"text":"Расскажите про ваши находки Ксенофилиусу Лавгуду","bold":false,"color":"gold"}
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run scoreboard players set xenophilius p1convOverride 20
execute as @s[tag=newState] run scoreboard players set xenophilius p2convOverride 20
execute as @s[tag=newState] run scoreboard players set xenophilius p3convOverride 20
execute as @s[tag=newState] run scoreboard players set xenophilius p4convOverride 20
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation snipeHunt p1Quests = snipeHunt sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation snipeHunt p2Quests = snipeHunt sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation snipeHunt p3Quests = snipeHunt sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation snipeHunt p4Quests = snipeHunt sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 6 ###########################################################################################
#############
# Return to Ксенофилиус Лавгуд

### Tracked Quest ###
execute as @s[scores={questState=6,lastRegion=10},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1394,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6,lastRegion=10},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=6,lastRegion=10},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5168 120 4429
execute as @s[scores={questState=6,lastRegion=10},tag=isTrackedQuest] run scoreboard players set @s questRegion 10
execute as @s[scores={questState=6,npcQuestIcon=1,lastRegion=10},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=10},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

execute as @s[scores={questState=6},tag=inNormalState,tag=hasCompletedSnipeHunt] run scoreboard players set snipeHunt sharedQuests -1
execute as @s[scores={playerID=1}] unless score snipeHunt p1Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score snipeHunt p2Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score snipeHunt p3Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score snipeHunt p4Quests = snipeHunt sharedQuests if score snipeHunt sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set snipeHunt sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players add @s money 150
execute as @s[tag=completeQuest] run scoreboard players set xenophilius p1convOverride 1
execute as @s[tag=completeQuest] run scoreboard players set xenophilius p2convOverride 1
execute as @s[tag=completeQuest] run scoreboard players set xenophilius p3convOverride 1
execute as @s[tag=completeQuest] run scoreboard players set xenophilius p4convOverride 1
execute as @s[tag=completeQuest] run scoreboard players set investigateWindMill p1Quests 0
execute as @s[tag=completeQuest] run scoreboard players set investigateWindMill p2Quests 0
execute as @s[tag=completeQuest] run scoreboard players set investigateWindMill p3Quests 0
execute as @s[tag=completeQuest] run scoreboard players set investigateWindMill p4Quests 0
execute as @s[tag=completeQuest] run tag @s remove hasCompletedSnipeHunt
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation snipeHunt p1Quests = snipeHunt sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation snipeHunt p2Quests = snipeHunt sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation snipeHunt p3Quests = snipeHunt sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation snipeHunt p4Quests = snipeHunt sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
##############################################
# Frog Choir Quarrel
##############################################
scoreboard players set @s questID 65
scoreboard players operation @s questState = frogChoirQuarrel sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Hang the papers on 4 notice boards around Замок Хогвартс

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1365,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Special selection
execute at @s[scores={questState=1}] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=noticeBoard,tag=hogwartsNoticeBoard] add questHover
execute as @s[scores={questState=1}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Title
execute as @s[scores={questState=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=1,playerID=1},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Повесьте листовки на доски объявлений (0 / 4)","color":"gold"}]
execute as @s[scores={questState=1,playerID=2},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Повесьте листовки на доски объявлений (0 / 4)","color":"gold"}]
execute as @s[scores={questState=1,playerID=3},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Повесьте листовки на доски объявлений (0 / 4)","color":"gold"}]
execute as @s[scores={questState=1,playerID=4},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Повесьте листовки на доски объявлений (0 / 4)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=1},tag=hasPressedF] if entity @e[tag=questHover] run scoreboard players operation frogChoirBoard1 sharedQuests = @e[tag=questHover,limit=1,sort=nearest] toolID
execute as @s[scores={questState=1},tag=hasPressedF] if entity @e[tag=questHover] at @s run playsound minecraft:custom.ui.book.open master @a ~ ~ ~ 1 1
execute as @s[scores={questState=1},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 2
execute as @s[scores={questState=1},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] run scoreboard players add frogChoirPapersPutUp sharedQuests 1

execute as @s[scores={questState=1},tag=inNormalState] if score frogChoirPapersPutUp sharedQuests matches 1.. run scoreboard players set frogChoirQuarrel sharedQuests 2
execute as @s[scores={playerID=1}] unless score frogChoirQuarrel p1Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score frogChoirQuarrel p2Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score frogChoirQuarrel p3Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score frogChoirQuarrel p4Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run scoreboard players set frogChoirQuarrel sharedQuests 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation frogChoirQuarrel p1Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation frogChoirQuarrel p2Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation frogChoirQuarrel p3Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation frogChoirQuarrel p4Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Put up all the flyers
### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1365,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Special selection
execute at @s[scores={questState=2}] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=noticeBoard,tag=hogwartsNoticeBoard] add questHover
execute as @s[scores={questState=2}] as @e[tag=questHover,limit=1,sort=nearest] if score @s toolID = frogChoirBoard1 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=2}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Title
execute as @s[scores={questState=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=2,playerID=1},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Повесьте листовки на доски объявлений (1 / 4)","color":"gold"}]
execute as @s[scores={questState=2,playerID=2},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Повесьте листовки на доски объявлений (1 / 4)","color":"gold"}]
execute as @s[scores={questState=2,playerID=3},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Повесьте листовки на доски объявлений (1 / 4)","color":"gold"}]
execute as @s[scores={questState=2,playerID=4},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Повесьте листовки на доски объявлений (1 / 4)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=2},tag=hasPressedF] if entity @e[tag=questHover] run scoreboard players operation frogChoirBoard2 sharedQuests = @e[tag=questHover,limit=1,sort=nearest] toolID
execute as @s[scores={questState=2},tag=hasPressedF] if entity @e[tag=questHover] at @s run playsound minecraft:custom.ui.book.open master @a ~ ~ ~ 1 1
execute as @s[scores={questState=2},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 2
execute as @s[scores={questState=2},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] run scoreboard players add frogChoirPapersPutUp sharedQuests 1
 
execute as @s[scores={questState=2},tag=inNormalState] if score frogChoirPapersPutUp sharedQuests matches 2.. run scoreboard players set frogChoirQuarrel sharedQuests 3
execute as @s[scores={playerID=1}] unless score frogChoirQuarrel p1Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score frogChoirQuarrel p2Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score frogChoirQuarrel p3Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score frogChoirQuarrel p4Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run scoreboard players set frogChoirQuarrel sharedQuests 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation frogChoirQuarrel p1Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation frogChoirQuarrel p2Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation frogChoirQuarrel p3Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation frogChoirQuarrel p4Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Put up all the flyers
### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1365,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Special selection
execute at @s[scores={questState=3}] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=noticeBoard,tag=hogwartsNoticeBoard] add questHover
execute as @s[scores={questState=3}] as @e[tag=questHover,limit=1,sort=nearest] if score @s toolID = frogChoirBoard1 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=3}] as @e[tag=questHover,limit=1,sort=nearest] if score @s toolID = frogChoirBoard2 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=3}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Title
execute as @s[scores={questState=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=1},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Повесьте листовки на доски объявлений (2 / 4)","color":"gold"}]
execute as @s[scores={questState=3,playerID=2},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Повесьте листовки на доски объявлений (2 / 4)","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Повесьте листовки на доски объявлений (2 / 4)","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Повесьте листовки на доски объявлений (2 / 4)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=3},tag=hasPressedF] if entity @e[tag=questHover] run scoreboard players operation frogChoirBoard3 sharedQuests = @e[tag=questHover,limit=1,sort=nearest] toolID
execute as @s[scores={questState=3},tag=hasPressedF] if entity @e[tag=questHover] at @s run playsound minecraft:custom.ui.book.open master @a ~ ~ ~ 1 1
execute as @s[scores={questState=3},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 2
execute as @s[scores={questState=3},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] run scoreboard players add frogChoirPapersPutUp sharedQuests 1

execute as @s[scores={questState=3},tag=inNormalState] if score frogChoirPapersPutUp sharedQuests matches 3.. run scoreboard players set frogChoirQuarrel sharedQuests 4
execute as @s[scores={playerID=1}] unless score frogChoirQuarrel p1Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=2}] unless score frogChoirQuarrel p2Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=3}] unless score frogChoirQuarrel p3Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=4}] unless score frogChoirQuarrel p4Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches 4 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run scoreboard players set frogChoirQuarrel sharedQuests 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation frogChoirQuarrel p1Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation frogChoirQuarrel p2Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation frogChoirQuarrel p3Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation frogChoirQuarrel p4Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 4 ###########################################################################################
#############
# Put up all the flyers
### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1365,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Special selection
execute at @s[scores={questState=4}] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=noticeBoard,tag=hogwartsNoticeBoard] add questHover
execute as @s[scores={questState=4}] as @e[tag=questHover,limit=1,sort=nearest] if score @s toolID = frogChoirBoard1 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=4}] as @e[tag=questHover,limit=1,sort=nearest] if score @s toolID = frogChoirBoard2 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=4}] as @e[tag=questHover,limit=1,sort=nearest] if score @s toolID = frogChoirBoard3 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=4}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch
# Title
execute as @s[scores={questState=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=4,playerID=1},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Повесьте листовки на доски объявлений (3 / 4)","color":"gold"}]
execute as @s[scores={questState=4,playerID=2},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Повесьте листовки на доски объявлений (3 / 4)","color":"gold"}]
execute as @s[scores={questState=4,playerID=3},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Повесьте листовки на доски объявлений (3 / 4)","color":"gold"}]
execute as @s[scores={questState=4,playerID=4},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Повесьте листовки на доски объявлений (3 / 4)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=4},tag=hasPressedF] if entity @e[tag=questHover] run scoreboard players operation frogChoirBoard4 sharedQuests = @e[tag=questHover,limit=1,sort=nearest] toolID
execute as @s[scores={questState=4},tag=hasPressedF] if entity @e[tag=questHover] at @s run playsound minecraft:custom.ui.book.open master @a ~ ~ ~ 1 1
execute as @s[scores={questState=4},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 2
execute as @s[scores={questState=4},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] run scoreboard players add frogChoirPapersPutUp sharedQuests 1

execute as @s[scores={questState=4},tag=inNormalState] if score frogChoirPapersPutUp sharedQuests matches 4.. run scoreboard players set frogChoirQuarrel sharedQuests 5
execute as @s[scores={playerID=1}] unless score frogChoirQuarrel p1Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=2}] unless score frogChoirQuarrel p2Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=3}] unless score frogChoirQuarrel p3Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=4}] unless score frogChoirQuarrel p4Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches 5 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run scoreboard players set frogChoirQuarrel sharedQuests 5
execute as @s[tag=newState] run scoreboard players set frogChoirBoard1 sharedQuests 0
execute as @s[tag=newState] run scoreboard players set frogChoirBoard2 sharedQuests 0
execute as @s[tag=newState] run scoreboard players set frogChoirBoard3 sharedQuests 0
execute as @s[tag=newState] run scoreboard players set frogChoirPapersPutUp sharedQuests 0
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set hogwarts172 p1convOverride 4
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set hogwarts172 p2convOverride 4
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set hogwarts172 p3convOverride 4
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set hogwarts172 p4convOverride 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation frogChoirQuarrel p1Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation frogChoirQuarrel p2Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation frogChoirQuarrel p3Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation frogChoirQuarrel p4Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 5 ###########################################################################################
#############
# Speak to Лайза Турпин

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1364,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=5},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 773.87 55.00 82.47
execute as @s[scores={questState=5,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=415},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

# Trigger
execute as @s[scores={questState=5},tag=inNormalState,tag=hasCompletedFrogChoirQuarrel] run scoreboard players set frogChoirQuarrel sharedQuests -1
execute as @s[scores={playerID=1}] unless score frogChoirQuarrel p1Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score frogChoirQuarrel p2Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score frogChoirQuarrel p3Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score frogChoirQuarrel p4Quests = frogChoirQuarrel sharedQuests if score frogChoirQuarrel sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set frogChoirQuarrel sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players add @s money 200
execute as @s[tag=completeQuest] run tag @s remove hasCompletedFrogChoirQuarrel
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set hogwarts172 p1convOverride 5
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set hogwarts172 p2convOverride 5
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set hogwarts172 p3convOverride 5
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set hogwarts172 p4convOverride 5
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation frogChoirQuarrel p1Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation frogChoirQuarrel p2Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation frogChoirQuarrel p3Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation frogChoirQuarrel p4Quests = frogChoirQuarrel sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
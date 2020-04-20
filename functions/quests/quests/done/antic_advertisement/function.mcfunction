##############################################
# Antic Advertisement
##############################################
scoreboard players set @s questID 51
scoreboard players operation @s questState = anticAdvertisement sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Travel to Hogwarts

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1413,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
### Function ###
### Trigger ###
execute as @s[scores={questState=1,lastRegion=1},tag=isTrackedQuest] run scoreboard players set anticAdvertisement sharedQuests 2


execute as @s[scores={playerID=1}] unless score anticAdvertisement p1Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score anticAdvertisement p2Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score anticAdvertisement p3Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score anticAdvertisement p4Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation anticAdvertisement p1Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation anticAdvertisement p2Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation anticAdvertisement p3Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation anticAdvertisement p4Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Put up all the flyers
### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1412,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Special selection
execute at @s[scores={questState=2}] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=noticeBoard,tag=hogwartsNoticeBoard] add questHover
execute as @s[scores={questState=2}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Title
execute as @s[scores={questState=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=2,playerID=1},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Hang the advertisements on 5 notice boards (0 / 5)","color":"gold"}]
execute as @s[scores={questState=2,playerID=2},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Hang the advertisements on 5 notice boards (0 / 5)","color":"gold"}]
execute as @s[scores={questState=2,playerID=3},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Hang the advertisements on 5 notice boards (0 / 5)","color":"gold"}]
execute as @s[scores={questState=2,playerID=4},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Hang the advertisements on 5 notice boards (0 / 5)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=2},tag=hasPressedF] if entity @e[tag=questHover] run scoreboard players operation zonkosBoard1 sharedQuests = @e[tag=questHover,limit=1,sort=nearest] toolID
execute as @s[scores={questState=2},tag=hasPressedF] if entity @e[tag=questHover] at @s run playsound minecraft:custom.ui.book.open master @a ~ ~ ~ 1 1
execute as @s[scores={questState=2},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 3
execute as @s[scores={questState=2},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] run scoreboard players add zonkosAdvertisementsPutUp sharedQuests 1

execute as @s[scores={questState=2},tag=inNormalState] if score zonkosAdvertisementsPutUp sharedQuests matches 1.. run scoreboard players set anticAdvertisement sharedQuests 3
execute as @s[scores={playerID=1}] unless score anticAdvertisement p1Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score anticAdvertisement p2Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score anticAdvertisement p3Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score anticAdvertisement p4Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation anticAdvertisement p1Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation anticAdvertisement p2Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation anticAdvertisement p3Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation anticAdvertisement p4Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 3 ###########################################################################################
#############
# Put up all the flyers
### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1412,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Special selection
execute at @s[scores={questState=3}] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=noticeBoard,tag=hogwartsNoticeBoard] add questHover
execute as @s[scores={questState=3}] as @e[tag=questHover,limit=1,sort=nearest] if score @s toolID = zonkosBoard1 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=3}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Title
execute as @s[scores={questState=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=1},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Hang the advertisements on 5 notice boards (1 / 5)","color":"gold"}]
execute as @s[scores={questState=3,playerID=2},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Hang the advertisements on 5 notice boards (1 / 5)","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Hang the advertisements on 5 notice boards (1 / 5)","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Hang the advertisements on 5 notice boards (1 / 5)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=3},tag=hasPressedF] if entity @e[tag=questHover] run scoreboard players operation zonkosBoard2 sharedQuests = @e[tag=questHover,limit=1,sort=nearest] toolID
execute as @s[scores={questState=3},tag=hasPressedF] if entity @e[tag=questHover] at @s run playsound minecraft:custom.ui.book.open master @a ~ ~ ~ 1 1
execute as @s[scores={questState=3},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 3
execute as @s[scores={questState=3},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] run scoreboard players add zonkosAdvertisementsPutUp sharedQuests 1
 
execute as @s[scores={questState=3},tag=inNormalState] if score zonkosAdvertisementsPutUp sharedQuests matches 2.. run scoreboard players set anticAdvertisement sharedQuests 4
execute as @s[scores={playerID=1}] unless score anticAdvertisement p1Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=2}] unless score anticAdvertisement p2Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=3}] unless score anticAdvertisement p3Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=4}] unless score anticAdvertisement p4Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 4 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation anticAdvertisement p1Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation anticAdvertisement p2Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation anticAdvertisement p3Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation anticAdvertisement p4Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 4 ###########################################################################################
#############
# Put up all the flyers
### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1412,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Special selection
execute at @s[scores={questState=4}] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=noticeBoard,tag=hogwartsNoticeBoard] add questHover
execute as @s[scores={questState=4}] as @e[tag=questHover,limit=1,sort=nearest] if score @s toolID = zonkosBoard1 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=4}] as @e[tag=questHover,limit=1,sort=nearest] if score @s toolID = zonkosBoard2 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=4}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Title
execute as @s[scores={questState=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=4,playerID=1},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Hang the advertisements on 5 notice boards (2 / 5)","color":"gold"}]
execute as @s[scores={questState=4,playerID=2},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Hang the advertisements on 5 notice boards (2 / 5)","color":"gold"}]
execute as @s[scores={questState=4,playerID=3},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Hang the advertisements on 5 notice boards (2 / 5)","color":"gold"}]
execute as @s[scores={questState=4,playerID=4},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Hang the advertisements on 5 notice boards (2 / 5)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=4},tag=hasPressedF] if entity @e[tag=questHover] run scoreboard players operation zonkosBoard3 sharedQuests = @e[tag=questHover,limit=1,sort=nearest] toolID
execute as @s[scores={questState=4},tag=hasPressedF] if entity @e[tag=questHover] at @s run playsound minecraft:custom.ui.book.open master @a ~ ~ ~ 1 1
execute as @s[scores={questState=4},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 3
execute as @s[scores={questState=4},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] run scoreboard players add zonkosAdvertisementsPutUp sharedQuests 1

execute as @s[scores={questState=4},tag=inNormalState] if score zonkosAdvertisementsPutUp sharedQuests matches 3.. run scoreboard players set anticAdvertisement sharedQuests 5
execute as @s[scores={playerID=1}] unless score anticAdvertisement p1Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=2}] unless score anticAdvertisement p2Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=3}] unless score anticAdvertisement p3Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=4}] unless score anticAdvertisement p4Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 5 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation anticAdvertisement p1Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation anticAdvertisement p2Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation anticAdvertisement p3Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation anticAdvertisement p4Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 5 ###########################################################################################
#############
# Put up all the flyers
### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1412,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Special selection
execute at @s[scores={questState=5}] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=noticeBoard,tag=hogwartsNoticeBoard] add questHover
execute as @s[scores={questState=5}] as @e[tag=questHover,limit=1,sort=nearest] if score @s toolID = zonkosBoard1 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=5}] as @e[tag=questHover,limit=1,sort=nearest] if score @s toolID = zonkosBoard2 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=5}] as @e[tag=questHover,limit=1,sort=nearest] if score @s toolID = zonkosBoard3 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=5}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch
# Title
execute as @s[scores={questState=5},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=5,playerID=1},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Hang the advertisements on 5 notice boards (3 / 5)","color":"gold"}]
execute as @s[scores={questState=5,playerID=2},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Hang the advertisements on 5 notice boards (3 / 5)","color":"gold"}]
execute as @s[scores={questState=5,playerID=3},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Hang the advertisements on 5 notice boards (3 / 5)","color":"gold"}]
execute as @s[scores={questState=5,playerID=4},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Hang the advertisements on 5 notice boards (3 / 5)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=5},tag=hasPressedF] if entity @e[tag=questHover] run scoreboard players operation zonkosBoard4 sharedQuests = @e[tag=questHover,limit=1,sort=nearest] toolID
execute as @s[scores={questState=5},tag=hasPressedF] if entity @e[tag=questHover] at @s run playsound minecraft:custom.ui.book.open master @a ~ ~ ~ 1 1
execute as @s[scores={questState=5},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 3
execute as @s[scores={questState=5},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] run scoreboard players add zonkosAdvertisementsPutUp sharedQuests 1

execute as @s[scores={questState=5},tag=inNormalState] if score zonkosAdvertisementsPutUp sharedQuests matches 4.. run scoreboard players set anticAdvertisement sharedQuests 6
execute as @s[scores={playerID=1}] unless score anticAdvertisement p1Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=2}] unless score anticAdvertisement p2Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=3}] unless score anticAdvertisement p3Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=4}] unless score anticAdvertisement p4Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 6 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation anticAdvertisement p1Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation anticAdvertisement p2Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation anticAdvertisement p3Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation anticAdvertisement p4Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 6 ###########################################################################################
#############
# Put up all the flyers
### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1412,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Special selection
execute at @s[scores={questState=6}] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=noticeBoard,tag=hogwartsNoticeBoard] add questHover
execute as @s[scores={questState=6}] as @e[tag=questHover,limit=1,sort=nearest] if score @s toolID = zonkosBoard1 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=6}] as @e[tag=questHover,limit=1,sort=nearest] if score @s toolID = zonkosBoard2 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=6}] as @e[tag=questHover,limit=1,sort=nearest] if score @s toolID = zonkosBoard3 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=6}] as @e[tag=questHover,limit=1,sort=nearest] if score @s toolID = zonkosBoard4 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=6}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Title
execute as @s[scores={questState=6},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=1},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Hang the advertisements on 5 notice boards (4 / 5)","color":"gold"}]
execute as @s[scores={questState=6,playerID=2},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Hang the advertisements on 5 notice boards (4 / 5)","color":"gold"}]
execute as @s[scores={questState=6,playerID=3},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Hang the advertisements on 5 notice boards (4 / 5)","color":"gold"}]
execute as @s[scores={questState=6,playerID=4},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Hang the advertisements on 5 notice boards (4 / 5)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=6},tag=hasPressedF] if entity @e[tag=questHover] run scoreboard players operation zonkosBoard4 sharedQuests = @e[tag=questHover,limit=1,sort=nearest] toolID
execute as @s[scores={questState=6},tag=hasPressedF] if entity @e[tag=questHover] at @s run playsound minecraft:custom.ui.book.open master @a ~ ~ ~ 1 1
execute as @s[scores={questState=6},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 3
execute as @s[scores={questState=6},tag=hasPressedF] as @e[tag=questHover,limit=1,sort=nearest] run scoreboard players add zonkosAdvertisementsPutUp sharedQuests 1


execute as @s[scores={questState=6},tag=inNormalState] if score zonkosAdvertisementsPutUp sharedQuests matches 5.. run scoreboard players set anticAdvertisement sharedQuests 7
execute as @s[scores={playerID=1}] unless score anticAdvertisement p1Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 7 run tag @s add newState
execute as @s[scores={playerID=2}] unless score anticAdvertisement p2Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 7 run tag @s add newState
execute as @s[scores={playerID=3}] unless score anticAdvertisement p3Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 7 run tag @s add newState
execute as @s[scores={playerID=4}] unless score anticAdvertisement p4Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches 7 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 7
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set zonkosBoard1 sharedQuests 0
execute as @s[tag=newState] run scoreboard players set zonkosBoard2 sharedQuests 0
execute as @s[tag=newState] run scoreboard players set zonkosBoard3 sharedQuests 0
execute as @s[tag=newState] run scoreboard players set zonkosBoard4 sharedQuests 0
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation anticAdvertisement p1Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation anticAdvertisement p2Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation anticAdvertisement p3Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation anticAdvertisement p4Quests = anticAdvertisement sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 7 ###########################################################################################
#############
# Return to Zonko in Hogsmeade

### Tracked Quest ###
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=7},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1411,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=7},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5448 100 2482
execute as @s[scores={questState=7,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=113},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=7},tag=isTrackedQuest] run scoreboard players set @s questRegion 4

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=7,convState=1,conv=113}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I put up all the advertisements\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 9
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


# Trigger
execute as @s[scores={questState=7},tag=inNormalState,tag=hasCompletedAnticAdvertisement] run scoreboard players set anticAdvertisement sharedQuests -1
execute as @s[scores={playerID=1}] unless score anticAdvertisement p1Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score anticAdvertisement p2Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score anticAdvertisement p3Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score anticAdvertisement p4Quests = anticAdvertisement sharedQuests if score anticAdvertisement sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set anticAdvertisement sharedQuests -1
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run tag @s remove hasCompletedAnticAdvertisement
execute as @s[tag=completeQuest] run scoreboard players add @s money 100
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation anticAdvertisement p1Quests = anticAdvertisement sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation anticAdvertisement p2Quests = anticAdvertisement sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation anticAdvertisement p3Quests = anticAdvertisement sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation anticAdvertisement p4Quests = anticAdvertisement sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# reset quest tracking boolean
tag @s remove isTrackedQuest
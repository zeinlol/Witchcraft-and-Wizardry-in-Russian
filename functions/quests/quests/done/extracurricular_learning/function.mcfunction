##############################################
# Extracurricular learning
##############################################
scoreboard players set @s questID 29
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.extracurricularLearning"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest


#############
## State 1 ###########################################################################################
#############
# Speak to Hermione

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1536,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 776.50 76.00 87.51
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=1,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=14},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=1,convState=1,conv=14}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1
execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Flitwick said that you might teach me something\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 8
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[scores={questState=1},tag=hasSpokenToHermioneAfterBrackiumEmendo,tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set hermione p1convOverride 12
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set hermione p2convOverride 12
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set hermione p3convOverride 12
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set hermione p4convOverride 12
execute as @s[tag=newState] run tag @s remove hasSpokenToHermioneAfterBrackiumEmendo
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Отправиться в Hogsmeade
### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1535,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 1010.35 78.00 -180.75
execute as @s[scores={questState=2,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=2,lastRegion=3},tag=isTrackedQuest] at @s if entity @s[x=512,y=0,z=-2048,dx=178,dy=196,dz=180] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 703.45 65.00 -1868.58
execute as @s[scores={questState=2,lastRegion=3},tag=isTrackedQuest] at @s unless entity @s[x=512,y=0,z=-2048,dx=178,dy=196,dz=180] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 779.69 81.00 -2042.85
execute as @s[scores={questState=2,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=2,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=2,lastRegion=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5458.16 99.75 2464.77

execute as @s[scores={questState=2,lastRegion=4},tag=inNormalState,x=5185,y=87,z=2432,dx=278,dy=158,dz=100] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState


#############
## State 3 ###########################################################################################
#############
# Put up all the flyers
### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1534,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 4

# Special selection
execute at @s[scores={questState=3}] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=noticeBoard,tag=hogsmeadeNoticeBoard] add questHover
execute as @s[scores={questState=3}] as @e[type=!item_frame,tag=questHover,tag=hogsmeadeNoticeBoard,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Title
execute as @s[scores={questState=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=1},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Hang the flyers on 5 notice boards (0 / 5)","color":"gold"}]
execute as @s[scores={questState=3,playerID=2},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Hang the flyers on 5 notice boards (0 / 5)","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Hang the flyers on 5 notice boards (0 / 5)","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Hang the flyers on 5 notice boards (0 / 5)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=3},tag=hasPressedF] if entity @e[tag=questHover,tag=hogsmeadeNoticeBoard] run scoreboard players operation extracurricularBoard1 sharedQuests = @e[tag=questHover,limit=1,sort=nearest] toolID
execute as @s[scores={questState=3},tag=hasPressedF] if entity @e[tag=questHover,tag=hogsmeadeNoticeBoard] at @s run playsound minecraft:custom.ui.book.open master @a ~ ~ ~ 1 1
execute as @s[scores={questState=3},tag=hasPressedF] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 20
execute as @s[scores={questState=3},tag=hasPressedF] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] run scoreboard players add spewFlyersPutUp sharedQuests 1

execute as @s[scores={questState=3},tag=inNormalState] if score spewFlyersPutUp sharedQuests matches 1.. run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState


#############
## State 4 ###########################################################################################
#############
# Put up all the flyers
### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1534,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4

# Special selection
execute at @s[scores={questState=4}] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=noticeBoard,tag=hogsmeadeNoticeBoard] add questHover
execute as @s[scores={questState=4}] as @e[tag=questHover,limit=1,sort=nearest] if score @s toolID = extracurricularBoard1 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=4}] as @e[type=!item_frame,tag=questHover,tag=hogsmeadeNoticeBoard,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Title
execute as @s[scores={questState=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=4,playerID=1},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Hang the flyers on 5 notice boards (1 / 5)","color":"gold"}]
execute as @s[scores={questState=4,playerID=2},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Hang the flyers on 5 notice boards (1 / 5)","color":"gold"}]
execute as @s[scores={questState=4,playerID=3},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Hang the flyers on 5 notice boards (1 / 5)","color":"gold"}]
execute as @s[scores={questState=4,playerID=4},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Hang the flyers on 5 notice boards (1 / 5)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=4},tag=hasPressedF] if entity @e[tag=questHover,tag=hogsmeadeNoticeBoard] run scoreboard players operation extracurricularBoard2 sharedQuests = @e[tag=questHover,limit=1,sort=nearest] toolID
execute as @s[scores={questState=4},tag=hasPressedF] if entity @e[tag=questHover,tag=hogsmeadeNoticeBoard] at @s run playsound minecraft:custom.ui.book.open master @a ~ ~ ~ 1 1
execute as @s[scores={questState=4},tag=hasPressedF] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 20
execute as @s[scores={questState=4},tag=hasPressedF] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] run scoreboard players add spewFlyersPutUp sharedQuests 1
 
execute as @s[scores={questState=4},tag=inNormalState] if score spewFlyersPutUp sharedQuests matches 2.. run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 5 ###########################################################################################
#############
# Put up all the flyers
### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1534,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 4

# Special selection
execute at @s[scores={questState=5}] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,tag=hogsmeadeNoticeBoard,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=noticeBoard,tag=hogsmeadeNoticeBoard] add questHover
execute as @s[scores={questState=5}] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] if score @s toolID = extracurricularBoard1 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=5}] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] if score @s toolID = extracurricularBoard2 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=5}] as @e[type=!item_frame,tag=questHover,tag=hogsmeadeNoticeBoard,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Title
execute as @s[scores={questState=5},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=5,playerID=1},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Hang the flyers on 5 notice boards (2 / 5)","color":"gold"}]
execute as @s[scores={questState=5,playerID=2},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Hang the flyers on 5 notice boards (2 / 5)","color":"gold"}]
execute as @s[scores={questState=5,playerID=3},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Hang the flyers on 5 notice boards (2 / 5)","color":"gold"}]
execute as @s[scores={questState=5,playerID=4},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Hang the flyers on 5 notice boards (2 / 5)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=5},tag=hasPressedF] if entity @e[tag=questHover,tag=hogsmeadeNoticeBoard] run scoreboard players operation extracurricularBoard3 sharedQuests = @e[tag=questHover,limit=1,sort=nearest] toolID
execute as @s[scores={questState=5},tag=hasPressedF] if entity @e[tag=questHover,tag=hogsmeadeNoticeBoard] at @s run playsound minecraft:custom.ui.book.open master @a ~ ~ ~ 1 1
execute as @s[scores={questState=5},tag=hasPressedF] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 20
execute as @s[scores={questState=5},tag=hasPressedF] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] run scoreboard players add spewFlyersPutUp sharedQuests 1

execute as @s[scores={questState=5},tag=inNormalState] if score spewFlyersPutUp sharedQuests matches 3.. run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState


#############
## State 6 ###########################################################################################
#############
# Put up all the flyers
### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1534,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 4

# Special selection
execute at @s[scores={questState=6}] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,tag=hogsmeadeNoticeBoard,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=noticeBoard,tag=hogsmeadeNoticeBoard] add questHover
execute as @s[scores={questState=6}] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] if score @s toolID = extracurricularBoard1 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=6}] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] if score @s toolID = extracurricularBoard2 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=6}] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] if score @s toolID = extracurricularBoard3 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=6}] as @e[type=!item_frame,tag=questHover,tag=hogsmeadeNoticeBoard,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch
# Title
execute as @s[scores={questState=6},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=1},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Hang the flyers on 5 notice boards (3 / 5)","color":"gold"}]
execute as @s[scores={questState=6,playerID=2},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Hang the flyers on 5 notice boards (3 / 5)","color":"gold"}]
execute as @s[scores={questState=6,playerID=3},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Hang the flyers on 5 notice boards (3 / 5)","color":"gold"}]
execute as @s[scores={questState=6,playerID=4},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Hang the flyers on 5 notice boards (3 / 5)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=6},tag=hasPressedF] if entity @e[tag=questHover,tag=hogsmeadeNoticeBoard] run scoreboard players operation extracurricularBoard4 sharedQuests = @e[tag=questHover,limit=1,sort=nearest] toolID
execute as @s[scores={questState=6},tag=hasPressedF] if entity @e[tag=questHover,tag=hogsmeadeNoticeBoard] at @s run playsound minecraft:custom.ui.book.open master @a ~ ~ ~ 1 1
execute as @s[scores={questState=6},tag=hasPressedF] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 20
execute as @s[scores={questState=6},tag=hasPressedF] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] run scoreboard players add spewFlyersPutUp sharedQuests 1

execute as @s[scores={questState=6},tag=inNormalState] if score spewFlyersPutUp sharedQuests matches 4.. run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 7
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 7 ###########################################################################################
#############
# Put up all the flyers
### Tracked Quest ###
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=7},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1534,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=7},tag=isTrackedQuest] run scoreboard players set @s questRegion 4

# Special selection
execute at @s[scores={questState=7}] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,tag=hogsmeadeNoticeBoard,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=noticeBoard,tag=hogsmeadeNoticeBoard] add questHover
execute as @s[scores={questState=7}] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] if score @s toolID = extracurricularBoard1 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=7}] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] if score @s toolID = extracurricularBoard2 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=7}] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] if score @s toolID = extracurricularBoard3 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=7}] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] if score @s toolID = extracurricularBoard4 sharedQuests run tag @s remove questHover
execute as @s[scores={questState=7}] as @e[type=!item_frame,tag=questHover,tag=hogsmeadeNoticeBoard,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Title
execute as @s[scores={questState=7},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=7,playerID=1},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Hang the flyers on 5 notice boards (4 / 5)","color":"gold"}]
execute as @s[scores={questState=7,playerID=2},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Hang the flyers on 5 notice boards (4 / 5)","color":"gold"}]
execute as @s[scores={questState=7,playerID=3},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Hang the flyers on 5 notice boards (4 / 5)","color":"gold"}]
execute as @s[scores={questState=7,playerID=4},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Hang the flyers on 5 notice boards (4 / 5)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=7},tag=hasPressedF] if entity @e[tag=questHover,tag=hogsmeadeNoticeBoard] run scoreboard players operation extracurricularBoard4 sharedQuests = @e[tag=questHover,limit=1,sort=nearest] toolID
execute as @s[scores={questState=7},tag=hasPressedF] if entity @e[tag=questHover,tag=hogsmeadeNoticeBoard] at @s run playsound minecraft:custom.ui.book.open master @a ~ ~ ~ 1 1
execute as @s[scores={questState=7},tag=hasPressedF] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 20
execute as @s[scores={questState=7},tag=hasPressedF] as @e[tag=questHover,tag=hogsmeadeNoticeBoard,limit=1,sort=nearest] run scoreboard players add spewFlyersPutUp sharedQuests 1


execute as @s[scores={questState=7},tag=inNormalState] if score spewFlyersPutUp sharedQuests matches 5.. run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 8
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set extracurricularBoard1 sharedQuests 0
execute as @s[tag=newState] run scoreboard players set extracurricularBoard2 sharedQuests 0
execute as @s[tag=newState] run scoreboard players set extracurricularBoard3 sharedQuests 0
execute as @s[tag=newState] run scoreboard players set extracurricularBoard4 sharedQuests 0
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set hermione p1convOverride 13
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set hermione p2convOverride 13
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set hermione p3convOverride 13
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set hermione p4convOverride 13
execute as @s[tag=newState] run tag @s remove newState

#############
## State 8 ###########################################################################################
#############
# Return to Hogwarts and speak to hermione

### Tracked Quest ###
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=8},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1533,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=8,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=8,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=8,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=8,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 776.39 76.00 87.56
execute as @s[scores={questState=8,lastRegion=3},tag=isTrackedQuest] at @s if entity @s[x=730,dx=470,y=0,dy=255,z=-2048,dz=179] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 702.01 65.00 -1867.73
execute as @s[scores={questState=8,lastRegion=3},tag=isTrackedQuest] at @s unless entity @s[x=730,dx=470,y=0,dy=255,z=-2048,dz=179] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 564.81 90.00 -2018.65
execute as @s[scores={questState=8,lastRegion=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5121.53 80.75 2079.63
execute as @s[scores={questState=1,lastRegion=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 6
execute as @s[scores={questState=1,lastRegion=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2351.53 64.00 -774.45
execute as @s[scores={questState=1,lastRegion=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 9
execute as @s[scores={questState=1,lastRegion=9},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 6850.44 36.25 3101.50

execute as @s[scores={questState=8,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=14},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=8,convState=1,conv=14}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1
execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Flitwick mentioned that you might be able to teach me something\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 12
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1

### Trigger ###
execute as @s[scores={questState=8},tag=hasSpokenToHermioneAfterPuttingUpTheFlyers,tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 9
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set hermione p1convOverride 20
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set hermione p2convOverride 20
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set hermione p3convOverride 20
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set hermione p4convOverride 20
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 9 ###########################################################################################
#############
# Wait for everyone to arrive

### Tracked Quest ###
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=9},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1533,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasPutUpSpewFlyers,tag=play] unless score @s trackedQuestID matches 29 run scoreboard players add @p[tag=activePlayer] suitableCount 1
execute as @a[tag=!hasPutUpSpewFlyers,tag=play,scores={trackedQuestID=29,trackQuestState=..9}] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute as @a[tag=!hasPutUpSpewFlyers,scores={trackedQuestID=29,trackQuestState=9},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=9},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=9,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Wait for everyone to get ready (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=9,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Wait for everyone to get ready (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=9,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Wait for everyone to get ready (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=9,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Wait for everyone to get ready (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]

# Trigger
execute as @s[scores={questState=9},tag=inNormalState,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add completeQuest



#################
### Completed ###
#################

# Advancement ui:	
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set @s overrideRespawn 13
execute as @s[tag=completeQuest] run scoreboard players set @s questQueueID 17
execute as @s[tag=completeQuest] run scoreboard players set @s questQueue 120
execute as @s[tag=completeQuest] run tag @s add queingQuest
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=15}] run tag @s add cutsceneLeader
execute as @s[tag=completeQuest] run scoreboard players set @s cutSceneID 15
execute as @s[tag=completeQuest] run function hp:cutscenes/init_cutscene
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set hermione p1convOverride 18
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set hermione p2convOverride 18
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set hermione p3convOverride 18
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set hermione p4convOverride 18
execute as @s[tag=completeQuest] run scoreboard players set spewFlyersPutUp sharedQuests 0
execute as @s[tag=completeQuest] run scoreboard players set @s unlockedSpell 4
execute as @s[tag=completeQuest] run tag @s remove hasSpokenToHermioneAfterPuttingUpTheFlyers
execute as @s[tag=completeQuest] run tag @s add maraudersMapLocked
execute as @s[tag=completeQuest] run tag @s add lockTrackedQuest
execute as @s[tag=completeQuest] run tag @s add hasPutUpSpewFlyers
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
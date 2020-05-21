##############################################
# One Man's Trash
##############################################
scoreboard players set @s questID 25
scoreboard players operation @s questState = oneMansTrash sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Отправиться в London

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1516,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 0
execute as @s[scores={questState=1,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=35},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1 ~ 0 0 0 100 1 force @s


### Trigger ###
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest,tag=inNormalState] run scoreboard players set oneMansTrash sharedQuests 2

execute as @s[scores={playerID=1}] unless score oneMansTrash p1Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score oneMansTrash p2Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score oneMansTrash p3Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score oneMansTrash p4Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation oneMansTrash p1Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation oneMansTrash p2Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation oneMansTrash p3Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation oneMansTrash p4Quests = oneMansTrash sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## Pickup  ############################################################################################
#############

# Special selection
execute as @s[scores={questState=2..11},tag=!collectedMuggleRubbish1] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=crate,tag=muggleRubbish1] add questHover
execute as @s[scores={questState=2..11},tag=!collectedMuggleRubbish2] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=crate,tag=muggleRubbish2] add questHover
execute as @s[scores={questState=2..11},tag=!collectedMuggleRubbish3] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=crate,tag=muggleRubbish3] add questHover
execute as @s[scores={questState=2..11},tag=!collectedMuggleRubbish4] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=crate,tag=muggleRubbish4] add questHover
execute as @s[scores={questState=2..11},tag=!collectedMuggleRubbish5] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=crate,tag=muggleRubbish5] add questHover
execute as @s[scores={questState=2..11},tag=!collectedMuggleRubbish6] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=crate,tag=muggleRubbish6] add questHover
execute as @s[scores={questState=2..11},tag=!collectedMuggleRubbish7] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=crate,tag=muggleRubbish7] add questHover
execute as @s[scores={questState=2..11},tag=!collectedMuggleRubbish8] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=crate,tag=muggleRubbish8] add questHover
execute as @s[scores={questState=2..11},tag=!collectedMuggleRubbish9] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=crate,tag=muggleRubbish9] add questHover
execute as @s[scores={questState=2..11},tag=!collectedMuggleRubbish10] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=crate,tag=muggleRubbish10] add questHover
execute as @s[scores={questState=2..11}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch


execute as @s[tag=hasPressedF,scores={questState=2..11}] if entity @e[tag=questHover,tag=muggleRubbish,tag=muggleRubbish1,limit=1] run tag @s add collectedMuggleRubbish1
execute as @s[tag=hasPressedF,scores={questState=2..11}] if entity @e[tag=questHover,tag=muggleRubbish,tag=muggleRubbish2,limit=1] run tag @s add collectedMuggleRubbish2
execute as @s[tag=hasPressedF,scores={questState=2..11}] if entity @e[tag=questHover,tag=muggleRubbish,tag=muggleRubbish3,limit=1] run tag @s add collectedMuggleRubbish3
execute as @s[tag=hasPressedF,scores={questState=2..11}] if entity @e[tag=questHover,tag=muggleRubbish,tag=muggleRubbish4,limit=1] run tag @s add collectedMuggleRubbish4
execute as @s[tag=hasPressedF,scores={questState=2..11}] if entity @e[tag=questHover,tag=muggleRubbish,tag=muggleRubbish5,limit=1] run tag @s add collectedMuggleRubbish5
execute as @s[tag=hasPressedF,scores={questState=2..11}] if entity @e[tag=questHover,tag=muggleRubbish,tag=muggleRubbish6,limit=1] run tag @s add collectedMuggleRubbish6
execute as @s[tag=hasPressedF,scores={questState=2..11}] if entity @e[tag=questHover,tag=muggleRubbish,tag=muggleRubbish7,limit=1] run tag @s add collectedMuggleRubbish7
execute as @s[tag=hasPressedF,scores={questState=2..11}] if entity @e[tag=questHover,tag=muggleRubbish,tag=muggleRubbish8,limit=1] run tag @s add collectedMuggleRubbish8
execute as @s[tag=hasPressedF,scores={questState=2..11}] if entity @e[tag=questHover,tag=muggleRubbish,tag=muggleRubbish9,limit=1] run tag @s add collectedMuggleRubbish9
execute as @s[tag=hasPressedF,scores={questState=2..11}] if entity @e[tag=questHover,tag=muggleRubbish,tag=muggleRubbish10,limit=1] run tag @s add collectedMuggleRubbish10
execute as @s[tag=hasPressedF,scores={questState=2..11}] if entity @e[tag=questHover,tag=muggleRubbish,limit=1] at @s run function hp:quests/ding_sound
execute as @s[tag=hasPressedF,scores={questState=2..11}] if entity @e[tag=questHover,tag=muggleRubbish,limit=1] at @s run playsound minecraft:custom.ui.inventory.interaction.open_inventory master @a ~ ~ ~ 1 1


# Title
execute as @s[tag=isTrackedQuest,scores={questState=2..11}] run scoreboard players set @s tmp 0
execute as @s[tag=isTrackedQuest,tag=collectedMuggleRubbish1,scores={questState=2..11}] run scoreboard players add @s tmp 1
execute as @s[tag=isTrackedQuest,tag=collectedMuggleRubbish2,scores={questState=2..11}] run scoreboard players add @s tmp 1
execute as @s[tag=isTrackedQuest,tag=collectedMuggleRubbish3,scores={questState=2..11}] run scoreboard players add @s tmp 1
execute as @s[tag=isTrackedQuest,tag=collectedMuggleRubbish4,scores={questState=2..11}] run scoreboard players add @s tmp 1
execute as @s[tag=isTrackedQuest,tag=collectedMuggleRubbish5,scores={questState=2..11}] run scoreboard players add @s tmp 1
execute as @s[tag=isTrackedQuest,tag=collectedMuggleRubbish6,scores={questState=2..11}] run scoreboard players add @s tmp 1
execute as @s[tag=isTrackedQuest,tag=collectedMuggleRubbish7,scores={questState=2..11}] run scoreboard players add @s tmp 1
execute as @s[tag=isTrackedQuest,tag=collectedMuggleRubbish8,scores={questState=2..11}] run scoreboard players add @s tmp 1
execute as @s[tag=isTrackedQuest,tag=collectedMuggleRubbish9,scores={questState=2..11}] run scoreboard players add @s tmp 1
execute as @s[tag=isTrackedQuest,tag=collectedMuggleRubbish10,scores={questState=2..11}] run scoreboard players add @s tmp 1

execute as @s[scores={questState=2..11},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=2..11,playerID=1},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Collect discarded muggle items for Mr. Weasley (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / 10)","color":"gold"}]
execute as @s[scores={questState=2..11,playerID=2},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Collect discarded muggle items for Mr. Weasley (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / 10)","color":"gold"}]
execute as @s[scores={questState=2..11,playerID=3},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Collect discarded muggle items for Mr. Weasley (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / 10)","color":"gold"}]
execute as @s[scores={questState=2..11,playerID=4},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Collect discarded muggle items for Mr. Weasley (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / 10)","color":"gold"}]



#############
## State 2 ###########################################################################################
#############
# Collect discarded muggle items for Mr. Weasley.

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1515,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2780.02 56.00 312.03
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2


execute as @s[scores={questState=2},tag=collectedMuggleRubbish1] run scoreboard players set oneMansTrash sharedQuests 3

### Trigger ###
execute as @s[scores={playerID=1}] unless score oneMansTrash p1Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score oneMansTrash p2Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score oneMansTrash p3Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score oneMansTrash p4Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation oneMansTrash p1Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation oneMansTrash p2Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation oneMansTrash p3Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation oneMansTrash p4Quests = oneMansTrash sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Collect discarded muggle items for Mr. Weasley.

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1515,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2910.50 57.00 191.58
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 2


execute as @s[scores={questState=3},tag=collectedMuggleRubbish2] run scoreboard players set oneMansTrash sharedQuests 4


### Trigger ###
execute as @s[scores={playerID=1}] unless score oneMansTrash p1Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=2}] unless score oneMansTrash p2Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=3}] unless score oneMansTrash p3Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=4}] unless score oneMansTrash p4Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 4 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation oneMansTrash p1Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation oneMansTrash p2Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation oneMansTrash p3Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation oneMansTrash p4Quests = oneMansTrash sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 4 ###########################################################################################
#############
# Collect discarded muggle items for Mr. Weasley.

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1515,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2956.59 61.00 78.57
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 2


execute as @s[scores={questState=4},tag=collectedMuggleRubbish3] run scoreboard players set oneMansTrash sharedQuests 5


### Trigger ###
execute as @s[scores={playerID=1}] unless score oneMansTrash p1Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=2}] unless score oneMansTrash p2Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=3}] unless score oneMansTrash p3Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=4}] unless score oneMansTrash p4Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 5 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation oneMansTrash p1Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation oneMansTrash p2Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation oneMansTrash p3Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation oneMansTrash p4Quests = oneMansTrash sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 5 ###########################################################################################
#############
# Collect discarded muggle items for Mr. Weasley.

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1515,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2833.49 61.00 177.44
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 2


execute as @s[scores={questState=5},tag=collectedMuggleRubbish4] run scoreboard players set oneMansTrash sharedQuests 6


### Trigger ###
execute as @s[scores={playerID=1}] unless score oneMansTrash p1Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=2}] unless score oneMansTrash p2Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=3}] unless score oneMansTrash p3Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=4}] unless score oneMansTrash p4Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 6 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation oneMansTrash p1Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation oneMansTrash p2Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation oneMansTrash p3Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation oneMansTrash p4Quests = oneMansTrash sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 6 ###########################################################################################
#############
# Collect discarded muggle items for Mr. Weasley.

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1515,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2367 61 126
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 2


execute as @s[scores={questState=6},tag=collectedMuggleRubbish5] run scoreboard players set oneMansTrash sharedQuests 7


### Trigger ###
execute as @s[scores={playerID=1}] unless score oneMansTrash p1Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 7 run tag @s add newState
execute as @s[scores={playerID=2}] unless score oneMansTrash p2Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 7 run tag @s add newState
execute as @s[scores={playerID=3}] unless score oneMansTrash p3Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 7 run tag @s add newState
execute as @s[scores={playerID=4}] unless score oneMansTrash p4Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 7 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 7
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation oneMansTrash p1Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation oneMansTrash p2Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation oneMansTrash p3Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation oneMansTrash p4Quests = oneMansTrash sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 7 ###########################################################################################
#############
# Collect discarded muggle items for Mr. Weasley.

### Tracked Quest ###
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=7},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1515,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=7},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2519.50 57.00 -4.34
execute as @s[scores={questState=7},tag=isTrackedQuest] run scoreboard players set @s questRegion 2


execute as @s[scores={questState=7},tag=collectedMuggleRubbish6] run scoreboard players set oneMansTrash sharedQuests 8


### Trigger ###
execute as @s[scores={playerID=1}] unless score oneMansTrash p1Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 8 run tag @s add newState
execute as @s[scores={playerID=2}] unless score oneMansTrash p2Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 8 run tag @s add newState
execute as @s[scores={playerID=3}] unless score oneMansTrash p3Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 8 run tag @s add newState
execute as @s[scores={playerID=4}] unless score oneMansTrash p4Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 8 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 8
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation oneMansTrash p1Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation oneMansTrash p2Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation oneMansTrash p3Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation oneMansTrash p4Quests = oneMansTrash sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 8 ###########################################################################################
#############
# Collect discarded muggle items for Mr. Weasley.

### Tracked Quest ###
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=8},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1515,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=8},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2673.00 61.00 -174.91
execute as @s[scores={questState=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 2


execute as @s[scores={questState=8},tag=collectedMuggleRubbish7] run scoreboard players set oneMansTrash sharedQuests 9

### Trigger ###
execute as @s[scores={playerID=1}] unless score oneMansTrash p1Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 9 run tag @s add newState
execute as @s[scores={playerID=2}] unless score oneMansTrash p2Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 9 run tag @s add newState
execute as @s[scores={playerID=3}] unless score oneMansTrash p3Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 9 run tag @s add newState
execute as @s[scores={playerID=4}] unless score oneMansTrash p4Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 9 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 9
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation oneMansTrash p1Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation oneMansTrash p2Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation oneMansTrash p3Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation oneMansTrash p4Quests = oneMansTrash sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 9 ###########################################################################################
#############
# Collect discarded muggle items for Mr. Weasley.

### Tracked Quest ###
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=9},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1515,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=9},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2875.96 61.00 27.98
execute as @s[scores={questState=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 2


execute as @s[scores={questState=9},tag=collectedMuggleRubbish8] run scoreboard players set oneMansTrash sharedQuests 10


### Trigger ###
execute as @s[scores={playerID=1}] unless score oneMansTrash p1Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 10 run tag @s add newState
execute as @s[scores={playerID=2}] unless score oneMansTrash p2Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 10 run tag @s add newState
execute as @s[scores={playerID=3}] unless score oneMansTrash p3Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 10 run tag @s add newState
execute as @s[scores={playerID=4}] unless score oneMansTrash p4Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 10 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 10
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation oneMansTrash p1Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation oneMansTrash p2Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation oneMansTrash p3Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation oneMansTrash p4Quests = oneMansTrash sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 10 ###########################################################################################
#############
# Collect discarded muggle items for Mr. Weasley.

### Tracked Quest ###
execute as @s[scores={questState=10},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=10},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1515,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=10},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=10},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2863.36 52.00 561.13


execute as @s[scores={questState=10},tag=isTrackedQuest] run scoreboard players set @s questRegion 2


execute as @s[scores={questState=10},tag=collectedMuggleRubbish9] run scoreboard players set oneMansTrash sharedQuests 11


### Trigger ###
execute as @s[scores={playerID=1}] unless score oneMansTrash p1Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 11 run tag @s add newState
execute as @s[scores={playerID=2}] unless score oneMansTrash p2Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 11 run tag @s add newState
execute as @s[scores={playerID=3}] unless score oneMansTrash p3Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 11 run tag @s add newState
execute as @s[scores={playerID=4}] unless score oneMansTrash p4Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 11 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 11
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation oneMansTrash p1Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation oneMansTrash p2Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation oneMansTrash p3Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation oneMansTrash p4Quests = oneMansTrash sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 11 ###########################################################################################
#############
# Collect discarded muggle items for Mr. Weasley.

### Tracked Quest ###
execute as @s[scores={questState=11},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=11},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1515,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=11},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=11},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2679.18 57.00 330.22
execute as @s[scores={questState=11},tag=isTrackedQuest] run scoreboard players set @s questRegion 2


execute as @s[scores={questState=11},tag=collectedMuggleRubbish10] run scoreboard players set oneMansTrash sharedQuests 12

### Trigger ###
### Trigger ###
execute as @s[scores={playerID=1}] unless score oneMansTrash p1Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 12 run tag @s add newState
execute as @s[scores={playerID=2}] unless score oneMansTrash p2Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 12 run tag @s add newState
execute as @s[scores={playerID=3}] unless score oneMansTrash p3Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 12 run tag @s add newState
execute as @s[scores={playerID=4}] unless score oneMansTrash p4Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches 12 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 12
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove collectedMuggleRubbish1
execute as @s[tag=newState] run tag @s remove collectedMuggleRubbish2
execute as @s[tag=newState] run tag @s remove collectedMuggleRubbish3
execute as @s[tag=newState] run tag @s remove collectedMuggleRubbish4
execute as @s[tag=newState] run tag @s remove collectedMuggleRubbish5
execute as @s[tag=newState] run tag @s remove collectedMuggleRubbish6
execute as @s[tag=newState] run tag @s remove collectedMuggleRubbish7
execute as @s[tag=newState] run tag @s remove collectedMuggleRubbish8
execute as @s[tag=newState] run tag @s remove collectedMuggleRubbish9
execute as @s[tag=newState] run tag @s remove collectedMuggleRubbish10
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set arthur p1convOverride 5
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set arthur p2convOverride 5
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set arthur p3convOverride 5
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set arthur p4convOverride 5
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation oneMansTrash p1Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation oneMansTrash p2Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation oneMansTrash p3Quests = oneMansTrash sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation oneMansTrash p4Quests = oneMansTrash sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 12 ###########################################################################################
#############
# Return to Mr. Weasley

### Tracked Quest ###
execute as @s[scores={questState=12},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=12},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1514,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=12},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=12},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2868.67 57.00 774.26
execute as @s[scores={questState=12},tag=isTrackedQuest] run scoreboard players set @s questRegion 10
execute as @s[scores={questState=12,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=39},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

### Function ###
execute as @s[scores={questState=12},tag=inNormalState,tag=hasCompletedOneMansTrashQuest] run scoreboard players set oneMansTrash sharedQuests -1
execute as @s[scores={playerID=1}] unless score oneMansTrash p1Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score oneMansTrash p2Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score oneMansTrash p3Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score oneMansTrash p4Quests = oneMansTrash sharedQuests if score oneMansTrash sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players add @s money 150
execute as @s[tag=completeQuest] run scoreboard players set oneMansTrash sharedQuests -1
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run tag @s remove hasCompletedOneMansTrashQuest
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set arthur p1convOverride 1
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set arthur p2convOverride 1
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set arthur p3convOverride 1
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set arthur p4convOverride 1

execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation oneMansTrash p1Quests = oneMansTrash sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation oneMansTrash p2Quests = oneMansTrash sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation oneMansTrash p3Quests = oneMansTrash sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation oneMansTrash p4Quests = oneMansTrash sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest





# reset quest tracking boolean
tag @s remove isTrackedQuest
##############################################
# Snowman Supplies
##############################################
scoreboard players set @s questID 53
scoreboard players operation @s questState = snowmanSupplies sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Find the Snowman supplies

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1408,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 4

### Function ###
execute as @s[scores={questState=1}] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=snowmanSupply,tag=!pickedUp] add questHover
execute as @s[scores={questState=1}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

### Trigger ###
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=snowmanSupply,tag=!pickedUp] run scoreboard players add snowmanSuppliesCollected sharedQuests 1
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=snowmanSupply,tag=!pickedUp] at @s run playsound minecraft:custom.ui.inventory.game_inventory.generic.picked_up_generic master @a
execute as @s[tag=hasPressedF] as @e[tag=questHover,tag=snowmanSupply,tag=!pickedUp] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:gold_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[tag=hasPressedF] as @e[tag=questHover,tag=snowmanSupply,tag=!pickedUp] run tag @s add pickedUp


# Title
execute as @s[scores={questState=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=1,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Find supplies to finish the snowman (","color":"gold"},{"score":{"name":"snowmanSuppliesCollected","objective":"sharedQuests"},"color":"gold"},{"text":" / 5","color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=1,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Find supplies to finish the snowman (","color":"gold"},{"score":{"name":"snowmanSuppliesCollected","objective":"sharedQuests"},"color":"gold"},{"text":" / 5","color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=1,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Find supplies to finish the snowman (","color":"gold"},{"score":{"name":"snowmanSuppliesCollected","objective":"sharedQuests"},"color":"gold"},{"text":" / 5","color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=1,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Find supplies to finish the snowman (","color":"gold"},{"score":{"name":"snowmanSuppliesCollected","objective":"sharedQuests"},"color":"gold"},{"text":" / 5","color":"gold"},{"text":")","color":"gold"}]


execute as @s[scores={questState=1}] if score snowmanSuppliesCollected sharedQuests matches 5.. run scoreboard players set snowmanSupplies sharedQuests 2

execute as @s[scores={playerID=1}] unless score snowmanSupplies p1Quests = snowmanSupplies sharedQuests if score snowmanSupplies sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score snowmanSupplies p2Quests = snowmanSupplies sharedQuests if score snowmanSupplies sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score snowmanSupplies p3Quests = snowmanSupplies sharedQuests if score snowmanSupplies sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score snowmanSupplies p4Quests = snowmanSupplies sharedQuests if score snowmanSupplies sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound

execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation snowmanSupplies p1Quests = snowmanSupplies sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation snowmanSupplies p2Quests = snowmanSupplies sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation snowmanSupplies p3Quests = snowmanSupplies sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation snowmanSupplies p4Quests = snowmanSupplies sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Finish the Snowman

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1407,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5419 104 2426
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 4

execute as @s[scores={questState=2},tag=hasFinishedSnowman] run scoreboard players set snowmanSupplies sharedQuests 3



### Function ###
execute as @s[scores={questState=2}] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=snowman,tag=!pickedUp] add questHover
execute as @s[scores={questState=2}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

### Trigger ###
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=snowman] run scoreboard players set snowmanSupplies sharedQuests 3
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=snowman] at @s run playsound minecraft:custom.ui.inventory.game_inventory.generic.picked_up_generic master @a
execute as @s[tag=hasPressedF] as @e[tag=questHover,tag=snowman] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1297}}]}




execute as @s[scores={playerID=1}] unless score snowmanSupplies p1Quests = snowmanSupplies sharedQuests if score snowmanSupplies sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score snowmanSupplies p2Quests = snowmanSupplies sharedQuests if score snowmanSupplies sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score snowmanSupplies p3Quests = snowmanSupplies sharedQuests if score snowmanSupplies sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score snowmanSupplies p4Quests = snowmanSupplies sharedQuests if score snowmanSupplies sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set michaelCorner p1convOverride 4
execute as @s[tag=newState] run scoreboard players set michaelCorner p2convOverride 4
execute as @s[tag=newState] run scoreboard players set michaelCorner p3convOverride 4
execute as @s[tag=newState] run scoreboard players set michaelCorner p4convOverride 4
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation snowmanSupplies p1Quests = snowmanSupplies sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation snowmanSupplies p2Quests = snowmanSupplies sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation snowmanSupplies p3Quests = snowmanSupplies sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation snowmanSupplies p4Quests = snowmanSupplies sharedQuests
execute as @s[tag=newState] run tag @s remove hasFinishedSnowman
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Speak to Майкл Корнер

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1406,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5418 103 2424
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=3,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=437},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s


### Trigger ###
execute as @s[scores={questState=3},tag=inNormalState,tag=hasCompletedSnowmanSupplies] run scoreboard players set snowmanSupplies sharedQuests -1
execute as @s[scores={playerID=1}] unless score snowmanSupplies p1Quests = snowmanSupplies sharedQuests if score snowmanSupplies sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score snowmanSupplies p2Quests = snowmanSupplies sharedQuests if score snowmanSupplies sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score snowmanSupplies p3Quests = snowmanSupplies sharedQuests if score snowmanSupplies sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score snowmanSupplies p4Quests = snowmanSupplies sharedQuests if score snowmanSupplies sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players add @s money 75
execute as @s[tag=completeQuest] run scoreboard players set snowmanSupplies sharedQuests -1
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run tag @s remove hasCompletedSnowmanSupplies
execute as @s[tag=completeQuest] run scoreboard players set snowmanSuppliesCollected sharedQuests 0
execute as @s[tag=completeQuest] run scoreboard players set michaelCorner p1convOverride 5
execute as @s[tag=completeQuest] run scoreboard players set michaelCorner p2convOverride 5
execute as @s[tag=completeQuest] run scoreboard players set michaelCorner p3convOverride 5
execute as @s[tag=completeQuest] run scoreboard players set michaelCorner p4convOverride 5
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation snowmanSupplies p1Quests = snowmanSupplies sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation snowmanSupplies p2Quests = snowmanSupplies sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation snowmanSupplies p3Quests = snowmanSupplies sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation snowmanSupplies p4Quests = snowmanSupplies sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# reset quest tracking boolean
tag @s remove isTrackedQuest


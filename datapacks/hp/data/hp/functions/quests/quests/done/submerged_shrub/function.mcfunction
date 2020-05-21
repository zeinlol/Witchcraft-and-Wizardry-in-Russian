##############################################
# Submerged Shrub
##############################################
scoreboard players set @s questID 61
scoreboard players operation @s questState = submergedShrub sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Collect the underwater plant

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1378,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 723 7 274

### Function ###
execute as @s[scores={questState=1}] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=submergedShrub] add questHover
execute as @s[scores={questState=1}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

### Trigger ###
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=submergedShrub] run scoreboard players set submergedShrub sharedQuests 2
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=submergedShrub] at @s run playsound minecraft:custom.inventory.pickup.meat master @a
execute as @s[tag=hasPressedF] as @e[tag=questHover,tag=submergedShrub] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:gold_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}



execute as @s[scores={playerID=1}] unless score submergedShrub p1Quests = submergedShrub sharedQuests if score submergedShrub sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score submergedShrub p2Quests = submergedShrub sharedQuests if score submergedShrub sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score submergedShrub p3Quests = submergedShrub sharedQuests if score submergedShrub sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score submergedShrub p4Quests = submergedShrub sharedQuests if score submergedShrub sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set mariettaEdgecombe p1convOverride 4
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set mariettaEdgecombe p2convOverride 4
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set mariettaEdgecombe p3convOverride 4
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set mariettaEdgecombe p4convOverride 4
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation submergedShrub p1Quests = submergedShrub sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation submergedShrub p2Quests = submergedShrub sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation submergedShrub p3Quests = submergedShrub sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation submergedShrub p4Quests = submergedShrub sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Return to Мариэтта Эджком

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1377,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 803 16 305
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=418},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

# Trigger
execute as @s[scores={questState=2},tag=inNormalState,tag=hasCompletedSubmergedShrub] run scoreboard players set submergedShrub sharedQuests -1
execute as @s[scores={playerID=1}] unless score submergedShrub p1Quests = submergedShrub sharedQuests if score submergedShrub sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score submergedShrub p2Quests = submergedShrub sharedQuests if score submergedShrub sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score submergedShrub p3Quests = submergedShrub sharedQuests if score submergedShrub sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score submergedShrub p4Quests = submergedShrub sharedQuests if score submergedShrub sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set submergedShrub sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players add @s money 100
execute as @s[tag=completeQuest] run tag @s remove hasCompletedSubmergedShrub
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set mariettaEdgecombe p1convOverride 5
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set mariettaEdgecombe p2convOverride 5
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set mariettaEdgecombe p3convOverride 5
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set mariettaEdgecombe p4convOverride 5
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation submergedShrub p1Quests = submergedShrub sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation submergedShrub p2Quests = submergedShrub sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation submergedShrub p3Quests = submergedShrub sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation submergedShrub p4Quests = submergedShrub sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
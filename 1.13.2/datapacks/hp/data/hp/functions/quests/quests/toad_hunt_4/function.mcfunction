##############################################
# Охота за Жабой
##############################################
scoreboard players set @s questID 39
scoreboard players operation @s questState = toadHunt4 sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Find the Toad

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1447,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

execute as @s[scores={playerID=1}] unless score toadHunt4 p1Quests = toadHunt4 sharedQuests if score toadHunt4 sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score toadHunt4 p2Quests = toadHunt4 sharedQuests if score toadHunt4 sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score toadHunt4 p3Quests = toadHunt4 sharedQuests if score toadHunt4 sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score toadHunt4 p4Quests = toadHunt4 sharedQuests if score toadHunt4 sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set neville p1convOverride 19
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set neville p2convOverride 19
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set neville p3convOverride 19
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set neville p4convOverride 19

execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation toadHunt4 p1Quests = toadHunt4 sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation toadHunt4 p2Quests = toadHunt4 sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation toadHunt4 p3Quests = toadHunt4 sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation toadHunt4 p4Quests = toadHunt4 sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Return to neville with the toad

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1446,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 830 51 153
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=15},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###

### Trigger ###
execute as @s[scores={questState=2},tag=inNormalState,tag=hasCompletedToadHunt4] run scoreboard players set toadHunt4 sharedQuests -1
execute as @s[scores={playerID=1}] unless score toadHunt4 p1Quests = toadHunt4 sharedQuests if score toadHunt4 sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score toadHunt4 p2Quests = toadHunt4 sharedQuests if score toadHunt4 sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score toadHunt4 p3Quests = toadHunt4 sharedQuests if score toadHunt4 sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score toadHunt4 p4Quests = toadHunt4 sharedQuests if score toadHunt4 sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players add @s money 50
execute as @s[tag=completeQuest] run scoreboard players set toadHunt4 sharedQuests -1
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run tag @s remove hasCompletedToadHunt4
execute as @s[tag=completeQuest] run scoreboard players set toadHuntIsGoing sharedQuests 0
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set neville p1convOverride 6
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set neville p2convOverride 6
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set neville p3convOverride 6
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set neville p4convOverride 6

execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set hogwarts131 p1convOverride 0
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set hogwarts131 p2convOverride 0
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set hogwarts131 p3convOverride 0
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set hogwarts131 p4convOverride 0
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set hogwarts132 p1convOverride 0
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set hogwarts132 p2convOverride 0
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set hogwarts132 p3convOverride 0
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set hogwarts132 p4convOverride 0
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set hogwarts133 p1convOverride 0
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set hogwarts133 p2convOverride 0
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set hogwarts133 p3convOverride 0
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set hogwarts133 p4convOverride 0
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set hogwarts134 p1convOverride 0
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set hogwarts134 p2convOverride 0
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set hogwarts134 p3convOverride 0
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set hogwarts134 p4convOverride 0
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set hogwarts135 p1convOverride 0
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set hogwarts135 p2convOverride 0
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set hogwarts135 p3convOverride 0
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set hogwarts135 p4convOverride 0
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set hogwarts155 p1convOverride 0
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set hogwarts155 p2convOverride 0
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set hogwarts155 p3convOverride 0
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set hogwarts155 p4convOverride 0


execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation toadHunt4 p1Quests = toadHunt4 sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation toadHunt4 p2Quests = toadHunt4 sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation toadHunt4 p3Quests = toadHunt4 sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation toadHunt4 p4Quests = toadHunt4 sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# Complete Quest Cheat
execute as @s[tag=completeTrackedQuest] run scoreboard players set toadHunt4 sharedQuests -1
execute as @s[tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

# This is to make the correct trevor toad visible only when the quest is active
execute as @s[scores={questState=1}] as @e[tag=trevor4,tag=!visible,limit=1] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:122}}]}
execute as @s[scores={questState=1}] as @e[tag=trevor4,tag=!visible,limit=1] run tag @s add visible
execute as @s[scores={questState=1},tag=gameLeader] as @e[tag=trevor4,tag=!visible,limit=1] run function hp:quests/quests/toad_hunt/croak

# reset quest tracking boolean
tag @s remove isTrackedQuest
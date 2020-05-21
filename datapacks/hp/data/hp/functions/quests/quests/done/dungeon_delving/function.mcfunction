##############################################
# Dungeon Delving
##############################################
scoreboard players set @s questID 58
scoreboard players operation @s questState = dungeonDelving sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Pick up the dungeon key

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1387,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5236 103 2513

# Special selection
execute as @s[scores={questState=1}] at @s positioned ^ ^-.25 ^1 run tag @e[distance=..2,limit=1,sort=nearest,tag=dungeonKey] add questHover
execute as @s[scores={questState=1}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

### Trigger ###
execute as @s[tag=inNormalState,tag=hasPressedF,scores={questState=1},tag=isTrackedQuest] as @e[tag=questHover,tag=dungeonKey] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:gold_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[tag=inNormalState,tag=hasPressedF,scores={questState=1},tag=isTrackedQuest] if entity @e[tag=questHover,tag=dungeonKey] at @s run playsound minecraft:custom.ui.inventory.game_inventory.key.picked_up_key master @a ~ ~ ~ 2 1
execute as @s[tag=inNormalState,tag=hasPressedF,scores={questState=1},tag=isTrackedQuest] if entity @e[tag=questHover,tag=dungeonKey] run tag @s add hasPickedUpDungeonKey


execute as @s[scores={questState=1},tag=isTrackedQuest,tag=hasPickedUpDungeonKey] run scoreboard players set dungeonDelving sharedQuests 2


### Trigger ##
execute as @s[scores={playerID=1}] unless score dungeonDelving p1Quests = dungeonDelving sharedQuests if score dungeonDelving sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score dungeonDelving p2Quests = dungeonDelving sharedQuests if score dungeonDelving sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score dungeonDelving p3Quests = dungeonDelving sharedQuests if score dungeonDelving sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score dungeonDelving p4Quests = dungeonDelving sharedQuests if score dungeonDelving sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation dungeonDelving p1Quests = dungeonDelving sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation dungeonDelving p2Quests = dungeonDelving sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation dungeonDelving p3Quests = dungeonDelving sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation dungeonDelving p4Quests = dungeonDelving sharedQuests
execute as @s[tag=newState] run tag @s remove hasPickedUpDungeonKey
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Enter the dungeon in the Forbidden Forest

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1386,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=2,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=2,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=2,lastRegion=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 8
execute as @s[scores={questState=2,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing -101 5 234
execute as @s[scores={questState=2,lastRegion=3},tag=isTrackedQuest] at @s if entity @s[x=730,dx=470,y=0,dy=255,z=-2048,dz=179] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 702.01 65.00 -1867.73
execute as @s[scores={questState=2,lastRegion=3},tag=isTrackedQuest] at @s unless entity @s[x=730,dx=470,y=0,dy=255,z=-2048,dz=179] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 564.81 90.00 -2018.65
execute as @s[scores={questState=2,lastRegion=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5121.53 80.75 2079.63
execute as @s[scores={questState=2,lastRegion=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 6
execute as @s[scores={questState=2,lastRegion=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2351.53 64.00 -774.45
execute as @s[scores={questState=2,lastRegion=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 9
execute as @s[scores={questState=2,lastRegion=9},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 6850.44 36.25 3101.50

# Trigger
execute positioned 1847 98 936 as @s[distance=..20,scores={questState=2},tag=isTrackedQuest] run scoreboard players set dungeonDelving sharedQuests 3
execute as @s[x=1638,y=0,z=738,dx=228,dy=104,dz=203,scores={questState=2},tag=isTrackedQuest] run scoreboard players set dungeonDelving sharedQuests 3


execute as @s[scores={playerID=1}] unless score dungeonDelving p1Quests = dungeonDelving sharedQuests if score dungeonDelving sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score dungeonDelving p2Quests = dungeonDelving sharedQuests if score dungeonDelving sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score dungeonDelving p3Quests = dungeonDelving sharedQuests if score dungeonDelving sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score dungeonDelving p4Quests = dungeonDelving sharedQuests if score dungeonDelving sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation dungeonDelving p1Quests = dungeonDelving sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation dungeonDelving p2Quests = dungeonDelving sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation dungeonDelving p3Quests = dungeonDelving sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation dungeonDelving p4Quests = dungeonDelving sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Retrieve the Urn

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1385,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3,lastRegion=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3,lastRegion=8},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=3,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=3,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=3,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=3,lastRegion=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 8
execute as @s[scores={questState=3,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing -101 5 234
execute as @s[scores={questState=3,lastRegion=3},tag=isTrackedQuest] at @s if entity @s[x=730,dx=470,y=0,dy=255,z=-2048,dz=179] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 702.01 65.00 -1867.73
execute as @s[scores={questState=3,lastRegion=3},tag=isTrackedQuest] at @s unless entity @s[x=730,dx=470,y=0,dy=255,z=-2048,dz=179] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 564.81 90.00 -2018.65
execute as @s[scores={questState=3,lastRegion=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5121.53 80.75 2079.63
execute as @s[scores={questState=3,lastRegion=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 6
execute as @s[scores={questState=3,lastRegion=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2351.53 64.00 -774.45
execute as @s[scores={questState=3,lastRegion=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 9
execute as @s[scores={questState=3,lastRegion=9},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 6850.44 36.25 3101.50


# Special selection
execute as @s[scores={questState=3}] at @s positioned ^ ^-.25 ^1 run tag @e[distance=..2,limit=1,sort=nearest,tag=fancyUrn] add questHover
execute as @s[scores={questState=3}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

### Trigger ###
execute as @s[tag=inNormalState,tag=hasPressedF,scores={questState=3},tag=isTrackedQuest] as @e[tag=questHover,tag=fancyUrn] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:gold_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[tag=inNormalState,tag=hasPressedF,scores={questState=3},tag=isTrackedQuest] if entity @e[tag=questHover,tag=fancyUrn] at @s run playsound minecraft:custom.ui.inventory.game_inventory.generic.picked_up_generic master @a ~ ~ ~ 2 1
execute as @s[tag=inNormalState,tag=hasPressedF,scores={questState=3},tag=isTrackedQuest] if entity @e[tag=questHover,tag=fancyUrn] run tag @s add hasPickedUpFancyUrn

# Trigger
execute as @s[tag=hasPickedUpFancyUrn,scores={questState=3},tag=isTrackedQuest] run scoreboard players set dungeonDelving sharedQuests 4

execute as @s[scores={playerID=1}] unless score dungeonDelving p1Quests = dungeonDelving sharedQuests if score dungeonDelving sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=2}] unless score dungeonDelving p2Quests = dungeonDelving sharedQuests if score dungeonDelving sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=3}] unless score dungeonDelving p3Quests = dungeonDelving sharedQuests if score dungeonDelving sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=4}] unless score dungeonDelving p4Quests = dungeonDelving sharedQuests if score dungeonDelving sharedQuests matches 4 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set ernestPotts p1convOverride 7
execute as @s[tag=newState] run scoreboard players set ernestPotts p2convOverride 7
execute as @s[tag=newState] run scoreboard players set ernestPotts p3convOverride 7
execute as @s[tag=newState] run scoreboard players set ernestPotts p4convOverride 7
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation dungeonDelving p1Quests = dungeonDelving sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation dungeonDelving p2Quests = dungeonDelving sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation dungeonDelving p3Quests = dungeonDelving sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation dungeonDelving p4Quests = dungeonDelving sharedQuests
execute as @s[tag=newState] run tag @s remove hasPickedUpFancyUrn
execute as @s[tag=newState] run tag @s remove newState


#############
## State 4 ###########################################################################################
#############
# Speak to Эрнест Поттс

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1384,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5320 101 2498
execute as @s[scores={questState=4,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=121},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=4,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 1010.35 78.00 -180.75
execute as @s[scores={questState=4,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=4,lastRegion=3},tag=isTrackedQuest] at @s if entity @s[x=512,y=0,z=-2048,dx=178,dy=196,dz=180] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 703.45 65.00 -1868.58
execute as @s[scores={questState=4,lastRegion=3},tag=isTrackedQuest] at @s unless entity @s[x=512,y=0,z=-2048,dx=178,dy=196,dz=180] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 779.69 81.00 -2042.85
execute as @s[scores={questState=4,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=4,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=4,lastRegion=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5234 96 2515
execute as @s[scores={questState=4,lastRegion=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 8
execute as @s[scores={questState=4,lastRegion=8},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 1810 42 873

execute as @s[scores={questState=4},tag=inNormalState,tag=hasCompleteddungeonDelving] run scoreboard players set dungeonDelving sharedQuests -1
execute as @s[scores={playerID=1}] unless score dungeonDelving p1Quests = dungeonDelving sharedQuests if score dungeonDelving sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score dungeonDelving p2Quests = dungeonDelving sharedQuests if score dungeonDelving sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score dungeonDelving p3Quests = dungeonDelving sharedQuests if score dungeonDelving sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score dungeonDelving p4Quests = dungeonDelving sharedQuests if score dungeonDelving sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set dungeonDelving sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players add @s money 300
execute as @s[tag=completeQuest] run tag @s remove hasCompleteddungeonDelving
execute as @s[tag=completeQuest] run scoreboard players set ernestPotts p1convOverride 8
execute as @s[tag=completeQuest] run scoreboard players set ernestPotts p2convOverride 8
execute as @s[tag=completeQuest] run scoreboard players set ernestPotts p4convOverride 8
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation dungeonDelving p1Quests = dungeonDelving sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation dungeonDelving p2Quests = dungeonDelving sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation dungeonDelving p3Quests = dungeonDelving sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation dungeonDelving p4Quests = dungeonDelving sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
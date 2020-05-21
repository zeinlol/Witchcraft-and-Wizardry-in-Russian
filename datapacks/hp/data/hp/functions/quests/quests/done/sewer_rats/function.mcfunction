##############################################
# Sewer Rats
##############################################
scoreboard players set @s questID 32
scoreboard players operation @s questState = elikElixersRats sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Go to the cellar

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1351,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] positioned 2830 39 959 if entity @s[distance=..15] run tag @s add questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] positioned 2830 39 959 unless entity @s[distance=..15] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2830 39 959
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
### Function ###

### Trigger ###
execute as @s[scores={questState=1},tag=isTrackedQuest,x=2822,y=39,z=955,dx=14,dy=5,dz=8] run scoreboard players set elikElixersRats sharedQuests 2
execute as @s[scores={playerID=1}] unless score elikElixersRats p1Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score elikElixersRats p2Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score elikElixersRats p3Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score elikElixersRats p4Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation elikElixersRats p1Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation elikElixersRats p2Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation elikElixersRats p3Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation elikElixersRats p4Quests = elikElixersRats sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Find where the rats are coming from

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1350,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

### Trigger ###
execute positioned 2852.57 26.00 992.47 as @s[distance=..8,scores={questState=2},tag=isTrackedQuest] run scoreboard players set elikElixersRats sharedQuests 3

execute as @s[scores={playerID=1}] unless score elikElixersRats p1Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score elikElixersRats p2Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score elikElixersRats p3Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score elikElixersRats p4Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 31
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation elikElixersRats p1Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation elikElixersRats p2Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation elikElixersRats p3Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation elikElixersRats p4Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set elikElixersRatsTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set elikElixersRatsTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set elikElixersRatsTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set elikElixersRatsTimer p4Quests 220
execute as @s[tag=newState,tag=gameLeader] run setblock 2852 26 983 air
execute as @s[tag=newState,tag=gameLeader] run setblock 2852 27 983 air
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Fight the waves of creatures (wave 1)

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1349,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 1.. run scoreboard players remove elikElixersRatsTimer p1Quests 1
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 1.. run scoreboard players remove elikElixersRatsTimer p2Quests 1
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 1.. run scoreboard players remove elikElixersRatsTimer p3Quests 1
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 1.. run scoreboard players remove elikElixersRatsTimer p4Quests 1


execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"Defeat 3 waves of enemies!","color":"gold"}]
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"Defeat 3 waves of enemies!","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"Defeat 3 waves of enemies!","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"Defeat 3 waves of enemies!","color":"gold"}]

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Wave 1","color":"gold"}]	
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Wave 1","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Wave 1","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Wave 1","color":"gold"}]

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 1 at @s run tag @s remove musicController
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 1 at @s run tag @s remove musicController
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 1 at @s run tag @s remove musicController
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 1 at @s run tag @s remove musicController

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 1 at @s run function hp:music/music/wands_at_the_ready
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 1 at @s run function hp:music/music/wands_at_the_ready
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 1 at @s run function hp:music/music/wands_at_the_ready
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 1 at @s run function hp:music/music/wands_at_the_ready

execute as @s[scores={questState=3,playerID=1},tag=gameLeader] if score elikElixersRatsTimer p1Quests matches 1 run function hp:quests/quests/sewer_rats/wave1_enemies
execute as @s[scores={questState=3,playerID=2},tag=gameLeader] if score elikElixersRatsTimer p2Quests matches 1 run function hp:quests/quests/sewer_rats/wave1_enemies
execute as @s[scores={questState=3,playerID=3},tag=gameLeader] if score elikElixersRatsTimer p3Quests matches 1 run function hp:quests/quests/sewer_rats/wave1_enemies
execute as @s[scores={questState=3,playerID=4},tag=gameLeader] if score elikElixersRatsTimer p4Quests matches 1 run function hp:quests/quests/sewer_rats/wave1_enemies


# Count the enemies
scoreboard players set @s tmp 9
execute as @e[tag=creature,scores={waveID=1,questID=32}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Defeat the opponents (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" of 9)","color":"gold"}]
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Defeat the opponents (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" of 9)","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Defeat the opponents (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" of 9)","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Defeat the opponents (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" of 9)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=3,playerID=1,tmp=9},tag=inNormalState] if score elikElixersRatsTimer p1Quests matches 0 run scoreboard players set elikElixersRats sharedQuests 4
execute as @s[scores={questState=3,playerID=2,tmp=9},tag=inNormalState] if score elikElixersRatsTimer p2Quests matches 0 run scoreboard players set elikElixersRats sharedQuests 4
execute as @s[scores={questState=3,playerID=3,tmp=9},tag=inNormalState] if score elikElixersRatsTimer p3Quests matches 0 run scoreboard players set elikElixersRats sharedQuests 4
execute as @s[scores={questState=3,playerID=4,tmp=9},tag=inNormalState] if score elikElixersRatsTimer p4Quests matches 0 run scoreboard players set elikElixersRats sharedQuests 4
execute as @s[scores={playerID=1}] unless score elikElixersRats p1Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=2}] unless score elikElixersRats p2Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=3}] unless score elikElixersRats p3Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=4}] unless score elikElixersRats p4Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 4 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation elikElixersRats p1Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation elikElixersRats p2Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation elikElixersRats p3Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation elikElixersRats p4Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set elikElixersRatsTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set elikElixersRatsTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set elikElixersRatsTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set elikElixersRatsTimer p4Quests 220
execute as @s[tag=newState] run tag @s remove newState

#############
## State 8 ###########################################################################################
#############
# Fight the waves of creatures (wave 2)

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1349,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 1.. run scoreboard players remove elikElixersRatsTimer p1Quests 1
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 1.. run scoreboard players remove elikElixersRatsTimer p2Quests 1
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 1.. run scoreboard players remove elikElixersRatsTimer p3Quests 1
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 1.. run scoreboard players remove elikElixersRatsTimer p4Quests 1


execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"Wave complete!","color":"gold"}]
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"Wave complete!","color":"gold"}]
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"Wave complete!","color":"gold"}]
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"Wave complete!","color":"gold"}]

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Wave 2","color":"gold"}]
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Wave 2","color":"gold"}]
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Wave 2","color":"gold"}]
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Wave 2","color":"gold"}]

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=4,playerID=1},tag=gameLeader] if score elikElixersRatsTimer p1Quests matches 1 run function hp:quests/quests/sewer_rats/wave2_enemies
execute as @s[scores={questState=4,playerID=2},tag=gameLeader] if score elikElixersRatsTimer p2Quests matches 1 run function hp:quests/quests/sewer_rats/wave2_enemies
execute as @s[scores={questState=4,playerID=3},tag=gameLeader] if score elikElixersRatsTimer p3Quests matches 1 run function hp:quests/quests/sewer_rats/wave2_enemies
execute as @s[scores={questState=4,playerID=4},tag=gameLeader] if score elikElixersRatsTimer p4Quests matches 1 run function hp:quests/quests/sewer_rats/wave2_enemies


# Count the enemies
scoreboard players set @s tmp 9
execute as @e[tag=creature,scores={waveID=2,questID=32}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Defeat the opponents (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" of 9)","color":"gold"}]
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Defeat the opponents (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" of 9)","color":"gold"}]
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Defeat the opponents (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" of 9)","color":"gold"}]
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Defeat the opponents (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" of 9)","color":"gold"}]


### Trigger ###
execute as @s[scores={questState=4,playerID=1,tmp=9},tag=inNormalState] if score elikElixersRatsTimer p1Quests matches 0 run scoreboard players set elikElixersRats sharedQuests 5
execute as @s[scores={questState=4,playerID=2,tmp=9},tag=inNormalState] if score elikElixersRatsTimer p2Quests matches 0 run scoreboard players set elikElixersRats sharedQuests 5
execute as @s[scores={questState=4,playerID=3,tmp=9},tag=inNormalState] if score elikElixersRatsTimer p3Quests matches 0 run scoreboard players set elikElixersRats sharedQuests 5
execute as @s[scores={questState=4,playerID=4,tmp=9},tag=inNormalState] if score elikElixersRatsTimer p4Quests matches 0 run scoreboard players set elikElixersRats sharedQuests 5
execute as @s[scores={playerID=1}] unless score elikElixersRats p1Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=2}] unless score elikElixersRats p2Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=3}] unless score elikElixersRats p3Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=4}] unless score elikElixersRats p4Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 5 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation elikElixersRats p1Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation elikElixersRats p2Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation elikElixersRats p3Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation elikElixersRats p4Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set elikElixersRatsTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set elikElixersRatsTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set elikElixersRatsTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set elikElixersRatsTimer p4Quests 220
execute as @s[tag=newState] run tag @s remove newState

#############
## State 9 ###########################################################################################
#############
# Fight the waves of creatures (wave 3)

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1349,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 1.. run scoreboard players remove elikElixersRatsTimer p1Quests 1
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 1.. run scoreboard players remove elikElixersRatsTimer p2Quests 1
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 1.. run scoreboard players remove elikElixersRatsTimer p3Quests 1
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 1.. run scoreboard players remove elikElixersRatsTimer p4Quests 1


execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"Wave complete!","color":"gold"}]
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"Wave complete!","color":"gold"}]
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"Wave complete!","color":"gold"}]
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"Wave complete!","color":"gold"}]

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Wave 3","color":"gold"}]
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Wave 3","color":"gold"}]
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Wave 3","color":"gold"}]
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Wave 3","color":"gold"}]

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=5,playerID=1},tag=gameLeader] if score elikElixersRatsTimer p1Quests matches 1 run function hp:quests/quests/sewer_rats/wave3_enemies
execute as @s[scores={questState=5,playerID=2},tag=gameLeader] if score elikElixersRatsTimer p2Quests matches 1 run function hp:quests/quests/sewer_rats/wave3_enemies
execute as @s[scores={questState=5,playerID=3},tag=gameLeader] if score elikElixersRatsTimer p3Quests matches 1 run function hp:quests/quests/sewer_rats/wave3_enemies
execute as @s[scores={questState=5,playerID=4},tag=gameLeader] if score elikElixersRatsTimer p4Quests matches 1 run function hp:quests/quests/sewer_rats/wave3_enemies


# Count the enemies
scoreboard players set @s tmp 9
execute as @e[tag=creature,scores={waveID=3,questID=32}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Defeat the opponents (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" of 9)","color":"gold"}]
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Defeat the opponents (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" of 9)","color":"gold"}]
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Defeat the opponents (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" of 9)","color":"gold"}]
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Defeat the opponents (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" of 9)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=5,playerID=1,tmp=9},tag=inNormalState] if score elikElixersRatsTimer p1Quests matches 0 run scoreboard players set elikElixersRats sharedQuests 6
execute as @s[scores={questState=5,playerID=2,tmp=9},tag=inNormalState] if score elikElixersRatsTimer p2Quests matches 0 run scoreboard players set elikElixersRats sharedQuests 6
execute as @s[scores={questState=5,playerID=3,tmp=9},tag=inNormalState] if score elikElixersRatsTimer p3Quests matches 0 run scoreboard players set elikElixersRats sharedQuests 6
execute as @s[scores={questState=5,playerID=4,tmp=9},tag=inNormalState] if score elikElixersRatsTimer p4Quests matches 0 run scoreboard players set elikElixersRats sharedQuests 6
execute as @s[scores={playerID=1}] unless score elikElixersRats p1Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=2}] unless score elikElixersRats p2Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=3}] unless score elikElixersRats p3Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 6 run tag @s add newState
execute as @s[scores={playerID=4}] unless score elikElixersRats p4Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches 6 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 0
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation elikElixersRats p1Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation elikElixersRats p2Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation elikElixersRats p3Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation elikElixersRats p4Quests = elikElixersRats sharedQuests
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set elikElixersRatsTimer p1Quests 100
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set elikElixersRatsTimer p2Quests 100
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set elikElixersRatsTimer p3Quests 100
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set elikElixersRatsTimer p4Quests 100
execute as @s[tag=newState,tag=gameLeader] run setblock 2852 26 983 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[tag=newState,tag=gameLeader] run setblock 2852 27 983 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[tag=newState] run tag @s remove newState


#############
## State 6 ###########################################################################################
#############
# Return to Элик Трисгистус

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1348,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2829.51 46.00 957.43
execute as @s[scores={questState=6,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=57},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 2


execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 1.. run scoreboard players remove elikElixersRatsTimer p1Quests 1
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 1.. run scoreboard players remove elikElixersRatsTimer p2Quests 1
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 1.. run scoreboard players remove elikElixersRatsTimer p3Quests 1
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 1.. run scoreboard players remove elikElixersRatsTimer p4Quests 1


execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches 1..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches 1..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches 1..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches 1..100 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score elikElixersRatsTimer p1Quests matches ..100 run bossbar set minecraft:player1quest name ["",{"text":"Rats defeated!","color":"gold"}]
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score elikElixersRatsTimer p2Quests matches ..100 run bossbar set minecraft:player3quest name ["",{"text":"Rats defeated!","color":"gold"}]
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score elikElixersRatsTimer p3Quests matches ..100 run bossbar set minecraft:player2quest name ["",{"text":"Rats defeated!","color":"gold"}]
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score elikElixersRatsTimer p4Quests matches ..100 run bossbar set minecraft:player4quest name ["",{"text":"Rats defeated!","color":"gold"}]

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=6,convState=1,conv=57}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1
execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Yes I did!\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 10
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

### Trigger ###
execute as @s[scores={questState=6},tag=inNormalState,tag=hasCompletedelikElixersRats] run scoreboard players set elikElixersRats sharedQuests -1
execute as @s[scores={playerID=1}] unless score elikElixersRats p1Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score elikElixersRats p2Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score elikElixersRats p3Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score elikElixersRats p4Quests = elikElixersRats sharedQuests if score elikElixersRats sharedQuests matches -1 run tag @s add completeQuest


#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set elikElixersRats sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players add @s money 150
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run tag @s remove hasCompletedelikElixersRats
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set broderickBryce p1convOverride 2
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set broderickBryce p2convOverride 2
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set broderickBryce p3convOverride 2
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set broderickBryce p4convOverride 2
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation elikElixersRats p1Quests = elikElixersRats sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation elikElixersRats p2Quests = elikElixersRats sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation elikElixersRats p3Quests = elikElixersRats sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation elikElixersRats p4Quests = elikElixersRats sharedQuests

# Reset potions stock
execute as @s[tag=completeQuest] store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."storedItem.MurtlapEssence.count" int 1 run scoreboard players set tmp tmp 1
execute as @s[tag=completeQuest] store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."storedItem.PotionOfMagicka.count" int 1 run scoreboard players set tmp tmp 1
execute as @s[tag=completeQuest] store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."storedItem.ElixirOfLife.count" int 1 run scoreboard players set tmp tmp 1
execute as @s[tag=completeQuest] store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."storedItem.StrengthPotion.count" int 1 run scoreboard players set tmp tmp 1
execute as @s[tag=completeQuest] store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."storedItem.InvigorationDraught.count" int 1 run scoreboard players set tmp tmp 1
execute as @s[tag=completeQuest] store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."storedItem.AntidoteToPoisons.count" int 1 run scoreboard players set tmp tmp 1
execute as @s[tag=completeQuest] store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."storedItem.EssenceOfGillyweed.count" int 1 run scoreboard players set tmp tmp 1
execute as @s[tag=completeQuest] store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."invItem.MurtlapEssence.count" int 1 run scoreboard players set tmp tmp 1
execute as @s[tag=completeQuest] store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."invItem.PotionOfMagicka.count" int 1 run scoreboard players set tmp tmp 1
execute as @s[tag=completeQuest] store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."invItem.ElixirOfLife.count" int 1 run scoreboard players set tmp tmp 1
execute as @s[tag=completeQuest] store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."invItem.StrengthPotion.count" int 1 run scoreboard players set tmp tmp 1
execute as @s[tag=completeQuest] store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."invItem.InvigorationDraught.count" int 1 run scoreboard players set tmp tmp 1
execute as @s[tag=completeQuest] store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."invItem.AntidoteToPoisons.count" int 1 run scoreboard players set tmp tmp 1
execute as @s[tag=completeQuest] store result entity 85e9b3cd-e941-46cc-9f51-24e733358a40 ArmorItems[3].tag."invItem.EssenceOfGillyweed.count" int 1 run scoreboard players set tmp tmp 1
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s add musicController
execute as @s[tag=completeQuest,scores={musicPhase=..0}] run scoreboard players set @s musicPhase 0
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest

# Used to detect when another player advances the quest
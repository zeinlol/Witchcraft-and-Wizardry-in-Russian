##############################################
# Azkaban
##############################################
scoreboard players set @s questID 35
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.azkaban"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

# Complete Quest Cheat
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s add completeQuest
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

#############
## State 1 ###########################################################################################
#############
# In Cutscene

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1455,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 7

# Trigger
execute as @s[scores={questState=1},tag=inNormalState,tag=!inCutScene] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s add lockTrackedQuest
execute as @s[tag=newState] run tag @s add maraudersMapLocked
execute as @s[tag=newState] run function hp:discovery/regions/azkaban
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Defeat the death eaters

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1455,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 7

# Count the enemies
scoreboard players set @s tmp 5
execute as @s[scores={questState=2}] as @e[tag=creature,scores={waveID=1,questID=35}] run scoreboard players remove @p[tag=activePlayer] tmp 1

### Trigger ###
execute as @s[scores={questState=2,playerID=1,tmp=5}] run tag @s add newState
execute as @s[scores={questState=2,playerID=2,tmp=5}] run tag @s add newState
execute as @s[scores={questState=2,playerID=3,tmp=5}] run tag @s add newState
execute as @s[scores={questState=2,playerID=4,tmp=5}] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set azkabanTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set azkabanTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set azkabanTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set azkabanTimer p4Quests 220
execute as @s[tag=newState] run tag @s remove newState



#############
## State 3 ###########################################################################################
#############
# Fight the waves of creatures (Волна 1)

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1455,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 7

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1.. run scoreboard players remove azkabanTimer p1Quests 1
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1.. run scoreboard players remove azkabanTimer p2Quests 1
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1.. run scoreboard players remove azkabanTimer p3Quests 1
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1.. run scoreboard players remove azkabanTimer p4Quests 1


execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"Победите 5 волн врагов!","color":"gold"}]
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"Победите 5 волн врагов!","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"Победите 5 волн врагов!","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"Победите 5 волн врагов!","color":"gold"}]

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Волна 1","color":"gold"}]	
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Волна 1","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Волна 1","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Волна 1","color":"gold"}]

execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1


execute as @s[scores={questState=3,playerID=1},tag=gameLeader] if score azkabanTimer p1Quests matches 1 run function hp:quests/quests/azkaban/wave1_enemies
execute as @s[scores={questState=3,playerID=2},tag=gameLeader] if score azkabanTimer p2Quests matches 1 run function hp:quests/quests/azkaban/wave1_enemies
execute as @s[scores={questState=3,playerID=3},tag=gameLeader] if score azkabanTimer p3Quests matches 1 run function hp:quests/quests/azkaban/wave1_enemies
execute as @s[scores={questState=3,playerID=4},tag=gameLeader] if score azkabanTimer p4Quests matches 1 run function hp:quests/quests/azkaban/wave1_enemies


# Count the enemies
scoreboard players set @s tmp 6
execute as @e[tag=creature,scores={waveID=2,questID=35}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 5)","color":"gold"}]
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 5)","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 5)","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 5)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=3,playerID=1,tmp=6}] if score azkabanTimer p1Quests matches 0 run tag @s add newState
execute as @s[scores={questState=3,playerID=2,tmp=6}] if score azkabanTimer p2Quests matches 0 run tag @s add newState
execute as @s[scores={questState=3,playerID=3,tmp=6}] if score azkabanTimer p3Quests matches 0 run tag @s add newState
execute as @s[scores={questState=3,playerID=4,tmp=6}] if score azkabanTimer p4Quests matches 0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set azkabanTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set azkabanTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set azkabanTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set azkabanTimer p4Quests 220
execute as @s[tag=newState] run tag @s remove newState

#############
## State 4 ###########################################################################################
#############
# Fight the waves of creatures (Волна 2)

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1455,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 7

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1.. run scoreboard players remove azkabanTimer p1Quests 1
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1.. run scoreboard players remove azkabanTimer p2Quests 1
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1.. run scoreboard players remove azkabanTimer p3Quests 1
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1.. run scoreboard players remove azkabanTimer p4Quests 1


execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"Волна завершена!","color":"gold"}]

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Волна 2","color":"gold"}]
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Волна 2","color":"gold"}]
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Волна 2","color":"gold"}]
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Волна 2","color":"gold"}]

execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=4,playerID=1},tag=gameLeader] if score azkabanTimer p1Quests matches 1 run function hp:quests/quests/azkaban/wave2_enemies
execute as @s[scores={questState=4,playerID=2},tag=gameLeader] if score azkabanTimer p2Quests matches 1 run function hp:quests/quests/azkaban/wave2_enemies
execute as @s[scores={questState=4,playerID=3},tag=gameLeader] if score azkabanTimer p3Quests matches 1 run function hp:quests/quests/azkaban/wave2_enemies
execute as @s[scores={questState=4,playerID=4},tag=gameLeader] if score azkabanTimer p4Quests matches 1 run function hp:quests/quests/azkaban/wave2_enemies


# Count the enemies
scoreboard players set @s tmp 8
execute as @e[tag=creature,scores={waveID=3,questID=35}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=4,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 8)","color":"gold"}]
execute as @s[scores={questState=4,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 8)","color":"gold"}]
execute as @s[scores={questState=4,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 8)","color":"gold"}]
execute as @s[scores={questState=4,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 8)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=4,playerID=1,tmp=8}] if score azkabanTimer p1Quests matches 0 run tag @s add newState
execute as @s[scores={questState=4,playerID=2,tmp=8}] if score azkabanTimer p2Quests matches 0 run tag @s add newState
execute as @s[scores={questState=4,playerID=3,tmp=8}] if score azkabanTimer p3Quests matches 0 run tag @s add newState
execute as @s[scores={questState=4,playerID=4,tmp=8}] if score azkabanTimer p4Quests matches 0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set azkabanTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set azkabanTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set azkabanTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set azkabanTimer p4Quests 220
execute as @s[tag=newState] run tag @s remove newState

#############
## State 5 ###########################################################################################
#############
# Fight the waves of creatures (Волна 3)

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1455,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 7

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1.. run scoreboard players remove azkabanTimer p1Quests 1
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1.. run scoreboard players remove azkabanTimer p2Quests 1
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1.. run scoreboard players remove azkabanTimer p3Quests 1
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1.. run scoreboard players remove azkabanTimer p4Quests 1


execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"Волна завершена!","color":"gold"}]

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Волна 3","color":"gold"}]
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Волна 3","color":"gold"}]
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Волна 3","color":"gold"}]
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Волна 3","color":"gold"}]

execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=5,playerID=1},tag=gameLeader] if score azkabanTimer p1Quests matches 1 run function hp:quests/quests/azkaban/wave3_enemies
execute as @s[scores={questState=5,playerID=2},tag=gameLeader] if score azkabanTimer p2Quests matches 1 run function hp:quests/quests/azkaban/wave3_enemies
execute as @s[scores={questState=5,playerID=3},tag=gameLeader] if score azkabanTimer p3Quests matches 1 run function hp:quests/quests/azkaban/wave3_enemies
execute as @s[scores={questState=5,playerID=4},tag=gameLeader] if score azkabanTimer p4Quests matches 1 run function hp:quests/quests/azkaban/wave3_enemies


# Count the enemies
scoreboard players set @s tmp 10
execute as @e[tag=creature,scores={waveID=4,questID=35}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=5,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 10)","color":"gold"}]
execute as @s[scores={questState=5,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 10)","color":"gold"}]
execute as @s[scores={questState=5,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 10)","color":"gold"}]
execute as @s[scores={questState=5,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 10)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=5,playerID=1,tmp=10}] if score azkabanTimer p1Quests matches 0 run tag @s add newState
execute as @s[scores={questState=5,playerID=2,tmp=10}] if score azkabanTimer p2Quests matches 0 run tag @s add newState
execute as @s[scores={questState=5,playerID=3,tmp=10}] if score azkabanTimer p3Quests matches 0 run tag @s add newState
execute as @s[scores={questState=5,playerID=4,tmp=10}] if score azkabanTimer p4Quests matches 0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set azkabanTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set azkabanTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set azkabanTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set azkabanTimer p4Quests 220
execute as @s[tag=newState] run tag @s remove newState

#############
## State 6 ###########################################################################################
#############
# Fight the waves of creatures (Волна 4)

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1455,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 7

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1.. run scoreboard players remove azkabanTimer p1Quests 1
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1.. run scoreboard players remove azkabanTimer p2Quests 1
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1.. run scoreboard players remove azkabanTimer p3Quests 1
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1.. run scoreboard players remove azkabanTimer p4Quests 1


execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"Волна завершена!","color":"gold"}]

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Волна 4","color":"gold"}]
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Волна 4","color":"gold"}]
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Волна 4","color":"gold"}]
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Волна 4","color":"gold"}]

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=6,playerID=1},tag=gameLeader] if score azkabanTimer p1Quests matches 1 run function hp:quests/quests/azkaban/wave4_enemies
execute as @s[scores={questState=6,playerID=2},tag=gameLeader] if score azkabanTimer p2Quests matches 1 run function hp:quests/quests/azkaban/wave4_enemies
execute as @s[scores={questState=6,playerID=3},tag=gameLeader] if score azkabanTimer p3Quests matches 1 run function hp:quests/quests/azkaban/wave4_enemies
execute as @s[scores={questState=6,playerID=4},tag=gameLeader] if score azkabanTimer p4Quests matches 1 run function hp:quests/quests/azkaban/wave4_enemies


# Count the enemies
scoreboard players set @s tmp 10
execute as @e[tag=creature,scores={waveID=5,questID=35}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 10)","color":"gold"}]
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 10)","color":"gold"}]
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 10)","color":"gold"}]
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 10)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=6,playerID=1,tmp=10}] if score azkabanTimer p1Quests matches 0 run tag @s add newState
execute as @s[scores={questState=6,playerID=2,tmp=10}] if score azkabanTimer p2Quests matches 0 run tag @s add newState
execute as @s[scores={questState=6,playerID=3,tmp=10}] if score azkabanTimer p3Quests matches 0 run tag @s add newState
execute as @s[scores={questState=6,playerID=4,tmp=10}] if score azkabanTimer p4Quests matches 0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 7
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set azkabanTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set azkabanTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set azkabanTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set azkabanTimer p4Quests 220
execute as @s[tag=newState] run tag @s remove newState


#############
## State 7 ###########################################################################################
#############
# Fight the waves of creatures (Волна 5)

### Tracked Quest ###
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=7},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1455,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=7},tag=isTrackedQuest] run scoreboard players set @s questRegion 7

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1.. run scoreboard players remove azkabanTimer p1Quests 1
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1.. run scoreboard players remove azkabanTimer p2Quests 1
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1.. run scoreboard players remove azkabanTimer p3Quests 1
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1.. run scoreboard players remove azkabanTimer p4Quests 1


execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"Волна завершена!","color":"gold"}]

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Волна 5","color":"gold"}]
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Волна 5","color":"gold"}]
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Волна 5","color":"gold"}]
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Волна 5","color":"gold"}]

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=7,playerID=1},tag=gameLeader] if score azkabanTimer p1Quests matches 1 run function hp:quests/quests/azkaban/wave5_enemies
execute as @s[scores={questState=7,playerID=2},tag=gameLeader] if score azkabanTimer p2Quests matches 1 run function hp:quests/quests/azkaban/wave5_enemies
execute as @s[scores={questState=7,playerID=3},tag=gameLeader] if score azkabanTimer p3Quests matches 1 run function hp:quests/quests/azkaban/wave5_enemies
execute as @s[scores={questState=7,playerID=4},tag=gameLeader] if score azkabanTimer p4Quests matches 1 run function hp:quests/quests/azkaban/wave5_enemies


# Count the enemies
scoreboard players set @s tmp 12
execute as @e[tag=creature,scores={waveID=6,questID=35}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 12)","color":"gold"}]
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 12)","color":"gold"}]
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 12)","color":"gold"}]
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Уничтожьте противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 12)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=7,playerID=1,tmp=12}] if score azkabanTimer p1Quests matches 0 run tag @s add newState
execute as @s[scores={questState=7,playerID=2,tmp=12}] if score azkabanTimer p2Quests matches 0 run tag @s add newState
execute as @s[scores={questState=7,playerID=3,tmp=12}] if score azkabanTimer p3Quests matches 0 run tag @s add newState
execute as @s[scores={questState=7,playerID=4,tmp=12}] if score azkabanTimer p4Quests matches 0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 8
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set azkabanTimer p1Quests 100
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set azkabanTimer p2Quests 100
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set azkabanTimer p3Quests 100
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set azkabanTimer p4Quests 100
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set alastorMoody p1convOverride 5
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set alastorMoody p2convOverride 5
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set alastorMoody p3convOverride 5
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set alastorMoody p4convOverride 5
execute as @s[tag=newState] run tag @s remove newState

#############
## State 8 ###########################################################################################
#############
# Speak to Аластор Грюм

### Tracked Quest ###
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=8},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1454,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=8},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5000.31 121.00 9970.05
execute as @s[scores={questState=8,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=22},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 7

execute as @s[scores={questState=8,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1.. run scoreboard players remove azkabanTimer p1Quests 1
execute as @s[scores={questState=8,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1.. run scoreboard players remove azkabanTimer p2Quests 1
execute as @s[scores={questState=8,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1.. run scoreboard players remove azkabanTimer p3Quests 1
execute as @s[scores={questState=8,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1.. run scoreboard players remove azkabanTimer p4Quests 1

execute as @s[scores={questState=8}] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=phoenixOrder2] add questHover
execute as @s[scores={questState=8}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch


execute as @s[scores={questState=8,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=8,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=8,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=8,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=8,playerID=1},tag=isTrackedQuest] if score azkabanTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Противники повержены!","color":"gold"}]
execute as @s[scores={questState=8,playerID=2},tag=isTrackedQuest] if score azkabanTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Противники повержены!","color":"gold"}]
execute as @s[scores={questState=8,playerID=3},tag=isTrackedQuest] if score azkabanTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Противники повержены!","color":"gold"}]
execute as @s[scores={questState=8,playerID=4},tag=isTrackedQuest] if score azkabanTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Противники повержены!","color":"gold"}]



# Trigger
execute as @s[scores={questState=8},tag=inNormalState,tag=hasSpokenToAlastorMoodyAfterAzkaban] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 9
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove hasSpokenToAlastorMoodyAfterAzkaban
execute as @s[tag=newState] run tag @s remove newState


#############
## State 9 ###########################################################################################
#############
# Wait for everyone to arrive

### Tracked Quest ###
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=9},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1495,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasBeenToAzkaban,tag=play] unless score @s trackedQuestID matches 35 run scoreboard players add @p[tag=activePlayer] suitableCount 1
execute as @a[tag=!hasBeenToAzkaban,scores={trackedQuestID=35,trackQuestState=..9},tag=play] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute as @a[tag=!hasBeenToAzkaban,scores={trackQuestState=9,trackedQuestID=35},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=9},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=9,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=9,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=9,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=9,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]

# Trigger
execute as @s[scores={questState=9},tag=isTrackedQuest,tag=inNormalState] if score @s suitableCount <= @s tmp run tag @s add completeQuest


# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set @s overrideRespawn 0
execute as @s[tag=completeQuest] run scoreboard players set @s questQueueID 36
execute as @s[tag=completeQuest] run scoreboard players set @s questQueue 120
execute as @s[tag=completeQuest] run tag @s add queingQuest
execute as @s[tag=completeQuest] run scoreboard players set @s cutSceneID 48
execute as @s[tag=completeQuest] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=48}] run tag @s add cutsceneLeader
execute as @s[tag=completeQuest] run function hp:cutscenes/init_cutscene
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set azkabanQuestIsGoing global 0
execute as @s[tag=completeQuest] run gamerule doDaylightCycle true
execute as @s[tag=completeQuest] run tag @s remove maraudersMapLocked
execute as @s[tag=completeQuest] run tag @s remove lockTrackedQuest
execute as @s[tag=completeQuest] run gamerule doDaylightCycle true
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set dumbledore p1convOverride 1
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set dumbledore p2convOverride 1
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set dumbledore p3convOverride 1
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set dumbledore p4convOverride 1
execute as @s[tag=completeQuest] run tag @s add hasBeenToAzkaban
execute as @s[tag=completeQuest] run tag @s add musicController
execute as @s[tag=completeQuest] run function hp:music/music/silence
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
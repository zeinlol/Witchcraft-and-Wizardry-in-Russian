##############################################
# Stupefy Lesson
##############################################
scoreboard players set @s questID 15
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.stupefy"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest


# Memory catch up (Skip walking to classroom, etc.)
execute as @s[scores={questState=1},tag=inNormalState,tag=isTrackedQuest] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 10
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s unlockedSpell 2
execute as @s[tag=newState] run scoreboard players set @s selectedSpell 2
execute as @s[tag=newState] run scoreboard players set @s currentSpell 2
execute as @s[tag=newState] run scoreboard players set @s cutSceneID 10
execute as @s[tag=newState] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=10}] run tag @s add cutsceneLeader
execute as @s[tag=newState] run function hp:cutscenes/init_cutscene
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set lupin p1convOverride 39
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set lupin p2convOverride 39
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set lupin p3convOverride 39
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set lupin p4convOverride 39
execute as @s[tag=newState] run tag @s add showingMana
execute as @s[tag=newState] run tag @s add unlockedSpells
execute as @s[tag=newState] run scoreboard players set @s unlockedSpell 2
execute as @s[tag=newState,tag=gameLeader] run scoreboard players set stupefyProgressLocked global 1
execute as @s[tag=newState] run tag @s add maraudersMapLocked
execute as @s[tag=newState] run tag @s add lockTrackedQuest
execute as @s[tag=newState,tag=gameLeader] run time set day
execute as @s[tag=newState,tag=gameLeader] run gamerule doDaylightCycle false
execute as @s[tag=newState] run tag @s remove hasLearnedStupefy
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Speak to Lupin

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1492,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5564.52 49.00 -82.48
execute as @s[scores={questState=3,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=4},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

### Function ###

### Trigger ###
execute as @s[scores={questState=3},tag=hasSpokenToLupinAboutMagicka,tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove hasSpokenToLupinAboutMagicka
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set lupin p1convOverride 42
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set lupin p2convOverride 42
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set lupin p3convOverride 42
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set lupin p4convOverride 42
execute as @s[tag=newState] run scoreboard players set stupefyProgressLocked global 0
execute as @s[tag=newState] run tag @s remove newState


#############
## State 4 ###########################################################################################
#############
# Make your way through the obstacle course

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1494,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

### Function ###

### Trigger ###
execute positioned 5504.45 50.00 20.26 as @s[distance=..12,scores={questState=4},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 11
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState


#############
## State 5 ###########################################################################################
#############
# Wait for everyone to arrive

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1494,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5504.45 50.00 20.26
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

### Function ###
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasLearnedStupefy,tag=play] unless score @s trackedQuestID matches 15 run scoreboard players add @p[tag=activePlayer] suitableCount 1
execute as @a[tag=!hasLearnedStupefy,scores={trackedQuestID=15,trackQuestState=..5}] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute positioned 5504.45 50.00 20.26 as @a[distance=..12,tag=!hasLearnedStupefy,scores={trackQuestState=5},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=5},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=5,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=5,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=5,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=5,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]

# Trigger
# This weird double tag thing is because of a super strange bug I can't explain some people run into where all the commands below execute but they don't progress to the next
# Quest state. The tag "goToNextQuestState" is removed in set_quest, and so it should just execute everything again if it for some reason doesn't set the quest the first time
# Around
execute as @s[scores={questState=5},tag=inNormalState,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add goToNextQuestState
execute as @s[tag=goToNextQuestState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s cutSceneID 11
execute as @s[tag=newState] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=11}] run tag @s add cutsceneLeader
execute as @s[tag=newState] run function hp:cutscenes/init_cutscene
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set stupefyTimer p1Quests 1080
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set stupefyTimer p2Quests 1080
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set stupefyTimer p3Quests 1080
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set stupefyTimer p4Quests 1080
execute as @s[tag=newState] run scoreboard players set stupefyStuckTimerIsGoing global 0
execute as @s[tag=newState] run tag @s remove newState


#############
## State 6 ###########################################################################################
#############
# Defeat the boggart!

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1493,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 1.. run scoreboard players remove stupefyTimer p1Quests 1
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 1.. run scoreboard players remove stupefyTimer p2Quests 1
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 1.. run scoreboard players remove stupefyTimer p3Quests 1
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 1.. run scoreboard players remove stupefyTimer p4Quests 1


execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 0..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 0..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 0..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 0..100 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Используйте Остолбеней для атаки!","color":"gold"}]
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Используйте Остолбеней для атаки!","color":"gold"}]
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Используйте Остолбеней для атаки!","color":"gold"}]
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Используйте Остолбеней для атаки!","color":"gold"}]

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=6,playerID=1},tag=gameLeader] if score stupefyTimer p1Quests matches 1 run function hp:quests/quests/stupefy/boggart
execute as @s[scores={questState=6,playerID=2},tag=gameLeader] if score stupefyTimer p2Quests matches 1 run function hp:quests/quests/stupefy/boggart
execute as @s[scores={questState=6,playerID=3},tag=gameLeader] if score stupefyTimer p3Quests matches 1 run function hp:quests/quests/stupefy/boggart
execute as @s[scores={questState=6,playerID=4},tag=gameLeader] if score stupefyTimer p4Quests matches 1 run function hp:quests/quests/stupefy/boggart

execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 1 at @s run function hp:music/music/wands_at_the_ready
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 1 at @s run function hp:music/music/wands_at_the_ready
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 1 at @s run function hp:music/music/wands_at_the_ready
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 1 at @s run function hp:music/music/wands_at_the_ready

# Count the enemies
scoreboard players set @s tmp 1
execute as @e[tag=creature,scores={waveID=1,questID=15}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=6,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Защищайтесь от Боггарта!","color":"gold"}]
execute as @s[scores={questState=6,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Защищайтесь от Боггарта!","color":"gold"}]
execute as @s[scores={questState=6,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Защищайтесь от Боггарта!","color":"gold"}]
execute as @s[scores={questState=6,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Защищайтесь от Боггарта!","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=6,playerID=1,tmp=1}] if score stupefyTimer p1Quests matches 0 run tag @s add newState
execute as @s[scores={questState=6,playerID=2,tmp=1}] if score stupefyTimer p2Quests matches 0 run tag @s add newState
execute as @s[scores={questState=6,playerID=3,tmp=1}] if score stupefyTimer p3Quests matches 0 run tag @s add newState
execute as @s[scores={questState=6,playerID=4,tmp=1}] if score stupefyTimer p4Quests matches 0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 7
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set stupefyTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set stupefyTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set stupefyTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set stupefyTimer p4Quests 220
execute as @s[tag=newState] run tag @s remove newState


#############
## State 7 ###########################################################################################
#############
# Fight the waves of creatures (Волна 1)

### Tracked Quest ###
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=7},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1493,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=7},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 1.. run scoreboard players remove stupefyTimer p1Quests 1
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 1.. run scoreboard players remove stupefyTimer p2Quests 1
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 1.. run scoreboard players remove stupefyTimer p3Quests 1
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 1.. run scoreboard players remove stupefyTimer p4Quests 1


execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"Победите З волны врагов!","color":"gold"}]
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"Победите З волны врагов!","color":"gold"}]
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"Победите З волны врагов!","color":"gold"}]
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"Победите З волны врагов!","color":"gold"}]

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Волна 1","color":"gold"}]	
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Волна 1","color":"gold"}]
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Волна 1","color":"gold"}]
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Волна 1","color":"gold"}]

execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=7,playerID=1},tag=gameLeader] if score stupefyTimer p1Quests matches 1 run function hp:quests/quests/stupefy/wave1_enemies
execute as @s[scores={questState=7,playerID=2},tag=gameLeader] if score stupefyTimer p2Quests matches 1 run function hp:quests/quests/stupefy/wave1_enemies
execute as @s[scores={questState=7,playerID=3},tag=gameLeader] if score stupefyTimer p3Quests matches 1 run function hp:quests/quests/stupefy/wave1_enemies
execute as @s[scores={questState=7,playerID=4},tag=gameLeader] if score stupefyTimer p4Quests matches 1 run function hp:quests/quests/stupefy/wave1_enemies


# Count the enemies
scoreboard players set @s tmp 6
execute as @e[tag=creature,scores={waveID=2,questID=15}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Защищайтесь от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 6)","color":"gold"}]
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Защищайтесь от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 6)","color":"gold"}]
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Защищайтесь от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 6)","color":"gold"}]
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Защищайтесь от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 6)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=7,playerID=1,tmp=6}] if score stupefyTimer p1Quests matches 0 run tag @s add newState
execute as @s[scores={questState=7,playerID=2,tmp=6}] if score stupefyTimer p2Quests matches 0 run tag @s add newState
execute as @s[scores={questState=7,playerID=3,tmp=6}] if score stupefyTimer p3Quests matches 0 run tag @s add newState
execute as @s[scores={questState=7,playerID=4,tmp=6}] if score stupefyTimer p4Quests matches 0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 8
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set stupefyTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set stupefyTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set stupefyTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set stupefyTimer p4Quests 220
execute as @s[tag=newState] run tag @s remove newState

#############
## State 8 ###########################################################################################
#############
# Fight the waves of creatures (Волна 2)

### Tracked Quest ###
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=8},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1493,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute as @s[scores={questState=8,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 1.. run scoreboard players remove stupefyTimer p1Quests 1
execute as @s[scores={questState=8,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 1.. run scoreboard players remove stupefyTimer p2Quests 1
execute as @s[scores={questState=8,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 1.. run scoreboard players remove stupefyTimer p3Quests 1
execute as @s[scores={questState=8,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 1.. run scoreboard players remove stupefyTimer p4Quests 1


execute as @s[scores={questState=8,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=8,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=8,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=8,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=8,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=8,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=8,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=8,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=8,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=8,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=8,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=8,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"Волна завершена!","color":"gold"}]

execute as @s[scores={questState=8,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=8,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=8,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=8,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=8,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Волна 2","color":"gold"}]
execute as @s[scores={questState=8,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Волна 2","color":"gold"}]
execute as @s[scores={questState=8,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Волна 2","color":"gold"}]
execute as @s[scores={questState=8,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Волна 2","color":"gold"}]

execute as @s[scores={questState=8,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=8,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=8,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=8,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=8,playerID=1},tag=gameLeader] if score stupefyTimer p1Quests matches 1 run function hp:quests/quests/stupefy/wave2_enemies
execute as @s[scores={questState=8,playerID=2},tag=gameLeader] if score stupefyTimer p2Quests matches 1 run function hp:quests/quests/stupefy/wave2_enemies
execute as @s[scores={questState=8,playerID=3},tag=gameLeader] if score stupefyTimer p3Quests matches 1 run function hp:quests/quests/stupefy/wave2_enemies
execute as @s[scores={questState=8,playerID=4},tag=gameLeader] if score stupefyTimer p4Quests matches 1 run function hp:quests/quests/stupefy/wave2_enemies


# Count the enemies
scoreboard players set @s tmp 8
execute as @e[tag=creature,scores={waveID=3,questID=15}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=8,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Защищайтесь от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 8)","color":"gold"}]
execute as @s[scores={questState=8,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Защищайтесь от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 8)","color":"gold"}]
execute as @s[scores={questState=8,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Защищайтесь от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 8)","color":"gold"}]
execute as @s[scores={questState=8,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Защищайтесь от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 8)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=8,playerID=1,tmp=8}] if score stupefyTimer p1Quests matches 0 run tag @s add newState
execute as @s[scores={questState=8,playerID=2,tmp=8}] if score stupefyTimer p2Quests matches 0 run tag @s add newState
execute as @s[scores={questState=8,playerID=3,tmp=8}] if score stupefyTimer p3Quests matches 0 run tag @s add newState
execute as @s[scores={questState=8,playerID=4,tmp=8}] if score stupefyTimer p4Quests matches 0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 9
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set stupefyTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set stupefyTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set stupefyTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set stupefyTimer p4Quests 220
execute as @s[tag=newState] run tag @s remove newState

#############
## State 9 ###########################################################################################
#############
# Fight the waves of creatures (Волна 3)

### Tracked Quest ###
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=9},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1493,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute as @s[scores={questState=9,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 1.. run scoreboard players remove stupefyTimer p1Quests 1
execute as @s[scores={questState=9,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 1.. run scoreboard players remove stupefyTimer p2Quests 1
execute as @s[scores={questState=9,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 1.. run scoreboard players remove stupefyTimer p3Quests 1
execute as @s[scores={questState=9,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 1.. run scoreboard players remove stupefyTimer p4Quests 1


execute as @s[scores={questState=9,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=9,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=9,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=9,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=9,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=9,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=9,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=9,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=9,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=9,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=9,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=9,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"Волна завершена!","color":"gold"}]

execute as @s[scores={questState=9,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=9,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=9,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=9,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=9,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Волна 3","color":"gold"}]
execute as @s[scores={questState=9,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Волна 3","color":"gold"}]
execute as @s[scores={questState=9,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Волна 3","color":"gold"}]
execute as @s[scores={questState=9,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Волна 3","color":"gold"}]

execute as @s[scores={questState=9,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=9,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=9,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=9,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=9,playerID=1},tag=gameLeader] if score stupefyTimer p1Quests matches 1 run function hp:quests/quests/stupefy/wave3_enemies
execute as @s[scores={questState=9,playerID=2},tag=gameLeader] if score stupefyTimer p2Quests matches 1 run function hp:quests/quests/stupefy/wave3_enemies
execute as @s[scores={questState=9,playerID=3},tag=gameLeader] if score stupefyTimer p3Quests matches 1 run function hp:quests/quests/stupefy/wave3_enemies
execute as @s[scores={questState=9,playerID=4},tag=gameLeader] if score stupefyTimer p4Quests matches 1 run function hp:quests/quests/stupefy/wave3_enemies


# Count the enemies
scoreboard players set @s tmp 10
execute as @e[tag=creature,scores={waveID=4,questID=15}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=9,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Защищайтесь от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 10)","color":"gold"}]
execute as @s[scores={questState=9,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Защищайтесь от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 10)","color":"gold"}]
execute as @s[scores={questState=9,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Защищайтесь от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 10)","color":"gold"}]
execute as @s[scores={questState=9,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Защищайтесь от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 10)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=9,playerID=1,tmp=10}] if score stupefyTimer p1Quests matches 0 run tag @s add newState
execute as @s[scores={questState=9,playerID=2,tmp=10}] if score stupefyTimer p2Quests matches 0 run tag @s add newState
execute as @s[scores={questState=9,playerID=3,tmp=10}] if score stupefyTimer p3Quests matches 0 run tag @s add newState
execute as @s[scores={questState=9,playerID=4,tmp=10}] if score stupefyTimer p4Quests matches 0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 10
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set stupefyTimer p1Quests 100
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set stupefyTimer p2Quests 100
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set stupefyTimer p3Quests 100
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set stupefyTimer p4Quests 100
execute as @s[tag=newState,tag=gameLeader] run setblock 5487 55 32 air
execute as @s[tag=newState,tag=gameLeader] run setblock 5487 56 32 air
execute as @s[tag=newState,tag=gameLeader] run setblock 5487 55 32 minecraft:dark_oak_door[facing=east,half=lower,hinge=left,open=false,powered=false]
execute as @s[tag=newState,tag=gameLeader] run setblock 5487 56 32 minecraft:dark_oak_door[facing=east,half=upper,hinge=left,open=false,powered=false]
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set lupin p1convOverride 18
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set lupin p2convOverride 18
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set lupin p3convOverride 18
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set lupin p4convOverride 18
execute as @s[tag=newState] run function hp:music/music/silence
execute as @s[tag=newState] run tag @s remove newState




#############
## State 10 ###########################################################################################
#############
# Speak to Professor Lupin

### Tracked Quest ###
execute as @s[scores={questState=10},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=10},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1492,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=10},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=10},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5479.55 55.00 29.61
execute as @s[scores={questState=10,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=4},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=10},tag=isTrackedQuest] run scoreboard players set @s questRegion 8


execute as @s[scores={questState=10,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 1.. run scoreboard players remove stupefyTimer p1Quests 1
execute as @s[scores={questState=10,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 1.. run scoreboard players remove stupefyTimer p2Quests 1
execute as @s[scores={questState=10,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 1.. run scoreboard players remove stupefyTimer p3Quests 1
execute as @s[scores={questState=10,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 1.. run scoreboard players remove stupefyTimer p4Quests 1

### Function ###
execute as @s[scores={questState=10,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 1..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=10,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 1..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=10,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 1..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=10,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 1..100 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=10,playerID=1},tag=isTrackedQuest] if score stupefyTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Враги повержены!","color":"gold"}]
execute as @s[scores={questState=10,playerID=2},tag=isTrackedQuest] if score stupefyTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Враги повержены!","color":"gold"}]
execute as @s[scores={questState=10,playerID=3},tag=isTrackedQuest] if score stupefyTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Враги повержены!","color":"gold"}]
execute as @s[scores={questState=10,playerID=4},tag=isTrackedQuest] if score stupefyTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Враги повержены!","color":"gold"}]


### Trigger ###
execute as @s[scores={questState=10},tag=inNormalState,tag=isTrackedQuest,tag=hasSpokenToLupinAfterStupefyLesson] run tag @s add completeQuest


#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/timer/end_pensive_timer
execute as @s[tag=completeQuest] run scoreboard players set @s overrideRespawn 0
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set lupin p1convOverride 1
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set lupin p2convOverride 1
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set lupin p3convOverride 1
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set lupin p4convOverride 1
execute as @s[tag=completeQuest] run tag @s remove hasSpokenToLupinAfterStupefyLesson
execute as @s[tag=completeQuest,tag=gameLeader] run gamerule doDaylightCycle true
execute as @s[tag=completeQuest] run tag @s remove maraudersMapLocked
execute as @s[tag=completeQuest] run tag @s remove lockTrackedQuest
execute as @s[tag=completeQuest] run tag @s add hasLearnedStupefy
execute as @s[tag=completeQuest] unless entity @p[scores={trackedQuestID=15}] run scoreboard players set playerInStupefySpellChallenge global 0
execute as @s[tag=completeQuest] run scoreboard players set @s unlockedSpell 9
execute as @s[tag=completeQuest] run tag @s remove inMemory
execute as @s[tag=completeQuest] run tag @s add musicController
execute as @s[tag=completeQuest,scores={musicPhase=..0}] run scoreboard players set @s musicPhase 0
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
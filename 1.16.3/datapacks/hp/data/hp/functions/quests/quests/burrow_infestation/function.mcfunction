##############################################
# Burrow Infestation
##############################################
scoreboard players set @s questID 46
scoreboard players operation @s questState = burrowInfestation sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Speak to Молли Уизли

execute as @s[scores={questState=1..3,lastRegion=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1..3,lastRegion=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1..3,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=1..3,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 666 65 252

# Title
execute as @s[scores={questState=1..3,lastRegion=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless entity @s[x=4992,dx=819,y=0,dy=255,z=3968,dz=819] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=1..3,playerID=1,lastRegion=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless entity @s[x=4992,dx=819,y=0,dy=255,z=3968,dz=819] run bossbar set minecraft:player1quest name ["",{"text":"Поговорите с Роном Уизли, чтобы отправиться в Нору","color":"gold"}]
execute as @s[scores={questState=1..3,playerID=2,lastRegion=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless entity @s[x=4992,dx=819,y=0,dy=255,z=3968,dz=819] run bossbar set minecraft:player2quest name ["",{"text":"Поговорите с Роном Уизли, чтобы отправиться в Нору","color":"gold"}]
execute as @s[scores={questState=1..3,playerID=3,lastRegion=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless entity @s[x=4992,dx=819,y=0,dy=255,z=3968,dz=819] run bossbar set minecraft:player3quest name ["",{"text":"Поговорите с Роном Уизли, чтобы отправиться в Нору","color":"gold"}]
execute as @s[scores={questState=1..3,playerID=4,lastRegion=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless entity @s[x=4992,dx=819,y=0,dy=255,z=3968,dz=819] run bossbar set minecraft:player4quest name ["",{"text":"Поговорите с Роном Уизли, чтобы отправиться в Нору","color":"gold"}]




### Tracked Quest ###
execute as @s[scores={questState=1,lastRegion=10},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1427,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1,lastRegion=10},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1,lastRegion=10},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5396 16 4516
execute as @s[scores={questState=1,lastRegion=10,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=32},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=1,lastRegion=10},tag=isTrackedQuest] run scoreboard players set @s questRegion 10
### Function ###


### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=1,convState=1,conv=32}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Рон рассказал мне о лягушках\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 5
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use



### Trigger ###
execute as @s[scores={questState=1},tag=isTrackedQuest,tag=hasSpokenToMollyWeasleyAboutInfestation] run scoreboard players set burrowInfestation sharedQuests 2
execute as @s[scores={playerID=1}] unless score burrowInfestation p1Quests = burrowInfestation sharedQuests if score burrowInfestation sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score burrowInfestation p2Quests = burrowInfestation sharedQuests if score burrowInfestation sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score burrowInfestation p3Quests = burrowInfestation sharedQuests if score burrowInfestation sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score burrowInfestation p4Quests = burrowInfestation sharedQuests if score burrowInfestation sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation burrowInfestation p1Quests = burrowInfestation sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation burrowInfestation p2Quests = burrowInfestation sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation burrowInfestation p3Quests = burrowInfestation sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation burrowInfestation p4Quests = burrowInfestation sharedQuests
execute as @s[tag=newState] run tag @s remove hasSpokenToMollyWeasleyAboutInfestation
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Deal with the Toads

### Tracked Quest ###
execute as @s[scores={questState=2,lastRegion=10},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1426,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2,lastRegion=10},tag=isTrackedQuest] positioned 5393 16 4552 if entity @s[distance=..50] run tag @s add questHasNoDirection
execute as @s[scores={questState=2,lastRegion=10},tag=isTrackedQuest] positioned 5393 16 4552 unless entity @s[distance=..50] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2,lastRegion=10},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5393 16 4552
execute as @s[scores={questState=2,lastRegion=10},tag=isTrackedQuest] run scoreboard players set @s questRegion 10


execute as @s[scores={questState=2,lastRegion=10},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=2,lastRegion=10,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Уничтожьте 20 лягушек (","color":"gold"},{"score":{"name":"burrowInfestationKills","objective":"sharedQuests"},"color":"gold"},{"text":" из 20)","color":"gold"}]
execute as @s[scores={questState=2,lastRegion=10,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Уничтожьте 20 лягушек (","color":"gold"},{"score":{"name":"burrowInfestationKills","objective":"sharedQuests"},"color":"gold"},{"text":" из 20)","color":"gold"}]
execute as @s[scores={questState=2,lastRegion=10,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Уничтожьте 20 лягушек (","color":"gold"},{"score":{"name":"burrowInfestationKills","objective":"sharedQuests"},"color":"gold"},{"text":" из 20)","color":"gold"}]
execute as @s[scores={questState=2,lastRegion=10,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Уничтожьте 20 лягушек (","color":"gold"},{"score":{"name":"burrowInfestationKills","objective":"sharedQuests"},"color":"gold"},{"text":" из 20)","color":"gold"}]



### Trigger ###
execute positioned 5391 16 4555 as @s[distance=..50,scores={questState=2},tag=isTrackedQuest] run scoreboard players operation burrowInfestationKills sharedQuests += @s toadsK


execute as @s[scores={questState=2},tag=isTrackedQuest] if score burrowInfestationKills sharedQuests matches 20.. run scoreboard players set burrowInfestation sharedQuests 3

execute as @s[scores={playerID=1}] unless score burrowInfestation p1Quests = burrowInfestation sharedQuests if score burrowInfestation sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score burrowInfestation p2Quests = burrowInfestation sharedQuests if score burrowInfestation sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score burrowInfestation p3Quests = burrowInfestation sharedQuests if score burrowInfestation sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score burrowInfestation p4Quests = burrowInfestation sharedQuests if score burrowInfestation sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run tag 4d2ce650-af23-4f1c-84f0-e85fbde123a5 add disable
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation burrowInfestation p1Quests = burrowInfestation sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation burrowInfestation p2Quests = burrowInfestation sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation burrowInfestation p3Quests = burrowInfestation sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation burrowInfestation p4Quests = burrowInfestation sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 3 ###########################################################################################
#############
# Speak to Молли Уизли

### Tracked Quest ###
execute as @s[scores={questState=3,lastRegion=10},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1425,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3,lastRegion=10},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3,lastRegion=10},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5396 16 4516
execute as @s[scores={questState=3,lastRegion=10,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=32},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=3,lastRegion=10},tag=isTrackedQuest] run scoreboard players set @s questRegion 10
### Function ###

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=3,convState=1,conv=32}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Я разберусь с ними\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 6
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Function ###
execute as @s[scores={questState=3},tag=inNormalState,tag=hasCompletedburrowInfestation] run scoreboard players set burrowInfestation sharedQuests -1
execute as @s[scores={playerID=1}] unless score burrowInfestation p1Quests = burrowInfestation sharedQuests if score burrowInfestation sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score burrowInfestation p2Quests = burrowInfestation sharedQuests if score burrowInfestation sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score burrowInfestation p3Quests = burrowInfestation sharedQuests if score burrowInfestation sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score burrowInfestation p4Quests = burrowInfestation sharedQuests if score burrowInfestation sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players add @s money 150
execute as @s[tag=completeQuest] run scoreboard players set burrowInfestation sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players set burrowInfestationKills sharedQuests 0
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run tag @s remove hasCompletedburrowInfestation
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation burrowInfestation p1Quests = burrowInfestation sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation burrowInfestation p2Quests = burrowInfestation sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation burrowInfestation p3Quests = burrowInfestation sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation burrowInfestation p4Quests = burrowInfestation sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# Complete Quest Cheat
execute as @s[tag=completeTrackedQuest] run scoreboard players set burrowInfestation sharedQuests -1
execute as @s[tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

# reset quest tracking boolean
tag @s remove isTrackedQuest

# Used to detect when another player advances the quest
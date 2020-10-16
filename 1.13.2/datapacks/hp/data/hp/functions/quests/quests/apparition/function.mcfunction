##############################################
# Apparition
##############################################
scoreboard players set @s questID 22
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.apparition"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

# Complete Quest Cheat
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s add completeQuest
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s add unlockedSpells
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s unlockedSpell 9
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tp @s 9851.19 122.00 10176.16 -179.83 -0.89
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Отправиться в Министерство Магии

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1558,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 1010.35 78.00 -180.75
execute as @s[scores={questState=1,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] at @s unless entity @s[x=2870,y=53,z=-465,dx=268,dy=27,dz=40] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2478.61 56.81 368.50
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] at @s if entity @s[x=2870,y=53,z=-465,dx=268,dy=27,dz=40] as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 3047 60 -462
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=1,lastRegion=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 834.49 49.00 -1731.57
execute as @s[scores={questState=1,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=1,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=1,lastRegion=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5122.86 80.38 2094.01
execute as @s[scores={questState=1,lastRegion=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 6
execute as @s[scores={questState=1,lastRegion=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2351.53 64.00 -774.45
execute as @s[scores={questState=1,lastRegion=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 9
execute as @s[scores={questState=1,lastRegion=9},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 6850.44 36.25 3101.50

execute as @s[scores={questState=1,lastRegion=5},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set willkieTwycross p1convOverride 0
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set willkieTwycross p2convOverride 0
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set willkieTwycross p3convOverride 0
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set willkieTwycross p4convOverride 0
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Speak to Уикли Двукрест in his office
### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1557,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] unless entity @s[x=9910,y=191,z=10064,dx=47,dy=36,dz=81] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 9846.37 122.00 10071.30
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[x=9910,y=191,z=10064,dx=47,dy=36,dz=81] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 9921.99 197.00 10119.33
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=219},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 5

execute as @s[scores={questState=2},tag=inNormalState,tag=hasSpokenToTwycrossAndPaidForApparitionCourse] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run scoreboard players set @s trackedQuestID 22
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove hasSpokenToTwycrossAndPaidForApparitionCourse
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set willkieTwycross p1convOverride 0
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set willkieTwycross p2convOverride 0
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set willkieTwycross p3convOverride 0
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set willkieTwycross p4convOverride 0
execute as @s[tag=newState] run tag @s remove newState


#############
## State 3 ###########################################################################################
#############
# Wait for everyone to arrive

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1557,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 5

### Function ###
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasLearnedApparition,tag=play] unless score @s trackedQuestID matches 22 run scoreboard players add @p[tag=activePlayer] suitableCount 1
execute as @a[tag=!hasLearnedApparition,tag=play,scores={trackedQuestID=22,trackQuestState=..3}] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute as @a[tag=!hasLearnedApparition,scores={trackedQuestID=22,trackQuestState=3},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=3,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]

# Trigger
# This weird double tag thing is because of a super strange bug I can't explain some people run into where all the commands below execute but they don't progress to the next
# Quest state. The tag "goToNextQuestState" is removed in set_quest, and so it should just execute everything again if it for some reason doesn't set the quest the first time
# Around
execute as @s[scores={questState=3},tag=inNormalState,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add goToNextQuestState
execute as @s[tag=goToNextQuestState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s cutSceneID 42
execute as @s[tag=newState] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=42}] run tag @s add cutsceneLeader
execute as @s[tag=newState] run function hp:cutscenes/init_cutscene
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set willkieTwycross p1convOverride 10
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set willkieTwycross p2convOverride 10
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set willkieTwycross p3convOverride 10
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set willkieTwycross p4convOverride 10
execute as @s[tag=newState] run scoreboard players set @s unlockedSpell 9
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 26
execute as @s[tag=newState] run tag @s add maraudersMapLocked
execute as @s[tag=newState] run tag @s add lockTrackedQuest
execute as @s[tag=newState] run tag @s add waitingToPlayApparitionMusic
execute as @s[tag=newState] run tag @s remove newState


#############
## State 4 ###########################################################################################
#############
# Make your way through the obstacle course
### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1556,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 8


execute positioned 8952 69 57 as @s[scores={questState=4},distance=12] run scoreboard players set @s overrideRespawn 27


execute positioned 8997 69 57 as @s[distance=..15,scores={questState=4},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set willkieTwycross p1convOverride 6
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set willkieTwycross p2convOverride 6
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set willkieTwycross p3convOverride 6
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set willkieTwycross p4convOverride 6
execute as @s[tag=newState] run function hp:music/music/silence
execute as @s[tag=newState] run tag @s remove newState

#############
## State 5 ###########################################################################################
#############
# Speak to Уикли Двукрест
### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1462,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 8997.55 70.00 58.47
execute as @s[scores={questState=5,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=219},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute as @s[scores={questState=5},tag=inNormalState,tag=hasSpokenToTwycrossAboutPassingApparitionTest] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove hasSpokenToTwycrossAboutPassingApparitionTest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set willkieTwycross p1convOverride 11
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set willkieTwycross p2convOverride 11
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set willkieTwycross p3convOverride 11
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set willkieTwycross p4convOverride 11
execute as @s[tag=newState] run tag @s remove newState


#############
## State 6 ###########################################################################################
#############
# Wait for everyone to arrive

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1462,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

### Function ###
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasLearnedApparition,tag=play] unless score @s trackedQuestID matches 22 run scoreboard players add @p[tag=activePlayer] suitableCount 1
execute as @a[tag=!hasLearnedApparition,tag=play,scores={trackedQuestID=22,trackQuestState=..6}] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute as @a[tag=!hasLearnedApparition,scores={trackedQuestID=22,trackQuestState=6},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=6},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=6,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=6,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=6,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=6,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]

# Trigger
# This weird double tag thing is because of a super strange bug I can't explain some people run into where all the commands below execute but they don't progress to the next
# Quest state. The tag "goToNextQuestState" is removed in set_quest, and so it should just execute everything again if it for some reason doesn't set the quest the first time
# Around
execute as @s[scores={questState=6},tag=inNormalState,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add goToNextQuestState
execute as @s[tag=goToNextQuestState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 7
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s cutSceneID 43
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 32
execute as @s[tag=newState] run tag @s add cutsceneSlave
execute as @s[tag=newState] run tag @s add doNotAffectPlayer
execute as @s[tag=newState] unless entity @p[tag=cutsceneMaster,scores={cutSceneID=43}] run tag @s add cutsceneMaster
execute as @s[tag=newState] run function hp:cutscenes/init_cutscene
execute as @s[tag=newState] run tag @s remove newState

#############
## State 7 ###########################################################################################
#############
# Follow Twycross
### Tracked Quest ###
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s add hideQuestTracking
execute as @s[scores={questState=7},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1461,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=7},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

# Count the enemies
scoreboard players set @s tmp 3
execute as @e[tag=creature,scores={waveID=4,questID=22}] run scoreboard players remove @p[tag=activePlayer] tmp 1

### Trigger ###
execute as @s[scores={questState=7},tag=!inCutScene] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 8
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run tag @s remove newState


#############
## State 8 ###########################################################################################
#############
# Fend of the death eaters
### Tracked Quest ###
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=8},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1555,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 5

# Count the enemies
scoreboard players set @s tmp 3
execute as @e[tag=creature,scores={waveID=1,questID=22}] run scoreboard players remove @p[tag=activePlayer] tmp 1

### Trigger ###
execute as @s[scores={questState=8,playerID=1,tmp=3}] run tag @s add newState
execute as @s[scores={questState=8,playerID=2,tmp=3}] run tag @s add newState
execute as @s[scores={questState=8,playerID=3,tmp=3}] run tag @s add newState
execute as @s[scores={questState=8,playerID=4,tmp=3}] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 9
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run tag @s remove newState

#############
## State 9 ###########################################################################################
#############
# Proceed to the next room
### Tracked Quest ###
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=9},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1555,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute positioned 9057 72 112 as @s[distance=..25,scores={questState=9},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 10
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 10 ###########################################################################################
#############
# Wait for everyone to arrive

### Tracked Quest ###
execute as @s[scores={questState=10},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=10},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1555,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=10},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=10},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

### Function ###
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasLearnedApparition,tag=play] unless score @s trackedQuestID matches 22 run scoreboard players add @p[tag=activePlayer] suitableCount 1
execute as @a[tag=!hasLearnedApparition,tag=play,scores={trackedQuestID=22,trackQuestState=..10}] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute as @a[tag=!hasLearnedApparition,scores={trackedQuestID=22,trackQuestState=10},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=10},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=10,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=10,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=10,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=10,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]

# Trigger
execute as @s[scores={questState=10},tag=inNormalState,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 11
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set apparitionDeathEaterAttackTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set apparitionDeathEaterAttackTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set apparitionDeathEaterAttackTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set apparitionDeathEaterAttackTimer p4Quests 220
execute as @s[tag=newState] run tag @s remove newState




#--------------------------------------------------------------------



#############
## State 11 ###########################################################################################
#############
# Fight the waves of creatures (Волна 1)

### Tracked Quest ###
execute as @s[scores={questState=11},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=11},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1555,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=11},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=11},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute as @s[scores={questState=11,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 1.. run scoreboard players remove apparitionDeathEaterAttackTimer p1Quests 1
execute as @s[scores={questState=11,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 1.. run scoreboard players remove apparitionDeathEaterAttackTimer p2Quests 1
execute as @s[scores={questState=11,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 1.. run scoreboard players remove apparitionDeathEaterAttackTimer p3Quests 1
execute as @s[scores={questState=11,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 1.. run scoreboard players remove apparitionDeathEaterAttackTimer p4Quests 1


execute as @s[scores={questState=11,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=11,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=11,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=11,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=11,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=11,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=11,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=11,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event6 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=11,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"Победите З волны врагов","color":"gold"}]
execute as @s[scores={questState=11,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"Победите З волны врагов","color":"gold"}]
execute as @s[scores={questState=11,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"Победите З волны врагов","color":"gold"}]
execute as @s[scores={questState=11,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"Победите З волны врагов","color":"gold"}]

execute as @s[scores={questState=11,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=11,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=11,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=11,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=11,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Волна 1","color":"gold"}]	
execute as @s[scores={questState=11,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Волна 1","color":"gold"}]
execute as @s[scores={questState=11,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Волна 1","color":"gold"}]
execute as @s[scores={questState=11,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Волна 1","color":"gold"}]

execute as @s[scores={questState=11,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=11,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=11,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=11,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1


execute as @s[scores={questState=11,playerID=1},tag=gameLeader] if score apparitionDeathEaterAttackTimer p1Quests matches 1 run function hp:quests/quests/apparition/wave1_enemies
execute as @s[scores={questState=11,playerID=2},tag=gameLeader] if score apparitionDeathEaterAttackTimer p2Quests matches 1 run function hp:quests/quests/apparition/wave1_enemies
execute as @s[scores={questState=11,playerID=3},tag=gameLeader] if score apparitionDeathEaterAttackTimer p3Quests matches 1 run function hp:quests/quests/apparition/wave1_enemies
execute as @s[scores={questState=11,playerID=4},tag=gameLeader] if score apparitionDeathEaterAttackTimer p4Quests matches 1 run function hp:quests/quests/apparition/wave1_enemies


# Count the enemies
scoreboard players set @s tmp 8
execute as @e[tag=creature,scores={waveID=2,questID=22}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=11,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Защищайтесь  от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 8)","color":"gold"}]
execute as @s[scores={questState=11,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Защищайтесь  от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 8)","color":"gold"}]
execute as @s[scores={questState=11,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Защищайтесь  от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 8)","color":"gold"}]
execute as @s[scores={questState=11,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Защищайтесь  от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 8)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=11,playerID=1,tmp=8}] if score apparitionDeathEaterAttackTimer p1Quests matches 0 run tag @s add newState
execute as @s[scores={questState=11,playerID=2,tmp=8}] if score apparitionDeathEaterAttackTimer p2Quests matches 0 run tag @s add newState
execute as @s[scores={questState=11,playerID=3,tmp=8}] if score apparitionDeathEaterAttackTimer p3Quests matches 0 run tag @s add newState
execute as @s[scores={questState=11,playerID=4,tmp=8}] if score apparitionDeathEaterAttackTimer p4Quests matches 0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 12
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set apparitionDeathEaterAttackTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set apparitionDeathEaterAttackTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set apparitionDeathEaterAttackTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set apparitionDeathEaterAttackTimer p4Quests 220
execute as @s[tag=newState] run tag @s remove newState

#############
## State 12 ###########################################################################################
#############
# Fight the waves of creatures (Волна 2)

### Tracked Quest ###
execute as @s[scores={questState=12},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=12},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1555,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=12},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=12},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute as @s[scores={questState=12,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 1.. run scoreboard players remove apparitionDeathEaterAttackTimer p1Quests 1
execute as @s[scores={questState=12,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 1.. run scoreboard players remove apparitionDeathEaterAttackTimer p2Quests 1
execute as @s[scores={questState=12,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 1.. run scoreboard players remove apparitionDeathEaterAttackTimer p3Quests 1
execute as @s[scores={questState=12,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 1.. run scoreboard players remove apparitionDeathEaterAttackTimer p4Quests 1


execute as @s[scores={questState=12,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=12,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=12,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=12,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=12,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=12,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=12,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=12,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=12,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=12,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=12,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=12,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"Волна завершена!","color":"gold"}]

execute as @s[scores={questState=12,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=12,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=12,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=12,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=12,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Волна 2","color":"gold"}]
execute as @s[scores={questState=12,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Волна 2","color":"gold"}]
execute as @s[scores={questState=12,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Волна 2","color":"gold"}]
execute as @s[scores={questState=12,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Волна 2","color":"gold"}]

execute as @s[scores={questState=12,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=12,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=12,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=12,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=12,playerID=1},tag=gameLeader] if score apparitionDeathEaterAttackTimer p1Quests matches 1 run function hp:quests/quests/apparition/wave2_enemies
execute as @s[scores={questState=12,playerID=2},tag=gameLeader] if score apparitionDeathEaterAttackTimer p2Quests matches 1 run function hp:quests/quests/apparition/wave2_enemies
execute as @s[scores={questState=12,playerID=3},tag=gameLeader] if score apparitionDeathEaterAttackTimer p3Quests matches 1 run function hp:quests/quests/apparition/wave2_enemies
execute as @s[scores={questState=12,playerID=4},tag=gameLeader] if score apparitionDeathEaterAttackTimer p4Quests matches 1 run function hp:quests/quests/apparition/wave2_enemies


# Count the enemies
scoreboard players set @s tmp 10
execute as @e[tag=creature,scores={waveID=3,questID=22}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=12,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Защищайтесь  от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 10)","color":"gold"}]
execute as @s[scores={questState=12,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Защищайтесь  от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 10)","color":"gold"}]
execute as @s[scores={questState=12,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Защищайтесь  от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 10)","color":"gold"}]
execute as @s[scores={questState=12,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Защищайтесь  от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 10)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=12,playerID=1,tmp=10}] if score apparitionDeathEaterAttackTimer p1Quests matches 0 run tag @s add newState
execute as @s[scores={questState=12,playerID=2,tmp=10}] if score apparitionDeathEaterAttackTimer p2Quests matches 0 run tag @s add newState
execute as @s[scores={questState=12,playerID=3,tmp=10}] if score apparitionDeathEaterAttackTimer p3Quests matches 0 run tag @s add newState
execute as @s[scores={questState=12,playerID=4,tmp=10}] if score apparitionDeathEaterAttackTimer p4Quests matches 0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 13
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set apparitionDeathEaterAttackTimer p1Quests 220
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set apparitionDeathEaterAttackTimer p2Quests 220
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set apparitionDeathEaterAttackTimer p3Quests 220
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set apparitionDeathEaterAttackTimer p4Quests 220
execute as @s[tag=newState] run tag @s remove newState

#############
## State 13 ###########################################################################################
#############
# Fight the waves of creatures (Волна 3)

### Tracked Quest ###
execute as @s[scores={questState=13},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=13},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1555,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=13},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=13},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute as @s[scores={questState=13,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 1.. run scoreboard players remove apparitionDeathEaterAttackTimer p1Quests 1
execute as @s[scores={questState=13,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 1.. run scoreboard players remove apparitionDeathEaterAttackTimer p2Quests 1
execute as @s[scores={questState=13,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 1.. run scoreboard players remove apparitionDeathEaterAttackTimer p3Quests 1
execute as @s[scores={questState=13,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 1.. run scoreboard players remove apparitionDeathEaterAttackTimer p4Quests 1


execute as @s[scores={questState=13,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=13,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=13,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 0..200 run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=13,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 0..200 run scoreboard players set @s questTextTimer 2

execute as @s[scores={questState=13,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=13,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=13,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=13,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 200 at @s run playsound minecraft:custom.ui.event12 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=13,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 101..200 run bossbar set minecraft:player1quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=13,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 101..200 run bossbar set minecraft:player2quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=13,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 101..200 run bossbar set minecraft:player3quest name ["",{"text":"Волна завершена!","color":"gold"}]
execute as @s[scores={questState=13,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 101..200 run bossbar set minecraft:player4quest name ["",{"text":"Волна завершена!","color":"gold"}]

execute as @s[scores={questState=13,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=13,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=13,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=13,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 100 at @s run playsound minecraft:custom.ui.event13 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=13,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 1..100 run bossbar set minecraft:player1quest name ["",{"text":"Волна 3","color":"gold"}]
execute as @s[scores={questState=13,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 1..100 run bossbar set minecraft:player2quest name ["",{"text":"Волна 3","color":"gold"}]
execute as @s[scores={questState=13,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 1..100 run bossbar set minecraft:player3quest name ["",{"text":"Волна 3","color":"gold"}]
execute as @s[scores={questState=13,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 1..100 run bossbar set minecraft:player4quest name ["",{"text":"Волна 3","color":"gold"}]

execute as @s[scores={questState=13,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=13,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=13,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1
execute as @s[scores={questState=13,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 1 at @s run playsound minecraft:custom.ui.event15 master @s ~ ~ ~ 10000 1 1

execute as @s[scores={questState=13,playerID=1},tag=gameLeader] if score apparitionDeathEaterAttackTimer p1Quests matches 1 run function hp:quests/quests/apparition/wave3_enemies
execute as @s[scores={questState=13,playerID=2},tag=gameLeader] if score apparitionDeathEaterAttackTimer p2Quests matches 1 run function hp:quests/quests/apparition/wave3_enemies
execute as @s[scores={questState=13,playerID=3},tag=gameLeader] if score apparitionDeathEaterAttackTimer p3Quests matches 1 run function hp:quests/quests/apparition/wave3_enemies
execute as @s[scores={questState=13,playerID=4},tag=gameLeader] if score apparitionDeathEaterAttackTimer p4Quests matches 1 run function hp:quests/quests/apparition/wave3_enemies


# Count the enemies
scoreboard players set @s tmp 12
execute as @e[tag=creature,scores={waveID=4,questID=22}] run scoreboard players remove @p[tag=activePlayer] tmp 1
execute as @s[scores={questState=13,playerID=1},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p1Quests matches 0 run bossbar set minecraft:player1quest name ["",{"text":"Защищайтесь  от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 12)","color":"gold"}]
execute as @s[scores={questState=13,playerID=2},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p2Quests matches 0 run bossbar set minecraft:player2quest name ["",{"text":"Защищайтесь  от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 12)","color":"gold"}]
execute as @s[scores={questState=13,playerID=3},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p3Quests matches 0 run bossbar set minecraft:player3quest name ["",{"text":"Защищайтесь  от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 12)","color":"gold"}]
execute as @s[scores={questState=13,playerID=4},tag=isTrackedQuest] if score apparitionDeathEaterAttackTimer p4Quests matches 0 run bossbar set minecraft:player4quest name ["",{"text":"Защищайтесь  от противников (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" из 12)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=13,playerID=1,tmp=12}] if score apparitionDeathEaterAttackTimer p1Quests matches 0 run tag @s add newState
execute as @s[scores={questState=13,playerID=2,tmp=12}] if score apparitionDeathEaterAttackTimer p2Quests matches 0 run tag @s add newState
execute as @s[scores={questState=13,playerID=3,tmp=12}] if score apparitionDeathEaterAttackTimer p3Quests matches 0 run tag @s add newState
execute as @s[scores={questState=13,playerID=4,tmp=12}] if score apparitionDeathEaterAttackTimer p4Quests matches 0 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 14
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s cutSceneID 44
execute as @s[tag=newState] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=44}] run tag @s add cutsceneLeader
execute as @s[tag=newState] run function hp:cutscenes/init_cutscene
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set apparitionDeathEaterAttackTimer p1Quests 100
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set apparitionDeathEaterAttackTimer p2Quests 100
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set apparitionDeathEaterAttackTimer p3Quests 100
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set apparitionDeathEaterAttackTimer p4Quests 100
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set willkieTwycross p1convOverride 7
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set willkieTwycross p2convOverride 7
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set willkieTwycross p3convOverride 7
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set willkieTwycross p4convOverride 7
execute as @s[tag=newState] run tag @s remove newState


#############
## State 14 ###########################################################################################
#############
# Speak to Уикли Двукрест
### Tracked Quest ###
execute as @s[scores={questState=14},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=14},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1462,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=14},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=14},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 9044.25 69.00 96.17
execute as @s[scores={questState=14,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=219},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=14},tag=isTrackedQuest] run scoreboard players set @s questRegion 8

execute as @s[scores={questState=14},tag=inNormalState,tag=hasSpokenToTwycrossAfterDeathEaterAttack] run tag @s add completeQuest


#################
### Completed ###
#################

# Advancement ui:	
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/timer/end_pensive_timer
execute as @s[tag=completeQuest] run tag @s remove hasSpokenToTwycrossAfterDeathEaterAttack
execute as @s[tag=completeQuest] run scoreboard players set @s overrideRespawn 0
execute as @s[tag=completeQuest] run scoreboard players set @s questQueueID 34
execute as @s[tag=completeQuest] run scoreboard players set @s questQueue 120
execute as @s[tag=completeQuest] run tag @s add queingQuest
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest,tag=gameLeader] run gamerule doDaylightCycle true
execute as @s[tag=completeQuest] run tag @s remove maraudersMapLocked
execute as @s[tag=completeQuest] run tag @s remove lockTrackedQuest
execute as @s[tag=completeQuest] run tag @s add hasLearnedApparition
execute as @s[tag=completeQuest] unless entity @p[scores={trackedQuestID=22}] run scoreboard players set playerInApparitionSpellChallenge global 0
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set willkieTwycross p1convOverride 25
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set willkieTwycross p2convOverride 25
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set willkieTwycross p3convOverride 25
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set willkieTwycross p4convOverride 25
execute as @s[tag=completeQuest] run tag @s add musicController
execute as @s[tag=completeQuest,scores={musicPhase=..0}] run scoreboard players set @s musicPhase 0
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest



# Music
execute positioned 8952 69 0 as @s[tag=waitingToPlayApparitionMusic,distance=..7] run function hp:music/music/swish_and_flick
execute positioned 8952 69 0 as @s[tag=waitingToPlayApparitionMusic,distance=..7] run tag @s remove waitingToPlayApparitionMusic
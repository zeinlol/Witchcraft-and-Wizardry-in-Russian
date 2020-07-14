##############################################
# Arrival at Hogwarts
##############################################
scoreboard players set @s questID 8
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.arrivalAtHogwarts"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

# Complete Quest Cheat
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s add completeQuest
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s house 1
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tp @s 4949.10 31.00 1052.00 46.26 -0.65
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest,scores={playerID=1}] run scoreboard players set hagrid p1convOverride 22
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest,scores={playerID=2}] run scoreboard players set hagrid p2convOverride 22
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest,scores={playerID=3}] run scoreboard players set hagrid p3convOverride 22
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest,scores={playerID=4}] run scoreboard players set hagrid p4convOverride 22
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s worldBarrier 0
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s overrideRespawn 8
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

# If boat walking hagrid doesn't exist (maybe player has logged in after he has been removed or something has gone wrong) spawn him here.
execute if score boatWalkingHagridExists global matches 0 at @s run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute if score boatWalkingHagridExists global matches 0 as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 826 -1716 1 1 false @s
execute if score boatWalkingHagridExists global matches 0 run function hp:misc/summon_boat_walking_hagrid
execute if score boatWalkingHagridExists global matches 0 as @e[tag=chunkLoader,limit=1,sort=nearest] run kill @s
execute if score boatWalkingHagridExists global matches 0 run scoreboard players set boatWalkingHagridExists global 1



#############
## State 1 ###########################################################################################
#############
# Speak to Hagrid

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1541,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 826.60 49.00 -1716.55
execute as @s[scores={questState=1,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[tag=hagridLayer2] unless entity @e[tag=hagridLayer1,tag=inConversationNPC,limit=1,sort=nearest,distance=..2] run particle minecraft:angry_villager ~ ~1 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
### Function ###


### Trigger ###
execute as @s[tag=spokenToHagridAboutTheBoats,scores={questState=1},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState,tag=isTrackedQuest] run scoreboard players operation @s trackQuestState = @s questState
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove spokenToHagridAboutTheBoats
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set hagrid p1convOverride 22
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set hagrid p2convOverride 22
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set hagrid p3convOverride 22
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set hagrid p4convOverride 22
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Wait for everyone to do the same

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1554,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 826.60 49.00 -1716.55
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 3


# Function
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasSpokenToHagridAtHogsmeadePlatform,tag=play] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute as @a[scores={trackedQuestID=8,trackQuestState=2},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=2,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=2},tag=inNormalState,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s add cutsceneSlave
execute as @s[tag=newState] unless entity @p[tag=inCutScene,scores={cutSceneID=8}] run tag @s add doNotAffectPlayer
execute as @s[tag=newState] unless entity @p[tag=inCutScene,scores={cutSceneID=8}] run tag @s add cutsceneMaster
execute as @s[tag=newState] unless entity @p[tag=inCutScene,scores={cutSceneID=8}] run scoreboard players set @s cutSceneID 8
execute as @s[tag=newState] unless entity @p[tag=inCutScene,scores={cutSceneID=8}] run function hp:cutscenes/init_cutscene
execute as @s[tag=newState] run tag @s add hasSpokenToHagridAtHogsmeadePlatform
execute as @s[tag=newState] run tag @s remove newState


#############
## State 3 ###########################################################################################
#############
# Follow Hagrid to the boats

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1554,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] unless entity @e[tag=boatWalkingHagridFpEngine] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 895.00 15.00 -1523.99
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @e[tag=boatWalkingHagridFpEngine] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing entity @e[tag=boatWalkingHagridFpEngine,sort=nearest,limit=1]
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3


execute as @s[scores={questState=3},tag=isTrackedQuest,tag=!endBoatWalkingCutscene,tag=!boatWalkingCutsceneHasEnded] positioned 894.82 15.00 -1519.67 if entity @e[tag=boatWalkingHagridFpEngine,distance=..10] run tag @s add endBoatWalkingCutscene

### Trigger ###
execute positioned 894.82 15.00 -1519.67 as @s[tag=boatWalkingCutsceneHasEnded,tag=!cutsceneEndedThisTick,distance=..20,scores={questState=3},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run tag @s remove boatWalkingCutsceneHasEnded
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState,tag=isTrackedQuest] run scoreboard players operation @s trackQuestState = @s questState
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState


#############
## State 4 ###########################################################################################
#############
# Wait for everyone to arrive

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1554,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing -247.58 56.00 -592.20
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 3

# Function
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasFollowedHagridToTheBoats,tag=play] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute as @a[scores={trackedQuestID=8,trackQuestState=4},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=4,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=4,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=4,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=4,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Дождитесь, пока все будут готовы (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]


# Trigger
# This weird double tag thing is because of a super strange bug I can't explain some people run into where all the commands below execute but they don't progress to the next
# Quest state. The tag "goToNextQuestState" is removed in set_quest, and so it should just execute everything again if it for some reason doesn't set the quest the first time
# Around
execute as @s[scores={questState=4},tag=inNormalState,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add goToNextQuestState
execute as @s[tag=goToNextQuestState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 7
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=3}] run tag @s add cutsceneLeader
execute as @s[tag=newState] run scoreboard players set @s cutSceneID 3
execute as @s[tag=newState] run function hp:cutscenes/init_cutscene
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set hagrid p1convOverride 23
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set hagrid p2convOverride 23
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set hagrid p3convOverride 23
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set hagrid p4convOverride 23
execute as @s[tag=newState] run tag @s add hasFollowedHagridToTheBoats
execute as @s[tag=newState] run tag @s remove newState


#############
## State 5 ###########################################################################################
#############
# Walk to the castle

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1553,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 763.02 67.00 344.01
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Trigger ###
execute positioned 763.02 67.00 344.01 as @s[distance=..6,scores={questState=5},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState,tag=isTrackedQuest] run scoreboard players operation @s trackQuestState = @s questState
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 6 ###########################################################################################
#############
# Wait for everyone to arrive

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1553,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing -186.27 56.00 -630.16

# Function
scoreboard players set @s suitableCount 0
execute as @a[tag=!hasWalkedToTheCastleToBeSorted,tag=play] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute as @a[scores={trackedQuestID=8,trackQuestState=6},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

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
execute as @s[tag=newState] run scoreboard players set @s overrideRespawn 8
execute as @s[tag=newState] run scoreboard players set @s questState 7
execute as @s[tag=newState,tag=isTrackedQuest] run scoreboard players operation @s trackQuestState = @s questState
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=4}] run tag @s add cutsceneLeader
execute as @s[tag=newState] run scoreboard players set @s cutSceneID 4
execute as @s[tag=newState] run function hp:cutscenes/init_cutscene
# (Sorted players + 1 to match playerID)
execute as @s[tag=newState] run scoreboard players set global sortedPlayers 1
execute as @s[tag=newState] run tag @s add hasWalkedToTheCastleToBeSorted
execute as @s[tag=newState] run scoreboard players set @s worldBarrier 0
execute as @s[tag=newState] run tag @s remove newState


#############
## State 7 ###########################################################################################
#############
# Player 1 sort

### Tracked Quest ###
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=7},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1552,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=7,playerID=2},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=7,playerID=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=7,playerID=4},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=7},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 4945.46 32.44 1055.52

# Special selection
execute at @s[scores={questState=7,playerID=1},tag=isTrackedQuest,tag=!inProperCutScene] positioned ^ ^-.25 ^1 run tag @e[distance=..2,limit=1,sort=nearest,tag=sortingHat] add questHover
execute as @s[scores={questState=7,playerID=1},tag=isTrackedQuest,tag=!inProperCutScene] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Title
execute as @s[scores={questState=7},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=7,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"","color":"gold"}]
execute as @s[scores={questState=7,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Ждите своей очереди распределения","color":"gold"}]
execute as @s[scores={questState=7,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Ждите своей очереди распределения","color":"gold"}]
execute as @s[scores={questState=7,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Ждите своей очереди распределения","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=7},tag=inNormalState,tag=isTrackedQuest] unless entity @p[scores={playerID=1,house=0}] unless entity @p[scores={playerID=1},tag=inConversation] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 8
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 8 ###########################################################################################
#############
# Player 2 sort

### Tracked Quest ###
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=8},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1552,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=8,playerID=1},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=8,playerID=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=8,playerID=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=8,playerID=4},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=8},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 4945.46 32.44 1055.52

# Special selection
execute at @s[scores={questState=8,playerID=2},tag=isTrackedQuest,tag=!inProperCutScene] positioned ^ ^-.25 ^1 run tag @e[distance=..2,limit=1,sort=nearest,tag=sortingHat] add questHover
execute as @s[scores={questState=8,playerID=2},tag=isTrackedQuest,tag=!inProperCutScene] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Title
execute as @s[scores={questState=8},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=8,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Займите место и подождите, пока всех распределят","color":"gold"}]
execute as @s[scores={questState=8,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"","color":"gold"}]
execute as @s[scores={questState=8,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Ждите своей очереди распределения","color":"gold"}]
execute as @s[scores={questState=8,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Ждите своей очереди распределения","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=8},tag=inNormalState,tag=isTrackedQuest] unless entity @p[scores={playerID=2,house=0}] unless entity @p[scores={playerID=2},tag=inConversation] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 9
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState


#############
## State 9 ###########################################################################################
#############
# Player 3 sort

### Tracked Quest ###
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=9},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1552,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=9,playerID=1},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=9,playerID=2},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=9,playerID=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=9,playerID=4},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=9},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 4945.46 32.44 1055.52

# Special selection
execute at @s[scores={questState=9,playerID=3},tag=isTrackedQuest,tag=!inProperCutScene] positioned ^ ^-.25 ^1 run tag @e[distance=..2,limit=1,sort=nearest,tag=sortingHat] add questHover
execute as @s[scores={questState=9,playerID=3},tag=isTrackedQuest,tag=!inProperCutScene] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Title
execute as @s[scores={questState=9},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=9,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Займите место и подождите, пока всех распределят","color":"gold"}]
execute as @s[scores={questState=9,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Займите место и подождите, пока всех распределят","color":"gold"}]
execute as @s[scores={questState=9,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"","color":"gold"}]
execute as @s[scores={questState=9,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Ждите своей очереди распределения","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=9},tag=inNormalState,tag=isTrackedQuest] unless entity @p[scores={playerID=3,house=0}] unless entity @p[scores={playerID=1},tag=inConversation] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 10
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState


#############
## State 10 ###########################################################################################
#############
# Player 4 sort

### Tracked Quest ###
execute as @s[scores={questState=10},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=10},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1552,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=10,playerID=1},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=10,playerID=2},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=10,playerID=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=10,playerID=4},tag= isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=10},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 4945.46 32.44 1055.52

# Special selection
execute at @s[scores={questState=10,playerID=4},tag=isTrackedQuest,tag=!inProperCutScene] positioned ^ ^-.25 ^1 run tag @e[distance=..2,limit=1,sort=nearest,tag=sortingHat] add questHover
execute as @s[scores={questState=10,playerID=4},tag=isTrackedQuest,tag=!inProperCutScene] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Title
execute as @s[scores={questState=10},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=10,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Займите место и подождите, пока всех распределят","color":"gold"}]
execute as @s[scores={questState=10,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Займите место и подождите, пока всех распределят","color":"gold"}]
execute as @s[scores={questState=10,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Займите место и подождите, пока всех распределят","color":"gold"}]
execute as @s[scores={questState=10,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=10},tag=inNormalState,tag=isTrackedQuest] unless entity @p[scores={playerID=4,house=0}] unless entity @p[scores={playerID=1},tag=inConversation] run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest,scores={house=0..1}] run scoreboard players set @s questQueueID 9
execute as @s[tag=completeQuest,scores={house=2}] run scoreboard players set @s questQueueID 10
execute as @s[tag=completeQuest,scores={house=3}] run scoreboard players set @s questQueueID 11
execute as @s[tag=completeQuest,scores={house=4}] run scoreboard players set @s questQueueID 12

# Override conversation for prefects
execute as @s[tag=completeQuest,scores={house=0..1,playerID=1}] run scoreboard players set percy p1convOverride 0
execute as @s[tag=completeQuest,scores={house=0..1,playerID=2}] run scoreboard players set percy p2convOverride 0
execute as @s[tag=completeQuest,scores={house=0..1,playerID=3}] run scoreboard players set percy p3convOverride 0
execute as @s[tag=completeQuest,scores={house=0..1,playerID=4}] run scoreboard players set percy p4convOverride 0
execute as @s[tag=completeQuest,scores={house=0..1,playerID=1}] run scoreboard players set cedric p1convOverride 6
execute as @s[tag=completeQuest,scores={house=0..1,playerID=2}] run scoreboard players set cedric p2convOverride 6
execute as @s[tag=completeQuest,scores={house=0..1,playerID=3}] run scoreboard players set cedric p3convOverride 6
execute as @s[tag=completeQuest,scores={house=0..1,playerID=4}] run scoreboard players set cedric p4convOverride 6
execute as @s[tag=completeQuest,scores={house=0..1,playerID=1}] run scoreboard players set ravenclawPrefect p1convOverride 6
execute as @s[tag=completeQuest,scores={house=0..1,playerID=2}] run scoreboard players set ravenclawPrefect p2convOverride 6
execute as @s[tag=completeQuest,scores={house=0..1,playerID=3}] run scoreboard players set ravenclawPrefect p3convOverride 6
execute as @s[tag=completeQuest,scores={house=0..1,playerID=4}] run scoreboard players set ravenclawPrefect p4convOverride 6
execute as @s[tag=completeQuest,scores={house=0..1,playerID=1}] run scoreboard players set slytherinPrefect p1convOverride 6
execute as @s[tag=completeQuest,scores={house=0..1,playerID=2}] run scoreboard players set slytherinPrefect p2convOverride 6
execute as @s[tag=completeQuest,scores={house=0..1,playerID=3}] run scoreboard players set slytherinPrefect p3convOverride 6
execute as @s[tag=completeQuest,scores={house=0..1,playerID=4}] run scoreboard players set slytherinPrefect p4convOverride 6

execute as @s[tag=completeQuest,scores={house=2,playerID=1}] run scoreboard players set percy p1convOverride 6
execute as @s[tag=completeQuest,scores={house=2,playerID=2}] run scoreboard players set percy p2convOverride 6
execute as @s[tag=completeQuest,scores={house=2,playerID=3}] run scoreboard players set percy p3convOverride 6
execute as @s[tag=completeQuest,scores={house=2,playerID=4}] run scoreboard players set percy p4convOverride 6
execute as @s[tag=completeQuest,scores={house=2,playerID=1}] run scoreboard players set cedric p1convOverride 6
execute as @s[tag=completeQuest,scores={house=2,playerID=2}] run scoreboard players set cedric p2convOverride 6
execute as @s[tag=completeQuest,scores={house=2,playerID=3}] run scoreboard players set cedric p3convOverride 6
execute as @s[tag=completeQuest,scores={house=2,playerID=4}] run scoreboard players set cedric p4convOverride 6
execute as @s[tag=completeQuest,scores={house=2,playerID=1}] run scoreboard players set ravenclawPrefect p1convOverride 0
execute as @s[tag=completeQuest,scores={house=2,playerID=2}] run scoreboard players set ravenclawPrefect p2convOverride 0
execute as @s[tag=completeQuest,scores={house=2,playerID=3}] run scoreboard players set ravenclawPrefect p3convOverride 0
execute as @s[tag=completeQuest,scores={house=2,playerID=4}] run scoreboard players set ravenclawPrefect p4convOverride 0
execute as @s[tag=completeQuest,scores={house=2,playerID=1}] run scoreboard players set slytherinPrefect p1convOverride 6
execute as @s[tag=completeQuest,scores={house=2,playerID=2}] run scoreboard players set slytherinPrefect p2convOverride 6
execute as @s[tag=completeQuest,scores={house=2,playerID=3}] run scoreboard players set slytherinPrefect p3convOverride 6
execute as @s[tag=completeQuest,scores={house=2,playerID=4}] run scoreboard players set slytherinPrefect p4convOverride 6

execute as @s[tag=completeQuest,scores={house=3,playerID=1}] run scoreboard players set percy p1convOverride 6
execute as @s[tag=completeQuest,scores={house=3,playerID=2}] run scoreboard players set percy p2convOverride 6
execute as @s[tag=completeQuest,scores={house=3,playerID=3}] run scoreboard players set percy p3convOverride 6
execute as @s[tag=completeQuest,scores={house=3,playerID=4}] run scoreboard players set percy p4convOverride 6
execute as @s[tag=completeQuest,scores={house=3,playerID=1}] run scoreboard players set cedric p1convOverride 0
execute as @s[tag=completeQuest,scores={house=3,playerID=2}] run scoreboard players set cedric p2convOverride 0
execute as @s[tag=completeQuest,scores={house=3,playerID=3}] run scoreboard players set cedric p3convOverride 0
execute as @s[tag=completeQuest,scores={house=3,playerID=4}] run scoreboard players set cedric p4convOverride 0
execute as @s[tag=completeQuest,scores={house=3,playerID=1}] run scoreboard players set ravenclawPrefect p1convOverride 6
execute as @s[tag=completeQuest,scores={house=3,playerID=2}] run scoreboard players set ravenclawPrefect p2convOverride 6
execute as @s[tag=completeQuest,scores={house=3,playerID=3}] run scoreboard players set ravenclawPrefect p3convOverride 6
execute as @s[tag=completeQuest,scores={house=3,playerID=4}] run scoreboard players set ravenclawPrefect p4convOverride 6
execute as @s[tag=completeQuest,scores={house=3,playerID=1}] run scoreboard players set slytherinPrefect p1convOverride 6
execute as @s[tag=completeQuest,scores={house=3,playerID=2}] run scoreboard players set slytherinPrefect p2convOverride 6
execute as @s[tag=completeQuest,scores={house=3,playerID=3}] run scoreboard players set slytherinPrefect p3convOverride 6
execute as @s[tag=completeQuest,scores={house=3,playerID=4}] run scoreboard players set slytherinPrefect p4convOverride 6

execute as @s[tag=completeQuest,scores={house=4,playerID=1}] run scoreboard players set percy p1convOverride 6
execute as @s[tag=completeQuest,scores={house=4,playerID=2}] run scoreboard players set percy p2convOverride 6
execute as @s[tag=completeQuest,scores={house=4,playerID=3}] run scoreboard players set percy p3convOverride 6
execute as @s[tag=completeQuest,scores={house=4,playerID=4}] run scoreboard players set percy p4convOverride 6
execute as @s[tag=completeQuest,scores={house=4,playerID=1}] run scoreboard players set cedric p1convOverride 6
execute as @s[tag=completeQuest,scores={house=4,playerID=2}] run scoreboard players set cedric p2convOverride 6
execute as @s[tag=completeQuest,scores={house=4,playerID=3}] run scoreboard players set cedric p3convOverride 6
execute as @s[tag=completeQuest,scores={house=4,playerID=4}] run scoreboard players set cedric p4convOverride 6
execute as @s[tag=completeQuest,scores={house=4,playerID=1}] run scoreboard players set ravenclawPrefect p1convOverride 6
execute as @s[tag=completeQuest,scores={house=4,playerID=2}] run scoreboard players set ravenclawPrefect p2convOverride 6
execute as @s[tag=completeQuest,scores={house=4,playerID=3}] run scoreboard players set ravenclawPrefect p3convOverride 6
execute as @s[tag=completeQuest,scores={house=4,playerID=4}] run scoreboard players set ravenclawPrefect p4convOverride 6
execute as @s[tag=completeQuest,scores={house=4,playerID=1}] run scoreboard players set slytherinPrefect p1convOverride 0
execute as @s[tag=completeQuest,scores={house=4,playerID=2}] run scoreboard players set slytherinPrefect p2convOverride 0
execute as @s[tag=completeQuest,scores={house=4,playerID=3}] run scoreboard players set slytherinPrefect p3convOverride 0
execute as @s[tag=completeQuest,scores={house=4,playerID=4}] run scoreboard players set slytherinPrefect p4convOverride 0

execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set fredGeorge p1convOverride 6
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set fredGeorge p2convOverride 6
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set fredGeorge p3convOverride 6
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set fredGeorge p4convOverride 6

execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set neville p1convOverride 6
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set neville p2convOverride 6
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set neville p3convOverride 6
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set neville p4convOverride 6

execute as @s[tag=completeQuest,scores={playerID=1}] if score malfoy p1convOverride matches 1.. run scoreboard players set malfoy p1convOverride 14
execute as @s[tag=completeQuest,scores={playerID=2}] if score malfoy p2convOverride matches 1.. run scoreboard players set malfoy p2convOverride 14
execute as @s[tag=completeQuest,scores={playerID=3}] if score malfoy p3convOverride matches 1.. run scoreboard players set malfoy p3convOverride 14
execute as @s[tag=completeQuest,scores={playerID=4}] if score malfoy p4convOverride matches 1.. run scoreboard players set malfoy p4convOverride 14
execute as @s[tag=completeQuest,scores={playerID=1}] unless score malfoy p1convOverride matches 1.. run scoreboard players set malfoy p1convOverride 13
execute as @s[tag=completeQuest,scores={playerID=2}] unless score malfoy p2convOverride matches 1.. run scoreboard players set malfoy p2convOverride 13
execute as @s[tag=completeQuest,scores={playerID=3}] unless score malfoy p3convOverride matches 1.. run scoreboard players set malfoy p3convOverride 13
execute as @s[tag=completeQuest,scores={playerID=4}] unless score malfoy p4convOverride matches 1.. run scoreboard players set malfoy p4convOverride 13

execute as @s[tag=completeQuest] run scoreboard players set @s questQueue 430
execute as @s[tag=completeQuest] run tag @s add queingQuest
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=5}] run tag @s add cutsceneLeader
execute as @s[tag=completeQuest] run scoreboard players set @s cutSceneID 5
execute as @s[tag=completeQuest] run function hp:cutscenes/init_cutscene
execute as @s[tag=completeQuest] run function hp:quests/quests/arrival_at_hogwarts/clear_great_hall_doors
execute as @s[tag=completeQuest] unless entity @p[scores={trackedQuestID=8}] run scoreboard players set boatWalkingHagridExists global 0
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# reset quest tracking boolean
tag @s remove isTrackedQuest
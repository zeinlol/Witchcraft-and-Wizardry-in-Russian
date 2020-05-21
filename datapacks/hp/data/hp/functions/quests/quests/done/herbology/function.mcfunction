##############################################
# Herbology Lesson
##############################################
scoreboard players set @s questID 27
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.herbology"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest


#############
## State 1 ###########################################################################################
#############
# Find Professor Sprout by the greenhouses
### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1523,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 743.53 53.00 61.43
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Trigger
execute positioned as @s[x=721,y=53,z=56,dx=26,dy=8,dz=8,scores={questState=1},tag=inNormalState,tag=isTrackedQuest] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set sprout p1convOverride 5
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set sprout p2convOverride 5
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set sprout p3convOverride 5
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set sprout p4convOverride 5
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Wait for everyone to arrive

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1523,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###
scoreboard players set @s suitableCount 0
execute as @a[tag=earmuffsLocked,tag=play] unless score @s trackedQuestID matches 27 run scoreboard players add @p[tag=activePlayer] suitableCount 1
execute as @a[tag=earmuffsLocked,scores={trackedQuestID=27,trackQuestState=..2},tag=play] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute as @a[scores={trackedQuestID=27,trackQuestState=2},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=2,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Wait for everyone to get ready (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Wait for everyone to get ready (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Wait for everyone to get ready (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Wait for everyone to get ready (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]

# Trigger
# This weird double tag thing is because of a super strange bug I can't explain some people run into where all the commands below execute but they don't progress to the next
# Quest state. The tag "goToNextQuestState" is removed in set_quest, and so it should just execute everything again if it for some reason doesn't set the quest the first time
# Around
execute as @s[scores={questState=2},tag=inNormalState,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add goToNextQuestState
execute as @s[tag=goToNextQuestState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] unless entity @p[tag=cutsceneLeader,scores={cutSceneID=22}] run tag @s add cutsceneLeader
execute as @s[tag=newState] run scoreboard players set @s cutSceneID 22
execute as @s[tag=newState] run function hp:cutscenes/init_cutscene
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set sprout p1convOverride 3
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set sprout p2convOverride 3
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set sprout p3convOverride 3
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set sprout p4convOverride 3
execute as @s[tag=newState] run scoreboard players set rotateHerbologyStars global 1
execute if score herbologyStarsSetup global matches 0 as @s[tag=newState,tag=gameLeader] run function hp:quests/quests/herbology/setup_herbology_stars
execute as @s[tag=newState] run tag @s remove earmuffsLocked
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Collect stars

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1522,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
### Function ###

# Special selection
execute at @s[scores={questState=3}] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=star,tag=herbologyStar,tag=!starHasBeenCollected] add questHover


execute as @s[tag=hasPressedF,scores={questState=3}] if entity @e[tag=questHover,tag=star,tag=herbologyStar,limit=1] run scoreboard players add collectedHerbologyStars sharedQuests 1
execute as @s[tag=hasPressedF,scores={questState=3}] if entity @e[tag=questHover,tag=star,tag=herbologyStar,limit=1] at @s run playsound minecraft:custom.ui.learn.spell_learned master @a ~ ~ ~ 1 1
execute if entity @s[tag=hasPressedF,scores={questState=3}] as @e[tag=questHover,tag=star,tag=herbologyStar,limit=1] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 0
execute if entity @s[tag=hasPressedF,scores={questState=3}] as @e[tag=questHover,tag=star,tag=herbologyStar,limit=1] run tag @s add starHasBeenCollected


# Title
execute as @s[scores={questState=3},tag=isTrackedQuest,tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=1},tag=isTrackedQuest,tag=!inConversation,tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run bossbar set minecraft:player1quest name ["",{"text":"Collect all 4 stars (","color":"gold"},{"score":{"name":"collectedHerbologyStars","objective":"sharedQuests"},"color":"gold"},{"text":" / 4)","color":"gold"}]
execute as @s[scores={questState=3,playerID=2},tag=isTrackedQuest,tag=!inConversation,tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run bossbar set minecraft:player2quest name ["",{"text":"Collect all 4 stars (","color":"gold"},{"score":{"name":"collectedHerbologyStars","objective":"sharedQuests"},"color":"gold"},{"text":" / 4)","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=isTrackedQuest,tag=!inConversation,tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run bossbar set minecraft:player3quest name ["",{"text":"Collect all 4 stars (","color":"gold"},{"score":{"name":"collectedHerbologyStars","objective":"sharedQuests"},"color":"gold"},{"text":" / 4)","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=isTrackedQuest,tag=!inConversation,tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run bossbar set minecraft:player4quest name ["",{"text":"Collect all 4 stars (","color":"gold"},{"score":{"name":"collectedHerbologyStars","objective":"sharedQuests"},"color":"gold"},{"text":" / 4)","color":"gold"}]



### Trigger ###
execute as @s[scores={questState=3},tag=inNormalState] if score collectedHerbologyStars sharedQuests matches 4.. run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set sprout p1convOverride 4
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set sprout p2convOverride 4
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set sprout p3convOverride 4
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set sprout p4convOverride 4
execute as @s[tag=newState] run tag @s remove newState


#############
## State 4 ###########################################################################################
#############
# Speak to professor Sprout

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1521,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 743.57 53.00 61.49
execute as @s[scores={questState=4,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=42},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###


### Trigger ###
execute as @s[scores={questState=4},tag=inNormalState,tag=hasSpokenToSproutAfterHerbologyLesson] run tag @s add completeQuest


#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set @s questQueueID 20
execute as @s[tag=completeQuest] run scoreboard players set @s questQueue 120
execute as @s[tag=completeQuest] run tag @s add queingQuest
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set sprout p1convOverride 1
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set sprout p2convOverride 1
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set sprout p3convOverride 1
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set sprout p4convOverride 1
execute as @s[tag=completeQuest] run tag @s remove hasSpokenToSproutAfterHerbologyLesson
execute as @s[tag=completeQuest] run scoreboard players set rotateHerbologyStars global 0
execute as @s[tag=completeQuest] run function hp:quests/quests/herbology/remove_herbology_stars
execute as @s[tag=completeQuest] run tag @s remove earmuffsLocked
execute as @s[tag=completeQuest] unless entity @p[tag=earmuffsLocked,tag=inGame] run scoreboard players set resetHerbologyClass global 1
execute as @s[tag=completeQuest,tag=gameLeader] run function hp:quests/quests/vera_verto/setup_transfiguration_classroom
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest




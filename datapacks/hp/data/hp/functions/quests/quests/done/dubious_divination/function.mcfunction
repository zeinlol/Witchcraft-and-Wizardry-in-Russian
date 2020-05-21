##############################################
# Dubious Divination
##############################################
scoreboard players set @s questID 64
scoreboard players operation @s questState = dubiousDivination sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Acquire 'Weather in a Bottle'

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1369,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=1,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=1,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=1,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=1,lastRegion=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 5
execute as @s[scores={questState=1,lastRegion=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 6
execute as @s[scores={questState=1,lastRegion=7},tag=isTrackedQuest] run scoreboard players set @s questRegion 7
execute as @s[scores={questState=1,lastRegion=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 8
execute as @s[scores={questState=1,lastRegion=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 9
execute as @s[scores={questState=1,lastRegion=10},tag=isTrackedQuest] run scoreboard players set @s questRegion 10

### Trigger ###
execute store result score @s tmp run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.WeatherInABottle.count" 1
execute as @s[scores={questState=1,tmp=1..},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set dubiousDivination sharedQuests 2

execute as @s[scores={playerID=1}] unless score dubiousDivination p1Quests = dubiousDivination sharedQuests if score dubiousDivination sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score dubiousDivination p2Quests = dubiousDivination sharedQuests if score dubiousDivination sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score dubiousDivination p3Quests = dubiousDivination sharedQuests if score dubiousDivination sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score dubiousDivination p4Quests = dubiousDivination sharedQuests if score dubiousDivination sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation dubiousDivination p1Quests = dubiousDivination sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation dubiousDivination p2Quests = dubiousDivination sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation dubiousDivination p3Quests = dubiousDivination sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation dubiousDivination p4Quests = dubiousDivination sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Use 'Weather in a Bottle' in the Класс Прорицаний

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1368,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] unless entity @s[x=650,dx=20,y=92,dy=7,z=297,dz=10] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[x=650,dx=20,y=92,dy=7,z=297,dz=10] run tag @s add questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 651 86 304

# Trigger
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @e[x=650,dx=20,y=92,dy=7,z=297,dz=10,tag=weatherInABottle,limit=1] run scoreboard players set dubiousDivination sharedQuests 3

execute as @s[scores={playerID=1}] unless score dubiousDivination p1Quests = dubiousDivination sharedQuests if score dubiousDivination sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score dubiousDivination p2Quests = dubiousDivination sharedQuests if score dubiousDivination sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score dubiousDivination p3Quests = dubiousDivination sharedQuests if score dubiousDivination sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score dubiousDivination p4Quests = dubiousDivination sharedQuests if score dubiousDivination sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation dubiousDivination p1Quests = dubiousDivination sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation dubiousDivination p2Quests = dubiousDivination sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation dubiousDivination p3Quests = dubiousDivination sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation dubiousDivination p4Quests = dubiousDivination sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Speak to Trelawney to make sure she has changed her mind

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1367,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 665 92 303
execute as @s[scores={questState=3,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=7},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

# Function
### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=3,convState=1,conv=7}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Расскажите мне о Салли Смит\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 7
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

# Trigger
execute as @s[scores={questState=3},tag=isTrackedQuest,tag=hasSpokenToTrelawneyAfterUsingWeatherInABottle] run scoreboard players set dubiousDivination sharedQuests 4
execute as @s[scores={playerID=1}] unless score dubiousDivination p1Quests = dubiousDivination sharedQuests if score dubiousDivination sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=2}] unless score dubiousDivination p2Quests = dubiousDivination sharedQuests if score dubiousDivination sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=3}] unless score dubiousDivination p3Quests = dubiousDivination sharedQuests if score dubiousDivination sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=4}] unless score dubiousDivination p4Quests = dubiousDivination sharedQuests if score dubiousDivination sharedQuests matches 4 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set hogwarts123 p1convOverride 6
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set hogwarts123 p2convOverride 6
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set hogwarts123 p3convOverride 6
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set hogwarts123 p4convOverride 6
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation dubiousDivination p1Quests = dubiousDivination sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation dubiousDivination p2Quests = dubiousDivination sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation dubiousDivination p3Quests = dubiousDivination sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation dubiousDivination p4Quests = dubiousDivination sharedQuests
execute as @s[tag=newState] run tag @s remove hasSpokenToTrelawneyAfterUsingWeatherInABottle
execute as @s[tag=newState] run tag @s remove newState

#############
## State 4 ###########################################################################################
#############
# Speak to Салли Смит

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1366,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 732 99 306
execute as @s[scores={questState=4,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=345},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

# Trigger
execute as @s[scores={questState=4},tag=inNormalState,tag=hasCompletedDubiousDivination] run scoreboard players set dubiousDivination sharedQuests -1
execute as @s[scores={playerID=1}] unless score dubiousDivination p1Quests = dubiousDivination sharedQuests if score dubiousDivination sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score dubiousDivination p2Quests = dubiousDivination sharedQuests if score dubiousDivination sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score dubiousDivination p3Quests = dubiousDivination sharedQuests if score dubiousDivination sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score dubiousDivination p4Quests = dubiousDivination sharedQuests if score dubiousDivination sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set dubiousDivination sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players add @s money 200
execute as @s[tag=completeQuest] run tag @s remove hasCompletedDubiousDivination
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set hogwarts123 p1convOverride 7
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set hogwarts123 p2convOverride 7
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set hogwarts123 p3convOverride 7
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set hogwarts123 p4convOverride 7
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation dubiousDivination p1Quests = dubiousDivination sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation dubiousDivination p2Quests = dubiousDivination sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation dubiousDivination p3Quests = dubiousDivination sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation dubiousDivination p4Quests = dubiousDivination sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
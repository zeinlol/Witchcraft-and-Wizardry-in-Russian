##############################################
# Hogsmeade Letter Delivery
##############################################
scoreboard players set @s questID 45
scoreboard players operation @s questState = hogsmeadeLetterDelivery sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Travel to Hogsmeade

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1429,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=1,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=1,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] unless entity @s[x=2870,dx=268,y=54,dy=26,z=-465,dz=39] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2940 61 -5
execute as @s[scores={questState=1,lastRegion=2},tag=isTrackedQuest] if entity @s[x=2870,dx=268,y=54,dy=26,z=-465,dz=39] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2978 58 -453
execute as @s[scores={questState=1,lastRegion=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 779 80 -2044
execute as @s[scores={questState=1,lastRegion=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5316 101 2473


execute as @s[scores={questState=1,lastRegion=4},tag=isTrackedQuest,x=5185,y=87,z=2432,dx=278,dy=158,dz=100] run scoreboard players set hogsmeadeLetterDelivery sharedQuests 2

execute as @s[scores={playerID=1}] unless score hogsmeadeLetterDelivery p1Quests = hogsmeadeLetterDelivery sharedQuests if score hogsmeadeLetterDelivery sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score hogsmeadeLetterDelivery p2Quests = hogsmeadeLetterDelivery sharedQuests if score hogsmeadeLetterDelivery sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score hogsmeadeLetterDelivery p3Quests = hogsmeadeLetterDelivery sharedQuests if score hogsmeadeLetterDelivery sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score hogsmeadeLetterDelivery p4Quests = hogsmeadeLetterDelivery sharedQuests if score hogsmeadeLetterDelivery sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound

execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation hogsmeadeLetterDelivery p1Quests = hogsmeadeLetterDelivery sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation hogsmeadeLetterDelivery p2Quests = hogsmeadeLetterDelivery sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation hogsmeadeLetterDelivery p3Quests = hogsmeadeLetterDelivery sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation hogsmeadeLetterDelivery p4Quests = hogsmeadeLetterDelivery sharedQuests
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Deliver the letter

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1428,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2,lastRegion=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=2,lastRegion=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 3
execute as @s[scores={questState=2,lastRegion=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 4
execute as @s[scores={questState=2,lastRegion=2},tag=isTrackedQuest] unless entity @s[x=2870,dx=268,y=54,dy=26,z=-465,dz=39] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2940 61 -5
execute as @s[scores={questState=2,lastRegion=2},tag=isTrackedQuest] if entity @s[x=2870,dx=268,y=54,dy=26,z=-465,dz=39] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2978 58 -453
execute as @s[scores={questState=2,lastRegion=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 779 80 -2044
execute as @s[scores={questState=2,lastRegion=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 5316 101 2473
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=216},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

# Function
### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=2,convState=0,conv=216}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ I was told to deliver this letter\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 2
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

### Trigger ###
execute as @s[scores={questState=2},tag=inNormalState,tag=hasCompletedhogsmeadeLetterDelivery] run scoreboard players set hogsmeadeLetterDelivery sharedQuests -1
execute as @s[scores={playerID=1}] unless score hogsmeadeLetterDelivery p1Quests = hogsmeadeLetterDelivery sharedQuests if score hogsmeadeLetterDelivery sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score hogsmeadeLetterDelivery p2Quests = hogsmeadeLetterDelivery sharedQuests if score hogsmeadeLetterDelivery sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score hogsmeadeLetterDelivery p3Quests = hogsmeadeLetterDelivery sharedQuests if score hogsmeadeLetterDelivery sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score hogsmeadeLetterDelivery p4Quests = hogsmeadeLetterDelivery sharedQuests if score hogsmeadeLetterDelivery sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players add @s money 75
execute as @s[tag=completeQuest] run scoreboard players set hogsmeadeLetterDelivery sharedQuests -1
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run tag @s remove hasCompletedhogsmeadeLetterDelivery

execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation hogsmeadeLetterDelivery p1Quests = hogsmeadeLetterDelivery sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation hogsmeadeLetterDelivery p2Quests = hogsmeadeLetterDelivery sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation hogsmeadeLetterDelivery p3Quests = hogsmeadeLetterDelivery sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation hogsmeadeLetterDelivery p4Quests = hogsmeadeLetterDelivery sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# reset quest tracking boolean
tag @s remove isTrackedQuest


##############################################
# Kitchen Raid
##############################################
scoreboard players set @s questID 63
scoreboard players operation @s questState = kitchenRaid sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Gain access to the Кухня Хогвартса

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1372,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 757 53 350

### Trigger ###
execute as @s[scores={questState=1,lastRegion=1,lastLocation=28},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set kitchenRaid sharedQuests 2

execute as @s[scores={playerID=1}] unless score kitchenRaid p1Quests = kitchenRaid sharedQuests if score kitchenRaid sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score kitchenRaid p2Quests = kitchenRaid sharedQuests if score kitchenRaid sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score kitchenRaid p3Quests = kitchenRaid sharedQuests if score kitchenRaid sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score kitchenRaid p4Quests = kitchenRaid sharedQuests if score kitchenRaid sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation kitchenRaid p1Quests = kitchenRaid sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation kitchenRaid p2Quests = kitchenRaid sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation kitchenRaid p3Quests = kitchenRaid sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation kitchenRaid p4Quests = kitchenRaid sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Speak to Dobby

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1371,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 720 50 387
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=21},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.2 ~ 0 0 0 100 1 force @s

# Function
### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=2,convState=0,conv=21}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Меня прислали Фред и Джордж\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 1
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use



# Trigger
execute as @s[scores={questState=2},tag=isTrackedQuest,tag=hasRecievedFoodFromDobby] run scoreboard players set kitchenRaid sharedQuests 3

execute as @s[scores={playerID=1}] unless score kitchenRaid p1Quests = kitchenRaid sharedQuests if score kitchenRaid sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score kitchenRaid p2Quests = kitchenRaid sharedQuests if score kitchenRaid sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score kitchenRaid p3Quests = kitchenRaid sharedQuests if score kitchenRaid sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score kitchenRaid p4Quests = kitchenRaid sharedQuests if score kitchenRaid sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove hasRecievedFoodFromDobby
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation kitchenRaid p1Quests = kitchenRaid sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation kitchenRaid p2Quests = kitchenRaid sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation kitchenRaid p3Quests = kitchenRaid sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation kitchenRaid p4Quests = kitchenRaid sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Speak to Fred or Джордж Уизли

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1370,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 639 84.00 301.00
execute as @s[scores={questState=3,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=18},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

# Function
### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=3,convState=11,conv=18}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Я взял принёс это из кухни\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 10
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

# Trigger
execute as @s[scores={questState=3},tag=inNormalState,tag=hasCompletedKitchenRaid] run scoreboard players set kitchenRaid sharedQuests -1
execute as @s[scores={playerID=1}] unless score kitchenRaid p1Quests = kitchenRaid sharedQuests if score kitchenRaid sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score kitchenRaid p2Quests = kitchenRaid sharedQuests if score kitchenRaid sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score kitchenRaid p3Quests = kitchenRaid sharedQuests if score kitchenRaid sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score kitchenRaid p4Quests = kitchenRaid sharedQuests if score kitchenRaid sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set kitchenRaid sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players add @s money 200

execute as @s[tag=completeQuest] run scoreboard players set @s InvItemID 11
execute as @s[tag=completeQuest] run scoreboard players set @s InvItemCount 5
execute as @s[tag=completeQuest] run function hp:inventory/give_player_item

execute as @s[tag=completeQuest] run scoreboard players set @s InvItemID 13
execute as @s[tag=completeQuest] run scoreboard players set @s InvItemCount 5
execute as @s[tag=completeQuest] run function hp:inventory/give_player_item

execute as @s[tag=completeQuest] run scoreboard players set @s InvItemID 14
execute as @s[tag=completeQuest] run scoreboard players set @s InvItemCount 5
execute as @s[tag=completeQuest] run function hp:inventory/give_player_item

execute as @s[tag=completeQuest] run tag @s remove hasCompletedKitchenRaid
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation kitchenRaid p1Quests = kitchenRaid sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation kitchenRaid p2Quests = kitchenRaid sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation kitchenRaid p3Quests = kitchenRaid sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation kitchenRaid p4Quests = kitchenRaid sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
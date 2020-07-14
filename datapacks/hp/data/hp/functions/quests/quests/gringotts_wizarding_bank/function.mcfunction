##############################################
# Gringotts
##############################################
scoreboard players set @s questID 3
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.gringottsWizardingBank"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

# Complete Quest Cheat
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s add completeQuestGringotts
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tp @s 2845.53 47.00 1077.58 179.84 -0.22
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s hotbar_stage 5
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

# Showing tips (placed here for performance)
execute as @s[tag=showingTips] run function hp:misc/tips


#############
## State 1 ###########################################################################################
#############
# Locate Gringotts

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1525,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2845.51 47.00 1037.64
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

### Function ###


### Trigger ###
execute positioned 2845.51 47.00 1037.64 as @s[distance=..5,scores={questState=1},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Speak to Griphook

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1524,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2848.58 47.00 1083.53
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=20},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s


### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=2,convState=1,conv=20}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Мне нужны деньги для школьных целей\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 13
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuestGringotts,tag=!inConversation] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuestGringotts,tag=!inConversation] run scoreboard players set @s questQueueID 4
execute as @s[tag=completeQuestGringotts,tag=!inConversation] run scoreboard players set @s questQueue 140
execute as @s[tag=completeQuestGringotts,tag=!inConversation] run tag @s add queingQuest

execute as @s[tag=completeQuestGringotts,tag=!inConversation] run scoreboard players add @s money 250
execute as @s[tag=completeQuestGringotts,tag=!inConversation,scores={playerID=1}] run scoreboard players set malkin p1convOverride 3
execute as @s[tag=completeQuestGringotts,tag=!inConversation,scores={playerID=2}] run scoreboard players set malkin p2convOverride 3
execute as @s[tag=completeQuestGringotts,tag=!inConversation,scores={playerID=3}] run scoreboard players set malkin p3convOverride 3
execute as @s[tag=completeQuestGringotts,tag=!inConversation,scores={playerID=4}] run scoreboard players set malkin p4convOverride 3
execute as @s[tag=completeQuestGringotts,tag=!inConversation,scores={playerID=1}] run scoreboard players set flourish_blotts p1convOverride 3
execute as @s[tag=completeQuestGringotts,tag=!inConversation,scores={playerID=2}] run scoreboard players set flourish_blotts p2convOverride 3
execute as @s[tag=completeQuestGringotts,tag=!inConversation,scores={playerID=3}] run scoreboard players set flourish_blotts p3convOverride 3
execute as @s[tag=completeQuestGringotts,tag=!inConversation,scores={playerID=4}] run scoreboard players set flourish_blotts p4convOverride 3
execute as @s[tag=completeQuestGringotts,tag=!inConversation,scores={playerID=1}] run scoreboard players set ollivander p1convOverride 1
execute as @s[tag=completeQuestGringotts,tag=!inConversation,scores={playerID=2}] run scoreboard players set ollivander p2convOverride 1
execute as @s[tag=completeQuestGringotts,tag=!inConversation,scores={playerID=3}] run scoreboard players set ollivander p3convOverride 1
execute as @s[tag=completeQuestGringotts,tag=!inConversation,scores={playerID=4}] run scoreboard players set ollivander p4convOverride 1
execute as @s[tag=completeQuestGringotts,tag=!inConversation] run function hp:quests/quest_completed
execute as @s[tag=completeQuestGringotts,tag=!inConversation] run tag @s remove completeQuestGringotts


# reset quest tracking boolean
tag @s remove isTrackedQuest
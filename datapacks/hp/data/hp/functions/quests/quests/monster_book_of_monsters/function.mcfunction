##############################################
# Охота за жабой
##############################################
scoreboard players set @s questID 31
scoreboard players operation @s questState = broderickMonsterBooks sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Go to the cellar

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1354,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2838 52 794
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
### Function ###

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=1..2,convState=9,conv=67}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1
execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Можете повторить код?\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 15
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

### Trigger ###
execute as @s[scores={questState=1},tag=isTrackedQuest,x=2834,y=51,z=795,dx=6,dy=4,dz=6] run scoreboard players set broderickMonsterBooks sharedQuests 2
execute as @s[scores={playerID=1}] unless score broderickMonsterBooks p1Quests = broderickMonsterBooks sharedQuests if score broderickMonsterBooks sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score broderickMonsterBooks p2Quests = broderickMonsterBooks sharedQuests if score broderickMonsterBooks sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score broderickMonsterBooks p3Quests = broderickMonsterBooks sharedQuests if score broderickMonsterBooks sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score broderickMonsterBooks p4Quests = broderickMonsterBooks sharedQuests if score broderickMonsterBooks sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation broderickMonsterBooks p1Quests = broderickMonsterBooks sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation broderickMonsterBooks p2Quests = broderickMonsterBooks sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation broderickMonsterBooks p3Quests = broderickMonsterBooks sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation broderickMonsterBooks p4Quests = broderickMonsterBooks sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Retrieve the papers

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1353,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

### Function ###
execute as @s[scores={questState=2}] at @s positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=broderickPapers] add questHover
execute as @s[scores={questState=2}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

### Trigger ###
execute as @s[scores={questState=2},tag=hasPressedF] if entity @e[tag=questHover,tag=broderickPapers] run scoreboard players set broderickMonsterBooks sharedQuests 3
execute as @s[scores={questState=2},tag=hasPressedF] if entity @e[tag=questHover,tag=broderickPapers] at @s run playsound minecraft:custom.inventory.pickup.paper master @a

execute as @s[scores={playerID=1}] unless score broderickMonsterBooks p1Quests = broderickMonsterBooks sharedQuests if score broderickMonsterBooks sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score broderickMonsterBooks p2Quests = broderickMonsterBooks sharedQuests if score broderickMonsterBooks sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score broderickMonsterBooks p3Quests = broderickMonsterBooks sharedQuests if score broderickMonsterBooks sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score broderickMonsterBooks p4Quests = broderickMonsterBooks sharedQuests if score broderickMonsterBooks sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation broderickMonsterBooks p1Quests = broderickMonsterBooks sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation broderickMonsterBooks p2Quests = broderickMonsterBooks sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation broderickMonsterBooks p3Quests = broderickMonsterBooks sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation broderickMonsterBooks p4Quests = broderickMonsterBooks sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Return to Broderick

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1352,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2832.48 57.44 796.53
execute as @s[scores={questState=3,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=67},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 2


### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=3,convState=9,conv=67}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1
execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Я достал ваши документы\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 10
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

### Trigger ###
execute as @s[scores={questState=3},tag=inNormalState,tag=hasCompletedbroderickMonsterBooks] run scoreboard players set broderickMonsterBooks sharedQuests -1
execute as @s[scores={playerID=1}] unless score broderickMonsterBooks p1Quests = broderickMonsterBooks sharedQuests if score broderickMonsterBooks sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score broderickMonsterBooks p2Quests = broderickMonsterBooks sharedQuests if score broderickMonsterBooks sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score broderickMonsterBooks p3Quests = broderickMonsterBooks sharedQuests if score broderickMonsterBooks sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score broderickMonsterBooks p4Quests = broderickMonsterBooks sharedQuests if score broderickMonsterBooks sharedQuests matches -1 run tag @s add completeQuest


#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set broderickMonsterBooks sharedQuests -1
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run tag @s remove hasCompletedbroderickMonsterBooks
execute as @s[tag=completeQuest] run scoreboard players add @s money 150
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set broderickBryce p1convOverride 2
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set broderickBryce p2convOverride 2
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set broderickBryce p3convOverride 2
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set broderickBryce p4convOverride 2
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation broderickMonsterBooks p1Quests = broderickMonsterBooks sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation broderickMonsterBooks p2Quests = broderickMonsterBooks sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation broderickMonsterBooks p3Quests = broderickMonsterBooks sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation broderickMonsterBooks p4Quests = broderickMonsterBooks sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest

# Complete Quest Cheat
execute as @s[tag=completeTrackedQuest] run scoreboard players set broderickMonsterBooks sharedQuests -1
execute as @s[tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

# reset quest tracking boolean
tag @s remove isTrackedQuest

# Used to detect when another player advances the quest
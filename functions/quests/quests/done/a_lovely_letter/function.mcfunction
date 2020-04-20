##############################################
# A Lovely Letter
##############################################
scoreboard players set @s questID 71
scoreboard players operation @s questState = aLovelyLetter sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Optional speak to Ally Anne Perks

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1345,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 747 64 136
execute as @s[scores={questState=1,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=441},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=1,conv=441,convState=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Explain that the letter is fake\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 1
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=1,conv=441,convState=0}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Deliver the letter\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 4
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use

### Trigger ###
execute as @s[scores={questState=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest,tag=hasExplainedThatTheLetterIsFake] run scoreboard players set aLovelyLetter sharedQuests 2
execute as @s[scores={playerID=1}] unless score aLovelyLetter p1Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score aLovelyLetter p2Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score aLovelyLetter p3Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score aLovelyLetter p4Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run scoreboard players set sallyAnnePerks p1convOverride 3
execute as @s[tag=newState] run scoreboard players set sallyAnnePerks p2convOverride 3
execute as @s[tag=newState] run scoreboard players set sallyAnnePerks p3convOverride 3
execute as @s[tag=newState] run scoreboard players set sallyAnnePerks p4convOverride 3
execute as @s[tag=newState] run scoreboard players set kevinEntwhistle p1convOverride 6
execute as @s[tag=newState] run scoreboard players set kevinEntwhistle p2convOverride 6
execute as @s[tag=newState] run scoreboard players set kevinEntwhistle p3convOverride 6
execute as @s[tag=newState] run scoreboard players set kevinEntwhistle p4convOverride 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation aLovelyLetter p1Quests = aLovelyLetter sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation aLovelyLetter p2Quests = aLovelyLetter sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation aLovelyLetter p3Quests = aLovelyLetter sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation aLovelyLetter p4Quests = aLovelyLetter sharedQuests
execute as @s[tag=newState] run tag @s remove hasExplainedThatTheLetterIsFake
execute as @s[tag=newState] run tag @s remove newState

### Trigger ###
execute as @s[scores={questState=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest,tag=hasDeliveredTheFakeLetter] run scoreboard players set aLovelyLetter sharedQuests 4
execute as @s[scores={playerID=1}] unless score aLovelyLetter p1Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=2}] unless score aLovelyLetter p2Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=3}] unless score aLovelyLetter p3Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches 4 run tag @s add newState
execute as @s[scores={playerID=4}] unless score aLovelyLetter p4Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches 4 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run scoreboard players set sallyAnnePerks p1convOverride 6
execute as @s[tag=newState] run scoreboard players set sallyAnnePerks p2convOverride 6
execute as @s[tag=newState] run scoreboard players set sallyAnnePerks p3convOverride 6
execute as @s[tag=newState] run scoreboard players set sallyAnnePerks p4convOverride 6
execute as @s[tag=newState] run scoreboard players set trevanDavies p1convOverride 3
execute as @s[tag=newState] run scoreboard players set trevanDavies p2convOverride 3
execute as @s[tag=newState] run scoreboard players set trevanDavies p3convOverride 3
execute as @s[tag=newState] run scoreboard players set trevanDavies p4convOverride 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation aLovelyLetter p1Quests = aLovelyLetter sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation aLovelyLetter p2Quests = aLovelyLetter sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation aLovelyLetter p3Quests = aLovelyLetter sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation aLovelyLetter p4Quests = aLovelyLetter sharedQuests
execute as @s[tag=newState] run tag @s remove hasDeliveredTheFakeLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Speak to Треван Дэвис

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1346,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 682 65 117
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=439},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Trigger
execute as @s[scores={questState=2},tag=isTrackedQuest,tag=hasSpokenToKevinEntwhistleAfterRevealingTheLetterIsFake] run scoreboard players set aLovelyLetter sharedQuests 3

execute as @s[scores={playerID=1}] unless score aLovelyLetter p1Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=2}] unless score aLovelyLetter p2Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=3}] unless score aLovelyLetter p3Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches 3 run tag @s add newState
execute as @s[scores={playerID=4}] unless score aLovelyLetter p4Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches 3 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set kevinEntwhistle p1convOverride 7
execute as @s[tag=newState] run scoreboard players set kevinEntwhistle p2convOverride 7
execute as @s[tag=newState] run scoreboard players set kevinEntwhistle p3convOverride 7
execute as @s[tag=newState] run scoreboard players set kevinEntwhistle p4convOverride 7
execute as @s[tag=newState] run scoreboard players set trevanDavies p1convOverride 1
execute as @s[tag=newState] run scoreboard players set trevanDavies p2convOverride 1
execute as @s[tag=newState] run scoreboard players set trevanDavies p3convOverride 1
execute as @s[tag=newState] run scoreboard players set trevanDavies p4convOverride 1
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation aLovelyLetter p1Quests = aLovelyLetter sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation aLovelyLetter p2Quests = aLovelyLetter sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation aLovelyLetter p3Quests = aLovelyLetter sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation aLovelyLetter p4Quests = aLovelyLetter sharedQuests
execute as @s[tag=newState] run tag @s remove hasSpokenToKevinEntwhistleAfterRevealingTheLetterIsFake
execute as @s[tag=newState] run tag @s remove newState

#############
## State 3 ###########################################################################################
#############
# Speak to Кевин Энтвистл

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1344,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 728 64 132
execute as @s[scores={questState=3,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=440},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

execute as @s[scores={questState=3},tag=inNormalState,tag=hasCompletedALovelyLetterAndRevealedTheLetterIsFake] run scoreboard players set aLovelyLetter sharedQuests -1
execute as @s[scores={playerID=1}] unless score aLovelyLetter p1Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score aLovelyLetter p2Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score aLovelyLetter p3Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score aLovelyLetter p4Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set aLovelyLetterEnding sharedQuests 0
execute as @s[tag=completeQuest] run scoreboard players set aLovelyLetter sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players add @s money 150
execute as @s[tag=completeQuest] run scoreboard players set trevanDavies p1convOverride 2
execute as @s[tag=completeQuest] run scoreboard players set trevanDavies p2convOverride 2
execute as @s[tag=completeQuest] run scoreboard players set trevanDavies p3convOverride 2
execute as @s[tag=completeQuest] run scoreboard players set trevanDavies p4convOverride 2
execute as @s[tag=completeQuest] run tag @s remove hasCompletedaLovelyLetter
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation aLovelyLetter p1Quests = aLovelyLetter sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation aLovelyLetter p2Quests = aLovelyLetter sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation aLovelyLetter p3Quests = aLovelyLetter sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation aLovelyLetter p4Quests = aLovelyLetter sharedQuests
execute as @s[tag=completeQuest] run tag @s remove hasCompletedALovelyLetterAndRevealedTheLetterIsFake
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest











##################################











#############
## State 4 ###########################################################################################
#############
# Speak to Треван Дэвис

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1344,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 728 64 132
execute as @s[scores={questState=4,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=440},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Trigger
execute as @s[scores={questState=4},tag=isTrackedQuest,tag=hasSpokenToTrevanAfterDeliveringTheFakeLetter] run scoreboard players set aLovelyLetter sharedQuests 5

execute as @s[scores={playerID=1}] unless score aLovelyLetter p1Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=2}] unless score aLovelyLetter p2Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=3}] unless score aLovelyLetter p3Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches 5 run tag @s add newState
execute as @s[scores={playerID=4}] unless score aLovelyLetter p4Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches 5 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set kevinEntwhistle p1convOverride 4
execute as @s[tag=newState] run scoreboard players set kevinEntwhistle p2convOverride 4
execute as @s[tag=newState] run scoreboard players set kevinEntwhistle p3convOverride 4
execute as @s[tag=newState] run scoreboard players set kevinEntwhistle p4convOverride 4
execute as @s[tag=newState] run scoreboard players set trevanDavies p1convOverride 4
execute as @s[tag=newState] run scoreboard players set trevanDavies p2convOverride 4
execute as @s[tag=newState] run scoreboard players set trevanDavies p3convOverride 4
execute as @s[tag=newState] run scoreboard players set trevanDavies p4convOverride 4
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation aLovelyLetter p1Quests = aLovelyLetter sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation aLovelyLetter p2Quests = aLovelyLetter sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation aLovelyLetter p3Quests = aLovelyLetter sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation aLovelyLetter p4Quests = aLovelyLetter sharedQuests
execute as @s[tag=newState] run tag @s remove hasSpokenToTrevanAfterDeliveringTheFakeLetter
execute as @s[tag=newState] run tag @s remove newState

#############
## State 5 ###########################################################################################
#############
# Speak to Kevin

### Tracked Quest ###

execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1346,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 682 65 117
execute as @s[scores={questState=5,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=439},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

execute as @s[scores={questState=5},tag=inNormalState,tag=hasCompletedALovelyLetterAndDeliveredTheLetter] run scoreboard players set aLovelyLetter sharedQuests -1
execute as @s[scores={playerID=1}] unless score aLovelyLetter p1Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score aLovelyLetter p2Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score aLovelyLetter p3Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score aLovelyLetter p4Quests = aLovelyLetter sharedQuests if score aLovelyLetter sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set aLovelyLetterEnding sharedQuests 1
execute as @s[tag=completeQuest] run scoreboard players set aLovelyLetter sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players add @s money 150
execute as @s[tag=completeQuest] run scoreboard players set kevinEntwhistle p1convOverride 5
execute as @s[tag=completeQuest] run scoreboard players set kevinEntwhistle p2convOverride 5
execute as @s[tag=completeQuest] run scoreboard players set kevinEntwhistle p3convOverride 5
execute as @s[tag=completeQuest] run scoreboard players set kevinEntwhistle p4convOverride 5
execute as @s[tag=completeQuest] run tag @s remove hasCompletedaLovelyLetter
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation aLovelyLetter p1Quests = aLovelyLetter sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation aLovelyLetter p2Quests = aLovelyLetter sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation aLovelyLetter p3Quests = aLovelyLetter sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation aLovelyLetter p4Quests = aLovelyLetter sharedQuests
execute as @s[tag=completeQuest] run tag @s remove hasCompletedALovelyLetterAndDeliveredTheLetter
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest







# reset quest tracking boolean
tag @s remove isTrackedQuest
##############################################
# Just Business
##############################################
scoreboard players set @s questID 67
scoreboard players operation @s questState = justBusiness sharedQuests
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Swap out all the Gryffindor Banners

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1361,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 564.81 90.00 -2018.65

execute as @s[scores={questState=1},tag=isTrackedQuest] run execute anchored eyes at @s positioned ^ ^ ^1.5 run summon area_effect_cloud ~ ~ ~ {Particle:"ambient_entity_effect",Radius:0f,Duration:1,Tags:["justBusinessSelectionTest"]}
execute as @s[scores={questState=1},tag=isTrackedQuest] unless score @s bannerTimer matches 1.. as @e[tag=justBusinessSelectionTest,limit=1] run function hp:quests/quests/just_business/banner_test

execute as @s[scores={questState=1},tag=isTrackedQuest,tag=questActionbarTitle,tag=hasPressedF] run scoreboard players set @s bannerTimer 20

execute as @s[scores={questState=1,bannerTimer=1..},tag=isTrackedQuest] run scoreboard players remove @s bannerTimer 1
execute as @s[scores={questState=1,bannerTimer=1..},tag=isTrackedQuest] run tag @p[tag=activePlayer] add questActionbarTitle
execute as @s[scores={questState=1,bannerTimer=19},tag=isTrackedQuest] at @s run playsound minecraft:custom.inventory.pickup.cloth master @a ~ ~ ~ 1 0.8
execute as @s[scores={questState=1,bannerTimer=1},tag=isTrackedQuest] run function hp:quests/quests/just_business/swap_banners
execute as @s[scores={questState=1,bannerTimer=1..},tag=isTrackedQuest] run title @s actionbar ["",{"text":"Swapping banners...","color":"gold"}]


### Trigger ###
execute as @s[scores={questState=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] if score swappedSlytherinBanners sharedQuests matches 35 run scoreboard players set justBusiness sharedQuests 2
execute as @s[scores={playerID=1}] unless score justBusiness p1Quests = justBusiness sharedQuests if score justBusiness sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=2}] unless score justBusiness p2Quests = justBusiness sharedQuests if score justBusiness sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=3}] unless score justBusiness p3Quests = justBusiness sharedQuests if score justBusiness sharedQuests matches 2 run tag @s add newState
execute as @s[scores={playerID=4}] unless score justBusiness p4Quests = justBusiness sharedQuests if score justBusiness sharedQuests matches 2 run tag @s add newState
execute as @s[tag=newState] run scoreboard players set theodoreNott p1convOverride 6
execute as @s[tag=newState] run scoreboard players set theodoreNott p2convOverride 6
execute as @s[tag=newState] run scoreboard players set theodoreNott p3convOverride 6
execute as @s[tag=newState] run scoreboard players set theodoreNott p4convOverride 6
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set swappedSlytherinBanners sharedQuests 0
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players operation justBusiness p1Quests = justBusiness sharedQuests
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players operation justBusiness p2Quests = justBusiness sharedQuests
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players operation justBusiness p3Quests = justBusiness sharedQuests
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players operation justBusiness p4Quests = justBusiness sharedQuests
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Talk to Теодор Нотт

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Marauders Map\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1360,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2,lastRegion=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2,lastRegion=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1
execute as @s[scores={questState=2,lastRegion=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 401.56 14.00 -228.92
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=420},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s

# Trigger
execute as @s[scores={questState=2},tag=inNormalState,tag=hasCompletedJustBusiness] run scoreboard players set justBusiness sharedQuests -1
execute as @s[scores={playerID=1}] unless score justBusiness p1Quests = justBusiness sharedQuests if score justBusiness sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=2}] unless score justBusiness p2Quests = justBusiness sharedQuests if score justBusiness sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=3}] unless score justBusiness p3Quests = justBusiness sharedQuests if score justBusiness sharedQuests matches -1 run tag @s add completeQuest
execute as @s[scores={playerID=4}] unless score justBusiness p4Quests = justBusiness sharedQuests if score justBusiness sharedQuests matches -1 run tag @s add completeQuest

#################
### Completed ###
#################
# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest] run scoreboard players set justBusiness sharedQuests -1
execute as @s[tag=completeQuest] run scoreboard players add @s money 150
execute as @s[tag=completeQuest] run tag @s remove hasCompletedJustBusiness
execute as @s[tag=completeQuest] run scoreboard players set theodoreNott p1convOverride 7
execute as @s[tag=completeQuest] run scoreboard players set theodoreNott p2convOverride 7
execute as @s[tag=completeQuest] run scoreboard players set theodoreNott p3convOverride 7
execute as @s[tag=completeQuest] run scoreboard players set theodoreNott p4convOverride 7
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players operation justBusiness p1Quests = justBusiness sharedQuests
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players operation justBusiness p2Quests = justBusiness sharedQuests
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players operation justBusiness p3Quests = justBusiness sharedQuests
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players operation justBusiness p4Quests = justBusiness sharedQuests
execute as @s[tag=completeQuest,tag=gameLeader] run scoreboard players add global sqCompleted 1
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
##############################################
# Purchase School Robes
##############################################
scoreboard players set @s questID 6
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.purchaseRobes"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

#############
## State 1 ###########################################################################################
#############
# Locate Мадам Малкинs

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1502,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2857.35 48.00 931.37
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
### Function ###

### Trigger ###
execute positioned 2857.35 48.00 931.37 as @s[distance=..8,scores={questState=1}] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s trackedQuestID 6
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Speak to Мадам Малкинs

### Tracked Quest ###
execute as @s[scores={questState=2..5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2..5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1501,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2..5},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2..5},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2857.35 48.00 931.37
execute as @s[scores={questState=2..5},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=2..5,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=28},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s


### Guidance titles ###
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=2..4,conv=28},tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=2,playerID=1,conv=28},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Купите Мантию","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=3,playerID=1,conv=28},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Купите Головной Убор","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=4,playerID=1,conv=28},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Купите Штаны","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=2,playerID=2,conv=28},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Купите Мантию","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=3,playerID=2,conv=28},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Купите Головной Убор","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=4,playerID=2,conv=28},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Купите Штаны","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=2,playerID=3,conv=28},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Купите Мантию","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=3,playerID=3,conv=28},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Купите Головной Убор","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=4,playerID=3,conv=28},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Купите Штаны","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=2,playerID=4,conv=28},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Купите Мантию","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=3,playerID=4,conv=28},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Купите Головной Убор","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=4,playerID=4,conv=28},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Купите Штаны","color":"gold"}]

# check what items the player has bought and what they are allowed to purchase
execute as @s[tag=isTrackedQuest,scores={questState=2}] run scoreboard players set @s tmp 0
execute as @s[tag=isTrackedQuest,scores={questState=2,tmp=0}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."invItem.HouseRobe.count"
execute as @s[tag=isTrackedQuest,scores={questState=2,tmp=1..}] run tag @s add purchasedClothing
execute as @s[tag=isTrackedQuest,scores={questState=3}] run scoreboard players set @s tmp 0
execute as @s[tag=isTrackedQuest,scores={questState=3,tmp=0}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."invItem.HouseScarf.count"
execute as @s[tag=isTrackedQuest,scores={questState=3,tmp=0}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."invItem.HogwartsStudentHat.count"
execute as @s[tag=isTrackedQuest,scores={questState=3,tmp=1..}] run tag @s add purchasedClothing
execute as @s[tag=isTrackedQuest,scores={questState=4}] run scoreboard players set @s tmp 0
execute as @s[tag=isTrackedQuest,scores={questState=4,tmp=0}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."invItem.SuspenderTrousers.count"
execute as @s[tag=isTrackedQuest,scores={questState=4,tmp=0}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."invItem.TrousersWithPullover.count"
execute as @s[tag=isTrackedQuest,scores={questState=4,tmp=1..}] run tag @s add purchasedClothing

execute as @s[tag=purchasedClothing] run scoreboard players add @s questState 1
execute as @s[tag=purchasedClothing] run function hp:quests/set_quest
execute as @s[tag=purchasedClothing] run tag @s remove purchasedClothing


### Trigger ###
execute as @s[scores={questState=5},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set malkin p1convOverride 5
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set malkin p2convOverride 5
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set malkin p3convOverride 5
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set malkin p4convOverride 5
execute as @s[tag=newState] run scoreboard players set @s trackedQuestID 6
execute as @s[tag=newState] run tag @s remove newState


#############
## State 6 ###########################################################################################
#############
# Equip robes

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1500,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 2

### Trigger ###
execute as @s[scores={clothesSlot1ID=1..,clothesSlot2ID=1..,clothesSlot3ID=1..}] run tag @s add completeQuestPurchaseRobes

#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuestPurchaseRobes,tag=!inConversation] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuestPurchaseRobes,tag=!inConversation] run tag @s add hasPurchasedRobes
execute as @s[tag=completeQuestPurchaseRobes,tag=!inConversation,tag=hasPurchasedWand,tag=hasPurchasedBooks,tag=hasPurchasedRobes] run scoreboard players set @s questQueueID 7
execute as @s[tag=completeQuestPurchaseRobes,tag=!inConversation,tag=hasPurchasedWand,tag=hasPurchasedBooks,tag=hasPurchasedRobes] run scoreboard players set @s questQueue 140
execute as @s[tag=completeQuestPurchaseRobes,tag=!inConversation,tag=hasPurchasedWand,tag=hasPurchasedBooks,tag=hasPurchasedRobes] run tag @s add queingQuest
execute as @s[tag=completeQuestPurchaseRobes,tag=!inConversation,tag=hasPurchasedWand,tag=hasPurchasedBooks,tag=hasPurchasedRobes] run scoreboard players set @s worldBarrier 3
execute as @s[tag=completeQuestPurchaseRobes,tag=!inConversation] run function hp:quests/quest_completed
execute as @s[tag=completeQuestPurchaseRobes,tag=!inConversation,scores={playerID=1}] run scoreboard players set malkin p1convOverride 1
execute as @s[tag=completeQuestPurchaseRobes,tag=!inConversation,scores={playerID=2}] run scoreboard players set malkin p2convOverride 1
execute as @s[tag=completeQuestPurchaseRobes,tag=!inConversation,scores={playerID=3}] run scoreboard players set malkin p3convOverride 1
execute as @s[tag=completeQuestPurchaseRobes,tag=!inConversation,scores={playerID=4}] run scoreboard players set malkin p4convOverride 1
execute as @s[tag=completeQuestPurchaseRobes,tag=!inConversation] run tag @s remove completeQuestPurchaseRobes


# reset quest tracking boolean
tag @s remove isTrackedQuest
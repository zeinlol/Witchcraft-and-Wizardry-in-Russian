##############################################
# Purchase School Books
##############################################
scoreboard players set @s questID 5
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.purchaseBooks"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

# Complete Quest Cheat
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s add completeQuestPurchaseBooks
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players remove @s money 95
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s[scores={money=..0}] money 0
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s InvItemID 39
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s InvItemCount 1
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run function hp:inventory/give_player_item
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s InvItemID 40
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s InvItemCount 1
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run function hp:inventory/give_player_item
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s InvItemID 41
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s InvItemCount 1
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run function hp:inventory/give_player_item
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s InvItemID 42
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s InvItemCount 1
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run function hp:inventory/give_player_item
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s InvItemID 43
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s InvItemCount 1
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run function hp:inventory/give_player_item
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tp @s 2839.99 55.00 866.10 846.97 2.54
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s remove completeTrackedQuest
#############
## State 1 ###########################################################################################
#############
# Locate Флориш и Блоттс

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1504,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2842.30 55.00 866.55
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
### Function ###

### Trigger ###
execute positioned 2837.31 55.00 866.60 as @s[distance=..5,scores={questState=1},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s trackedQuestID 5
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Speak to the manager

### Tracked Quest ###
execute as @s[scores={questState=2..4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2..4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1503,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2..4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2..4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2836.63 55.00 863.67
execute as @s[scores={questState=2..4},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=2..4,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=29},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s


### Guidance titles ###
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=2..6,conv=29},tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=2,playerID=1,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Купите 'Фантастические звери: места обитания'","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=3,playerID=1,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Купите 'Стандартная книга Заклинаний'","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=4,playerID=1,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Купите 'Расширенный курс зельеварения'","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=5,playerID=1,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Купите 'Тёмные силы: пособие по самозащите'","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=6,playerID=1,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Купите 'Руководство по трансфигурации для начинающих'","color":"gold"}]

execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=2,playerID=2,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Купите 'Фантастические звери: места обитания'","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=3,playerID=2,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Купите 'Стандартная книга Заклинаний'","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=4,playerID=2,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Купите 'Расширенный курс зельеварения'","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=5,playerID=2,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Купите 'Тёмные силы: пособие по самозащите'","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=6,playerID=2,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Купите 'Руководство по трансфигурации для начинающих'","color":"gold"}]

execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=2,playerID=3,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Купите 'Фантастические звери: места обитания'","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=3,playerID=3,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Купите 'Стандартная книга Заклинаний'","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=4,playerID=3,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Купите 'Расширенный курс зельеварения'","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=5,playerID=3,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Купите 'Тёмные силы: пособие по самозащите'","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=6,playerID=3,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Купите 'Руководство по трансфигурации для начинающих'","color":"gold"}]

execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=2,playerID=4,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Купите 'Фантастические звери: места обитания'","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=3,playerID=4,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Купите 'Стандартная книга Заклинаний'","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=4,playerID=4,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Купите 'Расширенный курс зельеварения'","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=5,playerID=4,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Купите 'Тёмные силы: пособие по самозащите'","color":"gold"}]
execute as @s[tag=inConversation,tag=buy,tag=inInventory,scores={questState=6,playerID=4,conv=29},tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Купите 'Руководство по трансфигурации для начинающих'","color":"gold"}]


# check what items the player has bought and what they are allowed to purchase
execute as @s[tag=isTrackedQuest,scores={questState=2}] run scoreboard players set @s tmp 0
execute as @s[tag=isTrackedQuest,scores={questState=2,tmp=0}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."invItem.FantasticBeasts.count"
execute as @s[tag=isTrackedQuest,scores={questState=2,tmp=1..}] run tag @s add purchasedBook
execute as @s[tag=isTrackedQuest,scores={questState=3}] run scoreboard players set @s tmp 0
execute as @s[tag=isTrackedQuest,scores={questState=3,tmp=0}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."invItem.StandardBookOfSpells.count"
execute as @s[tag=isTrackedQuest,scores={questState=3,tmp=1..}] run tag @s add purchasedBook
execute as @s[tag=isTrackedQuest,scores={questState=4}] run scoreboard players set @s tmp 0
execute as @s[tag=isTrackedQuest,scores={questState=4,tmp=0}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."invItem.MagicalDraftsAndPotions.count"
execute as @s[tag=isTrackedQuest,scores={questState=4,tmp=1..}] run tag @s add purchasedBook
execute as @s[tag=isTrackedQuest,scores={questState=5}] run scoreboard players set @s tmp 0
execute as @s[tag=isTrackedQuest,scores={questState=5,tmp=0}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."invItem.TheDarkForces.count"
execute as @s[tag=isTrackedQuest,scores={questState=5,tmp=1..}] run tag @s add purchasedBook
execute as @s[tag=isTrackedQuest,scores={questState=6}] run scoreboard players set @s tmp 0
execute as @s[tag=isTrackedQuest,scores={questState=6,tmp=0}] store result score @s tmp run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."invItem.GuideToTransfiguration.count"
execute as @s[tag=isTrackedQuest,scores={questState=6,tmp=1..}] run tag @s add purchasedBook


execute as @s[tag=purchasedBook] run scoreboard players add @s questState 1
execute as @s[tag=purchasedBook] run function hp:quests/set_quest
execute as @s[tag=purchasedBook] run tag @s remove purchasedBook


### Trigger ###
execute as @s[scores={questState=7},tag=inNormalState] run tag @s add completeQuestPurchaseBooks


#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuestPurchaseBooks,tag=!inConversation] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuestPurchaseBooks,tag=!inConversation] run tag @s add hasPurchasedBooks
execute as @s[tag=completeQuestPurchaseBooks,tag=!inConversation,tag=hasPurchasedWand,tag=hasPurchasedBooks,tag=hasPurchasedRobes] run scoreboard players set @s questQueueID 7
execute as @s[tag=completeQuestPurchaseBooks,tag=!inConversation,tag=hasPurchasedWand,tag=hasPurchasedBooks,tag=hasPurchasedRobes] run scoreboard players set @s questQueue 140
execute as @s[tag=completeQuestPurchaseBooks,tag=!inConversation,tag=hasPurchasedWand,tag=hasPurchasedBooks,tag=hasPurchasedRobes] run tag @s add queingQuest
execute as @s[tag=completeQuestPurchaseBooks,tag=!inConversation,tag=hasPurchasedWand,tag=hasPurchasedBooks,tag=hasPurchasedRobes] run scoreboard players set @s worldBarrier 3
execute as @s[tag=completeQuestPurchaseBooks,tag=!inConversation] run function hp:quests/quest_completed
execute as @s[tag=completeQuestPurchaseBooks,tag=!inConversation,scores={playerID=1}] run scoreboard players set flourish_blotts p1convOverride 1
execute as @s[tag=completeQuestPurchaseBooks,tag=!inConversation,scores={playerID=2}] run scoreboard players set flourish_blotts p2convOverride 1
execute as @s[tag=completeQuestPurchaseBooks,tag=!inConversation,scores={playerID=3}] run scoreboard players set flourish_blotts p3convOverride 1
execute as @s[tag=completeQuestPurchaseBooks,tag=!inConversation,scores={playerID=4}] run scoreboard players set flourish_blotts p4convOverride 1
execute as @s[tag=completeQuestPurchaseBooks,tag=!inConversation] run tag @s remove completeQuestPurchaseBooks


# reset quest tracking boolean
tag @s remove isTrackedQuest
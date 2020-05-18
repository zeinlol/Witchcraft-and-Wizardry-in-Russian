##############################################
# Purchase a wand
##############################################
scoreboard players set @s questID 4
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.purchaseWand"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest


# This quest is sort of special since it's added with 2 other quests. That gets taken care of here: Not very elegant but it works.
execute as @s[tag=!currentQuestIsPurchaseWand] run scoreboard players set @s questTimer 70
execute as @s[tag=!currentQuestIsPurchaseWand] run tag @s add currentQuestIsPurchaseWand


scoreboard players remove @s[scores={questTimer=1..}] questTimer 1
execute as @s[scores={questTimer=65}] run scoreboard players set @s questID 5
execute as @s[scores={questTimer=65}] run function hp:quests/set_quest
execute as @s[scores={questTimer=60}] run scoreboard players set @s questID 6
execute as @s[scores={questTimer=60}] run function hp:quests/set_quest
execute as @s[scores={questTimer=1}] run scoreboard players set @s hotbar_stage 5
execute as @s[scores={questTimer=1}] at @s run playsound minecraft:custom.ui.learn.spell_temporarily_unlocked master @s ~ ~ ~ 100 1.25 1

# For some reason people sometimes run into issues where they are missing one of the quests. This is a test meant to prevent that
execute as @s[scores={questTimer=1}] store result score @s tmp2 run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.purchaseRobes"
execute as @s[scores={questTimer=1,tmp2=0}] run scoreboard players set questTimer -15
execute as @s[scores={questTimer=1}] store result score @s tmp2 run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.purchaseBooks"
execute as @s[scores={questTimer=1,tmp2=0}] run scoreboard players set questTimer -15

scoreboard players add @s[scores={questTimer=..-1}] questTimer 1
execute as @s[scores={questTimer=-10}] run scoreboard players set @s questID 5
execute as @s[scores={questTimer=-10}] run function hp:quests/set_quest
execute as @s[scores={questTimer=-5}] run scoreboard players set @s questID 6
execute as @s[scores={questTimer=-5}] run function hp:quests/set_quest


#############
## State 1 ###########################################################################################
#############
# Locate Ollivanders

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1499,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2835.21 46.00 995.65
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
### Function ###

### Trigger ###
execute positioned 2831.46 46.00 995.44 as @s[distance=..5,scores={questState=1},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s trackedQuestID 4
execute as @s[tag=newState] run tag @s remove newState


#############
## State 2 ###########################################################################################
#############
# Speak to Ollivader

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1498,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2827.53 46.00 996.48
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=2,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=27},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s


### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=2,convState=1,conv=27}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Я пришёл купить волшебную палочку\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 12
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


### Trigger ###
execute as @s[tag=trigger,scores={questState=2},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s trackedQuestID 4
execute as @s[tag=newState] run tag @s remove trigger
execute as @s[tag=newState] run tag @s remove newState


#############
## State 3 ###########################################################################################
#############
# find a suitable wand
### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1497,Unbreakable:1b,qDetect:1b}
execute positioned 2822.30 49.87 995.42 as @s[scores={questState=3},tag=isTrackedQuest,distance=..20] run tag @s add questHasNoDirection
execute positioned 2822.30 49.87 995.42 as @s[scores={questState=3},tag=isTrackedQuest,distance=21..] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2827.53 46.00 996.48

# Special selection
execute at @s[scores={questState=3},tag=!collectedWandBox1] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=wandBox,tag=wandBox1] add questHover
execute at @s[scores={questState=3},tag=!collectedWandBox2] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=wandBox,tag=wandBox2] add questHover
execute at @s[scores={questState=3},tag=!collectedWandBox3] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=wandBox,tag=wandBox3] add questHover
execute as @s[scores={questState=3}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

# Function
# SubStates are a bad idea. Get rid of them
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=wandBox1] run tag @s add collectedWandBox1
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=wandBox1] run scoreboard players add @s questSubState 1
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=wandBox1] at @s run playsound minecraft:custom.ui.inventory.interaction.open_inventory master @a ~ ~ ~ 1 1

execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=wandBox2] run tag @s add collectedWandBox2
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=wandBox2] run scoreboard players add @s questSubState 1
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=wandBox2] at @s run playsound minecraft:custom.ui.inventory.interaction.open_inventory master @a ~ ~ ~ 1 1

execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=wandBox3] run tag @s add collectedWandBox3
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=wandBox3] run scoreboard players add @s questSubState 1
execute as @s[tag=hasPressedF] if entity @e[tag=questHover,tag=wandBox3] at @s run playsound minecraft:custom.ui.inventory.interaction.open_inventory master @a ~ ~ ~ 1 1


# Title
execute as @s[scores={questState=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3,playerID=1},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Найдите палочки, отложенные Оливандером (","color":"gold"},{"score":{"name":"@s","objective":"questSubState"},"color":"gold"},{"text":" / 3)","color":"gold"}]
execute as @s[scores={questState=3,playerID=2},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Найдите палочки, отложенные Оливандером (","color":"gold"},{"score":{"name":"@s","objective":"questSubState"},"color":"gold"},{"text":" / 3)","color":"gold"}]
execute as @s[scores={questState=3,playerID=3},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Найдите палочки, отложенные Оливандером (","color":"gold"},{"score":{"name":"@s","objective":"questSubState"},"color":"gold"},{"text":" / 3)","color":"gold"}]
execute as @s[scores={questState=3,playerID=4},tag=!inConversation,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Найдите палочки, отложенные Оливандером (","color":"gold"},{"score":{"name":"@s","objective":"questSubState"},"color":"gold"},{"text":" / 3)","color":"gold"}]

### Trigger ###
execute as @s[scores={questState=3,questSubState=3},tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run scoreboard players set @s questSubState 0
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run scoreboard players set @s trackedQuestID 4
execute as @s[tag=newState] run tag @s remove newState


#############
## State 4 ###########################################################################################
#############
# Speak to Ollivader

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1498,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2827.53 46.00 996.48
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 2
execute as @s[scores={questState=4,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling] at @e[scores={conv=27},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s


### Inject conversation ###
execute as @s[tag=inConversation,scores={questState=4,convState=1,conv=27}] run tag @s add use
scoreboard players remove @s[tag=use] questConvOffset 1

execute as @s[tag=use] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset run data merge entity @s {CustomName:"{\"text\":\"±ˈˈ Вот нужные коробки с волшебными палочками\"}",Tags:["_____Normal_____","_____click_____","convOption","i"]}
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s convState 14
execute as @s[tag=qtr] as @e[tag=convOption] if score @s con = @p[tag=activePlayer] questConvOffset if score @s con = @p[tag=activePlayer] selectCurrent as @p[tag=activePlayer] run scoreboard players set @s questConvOffset 1
tag @s remove use


#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuestWand,tag=inNormalState] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuestWand,tag=inNormalState] run scoreboard players set @s displayWandHint 185
execute as @s[tag=completeQuestWand,tag=inNormalState] run tag @s add hasUnlockedWand
execute as @s[tag=completeQuestWand,tag=inNormalState] run tag @s remove currentQuestIsPurchaseWand
execute as @s[tag=completeQuestWand,tag=inNormalState] run tag @s add hasPurchasedWand
execute as @s[tag=completeQuestWand,tag=inNormalState,tag=hasPurchasedWand,tag=hasPurchasedBooks,tag=hasPurchasedRobes] run scoreboard players set @s questQueueID 7
execute as @s[tag=completeQuestWand,tag=inNormalState,tag=hasPurchasedWand,tag=hasPurchasedBooks,tag=hasPurchasedRobes] run scoreboard players set @s questQueue 140
execute as @s[tag=completeQuestWand,tag=inNormalState,tag=hasPurchasedWand,tag=hasPurchasedBooks,tag=hasPurchasedRobes] run tag @s add queingQuest
execute as @s[tag=completeQuestWand,tag=inNormalState,tag=hasPurchasedWand,tag=hasPurchasedBooks,tag=hasPurchasedRobes] run scoreboard players set @s worldBarrier 3
execute as @s[tag=completeQuestWand,tag=inNormalState] run function hp:quests/quest_completed
execute as @s[tag=completeQuestWand,tag=inNormalState] run tag @s remove completeQuestWand






# reset quest tracking boolean
tag @s remove isTrackedQuest
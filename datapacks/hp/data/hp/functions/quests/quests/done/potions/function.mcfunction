##############################################
# Potions Lesson
##############################################
scoreboard players set @s questID 28
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.potions"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest



#############
## State 1 ###########################################################################################
#############
# Locate the Класс Зельеварения
### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1508,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 750.18 36.00 193.44
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

# Trigger
execute as @s[scores={questState=1,lastLocation=3,discoverLocation=0},tag=inNormalState,tag=!playingQuestAnim] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 2
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set snape p1convOverride 12
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set snape p2convOverride 12
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set snape p3convOverride 12
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set snape p4convOverride 12
execute as @s[tag=newState] run tag @s remove newState

#############
## State 2 ###########################################################################################
#############
# Wait for everyone to arrive

### Tracked Quest ###
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=2},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1508,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=2},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=2},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###
scoreboard players set @s suitableCount 0
execute as @a[tag=potionStandLocked,tag=play] unless score @s trackedQuestID matches 28 run scoreboard players add @p[tag=activePlayer] suitableCount 1
execute as @a[tag=potionStandLocked,scores={trackedQuestID=28,trackQuestState=..2},tag=play] run scoreboard players add @p[tag=activePlayer] suitableCount 1

scoreboard players set @s tmp 0
execute as @a[scores={trackedQuestID=28,lastLocation=3,trackQuestState=2},tag=inNormalState] run scoreboard players add @p[tag=activePlayer] tmp 1

# Title
execute as @s[scores={questState=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] unless score @s suitableCount = @s tmp run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=2,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Wait for everyone to get ready (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Wait for everyone to get ready (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Wait for everyone to get ready (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]
execute as @s[scores={questState=2,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Wait for everyone to get ready (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / ","color":"gold"},{"score":{"name":"@s","objective":"suitableCount"},"color":"gold"},{"text":")","color":"gold"}]

# Trigger
# This weird double tag thing is because of a super strange bug I can't explain some people run into where all the commands below execute but they don't progress to the next
# Quest state. The tag "goToNextQuestState" is removed in set_quest, and so it should just execute everything again if it for some reason doesn't set the quest the first time
# Around
execute as @s[scores={questState=2},tag=inNormalState,tag=isTrackedQuest] if score @s suitableCount <= @s tmp run tag @s add goToNextQuestState
execute as @s[tag=goToNextQuestState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 3
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] unless entity @p[tag=cutsceneLeader] run tag @s add cutsceneLeader
execute as @s[tag=newState] run scoreboard players set @s cutSceneID 12
execute as @s[tag=newState] run function hp:cutscenes/init_cutscene
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set snape p1convOverride 8
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set snape p2convOverride 8
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set snape p3convOverride 8
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set snape p4convOverride 8
execute as @s[tag=newState] run tag @s add preventConsumingMurtlapEssenceFromInventory
execute as @s[tag=newState] run tag @s add preventPlacingMurtlapEssenceInQuickslot
execute as @s[tag=newState] run tag @s remove newState



#############
## Pickup  ############################################################################################
#############

# Special selection
execute at @s[scores={questState=3..8},tag=!collectedpotionSupplies1] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=crate,tag=potionSupplies1] add questHover
execute at @s[scores={questState=3..8},tag=!collectedpotionSupplies2] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=crate,tag=potionSupplies2] add questHover
execute at @s[scores={questState=3..8},tag=!collectedpotionSupplies3] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=crate,tag=potionSupplies3] add questHover
execute at @s[scores={questState=3..8},tag=!collectedpotionSupplies4] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=crate,tag=potionSupplies4] add questHover
execute at @s[scores={questState=3..8},tag=!collectedpotionSupplies5] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=crate,tag=potionSupplies5] add questHover
execute at @s[scores={questState=3..8},tag=!collectedpotionSupplies6] positioned ^ ^-.25 ^1 unless entity @e[tag=questHover,sort=nearest,limit=1] run tag @e[distance=..2,limit=1,sort=nearest,tag=crate,tag=potionSupplies6] add questHover
execute as @s[scores={questState=3..8}] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

execute as @s[tag=hasPressedF,scores={questState=3..8}] if entity @e[tag=questHover,tag=potionSupplies,tag=potionSupplies1,limit=1] run tag @s add collectedpotionSupplies1
execute as @s[tag=hasPressedF,scores={questState=3..8}] if entity @e[tag=questHover,tag=potionSupplies,tag=potionSupplies2,limit=1] run tag @s add collectedpotionSupplies2
execute as @s[tag=hasPressedF,scores={questState=3..8}] if entity @e[tag=questHover,tag=potionSupplies,tag=potionSupplies3,limit=1] run tag @s add collectedpotionSupplies3
execute as @s[tag=hasPressedF,scores={questState=3..8}] if entity @e[tag=questHover,tag=potionSupplies,tag=potionSupplies4,limit=1] run tag @s add collectedpotionSupplies4
execute as @s[tag=hasPressedF,scores={questState=3..8}] if entity @e[tag=questHover,tag=potionSupplies,tag=potionSupplies5,limit=1] run tag @s add collectedpotionSupplies5
execute as @s[tag=hasPressedF,scores={questState=3..8}] if entity @e[tag=questHover,tag=potionSupplies,tag=potionSupplies6,limit=1] run tag @s add collectedpotionSupplies6
execute as @s[tag=hasPressedF,scores={questState=3..8}] if entity @e[tag=questHover,tag=potionSupplies,limit=1] run scoreboard players set @s trackQuestState 25
execute as @s[tag=hasPressedF,scores={questState=3..8}] if entity @e[tag=questHover,tag=potionSupplies,limit=1] at @s run playsound minecraft:custom.ui.inventory.interaction.open_inventory master @a ~ ~ ~ 1 1
execute as @s[tag=hasPressedF,scores={questState=3..8}] if entity @e[tag=questHover,tag=potionSupplies,limit=1] at @s run function hp:quests/ding_sound


# Title
execute as @s[tag=isTrackedQuest,scores={questState=3..8}] run scoreboard players set @s tmp 0
execute as @s[tag=isTrackedQuest,tag=collectedpotionSupplies1,scores={questState=2..9}] run scoreboard players add @s tmp 1
execute as @s[tag=isTrackedQuest,tag=collectedpotionSupplies2,scores={questState=2..9}] run scoreboard players add @s tmp 1
execute as @s[tag=isTrackedQuest,tag=collectedpotionSupplies3,scores={questState=2..9}] run scoreboard players add @s tmp 1
execute as @s[tag=isTrackedQuest,tag=collectedpotionSupplies4,scores={questState=2..9}] run scoreboard players add @s tmp 1
execute as @s[tag=isTrackedQuest,tag=collectedpotionSupplies5,scores={questState=2..9}] run scoreboard players add @s tmp 1
execute as @s[tag=isTrackedQuest,tag=collectedpotionSupplies6,scores={questState=2..9}] run scoreboard players add @s tmp 1

execute as @s[scores={questState=3..8},tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=3..8,playerID=1},tag=!inConversation,tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run bossbar set minecraft:player1quest name ["",{"text":"Collect potion supplies from crates (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / 6)","color":"gold"}]
execute as @s[scores={questState=3..8,playerID=2},tag=!inConversation,tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run bossbar set minecraft:player2quest name ["",{"text":"Collect potion supplies from crates (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / 6)","color":"gold"}]
execute as @s[scores={questState=3..8,playerID=3},tag=!inConversation,tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run bossbar set minecraft:player3quest name ["",{"text":"Collect potion supplies from crates (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / 6)","color":"gold"}]
execute as @s[scores={questState=3..8,playerID=4},tag=!inConversation,tag=isTrackedQuest,tag=!inProperCutScene,tag=!inResetPoint] run bossbar set minecraft:player4quest name ["",{"text":"Collect potion supplies from crates (","color":"gold"},{"score":{"name":"@s","objective":"tmp"},"color":"gold"},{"text":" / 6)","color":"gold"}]


#############
## State 3 ###########################################################################################
#############
# Collect potion supplies

### Tracked Quest ###
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=3},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1507,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=3},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=3},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 754.09 36.00 182.04
execute as @s[scores={questState=3},tag=isTrackedQuest] run scoreboard players set @s questRegion 1


execute as @s[scores={questState=3},tag=collectedpotionSupplies5] run tag @s add newState


### Trigger ###
execute as @s[tag=newState] run scoreboard players set @s questState 4
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run tag @s remove newState

#############
## State 4 ###########################################################################################
#############
# Collect potion supplies

### Tracked Quest ###
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=4},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1507,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=4},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=4},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 744 32 212
execute as @s[scores={questState=4},tag=isTrackedQuest] run scoreboard players set @s questRegion 1


execute as @s[scores={questState=4},tag=collectedpotionSupplies1] run tag @s add newState


### Trigger ###
execute as @s[tag=newState] run scoreboard players set @s questState 5
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run tag @s remove newState

#############
## State 5 ###########################################################################################
#############
# Collect potion supplies

### Tracked Quest ###
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=5},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1507,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=5},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=5},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 741 42 212
execute as @s[scores={questState=5},tag=isTrackedQuest] run scoreboard players set @s questRegion 1


execute as @s[scores={questState=5},tag=collectedpotionSupplies6] run tag @s add newState


### Trigger ###
execute as @s[tag=newState] run scoreboard players set @s questState 6
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run tag @s remove newState

#############
## State 6 ###########################################################################################
#############
# Collect potion supplies

### Tracked Quest ###
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=6},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1507,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=6},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=6},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 742 35 181
execute as @s[scores={questState=6},tag=isTrackedQuest] run scoreboard players set @s questRegion 1


execute as @s[scores={questState=6},tag=collectedpotionSupplies4] run tag @s add newState


### Trigger ###
execute as @s[tag=newState] run scoreboard players set @s questState 7
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run tag @s remove newState

#############
## State 7 ###########################################################################################
#############
# Collect potion supplies

### Tracked Quest ###
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=7},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1507,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=7},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=7},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 732 34 138
execute as @s[scores={questState=7},tag=isTrackedQuest] run scoreboard players set @s questRegion 1


execute as @s[scores={questState=7},tag=collectedpotionSupplies2] run tag @s add newState


### Trigger ###
execute as @s[tag=newState] run scoreboard players set @s questState 8
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run tag @s remove newState


#############
## State 8 ###########################################################################################
#############
# Collect potion supplies

### Tracked Quest ###
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=8},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1507,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=8},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=8},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 779 35 141
execute as @s[scores={questState=8},tag=isTrackedQuest] run scoreboard players set @s questRegion 1


execute as @s[scores={questState=8},tag=collectedpotionSupplies3] run tag @s add newState




### Trigger ###
execute as @s[tag=newState] run scoreboard players set @s questState 9
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set snape p1convOverride 9
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set snape p2convOverride 9
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set snape p3convOverride 9
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set snape p4convOverride 9
execute as @s[tag=newState] run tag @s remove newState


#############
## State 9 ###########################################################################################
#############
# Speak to professor Snape

### Tracked Quest ###
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=9},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1505,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=9},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=9},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 763.59 36.00 188.71
execute as @s[scores={questState=9,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=1},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=9},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###


### Trigger ###
execute as @s[scores={questState=9},tag=inNormalState,tag=readyToBrewPotion] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 10
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
# Give potion ingredients
execute as @s[tag=newState] run tag @e[tag=inventory] remove inventory
execute as @s[tag=newState,scores={playerID=1}] run tag @e[tag=player1Inventory] add inventory
execute as @s[tag=newState,scores={playerID=2}] run tag @e[tag=player2Inventory] add inventory
execute as @s[tag=newState,scores={playerID=3}] run tag @e[tag=player3Inventory] add inventory
execute as @s[tag=newState,scores={playerID=4}] run tag @e[tag=player4Inventory] add inventory
execute as @s[tag=newState] run scoreboard players set @s InvItemID 46
execute as @s[tag=newState] run scoreboard players set @s InvItemCount 3
execute as @s[tag=newState] run function hp:inventory/give_player_item
execute as @s[tag=newState] run scoreboard players set @s InvItemID 152
execute as @s[tag=newState] run scoreboard players set @s InvItemCount 1
execute as @s[tag=newState] run function hp:inventory/give_player_item
execute as @s[tag=newState] run scoreboard players set @s InvItemID 55
execute as @s[tag=newState] run scoreboard players set @s InvItemCount 1
execute as @s[tag=newState] run function hp:inventory/give_player_item
execute as @s[tag=newState] run scoreboard players set @s InvItemID 58
execute as @s[tag=newState] run scoreboard players set @s InvItemCount 2
execute as @s[tag=newState] run function hp:inventory/give_player_item
execute as @s[tag=newState] run tag @s remove readyToBrewPotion
execute as @s[tag=newState] run tag @s remove potionStandLocked
execute as @s[tag=newState] run tag @s remove newState

#############
## State 10 ###########################################################################################
#############
# Brew the potion

### Tracked Quest ###
execute as @s[scores={questState=10},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=10},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1506,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=10},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=10},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 763.44 37.00 196.37
execute as @s[scores={questState=10},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###
execute as @s[scores={questState=10},tag=isTrackedQuest,tag=inBrewer] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=10,playerID=1},tag=!inConversation,tag=inBrewer,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Brew the potion 'Murtlap Essence'","color":"gold"}]
execute as @s[scores={questState=10,playerID=2},tag=!inConversation,tag=inBrewer,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Brew the potion 'Murtlap Essence'","color":"gold"}]
execute as @s[scores={questState=10,playerID=3},tag=!inConversation,tag=inBrewer,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Brew the potion 'Murtlap Essence'","color":"gold"}]
execute as @s[scores={questState=10,playerID=4},tag=!inConversation,tag=inBrewer,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Brew the potion 'Murtlap Essence'","color":"gold"}]



### Trigger ###
execute as @s[scores={questState=10},tag=inNormalState,tag=hasBrewedFirstPotion] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 11
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove hasBrewedFirstPotion
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set snape p1convOverride 10
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set snape p2convOverride 10
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set snape p3convOverride 10
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set snape p4convOverride 10
execute as @s[tag=newState] run tag @s remove newState


#############
## State 11 ###########################################################################################
#############
# Speak to professor Snape

### Tracked Quest ###
execute as @s[scores={questState=11},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=11},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1505,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=11},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=11},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 763.59 36.00 188.71
execute as @s[scores={questState=11,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=1},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=11},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

### Function ###

### Trigger ###
execute as @s[scores={questState=11},tag=inNormalState,tag=hasSpokenToSnapeAfterBrewingPotion] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 12
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove hasSpokenToSnapeAfterBrewingPotion
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set snape p1convOverride 10
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set snape p2convOverride 10
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set snape p3convOverride 10
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set snape p4convOverride 10
execute as @s[tag=newState] run scoreboard players set @s quickSlot1ID 0
execute as @s[tag=newState] run scoreboard players set @s quickSlot2ID 0
execute as @s[tag=newState] run tag @s remove preventPlacingMurtlapEssenceInQuickslot
execute as @s[tag=newState] run tag @s remove newState


#############
## State 12 ###########################################################################################
#############
# Open your inventory

### Tracked Quest ###
execute as @s[scores={questState=12},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=12},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1463,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=12},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=12},tag=isTrackedQuest] run scoreboard players set @s questRegion 1


### Function ###
# Title
execute as @s[scores={questState=12},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=12,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Open your inventory","color":"gold"}]
execute as @s[scores={questState=12,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Open your inventory","color":"gold"}]
execute as @s[scores={questState=12,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Open your inventory","color":"gold"}]
execute as @s[scores={questState=12,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Open your inventory","color":"gold"}]

# Trigger
execute as @s[scores={questState=12},tag=isTrackedQuest,tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 13
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 13 ###########################################################################################
#############
# Select 'Murtlap Essence'

### Tracked Quest ###
execute as @s[scores={questState=13},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=13},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1463,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=13},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=13},tag=isTrackedQuest] run scoreboard players set @s questRegion 1


### Function ###
# Title
execute as @s[scores={questState=13},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=13,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Select 'Murtlap Essence'","color":"gold"}]
execute as @s[scores={questState=13,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Select 'Murtlap Essence'","color":"gold"}]
execute as @s[scores={questState=13,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Select 'Murtlap Essence'","color":"gold"}]
execute as @s[scores={questState=13,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Select 'Murtlap Essence'","color":"gold"}]

# Trigger
execute as @s[scores={questState=13,InvSelectItemID=3},tag=isTrackedQuest] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 14
execute as @s[tag=newState] run function hp:quests/set_quest
# execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 14 ###########################################################################################
#############
# Add it to your quickslot

### Tracked Quest ###
execute as @s[scores={questState=14},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=14},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1463,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=14},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=14},tag=isTrackedQuest] run scoreboard players set @s questRegion 1


### Function ###
# Title
execute as @s[scores={questState=14},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=14,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Add the potion to one of your two quick slots","color":"gold"}]
execute as @s[scores={questState=14,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Add the potion to one of your two quick slots","color":"gold"}]
execute as @s[scores={questState=14,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Add the potion to one of your two quick slots","color":"gold"}]
execute as @s[scores={questState=14,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Add the potion to one of your two quick slots","color":"gold"}]

# Trigger
execute as @s[scores={questState=14,quickSlot1ID=3},tag=isTrackedQuest] run tag @s add newState
execute as @s[scores={questState=14,quickSlot2ID=3},tag=isTrackedQuest] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 15
execute as @s[tag=newState] run function hp:quests/set_quest
# execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState] run tag @s remove newState

#############
## State 15 ###########################################################################################
#############
# Exit your inventory

### Tracked Quest ###
execute as @s[scores={questState=15},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=15},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1463,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=15},tag=isTrackedQuest] run tag @s add questHasNoDirection
execute as @s[scores={questState=15},tag=isTrackedQuest] run scoreboard players set @s questRegion 1


### Function ###
# Title
execute as @s[scores={questState=15},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run scoreboard players set @s questTextTimer 2
execute as @s[scores={questState=15,playerID=1},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player1quest name ["",{"text":"Exit your inventory","color":"gold"}]
execute as @s[scores={questState=15,playerID=2},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player2quest name ["",{"text":"Exit your inventory","color":"gold"}]
execute as @s[scores={questState=15,playerID=3},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player3quest name ["",{"text":"Exit your inventory","color":"gold"}]
execute as @s[scores={questState=15,playerID=4},tag=!inConversation,tag=!inProperCutScene,tag=!inResetPoint,tag=isTrackedQuest] run bossbar set minecraft:player4quest name ["",{"text":"Exit your inventory","color":"gold"}]

# Trigger
execute as @s[scores={questState=15},tag=isTrackedQuest,tag=inNormalState] run tag @s add newState
execute as @s[tag=newState] run scoreboard players set @s questState 16
execute as @s[tag=newState] run function hp:quests/set_quest
execute as @s[tag=newState] run function hp:quests/ding_sound
execute as @s[tag=newState,scores={playerID=1}] run scoreboard players set snape p1convOverride 11
execute as @s[tag=newState,scores={playerID=2}] run scoreboard players set snape p2convOverride 11
execute as @s[tag=newState,scores={playerID=3}] run scoreboard players set snape p3convOverride 11
execute as @s[tag=newState,scores={playerID=4}] run scoreboard players set snape p4convOverride 11
execute as @s[tag=newState] run tag @s remove newState

#############
## State 16 ###########################################################################################
#############
# Speak to professor Snape

### Tracked Quest ###
execute as @s[scores={questState=16},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=16},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1505,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=16},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=16},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 763.59 36.00 188.71
execute as @s[scores={questState=16,npcQuestIcon=1},tag=!inProperCutScene,tag=!inResetPoint,tag=!isFastTravelling,tag=isTrackedQuest] at @e[scores={conv=1},tag=npc,tag=!inConversationNPC] run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 100 1 force @s
execute as @s[scores={questState=16},tag=isTrackedQuest] run scoreboard players set @s questRegion 1

execute as @s[scores={questState=16},tag=inNormalState,tag=isTrackedQuest,tag=hasSpokenToSnapeAfterAddingPotionToQuickSlot] run tag @s add completeQuest



#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=completeQuest] run function hp:quests/advancement_ui_space
execute as @s[tag=completeQuest] run scoreboard players set @s questQueueID 16
execute as @s[tag=completeQuest] run scoreboard players set @s questQueue 120
execute as @s[tag=completeQuest] run tag @s add queingQuest
execute as @s[tag=completeQuest] run function hp:quests/quest_completed
execute as @s[tag=completeQuest,scores={playerID=1}] run scoreboard players set snape p1convOverride 1
execute as @s[tag=completeQuest,scores={playerID=2}] run scoreboard players set snape p2convOverride 1
execute as @s[tag=completeQuest,scores={playerID=3}] run scoreboard players set snape p3convOverride 1
execute as @s[tag=completeQuest,scores={playerID=4}] run scoreboard players set snape p4convOverride 1
execute as @s[tag=completeQuest] run tag @s remove collectedpotionSupplies1
execute as @s[tag=completeQuest] run tag @s remove collectedpotionSupplies2
execute as @s[tag=completeQuest] run tag @s remove collectedpotionSupplies3
execute as @s[tag=completeQuest] run tag @s remove collectedpotionSupplies4
execute as @s[tag=completeQuest] run tag @s remove collectedpotionSupplies5
execute as @s[tag=completeQuest] run tag @s remove collectedpotionSupplies6
execute as @s[tag=completeQuest] run tag @s remove hasSpokenToSnapeAfterAddingPotionToQuickSlot
execute as @s[tag=completeQuest] run tag @s remove preventConsumingMurtlapEssenceFromInventory
execute as @s[tag=completeQuest] run tag @s remove completeQuest


# reset quest tracking boolean
tag @s remove isTrackedQuest
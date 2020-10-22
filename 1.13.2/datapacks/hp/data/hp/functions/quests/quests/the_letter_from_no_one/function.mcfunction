##############################################
# The letter from no one
##############################################
scoreboard players set @s questID 1
execute store result score @s questState run data get entity @e[tag=questHolder,limit=1] ArmorItems[3].tag."quests.theLetterFromNoOne"
execute if score @s questID = @s trackedQuestID run scoreboard players operation @s trackQuestState = @s questState
execute if score @s questID = @s trackedQuestID run tag @s add isTrackedQuest

# Complete Quest Cheat
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s add trigger
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tp @s 2312.15 64.00 -937.34 -702.52 -0.05
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run scoreboard players set @s hotbar_stage 4
execute as @s[tag=isTrackedQuest,tag=completeTrackedQuest] run tag @s remove completeTrackedQuest

#############
## State 1 ##
#############

### Tracked Quest ###
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove hideQuestTracking
execute as @s[scores={questState=1},tag=isTrackedQuest] if entity @s[tag=showingTrackedQuest,tag=!playingQuestAnim,tag=drawingNormalHotbar,tag=takeOverInventory] if score @s questID = @s trackedQuestID run replaceitem entity @s hotbar.1 minecraft:diamond_axe{display:{Name:"{\"text\":\"Карта Мародёров\",\"color\":\"gold\",\"bold\":true}"},HideFlags:63,Damage:1491,Unbreakable:1b,qDetect:1b}
execute as @s[scores={questState=1},tag=isTrackedQuest] run tag @s remove questHasNoDirection
execute as @s[scores={questState=1},tag=isTrackedQuest] at @s as @e[tag=questDirectionTester,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing 2315.51 64.00 -937.50
execute as @s[scores={questState=1},tag=isTrackedQuest] run scoreboard players set @s questRegion 6

# Special selection
execute at @s[scores={questState=1,hotbar_stage=1},tag=!inLetter,tag=!inProperCutScene,tag=!inResetPoint] positioned ^ ^-.25 ^1 run tag @e[distance=..2,limit=1,sort=nearest,tag=hogwartsLetter] add questHover
execute as @s[scores={questState=1,hotbar_stage=1},tag=!inLetter,tag=!inProperCutScene,tag=!inResetPoint] as @e[type=!item_frame,tag=questHover,limit=1] at @s run function hp:interaction/quest_hover_block_check_launch

### Function ###
execute if entity @e[tag=questHover,tag=hogwartsLetter] as @s[tag=!inLetter,tag=!showMaraudersMap,tag=!inQuestBook,tag=!inSettings,tag=!showSpellSelection,tag=!inInventory,tag=!flyingBroom,tag=!invisCape,tag=hasPressedF] run tag @s add enterLetter
function hp:misc/read_hogwarts_letter/main_read_hogwarts_letter




### Trigger ###
execute as @s[tag=!invTutorial] run tag @s add trigger


#################
### Completed ###
#################

# Advancement ui:
execute as @s[tag=trigger] run function hp:quests/advancement_ui_space
execute as @s[tag=trigger] run scoreboard players set @s questQueueID 2
execute as @s[tag=trigger] run scoreboard players set @s questQueue 140
execute as @s[tag=trigger] run tag @s add queingQuest

execute as @s[tag=trigger] run function hp:quests/quest_completed
execute as @s[tag=trigger] run tag @s remove hoverLocked
execute as @s[tag=trigger] run tag @s remove trigger


# reset quest tracking boolean
tag @s remove isTrackedQuest
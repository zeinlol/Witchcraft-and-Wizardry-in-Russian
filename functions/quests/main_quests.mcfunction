# The quest system is kind of a mess. - I built it on top of the inventory system, but I should've probably started something from scratch. 
# If you are looking to implement similar systems to the ones we have used I'd recommend rethinking how this system is structured.
# The system stores active quests in a commandblock chain to save performance. (not sure if actually more performant, but fewer commands are 
# executed so in theory it should be - you dont have to test for every possible quest every tick). An alternative would be to store each quest
# in it's own datapack and enable / disable these on the fly. There might be other problems there though, and it would be difficult to manage
# I imagine.


execute as @s[tag=enterQuestBook] run function hp:quests/init_questbook
execute as @s[tag=inQuestBook,scores={playerID=1}] run function hp:quests/in_questbook_player1
execute as @s[tag=inQuestBook,scores={playerID=2}] run function hp:quests/in_questbook_player2
execute as @s[tag=inQuestBook,scores={playerID=3}] run function hp:quests/in_questbook_player3
execute as @s[tag=inQuestBook,scores={playerID=4}] run function hp:quests/in_questbook_player4
execute as @s[tag=exitQuestBook] run function hp:quests/exit_questbook

###################
# Tracking Quests #
###################
execute unless score @s oldTrackedQuest = @s trackedQuestID run function hp:quests/tracked_quest_changed

# Tracking
# NPC icons
scoreboard players remove @s[scores={npcQuestIcon=1..}] npcQuestIcon 1
scoreboard players set @s[scores={npcQuestIcon=0}] npcQuestIcon 20


# Quest text timer
scoreboard players remove @s[scores={questTextTimer=1..}] questTextTimer 1

# Show text tag used to update bossbars
execute as @s[tag=!showQuestText,scores={questTextTimer=1..}] run tag @s add updateBossbarToShowQuestText
execute as @s[tag=updateBossbarToShowQuestText] run tag @s add showQuestText
execute as @s[tag=updateBossbarToShowQuestText] run function hp:misc/update_bossbars
execute as @s[tag=updateBossbarToShowQuestText] run tag @s remove updateBossbarToShowQuestText
# Clear quest bossbar
execute as @s[tag=showQuestText,scores={questTextTimer=0}] run tag @s add updateBossbarToHideQuestText
execute as @s[tag=updateBossbarToHideQuestText,scores={playerID=1}] run bossbar set minecraft:player1quest name {"text":" "}
execute as @s[tag=updateBossbarToHideQuestText,scores={playerID=2}] run bossbar set minecraft:player2quest name {"text":" "}
execute as @s[tag=updateBossbarToHideQuestText,scores={playerID=3}] run bossbar set minecraft:player3quest name {"text":" "}
execute as @s[tag=updateBossbarToHideQuestText,scores={playerID=4}] run bossbar set minecraft:player4quest name {"text":" "}
execute as @s[tag=updateBossbarToHideQuestText] run tag @s remove showQuestText
execute as @s[tag=updateBossbarToHideQuestText] run function hp:misc/update_bossbars
execute as @s[tag=updateBossbarToHideQuestText] run tag @s remove updateBossbarToHideQuestText

# Quest compass direction
execute as @s[scores={trackedQuestID=1..}] run function hp:quests/quest_direction

# Advancement ui
execute as @s[scores={completedQuestID=1..},tag=delayedQuestAdvancementOneFrame] run function hp:quests/advancement_ui
execute as @s[scores={completedQuestID=1..},tag=!delayedQuestAdvancementOneFrame,tag=!dontDelayQuestAdvancementOneFrameAgain] run tag @s add delayedQuestAdvancementOneFrame
execute as @s[scores={completedQuestID=1..},tag=dontDelayQuestAdvancementOneFrameAgain] run tag @s remove dontDelayQuestAdvancementOneFrameAgain

# Queue quest
scoreboard players remove @s[tag=queingQuest,scores={questQueue=1..}] questQueue 1
execute as @s[tag=queingQuest,tag=!queuedQuestIsNotNew,scores={questQueue=50..51}] run function hp:quests/advancement_ui_new_quest
execute as @s[tag=queingQuest,scores={questQueue=0}] run function hp:quests/quest_queue_end

# Delayed wand hint. Not a great solution to put it here, but oh well :/
execute as @s[scores={displayWandHint=1..}] run scoreboard players remove @s displayWandHint 1
execute as @s[scores={displayWandHint=1}] run scoreboard players set @s hotbar_stage 7
execute as @s[scores={displayWandHint=1}] at @s run playsound minecraft:custom.ui.learn.spell_temporarily_unlocked master @s ~ ~ ~ 100 1.25 1

execute as @s[scores={debugGiveQuest=1..}] run scoreboard players operation @s questID = @s debugGiveQuest
execute as @s[scores={debugGiveQuest=1..}] run scoreboard players set @s questState 1
execute as @s[scores={debugGiveQuest=1..}] run function hp:quests/set_quest
execute as @s[scores={debugGiveQuest=1..}] run scoreboard players set @s debugGiveQuest 0

# Quest Ding sound
scoreboard players remove @s[scores={questDing=1..}] questDing 1


# If no quest is tracked make sure the quest line isn't visible (Sometimes something goes wrong so this is a check to prevent it)
execute as @s[tag=showTrackedQuest,scores={trackedQuestID=0}] run tag @s remove showTrackedQuest


# Pensive timer
execute as @s[scores={playerID=1}] if score pensiveTimerIsGoing p1Quests matches 1 run function hp:quests/timer/pensive_timer
execute as @s[scores={playerID=2}] if score pensiveTimerIsGoing p2Quests matches 1 run function hp:quests/timer/pensive_timer
execute as @s[scores={playerID=3}] if score pensiveTimerIsGoing p3Quests matches 1 run function hp:quests/timer/pensive_timer
execute as @s[scores={playerID=4}] if score pensiveTimerIsGoing p4Quests matches 1 run function hp:quests/timer/pensive_timer
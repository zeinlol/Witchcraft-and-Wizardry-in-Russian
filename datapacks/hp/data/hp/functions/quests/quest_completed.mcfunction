# Remove quest from quest list

# Shouldn't be a problem and completed quest wont always be the tracked quest!
# scoreboard players operation @s questID = @s trackedQuestID

# -1 questState is used to test for completed quests
scoreboard players set @s questState -1
function hp:quests/set_quest

# Stop tracking quest
scoreboard players set @s trackedQuestID 0

# Set new tracked quest in queue if not specified by previous quest. Will be the first Quest in the players questbook
execute as @s[tag=!queingQuest] run scoreboard players set @s questMenu 1
execute as @s[tag=!queingQuest,scores={playerID=1}] as 0-0-5-0-1 run function hp:quests/read_quests
execute as @s[tag=!queingQuest,scores={playerID=2}] as 0-0-5-0-2 run function hp:quests/read_quests
execute as @s[tag=!queingQuest,scores={playerID=3}] as 0-0-5-0-3 run function hp:quests/read_quests
execute as @s[tag=!queingQuest,scores={playerID=4}] as 0-0-5-0-4 run function hp:quests/read_quests
execute as @s[tag=!queingQuest] run scoreboard players set @s questMenu 0
execute as @s[tag=!noQuests,tag=!queingQuest] run scoreboard players operation @s questQueueID = @s selectQuestID
execute as @s[tag=!noQuests,tag=!queingQuest,scores={questQueueID=1..}] run scoreboard players set @s questQueue 140
execute as @s[tag=!noQuests,tag=!queingQuest,scores={questQueueID=1..}] run tag @s add queuedQuestIsNotNew
execute as @s[tag=!noQuests,tag=!queingQuest,scores={questQueueID=1..}] run tag @s add queingQuest


# Prevent animation playing enter and then immediatly exit after leaving conversation / inventory etc after completing a quest 
tag @s[scores={trackedQuestID=0},tag=playingQuestAnim] add preventDoubleQuestTrackAnimation
tag @s[scores={trackedQuestID=0},tag=preventDoubleQuestTrackAnimation] remove showTrackedQuest
tag @s[scores={trackedQuestID=0},tag=preventDoubleQuestTrackAnimation] add showingTrackedQuest
tag @s[scores={trackedQuestID=0},tag=preventDoubleQuestTrackAnimation] remove playingQuestAnim
tag @s[scores={trackedQuestID=0},tag=preventDoubleQuestTrackAnimation] remove silentQuestAnimation
scoreboard players set @s[scores={trackedQuestID=0},tag=preventDoubleQuestTrackAnimation] questAnim 7
tag @s[scores={trackedQuestID=0},tag=preventDoubleQuestTrackAnimation] remove preventDoubleQuestTrackAnimation


# Reconfigure quest commandblocks
# function hp:quests/setup_quests

# Sound (dont play at diagon alley quest as it overlaps with music)
execute at @s unless score @s questID matches 2 run playsound minecraft:custom.ui.quest.quest_completed master @s ~ ~ ~ 10000 1 1

# Set next quest to queued quest


# QuestID 70 is the rare book one which isn't actually a real quest so there's an exception there
# The tracked quest also shouldn't change if the tracked quest is one of the flying quests that lock your quest book until they are completed, so you can't mess it up by changing your tracked quest
# To something else by accepting a new quest.

# There is also a strange issue where sometimes it queues a quest that doesn't exist anymore so you get a empty tracked queued quest, so there's another check for that here.


execute unless score @s questQueueID matches 70 run scoreboard players operation @s[tag=!lockTrackedQuest] trackedQuestID = @s questQueueID
execute unless score @s questQueueID matches 70 unless score @s trackedQuestID matches 30 unless score @s trackedQuestID matches 26 unless score @s trackedQuestID matches 62 run scoreboard players operation @s[tag=lockTrackedQuest] trackedQuestID = @s questQueueID
execute unless score @s questQueueID matches 70 run scoreboard players set @s[tag=!queuedQuestIsNotNew] questState 1
execute unless score @s questQueueID matches 70 run scoreboard players operation @s[tag=!queuedQuestIsNotNew] questID = @s questQueueID
execute unless score @s questQueueID matches 70 run execute as @s[tag=!queuedQuestIsNotNew] run function hp:quests/set_quest
execute unless score @s questQueueID matches 70 run execute as @s[tag=!queuedQuestIsNotNew] run function hp:quests/setup_quests
execute unless score @s questQueueID matches 70 run tag @s[tag=queuedQuestIsNotNew] remove queuedQuestIsNotNew
tag @s remove queingQuest

# Check to make sure the quest is available to be tracked to prevent a bug that can occur on rare occasions
function hp:quests/check_quest_availability

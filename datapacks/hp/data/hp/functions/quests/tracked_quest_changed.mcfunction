# Show or hide

execute if score @s trackedQuestID matches 0 run tag @s remove showTrackedQuest
execute unless score @s trackedQuestID matches 0 run tag @s add trackedQuestChanged
execute unless score @s[tag=!showingTrackedQuest] trackedQuestID matches 0 run tag @s add showTrackedQuest






# Finish
scoreboard players operation @s oldTrackedQuest = @s trackedQuestID
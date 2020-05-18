tag @s add inTravelPoint
tag @s add travelPointRoadToHogsmeade2
scoreboard players set @s travelPoint 70
tag @s[scores={trackedQuestID=1..}] remove showTrackedQuest
tag @s[scores={trackedQuestID=1..}] remove showingTrackedQuest
tag @s add offhandCanBeReplaced
scoreboard players set @s[scores={trackedQuestID=1..}] questAnim 9
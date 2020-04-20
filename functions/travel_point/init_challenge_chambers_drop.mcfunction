tag @s add inTravelPoint
tag @s add travelPointChallengeChambersDrop
scoreboard players set @s travelPoint 40
tag @s[scores={trackedQuestID=1..}] remove showTrackedQuest
tag @s[scores={trackedQuestID=1..}] remove showingTrackedQuest
tag @s add offhandCanBeReplaced
scoreboard players set @s[scores={trackedQuestID=1..}] questAnim 9
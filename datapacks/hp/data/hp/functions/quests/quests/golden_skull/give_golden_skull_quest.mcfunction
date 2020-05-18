#############
# Add quest #
#############
scoreboard players set goldenSkull sharedQuests 1
scoreboard players set goldenSkull p1Quests 1
scoreboard players set goldenSkull p2Quests 1
scoreboard players set goldenSkull p3Quests 1
scoreboard players set goldenSkull p4Quests 1
scoreboard players set @a[tag=play] questQueueID 23
scoreboard players set @a[tag=play] questQueue 52
scoreboard players set @a[tag=play] trackedQuestID 0
tag @a[tag=play] add queingQuest

execute at @s run playsound minecraft:custom.ui.quest.accept_quest master @s ~ ~ ~ 1 1 1
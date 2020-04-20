scoreboard players operation playPensiveMemoryID global = confirmingPensiveMemoryID global

# Lumos
execute if score playPensiveMemoryID global matches 1 run scoreboard players set @s questQueueID 14
execute if score playPensiveMemoryID global matches 1 run scoreboard players set @s questQueue 52
execute if score playPensiveMemoryID global matches 1 run scoreboard players set @s trackedQuestID 0
execute if score playPensiveMemoryID global matches 1 run tag @s add queingQuest
execute if score playPensiveMemoryID global matches 1 run playsound minecraft:custom.ui.quest.accept_quest master @s ~ ~ ~ 1 1 1

# Stupefy
execute if score playPensiveMemoryID global matches 2 run scoreboard players set @s questQueueID 15
execute if score playPensiveMemoryID global matches 2 run scoreboard players set @s questQueue 52
execute if score playPensiveMemoryID global matches 2 run scoreboard players set @s trackedQuestID 0
execute if score playPensiveMemoryID global matches 2 run tag @s add queingQuest
execute if score playPensiveMemoryID global matches 2 run playsound minecraft:custom.ui.quest.accept_quest master @s ~ ~ ~ 1 1 1

# Brackium Emendo
execute if score playPensiveMemoryID global matches 3 run scoreboard players set @s questQueueID 16
execute if score playPensiveMemoryID global matches 3 run scoreboard players set @s questQueue 52
execute if score playPensiveMemoryID global matches 3 run scoreboard players set @s trackedQuestID 0
execute if score playPensiveMemoryID global matches 3 run tag @s add queingQuest
execute if score playPensiveMemoryID global matches 3 run playsound minecraft:custom.ui.quest.accept_quest master @s ~ ~ ~ 1 1 1

# Alohomora
execute if score playPensiveMemoryID global matches 4 run scoreboard players set @s questQueueID 17
execute if score playPensiveMemoryID global matches 4 run scoreboard players set @s questQueue 52
execute if score playPensiveMemoryID global matches 4 run scoreboard players set @s trackedQuestID 0
execute if score playPensiveMemoryID global matches 4 run tag @s add queingQuest
execute if score playPensiveMemoryID global matches 4 run playsound minecraft:custom.ui.quest.accept_quest master @s ~ ~ ~ 1 1 1

# Wingardium Leviosa
execute if score playPensiveMemoryID global matches 5 run scoreboard players set @s questQueueID 18
execute if score playPensiveMemoryID global matches 5 run scoreboard players set @s questQueue 52
execute if score playPensiveMemoryID global matches 5 run scoreboard players set @s trackedQuestID 0
execute if score playPensiveMemoryID global matches 5 run tag @s add queingQuest
execute if score playPensiveMemoryID global matches 5 run playsound minecraft:custom.ui.quest.accept_quest master @s ~ ~ ~ 1 1 1

# Bombarda Maxima
execute if score playPensiveMemoryID global matches 6 run scoreboard players set @s questQueueID 19
execute if score playPensiveMemoryID global matches 6 run scoreboard players set @s questQueue 52
execute if score playPensiveMemoryID global matches 6 run scoreboard players set @s trackedQuestID 0
execute if score playPensiveMemoryID global matches 6 run tag @s add queingQuest
execute if score playPensiveMemoryID global matches 6 run playsound minecraft:custom.ui.quest.accept_quest master @s ~ ~ ~ 1 1 1

# Vera Verto
execute if score playPensiveMemoryID global matches 7 run scoreboard players set @s questQueueID 20
execute if score playPensiveMemoryID global matches 7 run scoreboard players set @s questQueue 52
execute if score playPensiveMemoryID global matches 7 run scoreboard players set @s trackedQuestID 0
execute if score playPensiveMemoryID global matches 7 run tag @s add queingQuest
execute if score playPensiveMemoryID global matches 7 run playsound minecraft:custom.ui.quest.accept_quest master @s ~ ~ ~ 1 1 1

# Expecto Patronum
execute if score playPensiveMemoryID global matches 8 run scoreboard players set @s questQueueID 21
execute if score playPensiveMemoryID global matches 8 run scoreboard players set @s questQueue 52
execute if score playPensiveMemoryID global matches 8 run scoreboard players set @s trackedQuestID 0
execute if score playPensiveMemoryID global matches 8 run tag @s add queingQuest
execute if score playPensiveMemoryID global matches 8 run playsound minecraft:custom.ui.quest.accept_quest master @s ~ ~ ~ 1 1 1

# Apparition
execute if score playPensiveMemoryID global matches 9 run scoreboard players set @s questQueueID 22
execute if score playPensiveMemoryID global matches 9 run scoreboard players set @s questQueue 52
execute if score playPensiveMemoryID global matches 9 run scoreboard players set @s trackedQuestID 0
execute if score playPensiveMemoryID global matches 9 run tag @s add queingQuest
execute if score playPensiveMemoryID global matches 9 run playsound minecraft:custom.ui.quest.accept_quest master @s ~ ~ ~ 1 1 1

tag @s remove waitingToReliveMemory
scoreboard players set confirmingPensiveMemoryID global 0
tag @s add inMemory

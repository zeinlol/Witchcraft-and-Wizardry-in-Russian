# For multiplayer when other players confirm the selected memory

scoreboard players operation @s reliveMemoryID = confirmingPensiveMemoryID global
tag @s add waitingToReliveMemory
scoreboard players set @s pensiveCancel 0
execute at @s run playsound minecraft:custom.ui.learn.potion_brewed master @a ~ ~ ~ 2 2
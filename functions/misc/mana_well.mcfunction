scoreboard players operation @s manaAmount = @s maxManaAmount
execute at @s anchored eyes run particle minecraft:dust 0.5 0.5 1 1 ^ ^ ^1 0.25 0.25 0.25 0.1 10
execute at @s run playsound minecraft:custom.ui.consumable.drink master @s
execute at @s run playsound minecraft:custom.ui.event2 master @s
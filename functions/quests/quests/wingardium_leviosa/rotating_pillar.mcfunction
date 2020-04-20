# For the rotating pillar in the middle of the room with all the doors. Each rotation of the pillar should open one door and close all the others if they are open

execute if score @s pillarState matches 1 if score wingardiumDoor1Direction global matches 1 run scoreboard players set wingardiumDoor1Direction global 0
execute if score @s pillarState matches 1 if score wingardiumDoor2Direction global matches 1 run scoreboard players set wingardiumDoor2Direction global 0
execute if score @s pillarState matches 1 if score wingardiumDoor3Direction global matches 0 run scoreboard players set wingardiumDoor3Direction global 1
execute if score @s pillarState matches 1 if score wingardiumDoor4Direction global matches 1 run scoreboard players set wingardiumDoor4Direction global 0

execute if score @s pillarState matches 2 if score wingardiumDoor1Direction global matches 1 run scoreboard players set wingardiumDoor1Direction global 0
execute if score @s pillarState matches 2 if score wingardiumDoor2Direction global matches 0 run scoreboard players set wingardiumDoor2Direction global 1
execute if score @s pillarState matches 2 if score wingardiumDoor3Direction global matches 1 run scoreboard players set wingardiumDoor3Direction global 0
execute if score @s pillarState matches 2 if score wingardiumDoor4Direction global matches 1 run scoreboard players set wingardiumDoor4Direction global 0

execute if score @s pillarState matches 3 if score wingardiumDoor1Direction global matches 1 run scoreboard players set wingardiumDoor1Direction global 0
execute if score @s pillarState matches 3 if score wingardiumDoor2Direction global matches 1 run scoreboard players set wingardiumDoor2Direction global 0
execute if score @s pillarState matches 3 if score wingardiumDoor3Direction global matches 1 run scoreboard players set wingardiumDoor3Direction global 0
execute if score @s pillarState matches 3 if score wingardiumDoor4Direction global matches 0 run scoreboard players set wingardiumDoor4Direction global 1

execute if score @s pillarState matches 4 if score wingardiumDoor1Direction global matches 0 run scoreboard players set wingardiumDoor1Direction global 1
execute if score @s pillarState matches 4 if score wingardiumDoor2Direction global matches 1 run scoreboard players set wingardiumDoor2Direction global 0
execute if score @s pillarState matches 4 if score wingardiumDoor3Direction global matches 1 run scoreboard players set wingardiumDoor3Direction global 0
execute if score @s pillarState matches 4 if score wingardiumDoor4Direction global matches 1 run scoreboard players set wingardiumDoor4Direction global 0
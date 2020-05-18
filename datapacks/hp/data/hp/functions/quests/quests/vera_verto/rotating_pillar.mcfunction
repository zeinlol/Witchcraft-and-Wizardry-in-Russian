# For the rotating pillar in the room with the magnet where you need to block it. Each rotation of the pillar should open one magnet blocker and close all the others if they are open

execute if score @s pillarState matches 1 if score veraVertoMagnetBlock1Direction global matches 0 run scoreboard players set veraVertoMagnetBlock1Direction global 1
execute if score @s pillarState matches 1 if score veraVertoMagnetBlock2Direction global matches 1 run scoreboard players set veraVertoMagnetBlock2Direction global 0
execute if score @s pillarState matches 1 if score veraVertoMagnetBlock3Direction global matches 1 run scoreboard players set veraVertoMagnetBlock3Direction global 0
execute if score @s pillarState matches 1 if score veraVertoMagnetBlock4Direction global matches 1 run scoreboard players set veraVertoMagnetBlock4Direction global 0

execute if score @s pillarState matches 2 if score veraVertoMagnetBlock1Direction global matches 1 run scoreboard players set veraVertoMagnetBlock1Direction global 0
execute if score @s pillarState matches 2 if score veraVertoMagnetBlock2Direction global matches 0 run scoreboard players set veraVertoMagnetBlock2Direction global 1
execute if score @s pillarState matches 2 if score veraVertoMagnetBlock3Direction global matches 1 run scoreboard players set veraVertoMagnetBlock3Direction global 0
execute if score @s pillarState matches 2 if score veraVertoMagnetBlock4Direction global matches 1 run scoreboard players set veraVertoMagnetBlock4Direction global 0

execute if score @s pillarState matches 3 if score veraVertoMagnetBlock1Direction global matches 1 run scoreboard players set veraVertoMagnetBlock1Direction global 0
execute if score @s pillarState matches 3 if score veraVertoMagnetBlock2Direction global matches 1 run scoreboard players set veraVertoMagnetBlock2Direction global 0
execute if score @s pillarState matches 3 if score veraVertoMagnetBlock3Direction global matches 0 run scoreboard players set veraVertoMagnetBlock3Direction global 1
execute if score @s pillarState matches 3 if score veraVertoMagnetBlock4Direction global matches 1 run scoreboard players set veraVertoMagnetBlock4Direction global 0

execute if score @s pillarState matches 4 if score veraVertoMagnetBlock1Direction global matches 1 run scoreboard players set veraVertoMagnetBlock1Direction global 0
execute if score @s pillarState matches 4 if score veraVertoMagnetBlock2Direction global matches 1 run scoreboard players set veraVertoMagnetBlock2Direction global 0
execute if score @s pillarState matches 4 if score veraVertoMagnetBlock3Direction global matches 1 run scoreboard players set veraVertoMagnetBlock3Direction global 0
execute if score @s pillarState matches 4 if score veraVertoMagnetBlock4Direction global matches 0 run scoreboard players set veraVertoMagnetBlock4Direction global 1
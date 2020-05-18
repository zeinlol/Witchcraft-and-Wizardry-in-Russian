execute as @s[scores={playerID=1}] run playsound minecraft:custom.ambient.clock_tower master @s ~ ~ ~ 2.5 1 0
execute as @s[scores={playerID=2}] run playsound minecraft:custom.ambient.clock_tower master @s ~ ~ ~ 2.5 1 0
execute as @s[scores={playerID=3}] run playsound minecraft:custom.ambient.clock_tower master @s ~ ~ ~ 2.5 1 0
execute as @s[scores={playerID=4}] run playsound minecraft:custom.ambient.clock_tower master @s ~ ~ ~ 2.5 1 0

execute as @s[scores={playerID=1}] run scoreboard players set clockTowerP1 ambientTime 12400
execute as @s[scores={playerID=2}] run scoreboard players set clockTowerP2 ambientTime 12400
execute as @s[scores={playerID=3}] run scoreboard players set clockTowerP3 ambientTime 12400
execute as @s[scores={playerID=4}] run scoreboard players set clockTowerP4 ambientTime 12400

execute as @s[tag=!playingClockTowerAmbience] run tag @s add playingClockTowerAmbience
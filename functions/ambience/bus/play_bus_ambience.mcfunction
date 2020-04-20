execute as @s[scores={playerID=1}] run playsound minecraft:custom.ambient.bus.idle master @s ~ ~ ~ 1.5 1 0
execute as @s[scores={playerID=2}] run playsound minecraft:custom.ambient.bus.idle master @s ~ ~ ~ 1.5 1 0
execute as @s[scores={playerID=3}] run playsound minecraft:custom.ambient.bus.idle master @s ~ ~ ~ 1.5 1 0
execute as @s[scores={playerID=4}] run playsound minecraft:custom.ambient.bus.idle master @s ~ ~ ~ 1.5 1 0

execute as @s[scores={playerID=1}] run scoreboard players set busP1 ambientTime 7000
execute as @s[scores={playerID=2}] run scoreboard players set busP2 ambientTime 7000
execute as @s[scores={playerID=3}] run scoreboard players set busP3 ambientTime 7000
execute as @s[scores={playerID=4}] run scoreboard players set busP4 ambientTime 7000

execute as @s[tag=!playingBusAmbience] run tag @s add playingBusAmbience
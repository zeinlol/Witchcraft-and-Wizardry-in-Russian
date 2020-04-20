execute as @s[scores={playerID=1}] run playsound minecraft:custom.ambient.diagon_alley.crowd_outside master @s ~ ~ ~ 1 1 0
execute as @s[scores={playerID=2}] run playsound minecraft:custom.ambient.diagon_alley.crowd_outside master @s ~ ~ ~ 1 1 0
execute as @s[scores={playerID=3}] run playsound minecraft:custom.ambient.diagon_alley.crowd_outside master @s ~ ~ ~ 1 1 0
execute as @s[scores={playerID=4}] run playsound minecraft:custom.ambient.diagon_alley.crowd_outside master @s ~ ~ ~ 1 1 0

execute as @s[scores={playerID=1}] run scoreboard players set crowdP1 ambientTime 20000
execute as @s[scores={playerID=2}] run scoreboard players set crowdP2 ambientTime 20000
execute as @s[scores={playerID=3}] run scoreboard players set crowdP3 ambientTime 20000
execute as @s[scores={playerID=4}] run scoreboard players set crowdP4 ambientTime 20000

execute as @s[tag=!playingCrowdAmbience] run tag @s add playingCrowdAmbience
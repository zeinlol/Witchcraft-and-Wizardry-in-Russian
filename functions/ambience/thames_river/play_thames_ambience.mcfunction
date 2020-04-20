execute as @s[scores={playerID=1}] run playsound minecraft:custom.ambient.london.thames master @s ~ ~ ~ 5 1 0
execute as @s[scores={playerID=2}] run playsound minecraft:custom.ambient.london.thames master @s ~ ~ ~ 5 1 0
execute as @s[scores={playerID=3}] run playsound minecraft:custom.ambient.london.thames master @s ~ ~ ~ 5 1 0
execute as @s[scores={playerID=4}] run playsound minecraft:custom.ambient.london.thames master @s ~ ~ ~ 5 1 0

execute as @s[scores={playerID=1}] run scoreboard players set thamesP1 ambientTime 67200
execute as @s[scores={playerID=2}] run scoreboard players set thamesP2 ambientTime 67200
execute as @s[scores={playerID=3}] run scoreboard players set thamesP3 ambientTime 67200
execute as @s[scores={playerID=4}] run scoreboard players set thamesP4 ambientTime 67200

execute as @s[tag=!playingThamesAmbience] run tag @s add playingThamesAmbience
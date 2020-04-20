execute as @s[scores={playerID=1}] run playsound minecraft:custom.ambient.nature.leaves master @s ~ ~ ~ 1.5 1 0
execute as @s[scores={playerID=2}] run playsound minecraft:custom.ambient.nature.leaves master @s ~ ~ ~ 1.5 1 0
execute as @s[scores={playerID=3}] run playsound minecraft:custom.ambient.nature.leaves master @s ~ ~ ~ 1.5 1 0
execute as @s[scores={playerID=4}] run playsound minecraft:custom.ambient.nature.leaves master @s ~ ~ ~ 1.5 1 0

execute as @s[scores={playerID=1}] run scoreboard players set leavesP1 ambientTime 15800
execute as @s[scores={playerID=2}] run scoreboard players set leavesP2 ambientTime 15800
execute as @s[scores={playerID=3}] run scoreboard players set leavesP3 ambientTime 15800
execute as @s[scores={playerID=4}] run scoreboard players set leavesP4 ambientTime 15800

execute as @s[tag=!playingLeavesAmbience] run tag @s add playingLeavesAmbience
# On Discover
execute as @s[tag=!discovered_honeydukes_passage,scores={playerID=1}] run bossbar set minecraft:player1empty name {"text":"Обнаружена секретная локация","color":"white","italic":"true"}
execute as @s[tag=!discovered_honeydukes_passage,scores={playerID=2}] run bossbar set minecraft:player2empty name {"text":"Обнаружена секретная локация","color":"white","italic":"true"}
execute as @s[tag=!discovered_honeydukes_passage,scores={playerID=3}] run bossbar set minecraft:player3empty name {"text":"Обнаружена секретная локация","color":"white","italic":"true"}
execute as @s[tag=!discovered_honeydukes_passage,scores={playerID=4}] run bossbar set minecraft:player4empty name {"text":"Обнаружена секретная локация","color":"white","italic":"true"}
execute at @s[tag=!discovered_honeydukes_passage] run playsound minecraft:custom.ui.discovery.discover_secret master @s ~ ~ ~ 10 1 1
# Unlock location if it has not been discovered
execute as @s[tag=!discovered_honeydukes_passage] run scoreboard players set @s mapLocationID 57
execute as @s[tag=!discovered_honeydukes_passage] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_honeydukes_passage] discoverLocation 80
scoreboard players set @s[tag=discovered_honeydukes_passage] discoverLocation 50
execute as @s[tag=!discovered_honeydukes_passage] run tag @s add discovered_honeydukes_passage

# Title
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1discover name {"text":"Подземелья Сладкого Королевства","color":"white","italic":"false"}
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2discover name {"text":"Подземелья Сладкого Королевства","color":"white","italic":"false"}
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3discover name {"text":"Подземелья Сладкого Королевства","color":"white","italic":"false"}
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4discover name {"text":"Подземелья Сладкого Королевства","color":"white","italic":"false"}
function hp:misc/update_bossbars

# Set location
scoreboard players set @s lastRegion 4
scoreboard players set @s lastArea 0
scoreboard players set @s lastLocation 57
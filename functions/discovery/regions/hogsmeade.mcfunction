scoreboard players set @s discoverLocation 50

# Title
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1discover name {"text":"Хогсмид","color":"white","italic":"false"}
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2discover name {"text":"Хогсмид","color":"white","italic":"false"}
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3discover name {"text":"Хогсмид","color":"white","italic":"false"}
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4discover name {"text":"Хогсмид","color":"white","italic":"false"}
function hp:misc/update_bossbars

# Set location
scoreboard players set @s lastRegion 4
scoreboard players set @s lastArea 0
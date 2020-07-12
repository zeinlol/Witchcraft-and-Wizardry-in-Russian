# On Discover
execute as @s[tag=!discovered_grand_staircase,scores={playerID=1}] run bossbar set minecraft:player1empty name {"text":"Открыта локация","color":"white","italic":"true"}
execute as @s[tag=!discovered_grand_staircase,scores={playerID=2}] run bossbar set minecraft:player2empty name {"text":"Открыта локация","color":"white","italic":"true"}
execute as @s[tag=!discovered_grand_staircase,scores={playerID=3}] run bossbar set minecraft:player3empty name {"text":"Открыта локация","color":"white","italic":"true"}
execute as @s[tag=!discovered_grand_staircase,scores={playerID=4}] run bossbar set minecraft:player4empty name {"text":"Открыта локация","color":"white","italic":"true"}
execute at @s[tag=!discovered_grand_staircase] run playsound minecraft:custom.ui.discovery.discover_location master @s ~ ~ ~ 10 1 1
# Unlock location if it has not been discovered
execute as @s[tag=!discovered_grand_staircase] run scoreboard players set @s mapLocationID 62
execute as @s[tag=!discovered_grand_staircase] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_grand_staircase] discoverLocation 80
scoreboard players set @s[tag=discovered_grand_staircase] discoverLocation 50
execute as @s[tag=!discovered_grand_staircase] run tag @s add discovered_grand_staircase

# Title
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1discover name {"text":"Лестничная башня","color":"white","italic":"false"}
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2discover name {"text":"Лестничная башня","color":"white","italic":"false"}
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3discover name {"text":"Лестничная башня","color":"white","italic":"false"}
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4discover name {"text":"Лестничная башня","color":"white","italic":"false"}
function hp:misc/update_bossbars

# Set location
scoreboard players set @s lastRegion 1
scoreboard players set @s lastArea 2
scoreboard players set @s lastLocation 62
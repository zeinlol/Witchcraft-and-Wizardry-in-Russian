# On Discover
execute as @s[tag=!discovered_entrance_gates,scores={playerID=1},tag=!inProperCutScene] run bossbar set minecraft:player1empty name {"text":"Обнаружено","color":"white","italic":"true"}
execute as @s[tag=!discovered_entrance_gates,scores={playerID=2},tag=!inProperCutScene] run bossbar set minecraft:player2empty name {"text":"Обнаружено","color":"white","italic":"true"}
execute as @s[tag=!discovered_entrance_gates,scores={playerID=3},tag=!inProperCutScene] run bossbar set minecraft:player3empty name {"text":"Обнаружено","color":"white","italic":"true"}
execute as @s[tag=!discovered_entrance_gates,scores={playerID=4},tag=!inProperCutScene] run bossbar set minecraft:player4empty name {"text":"Обнаружено","color":"white","italic":"true"}
execute at @s[tag=!discovered_entrance_gates,tag=!inProperCutScene] run playsound minecraft:custom.ui.discovery.discover_location master @s ~ ~ ~ 10 1 1
# Unlock location if it has not been discovered
execute as @s[tag=!discovered_entrance_gates,tag=!inProperCutScene] run scoreboard players set @s mapLocationID 15
execute as @s[tag=!discovered_entrance_gates,tag=!inProperCutScene] run function hp:map/unlock_location
scoreboard players set @s[tag=!discovered_entrance_gates,tag=!inProperCutScene] discoverLocation 80
scoreboard players set @s[tag=discovered_entrance_gates,tag=!inProperCutScene] discoverLocation 50
execute as @s[tag=!discovered_entrance_gates,tag=!inProperCutScene] run tag @s add discovered_entrance_gates

# Title
execute as @s[scores={playerID=1},tag=!inProperCutScene] run bossbar set minecraft:player1discover name {"text":"Входные Ворота","color":"white","italic":"false"}
execute as @s[scores={playerID=2},tag=!inProperCutScene] run bossbar set minecraft:player2discover name {"text":"Входные Ворота","color":"white","italic":"false"}
execute as @s[scores={playerID=3},tag=!inProperCutScene] run bossbar set minecraft:player3discover name {"text":"Входные Ворота","color":"white","italic":"false"}
execute as @s[scores={playerID=4},tag=!inProperCutScene] run bossbar set minecraft:player4discover name {"text":"Входные Ворота","color":"white","italic":"false"}
execute as @s[tag=!inProperCutScene] run function hp:misc/update_bossbars

# Set location
scoreboard players set @s lastRegion 1
scoreboard players set @s lastArea 1
scoreboard players set @s lastLocation 15
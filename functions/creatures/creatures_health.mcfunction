# Decay timer
scoreboard players remove @s[scores={creatureFocus=1..,veraVertoBossbar=0}] creatureFocus 1
execute as @s[scores={playerID=1,creatureFocus=1}] run bossbar set minecraft:player1enemy style progress
execute as @s[scores={playerID=2,creatureFocus=1}] run bossbar set minecraft:player2enemy style progress
execute as @s[scores={playerID=3,creatureFocus=1}] run bossbar set minecraft:player3enemy style progress
execute as @s[scores={playerID=4,creatureFocus=1}] run bossbar set minecraft:player4enemy style progress

# Bossbar
execute if entity @s[tag=!isDrowning] as @e[tag=bossBarCreatureFocus,limit=1] run function hp:creatures/creatures_health_bossbar

# Clear
execute as @s[tag=!isDrowning,scores={playerID=1}] unless entity @e[tag=bossBarCreatureFocus,tag=creature,limit=1] run bossbar set minecraft:player1enemy value 0
execute as @s[tag=!isDrowning,scores={playerID=2}] unless entity @e[tag=bossBarCreatureFocus,tag=creature,limit=1] run bossbar set minecraft:player2enemy value 0
execute as @s[tag=!isDrowning,scores={playerID=3}] unless entity @e[tag=bossBarCreatureFocus,tag=creature,limit=1] run bossbar set minecraft:player3enemy value 0
execute as @s[tag=!isDrowning,scores={playerID=4}] unless entity @e[tag=bossBarCreatureFocus,tag=creature,limit=1] run bossbar set minecraft:player4enemy value 0

# If tracked creature is dead
execute as @s[scores={creatureFocus=1}] run tag @e[tag=bossBarCreatureFocus] remove bossBarCreatureFocus
execute as @s[scores={creatureFocus=1}] run function hp:misc/update_bossbars
execute as @s[scores={creatureFocus=20..}] unless entity @e[tag=bossBarCreatureFocus] run scoreboard players set @s creatureFocus 20

# Vera Verto Blink on stunned suit of armor

execute as @s[scores={veraVertoBossbar=1..}] unless entity @e[tag=bossBarCreatureFocus,tag=creature,limit=1,tag=isStunned] run scoreboard players set @s veraVertoBossbar 10

execute as @s[scores={playerID=1,veraVertoBossbar=1..}] run bossbar set minecraft:player1enemy value 0
execute as @s[scores={playerID=2,veraVertoBossbar=1..}] run bossbar set minecraft:player2enemy value 0
execute as @s[scores={playerID=3,veraVertoBossbar=1..}] run bossbar set minecraft:player3enemy value 0
execute as @s[scores={playerID=4,veraVertoBossbar=1..}] run bossbar set minecraft:player4enemy value 0

execute as @s[scores={playerID=1,veraVertoBossbar=5}] run bossbar set minecraft:player1enemy style notched_20
execute as @s[scores={playerID=2,veraVertoBossbar=5}] run bossbar set minecraft:player2enemy style notched_20
execute as @s[scores={playerID=3,veraVertoBossbar=5}] run bossbar set minecraft:player3enemy style notched_20
execute as @s[scores={playerID=4,veraVertoBossbar=5}] run bossbar set minecraft:player4enemy style notched_20
execute as @s[scores={veraVertoBossbar=5}] run tag @s add blueVeraVertoBossBar
execute as @s[scores={playerID=1,veraVertoBossbar=10}] run bossbar set minecraft:player1enemy style progress
execute as @s[scores={playerID=2,veraVertoBossbar=10}] run bossbar set minecraft:player2enemy style progress
execute as @s[scores={playerID=3,veraVertoBossbar=10}] run bossbar set minecraft:player3enemy style progress
execute as @s[scores={playerID=4,veraVertoBossbar=10}] run bossbar set minecraft:player4enemy style progress
execute as @s[scores={veraVertoBossbar=10}] run tag @s remove blueVeraVertoBossBar
scoreboard players set @s[scores={veraVertoBossbar=10..}] veraVertoBossbar 0
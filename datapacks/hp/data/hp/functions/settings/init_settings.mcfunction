# Init
tag @s add inSettings
execute at @s run playsound minecraft:custom.ui.settings.open master @a ~ ~ ~ 1 1 0
tag @s add showBossbarHeader
function hp:misc/update_bossbars

# This could be done differently to support any number of players
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1info name {"text":"Настройки","bold":true,"color":"gray"}
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2info name {"text":"Настройки","bold":true,"color":"gray"}
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3info name {"text":"Настройки","bold":true,"color":"gray"}
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4info name {"text":"Настройки","bold":true,"color":"gray"}

execute as @s[scores={playerID=1}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initSettingsPlController","settingsPlControllerPlayer1"],CustomName:"{\"text\":\"plController\"}",UUIDMost:19,UUIDLeast:1}
execute as @s[scores={playerID=2}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initSettingsPlController","settingsPlControllerPlayer2"],CustomName:"{\"text\":\"plController\"}",UUIDMost:19,UUIDLeast:2}
execute as @s[scores={playerID=3}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initSettingsPlController","settingsPlControllerPlayer3"],CustomName:"{\"text\":\"plController\"}",UUIDMost:19,UUIDLeast:3}
execute as @s[scores={playerID=4}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initSettingsPlController","settingsPlControllerPlayer4"],CustomName:"{\"text\":\"plController\"}",UUIDMost:19,UUIDLeast:4}

# To prevent player not being able to use w and s if they stand up against a wall (more likely that being blocked backwards.) It also fixes backwards movement by glitching the player very slightly into the block, which is a fine tradeoff, and only a tiny bit janky.
execute at @s run tp @e[tag=initSettingsPlController] @s
execute as @e[tag=initSettingsPlController,limit=1] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=initSettingsPlController,limit=1] at @s run tp @s ^ ^ ^-0.01
execute as @e[tag=initSettingsPlController,limit=1] at @s rotated as @p[tag=activePlayer,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @s[x_rotation=80..90] as @e[tag=initSettingsPlController] at @s run tp @s ~ ~ ~ ~ 80
execute as @s[x_rotation=-80..-5] as @e[tag=initSettingsPlController] at @s run tp @s ~ ~ ~ ~ -5
scoreboard players set @s animTest 7
scoreboard players set @s convMaxView 0
scoreboard players set @s selectCurrent 1
scoreboard players set @s settingsScroll 0
scoreboard players set @s convState 0
tag @s add preventPunching
tag @s remove invInspectItem
# tp @s @e[tag=initSettingsPlController,limit=1]
tag @e[tag=initSettingsPlController] remove initSettingsPlController
tag @s add delaySettingsOneTick
tag @s remove enterSettings
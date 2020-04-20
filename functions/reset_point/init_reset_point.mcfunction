tag @s add playerIsInvisible
effect give @s minecraft:invisibility 999999 1 true

execute as @s[tag=inConversation] run function hp:conversation/exit_conversation
execute as @s[tag=inInventory] run function hp:inventory/exit_inventory
execute as @s[tag=inMap] run function hp:map/exit_map
execute as @s[tag=inSettings] run function hp:settings/exit_settings
execute as @s[tag=inQuestBook] run function hp:quests/exit_questbook
execute as @s[tag=inBrewer] run function hp:potion_brewing/exit_brewer
execute as @s[tag=inPensive] run function hp:pensive/exit_pensive
execute as @s[tag=inLetter] run function hp:misc/read_hogwarts_letter/exit_read_hogwarts_letter
execute as @s[tag=inWingardium] run tag @s add wingardiumExit
execute as @s[tag=inAppiration] run tag @s add exitApparition

tag @s add inResetPoint
scoreboard players set @s resetPointTimer 0

execute as @s[scores={playerID=1}] run bossbar set minecraft:player1info name {"text":" ","bold":true,"color":"gold"}
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2info name {"text":" ","bold":true,"color":"gold"}
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3info name {"text":" ","bold":true,"color":"gold"}
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4info name {"text":" ","bold":true,"color":"gold"}
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1empty name {"text":" ","bold":true,"color":"gold"}
execute as @s[scores={playerID=2}] run bossbar set minecraft:player1empty name {"text":" ","bold":true,"color":"gold"}
execute as @s[scores={playerID=3}] run bossbar set minecraft:player1empty name {"text":" ","bold":true,"color":"gold"}
execute as @s[scores={playerID=4}] run bossbar set minecraft:player1empty name {"text":" ","bold":true,"color":"gold"}
tag @s add showBossbarHeader
execute as @s run function hp:misc/update_bossbars
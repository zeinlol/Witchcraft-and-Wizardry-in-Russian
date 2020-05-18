# Make player spectator

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

clear @s
gamemode creative
title @s clear
tag @s remove inGame
tag @s remove play
tag @s[scores={playerID=1}] add specatePlayer1
tag @s[scores={playerID=2}] add specatePlayer2
tag @s[scores={playerID=3}] add specatePlayer3
tag @s[scores={playerID=4}] add specatePlayer4

# To make magic section in book work
execute if score dumbledoreStairDirection global matches 1 run scoreboard players set dumbledoreStairDirectionOpposite global 0
execute if score dumbledoreStairDirection global matches 0 run scoreboard players set dumbledoreStairDirectionOpposite global 1

scoreboard players set @s playerID 0
tag @s remove spectateFromSettings

tag @s add spectate
tag @s add exploreMode
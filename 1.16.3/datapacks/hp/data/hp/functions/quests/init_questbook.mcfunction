# This function holds commands that initialize the inventory system.

# Init
tag @s add inQuestBook
playsound minecraft:custom.ui.book.open master @a ~ ~ ~ 1 1

execute as @s[scores={playerID=1}] run bossbar set minecraft:player1info name {"text":"Квесты","bold":true,"color":"gray"}
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2info name {"text":"Квесты","bold":true,"color":"gray"}
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3info name {"text":"Квесты","bold":true,"color":"gray"}
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4info name {"text":"Квесты","bold":true,"color":"gray"}
tag @s add showBossbarHeader
function hp:misc/update_bossbars

# This could be done differently to support any number of players
execute as @s[scores={playerID=1}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initQuestPlController","questPlControllerPlayer1"],CustomName:"{\"text\":\"plController\"}",UUID:[I;0,13,0,1]}
execute as @s[scores={playerID=2}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initQuestPlController","questPlControllerPlayer2"],CustomName:"{\"text\":\"plController\"}",UUID:[I;0,13,0,2]}
execute as @s[scores={playerID=3}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initQuestPlController","questPlControllerPlayer3"],CustomName:"{\"text\":\"plController\"}",UUID:[I;0,13,0,3]}
execute as @s[scores={playerID=4}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initQuestPlController","questPlControllerPlayer4"],CustomName:"{\"text\":\"plController\"}",UUID:[I;0,13,0,4]}

# To prevent player not being able to use w and s if they stand up against a wall (more likely that being blocked backwards.) It also fixes backwards movement by glitching the player very slightly into the block, which is a fine tradeoff, and only a tiny bit janky.
execute at @s run tp @e[type=armor_stand,tag=initQuestPlController,limit=1] @s
execute as @e[type=armor_stand,tag=initQuestPlController,limit=1] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[type=armor_stand,tag=initQuestPlController,limit=1] at @s run tp @s ^ ^ ^-0.01
execute as @e[type=armor_stand,tag=initQuestPlController,limit=1] at @s rotated as @p[tag=activePlayer,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @s[x_rotation=80..90] as @e[type=armor_stand,tag=initQuestPlController,limit=1] at @s run tp @s ~ ~ ~ ~ 80
execute as @s[x_rotation=-80..-5] as @e[type=armor_stand,tag=initQuestPlController,limit=1] at @s run tp @s ~ ~ ~ ~ -5


scoreboard players set @s animTest 7
scoreboard players set @s selectQuestID -1
scoreboard players set @s convMaxView 0
scoreboard players set @s selectCurrent 1
scoreboard players set @s InvScroll 0
tag @s add preventPunching
scoreboard players reset 0-0-1-0-1 QuestID
scoreboard players reset 0-0-1-0-2 QuestID
scoreboard players reset 0-0-1-0-3 QuestID
scoreboard players reset 0-0-1-0-4 QuestID
scoreboard players reset 0-0-1-0-5 QuestID
scoreboard players reset 0-0-1-0-6 QuestID
tag @e[type=armor_stand,tag=initQuestPlController,limit=1] remove initQuestPlController
tag @s add delayQuestBookOneTick
tag @s remove enterQuestBook

# Reminder tip for Охота за Жабой
tag @s remove remindQuestBook
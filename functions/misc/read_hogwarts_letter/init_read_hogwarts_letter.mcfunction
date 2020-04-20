


# Init
execute at @s run playsound minecraft:custom.ui.book.open master @a ~ ~ ~ 1 1

execute as @s[scores={playerID=1}] run bossbar set minecraft:player1info name {"text":" ","bold":true,"color":"gray"}
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2info name {"text":" ","bold":true,"color":"gray"}
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3info name {"text":" ","bold":true,"color":"gray"}
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4info name {"text":" ","bold":true,"color":"gray"}
tag @s add showBossbarHeader
function hp:misc/update_bossbars

tag @s add preventPunching

execute as @s[scores={playerID=1}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initLetterPlController","letterPlControllerPlayer1"],CustomName:"{\"text\":\"plController\"}"}
execute as @s[scores={playerID=2}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initLetterPlController","letterPlControllerPlayer2"],CustomName:"{\"text\":\"plController\"}"}
execute as @s[scores={playerID=3}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initLetterPlController","letterPlControllerPlayer3"],CustomName:"{\"text\":\"plController\"}"}
execute as @s[scores={playerID=4}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initLetterPlController","letterPlControllerPlayer4"],CustomName:"{\"text\":\"plController\"}"}
tp @e[tag=initLetterPlController] @s
execute at @s run tp @e[tag=initLetterPlController,x_rotation=80..90] ~ ~ ~ ~ 80	
execute at @s run tp @e[tag=initLetterPlController,x_rotation=-90..-5] ~ ~ ~ ~ -5

scoreboard players set @s animTest 10
scoreboard players set @s selectSecondary 100
tag @e[tag=initLetterPlController] remove initLetterPlController
tag @s add inLetter
tag @s remove enterLetter
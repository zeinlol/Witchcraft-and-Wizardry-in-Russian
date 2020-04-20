# Init
execute as @s run tag @s add inPensive
execute as @s run playsound minecraft:custom.ui.learn.potion_brewed master @a ~ ~ ~ 2 2
tag @s add showBossbarHeader
function hp:misc/update_bossbars

# Oops it's spelled Pensieve
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1info name {"text":"Pensieve","bold":true,"color":"gray"}
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2info name {"text":"Pensieve","bold":true,"color":"gray"}
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3info name {"text":"Pensieve","bold":true,"color":"gray"}
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4info name {"text":"Pensieve","bold":true,"color":"gray"}

tag @e[tag=inventory] remove inventory
execute as @s[scores={playerID=1}] run tag @e[tag=player1Inventory] add inventory
execute as @s[scores={playerID=2}] run tag @e[tag=player2Inventory] add inventory
execute as @s[scores={playerID=3}] run tag @e[tag=player3Inventory] add inventory
execute as @s[scores={playerID=4}] run tag @e[tag=player4Inventory] add inventory

# Summon
execute as @s[scores={playerID=1}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initPensivePlController","pensivePlControllerPlayer1"],CustomName:"{\"text\":\"plController\"}",UUIDMost:17,UUIDLeast:1}
execute as @s[scores={playerID=2}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initPensivePlController","pensivePlControllerPlayer2"],CustomName:"{\"text\":\"plController\"}",UUIDMost:17,UUIDLeast:2}
execute as @s[scores={playerID=3}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initPensivePlController","pensivePlControllerPlayer3"],CustomName:"{\"text\":\"plController\"}",UUIDMost:17,UUIDLeast:3}
execute as @s[scores={playerID=4}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initPensivePlController","pensivePlControllerPlayer4"],CustomName:"{\"text\":\"plController\"}",UUIDMost:17,UUIDLeast:4}



execute at @s run tp @e[tag=initPensivePlController] @s
execute at @s run tp @e[tag=initPensivePlController,x_rotation=80..90] ~ ~ ~ ~ 80
execute at @s run tp @e[tag=initPensivePlController,x_rotation=-90..-5] ~ ~ ~ ~ -5
scoreboard players set @s animTest 7
scoreboard players set @s InvSelectItemID -1
scoreboard players set @s convMaxView 0
scoreboard players set @s selectCurrent 1
scoreboard players set @s InvScroll 0
tag @s add preventPunching
scoreboard players reset @e[tag=inventoryOption] InvItemCount
tp @s @e[tag=initPensivePlController,limit=1]
tag @e[tag=initPensivePlController] remove initPensivePlController

tag @s remove enterPensive
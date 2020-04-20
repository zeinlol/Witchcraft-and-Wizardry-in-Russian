# Init
execute as @s run tag @s add inBrewer
execute as @s run playsound minecraft:custom.ui.inventory.interaction.open_inventory master @a ~ ~ ~ 1 1

tag @s add showBossbarHeader
function hp:misc/update_bossbars

execute as @s[scores={playerID=1}] run bossbar set minecraft:player1info name {"text":"Cauldron","bold":true,"color":"gray"}
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2info name {"text":"Cauldron","bold":true,"color":"gray"}
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3info name {"text":"Cauldron","bold":true,"color":"gray"}
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4info name {"text":"Cauldron","bold":true,"color":"gray"}

tag @e[tag=inventory] remove inventory
execute as @s[scores={playerID=1}] run tag @e[tag=player1Inventory] add inventory
execute as @s[scores={playerID=2}] run tag @e[tag=player2Inventory] add inventory
execute as @s[scores={playerID=3}] run tag @e[tag=player3Inventory] add inventory
execute as @s[scores={playerID=4}] run tag @e[tag=player4Inventory] add inventory

execute as @s[scores={playerID=1}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initbrewerPlController","brewerPlControllerPlayer1"],CustomName:"{\"text\":\"plController\"}",UUIDMost:19,UUIDLeast:1}
execute as @s[scores={playerID=2}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initbrewerPlController","brewerPlControllerPlayer2"],CustomName:"{\"text\":\"plController\"}",UUIDMost:19,UUIDLeast:2}
execute as @s[scores={playerID=3}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initbrewerPlController","brewerPlControllerPlayer3"],CustomName:"{\"text\":\"plController\"}",UUIDMost:19,UUIDLeast:3}
execute as @s[scores={playerID=4}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initbrewerPlController","brewerPlControllerPlayer4"],CustomName:"{\"text\":\"plController\"}",UUIDMost:19,UUIDLeast:4}


execute at @s run tp @e[tag=initbrewerPlController] @s
execute at @s run tp @e[tag=initbrewerPlController,x_rotation=80..90] ~ ~ ~ ~ 80
execute at @s run tp @e[tag=initbrewerPlController,x_rotation=-90..-5] ~ ~ ~ ~ -5
scoreboard players set @s animTest 7
scoreboard players set @s InvSelectItemID -1
scoreboard players set @s convMaxView 0
scoreboard players set @s selectCurrent 1
scoreboard players set @s InvScroll 0
tag @s add preventPunching
scoreboard players reset @e[tag=inventoryOption] InvItemCount
tp @s @e[tag=initbrewerPlController,limit=1]
tag @e[tag=initbrewerPlController] remove initbrewerPlController

tag @s remove enterBrewer
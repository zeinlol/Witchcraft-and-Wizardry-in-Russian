# This function holds commands that initialize the inventory system.

# Init
tag @s add inInventory
execute at @s[tag=!isContainer] run playsound minecraft:custom.ui.inventory.interaction.open_inventory master @a ~ ~ ~ 1 1
execute as @s[tag=!isContainer,tag=!editAddItems,tag=!editRemoveItems] as @e[tag=inventory] run tag @s remove inventory
execute as @s[tag=!isContainer,tag=!editAddItems,tag=!editRemoveItems,scores={playerID=1}] run tag 0-0-5-0-1 add inventory
execute as @s[tag=!isContainer,tag=!editAddItems,tag=!editRemoveItems,scores={playerID=2}] run tag 0-0-5-0-2 add inventory
execute as @s[tag=!isContainer,tag=!editAddItems,tag=!editRemoveItems,scores={playerID=3}] run tag 0-0-5-0-3 add inventory
execute as @s[tag=!isContainer,tag=!editAddItems,tag=!editRemoveItems,scores={playerID=4}] run tag 0-0-5-0-4 add inventory

execute as @s[tag=!buy,tag=!sell] run tag @s add showBossbarHeader
execute as @s[tag=!buy,tag=!sell] run function hp:misc/update_bossbars
# This could probably be done differently to support any number of players
execute as @s[tag=!isContainer,tag=!buy,tag=!sell,scores={playerID=1}] run bossbar set minecraft:player1info name {"text":"Инвентарь","bold":true,"color":"gray"}
execute as @s[tag=!isContainer,tag=!buy,tag=!sell,scores={playerID=2}] run bossbar set minecraft:player2info name {"text":"Инвентарь","bold":true,"color":"gray"}
execute as @s[tag=!isContainer,tag=!buy,tag=!sell,scores={playerID=3}] run bossbar set minecraft:player3info name {"text":"Инвентарь","bold":true,"color":"gray"}
execute as @s[tag=!isContainer,tag=!buy,tag=!sell,scores={playerID=4}] run bossbar set minecraft:player4info name {"text":"Инвентарь","bold":true,"color":"gray"}
execute as @s[tag=isContainer,tag=!buy,tag=!sell,scores={playerID=1}] run bossbar set minecraft:player1info name {"text":"Контейнер","bold":true,"color":"gray"}
execute as @s[tag=isContainer,tag=!buy,tag=!sell,scores={playerID=2}] run bossbar set minecraft:player2info name {"text":"Контейнер","bold":true,"color":"gray"}
execute as @s[tag=isContainer,tag=!buy,tag=!sell,scores={playerID=3}] run bossbar set minecraft:player3info name {"text":"Контейнер","bold":true,"color":"gray"}
execute as @s[tag=isContainer,tag=!buy,tag=!sell,scores={playerID=4}] run bossbar set minecraft:player4info name {"text":"Контейнер","bold":true,"color":"gray"}
execute as @s[scores={playerID=1}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initInvPlController","invPlControllerPlayer1"],CustomName:"{\"text\":\"plController\"}",UUIDMost:12,UUIDLeast:1}
execute as @s[scores={playerID=2}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initInvPlController","invPlControllerPlayer2"],CustomName:"{\"text\":\"plController\"}",UUIDMost:12,UUIDLeast:2}
execute as @s[scores={playerID=3}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initInvPlController","invPlControllerPlayer3"],CustomName:"{\"text\":\"plController\"}",UUIDMost:12,UUIDLeast:3}
execute as @s[scores={playerID=4}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initInvPlController","invPlControllerPlayer4"],CustomName:"{\"text\":\"plController\"}",UUIDMost:12,UUIDLeast:4}

# To prevent player not being able to use w and s if they stand up against a wall (more likely that being blocked backwards.) It also fixes backwards movement by glitching the player very slightly into the block, which is a fine tradeoff, and only a tiny bit janky.
execute at @s run tp @e[tag=initInvPlController] @s
execute as @e[tag=initInvPlController,limit=1] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=initInvPlController,limit=1] at @s run tp @s ^ ^ ^-0.01
execute as @e[tag=initInvPlController,limit=1] at @s rotated as @p[tag=activePlayer,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @s[x_rotation=80..90] as @e[tag=initInvPlController] at @s run tp @s ~ ~ ~ ~ 80
execute as @s[x_rotation=-80..-5] as @e[tag=initInvPlController] at @s run tp @s ~ ~ ~ ~ -5
function hp:animation/clear_all_animations
tag @s add preventPunching
scoreboard players set @s animTest 7
scoreboard players set @s InvSelectItemID -1
scoreboard players set @s convMaxView 0
scoreboard players set @s selectCurrent 1
scoreboard players set @s InvScroll 0

scoreboard players reset @e[tag=inventoryOption] InvItemCount
tp @s @e[tag=initInvPlController,limit=1]
tag @e[tag=initInvPlController] remove initInvPlController
tag @s add delayInventoryOneTick
tag @s add preventDoubleExecution
tag @s remove enterInventory
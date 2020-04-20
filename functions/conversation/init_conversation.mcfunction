# Init
tag @s add inConversation
# tag @s add enteredConversationThisTick
scoreboard players set @s delayConvTellraw 3
scoreboard players set @s convState 0

# Prevent any funkiness if there's somehow two player look controllers
kill @e[tag=convPlController]

# Summon
execute as @s[scores={playerID=1}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initConvPlController","convPlControllerPlayer1"],CustomName:"{\"text\":\"plController\"}",UUIDMost:14,UUIDLeast:1}
execute as @s[scores={playerID=2}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initConvPlController","convPlControllerPlayer2"],CustomName:"{\"text\":\"plController\"}",UUIDMost:14,UUIDLeast:2}
execute as @s[scores={playerID=3}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initConvPlController","convPlControllerPlayer3"],CustomName:"{\"text\":\"plController\"}",UUIDMost:14,UUIDLeast:3}
execute as @s[scores={playerID=4}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["initConvPlController","convPlControllerPlayer4"],CustomName:"{\"text\":\"plController\"}",UUIDMost:14,UUIDLeast:4}

# To prevent player not being able to use w and s if they stand up against a wall (more likely that being blocked backwards.) It also fixes backwards movement by glitching the player very slightly into the block, which is a fine tradeoff, and only a tiny bit janky.
execute at @s run tp @e[tag=initConvPlController] @s
execute as @e[tag=initConvPlController] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=initConvPlController] at @s run tp @s ^ ^ ^-0.01
execute as @e[tag=startConversationNPC,limit=1] run function hp:conversation/init_conv_npc
scoreboard players operation @s conv = @e[tag=startConversationNPC,limit=1] conv

execute unless score @e[tag=startConversationNPC,limit=1] convOverride matches 0 run scoreboard players operation @s convState = @e[tag=startConversationNPC,limit=1] convOverride
execute unless score @e[tag=startConversationNPC,limit=1] convOverride matches 0 run scoreboard players operation @s oldConvState = @e[tag=startConversationNPC,limit=1] convOverride

execute as @e[tag=initConvPlController] at @s anchored eyes run teleport @s ~ ~ ~ facing entity @e[limit=1,tag=startConversationNPC,tag=!hagrid] eyes
# If hagrid (head is other entity)
execute as @e[limit=1,tag=startConversationNPC,tag=hagrid] at @s run tag @e[tag=hagridLayer3,limit=1,sort=nearest] add hagridLookTarget
execute at @s as @e[tag=hagridLookTarget,limit=1,sort=nearest] at @s run tp @s ~ ~0.55 ~
execute if entity @e[limit=1,tag=startConversationNPC,tag=hagrid] at @s anchored eyes run teleport @e[tag=initConvPlController] ~ ~ ~ facing entity @e[limit=1,tag=hagridLookTarget] eyes
execute at @s as @e[tag=hagridLookTarget,limit=1,sort=nearest] at @s run tp @s ~ ~-0.55 ~
tag @e[tag=hagridLookTarget] remove hagridLookTarget
# If Riddle Door
execute as @e[limit=1,tag=startConversationNPC,tag=riddleLockedDoor] at @s run tp @s ~ ~1.5 ~
execute if entity @e[limit=1,tag=startConversationNPC,tag=riddleLockedDoor] at @s anchored eyes run teleport @e[tag=initConvPlController] ~ ~ ~ facing entity @e[limit=1,tag=startConversationNPC] eyes
execute as @e[limit=1,tag=startConversationNPC,tag=riddleLockedDoor] at @s run tp @s ~ ~-1.5 ~

# If Armor Suit
execute as @e[limit=1,tag=startConversationNPC,tag=suitOfArmor] at @s run tp @s ~ ~0.3 ~
execute if entity @e[limit=1,tag=startConversationNPC,tag=suitOfArmor] at @s anchored eyes run teleport @e[tag=initConvPlController] ~ ~ ~ facing entity @e[limit=1,tag=startConversationNPC] eyes
execute as @e[limit=1,tag=startConversationNPC,tag=suitOfArmor] at @s run tp @s ~ ~-0.3 ~

# Clue
execute as @e[limit=1,tag=startConversationNPC,tag=clue] at @s run tp @s ~ ~0.2 ~
execute if entity @e[limit=1,tag=startConversationNPC,tag=clue] at @s anchored eyes run teleport @e[tag=initConvPlController] ~ ~ ~ facing entity @e[limit=1,tag=startConversationNPC] eyes
execute as @e[limit=1,tag=startConversationNPC,tag=clue] at @s run tp @s ~ ~-0.2 ~

execute as @e[tag=startConversationNPC,tag=!fpActor,tag=!sortingHat,tag=!clue,tag=!scroll,tag=!suitOfArmor,tag=!riddleLockedDoor] run tag @s add npcLookAtPlayer
execute as @e[tag=startConversationNPC,tag=fpActor] as @e[tag=fpEngine] if score @s fpNPCID = @e[tag=startConversationNPC,limit=1] fpNPCID run tag @s add interrupt
# execute at @e[limit=1,tag=startConversationNPC] anchored eyes run teleport @e[limit=1,tag=startConversationNPC] ~ ~ ~ facing entity @s eyes
scoreboard players set @s convMaxView 0
scoreboard players set @s selectCurrent 1
scoreboard players set @s convScroll 0

# Remove pickup title
scoreboard players set @s pickUpTimer 0


# Not sure why - havent really debugged it - but no text shows up when an animation is running. I made this function to clear all animations.
scoreboard players set @s animTest 0
tag @s add preventPunching
function hp:animation/clear_all_animations


tag @s remove confirmConvOption
tp @s @e[tag=initConvPlController,limit=1]
tag @e[tag=initConvPlController] remove initConvPlController


# Header
tag @s add showBossbarHeader
function hp:misc/update_bossbars

# Can't think of a clever way to do this, so i'm just running it for each of the active players ¯\_(ツ)_/¯ 

# Get rid of discover bossbar
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1info name {"text":" ","bold":true,"color":"gold"}
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2info name {"text":" ","bold":true,"color":"gold"}
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3info name {"text":" ","bold":true,"color":"gold"}
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4info name {"text":" ","bold":true,"color":"gold"}
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1empty name {"text":" ","bold":true,"color":"gold"}
execute as @s[scores={playerID=2}] run bossbar set minecraft:player1empty name {"text":" ","bold":true,"color":"gold"}
execute as @s[scores={playerID=3}] run bossbar set minecraft:player1empty name {"text":" ","bold":true,"color":"gold"}
execute as @s[scores={playerID=4}] run bossbar set minecraft:player1empty name {"text":" ","bold":true,"color":"gold"}

function hp:conversation/set_conversation_npc_name

tag @s add preventDoubleExecution
tag @s remove startConversation
tag @e[tag=startConversationNPC] remove startConversationNPC
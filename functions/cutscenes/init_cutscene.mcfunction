tag @s[tag=!doNotAffectPlayer] add inProperCutScene

tag @s[tag=!doNotAffectPlayer] add playerIsInvisible
effect give @s[tag=!doNotAffectPlayer] minecraft:invisibility 999999 1 true

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
tag @s add inCutScene
scoreboard players set @s cutSceneTimer 0

# You lazy fraud
scoreboard players set @s[scores={cutSceneID=4}] cutSceneTimer -600
scoreboard players set @s[scores={cutSceneID=9}] cutSceneTimer -20
scoreboard players set @s[scores={cutSceneID=10}] cutSceneTimer -20
scoreboard players set @s[scores={cutSceneID=13}] cutSceneTimer -20
scoreboard players set @s[scores={cutSceneID=15}] cutSceneTimer -20
scoreboard players set @s[scores={cutSceneID=17}] cutSceneTimer -20
scoreboard players set @s[scores={cutSceneID=21}] cutSceneTimer -20
scoreboard players set @s[scores={cutSceneID=23}] cutSceneTimer -20
scoreboard players set @s[scores={cutSceneID=42}] cutSceneTimer -20
scoreboard players set @s[scores={cutSceneID=2}] cutSceneTimer -20
scoreboard players set @s[scores={cutSceneID=47}] cutSceneTimer -150

execute as @s[tag=!doNotAffectPlayer,scores={playerID=1}] run bossbar set minecraft:player1info name {"text":" ","bold":true,"color":"gold"}
execute as @s[tag=!doNotAffectPlayer,scores={playerID=2}] run bossbar set minecraft:player2info name {"text":" ","bold":true,"color":"gold"}
execute as @s[tag=!doNotAffectPlayer,scores={playerID=3}] run bossbar set minecraft:player3info name {"text":" ","bold":true,"color":"gold"}
execute as @s[tag=!doNotAffectPlayer,scores={playerID=4}] run bossbar set minecraft:player4info name {"text":" ","bold":true,"color":"gold"}
execute as @s[tag=!doNotAffectPlayer,scores={playerID=1}] run bossbar set minecraft:player1empty name {"text":" ","bold":true,"color":"gold"}
execute as @s[tag=!doNotAffectPlayer,scores={playerID=2}] run bossbar set minecraft:player1empty name {"text":" ","bold":true,"color":"gold"}
execute as @s[tag=!doNotAffectPlayer,scores={playerID=3}] run bossbar set minecraft:player1empty name {"text":" ","bold":true,"color":"gold"}
execute as @s[tag=!doNotAffectPlayer,scores={playerID=4}] run bossbar set minecraft:player1empty name {"text":" ","bold":true,"color":"gold"}
tag @s[tag=!doNotAffectPlayer] add showBossbarHeader
execute as @s[tag=!doNotAffectPlayer] run function hp:misc/update_bossbars


# The starting location will be unloaded if the cutscene ends far enough away from the players starting position. So instead of having an entity present at all 
# times I store the position in a scoreboard, instantiate a new Armor Stand at the end of the cutscene, write the saved starting position from the scoreboard to
# nbt and teleport the player to this new entity.

# Store the position to scoreboard
execute store result score @s posX run data get entity @s Pos[0] 100000
execute store result score @s posY run data get entity @s Pos[1] 100000
execute store result score @s posZ run data get entity @s Pos[2] 100000
execute store result score @s rotY run data get entity @s Rotation[0] 1
execute store result score @s rotX run data get entity @s Rotation[1] 1

# Override reset_point
execute as @s[tag=inResetPoint] run function hp:reset_point/exit_reset_point


# tag @s remove playerIsCutsceneSlave
tag @s remove doNotAffectPlayer
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
effect clear @s minecraft:slowness
effect clear @s minecraft:levitation
tag @s remove isLevitating
execute as @s[scores={playerID=1}] run kill @e[tag=convPlControllerPlayer1]
execute as @s[scores={playerID=2}] run kill @e[tag=convPlControllerPlayer2]
execute as @s[scores={playerID=3}] run kill @e[tag=convPlControllerPlayer3]
execute as @s[scores={playerID=4}] run kill @e[tag=convPlControllerPlayer4]
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1info name {"text":" "}
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2info name {"text":" "}
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3info name {"text":" "}
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4info name {"text":" "}
execute as @e[tag=inConversationNPC] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run tag @s remove noHover
execute as @e[tag=inConversationNPC] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run tag @s remove inConversationNPC
execute as @e[tag=inConversationEngine] at @s if score @s playerID = @p[tag=activePlayer,limit=1] playerID run tag @s remove inConversationEngine
tag @s add softExitConv
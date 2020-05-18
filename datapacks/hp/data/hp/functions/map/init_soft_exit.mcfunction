tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
effect clear @s minecraft:slowness
effect clear @s minecraft:levitation
tag @s remove isLevitating
effect clear @s minecraft:night_vision
execute as @s[scores={playerID=1}] run kill 0-0-a-0-1
execute as @s[scores={playerID=2}] run kill 0-0-a-0-2
execute as @s[scores={playerID=3}] run kill 0-0-a-0-3
execute as @s[scores={playerID=4}] run kill 0-0-a-0-4

execute at @s run playsound minecraft:custom.ui.inventory.interaction.close_inventory master @a ~ ~ ~ 1 1
execute as @s[scores={playerID=1}] run bossbar set minecraft:player1info name {"text":" "}
execute as @s[scores={playerID=2}] run bossbar set minecraft:player2info name {"text":" "}
execute as @s[scores={playerID=3}] run bossbar set minecraft:player3info name {"text":" "}
execute as @s[scores={playerID=4}] run bossbar set minecraft:player4info name {"text":" "}
tag @s add showBossbarHeader
function hp:misc/update_bossbars
tag @s add softExitMap
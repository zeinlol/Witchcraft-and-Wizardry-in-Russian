execute as @s[scores={resetPointTimer=1}] run tag @s add fastFade
execute as @s[scores={resetPointTimer=1}] run function hp:reset_point/fade_in


execute as @s[scores={resetPointTimer=14}] run scoreboard players operation @s broomID = global broomID
execute as @s[scores={resetPointTimer=14}] run scoreboard players add global broomID 1
execute as @s[scores={resetPointTimer=15}] run tag @s add testDistance
execute as @s[scores={resetPointTimer=15}] run function hp:barrier/barrier_reset
execute as @s[scores={resetPointTimer=15}] run tag @s add tpToRespawnPoint
execute as @s[scores={resetPointTimer=15}] run function hp:barrier/barrier_reset

execute as @s[scores={resetPointTimer=30}] run function hp:reset_point/fade_out
execute as @s[scores={resetPointTimer=40}] run tag @s remove fastFade
execute as @s[scores={resetPointTimer=40}] run function hp:reset_point/exit_reset_point
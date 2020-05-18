# For multiplayer if the cutscene is already running for another player Simply TP the player inside with no animation

execute as @s[scores={cutSceneTimer=1}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=1}] run tag @s remove cutsceneZoom

execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=50}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=22}] run tp @s[scores={playerID=1}] 2458.89 62.00 -230.67 -179.44 -0.07
execute as @s[scores={cutSceneTimer=22}] run tp @s[scores={playerID=2}] 2458.01 62.00 -230.48 -175.04 0.42
execute as @s[scores={cutSceneTimer=22}] run tp @s[scores={playerID=3}] 2459.51 62.00 -231.79 -181.55 0.85
execute as @s[scores={cutSceneTimer=22}] run tp @s[scores={playerID=4}] 2458.49 62.00 -232.72 -177.97 1.67
execute as @s[scores={cutSceneTimer=70}] run function hp:cutscenes/exit_cutscene
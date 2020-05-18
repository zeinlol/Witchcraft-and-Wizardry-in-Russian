# For multiplayer if the cutscene is already running for another player Simply TP the player inside with no animation

execute as @s[scores={cutSceneTimer=1}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=1}] run tag @s remove cutsceneZoom

execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=50}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=22}] run tp @s 2458.46 62.00 -222.06 719.86 3.34
execute as @s[scores={cutSceneTimer=70}] run function hp:cutscenes/exit_cutscene

title @s actionbar ""
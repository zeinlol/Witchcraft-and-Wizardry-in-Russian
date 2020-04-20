execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in

execute as @s run title @s actionbar ""

execute as @s[scores={cutSceneTimer=20,playerID=1}] run tp @s 702.88 62.00 72.91 271.12 3.10
execute as @s[scores={cutSceneTimer=20,playerID=2}] run tp @s 700.51 62.00 72.95 266.89 -5.32
execute as @s[scores={cutSceneTimer=20,playerID=3}] run tp @s 698.79 62.00 72.99 266.89 -5.32
execute as @s[scores={cutSceneTimer=20,playerID=4}] run tp @s 696.43 62.00 72.95 268.35 -5.04
execute as @s[scores={cutSceneTimer=50}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=70}] run function hp:cutscenes/exit_cutscene
execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in

execute as @s run title @s actionbar ""

execute as @s[scores={cutSceneTimer=20,playerID=1}] run tp @s 6001.42 50.00 1002.96 -1298.26 -6.05
execute as @s[scores={cutSceneTimer=20,playerID=2}] run tp @s 6002.56 50.00 1001.98 -1303.03 -7.14
execute as @s[scores={cutSceneTimer=20,playerID=3}] run tp @s 6003.44 50.00 1001.04 -1310.75 -7.62
execute as @s[scores={cutSceneTimer=20,playerID=4}] run tp @s 6004.31 50.00 999.81 -1315.47 -7.03
execute as @s[scores={cutSceneTimer=50}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=70}] run function hp:cutscenes/exit_cutscene
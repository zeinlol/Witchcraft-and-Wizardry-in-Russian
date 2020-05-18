execute as @s[scores={cutSceneTimer=1}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=1}] run tag @s remove cutsceneZoom

execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=50}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=22}] run tp @s -98.63 5.00 234.36 -90.14 -0.16
execute as @s[scores={cutSceneTimer=70}] run function hp:cutscenes/exit_cutscene

title @s actionbar ""
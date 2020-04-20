execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=1}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=1}] run tag @s add doNotPlayBusAmbience
execute as @s[scores={cutSceneTimer=1}] run stopsound @s master minecraft:custom.ambient.bus.idle
execute as @s[scores={cutSceneTimer=1}] at @s run playsound minecraft:custom.ambient.bus.bus_depart_and_arrival master @s ~ ~ ~ 10000000 1 1


execute as @s[scores={cutSceneTimer=21}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=21}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=21}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=21}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=21..95}] run tp @s 2331.72 75.12 -790.98 314.93 26.14


execute as @s[scores={cutSceneTimer=75}] run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=85}] run title @s times 15 35 15
execute as @s[scores={cutSceneTimer=85}] run title @s subtitle ["",{"text":"Дырявый Котёл","bold":true,"color":"gold"}]
execute as @s[scores={cutSceneTimer=85}] run title @s title {"text":"Путешествие в","color":"gray"}
execute as @s[scores={cutSceneTimer=96..250}] run tp @s 2860.32 66.34 732.19 -47.26 27.5

execute as @s[scores={cutSceneTimer=180}] run function hp:cutscenes/fade_out

execute as @s[scores={cutSceneTimer=240}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=261}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=261}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=261}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=261}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=261,playerID=1}] run tp @s 2881.73 55.00 747.58 -209.33 3.91
execute as @s[scores={cutSceneTimer=261,playerID=2}] run tp @s 2880.19 55.00 749.01 -197.98 4.34
execute as @s[scores={cutSceneTimer=261,playerID=3}] run tp @s 2877.73 55.00 749.94 -167.31 3.42
execute as @s[scores={cutSceneTimer=261,playerID=4}] run tp @s 2875.10 55.00 748.15 -123.60 3.20
execute as @s[scores={cutSceneTimer=262}] run tag @s remove doNotPlayBusAmbience
execute as @s[scores={cutSceneTimer=262}] run tag @s add notPlayingBusAmbience
execute as @s[scores={cutSceneTimer=262}] run tag @s add dontExitCutSceneSilent
execute as @s[scores={cutSceneTimer=282}] run function hp:cutscenes/exit_cutscene

# Clear subtitles instantly rather than a slow fade I can't control
title @s actionbar ["",{"text":" "}]
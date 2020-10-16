execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=1}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=1}] run tag @s add doNotPlayBusAmbience
execute as @s[scores={cutSceneTimer=1}] run stopsound @s master minecraft:custom.ambient.bus.idle
execute as @s[scores={cutSceneTimer=1}] at @s run playsound minecraft:custom.ambient.bus.bus_depart_and_arrival master @s ~ ~ ~ 10000000 1 1


execute as @s[scores={cutSceneTimer=21}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=21}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=21}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=21}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=21..95}] run tp @s 6832.40 47.97 3106.60 236.26 34.40


execute as @s[scores={cutSceneTimer=75}] run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=85}] run title @s times 15 35 15
execute as @s[scores={cutSceneTimer=85}] run title @s subtitle ["",{"text":"Тисовая Улица","bold":true,"color":"gold"}]
execute as @s[scores={cutSceneTimer=85}] run title @s title {"text":"Путешествие в","color":"gray"}
execute as @s[scores={cutSceneTimer=96..250}] run tp @s 2331.72 75.12 -790.98 314.93 26.14

execute as @s[scores={cutSceneTimer=180}] run function hp:cutscenes/fade_out

execute as @s[scores={cutSceneTimer=240}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=261}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=261}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=261}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=261}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=261,playerID=1}] run tp @s 2349.32 64.00 -772.19 208.46 2.14
execute as @s[scores={cutSceneTimer=261,playerID=2}] run tp @s 2350.66 64.00 -771.41 189.72 2.47
execute as @s[scores={cutSceneTimer=261,playerID=3}] run tp @s 2352.16 64.00 -771.31 165.02 2.52
execute as @s[scores={cutSceneTimer=261,playerID=4}] run tp @s 2353.75 64.00 -771.93 142.11 2.20
execute as @s[scores={cutSceneTimer=262}] run tag @s remove doNotPlayBusAmbience
execute as @s[scores={cutSceneTimer=262}] run tag @s add notPlayingBusAmbience
execute as @s[scores={cutSceneTimer=262}] run tag @s add dontExitCutSceneSilent
execute as @s[scores={cutSceneTimer=282}] run function hp:cutscenes/exit_cutscene

# Clear subtitles instantly rather than a slow fade I can't control
title @s actionbar ["",{"text":" "}]
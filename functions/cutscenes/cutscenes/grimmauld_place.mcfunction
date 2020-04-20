execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=1}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=1}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] run scoreboard players set grimmauldPlaceCutsceneIsGoing global 1
execute as @s[scores={cutSceneTimer=22}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=22}] run effect give @s minecraft:slowness 100000 5 true
execute as @s[scores={cutSceneTimer=22..421}] run tp @s 2395.53 56.41 -301.23 -169.88 -9.52
execute as @s[scores={cutSceneTimer=60}] run function hp:cutscenes/fade_out


execute as @s[scores={cutSceneTimer=35},tag=cutsceneLeader] as 1a8ba48e-9e2a-4788-a7ff-ea9c49c304e7 run tp @s 2400.66699 57.6 -305.957
execute as @s[scores={cutSceneTimer=35},tag=cutsceneLeader] as 26e0afcc-2f3e-46d5-b907-fcedbcde8710 run tp @s 2398.8 57.6 -305.96
execute as @s[scores={cutSceneTimer=35},tag=cutsceneLeader] as 8b87a7a6-0e4a-411d-9e09-19878ee94a4d run tp @s 2396.93 57.6 -305.96


execute as @s[scores={cutSceneTimer=35},tag=cutsceneLeader] as a00d632a-9d10-4224-b563-e3db5223d606 run tp @s 2395.99 57.6 -306.26
execute as @s[scores={cutSceneTimer=35},tag=cutsceneLeader] as b6773815-7e98-431e-87f4-4bf31f9343b9 run tp @s 2395.99 57.6 -306.26
execute as @s[scores={cutSceneTimer=35},tag=cutsceneLeader] as 86c54d87-9674-49e6-b8fa-abdd2ae1dd17 run tp @s 2395.99 57.6 -306.26
execute as @s[scores={cutSceneTimer=35},tag=cutsceneLeader] as 326036b6-b0ea-483e-aa82-d547ef1e837b run tp @s 2395.99 57.6 -306.26
execute as @s[scores={cutSceneTimer=35},tag=cutsceneLeader] as e17b108e-932a-494d-8d13-4cffeeae0587 run tp @s 2395.99 57.6 -306.26
execute as @s[scores={cutSceneTimer=35},tag=cutsceneLeader] as 45b96714-f536-4d74-b4c0-009ff980b4df run tp @s 2395.99 57.6 -306.26
execute as @s[scores={cutSceneTimer=35},tag=cutsceneLeader] as 40c46122-34b7-4ca5-ae5d-61fd0b752df8 run tp @s 2395.99 57.6 -306.26
execute as @s[scores={cutSceneTimer=35},tag=cutsceneLeader] as 176edcda-9cee-4298-a637-5e1139e33495 run tp @s 2395.99 57.6 -306.26
execute as @s[scores={cutSceneTimer=35},tag=cutsceneLeader] as 5d05d749-69d9-4bbe-8f40-e961a9d4ec97 run tp @s 2395.99 57.6 -306.26
execute as @s[scores={cutSceneTimer=35},tag=cutsceneLeader] as 85835744-accf-4df8-818d-68d56c3aa98a run tp @s 2395.99 57.6 -306.26
execute as @s[scores={cutSceneTimer=35},tag=cutsceneLeader] as d7536a26-2a69-4c74-9490-04dbe7ef8a35 run tp @s 2395.99 57.6 -306.26
execute as @s[scores={cutSceneTimer=35},tag=cutsceneLeader] as 8f8bf1d9-8813-4039-8ce3-c48b55437330 run tp @s 2395.99 57.6 -306.26

execute as @s[scores={cutSceneTimer=105..125},tag=cutsceneLeader] as a00d632a-9d10-4224-b563-e3db5223d606 at @s run tp @s ~ ~ ~0.0147
execute as @s[scores={cutSceneTimer=125..145},tag=cutsceneLeader] as b6773815-7e98-431e-87f4-4bf31f9343b9 at @s run tp @s ~ ~ ~0.0147
execute as @s[scores={cutSceneTimer=145..165},tag=cutsceneLeader] as 86c54d87-9674-49e6-b8fa-abdd2ae1dd17 at @s run tp @s ~ ~ ~0.0147
execute as @s[scores={cutSceneTimer=165..185},tag=cutsceneLeader] as 326036b6-b0ea-483e-aa82-d547ef1e837b at @s run tp @s ~ ~ ~0.0147
execute as @s[scores={cutSceneTimer=185..205},tag=cutsceneLeader] as e17b108e-932a-494d-8d13-4cffeeae0587 at @s run tp @s ~ ~ ~0.0147
execute as @s[scores={cutSceneTimer=205..225},tag=cutsceneLeader] as 45b96714-f536-4d74-b4c0-009ff980b4df at @s run tp @s ~ ~ ~0.0147
execute as @s[scores={cutSceneTimer=225..245},tag=cutsceneLeader] as 40c46122-34b7-4ca5-ae5d-61fd0b752df8 at @s run tp @s ~ ~ ~0.0147
execute as @s[scores={cutSceneTimer=245..265},tag=cutsceneLeader] as 176edcda-9cee-4298-a637-5e1139e33495 at @s run tp @s ~ ~ ~0.0147
execute as @s[scores={cutSceneTimer=265..285},tag=cutsceneLeader] as 5d05d749-69d9-4bbe-8f40-e961a9d4ec97 at @s run tp @s ~ ~ ~0.0147
execute as @s[scores={cutSceneTimer=285..305},tag=cutsceneLeader] as 85835744-accf-4df8-818d-68d56c3aa98a at @s run tp @s ~ ~ ~0.0147
execute as @s[scores={cutSceneTimer=305..325},tag=cutsceneLeader] as d7536a26-2a69-4c74-9490-04dbe7ef8a35 at @s run tp @s ~ ~ ~0.0147
execute as @s[scores={cutSceneTimer=325..345},tag=cutsceneLeader] as 8f8bf1d9-8813-4039-8ce3-c48b55437330 at @s run tp @s ~ ~ ~0.0147

execute as @s[scores={cutSceneTimer=100}] at @s run playsound minecraft:custom.fx.rocks_move_short master @s ~ ~ ~ 1 0.1
execute as @s[scores={cutSceneTimer=100}] at @s run playsound minecraft:custom.gameplay_element.diagon_alley.brick_wall_move master @s ~ ~ ~ 1 0.5
execute as @s[scores={cutSceneTimer=345}] at @s run playsound minecraft:custom.fx.rocks_impact master @s ~ ~ ~ 1 0.1
execute as @s[scores={cutSceneTimer=100}] at @s run playsound minecraft:custom.fx.stone_slide master @s ~ ~ ~ 1 0.7
execute as @s[scores={cutSceneTimer=110}] at @s run playsound minecraft:custom.gameplay_element.turning_pillar master @s ~ ~ ~ 1 0.1
execute as @s[scores={cutSceneTimer=120}] at @s run playsound minecraft:custom.fx.stone_slide master @s ~ ~ ~ 1 0.7
execute as @s[scores={cutSceneTimer=130}] at @s run playsound minecraft:custom.gameplay_element.turning_pillar master @s ~ ~ ~ 1 0.1
execute as @s[scores={cutSceneTimer=140}] at @s run playsound minecraft:custom.fx.stone_slide master @s ~ ~ ~ 1 0.7
execute as @s[scores={cutSceneTimer=150}] at @s run playsound minecraft:custom.gameplay_element.turning_pillar master @s ~ ~ ~ 1 0.1
execute as @s[scores={cutSceneTimer=160}] at @s run playsound minecraft:custom.fx.stone_slide master @s ~ ~ ~ 1 0.7
execute as @s[scores={cutSceneTimer=170}] at @s run playsound minecraft:custom.gameplay_element.turning_pillar master @s ~ ~ ~ 1 0.1
execute as @s[scores={cutSceneTimer=180}] at @s run playsound minecraft:custom.fx.stone_slide master @s ~ ~ ~ 1 0.7
execute as @s[scores={cutSceneTimer=190}] at @s run playsound minecraft:custom.gameplay_element.turning_pillar master @s ~ ~ ~ 1 0.1
execute as @s[scores={cutSceneTimer=200}] at @s run playsound minecraft:custom.fx.stone_slide master @s ~ ~ ~ 1 0.7
execute as @s[scores={cutSceneTimer=210}] at @s run playsound minecraft:custom.gameplay_element.turning_pillar master @s ~ ~ ~ 1 0.1
execute as @s[scores={cutSceneTimer=220}] at @s run playsound minecraft:custom.fx.stone_slide master @s ~ ~ ~ 1 0.7
execute as @s[scores={cutSceneTimer=230}] at @s run playsound minecraft:custom.gameplay_element.turning_pillar master @s ~ ~ ~ 1 0.1
execute as @s[scores={cutSceneTimer=240}] at @s run playsound minecraft:custom.fx.stone_slide master @s ~ ~ ~ 1 0.7
execute as @s[scores={cutSceneTimer=250}] at @s run playsound minecraft:custom.gameplay_element.turning_pillar master @s ~ ~ ~ 1 0.1
execute as @s[scores={cutSceneTimer=260}] at @s run playsound minecraft:custom.fx.stone_slide master @s ~ ~ ~ 1 0.7
execute as @s[scores={cutSceneTimer=270}] at @s run playsound minecraft:custom.gameplay_element.turning_pillar master @s ~ ~ ~ 1 0.1
execute as @s[scores={cutSceneTimer=280}] at @s run playsound minecraft:custom.fx.stone_slide master @s ~ ~ ~ 1 0.7
execute as @s[scores={cutSceneTimer=290}] at @s run playsound minecraft:custom.gameplay_element.turning_pillar master @s ~ ~ ~ 1 0.1
execute as @s[scores={cutSceneTimer=300}] at @s run playsound minecraft:custom.fx.stone_slide master @s ~ ~ ~ 1 0.7
execute as @s[scores={cutSceneTimer=310}] at @s run playsound minecraft:custom.gameplay_element.turning_pillar master @s ~ ~ ~ 1 0.1
execute as @s[scores={cutSceneTimer=320}] at @s run playsound minecraft:custom.fx.stone_slide master @s ~ ~ ~ 1 0.7
execute as @s[scores={cutSceneTimer=330}] at @s run playsound minecraft:custom.gameplay_element.turning_pillar master @s ~ ~ ~ 1 0.1


execute as @s[scores={cutSceneTimer=100..345},tag=cutsceneLeader] as 1a8ba48e-9e2a-4788-a7ff-ea9c49c304e7 at @s run tp @s ~0.0038 ~ ~
execute as @s[scores={cutSceneTimer=100..345},tag=cutsceneLeader] as 26e0afcc-2f3e-46d5-b907-fcedbcde8710 at @s run tp @s ~0.0038 ~ ~
execute as @s[scores={cutSceneTimer=100..345},tag=cutsceneLeader] as 8b87a7a6-0e4a-411d-9e09-19878ee94a4d at @s run tp @s ~0.0038 ~ ~

execute as @s[scores={cutSceneTimer=401}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=422}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=422}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=422}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=450}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=422}] run tp @s[scores={playerID=1}] 2458.89 62.00 -230.67 -179.44 -0.07
execute as @s[scores={cutSceneTimer=422}] run tp @s[scores={playerID=2}] 2458.01 62.00 -230.48 -175.04 0.42
execute as @s[scores={cutSceneTimer=422}] run tp @s[scores={playerID=3}] 2459.51 62.00 -231.79 -181.55 0.85
execute as @s[scores={cutSceneTimer=422}] run tp @s[scores={playerID=4}] 2458.49 62.00 -232.72 -177.97 1.67
execute as @s[scores={cutSceneTimer=470},tag=cutsceneLeader] run scoreboard players set grimmauldPlaceCutsceneIsGoing global 0
execute as @s[scores={cutSceneTimer=470}] run function hp:cutscenes/exit_cutscene
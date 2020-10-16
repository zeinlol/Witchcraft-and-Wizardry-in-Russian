execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=1}] at @s run playsound minecraft:custom.misc.toilet_flush master @s ~ ~ ~ 10000 1

execute as @s run title @s actionbar ""

execute as @s[scores={cutSceneTimer=20}] run title @s times 15 35 15
execute as @s[scores={cutSceneTimer=20}] run title @s subtitle ["",{"text":"Министерство Магии","bold":true,"color":"gold"}]
execute as @s[scores={cutSceneTimer=20}] run title @s title {"text":"Путешествие в","color":"gray"}

execute as @s[scores={cutSceneTimer=50,playerID=1}] run tp @s 9840.89 122.00 10211.70 -90.90 -0.57
execute as @s[scores={cutSceneTimer=50,playerID=2}] run tp @s 9840.74 122.00 10223.33 -90.52 -1.00
execute as @s[scores={cutSceneTimer=50,playerID=3}] run tp @s 9859.66 122.00 10211.37 -270.62 0.84
execute as @s[scores={cutSceneTimer=50,playerID=4}] run tp @s 9860.41 122.00 10199.32 -270.02 -0.40
execute as @s[scores={cutSceneTimer=90}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=110}] run function hp:cutscenes/exit_cutscene
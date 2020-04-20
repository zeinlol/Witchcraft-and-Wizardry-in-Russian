execute as @s[scores={cutSceneTimer=1}] run tag 70c3257f-9b78-4a6d-b966-d0b5cdc858b0 add close
execute as @s[scores={cutSceneTimer=1}] if entity 475250bd-2c84-4dc8-8409-86ab7ce5ca4a run tag 475250bd-2c84-4dc8-8409-86ab7ce5ca4a add close
execute as @s[scores={cutSceneTimer=1}] unless entity 475250bd-2c84-4dc8-8409-86ab7ce5ca4a run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute as @s[scores={cutSceneTimer=1}] unless entity 475250bd-2c84-4dc8-8409-86ab7ce5ca4a at @s as @e[tag=chunkLoader,limit=1] run spreadplayers 9944 10104 1 1 false @s
execute as @s[scores={cutSceneTimer=1}] run tag 475250bd-2c84-4dc8-8409-86ab7ce5ca4a add close

execute as @s[scores={cutSceneTimer=1}] run scoreboard players set ministryElevatorCutsceneIsGoing global 1

execute as @s[scores={cutSceneTimer=20}] run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=60}] run tag 70c3257f-9b78-4a6d-b966-d0b5cdc858b0 remove close
execute as @s[scores={cutSceneTimer=100}] run tag 475250bd-2c84-4dc8-8409-86ab7ce5ca4a remove close
execute as @s[scores={cutSceneTimer=60,playerID=1}] run tp @s 9952.49 197.00 10099.55 90.77 0.01
execute as @s[scores={cutSceneTimer=60,playerID=2}] run tp @s 9952.49 197.00 10100.31 98.86 -0.32
execute as @s[scores={cutSceneTimer=60,playerID=3}] run tp @s 9952.32 197.00 10098.49 79.86 0.28
execute as @s[scores={cutSceneTimer=60,playerID=4}] run tp @s 9953.70 197.00 10099.32 90.72 1.42
execute as @s[scores={cutSceneTimer=80}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=100}] run scoreboard players set ministryElevatorCutsceneIsGoing global 0
execute as @s[scores={cutSceneTimer=100}] run function hp:cutscenes/exit_cutscene


# Make sure the other elevator is loaded and closes
execute unless entity 475250bd-2c84-4dc8-8409-86ab7ce5ca4a run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute unless entity 475250bd-2c84-4dc8-8409-86ab7ce5ca4a at @s as @e[tag=chunkLoader,limit=1] run spreadplayers 9944 10104 1 1 false @s
kill @e[tag=chunkLoader]


title @s actionbar ""
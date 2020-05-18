execute as @s[scores={cutSceneTimer=1}] run tag 475250bd-2c84-4dc8-8409-86ab7ce5ca4a add close
execute as @s[scores={cutSceneTimer=1}] if entity 70c3257f-9b78-4a6d-b966-d0b5cdc858b0 run tag 70c3257f-9b78-4a6d-b966-d0b5cdc858b0 add close
execute as @s[scores={cutSceneTimer=1}] unless entity 70c3257f-9b78-4a6d-b966-d0b5cdc858b0 run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute as @s[scores={cutSceneTimer=1}] unless entity 70c3257f-9b78-4a6d-b966-d0b5cdc858b0 at @s as @e[tag=chunkLoader,limit=1] run spreadplayers 9846 10072 1 1 false @s
execute as @s[scores={cutSceneTimer=1}] run tag 70c3257f-9b78-4a6d-b966-d0b5cdc858b0 add close

execute as @s[scores={cutSceneTimer=1}] run scoreboard players set ministryElevatorCutsceneIsGoing global 1

execute as @s[scores={cutSceneTimer=20}] run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=60}] run tag 475250bd-2c84-4dc8-8409-86ab7ce5ca4a remove close
execute as @s[scores={cutSceneTimer=100}] run tag 70c3257f-9b78-4a6d-b966-d0b5cdc858b0 remove close
execute as @s[scores={cutSceneTimer=60,playerID=1}] run tp @s 9846.44 122.00 10072.42 359.70 -0.08
execute as @s[scores={cutSceneTimer=60,playerID=2}] run tp @s 9847.10 122.00 10071.30 365.51 1.28
execute as @s[scores={cutSceneTimer=60,playerID=3}] run tp @s 9846.46 122.00 10071.30 359.59 -0.35
execute as @s[scores={cutSceneTimer=60,playerID=4}] run tp @s 9845.51 122.00 10071.55 349.38 1.55
execute as @s[scores={cutSceneTimer=80}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=100}] run scoreboard players set ministryElevatorCutsceneIsGoing global 0
execute as @s[scores={cutSceneTimer=100}] run function hp:cutscenes/exit_cutscene


# Make sure the other elevator is loaded and closes
execute unless entity 70c3257f-9b78-4a6d-b966-d0b5cdc858b0 run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute unless entity 70c3257f-9b78-4a6d-b966-d0b5cdc858b0 at @s as @e[tag=chunkLoader,limit=1] run spreadplayers 9846 10072 1 1 false @s
kill @e[tag=chunkLoader]


title @s actionbar ""
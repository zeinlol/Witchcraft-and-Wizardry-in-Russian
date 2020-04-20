execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in

execute as @s run title @s actionbar ""

execute as @s[scores={cutSceneTimer=19},tag=gameLeader] run fill 2004 10 798 2004 15 800 air
execute as @s[scores={cutSceneTimer=20,playerID=1}] run tp @s 671.37 84.00 240.27 78.03 -7.04
execute as @s[scores={cutSceneTimer=20,playerID=2}] run tp @s 671.56 84.00 242.20 95.73 -8.88
execute as @s[scores={cutSceneTimer=20,playerID=3}] run tp @s 668.18 84.00 237.03 31.22 -9.64
execute as @s[scores={cutSceneTimer=20,playerID=4}] run tp @s 672.77 84.00 243.63 104.90 -5.68

execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 84 242 minecraft:barrier
execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 84 241 minecraft:barrier
execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 84 240 minecraft:barrier
execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 84 240 minecraft:barrier
execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 85 240 minecraft:barrier
execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 86 242 minecraft:barrier
execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 86 242 minecraft:barrier
execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 86 240 minecraft:barrier
execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 87 242 minecraft:barrier
execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 87 242 minecraft:barrier
execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 87 240 minecraft:barrier
execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 88 242 minecraft:barrier
execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 88 240 minecraft:barrier
execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 89 242 minecraft:barrier
execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 89 241 minecraft:barrier
execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 89 240 minecraft:barrier
execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 85 241 minecraft:repeater[delay=2,facing=north,locked=true,powered=false]
execute as @s[scores={cutSceneTimer=21},tag=gameLeader] run setblock 665 88 241 minecraft:repeater[delay=2,facing=west,locked=true,powered=false]


execute as @s[scores={cutSceneTimer=50}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=70}] run tag @s add hasMovedMirrorOfErised
execute as @s[scores={cutSceneTimer=70},tag=gameLeader] run scoreboard players set mirrorOfErisedLocation global 2
execute as @s[scores={cutSceneTimer=70}] run function hp:cutscenes/exit_cutscene
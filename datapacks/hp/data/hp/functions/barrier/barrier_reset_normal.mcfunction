execute store result score @s playerRespawnX run data get entity @s Pos[0]
execute store result score @s playerRespawnY run data get entity @s Pos[1]
execute store result score @s playerRespawnZ run data get entity @s Pos[2]
scoreboard players set @s[tag=testDistance] respawnID 0
scoreboard players set @s[tag=testDistance] respawnDistance 0

############
# Hogwarts #
############

scoreboard players set @s testRespawnID 0
execute as @s[tag=testDistance,scores={testRespawnID=0}] run scoreboard players set @s respawnX 841
execute as @s[tag=testDistance,scores={testRespawnID=0}] run scoreboard players set @s respawnY 26
execute as @s[tag=testDistance,scores={testRespawnID=0}] run scoreboard players set @s respawnZ 371
execute as @s[tag=testDistance,scores={testRespawnID=0}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=0}] run tp @s 841.20 26.00 371.63 -301.10 1.98
scoreboard players set @s testRespawnID 3
execute as @s[tag=testDistance,scores={testRespawnID=3}] run scoreboard players set @s respawnX 895
execute as @s[tag=testDistance,scores={testRespawnID=3}] run scoreboard players set @s respawnY 19
execute as @s[tag=testDistance,scores={testRespawnID=3}] run scoreboard players set @s respawnZ 368
execute as @s[tag=testDistance,scores={testRespawnID=3}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=3}] run tp @s 895.37 19.00 368.21 -471.59 0.67
scoreboard players set @s testRespawnID 4
execute as @s[tag=testDistance,scores={testRespawnID=4}] run scoreboard players set @s respawnX 955
execute as @s[tag=testDistance,scores={testRespawnID=4}] run scoreboard players set @s respawnY 18
execute as @s[tag=testDistance,scores={testRespawnID=4}] run scoreboard players set @s respawnZ 317
execute as @s[tag=testDistance,scores={testRespawnID=4}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=4}] run tp @s 955.26 18.00 317.28 -630.13 1.27
scoreboard players set @s testRespawnID 5
execute as @s[tag=testDistance,scores={testRespawnID=5}] run scoreboard players set @s respawnX 900
execute as @s[tag=testDistance,scores={testRespawnID=5}] run scoreboard players set @s respawnY 38
execute as @s[tag=testDistance,scores={testRespawnID=5}] run scoreboard players set @s respawnZ 326
execute as @s[tag=testDistance,scores={testRespawnID=5}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=5}] run tp @s 900.66 38.00 326.06 -560.47 3.82
scoreboard players set @s testRespawnID 6
execute as @s[tag=testDistance,scores={testRespawnID=6}] run scoreboard players set @s respawnX 849
execute as @s[tag=testDistance,scores={testRespawnID=6}] run scoreboard players set @s respawnY 56
execute as @s[tag=testDistance,scores={testRespawnID=6}] run scoreboard players set @s respawnZ 163
execute as @s[tag=testDistance,scores={testRespawnID=6}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=6}] run tp @s 849.92 56.00 163.92 -471.91 4.37
scoreboard players set @s testRespawnID 7
execute as @s[tag=testDistance,scores={testRespawnID=7}] run scoreboard players set @s respawnX 873
execute as @s[tag=testDistance,scores={testRespawnID=7}] run scoreboard players set @s respawnY 41
execute as @s[tag=testDistance,scores={testRespawnID=7}] run scoreboard players set @s respawnZ 28
execute as @s[tag=testDistance,scores={testRespawnID=7}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=7}] run tp @s 873.58 41.00 28.67 -409.74 3.06
scoreboard players set @s testRespawnID 8
execute as @s[tag=testDistance,scores={testRespawnID=8}] run scoreboard players set @s respawnX 878
execute as @s[tag=testDistance,scores={testRespawnID=8}] run scoreboard players set @s respawnY 35
execute as @s[tag=testDistance,scores={testRespawnID=8}] run scoreboard players set @s respawnZ -85
execute as @s[tag=testDistance,scores={testRespawnID=8}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=8}] run tp @s 878.00 35.00 -85.36 -604.61 -0.36
scoreboard players set @s testRespawnID 9
execute as @s[tag=testDistance,scores={testRespawnID=9}] run scoreboard players set @s respawnX 960
execute as @s[tag=testDistance,scores={testRespawnID=9}] run scoreboard players set @s respawnY 69
execute as @s[tag=testDistance,scores={testRespawnID=9}] run scoreboard players set @s respawnZ -170
execute as @s[tag=testDistance,scores={testRespawnID=9}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=9}] run tp @s 960.73 69.00 -170.32 -292.95 4.91
scoreboard players set @s testRespawnID 10
execute as @s[tag=testDistance,scores={testRespawnID=10}] run scoreboard players set @s respawnX 822
execute as @s[tag=testDistance,scores={testRespawnID=10}] run scoreboard players set @s respawnY 67
execute as @s[tag=testDistance,scores={testRespawnID=10}] run scoreboard players set @s respawnZ -216
execute as @s[tag=testDistance,scores={testRespawnID=10}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=10}] run tp @s 822.93 67.00 -216.19 -335.58 9.90
scoreboard players set @s testRespawnID 11
execute as @s[tag=testDistance,scores={testRespawnID=11}] run scoreboard players set @s respawnX 777
execute as @s[tag=testDistance,scores={testRespawnID=11}] run scoreboard players set @s respawnY 70
execute as @s[tag=testDistance,scores={testRespawnID=11}] run scoreboard players set @s respawnZ -240
execute as @s[tag=testDistance,scores={testRespawnID=11}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=11}] run tp @s 777.43 70.00 -240.98 -342.31 19.09
scoreboard players set @s testRespawnID 12
execute as @s[tag=testDistance,scores={testRespawnID=12}] run scoreboard players set @s respawnX 743
execute as @s[tag=testDistance,scores={testRespawnID=12}] run scoreboard players set @s respawnY 103
execute as @s[tag=testDistance,scores={testRespawnID=12}] run scoreboard players set @s respawnZ -326
execute as @s[tag=testDistance,scores={testRespawnID=12}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=12}] run tp @s 743.95 103.00 -326.04 -324.39 19.58
scoreboard players set @s testRespawnID 13
execute as @s[tag=testDistance,scores={testRespawnID=13}] run scoreboard players set @s respawnX 685
execute as @s[tag=testDistance,scores={testRespawnID=13}] run scoreboard players set @s respawnY 91
execute as @s[tag=testDistance,scores={testRespawnID=13}] run scoreboard players set @s respawnZ -334
execute as @s[tag=testDistance,scores={testRespawnID=13}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=13}] run tp @s 685.29 91.00 -334.28 -324.23 21.04
scoreboard players set @s testRespawnID 14
execute as @s[tag=testDistance,scores={testRespawnID=14}] run scoreboard players set @s respawnX 606
execute as @s[tag=testDistance,scores={testRespawnID=14}] run scoreboard players set @s respawnY 73
execute as @s[tag=testDistance,scores={testRespawnID=14}] run scoreboard players set @s respawnZ -359
execute as @s[tag=testDistance,scores={testRespawnID=14}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=14}] run tp @s 606.47 73.00 -359.85 -303.43 19.09
scoreboard players set @s testRespawnID 15
execute as @s[tag=testDistance,scores={testRespawnID=15}] run scoreboard players set @s respawnX 513
execute as @s[tag=testDistance,scores={testRespawnID=15}] run scoreboard players set @s respawnY 24
execute as @s[tag=testDistance,scores={testRespawnID=15}] run scoreboard players set @s respawnZ -380
execute as @s[tag=testDistance,scores={testRespawnID=15}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=15}] run tp @s 513.33 24.00 -380.56 -324.66 1.88
scoreboard players set @s testRespawnID 16
execute as @s[tag=testDistance,scores={testRespawnID=16}] run scoreboard players set @s respawnX 438
execute as @s[tag=testDistance,scores={testRespawnID=16}] run scoreboard players set @s respawnY 50
execute as @s[tag=testDistance,scores={testRespawnID=16}] run scoreboard players set @s respawnZ -439
execute as @s[tag=testDistance,scores={testRespawnID=16}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=16}] run tp @s 438.08 50.00 -439.29 10.24 13.23
scoreboard players set @s testRespawnID 17
execute as @s[tag=testDistance,scores={testRespawnID=17}] run scoreboard players set @s respawnX 377
execute as @s[tag=testDistance,scores={testRespawnID=17}] run scoreboard players set @s respawnY 54
execute as @s[tag=testDistance,scores={testRespawnID=17}] run scoreboard players set @s respawnZ -432
execute as @s[tag=testDistance,scores={testRespawnID=17}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=17}] run tp @s 377.64 54.00 -432.26 -4.42 9.10
scoreboard players set @s testRespawnID 18
execute as @s[tag=testDistance,scores={testRespawnID=18}] run scoreboard players set @s respawnX 348
execute as @s[tag=testDistance,scores={testRespawnID=18}] run scoreboard players set @s respawnY 54
execute as @s[tag=testDistance,scores={testRespawnID=18}] run scoreboard players set @s respawnZ -397
execute as @s[tag=testDistance,scores={testRespawnID=18}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=18}] run tp @s 348.11 54.00 -397.99 -25.22 7.96
scoreboard players set @s testRespawnID 19
execute as @s[tag=testDistance,scores={testRespawnID=19}] run scoreboard players set @s respawnX 204
execute as @s[tag=testDistance,scores={testRespawnID=19}] run scoreboard players set @s respawnY 33
execute as @s[tag=testDistance,scores={testRespawnID=19}] run scoreboard players set @s respawnZ -371
execute as @s[tag=testDistance,scores={testRespawnID=19}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=19}] run tp @s 204.25 33.00 -371.64 -28.31 7.90
scoreboard players set @s testRespawnID 20
execute as @s[tag=testDistance,scores={testRespawnID=20}] run scoreboard players set @s respawnX 92
execute as @s[tag=testDistance,scores={testRespawnID=20}] run scoreboard players set @s respawnY 26
execute as @s[tag=testDistance,scores={testRespawnID=20}] run scoreboard players set @s respawnZ -332
execute as @s[tag=testDistance,scores={testRespawnID=20}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=20}] run tp @s 92.50 26.00 -332.55 -23.81 5.62
scoreboard players set @s testRespawnID 21
execute as @s[tag=testDistance,scores={testRespawnID=21}] run scoreboard players set @s respawnX 44
execute as @s[tag=testDistance,scores={testRespawnID=21}] run scoreboard players set @s respawnY 26
execute as @s[tag=testDistance,scores={testRespawnID=21}] run scoreboard players set @s respawnZ -304
execute as @s[tag=testDistance,scores={testRespawnID=21}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=21}] run tp @s 44.77 26.00 -304.33 -35.70 6.49
scoreboard players set @s testRespawnID 22
execute as @s[tag=testDistance,scores={testRespawnID=22}] run scoreboard players set @s respawnX 30
execute as @s[tag=testDistance,scores={testRespawnID=22}] run scoreboard players set @s respawnY 30
execute as @s[tag=testDistance,scores={testRespawnID=22}] run scoreboard players set @s respawnZ -213
execute as @s[tag=testDistance,scores={testRespawnID=22}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=22}] run tp @s 30.68 30.00 -213.95 -48.89 12.25
scoreboard players set @s testRespawnID 23
execute as @s[tag=testDistance,scores={testRespawnID=23}] run scoreboard players set @s respawnX 19
execute as @s[tag=testDistance,scores={testRespawnID=23}] run scoreboard players set @s respawnY 21
execute as @s[tag=testDistance,scores={testRespawnID=23}] run scoreboard players set @s respawnZ -105
execute as @s[tag=testDistance,scores={testRespawnID=23}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=23}] run tp @s 19.52 21.00 -105.34 -40.31 10.02
scoreboard players set @s testRespawnID 24
execute as @s[tag=testDistance,scores={testRespawnID=24}] run scoreboard players set @s respawnX -3
execute as @s[tag=testDistance,scores={testRespawnID=24}] run scoreboard players set @s respawnY 20
execute as @s[tag=testDistance,scores={testRespawnID=24}] run scoreboard players set @s respawnZ -22
execute as @s[tag=testDistance,scores={testRespawnID=24}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=24}] run tp @s -3.35 20.00 -22.19 -83.53 6.87
scoreboard players set @s testRespawnID 25
execute as @s[tag=testDistance,scores={testRespawnID=25}] run scoreboard players set @s respawnX 20
execute as @s[tag=testDistance,scores={testRespawnID=25}] run scoreboard players set @s respawnY 14
execute as @s[tag=testDistance,scores={testRespawnID=25}] run scoreboard players set @s respawnZ 148
execute as @s[tag=testDistance,scores={testRespawnID=25}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=25}] run tp @s 20.17 14.00 148.94 -113.29 2.80
scoreboard players set @s testRespawnID 26
execute as @s[tag=testDistance,scores={testRespawnID=26}] run scoreboard players set @s respawnX -27
execute as @s[tag=testDistance,scores={testRespawnID=26}] run scoreboard players set @s respawnY 19
execute as @s[tag=testDistance,scores={testRespawnID=26}] run scoreboard players set @s respawnZ 168
execute as @s[tag=testDistance,scores={testRespawnID=26}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=26}] run tp @s -27.39 19.00 168.97 -42.92 7.58
scoreboard players set @s testRespawnID 27
execute as @s[tag=testDistance,scores={testRespawnID=27}] run scoreboard players set @s respawnX -99
execute as @s[tag=testDistance,scores={testRespawnID=27}] run scoreboard players set @s respawnY 33
execute as @s[tag=testDistance,scores={testRespawnID=27}] run scoreboard players set @s respawnZ 200
execute as @s[tag=testDistance,scores={testRespawnID=27}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=27}] run tp @s -99.81 33.00 200.24 -47.26 5.62
scoreboard players set @s testRespawnID 28
execute as @s[tag=testDistance,scores={testRespawnID=28}] run scoreboard players set @s respawnX -115
execute as @s[tag=testDistance,scores={testRespawnID=28}] run scoreboard players set @s respawnY 44
execute as @s[tag=testDistance,scores={testRespawnID=28}] run scoreboard players set @s respawnZ 254
execute as @s[tag=testDistance,scores={testRespawnID=28}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=28}] run tp @s -115.51 44.00 254.23 -110.41 15.18
scoreboard players set @s testRespawnID 29
execute as @s[tag=testDistance,scores={testRespawnID=29}] run scoreboard players set @s respawnX -68
execute as @s[tag=testDistance,scores={testRespawnID=29}] run scoreboard players set @s respawnY 43
execute as @s[tag=testDistance,scores={testRespawnID=29}] run scoreboard players set @s respawnZ 352
execute as @s[tag=testDistance,scores={testRespawnID=29}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=29}] run tp @s -68.05 43.00 352.40 -105.96 13.66
scoreboard players set @s testRespawnID 30
execute as @s[tag=testDistance,scores={testRespawnID=30}] run scoreboard players set @s respawnX -15
execute as @s[tag=testDistance,scores={testRespawnID=30}] run scoreboard players set @s respawnY 21
execute as @s[tag=testDistance,scores={testRespawnID=30}] run scoreboard players set @s respawnZ 525
execute as @s[tag=testDistance,scores={testRespawnID=30}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=30}] run tp @s -15.70 21.00 525.83 -23.10 14.69
scoreboard players set @s testRespawnID 31
execute as @s[tag=testDistance,scores={testRespawnID=31}] run scoreboard players set @s respawnX -215
execute as @s[tag=testDistance,scores={testRespawnID=31}] run scoreboard players set @s respawnY 41
execute as @s[tag=testDistance,scores={testRespawnID=31}] run scoreboard players set @s respawnZ 531
execute as @s[tag=testDistance,scores={testRespawnID=31}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=31}] run tp @s -215.94 41.00 531.39 339.43 6.17
scoreboard players set @s testRespawnID 32
execute as @s[tag=testDistance,scores={testRespawnID=32}] run scoreboard players set @s respawnX -261
execute as @s[tag=testDistance,scores={testRespawnID=32}] run scoreboard players set @s respawnY 57
execute as @s[tag=testDistance,scores={testRespawnID=32}] run scoreboard players set @s respawnZ 622
execute as @s[tag=testDistance,scores={testRespawnID=32}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=32}] run tp @s -261.61 57.00 622.49 252.34 10.67
scoreboard players set @s testRespawnID 33
execute as @s[tag=testDistance,scores={testRespawnID=33}] run scoreboard players set @s respawnX -214
execute as @s[tag=testDistance,scores={testRespawnID=33}] run scoreboard players set @s respawnY 53
execute as @s[tag=testDistance,scores={testRespawnID=33}] run scoreboard players set @s respawnZ 666
execute as @s[tag=testDistance,scores={testRespawnID=33}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=33}] run tp @s -214.27 53.00 666.02 207.17 10.73
scoreboard players set @s testRespawnID 34
execute as @s[tag=testDistance,scores={testRespawnID=34}] run scoreboard players set @s respawnX -100
execute as @s[tag=testDistance,scores={testRespawnID=34}] run scoreboard players set @s respawnY 49
execute as @s[tag=testDistance,scores={testRespawnID=34}] run scoreboard players set @s respawnZ 667
execute as @s[tag=testDistance,scores={testRespawnID=34}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=34}] run tp @s -100.17 49.00 667.14 126.21 10.67
scoreboard players set @s testRespawnID 35
execute as @s[tag=testDistance,scores={testRespawnID=35}] run scoreboard players set @s respawnX -8
execute as @s[tag=testDistance,scores={testRespawnID=35}] run scoreboard players set @s respawnY 14
execute as @s[tag=testDistance,scores={testRespawnID=35}] run scoreboard players set @s respawnZ 582
execute as @s[tag=testDistance,scores={testRespawnID=35}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=35}] run tp @s -8.93 14.00 582.31 150.54 2.15
scoreboard players set @s testRespawnID 36
execute as @s[tag=testDistance,scores={testRespawnID=36}] run scoreboard players set @s respawnX 0
execute as @s[tag=testDistance,scores={testRespawnID=36}] run scoreboard players set @s respawnY 41
execute as @s[tag=testDistance,scores={testRespawnID=36}] run scoreboard players set @s respawnZ 652
execute as @s[tag=testDistance,scores={testRespawnID=36}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=36}] run tp @s -0.83 41.00 652.10 216.78 19.85
scoreboard players set @s testRespawnID 37
execute as @s[tag=testDistance,scores={testRespawnID=37}] run scoreboard players set @s respawnX 178
execute as @s[tag=testDistance,scores={testRespawnID=37}] run scoreboard players set @s respawnY 66
execute as @s[tag=testDistance,scores={testRespawnID=37}] run scoreboard players set @s respawnZ 826
execute as @s[tag=testDistance,scores={testRespawnID=37}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=37}] run tp @s 178.52 66.00 826.54 111.45 14.96
scoreboard players set @s testRespawnID 38
execute as @s[tag=testDistance,scores={testRespawnID=38}] run scoreboard players set @s respawnX 363
execute as @s[tag=testDistance,scores={testRespawnID=38}] run scoreboard players set @s respawnY 30
execute as @s[tag=testDistance,scores={testRespawnID=38}] run scoreboard players set @s respawnZ 783
execute as @s[tag=testDistance,scores={testRespawnID=38}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=38}] run tp @s 363.70 30.00 783.23 207.60 5.03
scoreboard players set @s testRespawnID 39
execute as @s[tag=testDistance,scores={testRespawnID=39}] run scoreboard players set @s respawnX 463
execute as @s[tag=testDistance,scores={testRespawnID=39}] run scoreboard players set @s respawnY 20
execute as @s[tag=testDistance,scores={testRespawnID=39}] run scoreboard players set @s respawnZ 599
execute as @s[tag=testDistance,scores={testRespawnID=39}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=39}] run tp @s 463.83 20.00 599.21 167.91 -3.82
scoreboard players set @s testRespawnID 40
execute as @s[tag=testDistance,scores={testRespawnID=40}] run scoreboard players set @s respawnX 529
execute as @s[tag=testDistance,scores={testRespawnID=40}] run scoreboard players set @s respawnY 22
execute as @s[tag=testDistance,scores={testRespawnID=40}] run scoreboard players set @s respawnZ 452
execute as @s[tag=testDistance,scores={testRespawnID=40}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=40}] run tp @s 529.83 22.00 452.58 173.89 -10.18
scoreboard players set @s testRespawnID 41
execute as @s[tag=testDistance,scores={testRespawnID=41}] run scoreboard players set @s respawnX 555
execute as @s[tag=testDistance,scores={testRespawnID=41}] run scoreboard players set @s respawnY 43
execute as @s[tag=testDistance,scores={testRespawnID=41}] run scoreboard players set @s respawnZ 388
execute as @s[tag=testDistance,scores={testRespawnID=41}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=41}] run tp @s 555.57 43.00 388.43 157.76 4.00
scoreboard players set @s testRespawnID 42
execute as @s[tag=testDistance,scores={testRespawnID=42}] run scoreboard players set @s respawnX 684
execute as @s[tag=testDistance,scores={testRespawnID=42}] run scoreboard players set @s respawnY 66
execute as @s[tag=testDistance,scores={testRespawnID=42}] run scoreboard players set @s respawnZ 316
execute as @s[tag=testDistance,scores={testRespawnID=42}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=42}] run tp @s 684.60 66.00 316.59 201.36 3.34

##############
# Residences #
##############
scoreboard players set @s testRespawnID 43
execute as @s[tag=testDistance,scores={testRespawnID=43}] run scoreboard players set @s respawnX 5151
execute as @s[tag=testDistance,scores={testRespawnID=43}] run scoreboard players set @s respawnY 85
execute as @s[tag=testDistance,scores={testRespawnID=43}] run scoreboard players set @s respawnZ 4684
execute as @s[tag=testDistance,scores={testRespawnID=43}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=43}] run tp @s 5151.02 85.00 4684.00 225.41 16.38
scoreboard players set @s testRespawnID 44
execute as @s[tag=testDistance,scores={testRespawnID=44}] run scoreboard players set @s respawnX 5225
execute as @s[tag=testDistance,scores={testRespawnID=44}] run scoreboard players set @s respawnY 61
execute as @s[tag=testDistance,scores={testRespawnID=44}] run scoreboard players set @s respawnZ 4691
execute as @s[tag=testDistance,scores={testRespawnID=44}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=44}] run tp @s 5225.38 61.00 4691.43 214.98 12.85
scoreboard players set @s testRespawnID 45
execute as @s[tag=testDistance,scores={testRespawnID=45}] run scoreboard players set @s respawnX 5314
execute as @s[tag=testDistance,scores={testRespawnID=45}] run scoreboard players set @s respawnY 37
execute as @s[tag=testDistance,scores={testRespawnID=45}] run scoreboard players set @s respawnZ 4663
execute as @s[tag=testDistance,scores={testRespawnID=45}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=45}] run tp @s 5314.10 37.00 4663.21 214.71 8.89
scoreboard players set @s testRespawnID 46
execute as @s[tag=testDistance,scores={testRespawnID=46}] run scoreboard players set @s respawnX 5357
execute as @s[tag=testDistance,scores={testRespawnID=46}] run scoreboard players set @s respawnY 32
execute as @s[tag=testDistance,scores={testRespawnID=46}] run scoreboard players set @s respawnZ 4654
execute as @s[tag=testDistance,scores={testRespawnID=46}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=46}] run tp @s 5357.66 32.00 4654.65 195.22 4.87
scoreboard players set @s testRespawnID 47
execute as @s[tag=testDistance,scores={testRespawnID=47}] run scoreboard players set @s respawnX 5416
execute as @s[tag=testDistance,scores={testRespawnID=47}] run scoreboard players set @s respawnY 36
execute as @s[tag=testDistance,scores={testRespawnID=47}] run scoreboard players set @s respawnZ 4670
execute as @s[tag=testDistance,scores={testRespawnID=47}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=47}] run tp @s 5416.80 36.00 4670.31 167.64 11.27
scoreboard players set @s testRespawnID 48
execute as @s[tag=testDistance,scores={testRespawnID=48}] run scoreboard players set @s respawnX 5511
execute as @s[tag=testDistance,scores={testRespawnID=48}] run scoreboard players set @s respawnY 55
execute as @s[tag=testDistance,scores={testRespawnID=48}] run scoreboard players set @s respawnZ 4693
execute as @s[tag=testDistance,scores={testRespawnID=48}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=48}] run tp @s 5511.94 55.00 4693.66 142.93 13.28
scoreboard players set @s testRespawnID 49
execute as @s[tag=testDistance,scores={testRespawnID=49}] run scoreboard players set @s respawnX 5639
execute as @s[tag=testDistance,scores={testRespawnID=49}] run scoreboard players set @s respawnY 80
execute as @s[tag=testDistance,scores={testRespawnID=49}] run scoreboard players set @s respawnZ 4693
execute as @s[tag=testDistance,scores={testRespawnID=49}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=49}] run tp @s 5639.30 80.00 4693.10 140.11 8.56
scoreboard players set @s testRespawnID 50
execute as @s[tag=testDistance,scores={testRespawnID=50}] run scoreboard players set @s respawnX 5685
execute as @s[tag=testDistance,scores={testRespawnID=50}] run scoreboard players set @s respawnY 104
execute as @s[tag=testDistance,scores={testRespawnID=50}] run scoreboard players set @s respawnZ 4621
execute as @s[tag=testDistance,scores={testRespawnID=50}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=50}] run tp @s 5685.37 104.00 4621.77 119.91 14.42
scoreboard players set @s testRespawnID 51
execute as @s[tag=testDistance,scores={testRespawnID=51}] run scoreboard players set @s respawnX 5647
execute as @s[tag=testDistance,scores={testRespawnID=51}] run scoreboard players set @s respawnY 76
execute as @s[tag=testDistance,scores={testRespawnID=51}] run scoreboard players set @s respawnZ 4503
execute as @s[tag=testDistance,scores={testRespawnID=51}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=51}] run tp @s 5647.31 76.00 4503.54 85.60 13.01
scoreboard players set @s testRespawnID 52
execute as @s[tag=testDistance,scores={testRespawnID=52}] run scoreboard players set @s respawnX 5706
execute as @s[tag=testDistance,scores={testRespawnID=52}] run scoreboard players set @s respawnY 101
execute as @s[tag=testDistance,scores={testRespawnID=52}] run scoreboard players set @s respawnZ 4406
execute as @s[tag=testDistance,scores={testRespawnID=52}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=52}] run tp @s 5706.67 101.00 4406.68 90.97 11.05
scoreboard players set @s testRespawnID 53
execute as @s[tag=testDistance,scores={testRespawnID=53}] run scoreboard players set @s respawnX 5729
execute as @s[tag=testDistance,scores={testRespawnID=53}] run scoreboard players set @s respawnY 103
execute as @s[tag=testDistance,scores={testRespawnID=53}] run scoreboard players set @s respawnZ 4352
execute as @s[tag=testDistance,scores={testRespawnID=53}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=53}] run tp @s 5729.70 103.00 4352.61 91.84 0.74
scoreboard players set @s testRespawnID 54
execute as @s[tag=testDistance,scores={testRespawnID=54}] run scoreboard players set @s respawnX 5681
execute as @s[tag=testDistance,scores={testRespawnID=54}] run scoreboard players set @s respawnY 95
execute as @s[tag=testDistance,scores={testRespawnID=54}] run scoreboard players set @s respawnZ 4267
execute as @s[tag=testDistance,scores={testRespawnID=54}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=54}] run tp @s 5681.83 95.00 4267.74 88.20 11.00
scoreboard players set @s testRespawnID 55
execute as @s[tag=testDistance,scores={testRespawnID=55}] run scoreboard players set @s respawnX 5706
execute as @s[tag=testDistance,scores={testRespawnID=55}] run scoreboard players set @s respawnY 82
execute as @s[tag=testDistance,scores={testRespawnID=55}] run scoreboard players set @s respawnZ 4207
execute as @s[tag=testDistance,scores={testRespawnID=55}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=55}] run tp @s 5706.60 82.00 4207.51 86.47 9.53
scoreboard players set @s testRespawnID 56
execute as @s[tag=testDistance,scores={testRespawnID=56}] run scoreboard players set @s respawnX 5736
execute as @s[tag=testDistance,scores={testRespawnID=56}] run scoreboard players set @s respawnY 93
execute as @s[tag=testDistance,scores={testRespawnID=56}] run scoreboard players set @s respawnZ 4168
execute as @s[tag=testDistance,scores={testRespawnID=56}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=56}] run tp @s 5736.59 93.00 4168.90 66.59 12.74
scoreboard players set @s testRespawnID 57
execute as @s[tag=testDistance,scores={testRespawnID=57}] run scoreboard players set @s respawnX 5609
execute as @s[tag=testDistance,scores={testRespawnID=57}] run scoreboard players set @s respawnY 66
execute as @s[tag=testDistance,scores={testRespawnID=57}] run scoreboard players set @s respawnZ 4145
execute as @s[tag=testDistance,scores={testRespawnID=57}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=57}] run tp @s 5609.22 66.00 4145.74 49.71 10.73
scoreboard players set @s testRespawnID 58
execute as @s[tag=testDistance,scores={testRespawnID=58}] run scoreboard players set @s respawnX 5590
execute as @s[tag=testDistance,scores={testRespawnID=58}] run scoreboard players set @s respawnY 87
execute as @s[tag=testDistance,scores={testRespawnID=58}] run scoreboard players set @s respawnZ 4094
execute as @s[tag=testDistance,scores={testRespawnID=58}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=58}] run tp @s 5590.40 87.00 4094.44 32.66 14.96
scoreboard players set @s testRespawnID 59
execute as @s[tag=testDistance,scores={testRespawnID=59}] run scoreboard players set @s respawnX 5530
execute as @s[tag=testDistance,scores={testRespawnID=59}] run scoreboard players set @s respawnY 47
execute as @s[tag=testDistance,scores={testRespawnID=59}] run scoreboard players set @s respawnZ 4148
execute as @s[tag=testDistance,scores={testRespawnID=59}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=59}] run tp @s 5530.08 47.00 4148.08 23.97 8.34
scoreboard players set @s testRespawnID 60
execute as @s[tag=testDistance,scores={testRespawnID=60}] run scoreboard players set @s respawnX 5421
execute as @s[tag=testDistance,scores={testRespawnID=60}] run scoreboard players set @s respawnY 76
execute as @s[tag=testDistance,scores={testRespawnID=60}] run scoreboard players set @s respawnZ 4125
execute as @s[tag=testDistance,scores={testRespawnID=60}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=60}] run tp @s 5421.78 76.00 4125.46 -11.81 16.81
scoreboard players set @s testRespawnID 61
execute as @s[tag=testDistance,scores={testRespawnID=61}] run scoreboard players set @s respawnX 5356
execute as @s[tag=testDistance,scores={testRespawnID=61}] run scoreboard players set @s respawnY 81
execute as @s[tag=testDistance,scores={testRespawnID=61}] run scoreboard players set @s respawnZ 4128
execute as @s[tag=testDistance,scores={testRespawnID=61}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=61}] run tp @s 5356.08 81.00 4128.69 -49.82 14.26
scoreboard players set @s testRespawnID 62
execute as @s[tag=testDistance,scores={testRespawnID=62}] run scoreboard players set @s respawnX 5257
execute as @s[tag=testDistance,scores={testRespawnID=62}] run scoreboard players set @s respawnY 106
execute as @s[tag=testDistance,scores={testRespawnID=62}] run scoreboard players set @s respawnZ 4073
execute as @s[tag=testDistance,scores={testRespawnID=62}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=62}] run tp @s 5257.02 106.00 4073.85 -6.70 5.08
scoreboard players set @s testRespawnID 63
execute as @s[tag=testDistance,scores={testRespawnID=63}] run scoreboard players set @s respawnX 5202
execute as @s[tag=testDistance,scores={testRespawnID=63}] run scoreboard players set @s respawnY 113
execute as @s[tag=testDistance,scores={testRespawnID=63}] run scoreboard players set @s respawnZ 4111
execute as @s[tag=testDistance,scores={testRespawnID=63}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=63}] run tp @s 5202.84 113.00 4111.70 -44.49 4.97
scoreboard players set @s testRespawnID 64
execute as @s[tag=testDistance,scores={testRespawnID=64}] run scoreboard players set @s respawnX 5175
execute as @s[tag=testDistance,scores={testRespawnID=64}] run scoreboard players set @s respawnY 109
execute as @s[tag=testDistance,scores={testRespawnID=64}] run scoreboard players set @s respawnZ 4171
execute as @s[tag=testDistance,scores={testRespawnID=64}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=64}] run tp @s 5175.71 109.00 4171.05 -40.69 7.31
scoreboard players set @s testRespawnID 65
execute as @s[tag=testDistance,scores={testRespawnID=65}] run scoreboard players set @s respawnX 5112
execute as @s[tag=testDistance,scores={testRespawnID=65}] run scoreboard players set @s respawnY 114
execute as @s[tag=testDistance,scores={testRespawnID=65}] run scoreboard players set @s respawnZ 4207
execute as @s[tag=testDistance,scores={testRespawnID=65}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=65}] run tp @s 5112.09 114.00 4207.72 -43.52 4.05
scoreboard players set @s testRespawnID 66
execute as @s[tag=testDistance,scores={testRespawnID=66}] run scoreboard players set @s respawnX 5075
execute as @s[tag=testDistance,scores={testRespawnID=66}] run scoreboard players set @s respawnY 116
execute as @s[tag=testDistance,scores={testRespawnID=66}] run scoreboard players set @s respawnZ 4267
execute as @s[tag=testDistance,scores={testRespawnID=66}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=66}] run tp @s 5075.17 116.00 4267.40 -52.15 3.62
scoreboard players set @s testRespawnID 67
execute as @s[tag=testDistance,scores={testRespawnID=67}] run scoreboard players set @s respawnX 5077
execute as @s[tag=testDistance,scores={testRespawnID=67}] run scoreboard players set @s respawnY 114
execute as @s[tag=testDistance,scores={testRespawnID=67}] run scoreboard players set @s respawnZ 4425
execute as @s[tag=testDistance,scores={testRespawnID=67}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=67}] run tp @s 5077.68 114.00 4425.52 -87.33 0.52
scoreboard players set @s testRespawnID 68
execute as @s[tag=testDistance,scores={testRespawnID=68}] run scoreboard players set @s respawnX 5092
execute as @s[tag=testDistance,scores={testRespawnID=68}] run scoreboard players set @s respawnY 92
execute as @s[tag=testDistance,scores={testRespawnID=68}] run scoreboard players set @s respawnZ 4511
execute as @s[tag=testDistance,scores={testRespawnID=68}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=68}] run tp @s 5092.57 92.00 4511.90 -72.02 11.92
scoreboard players set @s testRespawnID 69
execute as @s[tag=testDistance,scores={testRespawnID=69}] run scoreboard players set @s respawnX 5130
execute as @s[tag=testDistance,scores={testRespawnID=69}] run scoreboard players set @s respawnY 104
execute as @s[tag=testDistance,scores={testRespawnID=69}] run scoreboard players set @s respawnZ 4578
execute as @s[tag=testDistance,scores={testRespawnID=69}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=69}] run tp @s 5130.22 104.00 4578.94 -83.75 16.48
scoreboard players set @s testRespawnID 70
execute as @s[tag=testDistance,scores={testRespawnID=70}] run scoreboard players set @s respawnX 5122
execute as @s[tag=testDistance,scores={testRespawnID=70}] run scoreboard players set @s respawnY 92
execute as @s[tag=testDistance,scores={testRespawnID=70}] run scoreboard players set @s respawnZ 4645
execute as @s[tag=testDistance,scores={testRespawnID=70}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=70}] run tp @s 5122.01 92.00 4645.61 -109.00 17.30


#############
# Hogsmeade #
#############
scoreboard players set @s testRespawnID 71
execute as @s[tag=testDistance,scores={testRespawnID=71}] run scoreboard players set @s respawnX 5539
execute as @s[tag=testDistance,scores={testRespawnID=71}] run scoreboard players set @s respawnY 88
execute as @s[tag=testDistance,scores={testRespawnID=71}] run scoreboard players set @s respawnZ 2333
execute as @s[tag=testDistance,scores={testRespawnID=71}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=71}] run tp @s 5539.45 88.13 2333.78 400.53 4.65
scoreboard players set @s testRespawnID 72
execute as @s[tag=testDistance,scores={testRespawnID=72}] run scoreboard players set @s respawnX 5467
execute as @s[tag=testDistance,scores={testRespawnID=72}] run scoreboard players set @s respawnY 60
execute as @s[tag=testDistance,scores={testRespawnID=72}] run scoreboard players set @s respawnZ 2265
execute as @s[tag=testDistance,scores={testRespawnID=72}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=72}] run tp @s 5467.05 60.38 2265.73 394.56 4.27
scoreboard players set @s testRespawnID 73
execute as @s[tag=testDistance,scores={testRespawnID=73}] run scoreboard players set @s respawnX 5377
execute as @s[tag=testDistance,scores={testRespawnID=73}] run scoreboard players set @s respawnY 48
execute as @s[tag=testDistance,scores={testRespawnID=73}] run scoreboard players set @s respawnZ 2231
execute as @s[tag=testDistance,scores={testRespawnID=73}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=73}] run tp @s 5377.20 48.38 2231.30 376.81 7.47
scoreboard players set @s testRespawnID 74
execute as @s[tag=testDistance,scores={testRespawnID=74}] run scoreboard players set @s respawnX 5278
execute as @s[tag=testDistance,scores={testRespawnID=74}] run scoreboard players set @s respawnY 34
execute as @s[tag=testDistance,scores={testRespawnID=74}] run scoreboard players set @s respawnZ 2247
execute as @s[tag=testDistance,scores={testRespawnID=74}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=74}] run tp @s 5278.43 34.75 2247.24 324.36 0.90
scoreboard players set @s testRespawnID 75
execute as @s[tag=testDistance,scores={testRespawnID=75}] run scoreboard players set @s respawnX 5219
execute as @s[tag=testDistance,scores={testRespawnID=75}] run scoreboard players set @s respawnY 30
execute as @s[tag=testDistance,scores={testRespawnID=75}] run scoreboard players set @s respawnZ 2234
execute as @s[tag=testDistance,scores={testRespawnID=75}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=75}] run tp @s 5219.71 30.38 2234.89 344.83 7.25
scoreboard players set @s testRespawnID 76
execute as @s[tag=testDistance,scores={testRespawnID=76}] run scoreboard players set @s respawnX 5173
execute as @s[tag=testDistance,scores={testRespawnID=76}] run scoreboard players set @s respawnY 65
execute as @s[tag=testDistance,scores={testRespawnID=76}] run scoreboard players set @s respawnZ 2166
execute as @s[tag=testDistance,scores={testRespawnID=76}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=76}] run tp @s 5173.53 65.75 2166.05 338.20 11.98
scoreboard players set @s testRespawnID 77
execute as @s[tag=testDistance,scores={testRespawnID=77}] run scoreboard players set @s respawnX 5131
execute as @s[tag=testDistance,scores={testRespawnID=77}] run scoreboard players set @s respawnY 63
execute as @s[tag=testDistance,scores={testRespawnID=77}] run scoreboard players set @s respawnZ 2162
execute as @s[tag=testDistance,scores={testRespawnID=77}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=77}] run tp @s 5131.61 63.88 2162.05 325.61 13.82
scoreboard players set @s testRespawnID 78
execute as @s[tag=testDistance,scores={testRespawnID=78}] run scoreboard players set @s respawnX 5171
execute as @s[tag=testDistance,scores={testRespawnID=78}] run scoreboard players set @s respawnY 24
execute as @s[tag=testDistance,scores={testRespawnID=78}] run scoreboard players set @s respawnZ 2312
execute as @s[tag=testDistance,scores={testRespawnID=78}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=78}] run tp @s 5171.17 24.00 2312.10 265.66 2.80
scoreboard players set @s testRespawnID 79
execute as @s[tag=testDistance,scores={testRespawnID=79}] run scoreboard players set @s respawnX 5101
execute as @s[tag=testDistance,scores={testRespawnID=79}] run scoreboard players set @s respawnY 23
execute as @s[tag=testDistance,scores={testRespawnID=79}] run scoreboard players set @s respawnZ 2413
execute as @s[tag=testDistance,scores={testRespawnID=79}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=79}] run tp @s 5101.79 23.00 2413.55 262.95 -2.52
scoreboard players set @s testRespawnID 80
execute as @s[tag=testDistance,scores={testRespawnID=80}] run scoreboard players set @s respawnX 5082
execute as @s[tag=testDistance,scores={testRespawnID=80}] run scoreboard players set @s respawnY 24
execute as @s[tag=testDistance,scores={testRespawnID=80}] run scoreboard players set @s respawnZ 2473
execute as @s[tag=testDistance,scores={testRespawnID=80}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=80}] run tp @s 5082.45 24.00 2473.25 245.41 1.66
scoreboard players set @s testRespawnID 81
execute as @s[tag=testDistance,scores={testRespawnID=81}] run scoreboard players set @s respawnX 5086
execute as @s[tag=testDistance,scores={testRespawnID=81}] run scoreboard players set @s respawnY 38
execute as @s[tag=testDistance,scores={testRespawnID=81}] run scoreboard players set @s respawnZ 2545
execute as @s[tag=testDistance,scores={testRespawnID=81}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=81}] run tp @s 5086.01 38.25 2545.40 223.31 6.55
scoreboard players set @s testRespawnID 82
execute as @s[tag=testDistance,scores={testRespawnID=82}] run scoreboard players set @s respawnX 5144
execute as @s[tag=testDistance,scores={testRespawnID=82}] run scoreboard players set @s respawnY 88
execute as @s[tag=testDistance,scores={testRespawnID=82}] run scoreboard players set @s respawnZ 2600
execute as @s[tag=testDistance,scores={testRespawnID=82}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=82}] run tp @s 5144.65 88.63 2600.88 220.44 -6.92
scoreboard players set @s testRespawnID 83
execute as @s[tag=testDistance,scores={testRespawnID=83}] run scoreboard players set @s respawnX 5140
execute as @s[tag=testDistance,scores={testRespawnID=83}] run scoreboard players set @s respawnY 117
execute as @s[tag=testDistance,scores={testRespawnID=83}] run scoreboard players set @s respawnZ 2659
execute as @s[tag=testDistance,scores={testRespawnID=83}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=83}] run tp @s 5140.93 117.50 2659.05 223.64 9.70
scoreboard players set @s testRespawnID 84
execute as @s[tag=testDistance,scores={testRespawnID=84}] run scoreboard players set @s respawnX 5134
execute as @s[tag=testDistance,scores={testRespawnID=84}] run scoreboard players set @s respawnY 87
execute as @s[tag=testDistance,scores={testRespawnID=84}] run scoreboard players set @s respawnZ 2732
execute as @s[tag=testDistance,scores={testRespawnID=84}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=84}] run tp @s 5134.08 87.00 2732.58 279.40 4.54
scoreboard players set @s testRespawnID 85
execute as @s[tag=testDistance,scores={testRespawnID=85}] run scoreboard players set @s respawnX 5183
execute as @s[tag=testDistance,scores={testRespawnID=85}] run scoreboard players set @s respawnY 76
execute as @s[tag=testDistance,scores={testRespawnID=85}] run scoreboard players set @s respawnZ 2773
execute as @s[tag=testDistance,scores={testRespawnID=85}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=85}] run tp @s 5183.49 76.63 2773.91 219.30 -1.49
scoreboard players set @s testRespawnID 86
execute as @s[tag=testDistance,scores={testRespawnID=86}] run scoreboard players set @s respawnX 5255
execute as @s[tag=testDistance,scores={testRespawnID=86}] run scoreboard players set @s respawnY 71
execute as @s[tag=testDistance,scores={testRespawnID=86}] run scoreboard players set @s respawnZ 2789
execute as @s[tag=testDistance,scores={testRespawnID=86}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=86}] run tp @s 5255.01 71.50 2789.35 138.45 -1.22
scoreboard players set @s testRespawnID 87
execute as @s[tag=testDistance,scores={testRespawnID=87}] run scoreboard players set @s respawnX 5349
execute as @s[tag=testDistance,scores={testRespawnID=87}] run scoreboard players set @s respawnY 75
execute as @s[tag=testDistance,scores={testRespawnID=87}] run scoreboard players set @s respawnZ 2805
execute as @s[tag=testDistance,scores={testRespawnID=87}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=87}] run tp @s 5349.55 75.63 2805.71 157.67 -4.58
scoreboard players set @s testRespawnID 88
execute as @s[tag=testDistance,scores={testRespawnID=88}] run scoreboard players set @s respawnX 5503
execute as @s[tag=testDistance,scores={testRespawnID=88}] run scoreboard players set @s respawnY 62
execute as @s[tag=testDistance,scores={testRespawnID=88}] run scoreboard players set @s respawnZ 2795
execute as @s[tag=testDistance,scores={testRespawnID=88}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=88}] run tp @s 5503.83 62.00 2795.32 146.27 -2.03
scoreboard players set @s testRespawnID 89
execute as @s[tag=testDistance,scores={testRespawnID=89}] run scoreboard players set @s respawnX 5554
execute as @s[tag=testDistance,scores={testRespawnID=89}] run scoreboard players set @s respawnY 71
execute as @s[tag=testDistance,scores={testRespawnID=89}] run scoreboard players set @s respawnZ 2767
execute as @s[tag=testDistance,scores={testRespawnID=89}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=89}] run tp @s 5554.48 71.88 2767.04 112.12 5.08
scoreboard players set @s testRespawnID 90
execute as @s[tag=testDistance,scores={testRespawnID=90}] run scoreboard players set @s respawnX 5624
execute as @s[tag=testDistance,scores={testRespawnID=90}] run scoreboard players set @s respawnY 66
execute as @s[tag=testDistance,scores={testRespawnID=90}] run scoreboard players set @s respawnZ 2723
execute as @s[tag=testDistance,scores={testRespawnID=90}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=90}] run tp @s 5624.81 66.75 2723.16 112.88 13.01
scoreboard players set @s testRespawnID 91
execute as @s[tag=testDistance,scores={testRespawnID=91}] run scoreboard players set @s respawnX 5577
execute as @s[tag=testDistance,scores={testRespawnID=91}] run scoreboard players set @s respawnY 51
execute as @s[tag=testDistance,scores={testRespawnID=91}] run scoreboard players set @s respawnZ 2658
execute as @s[tag=testDistance,scores={testRespawnID=91}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=91}] run tp @s 5577.58 51.25 2658.63 57.71 1.61
scoreboard players set @s testRespawnID 92
execute as @s[tag=testDistance,scores={testRespawnID=92}] run scoreboard players set @s respawnX 5599
execute as @s[tag=testDistance,scores={testRespawnID=92}] run scoreboard players set @s respawnY 71
execute as @s[tag=testDistance,scores={testRespawnID=92}] run scoreboard players set @s respawnZ 2525
execute as @s[tag=testDistance,scores={testRespawnID=92}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=92}] run tp @s 5599.29 71.63 2525.34 105.00 2.04
scoreboard players set @s testRespawnID 93
execute as @s[tag=testDistance,scores={testRespawnID=93}] run scoreboard players set @s respawnX 5599
execute as @s[tag=testDistance,scores={testRespawnID=93}] run scoreboard players set @s respawnY 81
execute as @s[tag=testDistance,scores={testRespawnID=93}] run scoreboard players set @s respawnZ 2395
execute as @s[tag=testDistance,scores={testRespawnID=93}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=93}] run tp @s 5599.70 81.88 2395.25 59.07 6.22
scoreboard players set @s testRespawnID 94
execute as @s[tag=testDistance,scores={testRespawnID=94}] run scoreboard players set @s respawnX 5540
execute as @s[tag=testDistance,scores={testRespawnID=94}] run scoreboard players set @s respawnY 90
execute as @s[tag=testDistance,scores={testRespawnID=94}] run scoreboard players set @s respawnZ 2282
execute as @s[tag=testDistance,scores={testRespawnID=94}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=94}] run tp @s 5540.65 90.50 2282.71 57.28 8.83


#####################
# Станция 'Хогсмид' #
#####################
scoreboard players set @s testRespawnID 95
execute as @s[tag=testDistance,scores={testRespawnID=95}] run scoreboard players set @s respawnX 624
execute as @s[tag=testDistance,scores={testRespawnID=95}] run scoreboard players set @s respawnY 82
execute as @s[tag=testDistance,scores={testRespawnID=95}] run scoreboard players set @s respawnZ -1909
execute as @s[tag=testDistance,scores={testRespawnID=95}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=95}] run tp @s 624.86 82.00 -1909.51 320.16 8.34
scoreboard players set @s testRespawnID 96
execute as @s[tag=testDistance,scores={testRespawnID=96}] run scoreboard players set @s respawnX 709
execute as @s[tag=testDistance,scores={testRespawnID=96}] run scoreboard players set @s respawnY 74
execute as @s[tag=testDistance,scores={testRespawnID=96}] run scoreboard players set @s respawnZ -1930
execute as @s[tag=testDistance,scores={testRespawnID=96}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=96}] run tp @s 709.65 74.00 -1930.35 321.25 8.12
scoreboard players set @s testRespawnID 97
execute as @s[tag=testDistance,scores={testRespawnID=97}] run scoreboard players set @s respawnX 768
execute as @s[tag=testDistance,scores={testRespawnID=97}] run scoreboard players set @s respawnY 72
execute as @s[tag=testDistance,scores={testRespawnID=97}] run scoreboard players set @s respawnZ -2006
execute as @s[tag=testDistance,scores={testRespawnID=97}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=97}] run tp @s 768.97 72.00 -2006.09 341.82 5.35
scoreboard players set @s testRespawnID 98
execute as @s[tag=testDistance,scores={testRespawnID=98}] run scoreboard players set @s respawnX 807
execute as @s[tag=testDistance,scores={testRespawnID=98}] run scoreboard players set @s respawnY 73
execute as @s[tag=testDistance,scores={testRespawnID=98}] run scoreboard players set @s respawnZ -1984
execute as @s[tag=testDistance,scores={testRespawnID=98}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=98}] run tp @s 807.09 73.00 -1984.44 401.50 9.43
scoreboard players set @s testRespawnID 99
execute as @s[tag=testDistance,scores={testRespawnID=99}] run scoreboard players set @s respawnX 874
execute as @s[tag=testDistance,scores={testRespawnID=99}] run scoreboard players set @s respawnY 60
execute as @s[tag=testDistance,scores={testRespawnID=99}] run scoreboard players set @s respawnZ -1871
execute as @s[tag=testDistance,scores={testRespawnID=99}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=99}] run tp @s 874.96 60.00 -1871.58 393.68 5.79
scoreboard players set @s testRespawnID 100
execute as @s[tag=testDistance,scores={testRespawnID=100}] run scoreboard players set @s respawnX 959
execute as @s[tag=testDistance,scores={testRespawnID=100}] run scoreboard players set @s respawnY 98
execute as @s[tag=testDistance,scores={testRespawnID=100}] run scoreboard players set @s respawnZ -1821
execute as @s[tag=testDistance,scores={testRespawnID=100}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=100}] run tp @s 959.55 98.00 -1821.22 419.58 14.85
scoreboard players set @s testRespawnID 101
execute as @s[tag=testDistance,scores={testRespawnID=101}] run scoreboard players set @s respawnX 910
execute as @s[tag=testDistance,scores={testRespawnID=101}] run scoreboard players set @s respawnY 101
execute as @s[tag=testDistance,scores={testRespawnID=101}] run scoreboard players set @s respawnZ -1874
execute as @s[tag=testDistance,scores={testRespawnID=101}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=101}] run tp @s 910.63 101.00 -1874.55 397.37 15.23
scoreboard players set @s testRespawnID 102
execute as @s[tag=testDistance,scores={testRespawnID=102}] run scoreboard players set @s respawnX 931
execute as @s[tag=testDistance,scores={testRespawnID=102}] run scoreboard players set @s respawnY 51
execute as @s[tag=testDistance,scores={testRespawnID=102}] run scoreboard players set @s respawnZ -1765
execute as @s[tag=testDistance,scores={testRespawnID=102}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=102}] run tp @s 931.61 51.00 -1765.54 424.13 6.49
scoreboard players set @s testRespawnID 103
execute as @s[tag=testDistance,scores={testRespawnID=103}] run scoreboard players set @s respawnX 976
execute as @s[tag=testDistance,scores={testRespawnID=103}] run scoreboard players set @s respawnY 33
execute as @s[tag=testDistance,scores={testRespawnID=103}] run scoreboard players set @s respawnZ -1639
execute as @s[tag=testDistance,scores={testRespawnID=103}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=103}] run tp @s 976.70 33.00 -1639.43 427.45 0.03
scoreboard players set @s testRespawnID 104
execute as @s[tag=testDistance,scores={testRespawnID=104}] run scoreboard players set @s respawnX 976
execute as @s[tag=testDistance,scores={testRespawnID=104}] run scoreboard players set @s respawnY 22
execute as @s[tag=testDistance,scores={testRespawnID=104}] run scoreboard players set @s respawnZ -1559
execute as @s[tag=testDistance,scores={testRespawnID=104}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=104}] run tp @s 976.27 22.00 -1559.00 457.36 3.07
scoreboard players set @s testRespawnID 105
execute as @s[tag=testDistance,scores={testRespawnID=105}] run scoreboard players set @s respawnX 895
execute as @s[tag=testDistance,scores={testRespawnID=105}] run scoreboard players set @s respawnY 15
execute as @s[tag=testDistance,scores={testRespawnID=105}] run scoreboard players set @s respawnZ -1518
execute as @s[tag=testDistance,scores={testRespawnID=105}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=105}] run tp @s 895.18 15.00 -1518.78 402.31 4.27
scoreboard players set @s testRespawnID 106
execute as @s[tag=testDistance,scores={testRespawnID=106}] run scoreboard players set @s respawnX 850
execute as @s[tag=testDistance,scores={testRespawnID=106}] run scoreboard players set @s respawnY 21
execute as @s[tag=testDistance,scores={testRespawnID=106}] run scoreboard players set @s respawnZ -1505
execute as @s[tag=testDistance,scores={testRespawnID=106}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=106}] run tp @s 850.90 21.00 -1505.71 611.94 -1.92
scoreboard players set @s testRespawnID 107
execute as @s[tag=testDistance,scores={testRespawnID=107}] run scoreboard players set @s respawnX 793
execute as @s[tag=testDistance,scores={testRespawnID=107}] run scoreboard players set @s respawnY 45
execute as @s[tag=testDistance,scores={testRespawnID=107}] run scoreboard players set @s respawnZ -1549
execute as @s[tag=testDistance,scores={testRespawnID=107}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=107}] run tp @s 793.45 45.00 -1549.89 1001.25 12.36
scoreboard players set @s testRespawnID 108
execute as @s[tag=testDistance,scores={testRespawnID=108}] run scoreboard players set @s respawnX 788
execute as @s[tag=testDistance,scores={testRespawnID=108}] run scoreboard players set @s respawnY 40
execute as @s[tag=testDistance,scores={testRespawnID=108}] run scoreboard players set @s respawnZ -1641
execute as @s[tag=testDistance,scores={testRespawnID=108}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=108}] run tp @s 788.39 40.00 -1641.93 947.22 -0.35
scoreboard players set @s testRespawnID 109
execute as @s[tag=testDistance,scores={testRespawnID=109}] run scoreboard players set @s respawnX 685
execute as @s[tag=testDistance,scores={testRespawnID=109}] run scoreboard players set @s respawnY 52
execute as @s[tag=testDistance,scores={testRespawnID=109}] run scoreboard players set @s respawnZ -1695
execute as @s[tag=testDistance,scores={testRespawnID=109}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=109}] run tp @s 685.17 52.00 -1695.73 957.49 4.10
scoreboard players set @s testRespawnID 110
execute as @s[tag=testDistance,scores={testRespawnID=110}] run scoreboard players set @s respawnX 656
execute as @s[tag=testDistance,scores={testRespawnID=110}] run scoreboard players set @s respawnY 52
execute as @s[tag=testDistance,scores={testRespawnID=110}] run scoreboard players set @s respawnZ -1779
execute as @s[tag=testDistance,scores={testRespawnID=110}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=110}] run tp @s 656.37 52.00 -1779.28 1038.33 3.02
scoreboard players set @s testRespawnID 111
execute as @s[tag=testDistance,scores={testRespawnID=111}] run scoreboard players set @s respawnX 638
execute as @s[tag=testDistance,scores={testRespawnID=111}] run scoreboard players set @s respawnY 76
execute as @s[tag=testDistance,scores={testRespawnID=111}] run scoreboard players set @s respawnZ -1868
execute as @s[tag=testDistance,scores={testRespawnID=111}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=111}] run tp @s 638.64 76.00 -1868.07 976.98 10.02
scoreboard players set @s testRespawnID 112
execute as @s[tag=testDistance,scores={testRespawnID=112}] run scoreboard players set @s respawnX 674
execute as @s[tag=testDistance,scores={testRespawnID=112}] run scoreboard players set @s respawnY 91
execute as @s[tag=testDistance,scores={testRespawnID=112}] run scoreboard players set @s respawnZ -1906
execute as @s[tag=testDistance,scores={testRespawnID=112}] run function hp:barrier/distance_to_barrier_point
execute as @s[tag=tpToRespawnPoint,scores={respawnID=112}] run tp @s 674.06 91.00 -1906.57 1049.03 19.36
scoreboard players set @s testRespawnID 113
execute as @s[tag=testDistance,scores={testRespawnID=113}] run scoreboard players set @s respawnX 5114
execute as @s[tag=testDistance,scores={testRespawnID=113}] run scoreboard players set @s respawnY 27
execute as @s[tag=testDistance,scores={testRespawnID=113}] run scoreboard players set @s respawnZ 10080
execute as @s[tag=testDistance,scores={testRespawnID=113}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=113}] run tp @s 5114.92 27.00 10080.04 -236.96 -18.87


tag @s[tag=testDistance] remove testDistance
tag @s[tag=tpToRespawnPoint] remove tpToRespawnPoint
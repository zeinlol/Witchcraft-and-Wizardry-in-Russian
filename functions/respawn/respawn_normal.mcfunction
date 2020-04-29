execute store result score @s playerRespawnX run data get entity @s Pos[0]
execute store result score @s playerRespawnY run data get entity @s Pos[1]
execute store result score @s playerRespawnZ run data get entity @s Pos[2]
scoreboard players set @s[tag=testDistance] respawnID 0
scoreboard players set @s[tag=testDistance] respawnDistance 0

# Причал
scoreboard players set @s testRespawnID 0
execute as @s[tag=testDistance,scores={testRespawnID=0}] run scoreboard players set @s respawnX 953
execute as @s[tag=testDistance,scores={testRespawnID=0}] run scoreboard players set @s respawnY 18
execute as @s[tag=testDistance,scores={testRespawnID=0}] run scoreboard players set @s respawnZ 318
execute as @s[tag=testDistance,scores={testRespawnID=0}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=0}] run tp @s 953.80 18.00 318.24 -1322.66 0.99

# In front of Большой Зал
scoreboard players set @s testRespawnID 1
execute as @s[tag=testDistance,scores={testRespawnID=1}] run scoreboard players set @s respawnX 806
execute as @s[tag=testDistance,scores={testRespawnID=1}] run scoreboard players set @s respawnY 66
execute as @s[tag=testDistance,scores={testRespawnID=1}] run scoreboard players set @s respawnZ 324
execute as @s[tag=testDistance,scores={testRespawnID=1}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=1}] run tp @s 806.03 66.00 324.49 -1341.29 -8.19

# Большой Зал
scoreboard players set @s testRespawnID 2
execute as @s[tag=testDistance,scores={testRespawnID=2}] run scoreboard players set @s respawnX 759
execute as @s[tag=testDistance,scores={testRespawnID=2}] run scoreboard players set @s respawnY 67
execute as @s[tag=testDistance,scores={testRespawnID=2}] run scoreboard players set @s respawnZ 347
execute as @s[tag=testDistance,scores={testRespawnID=2}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=2}] run tp @s 759.73 67.00 347.12 -1396.40 -1.78

# Grand Staircase
scoreboard players set @s testRespawnID 3
execute as @s[tag=testDistance,scores={testRespawnID=3}] run scoreboard players set @s respawnX 719
execute as @s[tag=testDistance,scores={testRespawnID=3}] run scoreboard players set @s respawnY 83
execute as @s[tag=testDistance,scores={testRespawnID=3}] run scoreboard players set @s respawnZ 296
execute as @s[tag=testDistance,scores={testRespawnID=3}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=3}] run tp @s 719.65 83.00 296.13 -1474.75 1.47

# Grand Staircase bottom
scoreboard players set @s testRespawnID 4
execute as @s[tag=testDistance,scores={testRespawnID=4}] run scoreboard players set @s respawnX 720
execute as @s[tag=testDistance,scores={testRespawnID=4}] run scoreboard players set @s respawnY 55
execute as @s[tag=testDistance,scores={testRespawnID=4}] run scoreboard players set @s respawnZ 295
execute as @s[tag=testDistance,scores={testRespawnID=4}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=4}] run tp @s 720.18 55.00 295.48 -1471.54 0.77

# Grand Staircase Top
scoreboard players set @s testRespawnID 5
execute as @s[tag=testDistance,scores={testRespawnID=5}] run scoreboard players set @s respawnX 720
execute as @s[tag=testDistance,scores={testRespawnID=5}] run scoreboard players set @s respawnY 117
execute as @s[tag=testDistance,scores={testRespawnID=5}] run scoreboard players set @s respawnZ 318
execute as @s[tag=testDistance,scores={testRespawnID=5}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=5}] run tp @s 720.03 117.00 318.82 -1581.49 6.41

# Hogwarts Inside
scoreboard players set @s testRespawnID 6
execute as @s[tag=testDistance,scores={testRespawnID=6}] run scoreboard players set @s respawnX 704
execute as @s[tag=testDistance,scores={testRespawnID=6}] run scoreboard players set @s respawnY 65
execute as @s[tag=testDistance,scores={testRespawnID=6}] run scoreboard players set @s respawnZ 267
execute as @s[tag=testDistance,scores={testRespawnID=6}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=6}] run tp @s 704.51 65.00 267.58 -29.25 -10.38

# Hogwarts Inside
scoreboard players set @s testRespawnID 7
execute as @s[tag=testDistance,scores={testRespawnID=7}] run scoreboard players set @s respawnX 651
execute as @s[tag=testDistance,scores={testRespawnID=7}] run scoreboard players set @s respawnY 75
execute as @s[tag=testDistance,scores={testRespawnID=7}] run scoreboard players set @s respawnZ 293
execute as @s[tag=testDistance,scores={testRespawnID=7}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=7}] run tp @s 651.01 75.00 293.30 -396.84 3.42

# Hogwarts Inside
scoreboard players set @s testRespawnID 8
execute as @s[tag=testDistance,scores={testRespawnID=8}] run scoreboard players set @s respawnX 638
execute as @s[tag=testDistance,scores={testRespawnID=8}] run scoreboard players set @s respawnY 68
execute as @s[tag=testDistance,scores={testRespawnID=8}] run scoreboard players set @s respawnZ 220
execute as @s[tag=testDistance,scores={testRespawnID=8}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=8}] run tp @s 638.97 68.00 220.14 -1085.43 0.10

# Hogwarts Inside
scoreboard players set @s testRespawnID 9
execute as @s[tag=testDistance,scores={testRespawnID=9}] run scoreboard players set @s respawnX 3029
execute as @s[tag=testDistance,scores={testRespawnID=9}] run scoreboard players set @s respawnY 61
execute as @s[tag=testDistance,scores={testRespawnID=9}] run scoreboard players set @s respawnZ 97
execute as @s[tag=testDistance,scores={testRespawnID=9}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=9}] run tp @s 646.91 55.00 254.96 -1247.77 -0.71

# Hogwarts Inside
scoreboard players set @s testRespawnID 10
execute as @s[tag=testDistance,scores={testRespawnID=10}] run scoreboard players set @s respawnX 672
execute as @s[tag=testDistance,scores={testRespawnID=10}] run scoreboard players set @s respawnY 45
execute as @s[tag=testDistance,scores={testRespawnID=10}] run scoreboard players set @s respawnZ 231
execute as @s[tag=testDistance,scores={testRespawnID=10}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=10}] run tp @s 672.07 45.00 231.42 -1043.51 -2.39

# Hogwarts Inside
scoreboard players set @s testRespawnID 11
execute as @s[tag=testDistance,scores={testRespawnID=11}] run scoreboard players set @s respawnX 699
execute as @s[tag=testDistance,scores={testRespawnID=11}] run scoreboard players set @s respawnY 55
execute as @s[tag=testDistance,scores={testRespawnID=11}] run scoreboard players set @s respawnZ 260
execute as @s[tag=testDistance,scores={testRespawnID=11}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=11}] run tp @s 699.00 55.00 260.18 -1035.47 2.22

# Hogwarts Inside
scoreboard players set @s testRespawnID 12
execute as @s[tag=testDistance,scores={testRespawnID=12}] run scoreboard players set @s respawnX 652
execute as @s[tag=testDistance,scores={testRespawnID=12}] run scoreboard players set @s respawnY 67
execute as @s[tag=testDistance,scores={testRespawnID=12}] run scoreboard players set @s respawnZ 292
execute as @s[tag=testDistance,scores={testRespawnID=12}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=12}] run tp @s 652.05 67.00 292.25 -1082.01 2.06

# Hogwarts Inside
scoreboard players set @s testRespawnID 13
execute as @s[tag=testDistance,scores={testRespawnID=13}] run scoreboard players set @s respawnX 652
execute as @s[tag=testDistance,scores={testRespawnID=13}] run scoreboard players set @s respawnY 75
execute as @s[tag=testDistance,scores={testRespawnID=13}] run scoreboard players set @s respawnZ 243
execute as @s[tag=testDistance,scores={testRespawnID=13}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=13}] run tp @s 652.19 75.00 243.85 -941.01 0.92

# Hogwarts Inside
scoreboard players set @s testRespawnID 14
execute as @s[tag=testDistance,scores={testRespawnID=14}] run scoreboard players set @s respawnX 639
execute as @s[tag=testDistance,scores={testRespawnID=14}] run scoreboard players set @s respawnY 75
execute as @s[tag=testDistance,scores={testRespawnID=14}] run scoreboard players set @s respawnZ 300
execute as @s[tag=testDistance,scores={testRespawnID=14}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=14}] run tp @s 639.45 75.00 300.99 -1228.72 2.28


# Hospital Courtyard
scoreboard players set @s testRespawnID 15
execute as @s[tag=testDistance,scores={testRespawnID=15}] run scoreboard players set @s respawnX 698
execute as @s[tag=testDistance,scores={testRespawnID=15}] run scoreboard players set @s respawnY 66
execute as @s[tag=testDistance,scores={testRespawnID=15}] run scoreboard players set @s respawnZ 286
execute as @s[tag=testDistance,scores={testRespawnID=15}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=15}] run tp @s 698.44 66.00 286.57 -955.13 -24.98

# Hogwarts Inside
scoreboard players set @s testRespawnID 16
execute as @s[tag=testDistance,scores={testRespawnID=16}] run scoreboard players set @s respawnX 689
execute as @s[tag=testDistance,scores={testRespawnID=16}] run scoreboard players set @s respawnY 65
execute as @s[tag=testDistance,scores={testRespawnID=16}] run scoreboard players set @s respawnZ 224
execute as @s[tag=testDistance,scores={testRespawnID=16}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=16}] run tp @s 689.82 65.00 224.19 -1027.07 1.52

# Hogwarts Inside
scoreboard players set @s testRespawnID 17
execute as @s[tag=testDistance,scores={testRespawnID=17}] run scoreboard players set @s respawnX 643
execute as @s[tag=testDistance,scores={testRespawnID=17}] run scoreboard players set @s respawnY 40
execute as @s[tag=testDistance,scores={testRespawnID=17}] run scoreboard players set @s respawnZ 307
execute as @s[tag=testDistance,scores={testRespawnID=17}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=17}] run tp @s 643.97 40.00 307.24 -856.04 1.62

# Hogwarts Inside
scoreboard players set @s testRespawnID 18
execute as @s[tag=testDistance,scores={testRespawnID=18}] run scoreboard players set @s respawnX 639
execute as @s[tag=testDistance,scores={testRespawnID=18}] run scoreboard players set @s respawnY 40
execute as @s[tag=testDistance,scores={testRespawnID=18}] run scoreboard players set @s respawnZ 242
execute as @s[tag=testDistance,scores={testRespawnID=18}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=18}] run tp @s 639.75 40.00 242.48 -731.37 0.86

# Hogwarts Inside
scoreboard players set @s testRespawnID 19
execute as @s[tag=testDistance,scores={testRespawnID=19}] run scoreboard players set @s respawnX 715
execute as @s[tag=testDistance,scores={testRespawnID=19}] run scoreboard players set @s respawnY 43
execute as @s[tag=testDistance,scores={testRespawnID=19}] run scoreboard players set @s respawnZ 240
execute as @s[tag=testDistance,scores={testRespawnID=19}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=19}] run tp @s 715.56 43.00 240.49 -719.54 -0.55

# Hogwarts Inside
scoreboard players set @s testRespawnID 20
execute as @s[tag=testDistance,scores={testRespawnID=20}] run scoreboard players set @s respawnX 654
execute as @s[tag=testDistance,scores={testRespawnID=20}] run scoreboard players set @s respawnY 39
execute as @s[tag=testDistance,scores={testRespawnID=20}] run scoreboard players set @s respawnZ 296
execute as @s[tag=testDistance,scores={testRespawnID=20}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=20}] run tp @s 654.97 39.00 296.12 -480.59 -0.82

# Hogwarts Inside
scoreboard players set @s testRespawnID 21
execute as @s[tag=testDistance,scores={testRespawnID=21}] run scoreboard players set @s respawnX 722
execute as @s[tag=testDistance,scores={testRespawnID=21}] run scoreboard players set @s respawnY 84
execute as @s[tag=testDistance,scores={testRespawnID=21}] run scoreboard players set @s respawnZ 226
execute as @s[tag=testDistance,scores={testRespawnID=21}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=21}] run tp @s 722.38 84.00 226.57 -308.96 2.60

# Hogwarts Inside
scoreboard players set @s testRespawnID 22
execute as @s[tag=testDistance,scores={testRespawnID=22}] run scoreboard players set @s respawnX 778
execute as @s[tag=testDistance,scores={testRespawnID=22}] run scoreboard players set @s respawnY 66
execute as @s[tag=testDistance,scores={testRespawnID=22}] run scoreboard players set @s respawnZ 210
execute as @s[tag=testDistance,scores={testRespawnID=22}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=22}] run tp @s 778.80 66.00 210.53 -556.26 -0.11

# Hogwarts Inside
scoreboard players set @s testRespawnID 23
execute as @s[tag=testDistance,scores={testRespawnID=23}] run scoreboard players set @s respawnX 778
execute as @s[tag=testDistance,scores={testRespawnID=23}] run scoreboard players set @s respawnY 71
execute as @s[tag=testDistance,scores={testRespawnID=23}] run scoreboard players set @s respawnZ 142
execute as @s[tag=testDistance,scores={testRespawnID=23}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=23}] run tp @s 778.39 71.00 142.52 -539.50 -23.52

# Hogwarts Inside
scoreboard players set @s testRespawnID 24
execute as @s[tag=testDistance,scores={testRespawnID=24}] run scoreboard players set @s respawnX 774
execute as @s[tag=testDistance,scores={testRespawnID=24}] run scoreboard players set @s respawnY 87
execute as @s[tag=testDistance,scores={testRespawnID=24}] run scoreboard players set @s respawnZ 108
execute as @s[tag=testDistance,scores={testRespawnID=24}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=24}] run tp @s 774.40 87.00 108.35 -525.38 3.04

# Hogwarts Inside
scoreboard players set @s testRespawnID 25
execute as @s[tag=testDistance,scores={testRespawnID=25}] run scoreboard players set @s respawnX 741
execute as @s[tag=testDistance,scores={testRespawnID=25}] run scoreboard players set @s respawnY 75
execute as @s[tag=testDistance,scores={testRespawnID=25}] run scoreboard players set @s respawnZ 154
execute as @s[tag=testDistance,scores={testRespawnID=25}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=25}] run tp @s 741.19 75.00 154.76 -462.45 -2.39

# Hogwarts Inside
scoreboard players set @s testRespawnID 26
execute as @s[tag=testDistance,scores={testRespawnID=26}] run scoreboard players set @s respawnX 704
execute as @s[tag=testDistance,scores={testRespawnID=26}] run scoreboard players set @s respawnY 65
execute as @s[tag=testDistance,scores={testRespawnID=26}] run scoreboard players set @s respawnZ 157
execute as @s[tag=testDistance,scores={testRespawnID=26}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=26}] run tp @s 704.75 65.00 157.72 -416.74 -2.83

# Hogwarts Inside
scoreboard players set @s testRespawnID 27
execute as @s[tag=testDistance,scores={testRespawnID=27}] run scoreboard players set @s respawnX 731
execute as @s[tag=testDistance,scores={testRespawnID=27}] run scoreboard players set @s respawnY 151
execute as @s[tag=testDistance,scores={testRespawnID=27}] run scoreboard players set @s respawnZ 133
execute as @s[tag=testDistance,scores={testRespawnID=27}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=27}] run tp @s 731.17 151.00 133.51 -299.30 -0.55

# Hogwarts Inside
scoreboard players set @s testRespawnID 28
execute as @s[tag=testDistance,scores={testRespawnID=28}] run scoreboard players set @s respawnX 754
execute as @s[tag=testDistance,scores={testRespawnID=28}] run scoreboard players set @s respawnY 75
execute as @s[tag=testDistance,scores={testRespawnID=28}] run scoreboard players set @s respawnZ 73
execute as @s[tag=testDistance,scores={testRespawnID=28}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=28}] run tp @s 754.34 75.00 73.52 -619.49 2.11

# Hogwarts Inside
scoreboard players set @s testRespawnID 29
execute as @s[tag=testDistance,scores={testRespawnID=29}] run scoreboard players set @s respawnX 666
execute as @s[tag=testDistance,scores={testRespawnID=29}] run scoreboard players set @s respawnZ 63
execute as @s[tag=testDistance,scores={testRespawnID=29}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=29}] run tp @s 666.99 74.00 63.88 -761.85 1.13

# Hogwarts Inside
scoreboard players set @s testRespawnID 30
execute as @s[tag=testDistance,scores={testRespawnID=30}] run scoreboard players set @s respawnX 674
execute as @s[tag=testDistance,scores={testRespawnID=30}] run scoreboard players set @s respawnY 76
execute as @s[tag=testDistance,scores={testRespawnID=30}] run scoreboard players set @s respawnZ 144
execute as @s[tag=testDistance,scores={testRespawnID=30}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=30}] run tp @s 674.29 76.00 144.49 -539.84 -0.11

# Hogwarts Inside
scoreboard players set @s testRespawnID 31
execute as @s[tag=testDistance,scores={testRespawnID=31}] run scoreboard players set @s respawnX 666
execute as @s[tag=testDistance,scores={testRespawnID=31}] run scoreboard players set @s respawnY 65
execute as @s[tag=testDistance,scores={testRespawnID=31}] run scoreboard players set @s respawnZ 136
execute as @s[tag=testDistance,scores={testRespawnID=31}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=31}] run tp @s 666.88 65.00 136.43 -514.75 -5.43

# Hogwarts Inside
scoreboard players set @s testRespawnID 32
execute as @s[tag=testDistance,scores={testRespawnID=32}] run scoreboard players set @s respawnX 664
execute as @s[tag=testDistance,scores={testRespawnID=32}] run scoreboard players set @s respawnY 54
execute as @s[tag=testDistance,scores={testRespawnID=32}] run scoreboard players set @s respawnZ 64
execute as @s[tag=testDistance,scores={testRespawnID=32}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=32}] run tp @s 664.84 54.00 64.05 -763.26 0.05

# Hogwarts Inside
scoreboard players set @s testRespawnID 33
execute as @s[tag=testDistance,scores={testRespawnID=33}] run scoreboard players set @s respawnX 716
execute as @s[tag=testDistance,scores={testRespawnID=33}] run scoreboard players set @s respawnY 53
execute as @s[tag=testDistance,scores={testRespawnID=33}] run scoreboard players set @s respawnZ 61
execute as @s[tag=testDistance,scores={testRespawnID=33}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=33}] run tp @s 716.88 53.00 61.54 -843.08 3.36

# Hogwarts Inside
scoreboard players set @s testRespawnID 34
execute as @s[tag=testDistance,scores={testRespawnID=34}] run scoreboard players set @s respawnX 718
execute as @s[tag=testDistance,scores={testRespawnID=34}] run scoreboard players set @s respawnY 66
execute as @s[tag=testDistance,scores={testRespawnID=34}] run scoreboard players set @s respawnZ 76
execute as @s[tag=testDistance,scores={testRespawnID=34}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=34}] run tp @s 718.43 66.06 76.56 -822.83 0.37

# Hogwarts Inside
scoreboard players set @s testRespawnID 35
execute as @s[tag=testDistance,scores={testRespawnID=35}] run scoreboard players set @s respawnX 745
execute as @s[tag=testDistance,scores={testRespawnID=35}] run scoreboard players set @s respawnY 65
execute as @s[tag=testDistance,scores={testRespawnID=35}] run scoreboard players set @s respawnZ 90
execute as @s[tag=testDistance,scores={testRespawnID=35}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=35}] run tp @s 745.31 65.00 90.17 -669.55 -2.12

# Hogwarts Inside
scoreboard players set @s testRespawnID 36
execute as @s[tag=testDistance,scores={testRespawnID=36}] run scoreboard players set @s respawnX 778
execute as @s[tag=testDistance,scores={testRespawnID=36}] run scoreboard players set @s respawnY 55
execute as @s[tag=testDistance,scores={testRespawnID=36}] run scoreboard players set @s respawnZ 67
execute as @s[tag=testDistance,scores={testRespawnID=36}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=36}] run tp @s 778.37 55.00 67.75 -720.10 0.10

# Hogwarts Inside
scoreboard players set @s testRespawnID 37
execute as @s[tag=testDistance,scores={testRespawnID=37}] run scoreboard players set @s respawnX 766
execute as @s[tag=testDistance,scores={testRespawnID=37}] run scoreboard players set @s respawnY 84
execute as @s[tag=testDistance,scores={testRespawnID=37}] run scoreboard players set @s respawnZ 200
execute as @s[tag=testDistance,scores={testRespawnID=37}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=37}] run tp @s 766.59 84.00 200.86 -209.83 2.33

# Hogwarts Inside
scoreboard players set @s testRespawnID 38
execute as @s[tag=testDistance,scores={testRespawnID=38}] run scoreboard players set @s respawnX 778
execute as @s[tag=testDistance,scores={testRespawnID=38}] run scoreboard players set @s respawnY 90
execute as @s[tag=testDistance,scores={testRespawnID=38}] run scoreboard players set @s respawnZ 122
execute as @s[tag=testDistance,scores={testRespawnID=38}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=38}] run tp @s 778.56 90.00 122.55 -0.25 19.27

# Hogwarts Inside
scoreboard players set @s testRespawnID 39
execute as @s[tag=testDistance,scores={testRespawnID=39}] run scoreboard players set @s respawnX 782
execute as @s[tag=testDistance,scores={testRespawnID=39}] run scoreboard players set @s respawnY 84
execute as @s[tag=testDistance,scores={testRespawnID=39}] run scoreboard players set @s respawnZ 147
execute as @s[tag=testDistance,scores={testRespawnID=39}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=39}] run tp @s 782.00 84.00 147.21 45.31 0.43

# Hogwarts Inside
scoreboard players set @s testRespawnID 40
execute as @s[tag=testDistance,scores={testRespawnID=40}] run scoreboard players set @s respawnX 772
execute as @s[tag=testDistance,scores={testRespawnID=40}] run scoreboard players set @s respawnY 51
execute as @s[tag=testDistance,scores={testRespawnID=40}] run scoreboard players set @s respawnZ 179
execute as @s[tag=testDistance,scores={testRespawnID=40}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=40}] run tp @s 772.79 51.00 179.83 333.24 0.21

# Hogwarts Inside
scoreboard players set @s testRespawnID 41
execute as @s[tag=testDistance,scores={testRespawnID=41}] run scoreboard players set @s respawnX 754
execute as @s[tag=testDistance,scores={testRespawnID=41}] run scoreboard players set @s respawnY 43
execute as @s[tag=testDistance,scores={testRespawnID=41}] run scoreboard players set @s respawnZ 68
execute as @s[tag=testDistance,scores={testRespawnID=41}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=41}] run tp @s 754.39 43.00 68.30 412.18 0.81

# Hogwarts Inside
scoreboard players set @s testRespawnID 42
execute as @s[tag=testDistance,scores={testRespawnID=42}] run scoreboard players set @s respawnX 593
execute as @s[tag=testDistance,scores={testRespawnID=42}] run scoreboard players set @s respawnY 63
execute as @s[tag=testDistance,scores={testRespawnID=42}] run scoreboard players set @s respawnZ 273
execute as @s[tag=testDistance,scores={testRespawnID=42}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=42}] run tp @s 593.69 63.00 273.93 595.11 -53.32

# Hogwarts Inside
scoreboard players set @s testRespawnID 43
execute as @s[tag=testDistance,scores={testRespawnID=43}] run scoreboard players set @s respawnX 606
execute as @s[tag=testDistance,scores={testRespawnID=43}] run scoreboard players set @s respawnY 120
execute as @s[tag=testDistance,scores={testRespawnID=43}] run scoreboard players set @s respawnZ 278
execute as @s[tag=testDistance,scores={testRespawnID=43}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=43}] run tp @s 606.52 120.00 278.94 486.19 -7.28

# Hogwarts Inside
scoreboard players set @s testRespawnID 44
execute as @s[tag=testDistance,scores={testRespawnID=44}] run scoreboard players set @s respawnX 640
execute as @s[tag=testDistance,scores={testRespawnID=44}] run scoreboard players set @s respawnY 118
execute as @s[tag=testDistance,scores={testRespawnID=44}] run scoreboard players set @s respawnZ 269
execute as @s[tag=testDistance,scores={testRespawnID=44}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=44}] run tp @s 640.04 118.00 269.17 629.20 2.82



# Hogwarts outside
scoreboard players set @s testRespawnID 45
execute as @s[tag=testDistance,scores={testRespawnID=45}] run scoreboard players set @s respawnX 833
execute as @s[tag=testDistance,scores={testRespawnID=45}] run scoreboard players set @s respawnY 40
execute as @s[tag=testDistance,scores={testRespawnID=45}] run scoreboard players set @s respawnZ -75
execute as @s[tag=testDistance,scores={testRespawnID=45}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=45}] run tp @s 833.98 40.00 -75.88 -320.56 -14.92

# Hogwarts outside
scoreboard players set @s testRespawnID 46
execute as @s[tag=testDistance,scores={testRespawnID=46}] run scoreboard players set @s respawnX 646
execute as @s[tag=testDistance,scores={testRespawnID=46}] run scoreboard players set @s respawnY 53
execute as @s[tag=testDistance,scores={testRespawnID=46}] run scoreboard players set @s respawnZ 156
execute as @s[tag=testDistance,scores={testRespawnID=46}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=46}] run tp @s 646.94 53.00 156.27 -535.30 -0.26

# Hogwarts outside
scoreboard players set @s testRespawnID 47
execute as @s[tag=testDistance,scores={testRespawnID=47}] run scoreboard players set @s respawnX 545
execute as @s[tag=testDistance,scores={testRespawnID=47}] run scoreboard players set @s respawnY 62
execute as @s[tag=testDistance,scores={testRespawnID=47}] run scoreboard players set @s respawnZ 282
execute as @s[tag=testDistance,scores={testRespawnID=47}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=47}] run tp @s 545.71 62.00 282.03 -838.05 -11.23

# Hogwarts outside
scoreboard players set @s testRespawnID 48
execute as @s[tag=testDistance,scores={testRespawnID=48}] run scoreboard players set @s respawnX 397
execute as @s[tag=testDistance,scores={testRespawnID=48}] run scoreboard players set @s respawnY 62
execute as @s[tag=testDistance,scores={testRespawnID=48}] run scoreboard players set @s respawnZ 262
execute as @s[tag=testDistance,scores={testRespawnID=48}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=48}] run tp @s 397.08 62.00 262.41 -1068.11 1.04

# Hagrids Hut
scoreboard players set @s testRespawnID 49
execute as @s[tag=testDistance,scores={testRespawnID=49}] run scoreboard players set @s respawnX 336
execute as @s[tag=testDistance,scores={testRespawnID=49}] run scoreboard players set @s respawnY 15
execute as @s[tag=testDistance,scores={testRespawnID=49}] run scoreboard players set @s respawnZ 352
execute as @s[tag=testDistance,scores={testRespawnID=49}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=49}] run tp @s 336.86 15.00 352.16 -1087.66 -0.15

# Forbidden Forest
scoreboard players set @s testRespawnID 50
execute as @s[tag=testDistance,scores={testRespawnID=50}] run scoreboard players set @s respawnX 224
execute as @s[tag=testDistance,scores={testRespawnID=50}] run scoreboard players set @s respawnY 12
execute as @s[tag=testDistance,scores={testRespawnID=50}] run scoreboard players set @s respawnZ 287
execute as @s[tag=testDistance,scores={testRespawnID=50}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=50}] run tp @s 224.29 12.00 287.97 -942.85 -2.22

# Forbidden Forest
scoreboard players set @s testRespawnID 51
execute as @s[tag=testDistance,scores={testRespawnID=51}] run scoreboard players set @s respawnX 123
execute as @s[tag=testDistance,scores={testRespawnID=51}] run scoreboard players set @s respawnY 12
execute as @s[tag=testDistance,scores={testRespawnID=51}] run scoreboard players set @s respawnZ 213
execute as @s[tag=testDistance,scores={testRespawnID=51}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=51}] run tp @s 123.96 12.00 213.44 -913.15 -0.26

# Forbidden Forest Clearing
scoreboard players set @s testRespawnID 52
execute as @s[tag=testDistance,scores={testRespawnID=52}] run scoreboard players set @s respawnX 81
execute as @s[tag=testDistance,scores={testRespawnID=52}] run scoreboard players set @s respawnY 15
execute as @s[tag=testDistance,scores={testRespawnID=52}] run scoreboard players set @s respawnZ -184
execute as @s[tag=testDistance,scores={testRespawnID=52}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=52}] run tp @s 81.92 15.00 -184.70 -845.61 2.29

# Forbidden Forest
scoreboard players set @s testRespawnID 53
execute as @s[tag=testDistance,scores={testRespawnID=53}] run scoreboard players set @s respawnX 77
execute as @s[tag=testDistance,scores={testRespawnID=53}] run scoreboard players set @s respawnY 12
execute as @s[tag=testDistance,scores={testRespawnID=53}] run scoreboard players set @s respawnZ 211
execute as @s[tag=testDistance,scores={testRespawnID=53}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=53}] run tp @s 77.32 12.00 211.28 -650.25 1.96

# Troll Camp
scoreboard players set @s testRespawnID 54
execute as @s[tag=testDistance,scores={testRespawnID=54}] run scoreboard players set @s respawnX 79
execute as @s[tag=testDistance,scores={testRespawnID=54}] run scoreboard players set @s respawnY 11
execute as @s[tag=testDistance,scores={testRespawnID=54}] run scoreboard players set @s respawnZ 300
execute as @s[tag=testDistance,scores={testRespawnID=54}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=54}] run tp @s 79.77 11.00 300.75 -662.25 1.37

# Forbidden Forest
scoreboard players set @s testRespawnID 55
execute as @s[tag=testDistance,scores={testRespawnID=55}] run scoreboard players set @s respawnX 58
execute as @s[tag=testDistance,scores={testRespawnID=55}] run scoreboard players set @s respawnY 11
execute as @s[tag=testDistance,scores={testRespawnID=55}] run scoreboard players set @s respawnZ 538
execute as @s[tag=testDistance,scores={testRespawnID=55}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=55}] run tp @s 58.97 11.00 538.78 -687.66 0.12

# Spider Lair
scoreboard players set @s testRespawnID 56
execute as @s[tag=testDistance,scores={testRespawnID=56}] run scoreboard players set @s respawnX 30
execute as @s[tag=testDistance,scores={testRespawnID=56}] run scoreboard players set @s respawnY 13
execute as @s[tag=testDistance,scores={testRespawnID=56}] run scoreboard players set @s respawnZ 601
execute as @s[tag=testDistance,scores={testRespawnID=56}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=56}] run tp @s 30.73 13.00 601.71 -700.91 -8.73

# Toad Swamp
scoreboard players set @s testRespawnID 57
execute as @s[tag=testDistance,scores={testRespawnID=57}] run scoreboard players set @s respawnX -152
execute as @s[tag=testDistance,scores={testRespawnID=57}] run scoreboard players set @s respawnY 35
execute as @s[tag=testDistance,scores={testRespawnID=57}] run scoreboard players set @s respawnZ 596
execute as @s[tag=testDistance,scores={testRespawnID=57}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=57}] run tp @s -152.80 35.00 596.12 -638.08 -8.14

# Forbidden forest ruin thing
scoreboard players set @s testRespawnID 58
execute as @s[tag=testDistance,scores={testRespawnID=58}] run scoreboard players set @s respawnX -13
execute as @s[tag=testDistance,scores={testRespawnID=58}] run scoreboard players set @s respawnY 14
execute as @s[tag=testDistance,scores={testRespawnID=58}] run scoreboard players set @s respawnZ 218
execute as @s[tag=testDistance,scores={testRespawnID=58}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=58}] run tp @s -13.85 14.00 218.04 -653.45 -1.95

# Quidditch path
scoreboard players set @s testRespawnID 59
execute as @s[tag=testDistance,scores={testRespawnID=59}] run scoreboard players set @s respawnX 568
execute as @s[tag=testDistance,scores={testRespawnID=59}] run scoreboard players set @s respawnY 26
execute as @s[tag=testDistance,scores={testRespawnID=59}] run scoreboard players set @s respawnZ -136
execute as @s[tag=testDistance,scores={testRespawnID=59}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=59}] run tp @s 568.83 26.00 -136.70 -956.05 -2.22

# Поле для Квиддича
scoreboard players set @s testRespawnID 60
execute as @s[tag=testDistance,scores={testRespawnID=60}] run scoreboard players set @s respawnX 412
execute as @s[tag=testDistance,scores={testRespawnID=60}] run scoreboard players set @s respawnY 13
execute as @s[tag=testDistance,scores={testRespawnID=60}] run scoreboard players set @s respawnZ -237
execute as @s[tag=testDistance,scores={testRespawnID=60}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=60}] run tp @s 412.05 13.50 -237.15 -900.12 -8.30

# Причал 
scoreboard players set @s testRespawnID 61
execute as @s[tag=testDistance,scores={testRespawnID=61}] run scoreboard players set @s respawnX 953
execute as @s[tag=testDistance,scores={testRespawnID=61}] run scoreboard players set @s respawnY 18
execute as @s[tag=testDistance,scores={testRespawnID=61}] run scoreboard players set @s respawnZ 318
execute as @s[tag=testDistance,scores={testRespawnID=61}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=61}] run tp @s 953.89 18.00 318.02 -1328.09 0.55

##########
# London #
##########

# Биг-Бен 1
scoreboard players set @s testRespawnID 62
execute as @s[tag=testDistance,scores={testRespawnID=62}] run scoreboard players set @s respawnX 2781
execute as @s[tag=testDistance,scores={testRespawnID=62}] run scoreboard players set @s respawnY 61
execute as @s[tag=testDistance,scores={testRespawnID=62}] run scoreboard players set @s respawnZ 378
execute as @s[tag=testDistance,scores={testRespawnID=62}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=62}] run tp @s 2781.21 61.00 378.43 108.02 1.41

# Биг-Бен 2
scoreboard players set @s testRespawnID 63
execute as @s[tag=testDistance,scores={testRespawnID=63}] run scoreboard players set @s respawnX 2902
execute as @s[tag=testDistance,scores={testRespawnID=63}] run scoreboard players set @s respawnY 54
execute as @s[tag=testDistance,scores={testRespawnID=63}] run scoreboard players set @s respawnZ 567
execute as @s[tag=testDistance,scores={testRespawnID=63}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=63}] run tp @s 2902.25 54.00 567.14 45.63 -6.46

# Diagon Alley
scoreboard players set @s testRespawnID 64
execute as @s[tag=testDistance,scores={testRespawnID=64}] run scoreboard players set @s respawnX 2844
execute as @s[tag=testDistance,scores={testRespawnID=64}] run scoreboard players set @s respawnY 56
execute as @s[tag=testDistance,scores={testRespawnID=64}] run scoreboard players set @s respawnZ 789
execute as @s[tag=testDistance,scores={testRespawnID=64}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=64}] run tp @s 2844.88 56.00 789.37 -22.13 -3.96

# Gringotts
scoreboard players set @s testRespawnID 65
execute as @s[tag=testDistance,scores={testRespawnID=65}] run scoreboard players set @s respawnX 2990
execute as @s[tag=testDistance,scores={testRespawnID=65}] run scoreboard players set @s respawnY 108
execute as @s[tag=testDistance,scores={testRespawnID=65}] run scoreboard players set @s respawnZ 1274
execute as @s[tag=testDistance,scores={testRespawnID=65}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=65}] run tp @s 2990.79 108.00 1274.30 179.91 0.27

# Глаз Лондона
scoreboard players set @s testRespawnID 66
execute as @s[tag=testDistance,scores={testRespawnID=66}] run scoreboard players set @s respawnX 2403
execute as @s[tag=testDistance,scores={testRespawnID=66}] run scoreboard players set @s respawnY 61
execute as @s[tag=testDistance,scores={testRespawnID=66}] run scoreboard players set @s respawnZ 174
execute as @s[tag=testDistance,scores={testRespawnID=66}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=66}] run tp @s 2403.55 61.00 174.42 291.05 -9.12

# London
scoreboard players set @s testRespawnID 67
execute as @s[tag=testDistance,scores={testRespawnID=67}] run scoreboard players set @s respawnX 2602
execute as @s[tag=testDistance,scores={testRespawnID=67}] run scoreboard players set @s respawnY 61
execute as @s[tag=testDistance,scores={testRespawnID=67}] run scoreboard players set @s respawnZ -29
execute as @s[tag=testDistance,scores={testRespawnID=67}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=67}] run tp @s 2602.71 61.00 -29.49 126.21 -5.76

# Borough of Islington
scoreboard players set @s testRespawnID 68
execute as @s[tag=testDistance,scores={testRespawnID=68}] run scoreboard players set @s respawnX 2438
execute as @s[tag=testDistance,scores={testRespawnID=68}] run scoreboard players set @s respawnY 61
execute as @s[tag=testDistance,scores={testRespawnID=68}] run scoreboard players set @s respawnZ -129
execute as @s[tag=testDistance,scores={testRespawnID=68}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=68}] run tp @s 2438.73 61.00 -129.69 233.01 -4.78

# King's Cross
scoreboard players set @s testRespawnID 69
execute as @s[tag=testDistance,scores={testRespawnID=69}] run scoreboard players set @s respawnX 2794
execute as @s[tag=testDistance,scores={testRespawnID=69}] run scoreboard players set @s respawnY 61
execute as @s[tag=testDistance,scores={testRespawnID=69}] run scoreboard players set @s respawnZ 44
execute as @s[tag=testDistance,scores={testRespawnID=69}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=69}] run tp @s 2794.45 61.00 44.69 208.68 -12.00

# Platform 9 3/4
scoreboard players set @s testRespawnID 70
execute as @s[tag=testDistance,scores={testRespawnID=70}] run scoreboard players set @s respawnX 3052
execute as @s[tag=testDistance,scores={testRespawnID=70}] run scoreboard players set @s respawnY 59
execute as @s[tag=testDistance,scores={testRespawnID=70}] run scoreboard players set @s respawnZ -457
execute as @s[tag=testDistance,scores={testRespawnID=70}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=70}] run tp @s 3052.70 59.00 -457.48 75.44 -2.50

# Дырявый Котёл
scoreboard players set @s testRespawnID 71
execute as @s[tag=testDistance,scores={testRespawnID=71}] run scoreboard players set @s respawnX 2871
execute as @s[tag=testDistance,scores={testRespawnID=71}] run scoreboard players set @s respawnY 55
execute as @s[tag=testDistance,scores={testRespawnID=71}] run scoreboard players set @s respawnZ 748
execute as @s[tag=testDistance,scores={testRespawnID=71}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=71}] run tp @s 2871.89 55.00 748.12 -83.94 1.42

# London
scoreboard players set @s testRespawnID 72
execute as @s[tag=testDistance,scores={testRespawnID=72}] run scoreboard players set @s respawnX 2790
execute as @s[tag=testDistance,scores={testRespawnID=72}] run scoreboard players set @s respawnY 55
execute as @s[tag=testDistance,scores={testRespawnID=72}] run scoreboard players set @s respawnZ 653
execute as @s[tag=testDistance,scores={testRespawnID=72}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=72}] run tp @s 2790.48 55.00 653.62 -147.09 -2.98

# London
scoreboard players set @s testRespawnID 73
execute as @s[tag=testDistance,scores={testRespawnID=73}] run scoreboard players set @s respawnX 2588
execute as @s[tag=testDistance,scores={testRespawnID=73}] run scoreboard players set @s respawnY 61
execute as @s[tag=testDistance,scores={testRespawnID=73}] run scoreboard players set @s respawnZ 331
execute as @s[tag=testDistance,scores={testRespawnID=73}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=73}] run tp @s 2588.79 61.00 331.12 -199.64 -5.04

# London
scoreboard players set @s testRespawnID 74
execute as @s[tag=testDistance,scores={testRespawnID=74}] run scoreboard players set @s respawnX 2467
execute as @s[tag=testDistance,scores={testRespawnID=74}] run scoreboard players set @s respawnY 57
execute as @s[tag=testDistance,scores={testRespawnID=74}] run scoreboard players set @s respawnZ 320
execute as @s[tag=testDistance,scores={testRespawnID=74}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=74}] run tp @s 2467.26 57.00 320.47 -406.02 0.71

# площадь Гриммо
scoreboard players set @s testRespawnID 75
execute as @s[tag=testDistance,scores={testRespawnID=75}] run scoreboard players set @s respawnX 2545
execute as @s[tag=testDistance,scores={testRespawnID=75}] run scoreboard players set @s respawnY 61
execute as @s[tag=testDistance,scores={testRespawnID=75}] run scoreboard players set @s respawnZ -220
execute as @s[tag=testDistance,scores={testRespawnID=75}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=75}] run tp @s 2545.93 61.00 -220.54 -310.52 0.44

# King's Cross Back
scoreboard players set @s testRespawnID 76
execute as @s[tag=testDistance,scores={testRespawnID=76}] run scoreboard players set @s respawnX 2954
execute as @s[tag=testDistance,scores={testRespawnID=76}] run scoreboard players set @s respawnY 61
execute as @s[tag=testDistance,scores={testRespawnID=76}] run scoreboard players set @s respawnZ -107
execute as @s[tag=testDistance,scores={testRespawnID=76}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=76}] run tp @s 2954.54 61.00 -107.52 -296.89 2.40

# London
scoreboard players set @s testRespawnID 77
execute as @s[tag=testDistance,scores={testRespawnID=77}] run scoreboard players set @s respawnX 3029
execute as @s[tag=testDistance,scores={testRespawnID=77}] run scoreboard players set @s respawnY 61
execute as @s[tag=testDistance,scores={testRespawnID=77}] run scoreboard players set @s respawnZ 97
execute as @s[tag=testDistance,scores={testRespawnID=77}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=77}] run tp @s 3029.93 61.00 97.08 -398.96 -3.41

# London
scoreboard players set @s testRespawnID 78
execute as @s[tag=testDistance,scores={testRespawnID=78}] run scoreboard players set @s respawnX 2888
execute as @s[tag=testDistance,scores={testRespawnID=78}] run scoreboard players set @s respawnY 63
execute as @s[tag=testDistance,scores={testRespawnID=78}] run scoreboard players set @s respawnZ 185
execute as @s[tag=testDistance,scores={testRespawnID=78}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=78}] run tp @s 2888.73 63.00 185.43 -240.20 -6.29

###################
# Литтл Уингинг #
###################

# Литтл Уингинг
scoreboard players set @s testRespawnID 79
execute as @s[tag=testDistance,scores={testRespawnID=79}] run scoreboard players set @s respawnX 2301
execute as @s[tag=testDistance,scores={testRespawnID=79}] run scoreboard players set @s respawnY 63
execute as @s[tag=testDistance,scores={testRespawnID=79}] run scoreboard players set @s respawnZ -944
execute as @s[tag=testDistance,scores={testRespawnID=79}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=79}] run tp @s 2301.12 63.50 -944.83 -376.40 2.72


##############
# Residences #
##############

# Burrow
scoreboard players set @s testRespawnID 80
execute as @s[tag=testDistance,scores={testRespawnID=80}] run scoreboard players set @s respawnX 5404
execute as @s[tag=testDistance,scores={testRespawnID=80}] run scoreboard players set @s respawnY 17
execute as @s[tag=testDistance,scores={testRespawnID=80}] run scoreboard players set @s respawnZ 4553
execute as @s[tag=testDistance,scores={testRespawnID=80}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=80}] run tp @s 5404.17 17.00 4553.79 -200.26 -20.22

# Mill
scoreboard players set @s testRespawnID 81
execute as @s[tag=testDistance,scores={testRespawnID=81}] run scoreboard players set @s respawnX 5694
execute as @s[tag=testDistance,scores={testRespawnID=81}] run scoreboard players set @s respawnY 97
execute as @s[tag=testDistance,scores={testRespawnID=81}] run scoreboard players set @s respawnZ 4355
execute as @s[tag=testDistance,scores={testRespawnID=81}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=81}] run tp @s 5694.62 97.00 4355.99 -234.36 -10.06

# Swing
scoreboard players set @s testRespawnID 82
execute as @s[tag=testDistance,scores={testRespawnID=82}] run scoreboard players set @s respawnX 5524
execute as @s[tag=testDistance,scores={testRespawnID=82}] run scoreboard players set @s respawnY 38
execute as @s[tag=testDistance,scores={testRespawnID=82}] run scoreboard players set @s respawnZ 4237
execute as @s[tag=testDistance,scores={testRespawnID=82}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=82}] run tp @s 5524.87 38.00 4237.17 -304.40 1.39

# Lovegood 1
scoreboard players set @s testRespawnID 83
execute as @s[tag=testDistance,scores={testRespawnID=83}] run scoreboard players set @s respawnX 5204
execute as @s[tag=testDistance,scores={testRespawnID=83}] run scoreboard players set @s respawnY 103
execute as @s[tag=testDistance,scores={testRespawnID=83}] run scoreboard players set @s respawnZ 4260
execute as @s[tag=testDistance,scores={testRespawnID=83}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=83}] run tp @s 5204.00 103.00 4260.91 -348.44 -1.32

# Lovegood 2
scoreboard players set @s testRespawnID 84
execute as @s[tag=testDistance,scores={testRespawnID=84}] run scoreboard players set @s respawnX 5166
execute as @s[tag=testDistance,scores={testRespawnID=84}] run scoreboard players set @s respawnY 112
execute as @s[tag=testDistance,scores={testRespawnID=84}] run scoreboard players set @s respawnZ 4405
execute as @s[tag=testDistance,scores={testRespawnID=84}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=84}] run tp @s 5166.00 112.00 4405.72 -382.86 -11.42

############
# Ministry #
############

scoreboard players set @s testRespawnID 85
execute as @s[tag=testDistance,scores={testRespawnID=85}] run scoreboard players set @s respawnX 9848
execute as @s[tag=testDistance,scores={testRespawnID=85}] run scoreboard players set @s respawnY 122
execute as @s[tag=testDistance,scores={testRespawnID=85}] run scoreboard players set @s respawnZ 10183
execute as @s[tag=testDistance,scores={testRespawnID=85}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=85}] run tp @s 9848.77 122.00 10183.63 197.63 -3.24

scoreboard players set @s testRespawnID 86
execute as @s[tag=testDistance,scores={testRespawnID=86}] run scoreboard players set @s respawnX 9850
execute as @s[tag=testDistance,scores={testRespawnID=86}] run scoreboard players set @s respawnY 164
execute as @s[tag=testDistance,scores={testRespawnID=86}] run scoreboard players set @s respawnZ 10180
execute as @s[tag=testDistance,scores={testRespawnID=86}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=86}] run tp @s 9850.29 164.06 10180.53 -0.34 -0.85

scoreboard players set @s testRespawnID 87
execute as @s[tag=testDistance,scores={testRespawnID=87}] run scoreboard players set @s respawnX 9857
execute as @s[tag=testDistance,scores={testRespawnID=87}] run scoreboard players set @s respawnY 122
execute as @s[tag=testDistance,scores={testRespawnID=87}] run scoreboard players set @s respawnZ 10100
execute as @s[tag=testDistance,scores={testRespawnID=87}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=87}] run tp @s 9857.22 122.00 10100.34 -220.24 0.40

###################
# Годрикова впадина #
###################

scoreboard players set @s testRespawnID 88
execute as @s[tag=testDistance,scores={testRespawnID=88}] run scoreboard players set @s respawnX 6837
execute as @s[tag=testDistance,scores={testRespawnID=88}] run scoreboard players set @s respawnY 36
execute as @s[tag=testDistance,scores={testRespawnID=88}] run scoreboard players set @s respawnZ 3110
execute as @s[tag=testDistance,scores={testRespawnID=88}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=88}] run tp @s 6837.72 36.25 3110.41 4.52 -1.98

scoreboard players set @s testRespawnID 89
execute as @s[tag=testDistance,scores={testRespawnID=89}] run scoreboard players set @s respawnX 6802
execute as @s[tag=testDistance,scores={testRespawnID=89}] run scoreboard players set @s respawnY 36
execute as @s[tag=testDistance,scores={testRespawnID=89}] run scoreboard players set @s respawnZ 3253
execute as @s[tag=testDistance,scores={testRespawnID=89}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=89}] run tp @s 6802.93 36.00 3253.91 206.99 -2.19

#############
# Hogsmeade #
#############
scoreboard players set @s testRespawnID 90
execute as @s[tag=testDistance,scores={testRespawnID=90}] run scoreboard players set @s respawnX 5220
execute as @s[tag=testDistance,scores={testRespawnID=90}] run scoreboard players set @s respawnY 24
execute as @s[tag=testDistance,scores={testRespawnID=90}] run scoreboard players set @s respawnZ 2270
execute as @s[tag=testDistance,scores={testRespawnID=90}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=90}] run tp @s 5220.90 24.88 2270.98 284.67 -0.86

scoreboard players set @s testRespawnID 91
execute as @s[tag=testDistance,scores={testRespawnID=91}] run scoreboard players set @s respawnX 5360
execute as @s[tag=testDistance,scores={testRespawnID=91}] run scoreboard players set @s respawnY 40
execute as @s[tag=testDistance,scores={testRespawnID=91}] run scoreboard players set @s respawnZ 2253
execute as @s[tag=testDistance,scores={testRespawnID=91}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=91}] run tp @s 5360.53 40.75 2253.02 335.33 -0.59

scoreboard players set @s testRespawnID 92
execute as @s[tag=testDistance,scores={testRespawnID=92}] run scoreboard players set @s respawnX 5383
execute as @s[tag=testDistance,scores={testRespawnID=92}] run scoreboard players set @s respawnY 36
execute as @s[tag=testDistance,scores={testRespawnID=92}] run scoreboard players set @s respawnZ 2264
execute as @s[tag=testDistance,scores={testRespawnID=92}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=92}] run tp @s 5383.74 36.25 2264.66 345.10 -2.98

scoreboard players set @s testRespawnID 93
execute as @s[tag=testDistance,scores={testRespawnID=93}] run scoreboard players set @s respawnX 5552
execute as @s[tag=testDistance,scores={testRespawnID=93}] run scoreboard players set @s respawnY 56
execute as @s[tag=testDistance,scores={testRespawnID=93}] run scoreboard players set @s respawnZ 2429
execute as @s[tag=testDistance,scores={testRespawnID=93}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=93}] run tp @s 5552.20 56.88 2429.67 345.75 -4.50

scoreboard players set @s testRespawnID 94
execute as @s[tag=testDistance,scores={testRespawnID=94}] run scoreboard players set @s respawnX 5478
execute as @s[tag=testDistance,scores={testRespawnID=94}] run scoreboard players set @s respawnY 85
execute as @s[tag=testDistance,scores={testRespawnID=94}] run scoreboard players set @s respawnZ 2619
execute as @s[tag=testDistance,scores={testRespawnID=94}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=94}] run tp @s 5478.04 85.25 2619.02 316.00 9.46

scoreboard players set @s testRespawnID 95
execute as @s[tag=testDistance,scores={testRespawnID=95}] run scoreboard players set @s respawnX 5548
execute as @s[tag=testDistance,scores={testRespawnID=95}] run scoreboard players set @s respawnY 48
execute as @s[tag=testDistance,scores={testRespawnID=95}] run scoreboard players set @s respawnZ 2721
execute as @s[tag=testDistance,scores={testRespawnID=95}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=95}] run tp @s 5548.54 48.00 2721.03 415.47 -7.86


scoreboard players set @s testRespawnID 96
execute as @s[tag=testDistance,scores={testRespawnID=96}] run scoreboard players set @s respawnX 5218
execute as @s[tag=testDistance,scores={testRespawnID=96}] run scoreboard players set @s respawnY 98
execute as @s[tag=testDistance,scores={testRespawnID=96}] run scoreboard players set @s respawnZ 2626
execute as @s[tag=testDistance,scores={testRespawnID=96}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=96}] run tp @s 5218.32 98.88 2626.19 307.94 -0.97

scoreboard players set @s testRespawnID 97
execute as @s[tag=testDistance,scores={testRespawnID=97}] run scoreboard players set @s respawnX 5364
execute as @s[tag=testDistance,scores={testRespawnID=97}] run scoreboard players set @s respawnY 107
execute as @s[tag=testDistance,scores={testRespawnID=97}] run scoreboard players set @s respawnZ 2668
execute as @s[tag=testDistance,scores={testRespawnID=97}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=97}] run tp @s 5364.92 107.75 2668.66 293.01 -6.72

scoreboard players set @s testRespawnID 98
execute as @s[tag=testDistance,scores={testRespawnID=98}] run scoreboard players set @s respawnX 5397
execute as @s[tag=testDistance,scores={testRespawnID=98}] run scoreboard players set @s respawnY 105
execute as @s[tag=testDistance,scores={testRespawnID=98}] run scoreboard players set @s respawnZ 2501
execute as @s[tag=testDistance,scores={testRespawnID=98}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=98}] run tp @s 5397.69 105.00 2501.48 124.04 -1.02

scoreboard players set @s testRespawnID 99
execute as @s[tag=testDistance,scores={testRespawnID=99}] run scoreboard players set @s respawnX 5185
execute as @s[tag=testDistance,scores={testRespawnID=99}] run scoreboard players set @s respawnY 93
execute as @s[tag=testDistance,scores={testRespawnID=99}] run scoreboard players set @s respawnZ 2493
execute as @s[tag=testDistance,scores={testRespawnID=99}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=99}] run tp @s 5185.68 93.13 2493.54 305.12 -3.14


#####################
# Станция 'Хогсмид' #
#####################

scoreboard players set @s testRespawnID 100
execute as @s[tag=testDistance,scores={testRespawnID=100}] run scoreboard players set @s respawnX 829
execute as @s[tag=testDistance,scores={testRespawnID=100}] run scoreboard players set @s respawnY 50
execute as @s[tag=testDistance,scores={testRespawnID=100}] run scoreboard players set @s respawnZ -1745
execute as @s[tag=testDistance,scores={testRespawnID=100}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=100}] run tp @s 829.90 50.00 -1745.10 -304.09 0.67

scoreboard players set @s testRespawnID 101
execute as @s[tag=testDistance,scores={testRespawnID=101}] run scoreboard players set @s respawnX 827
execute as @s[tag=testDistance,scores={testRespawnID=101}] run scoreboard players set @s respawnY 50
execute as @s[tag=testDistance,scores={testRespawnID=101}] run scoreboard players set @s respawnZ -1704
execute as @s[tag=testDistance,scores={testRespawnID=101}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=101}] run tp @s 827.52 50.00 -1704.63 -488.32 2.46

scoreboard players set @s testRespawnID 102
execute as @s[tag=testDistance,scores={testRespawnID=102}] run scoreboard players set @s respawnX 881
execute as @s[tag=testDistance,scores={testRespawnID=102}] run scoreboard players set @s respawnY 15
execute as @s[tag=testDistance,scores={testRespawnID=102}] run scoreboard players set @s respawnZ -1521
execute as @s[tag=testDistance,scores={testRespawnID=102}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=102}] run tp @s 881.71 15.00 -1521.95 -501.51 1.05

scoreboard players set @s testRespawnID 103
execute as @s[tag=testDistance,scores={testRespawnID=103}] run scoreboard players set @s respawnX 807
execute as @s[tag=testDistance,scores={testRespawnID=103}] run scoreboard players set @s respawnY 52
execute as @s[tag=testDistance,scores={testRespawnID=103}] run scoreboard players set @s respawnZ -1857
execute as @s[tag=testDistance,scores={testRespawnID=103}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=103}] run tp @s 807.61 52.00 -1857.97 -524.86 -18.22


###########
# Azkaban #
###########
scoreboard players set @s testRespawnID 104
execute as @s[tag=testDistance,scores={testRespawnID=104}] run scoreboard players set @s respawnX 5114
execute as @s[tag=testDistance,scores={testRespawnID=104}] run scoreboard players set @s respawnY 27
execute as @s[tag=testDistance,scores={testRespawnID=104}] run scoreboard players set @s respawnZ 10080
execute as @s[tag=testDistance,scores={testRespawnID=104}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=104}] run tp @s 5114.92 27.00 10080.04 -236.96 -18.87


#######################
# Underground library #
#######################
scoreboard players set @s testRespawnID 105
execute as @s[tag=testDistance,scores={testRespawnID=105}] run scoreboard players set @s respawnX 6962
execute as @s[tag=testDistance,scores={testRespawnID=105}] run scoreboard players set @s respawnY 72
execute as @s[tag=testDistance,scores={testRespawnID=105}] run scoreboard players set @s respawnZ 4923
execute as @s[tag=testDistance,scores={testRespawnID=105}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=105}] run tp @s 6962.96 72.00 4923.52 -0.64 4.71

######################
# Philospher's Stone #
######################
scoreboard players set @s testRespawnID 106
execute as @s[tag=testDistance,scores={testRespawnID=106}] run scoreboard players set @s respawnX 1867
execute as @s[tag=testDistance,scores={testRespawnID=106}] run scoreboard players set @s respawnY 35
execute as @s[tag=testDistance,scores={testRespawnID=106}] run scoreboard players set @s respawnZ 655
execute as @s[tag=testDistance,scores={testRespawnID=106}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=106}] run tp @s 1867.24 35.00 655.68 629.84 0.95

execute if score challengeChambersSecondSpawnPointUnlocked global matches 1 run scoreboard players set @s testRespawnID 107
execute as @s[tag=testDistance,scores={testRespawnID=107}] run scoreboard players set @s respawnX 1901
execute as @s[tag=testDistance,scores={testRespawnID=107}] run scoreboard players set @s respawnY 35
execute as @s[tag=testDistance,scores={testRespawnID=107}] run scoreboard players set @s respawnZ 761
execute as @s[tag=testDistance,scores={testRespawnID=107}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=107}] run tp @s 1901.92 35.00 761.58 629.43 4.43


######################
# Тайная Комната #
######################
scoreboard players set @s testRespawnID 108
execute as @s[tag=testDistance,scores={testRespawnID=108}] run scoreboard players set @s respawnX 6520
execute as @s[tag=testDistance,scores={testRespawnID=108}] run scoreboard players set @s respawnY 50
execute as @s[tag=testDistance,scores={testRespawnID=108}] run scoreboard players set @s respawnZ 862
execute as @s[tag=testDistance,scores={testRespawnID=108}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=108}] run tp @s 6520.41 50.00 862.82 237.86 -1.78

########################
# Тайная Комната 2 #
########################
execute if score chamberOfScecretsSecondSpawnPointUnlocked global matches 1 run scoreboard players set @s testRespawnID 109
execute as @s[tag=testDistance,scores={testRespawnID=109}] run scoreboard players set @s respawnX 1901
execute as @s[tag=testDistance,scores={testRespawnID=109}] run scoreboard players set @s respawnY 35
execute as @s[tag=testDistance,scores={testRespawnID=109}] run scoreboard players set @s respawnZ 761
execute as @s[tag=testDistance,scores={testRespawnID=109}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=109}] run tp @s 6441.98 46.50 940.54 629.01 3.00

#######################
# Room of Requirement #
#######################
scoreboard players set @s testRespawnID 110
execute as @s[tag=testDistance,scores={testRespawnID=110}] run scoreboard players set @s respawnX 5498
execute as @s[tag=testDistance,scores={testRespawnID=110}] run scoreboard players set @s respawnY 49
execute as @s[tag=testDistance,scores={testRespawnID=110}] run scoreboard players set @s respawnZ 1038
execute as @s[tag=testDistance,scores={testRespawnID=110}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=110}] run tp @s 5498.83 49.00 1038.20 -53.48 -0.11

#####################
# Dungeon Delving 1 #
#####################
scoreboard players set @s testRespawnID 111
execute as @s[tag=testDistance,scores={testRespawnID=111}] run scoreboard players set @s respawnX 1847
execute as @s[tag=testDistance,scores={testRespawnID=111}] run scoreboard players set @s respawnY 99
execute as @s[tag=testDistance,scores={testRespawnID=111}] run scoreboard players set @s respawnZ 937
execute as @s[tag=testDistance,scores={testRespawnID=111}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=111}] run tp @s 1847.53 99.00 937.21 180.09 8.80

#####################
# Dungeon Delving 2 #
#####################
execute if score dungeonDelvingSecondSpawnPointUnlocked global matches 1 run scoreboard players set @s testRespawnID 112
execute as @s[tag=testDistance,scores={testRespawnID=112}] run scoreboard players set @s respawnX 1807
execute as @s[tag=testDistance,scores={testRespawnID=112}] run scoreboard players set @s respawnY 86
execute as @s[tag=testDistance,scores={testRespawnID=112}] run scoreboard players set @s respawnZ 885
execute as @s[tag=testDistance,scores={testRespawnID=112}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=112}] run tp @s 1807.09 86.00 885.36 -271.35 8.42


#####################
# Dungeon Delving 3 #
#####################
execute if score dungeonDelvingThirdSpawnPointUnlocked global matches 1 run scoreboard players set @s testRespawnID 113
execute as @s[tag=testDistance,scores={testRespawnID=113}] run scoreboard players set @s respawnX 1778
execute as @s[tag=testDistance,scores={testRespawnID=113}] run scoreboard players set @s respawnY 52
execute as @s[tag=testDistance,scores={testRespawnID=113}] run scoreboard players set @s respawnZ 859
execute as @s[tag=testDistance,scores={testRespawnID=113}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=113}] run tp @s 1778.36 52.00 859.81 251.07 4.62


#####################
# Dungeon Delving 4 #
#####################
execute if score dungeonDelvingFourthSpawnPointUnlocked global matches 1 run scoreboard players set @s testRespawnID 114
execute as @s[tag=testDistance,scores={testRespawnID=114}] run scoreboard players set @s respawnX 1664
execute as @s[tag=testDistance,scores={testRespawnID=114}] run scoreboard players set @s respawnY 48
execute as @s[tag=testDistance,scores={testRespawnID=114}] run scoreboard players set @s respawnZ 841
execute as @s[tag=testDistance,scores={testRespawnID=114}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=114}] run tp @s 1664.60 48.00 841.83 -0.23 3.50



#####################
# Dungeon Delving 5 #
#####################
execute if score dungeonDelvingFifthSpawnPointUnlocked global matches 1 run scoreboard players set @s testRespawnID 115
execute as @s[tag=testDistance,scores={testRespawnID=115}] run scoreboard players set @s respawnX 1732
execute as @s[tag=testDistance,scores={testRespawnID=115}] run scoreboard players set @s respawnY 51
execute as @s[tag=testDistance,scores={testRespawnID=115}] run scoreboard players set @s respawnZ 883
execute as @s[tag=testDistance,scores={testRespawnID=115}] run function hp:respawn/distance_to_spawnpoint
execute as @s[tag=tpToRespawnPoint,scores={respawnID=115}] run tp @s 1732.61 51.00 883.49 -89.89 2.25

# Teleport to the closest point
tag @s[tag=testDistance] remove testDistance
tag @s[tag=tpToRespawnPoint] remove tpToRespawnPoint
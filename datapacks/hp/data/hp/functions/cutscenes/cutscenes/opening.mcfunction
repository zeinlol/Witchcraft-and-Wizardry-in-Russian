# I wrote a small script for Unity that allowed me to export the animation and add it here fairly easily.

execute as @s[scores={cutSceneTimer=1}] as @a[tag=cutsceneSlave] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=22}] run tag @a[tag=cutsceneSlave] add letterbox
execute as @s[scores={cutSceneTimer=22}] run tag @a[tag=cutsceneSlave] add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] run tag @a[tag=cutsceneSlave] add cutsceneZoom
execute as @s[scores={cutSceneTimer=1}] as @a[tag=cutsceneSlave] run stopsound @s master
execute as @s[scores={cutSceneTimer=70}] as @a[tag=cutsceneSlave] at @s run playsound minecraft:custom.music.opening master @s ~ ~ ~ 10000 1 1

execute as @s[scores={cutSceneTimer=20}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0035 -13.00253
execute as @s[scores={cutSceneTimer=20}] run time set 12750

execute as @s[scores={cutSceneTimer=40}] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute as @s[scores={cutSceneTimer=40}] run execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2344 -776 1 1 false @s
execute as @s[scores={cutSceneTimer=40}] run execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2360 -776 1 1 false @s
execute as @s[scores={cutSceneTimer=40}] run function hp:misc/privet_drive_bus_hide
execute as @s[scores={cutSceneTimer=40}] as @e[tag=stanShunpikePrivetDrive,limit=1] at @s run tp @s ~ 61 ~
execute as @s[scores={cutSceneTimer=40}] run kill @e[tag=chunkLoader,limit=1,sort=nearest]
execute as @s[scores={cutSceneTimer=100}] as @a[tag=cutsceneSlave] run function hp:cutscenes/fade_out

execute as @s[scores={cutSceneTimer=23}] run summon minecraft:armor_stand 2326.44 65.47 -795.42 {NoGravity: 1b, HurtByTimestamp: 0, Attributes: [{Base: 20.0d, Name: "generic.maxHealth"}, {Base: 0.0d, Name: "generic.knockbackResistance"}, {Base: 0.699999988079071d, Name: "generic.movementSpeed"}, {Base: 0.0d, Name: "generic.armor"}, {Base: 0.0d, Name: "generic.armorToughness"}], Invulnerable: 1b, FallFlying: 0b, ShowArms: 0b, PortalCooldown: 0, AbsorptionAmount: 0.0f, FallDistance: 0.0f, DisabledSlots: 0, DeathTime: 0s, WorldUUIDMost: 7024783080082261215L, Pose: {}, Spigot.ticksLived: 2248470, Invisible: 1b, Tags: ["openingOwl"], Motion: [0.0d, 0.0d, 0.0d], Small: 0b, Health: 20.0f, Bukkit.updateLevel: 2, Air: 300s, OnGround: 1b, Rotation: [89.97634f, 0.0f], HandItems: [{}, {}], Fire: 0s, ArmorItems: [{}, {}, {}, {}], NoBasePlate: 0b, HurtTime: 0s, WorldUUIDLeast: -5171798306662181185L}
execute as @s[scores={cutSceneTimer=23}] run tp @e[tag=openingOwl,limit=1] 2326.34 65.466 -795.42 90 0
execute as @s[scores={cutSceneTimer=23}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.0000f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:29}}]}
execute as @s[scores={cutSceneTimer=23}] run tp @e[tag=hogwartsLetter,limit=1] 2310.66 67.754 -931.085 24.55639 0
execute as @s[scores={cutSceneTimer=23}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[333.2049f,00.0000f]},ArmorItems:[{},{},{},{}]}
execute as @s[scores={cutSceneTimer=24}] run tp @e[tag=openingOwl,limit=1] 2326.439 65.46925 -795.42 90 0
execute as @s[scores={cutSceneTimer=24}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:29}}]}
execute as @s[scores={cutSceneTimer=30}] run title @a[tag=cutsceneSlave] times 10 40 15
execute as @s[scores={cutSceneTimer=30}] run title @a[tag=cutsceneSlave] subtitle {"text":"переведённая версия","color":"gold"}
execute as @s[scores={cutSceneTimer=30}] run title @a[tag=cutsceneSlave] title {"text":" By The Floo Network "}
execute as @s[scores={cutSceneTimer=31}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0623 -13.04568
execute as @s[scores={cutSceneTimer=32}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0779 -13.05777
execute as @s[scores={cutSceneTimer=33}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0856 -13.06372
execute as @s[scores={cutSceneTimer=34}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0905 -13.06769
execute as @s[scores={cutSceneTimer=35}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0978 -13.07349
execute as @s[scores={cutSceneTimer=36}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1049 -13.07925
execute as @s[scores={cutSceneTimer=37}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1117 -13.0849
execute as @s[scores={cutSceneTimer=38}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1183 -13.09048
execute as @s[scores={cutSceneTimer=39}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1248 -13.09604
execute as @s[scores={cutSceneTimer=40}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1309 -13.10138
execute as @s[scores={cutSceneTimer=41}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1368 -13.10672
execute as @s[scores={cutSceneTimer=42}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1426 -13.11194
execute as @s[scores={cutSceneTimer=43}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1481 -13.11707
execute as @s[scores={cutSceneTimer=44}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1532 -13.12195
execute as @s[scores={cutSceneTimer=45}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1582 -13.12683
execute as @s[scores={cutSceneTimer=46}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1629 -13.13165
execute as @s[scores={cutSceneTimer=47}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1673 -13.13623
execute as @s[scores={cutSceneTimer=48}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1714 -13.14075
execute as @s[scores={cutSceneTimer=49}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1753 -13.14514
execute as @s[scores={cutSceneTimer=50}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.179 -13.14935
execute as @s[scores={cutSceneTimer=51}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1822 -13.15338
execute as @s[scores={cutSceneTimer=52}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1852 -13.15732
execute as @s[scores={cutSceneTimer=53}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1879 -13.1611
execute as @s[scores={cutSceneTimer=54}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1904 -13.16476
execute as @s[scores={cutSceneTimer=55}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1925 -13.16824
execute as @s[scores={cutSceneTimer=56}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1944 -13.17157
execute as @s[scores={cutSceneTimer=57}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1959 -13.17474
execute as @s[scores={cutSceneTimer=58}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1972 -13.17786
execute as @s[scores={cutSceneTimer=59}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1982 -13.18066
execute as @s[scores={cutSceneTimer=60}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1988 -13.18332
execute as @s[scores={cutSceneTimer=61}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1991 -13.18494
execute as @s[scores={cutSceneTimer=62}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1992 -13.18735
execute as @s[scores={cutSceneTimer=63}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1991 -13.18954
execute as @s[scores={cutSceneTimer=64}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1986 -13.19171
execute as @s[scores={cutSceneTimer=65}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1979 -13.19354
execute as @s[scores={cutSceneTimer=66}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1968 -13.19513
execute as @s[scores={cutSceneTimer=67}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1955 -13.19662
execute as @s[scores={cutSceneTimer=68}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1938 -13.19791
execute as @s[scores={cutSceneTimer=69}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1918 -13.19891
execute as @s[scores={cutSceneTimer=70}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1895 -13.19974
execute as @s[scores={cutSceneTimer=71}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1869 -13.20032
execute as @s[scores={cutSceneTimer=72}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1839 -13.20074
execute as @s[scores={cutSceneTimer=73}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1806 -13.20096
execute as @s[scores={cutSceneTimer=74}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1771 -13.20084
execute as @s[scores={cutSceneTimer=75}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1733 -13.2005
execute as @s[scores={cutSceneTimer=76}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1692 -13.19983
execute as @s[scores={cutSceneTimer=77}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1648 -13.19894
execute as @s[scores={cutSceneTimer=78}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1601 -13.19791
execute as @s[scores={cutSceneTimer=79}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1551 -13.19647
execute as @s[scores={cutSceneTimer=80}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1497 -13.19482
execute as @s[scores={cutSceneTimer=81}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1443 -13.19278
execute as @s[scores={cutSceneTimer=82}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1385 -13.19061
execute as @s[scores={cutSceneTimer=83}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1325 -13.18796
execute as @s[scores={cutSceneTimer=84}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1263 -13.18512
execute as @s[scores={cutSceneTimer=85}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1198 -13.18192
execute as @s[scores={cutSceneTimer=86}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1131 -13.17841
execute as @s[scores={cutSceneTimer=87}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1063 -13.17462
execute as @s[scores={cutSceneTimer=88}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0992 -13.17044
execute as @s[scores={cutSceneTimer=89}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0921 -13.16595
execute as @s[scores={cutSceneTimer=90}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0848 -13.16107
execute as @s[scores={cutSceneTimer=91}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0772 -13.15585
execute as @s[scores={cutSceneTimer=92}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0696 -13.15033
execute as @s[scores={cutSceneTimer=93}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.062 -13.14453
execute as @s[scores={cutSceneTimer=94}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0544 -13.1384
execute as @s[scores={cutSceneTimer=95}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0467 -13.13193
execute as @s[scores={cutSceneTimer=96}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0389 -13.12509
execute as @s[scores={cutSceneTimer=97}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0312 -13.11792
execute as @s[scores={cutSceneTimer=98}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0235 -13.11057
execute as @s[scores={cutSceneTimer=99}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0159 -13.10294
execute as @s[scores={cutSceneTimer=100}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0084 -13.09506
execute as @s[scores={cutSceneTimer=101}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.001 -13.08691
execute as @s[scores={cutSceneTimer=102}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9937 -13.07867
execute as @s[scores={cutSceneTimer=103}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9889 -13.07306
execute as @s[scores={cutSceneTimer=104}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9819 -13.06458
execute as @s[scores={cutSceneTimer=105}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.975 -13.05597
execute as @s[scores={cutSceneTimer=106}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9685 -13.04736
execute as @s[scores={cutSceneTimer=107}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9622 -13.03876
execute as @s[scores={cutSceneTimer=108}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9561 -13.03024
execute as @s[scores={cutSceneTimer=109}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9503 -13.02188
execute as @s[scores={cutSceneTimer=110}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9449 -13.01376
execute as @s[scores={cutSceneTimer=111}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9398 -13.00586
execute as @s[scores={cutSceneTimer=112}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9351 -12.9982
execute as @s[scores={cutSceneTimer=113}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9308 -12.99109
execute as @s[scores={cutSceneTimer=114}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9269 -12.98428
execute as @s[scores={cutSceneTimer=115}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9235 -12.97803
execute as @s[scores={cutSceneTimer=116}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9205 -12.97223
execute as @s[scores={cutSceneTimer=117}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.918 -12.96704
execute as @s[scores={cutSceneTimer=118}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9159 -12.9624
execute as @s[scores={cutSceneTimer=119}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9143 -12.95828
execute as @s[scores={cutSceneTimer=120}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9133 -12.95483
execute as @s[scores={cutSceneTimer=121}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9128 -12.95197
execute as @s[scores={cutSceneTimer=122}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9128 -12.94971
execute as @s[scores={cutSceneTimer=123}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9133 -12.94809
execute as @s[scores={cutSceneTimer=124}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9144 -12.94714
execute as @s[scores={cutSceneTimer=125}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9161 -12.94678
execute as @s[scores={cutSceneTimer=126}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9183 -12.94705
execute as @s[scores={cutSceneTimer=127}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9211 -12.94797
execute as @s[scores={cutSceneTimer=128}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9245 -12.9494
execute as @s[scores={cutSceneTimer=129}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9283 -12.95145
execute as @s[scores={cutSceneTimer=130}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9329 -12.95398
execute as @s[scores={cutSceneTimer=131}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9379 -12.95709
execute as @s[scores={cutSceneTimer=132}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9434 -12.96063
execute as @s[scores={cutSceneTimer=133}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9495 -12.96469
execute as @s[scores={cutSceneTimer=134}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9561 -12.96918
execute as @s[scores={cutSceneTimer=135}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9632 -12.97409
execute as @s[scores={cutSceneTimer=136}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9709 -12.97943
execute as @s[scores={cutSceneTimer=137}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.979 -12.98517
execute as @s[scores={cutSceneTimer=138}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9877 -12.99133
execute as @s[scores={cutSceneTimer=139}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 287.9968 -12.9978
execute as @s[scores={cutSceneTimer=140}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0035 -13.00223
execute as @s[scores={cutSceneTimer=141}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0181 -13.00836
execute as @s[scores={cutSceneTimer=142}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0386 -13.01355
execute as @s[scores={cutSceneTimer=143}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0653 -13.01788
execute as @s[scores={cutSceneTimer=144}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.0982 -13.02136
execute as @s[scores={cutSceneTimer=145}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1371 -13.02396
execute as @s[scores={cutSceneTimer=146}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.1829 -13.02563
execute as @s[scores={cutSceneTimer=147}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.2347 -13.02643
execute as @s[scores={cutSceneTimer=148}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.2927 -13.02625
execute as @s[scores={cutSceneTimer=149}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.3571 -13.02509
execute as @s[scores={cutSceneTimer=150}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.4286 -13.02295
execute as @s[scores={cutSceneTimer=151}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.5061 -13.01978
execute as @s[scores={cutSceneTimer=152}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.5901 -13.01566
execute as @s[scores={cutSceneTimer=153}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.6807 -13.01056
execute as @s[scores={cutSceneTimer=154}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.7781 -13.00436
execute as @s[scores={cutSceneTimer=155}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.8839 -12.99701
execute as @s[scores={cutSceneTimer=156}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 288.9957 -12.98859
execute as @s[scores={cutSceneTimer=157}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 289.1154 -12.97903
execute as @s[scores={cutSceneTimer=158}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 289.2415 -12.96835
execute as @s[scores={cutSceneTimer=159}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 289.3759 -12.95639
execute as @s[scores={cutSceneTimer=160}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 289.5191 -12.94308
execute as @s[scores={cutSceneTimer=161}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 289.6669 -12.9288
execute as @s[scores={cutSceneTimer=162}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 289.8237 -12.91321
execute as @s[scores={cutSceneTimer=163}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 289.9866 -12.89645
execute as @s[scores={cutSceneTimer=164}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 290.1566 -12.87839
execute as @s[scores={cutSceneTimer=165}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 290.3347 -12.85907
execute as @s[scores={cutSceneTimer=166}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 290.5182 -12.83856
execute as @s[scores={cutSceneTimer=167}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 290.7158 -12.81601
execute as @s[scores={cutSceneTimer=168}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 290.9164 -12.79266
execute as @s[scores={cutSceneTimer=169}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 291.1285 -12.7674
execute as @s[scores={cutSceneTimer=170}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 291.343 -12.7413
execute as @s[scores={cutSceneTimer=171}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 291.5663 -12.71371
execute as @s[scores={cutSceneTimer=172}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 291.8 -12.6843
execute as @s[scores={cutSceneTimer=173}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 292.0416 -12.65332
execute as @s[scores={cutSceneTimer=174}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 292.2894 -12.62103
execute as @s[scores={cutSceneTimer=175}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 292.5436 -12.5874
execute as @s[scores={cutSceneTimer=176}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 292.8091 -12.5517
execute as @s[scores={cutSceneTimer=177}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4 293.0797 -12.51483
execute as @s[scores={cutSceneTimer=178}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4001 293.3624 -12.47568
execute as @s[scores={cutSceneTimer=179}] run tp @a[tag=cutsceneSlave] 2322.95 64.48 -796.4004 293.6525 -12.43491
execute as @s[scores={cutSceneTimer=180}] run tp @a[tag=cutsceneSlave] 2322.95 64.48001 -796.4009 293.9489 -12.39276
execute as @s[scores={cutSceneTimer=181}] run tp @a[tag=cutsceneSlave] 2322.949 64.48004 -796.4018 294.253 -12.34875
execute as @s[scores={cutSceneTimer=182}] run tp @a[tag=cutsceneSlave] 2322.949 64.48009 -796.4025 294.4604 -12.31848
execute as @s[scores={cutSceneTimer=183}] run tp @a[tag=cutsceneSlave] 2322.949 64.48019 -796.4039 294.7787 -12.27151
execute as @s[scores={cutSceneTimer=184}] run tp @a[tag=cutsceneSlave] 2322.948 64.48034 -796.4055 295.1059 -12.22247
execute as @s[scores={cutSceneTimer=185}] run tp @a[tag=cutsceneSlave] 2322.948 64.48057 -796.4073 295.444 -12.1712
execute as @s[scores={cutSceneTimer=186}] run tp @a[tag=cutsceneSlave] 2322.947 64.48087 -796.4095 295.79 -12.11801
execute as @s[scores={cutSceneTimer=187}] run tp @a[tag=cutsceneSlave] 2322.946 64.48126 -796.4119 296.145 -12.06271
execute as @s[scores={cutSceneTimer=188}] run tp @a[tag=cutsceneSlave] 2322.946 64.48177 -796.4147 296.5135 -12.0047
execute as @s[scores={cutSceneTimer=189}] run tp @a[tag=cutsceneSlave] 2322.945 64.48238 -796.4177 296.884 -11.94547
execute as @s[scores={cutSceneTimer=190}] run tp @a[tag=cutsceneSlave] 2322.944 64.48312 -796.421 297.2659 -11.88367
execute as @s[scores={cutSceneTimer=191}] run tp @a[tag=cutsceneSlave] 2322.942 64.48399 -796.4246 297.6544 -11.81998
execute as @s[scores={cutSceneTimer=192}] run tp @a[tag=cutsceneSlave] 2322.941 64.48503 -796.4285 298.0593 -11.75281
execute as @s[scores={cutSceneTimer=193}] run tp @a[tag=cutsceneSlave] 2322.94 64.48622 -796.4327 298.4659 -11.68439
execute as @s[scores={cutSceneTimer=194}] run tp @a[tag=cutsceneSlave] 2322.939 64.4876 -796.4373 298.891 -11.61194
execute as @s[scores={cutSceneTimer=195}] run tp @a[tag=cutsceneSlave] 2322.937 64.4892 -796.4422 299.3344 -11.53537
execute as @s[scores={cutSceneTimer=196}] run tp @a[tag=cutsceneSlave] 2322.936 64.49096 -796.4473 299.7713 -11.45892
execute as @s[scores={cutSceneTimer=197}] run tp @a[tag=cutsceneSlave] 2322.934 64.49295 -796.4528 300.2262 -11.37827
execute as @s[scores={cutSceneTimer=198}] run tp @a[tag=cutsceneSlave] 2322.932 64.49519 -796.4586 300.6933 -11.29434
execute as @s[scores={cutSceneTimer=199}] run tp @a[tag=cutsceneSlave] 2322.93 64.49765 -796.4647 301.1685 -11.20789
execute as @s[scores={cutSceneTimer=200}] run tp @a[tag=cutsceneSlave] 2322.928 64.50036 -796.4711 301.6497 -11.11908
execute as @s[scores={cutSceneTimer=201}] run tp @a[tag=cutsceneSlave] 2322.926 64.5033 -796.4777 302.136 -11.02808
execute as @s[scores={cutSceneTimer=202}] run tp @a[tag=cutsceneSlave] 2322.924 64.50652 -796.4847 302.629 -10.9346
execute as @s[scores={cutSceneTimer=203}] run tp @a[tag=cutsceneSlave] 2322.922 64.51006 -796.4921 303.1423 -10.83588
execute as @s[scores={cutSceneTimer=204}] run tp @a[tag=cutsceneSlave] 2322.92 64.51385 -796.4996 303.6529 -10.73642
execute as @s[scores={cutSceneTimer=205}] run tp @a[tag=cutsceneSlave] 2322.917 64.51795 -796.5076 304.1768 -10.63293
execute as @s[scores={cutSceneTimer=206}] run tp @a[tag=cutsceneSlave] 2322.915 64.52238 -796.5159 304.7089 -10.52637
execute as @s[scores={cutSceneTimer=207}] run tp @a[tag=cutsceneSlave] 2322.912 64.52711 -796.5244 305.248 -10.41687
execute as @s[scores={cutSceneTimer=207}] run tp @e[tag=openingOwl,limit=1] 2326.439 65.46925 -795.42 89.97634 0
execute as @s[scores={cutSceneTimer=207}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:30}}]}
execute as @s[scores={cutSceneTimer=208}] run tp @a[tag=cutsceneSlave] 2322.909 64.53217 -796.5333 305.7964 -10.30377
execute as @s[scores={cutSceneTimer=209}] run tp @a[tag=cutsceneSlave] 2322.907 64.5377 -796.5426 306.3649 -10.18509
execute as @s[scores={cutSceneTimer=209}] run tp @e[tag=openingOwl,limit=1] 2326.439 65.46925 -795.42 89.971 0
execute as @s[scores={cutSceneTimer=209}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:31}}]}
execute as @s[scores={cutSceneTimer=210}] run tp @a[tag=cutsceneSlave] 2322.904 64.54353 -796.5522 306.9359 -10.064
execute as @s[scores={cutSceneTimer=211}] run tp @a[tag=cutsceneSlave] 2322.901 64.54984 -796.5623 307.5215 -9.938049
execute as @s[scores={cutSceneTimer=211}] run tp @e[tag=openingOwl,limit=1] 2326.439 65.46925 -795.42 89.96488 0
execute as @s[scores={cutSceneTimer=211}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[scores={cutSceneTimer=212}] run tp @a[tag=cutsceneSlave] 2322.897 64.5564 -796.5724 308.108 -9.810028
execute as @s[scores={cutSceneTimer=213}] run tp @a[tag=cutsceneSlave] 2322.895 64.56137 -796.58 308.512 -9.720825
execute as @s[scores={cutSceneTimer=214}] run tp @a[tag=cutsceneSlave] 2322.892 64.56863 -796.5908 309.1142 -9.586121
execute as @s[scores={cutSceneTimer=215}] run tp @a[tag=cutsceneSlave] 2322.889 64.57637 -796.602 309.728 -9.446777
execute as @s[scores={cutSceneTimer=216}] run tp @a[tag=cutsceneSlave] 2322.885 64.58453 -796.6135 310.3509 -9.303375
execute as @s[scores={cutSceneTimer=217}] run tp @a[tag=cutsceneSlave] 2322.881 64.59319 -796.6255 310.9866 -9.154816
execute as @s[scores={cutSceneTimer=218}] run tp @a[tag=cutsceneSlave] 2322.878 64.60233 -796.6378 311.6327 -9.001495
execute as @s[scores={cutSceneTimer=219}] run tp @a[tag=cutsceneSlave] 2322.874 64.61181 -796.6503 312.2811 -8.845276
execute as @s[scores={cutSceneTimer=220}] run tp @a[tag=cutsceneSlave] 2322.87 64.62183 -796.6632 312.9421 -8.683868
execute as @s[scores={cutSceneTimer=221}] run tp @a[tag=cutsceneSlave] 2322.866 64.63255 -796.6767 313.6262 -8.514191
execute as @s[scores={cutSceneTimer=222}] run tp @a[tag=cutsceneSlave] 2322.862 64.64352 -796.6902 314.3018 -8.344147
execute as @s[scores={cutSceneTimer=223}] run tp @a[tag=cutsceneSlave] 2322.857 64.65517 -796.7044 314.9982 -8.166321
execute as @s[scores={cutSceneTimer=224}] run tp @a[tag=cutsceneSlave] 2322.853 64.66733 -796.7188 315.7021 -7.984039
execute as @s[scores={cutSceneTimer=224}] run tp @e[tag=openingOwl,limit=1] 2326.439 65.46925 -795.42 89.90551 0
execute as @s[scores={cutSceneTimer=224}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:26}}]}
execute as @s[scores={cutSceneTimer=225}] run tp @a[tag=cutsceneSlave] 2322.849 64.68002 -796.7336 316.4131 -7.797272
execute as @s[scores={cutSceneTimer=226}] run tp @a[tag=cutsceneSlave] 2322.844 64.69321 -796.7487 317.1292 -7.606598
execute as @s[scores={cutSceneTimer=226}] run tp @e[tag=openingOwl,limit=1] 2326.439 65.46925 -795.42 89.89174 0
execute as @s[scores={cutSceneTimer=226}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:25}}]}
execute as @s[scores={cutSceneTimer=227}] run tp @a[tag=cutsceneSlave] 2322.839 64.70695 -796.7641 317.8516 -7.411682
execute as @s[scores={cutSceneTimer=228}] run tp @a[tag=cutsceneSlave] 2322.834 64.7212 -796.7798 318.5776 -7.213348
execute as @s[scores={cutSceneTimer=228}] run tp @e[tag=openingOwl,limit=1] 2326.439 65.46925 -795.42 89.71018 0
execute as @s[scores={cutSceneTimer=228}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:25}}]}
execute as @s[scores={cutSceneTimer=229}] run tp @a[tag=cutsceneSlave] 2322.83 64.73612 -796.796 319.3179 -7.008636
execute as @s[scores={cutSceneTimer=229}] run tp @e[tag=openingOwl,limit=1] 2326.439 65.46874 -795.42 89.51333 0
execute as @s[scores={cutSceneTimer=229}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:24}}]}
execute as @s[scores={cutSceneTimer=230}] run tp @a[tag=cutsceneSlave] 2322.824 64.75161 -796.8126 320.0629 -6.800201
execute as @s[scores={cutSceneTimer=230}] run tp @e[tag=openingOwl,limit=1] 2326.439 65.46693 -795.42 89.25159 0
execute as @s[scores={cutSceneTimer=230}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:24}}]}
execute as @s[scores={cutSceneTimer=231}] run tp @a[tag=cutsceneSlave] 2322.819 64.76799 -796.8297 320.8348 -6.58194
execute as @s[scores={cutSceneTimer=231}] run tp @e[tag=openingOwl,limit=1] 2326.439 65.46407 -795.42 88.92207 0
execute as @s[scores={cutSceneTimer=231}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:23}}]}
execute as @s[scores={cutSceneTimer=232}] run tp @a[tag=cutsceneSlave] 2322.814 64.78497 -796.8472 321.6108 -6.360229
execute as @s[scores={cutSceneTimer=232}] run tp @e[tag=openingOwl,limit=1] 2326.439 65.46055 -795.42 88.53384 0
execute as @s[scores={cutSceneTimer=232}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:22}}]}
execute as @s[scores={cutSceneTimer=233}] run tp @a[tag=cutsceneSlave] 2322.809 64.8023 -796.8649 322.3752 -6.139893
execute as @s[scores={cutSceneTimer=233}] run tp @e[tag=openingOwl,limit=1] 2326.439 65.45681 -795.42 88.09751 0
execute as @s[scores={cutSceneTimer=233}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:22}}]}
execute as @s[scores={cutSceneTimer=234}] run tp @a[tag=cutsceneSlave] 2322.803 64.82039 -796.8829 323.1533 -5.913818
execute as @s[scores={cutSceneTimer=234}] run tp @e[tag=openingOwl,limit=1] 2326.439 65.4531 -795.42 87.6077 0
execute as @s[scores={cutSceneTimer=234}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:21}}]}
execute as @s[scores={cutSceneTimer=235}] run tp @a[tag=cutsceneSlave] 2322.798 64.83915 -796.9014 323.9377 -5.684326
execute as @s[scores={cutSceneTimer=235}] run tp @e[tag=openingOwl,limit=1] 2326.438 65.44982 -795.42 87.07078 0
execute as @s[scores={cutSceneTimer=235}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:20}}]}
execute as @s[scores={cutSceneTimer=236}] run tp @a[tag=cutsceneSlave] 2322.792 64.85869 -796.9204 324.7345 -5.449951
execute as @s[scores={cutSceneTimer=236}] run tp @e[tag=openingOwl,limit=1] 2326.436 65.4473 -795.42 86.48698 0
execute as @s[scores={cutSceneTimer=236}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:19}}]}
execute as @s[scores={cutSceneTimer=237}] run tp @a[tag=cutsceneSlave] 2322.786 64.87867 -796.9395 325.5235 -5.216888
execute as @s[scores={cutSceneTimer=237}] run tp @e[tag=openingOwl,limit=1] 2326.432 65.44592 -795.42 85.8708 0
execute as @s[scores={cutSceneTimer=237}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:18}}]}
execute as @s[scores={cutSceneTimer=238}] run tp @a[tag=cutsceneSlave] 2322.78 64.89935 -796.959 326.3182 -4.981567
execute as @s[scores={cutSceneTimer=238}] run tp @e[tag=openingOwl,limit=1] 2326.427 65.45238 -795.42 85.21902 0
execute as @s[scores={cutSceneTimer=238}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:17}}]}
execute as @s[scores={cutSceneTimer=239}] run tp @a[tag=cutsceneSlave] 2322.774 64.92092 -796.9791 327.1279 -4.741516
execute as @s[scores={cutSceneTimer=239}] run tp @e[tag=openingOwl,limit=1] 2326.403 65.46932 -795.42 84.52911 0
execute as @s[scores={cutSceneTimer=239}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:17}}]}
execute as @s[scores={cutSceneTimer=240}] run tp @a[tag=cutsceneSlave] 2322.768 64.9432 -796.9995 327.9414 -4.500458
execute as @s[scores={cutSceneTimer=240}] run tp @e[tag=openingOwl,limit=1] 2326.302 65.49589 -795.42 83.81097 0
execute as @s[scores={cutSceneTimer=240}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:16}}]}
execute as @s[scores={cutSceneTimer=241}] run tp @a[tag=cutsceneSlave] 2322.761 64.96618 -797.0203 328.7577 -4.259186
execute as @s[scores={cutSceneTimer=241}] run tp @e[tag=openingOwl,limit=1] 2326.201 65.51868 -795.42 83.0695 0
execute as @s[scores={cutSceneTimer=241}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.0479f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:15}}]}
execute as @s[scores={cutSceneTimer=242}] run tp @a[tag=cutsceneSlave] 2322.755 64.99013 -797.0417 329.5869 -4.015106
execute as @s[scores={cutSceneTimer=242}] run tp @e[tag=openingOwl,limit=1] 2326.125 65.54533 -795.4198 82.3092 0
execute as @s[scores={cutSceneTimer=242}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.2083f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:15}}]}
execute as @s[scores={cutSceneTimer=243}] run tp @a[tag=cutsceneSlave] 2322.748 65.01495 -797.0637 330.4212 -3.771027
execute as @s[scores={cutSceneTimer=243}] run tp @e[tag=openingOwl,limit=1] 2325.978 65.57563 -795.4157 81.53971 0
execute as @s[scores={cutSceneTimer=243}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.4695f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:14}}]}
execute as @s[scores={cutSceneTimer=244}] run tp @a[tag=cutsceneSlave] 2322.741 65.04056 -797.0859 331.2557 -3.528748
execute as @s[scores={cutSceneTimer=244}] run tp @e[tag=openingOwl,limit=1] 2325.843 65.6021 -795.4064 80.76485 0
execute as @s[scores={cutSceneTimer=244}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.8174f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:14}}]}
execute as @s[scores={cutSceneTimer=245}] run tp @a[tag=cutsceneSlave] 2322.734 65.06699 -797.1087 332.0895 -3.289215
execute as @s[scores={cutSceneTimer=245}] run tp @e[tag=openingOwl,limit=1] 2325.684 65.62111 -795.3921 79.98527 0
execute as @s[scores={cutSceneTimer=245}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,1.2383f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:13}}]}
execute as @s[scores={cutSceneTimer=246}] run tp @a[tag=cutsceneSlave] 2322.727 65.09405 -797.1317 332.9203 -3.053253
execute as @s[scores={cutSceneTimer=246}] run tp @e[tag=openingOwl,limit=1] 2325.512 65.62822 -795.3733 79.20735 0
execute as @s[scores={cutSceneTimer=246}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,1.7151f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:13}}]}
execute as @s[scores={cutSceneTimer=247}] run tp @a[tag=cutsceneSlave] 2322.72 65.12157 -797.1548 333.7501 -2.82077
execute as @s[scores={cutSceneTimer=247}] run tp @e[tag=openingOwl,limit=1] 2325.432 65.6254 -795.3624 78.43754 0
execute as @s[scores={cutSceneTimer=247}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,2.2295f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:12}}]}
execute as @s[scores={cutSceneTimer=248}] run tp @a[tag=cutsceneSlave] 2322.716 65.14079 -797.1708 334.3053 -2.667175
execute as @s[scores={cutSceneTimer=248}] run tp @e[tag=openingOwl,limit=1] 2325.366 65.62005 -795.3514 77.91187 0
execute as @s[scores={cutSceneTimer=248}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,2.5985f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:11}}]}
execute as @s[scores={cutSceneTimer=249}] run tp @a[tag=cutsceneSlave] 2322.708 65.16967 -797.1946 335.138 -2.440063
execute as @s[scores={cutSceneTimer=249}] run tp @e[tag=openingOwl,limit=1] 2325.208 65.60697 -795.3242 77.14055 0
execute as @s[scores={cutSceneTimer=249}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,3.1568f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:9}}]}
execute as @s[scores={cutSceneTimer=250}] run tp @a[tag=cutsceneSlave] 2322.701 65.19968 -797.219 335.9731 -2.216309
execute as @s[scores={cutSceneTimer=250}] run tp @e[tag=openingOwl,limit=1] 2324.994 65.58908 -795.2863 76.36182 0
execute as @s[scores={cutSceneTimer=250}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,3.7294f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=251}] run tp @a[tag=cutsceneSlave] 2322.693 65.23025 -797.2436 336.8075 -1.997375
execute as @s[scores={cutSceneTimer=251}] run tp @e[tag=openingOwl,limit=1] 2324.752 65.56853 -795.2417 75.5923 0
execute as @s[scores={cutSceneTimer=251}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,4.2919f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=252}] run tp @a[tag=cutsceneSlave] 2322.686 65.26176 -797.2687 337.6428 -1.782776
execute as @s[scores={cutSceneTimer=252}] run tp @e[tag=openingOwl,limit=1] 2324.504 65.54688 -795.1931 74.82272 0
execute as @s[scores={cutSceneTimer=252}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,4.8384f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=253}] run tp @a[tag=cutsceneSlave] 2322.678 65.29468 -797.2956 338.4843 -1.571442
execute as @s[scores={cutSceneTimer=253}] run tp @e[tag=openingOwl,limit=1] 2324.27 65.52567 -795.1431 74.04411 0
execute as @s[scores={cutSceneTimer=253}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,5.3622f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=254}] run tp @a[tag=cutsceneSlave] 2322.67 65.32813 -797.3244 339.322 -1.366241
execute as @s[scores={cutSceneTimer=254}] run tp @e[tag=openingOwl,limit=1] 2324.066 65.5047 -795.0944 73.27878 0
execute as @s[scores={cutSceneTimer=254}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,5.8351f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=255}] run tp @a[tag=cutsceneSlave] 2322.662 65.3627 -797.3556 340.1637 -1.165253
execute as @s[scores={cutSceneTimer=255}] run tp @e[tag=openingOwl,limit=1] 2323.86 65.47868 -795.0427 72.51375 0
execute as @s[scores={cutSceneTimer=255}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,6.2527f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=256}] run tp @a[tag=cutsceneSlave] 2322.653 65.39817 -797.389 341.0047 -0.9698486
execute as @s[scores={cutSceneTimer=256}] run tp @e[tag=openingOwl,limit=1] 2323.65 65.45077 -794.9882 71.75602 0
execute as @s[scores={cutSceneTimer=256}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,6.5976f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=257}] run tp @a[tag=cutsceneSlave] 2322.645 65.43439 -797.4243 341.8398 -0.781189
execute as @s[scores={cutSceneTimer=257}] run tp @e[tag=openingOwl,limit=1] 2323.438 65.42455 -794.9313 71.00975 0
execute as @s[scores={cutSceneTimer=257}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,6.8556f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:11}}]}
execute as @s[scores={cutSceneTimer=258}] run tp @a[tag=cutsceneSlave] 2322.636 65.47197 -797.4621 342.6842 -0.5958862
execute as @s[scores={cutSceneTimer=258}] run tp @e[tag=openingOwl,limit=1] 2323.221 65.40308 -794.8713 70.2635 0
execute as @s[scores={cutSceneTimer=258}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,7.0165f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=259}] run tp @a[tag=cutsceneSlave] 2322.628 65.51002 -797.5015 343.5123 -0.4195251
execute as @s[scores={cutSceneTimer=259}] run tp @e[tag=openingOwl,limit=1] 2323.006 65.39035 -794.8098 69.53654 0
execute as @s[scores={cutSceneTimer=259}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,7.0638f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=260}] run tp @a[tag=cutsceneSlave] 2322.619 65.549 -797.543 344.3361 -0.2493286
execute as @s[scores={cutSceneTimer=260}] run tp @e[tag=openingOwl,limit=1] 2322.792 65.38619 -794.7463 68.82033 0
execute as @s[scores={cutSceneTimer=260}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,7.0452f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=261}] run tp @a[tag=cutsceneSlave] 2322.61 65.58872 -797.5861 345.1487 -0.0866394
execute as @s[scores={cutSceneTimer=261}] run tp @e[tag=openingOwl,limit=1] 2322.582 65.37125 -794.6815 68.11972 0
execute as @s[scores={cutSceneTimer=261}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,6.9984f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:8}}]}
execute as @s[scores={cutSceneTimer=262}] run tp @a[tag=cutsceneSlave] 2322.601 65.62961 -797.6315 345.9616 0.07106782
execute as @s[scores={cutSceneTimer=262}] run tp @e[tag=openingOwl,limit=1] 2322.373 65.34777 -794.6146 67.42803 0
execute as @s[scores={cutSceneTimer=262}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,6.9254f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=263}] run tp @a[tag=cutsceneSlave] 2322.592 65.67195 -797.6793 346.7815 0.225091
execute as @s[scores={cutSceneTimer=263}] run tp @e[tag=openingOwl,limit=1] 2322.162 65.3232 -794.5455 66.74233 0
execute as @s[scores={cutSceneTimer=263}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,6.8280f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=264}] run tp @a[tag=cutsceneSlave] 2322.583 65.71466 -797.7283 347.5777 0.3698445
execute as @s[scores={cutSceneTimer=264}] run tp @e[tag=openingOwl,limit=1] 2321.957 65.30558 -794.4763 66.08133 0
execute as @s[scores={cutSceneTimer=264}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,6.7116f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=265}] run tp @a[tag=cutsceneSlave] 2322.574 65.75858 -797.7795 348.3725 0.5096627
execute as @s[scores={cutSceneTimer=265}] run tp @e[tag=openingOwl,limit=1] 2321.752 65.28474 -794.4056 65.43259 0
execute as @s[scores={cutSceneTimer=265}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,6.5767f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=266}] run tp @a[tag=cutsceneSlave] 2322.564 65.80361 -797.8326 349.1622 0.6440306
execute as @s[scores={cutSceneTimer=266}] run tp @e[tag=openingOwl,limit=1] 2321.549 65.25694 -794.3339 64.7991 0
execute as @s[scores={cutSceneTimer=266}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,6.4263f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=267}] run tp @a[tag=cutsceneSlave] 2322.554 65.84937 -797.8871 349.9362 0.7713605
execute as @s[scores={cutSceneTimer=267}] run tp @e[tag=openingOwl,limit=1] 2321.348 65.22881 -794.2621 64.18709 0
execute as @s[scores={cutSceneTimer=267}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,6.2644f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=268}] run tp @a[tag=cutsceneSlave] 2322.545 65.89673 -797.9442 350.7152 0.8952999
execute as @s[scores={cutSceneTimer=268}] run tp @e[tag=openingOwl,limit=1] 2321.147 65.20631 -794.1888 63.58638 0
execute as @s[scores={cutSceneTimer=268}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,6.0905f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=269}] run tp @a[tag=cutsceneSlave] 2322.535 65.9446 -798.0023 351.4721 1.011686
execute as @s[scores={cutSceneTimer=269}] run tp @e[tag=openingOwl,limit=1] 2320.95 65.19633 -794.1162 63.01184 0
execute as @s[scores={cutSceneTimer=269}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,5.9114f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=270}] run tp @a[tag=cutsceneSlave] 2322.525 65.99445 -798.0634 352.2401 1.125755
execute as @s[scores={cutSceneTimer=270}] run tp @e[tag=openingOwl,limit=1] 2320.751 65.20448 -794.0403 62.44741 0
execute as @s[scores={cutSceneTimer=270}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,5.7243f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=271}] run tp @a[tag=cutsceneSlave] 2322.514 66.04513 -798.1258 352.9917 1.233602
execute as @s[scores={cutSceneTimer=271}] run tp @e[tag=openingOwl,limit=1] 2320.554 65.2062 -793.96 61.90772 0
execute as @s[scores={cutSceneTimer=271}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,5.5363f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=272}] run tp @a[tag=cutsceneSlave] 2322.504 66.09705 -798.1901 353.7349 1.336598
execute as @s[scores={cutSceneTimer=272}] run tp @e[tag=openingOwl,limit=1] 2320.359 65.19209 -793.875 61.38943 0
execute as @s[scores={cutSceneTimer=272}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,5.3000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=273}] run tp @a[tag=cutsceneSlave] 2322.493 66.14982 -798.2557 354.4607 1.43363
execute as @s[scores={cutSceneTimer=273}] run tp @e[tag=openingOwl,limit=1] 2320.166 65.16961 -793.7865 60.89762 0
execute as @s[scores={cutSceneTimer=273}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,4.9441f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=274}] run tp @a[tag=cutsceneSlave] 2322.482 66.20339 -798.3228 355.1707 1.525297
execute as @s[scores={cutSceneTimer=274}] run tp @e[tag=openingOwl,limit=1] 2319.975 65.14604 -793.695 60.43222 0
execute as @s[scores={cutSceneTimer=274}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,4.4785f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=275}] run tp @a[tag=cutsceneSlave] 2322.47 66.25716 -798.3911 355.864 1.611772
execute as @s[scores={cutSceneTimer=275}] run tp @e[tag=openingOwl,limit=1] 2319.787 65.12852 -793.601 59.99444 0
execute as @s[scores={cutSceneTimer=275}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,3.9155f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=276}] run tp @a[tag=cutsceneSlave] 2322.455 66.31207 -798.4618 356.5568 1.695113
execute as @s[scores={cutSceneTimer=276}] run tp @e[tag=openingOwl,limit=1] 2319.598 65.12372 -793.5034 59.5774 0
execute as @s[scores={cutSceneTimer=276}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,3.2533f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=277}] run tp @a[tag=cutsceneSlave] 2322.438 66.36721 -798.5339 357.233 1.773605
execute as @s[scores={cutSceneTimer=277}] run tp @e[tag=openingOwl,limit=1] 2319.412 65.12955 -793.404 59.1894 0
execute as @s[scores={cutSceneTimer=277}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,2.5120f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=278}] run tp @a[tag=cutsceneSlave] 2322.42 66.4223 -798.607 357.8896 1.847076
execute as @s[scores={cutSceneTimer=278}] run tp @e[tag=openingOwl,limit=1] 2319.229 65.14281 -793.304 58.83274 0
execute as @s[scores={cutSceneTimer=278}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,1.7063f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=279}] run tp @a[tag=cutsceneSlave] 2322.399 66.47868 -798.6827 358.5235 1.91544
execute as @s[scores={cutSceneTimer=279}] run tp @e[tag=openingOwl,limit=1] 2319.047 65.16337 -793.2012 58.50014 0
execute as @s[scores={cutSceneTimer=279}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.8263f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=280}] run tp @a[tag=cutsceneSlave] 2322.377 66.53561 -798.7602 359.1834 1.983676
execute as @s[scores={cutSceneTimer=280}] run tp @e[tag=openingOwl,limit=1] 2318.866 65.19066 -793.0976 58.19774 0
execute as @s[scores={cutSceneTimer=280}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,359.8918f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:12}}]}
execute as @s[scores={cutSceneTimer=281}] run tp @a[tag=cutsceneSlave] 2322.353 66.5927 -798.8389 359.804 2.045045
execute as @s[scores={cutSceneTimer=281}] run tp @e[tag=openingOwl,limit=1] 2318.69 65.22394 -792.9943 57.92862 0
execute as @s[scores={cutSceneTimer=281}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,358.9201f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:11}}]}
execute as @s[scores={cutSceneTimer=282}] run tp @a[tag=cutsceneSlave] 2322.328 66.64962 -798.9182 360.4057 2.10165
execute as @s[scores={cutSceneTimer=282}] run tp @e[tag=openingOwl,limit=1] 2318.518 65.26241 -792.8925 57.69456 0
execute as @s[scores={cutSceneTimer=282}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,357.9273f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=283}] run tp @a[tag=cutsceneSlave] 2322.301 66.7069 -798.999 360.9922 2.154308
execute as @s[scores={cutSceneTimer=283}] run tp @e[tag=openingOwl,limit=1] 2318.349 65.30583 -792.7915 57.49388 0
execute as @s[scores={cutSceneTimer=283}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,356.9146f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=284}] run tp @a[tag=cutsceneSlave] 2322.273 66.76448 -799.0809 361.5634 2.202801
execute as @s[scores={cutSceneTimer=284}] run tp @e[tag=openingOwl,limit=1] 2318.183 65.35367 -792.692 57.32769 0
execute as @s[scores={cutSceneTimer=284}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,355.8928f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=285}] run tp @a[tag=cutsceneSlave] 2322.243 66.82248 -799.1644 362.1193 2.247519
execute as @s[scores={cutSceneTimer=285}] run tp @e[tag=openingOwl,limit=1] 2318.018 65.40553 -792.5941 57.19661 0
execute as @s[scores={cutSceneTimer=285}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,354.8698f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=286}] run tp @a[tag=cutsceneSlave] 2322.212 66.88045 -799.2487 362.659 2.288504
execute as @s[scores={cutSceneTimer=286}] run tp @e[tag=openingOwl,limit=1] 2317.858 65.46047 -792.4991 57.10236 0
execute as @s[scores={cutSceneTimer=286}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,353.8635f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=287}] run tp @a[tag=cutsceneSlave] 2322.19 66.92012 -799.3068 363.0107 2.31391
execute as @s[scores={cutSceneTimer=287}] run tp @e[tag=openingOwl,limit=1] 2317.75 65.4996 -792.436 57.05922 0
execute as @s[scores={cutSceneTimer=287}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,353.1888f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:9}}]}
execute as @s[scores={cutSceneTimer=288}] run tp @a[tag=cutsceneSlave] 2322.157 66.97957 -799.3945 363.5262 2.348972
execute as @s[scores={cutSceneTimer=288}] run tp @e[tag=openingOwl,limit=1] 2317.591 65.5601 -792.3445 57.02729 0
execute as @s[scores={cutSceneTimer=288}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,352.2065f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:9}}]}
execute as @s[scores={cutSceneTimer=289}] run tp @a[tag=cutsceneSlave] 2322.122 67.0384 -799.4821 364.0237 2.380471
execute as @s[scores={cutSceneTimer=289}] run tp @e[tag=openingOwl,limit=1] 2317.437 65.62177 -792.2581 57.08268 0
execute as @s[scores={cutSceneTimer=289}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,351.2765f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:8}}]}
execute as @s[scores={cutSceneTimer=290}] run tp @a[tag=cutsceneSlave] 2322.086 67.09851 -799.5724 364.509 2.408925
execute as @s[scores={cutSceneTimer=290}] run tp @e[tag=openingOwl,limit=1] 2317.282 65.68605 -792.1743 57.37078 0
execute as @s[scores={cutSceneTimer=290}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,350.3790f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:8}}]}
execute as @s[scores={cutSceneTimer=291}] run tp @a[tag=cutsceneSlave] 2322.049 67.15797 -799.6624 364.974 2.433686
execute as @s[scores={cutSceneTimer=291}] run tp @e[tag=openingOwl,limit=1] 2317.132 65.7504 -792.0963 57.88079 0
execute as @s[scores={cutSceneTimer=291}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,349.5529f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:8}}]}
execute as @s[scores={cutSceneTimer=292}] run tp @a[tag=cutsceneSlave] 2322.011 67.21811 -799.7542 365.4244 2.455574
execute as @s[scores={cutSceneTimer=292}] run tp @e[tag=openingOwl,limit=1] 2316.983 65.81575 -792.0228 58.60952 0
execute as @s[scores={cutSceneTimer=292}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,348.7885f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=293}] run tp @a[tag=cutsceneSlave] 2321.973 67.27814 -799.8464 365.8564 2.474155
execute as @s[scores={cutSceneTimer=293}] run tp @e[tag=openingOwl,limit=1] 2316.838 65.88074 -791.9553 59.53575 0
execute as @s[scores={cutSceneTimer=293}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,348.1057f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=294}] run tp @a[tag=cutsceneSlave] 2321.932 67.3392 -799.9409 366.2756 2.490034
execute as @s[scores={cutSceneTimer=294}] run tp @e[tag=openingOwl,limit=1] 2316.692 65.94614 -791.8928 60.66735 0
execute as @s[scores={cutSceneTimer=294}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,347.5024f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=295}] run tp @a[tag=cutsceneSlave] 2321.891 67.40098 -800.0372 366.6812 2.503166
execute as @s[scores={cutSceneTimer=295}] run tp @e[tag=openingOwl,limit=1] 2316.548 66.01104 -791.8365 61.99187 0
execute as @s[scores={cutSceneTimer=295}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,346.9947f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=296}] run tp @a[tag=cutsceneSlave] 2321.849 67.46225 -800.1334 367.0651 2.513251
execute as @s[scores={cutSceneTimer=296}] run tp @e[tag=openingOwl,limit=1] 2316.406 66.07369 -791.7879 63.47044 0
execute as @s[scores={cutSceneTimer=296}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,346.6017f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=297}] run tp @a[tag=cutsceneSlave] 2321.807 67.52343 -800.23 367.4296 2.520633
execute as @s[scores={cutSceneTimer=297}] run tp @e[tag=openingOwl,limit=1] 2316.268 66.13405 -791.7469 65.09669 0
execute as @s[scores={cutSceneTimer=297}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,346.3279f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=298}] run tp @a[tag=cutsceneSlave] 2321.763 67.58499 -800.3279 367.7781 2.525568
execute as @s[scores={cutSceneTimer=298}] run tp @e[tag=openingOwl,limit=1] 2316.131 66.19212 -791.7136 66.87161 0
execute as @s[scores={cutSceneTimer=298}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,346.1804f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=299}] run tp @a[tag=cutsceneSlave] 2321.72 67.64661 -800.4264 368.1082 2.527929
execute as @s[scores={cutSceneTimer=299}] run tp @e[tag=openingOwl,limit=1] 2315.996 66.2471 -791.6886 68.77386 0
execute as @s[scores={cutSceneTimer=299}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,346.1652f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=300}] run tp @a[tag=cutsceneSlave] 2321.675 67.70843 -800.5258 368.4211 2.527971
execute as @s[scores={cutSceneTimer=300}] run tp @e[tag=openingOwl,limit=1] 2315.863 66.29865 -791.6723 70.79637 0
execute as @s[scores={cutSceneTimer=300}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,346.2478f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=301}] run tp @a[tag=cutsceneSlave] 2321.63 67.77081 -800.6266 368.7189 2.525782
execute as @s[scores={cutSceneTimer=301}] run tp @e[tag=openingOwl,limit=1] 2315.73 66.34653 -791.6652 72.94043 0
execute as @s[scores={cutSceneTimer=301}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,346.4160f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=302}] run tp @a[tag=cutsceneSlave] 2321.584 67.83456 -800.7302 369.006 2.521277
execute as @s[scores={cutSceneTimer=302}] run tp @e[tag=openingOwl,limit=1] 2315.596 66.39077 -791.6671 75.22579 0
execute as @s[scores={cutSceneTimer=302}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,346.6693f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=303}] run tp @a[tag=cutsceneSlave] 2321.537 67.89776 -800.8334 369.2713 2.514753
execute as @s[scores={cutSceneTimer=303}] run tp @e[tag=openingOwl,limit=1] 2315.466 66.43244 -791.676 77.57242 0
execute as @s[scores={cutSceneTimer=303}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,346.9950f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=304}] run tp @a[tag=cutsceneSlave] 2321.491 67.96083 -800.937 369.5174 2.506256
execute as @s[scores={cutSceneTimer=304}] run tp @e[tag=openingOwl,limit=1] 2315.337 66.47343 -791.6918 79.98293 0
execute as @s[scores={cutSceneTimer=304}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,347.3880f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=305}] run tp @a[tag=cutsceneSlave] 2321.444 68.0237 -801.0406 369.7443 2.496042
execute as @s[scores={cutSceneTimer=305}] run tp @e[tag=openingOwl,limit=1] 2315.21 66.51337 -791.7142 82.44202 0
execute as @s[scores={cutSceneTimer=305}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,347.8411f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=306}] run tp @a[tag=cutsceneSlave] 2321.397 68.08678 -801.1451 369.9544 2.484069
execute as @s[scores={cutSceneTimer=306}] run tp @e[tag=openingOwl,limit=1] 2315.085 66.55216 -791.7431 84.95408 0
execute as @s[scores={cutSceneTimer=306}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,348.3512f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=307}] run tp @a[tag=cutsceneSlave] 2321.349 68.1506 -801.2513 370.15 2.470293
execute as @s[scores={cutSceneTimer=307}] run tp @e[tag=openingOwl,limit=1] 2314.959 66.58977 -791.7788 87.5291 0
execute as @s[scores={cutSceneTimer=307}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,348.9178f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=308}] run tp @a[tag=cutsceneSlave] 2321.302 68.21439 -801.3578 370.3278 2.455058
execute as @s[scores={cutSceneTimer=308}] run tp @e[tag=openingOwl,limit=1] 2314.835 66.62539 -791.8208 -269.8739 0
execute as @s[scores={cutSceneTimer=308}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,349.5293f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=309}] run tp @a[tag=cutsceneSlave] 2321.254 68.27795 -801.4645 370.4871 2.438407
execute as @s[scores={cutSceneTimer=309}] run tp @e[tag=openingOwl,limit=1] 2314.713 66.65857 -791.8688 -267.2762 0
execute as @s[scores={cutSceneTimer=309}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,350.1773f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=310}] run tp @a[tag=cutsceneSlave] 2321.207 68.34174 -801.5718 370.6301 2.420511
execute as @s[scores={cutSceneTimer=310}] run tp @e[tag=openingOwl,limit=1] 2314.592 66.68924 -791.9229 -264.6689 0
execute as @s[scores={cutSceneTimer=310}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,350.8611f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=311}] run tp @a[tag=cutsceneSlave] 2321.159 68.40578 -801.6801 370.7568 2.401329
execute as @s[scores={cutSceneTimer=311}] run tp @e[tag=openingOwl,limit=1] 2314.471 66.71704 -791.9832 -262.0629 0
execute as @s[scores={cutSceneTimer=311}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,351.5755f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=312}] run tp @a[tag=cutsceneSlave] 2321.111 68.46978 -801.7885 370.8666 2.381073
execute as @s[scores={cutSceneTimer=312}] run tp @e[tag=openingOwl,limit=1] 2314.351 66.74151 -792.0491 -259.4817 0
execute as @s[scores={cutSceneTimer=312}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,352.3116f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=313}] run tp @a[tag=cutsceneSlave] 2321.063 68.53404 -801.8978 370.9604 2.3597
execute as @s[scores={cutSceneTimer=313}] run tp @e[tag=openingOwl,limit=1] 2314.231 66.76242 -792.121 -256.9232 0
execute as @s[scores={cutSceneTimer=313}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,353.0678f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=314}] run tp @a[tag=cutsceneSlave] 2321.015 68.60001 -802.0104 371.0403 2.336698
execute as @s[scores={cutSceneTimer=314}] run tp @e[tag=openingOwl,limit=1] 2314.11 66.77972 -792.2006 -254.3441 0
execute as @s[scores={cutSceneTimer=314}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,353.8557f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=315}] run tp @a[tag=cutsceneSlave] 2320.967 68.66524 -802.1221 371.102 2.31318
execute as @s[scores={cutSceneTimer=315}] run tp @e[tag=openingOwl,limit=1] 2313.99 66.79877 -792.2849 -251.8513 0
execute as @s[scores={cutSceneTimer=315}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,354.6411f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=316}] run tp @a[tag=cutsceneSlave] 2320.92 68.72997 -802.2332 371.1465 2.289277
execute as @s[scores={cutSceneTimer=316}] run tp @e[tag=openingOwl,limit=1] 2313.872 66.8281 -792.3738 -249.4459 0
execute as @s[scores={cutSceneTimer=316}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,355.4208f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=317}] run tp @a[tag=cutsceneSlave] 2320.874 68.79453 -802.3442 371.175 2.2649
execute as @s[scores={cutSceneTimer=317}] run tp @e[tag=openingOwl,limit=1] 2313.755 66.86418 -792.4678 -247.1257 0
execute as @s[scores={cutSceneTimer=317}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,356.1934f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:12}}]}
execute as @s[scores={cutSceneTimer=318}] run tp @a[tag=cutsceneSlave] 2320.827 68.85982 -802.4569 371.1879 2.239666
execute as @s[scores={cutSceneTimer=318}] run tp @e[tag=openingOwl,limit=1] 2313.638 66.90388 -792.5679 -244.8695 0
execute as @s[scores={cutSceneTimer=318}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,356.9642f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:11}}]}
execute as @s[scores={cutSceneTimer=319}] run tp @a[tag=cutsceneSlave] 2320.778 68.92846 -802.5757 371.1864 2.228379
execute as @s[scores={cutSceneTimer=319}] run tp @e[tag=openingOwl,limit=1] 2313.516 66.945 -792.6787 -242.6087 0
execute as @s[scores={cutSceneTimer=319}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,357.7570f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=320}] run tp @a[tag=cutsceneSlave] 2320.733 68.99326 -802.688 371.1724 2.225333
execute as @s[scores={cutSceneTimer=320}] run tp @e[tag=openingOwl,limit=1] 2313.403 66.9794 -792.7883 -240.5896 0
execute as @s[scores={cutSceneTimer=320}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,358.4835f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=321}] run tp @a[tag=cutsceneSlave] 2320.688 69.05884 -802.802 371.1459 2.219753
execute as @s[scores={cutSceneTimer=321}] run tp @e[tag=openingOwl,limit=1] 2313.289 67.01388 -792.904 -238.672 0
execute as @s[scores={cutSceneTimer=321}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,359.1912f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=322}] run tp @a[tag=cutsceneSlave] 2320.642 69.12569 -802.9185 371.1066 2.211599
execute as @s[scores={cutSceneTimer=322}] run tp @e[tag=openingOwl,limit=1] 2313.175 67.05614 -793.0269 -236.8585 0
execute as @s[scores={cutSceneTimer=322}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,359.8788f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=323}] run tp @a[tag=cutsceneSlave] 2320.613 69.16985 -802.9955 371.0742 2.204991
execute as @s[scores={cutSceneTimer=323}] run tp @e[tag=openingOwl,limit=1] 2313.1 67.08714 -793.1107 -235.7449 0
execute as @s[scores={cutSceneTimer=323}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.3112f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=324}] run tp @a[tag=cutsceneSlave] 2320.569 69.23612 -803.1113 371.016 2.193318
execute as @s[scores={cutSceneTimer=324}] run tp @e[tag=openingOwl,limit=1] 2312.989 67.137 -793.2404 -234.1941 0
execute as @s[scores={cutSceneTimer=324}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,0.9238f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:8}}]}
execute as @s[scores={cutSceneTimer=325}] run tp @a[tag=cutsceneSlave] 2320.526 69.30171 -803.2261 370.9478 2.179928
execute as @s[scores={cutSceneTimer=325}] run tp @e[tag=openingOwl,limit=1] 2312.881 67.18877 -793.3732 -232.6491 0
execute as @s[scores={cutSceneTimer=325}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,1.4820f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=326}] run tp @a[tag=cutsceneSlave] 2320.484 69.36851 -803.3431 370.8679 2.164607
execute as @s[scores={cutSceneTimer=326}] run tp @e[tag=openingOwl,limit=1] 2312.773 67.24227 -793.513 -231.0205 0
execute as @s[scores={cutSceneTimer=326}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,1.9956f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=327}] run tp @a[tag=cutsceneSlave] 2320.442 69.43486 -803.4596 370.7785 2.147956
execute as @s[scores={cutSceneTimer=327}] run tp @e[tag=openingOwl,limit=1] 2312.668 67.29446 -793.6562 -229.3528 0
execute as @s[scores={cutSceneTimer=327}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,2.4454f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=328}] run tp @a[tag=cutsceneSlave] 2320.402 69.50017 -803.5744 370.6814 2.130318
execute as @s[scores={cutSceneTimer=328}] run tp @e[tag=openingOwl,limit=1] 2312.566 67.34322 -793.8013 -227.6677 0
execute as @s[scores={cutSceneTimer=328}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,2.8237f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=329}] run tp @a[tag=cutsceneSlave] 2320.364 69.56525 -803.689 370.5759 2.111692
execute as @s[scores={cutSceneTimer=329}] run tp @e[tag=openingOwl,limit=1] 2312.467 67.38763 -793.95 -225.9502 0
execute as @s[scores={cutSceneTimer=329}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,3.1317f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=330}] run tp @a[tag=cutsceneSlave] 2320.326 69.63036 -803.8036 370.4622 2.092209
execute as @s[scores={cutSceneTimer=330}] run tp @e[tag=openingOwl,limit=1] 2312.369 67.42625 -794.1025 -224.1992 0
execute as @s[scores={cutSceneTimer=330}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,3.3653f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=331}] run tp @a[tag=cutsceneSlave] 2320.289 69.69584 -803.9192 370.3401 2.071953
execute as @s[scores={cutSceneTimer=331}] run tp @e[tag=openingOwl,limit=1] 2312.273 67.45764 -794.2599 -222.4095 0
execute as @s[scores={cutSceneTimer=331}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,3.5198f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=332}] run tp @a[tag=cutsceneSlave] 2320.253 69.76221 -804.0363 370.2087 2.050967
execute as @s[scores={cutSceneTimer=332}] run tp @e[tag=openingOwl,limit=1] 2312.178 67.49028 -794.4232 -220.571 0
execute as @s[scores={cutSceneTimer=332}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,3.5881f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=333}] run tp @a[tag=cutsceneSlave] 2320.218 69.82766 -804.152 370.0721 2.030025
execute as @s[scores={cutSceneTimer=333}] run tp @e[tag=openingOwl,limit=1] 2312.087 67.52969 -794.588 -218.7394 0
execute as @s[scores={cutSceneTimer=333}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,3.5766f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:12}}]}
execute as @s[scores={cutSceneTimer=334}] run tp @a[tag=cutsceneSlave] 2320.185 69.89353 -804.2684 369.928 2.008824
execute as @s[scores={cutSceneTimer=334}] run tp @e[tag=openingOwl,limit=1] 2311.998 67.57604 -794.7574 -216.882 0
execute as @s[scores={cutSceneTimer=334}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,3.5185f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:11}}]}
execute as @s[scores={cutSceneTimer=335}] run tp @a[tag=cutsceneSlave] 2320.153 69.95888 -804.384 369.779 1.987925
execute as @s[scores={cutSceneTimer=335}] run tp @e[tag=openingOwl,limit=1] 2311.912 67.6281 -794.9291 -215.0303 0
execute as @s[scores={cutSceneTimer=335}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,3.4205f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=336}] run tp @a[tag=cutsceneSlave] 2320.122 70.02406 -804.4993 369.6247 1.967368
execute as @s[scores={cutSceneTimer=336}] run tp @e[tag=openingOwl,limit=1] 2311.829 67.68548 -795.1036 -213.1793 0
execute as @s[scores={cutSceneTimer=336}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,3.2875f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=337}] run tp @a[tag=cutsceneSlave] 2320.093 70.08926 -804.6147 369.4651 1.947284
execute as @s[scores={cutSceneTimer=337}] run tp @e[tag=openingOwl,limit=1] 2311.749 67.74777 -795.2816 -211.3287 0
execute as @s[scores={cutSceneTimer=337}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0722f,0f,3.1239f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=338}] run tp @a[tag=cutsceneSlave] 2320.065 70.15486 -804.7308 369.2998 1.927757
execute as @s[scores={cutSceneTimer=338}] run tp @e[tag=openingOwl,limit=1] 2311.671 67.81483 -795.4639 -209.4728 0
execute as @s[scores={cutSceneTimer=338}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0723f,0f,2.9334f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=339}] run tp @a[tag=cutsceneSlave] 2320.039 70.21998 -804.8461 369.1313 1.909304
execute as @s[scores={cutSceneTimer=339}] run tp @e[tag=openingOwl,limit=1] 2311.596 67.88519 -795.6481 -207.6415 0
execute as @s[scores={cutSceneTimer=339}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0724f,0f,2.7231f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:9}}]}
execute as @s[scores={cutSceneTimer=340}] run tp @a[tag=cutsceneSlave] 2320.014 70.28481 -804.9609 368.9597 1.891966
execute as @s[scores={cutSceneTimer=340}] run tp @e[tag=openingOwl,limit=1] 2311.525 67.95846 -795.8345 -205.8337 0
execute as @s[scores={cutSceneTimer=340}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0724f,0f,2.4977f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=341}] run tp @a[tag=cutsceneSlave] 2319.991 70.35047 -805.0771 368.7823 1.875744
execute as @s[scores={cutSceneTimer=341}] run tp @e[tag=openingOwl,limit=1] 2311.456 68.03534 -796.0263 -204.0239 0
execute as @s[scores={cutSceneTimer=341}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0725f,0f,2.2578f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=342}] run tp @a[tag=cutsceneSlave] 2319.969 70.41532 -805.1918 368.6041 1.861153
execute as @s[scores={cutSceneTimer=342}] run tp @e[tag=openingOwl,limit=1] 2311.392 68.11337 -796.2186 -202.2624 0
execute as @s[scores={cutSceneTimer=342}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0727f,0f,2.0142f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=343}] run tp @a[tag=cutsceneSlave] 2319.95 70.48032 -805.3068 368.4229 1.848235
execute as @s[scores={cutSceneTimer=343}] run tp @e[tag=openingOwl,limit=1] 2311.33 68.1931 -796.4142 -200.5278 0
execute as @s[scores={cutSceneTimer=343}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0728f,0f,1.7683f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=344}] run tp @a[tag=cutsceneSlave] 2319.932 70.54594 -805.4228 368.2376 1.837034
execute as @s[scores={cutSceneTimer=344}] run tp @e[tag=openingOwl,limit=1] 2311.271 68.27457 -796.6146 -198.813 0
execute as @s[scores={cutSceneTimer=344}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0729f,0f,1.5232f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=345}] run tp @a[tag=cutsceneSlave] 2319.916 70.61103 -805.5378 368.0521 1.828065
execute as @s[scores={cutSceneTimer=345}] run tp @e[tag=openingOwl,limit=1] 2311.217 68.35579 -796.816 -197.1536 0
execute as @s[scores={cutSceneTimer=345}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0731f,0f,1.2881f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=346}] run tp @a[tag=cutsceneSlave] 2319.902 70.67567 -805.6519 367.8665 1.821456
execute as @s[scores={cutSceneTimer=346}] run tp @e[tag=openingOwl,limit=1] 2311.166 68.43623 -797.0186 -195.5523 0
execute as @s[scores={cutSceneTimer=346}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0733f,0f,1.0676f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=347}] run tp @a[tag=cutsceneSlave] 2319.89 70.73972 -805.7648 367.6819 1.817336
execute as @s[scores={cutSceneTimer=347}] run tp @e[tag=openingOwl,limit=1] 2311.12 68.51517 -797.2217 -194.0164 0
execute as @s[scores={cutSceneTimer=347}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0735f,0f,0.8667f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=348}] run tp @a[tag=cutsceneSlave] 2319.88 70.80706 -805.8834 367.4872 1.815877
execute as @s[scores={cutSceneTimer=348}] run tp @e[tag=openingOwl,limit=1] 2311.075 68.59672 -797.438 -192.462 0
execute as @s[scores={cutSceneTimer=348}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0737f,0f,0.6798f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=349}] run tp @a[tag=cutsceneSlave] 2319.872 70.87083 -805.9956 367.3029 1.817379
execute as @s[scores={cutSceneTimer=349}] run tp @e[tag=openingOwl,limit=1] 2311.035 68.67198 -797.6465 -191.0526 0
execute as @s[scores={cutSceneTimer=349}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0739f,0f,0.5309f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=350}] run tp @a[tag=cutsceneSlave] 2319.866 70.93417 -806.1069 367.1203 1.821971
execute as @s[scores={cutSceneTimer=350}] run tp @e[tag=openingOwl,limit=1] 2310.992 68.74441 -797.8785 -189.7184 0
execute as @s[scores={cutSceneTimer=350}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0741f,0f,0.4152f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=351}] run tp @a[tag=cutsceneSlave] 2319.863 70.99763 -806.2178 366.9391 1.829739
execute as @s[scores={cutSceneTimer=351}] run tp @e[tag=openingOwl,limit=1] 2310.945 68.81633 -798.1404 -188.4586 0
execute as @s[scores={cutSceneTimer=351}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0744f,0f,0.3367f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=352}] run tp @a[tag=cutsceneSlave] 2319.862 71.06241 -806.3283 366.7593 1.84094
execute as @s[scores={cutSceneTimer=352}] run tp @e[tag=openingOwl,limit=1] 2310.895 68.8886 -798.431 -187.2757 0
execute as @s[scores={cutSceneTimer=352}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0746f,0f,0.2914f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=353}] run tp @a[tag=cutsceneSlave] 2319.862 71.12912 -806.4396 366.5799 1.85596
execute as @s[scores={cutSceneTimer=353}] run tp @e[tag=openingOwl,limit=1] 2310.841 68.96176 -798.7518 -186.1659 0
execute as @s[scores={cutSceneTimer=353}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0749f,0f,0.2512f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=354}] run tp @a[tag=cutsceneSlave] 2319.862 71.19697 -806.5503 366.4034 1.874843
execute as @s[scores={cutSceneTimer=354}] run tp @e[tag=openingOwl,limit=1] 2310.784 69.03494 -799.0975 -185.1485 0
execute as @s[scores={cutSceneTimer=354}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0751f,0f,0.2138f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=355}] run tp @a[tag=cutsceneSlave] 2319.862 71.2429 -806.6239 366.2874 1.889691
execute as @s[scores={cutSceneTimer=355}] run tp @e[tag=openingOwl,limit=1] 2310.745 69.08379 -799.3414 -184.5228 0
execute as @s[scores={cutSceneTimer=355}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0753f,0f,0.1902f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=356}] run tp @a[tag=cutsceneSlave] 2319.863 71.31182 -806.7325 366.1184 1.915183
execute as @s[scores={cutSceneTimer=356}] run tp @e[tag=openingOwl,limit=1] 2310.685 69.1561 -799.7208 -183.6786 0
execute as @s[scores={cutSceneTimer=356}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0756f,0f,0.1574f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=357}] run tp @a[tag=cutsceneSlave] 2319.863 71.38248 -806.8416 365.9516 1.945353
execute as @s[scores={cutSceneTimer=357}] run tp @e[tag=openingOwl,limit=1] 2310.623 69.22903 -800.1243 -182.9304 0
execute as @s[scores={cutSceneTimer=357}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0759f,0f,0.1266f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=358}] run tp @a[tag=cutsceneSlave] 2319.864 71.45319 -806.9478 365.7913 1.979685
execute as @s[scores={cutSceneTimer=358}] run tp @e[tag=openingOwl,limit=1] 2310.559 69.30081 -800.5409 -182.3003 0
execute as @s[scores={cutSceneTimer=358}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0762f,0f,0.0985f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=359}] run tp @a[tag=cutsceneSlave] 2319.865 71.52569 -807.0528 365.6339 2.019253
execute as @s[scores={cutSceneTimer=359}] run tp @e[tag=openingOwl,limit=1] 2310.494 69.37321 -800.9792 -181.7776 0
execute as @s[scores={cutSceneTimer=359}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0765f,0f,0.0721f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=360}] run tp @a[tag=cutsceneSlave] 2319.866 71.599 -807.1555 365.4819 2.06337
execute as @s[scores={cutSceneTimer=360}] run tp @e[tag=openingOwl,limit=1] 2310.428 69.44523 -801.4323 -181.3764 0
execute as @s[scores={cutSceneTimer=360}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0769f,0f,0.0479f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=361}] run tp @a[tag=cutsceneSlave] 2319.867 71.6721 -807.2545 365.3376 2.107444
execute as @s[scores={cutSceneTimer=361}] run tp @e[tag=openingOwl,limit=1] 2310.362 69.51585 -801.892 -181.0958 0
execute as @s[scores={cutSceneTimer=361}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0772f,0f,0.0258f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=362}] run tp @a[tag=cutsceneSlave] 2319.869 71.7475 -807.3534 365.1965 2.151819
execute as @s[scores={cutSceneTimer=362}] run tp @e[tag=openingOwl,limit=1] 2310.294 69.58747 -802.3727 -180.8382 0
execute as @s[scores={cutSceneTimer=362}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0775f,0f,0.0050f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=363}] run tp @a[tag=cutsceneSlave] 2319.87 71.82238 -807.4485 365.0643 2.19482
execute as @s[scores={cutSceneTimer=363}] run tp @e[tag=openingOwl,limit=1] 2310.228 69.65739 -802.8553 -180.5901 0
execute as @s[scores={cutSceneTimer=363}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0779f,0f,359.9863f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=364}] run tp @a[tag=cutsceneSlave] 2319.872 71.89858 -807.5424 364.9378 2.237649
execute as @s[scores={cutSceneTimer=364}] run tp @e[tag=openingOwl,limit=1] 2310.161 69.72733 -803.3501 -180.3453 0
execute as @s[scores={cutSceneTimer=364}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0782f,0f,359.9689f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=365}] run tp @a[tag=cutsceneSlave] 2319.874 71.97401 -807.6325 364.8211 2.279062
execute as @s[scores={cutSceneTimer=365}] run tp @e[tag=openingOwl,limit=1] 2310.095 69.79533 -803.8419 -180.11 0
execute as @s[scores={cutSceneTimer=365}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0786f,0f,359.9533f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=366}] run tp @a[tag=cutsceneSlave] 2319.876 72.05003 -807.7208 364.712 2.319875
execute as @s[scores={cutSceneTimer=366}] run tp @e[tag=openingOwl,limit=1] 2310.031 69.86266 -804.3383 -179.8796 0
execute as @s[scores={cutSceneTimer=366}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0789f,0f,359.9389f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=367}] run tp @a[tag=cutsceneSlave] 2319.878 72.12672 -807.8074 364.6109 2.360129
execute as @s[scores={cutSceneTimer=367}] run tp @e[tag=openingOwl,limit=1] 2309.968 69.92934 -804.8383 -179.6536 0
execute as @s[scores={cutSceneTimer=367}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0793f,0f,359.9257f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=368}] run tp @a[tag=cutsceneSlave] 2319.88 72.20335 -807.8915 364.5192 2.399396
execute as @s[scores={cutSceneTimer=368}] run tp @e[tag=openingOwl,limit=1] 2309.907 69.9947 -805.3356 -179.434 0
execute as @s[scores={cutSceneTimer=368}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0797f,0f,359.9136f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=369}] run tp @a[tag=cutsceneSlave] 2319.882 72.28056 -807.9742 364.4363 2.438192
execute as @s[scores={cutSceneTimer=369}] run tp @e[tag=openingOwl,limit=1] 2309.847 70.0593 -805.8333 -179.2186 0
execute as @s[scores={cutSceneTimer=369}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0800f,0f,359.9024f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=370}] run tp @a[tag=cutsceneSlave] 2319.884 72.35899 -808.056 364.3607 2.476687
execute as @s[scores={cutSceneTimer=370}] run tp @e[tag=openingOwl,limit=1] 2309.789 70.1236 -806.3337 -179.0057 0
execute as @s[scores={cutSceneTimer=370}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0804f,0f,359.8920f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=371}] run tp @a[tag=cutsceneSlave] 2319.886 72.43665 -808.1349 364.2902 2.513895
execute as @s[scores={cutSceneTimer=371}] run tp @e[tag=openingOwl,limit=1] 2309.735 70.18594 -806.8227 -178.8003 0
execute as @s[scores={cutSceneTimer=371}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0808f,0f,359.8824f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=372}] run tp @a[tag=cutsceneSlave] 2319.889 72.51371 -808.2115 364.2245 2.55003
execute as @s[scores={cutSceneTimer=372}] run tp @e[tag=openingOwl,limit=1] 2309.683 70.24647 -807.3002 -178.6017 0
execute as @s[scores={cutSceneTimer=372}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0811f,0f,359.8734f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=373}] run tp @a[tag=cutsceneSlave] 2319.891 72.59185 -808.2873 364.1619 2.585821
execute as @s[scores={cutSceneTimer=373}] run tp @e[tag=openingOwl,limit=1] 2309.635 70.30647 -807.775 -178.4054 0
execute as @s[scores={cutSceneTimer=373}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0815f,0f,359.8649f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=374}] run tp @a[tag=cutsceneSlave] 2319.894 72.66882 -808.3604 364.104 2.620282
execute as @s[scores={cutSceneTimer=374}] run tp @e[tag=openingOwl,limit=1] 2309.59 70.36417 -808.2321 -178.2167 0
execute as @s[scores={cutSceneTimer=374}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0819f,0f,359.8568f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=375}] run tp @a[tag=cutsceneSlave] 2319.896 72.74606 -808.4322 364.0496 2.6541
execute as @s[scores={cutSceneTimer=375}] run tp @e[tag=openingOwl,limit=1] 2309.549 70.42067 -808.6785 -178.0319 0
execute as @s[scores={cutSceneTimer=375}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0823f,0f,359.8489f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=376}] run tp @a[tag=cutsceneSlave] 2319.899 72.82317 -808.5024 363.9988 2.687016
execute as @s[scores={cutSceneTimer=376}] run tp @e[tag=openingOwl,limit=1] 2309.512 70.47562 -809.1106 -177.8517 0
execute as @s[scores={cutSceneTimer=376}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0826f,0f,359.8412f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=377}] run tp @a[tag=cutsceneSlave] 2319.901 72.89992 -808.571 363.9516 2.71903
execute as @s[scores={cutSceneTimer=377}] run tp @e[tag=openingOwl,limit=1] 2309.48 70.52881 -809.5255 -177.6766 0
execute as @s[scores={cutSceneTimer=377}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0830f,0f,359.8335f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=378}] run tp @a[tag=cutsceneSlave] 2319.904 72.977 -808.6386 363.9075 2.750359
execute as @s[scores={cutSceneTimer=378}] run tp @e[tag=openingOwl,limit=1] 2309.453 70.58069 -809.9252 -177.5046 0
execute as @s[scores={cutSceneTimer=378}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0834f,0f,359.8256f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=379}] run tp @a[tag=cutsceneSlave] 2319.907 73.0527 -808.7039 363.8672 2.780357
execute as @s[scores={cutSceneTimer=379}] run tp @e[tag=openingOwl,limit=1] 2309.43 70.63007 -810.2995 -177.3395 0
execute as @s[scores={cutSceneTimer=379}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0838f,0f,359.8176f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=380}] run tp @a[tag=cutsceneSlave] 2319.909 73.12861 -808.7683 363.8299 2.809668
execute as @s[scores={cutSceneTimer=380}] run tp @e[tag=openingOwl,limit=1] 2309.414 70.67798 -810.6613 -177.1776 0
execute as @s[scores={cutSceneTimer=380}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0841f,0f,359.8092f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=381}] run tp @a[tag=cutsceneSlave] 2319.912 73.20372 -808.8311 363.7957 2.837948
execute as @s[scores={cutSceneTimer=381}] run tp @e[tag=openingOwl,limit=1] 2309.403 70.72372 -811.0164 -177.0207 0
execute as @s[scores={cutSceneTimer=381}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0845f,0f,359.8004f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=382}] run tp @a[tag=cutsceneSlave] 2319.915 73.27901 -808.8932 363.7642 2.865458
execute as @s[scores={cutSceneTimer=382}] run tp @e[tag=openingOwl,limit=1] 2309.398 70.76783 -811.3699 -176.8668 0
execute as @s[scores={cutSceneTimer=382}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0849f,0f,359.7909f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=383}] run tp @a[tag=cutsceneSlave] 2319.918 73.35262 -808.9532 363.7361 2.891593
execute as @s[scores={cutSceneTimer=383}] run tp @e[tag=openingOwl,limit=1] 2309.395 70.8092 -811.7137 -176.7194 0
execute as @s[scores={cutSceneTimer=383}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0852f,0f,359.7809f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=384}] run tp @a[tag=cutsceneSlave] 2319.921 73.42559 -809.0119 363.7106 2.916741
execute as @s[scores={cutSceneTimer=384}] run tp @e[tag=openingOwl,limit=1] 2309.393 70.8484 -812.0533 -176.5761 0
execute as @s[scores={cutSceneTimer=384}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0856f,0f,359.7701f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=385}] as @a[tag=cutsceneSlave] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=385}] run tp @a[tag=cutsceneSlave] 2319.923 73.49757 -809.0693 363.6878 2.940774
execute as @s[scores={cutSceneTimer=385}] run tp @e[tag=openingOwl,limit=1] 2309.39 70.88522 -812.3873 -176.4375 0
execute as @s[scores={cutSceneTimer=385}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0860f,0f,359.7583f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=386}] run tp @a[tag=cutsceneSlave] 2319.926 73.56908 -809.1259 363.6674 2.963905
execute as @s[scores={cutSceneTimer=386}] run tp @e[tag=openingOwl,limit=1] 2309.387 70.91985 -812.7189 -176.3024 0
execute as @s[scores={cutSceneTimer=386}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0863f,0f,359.7455f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=387}] run tp @a[tag=cutsceneSlave] 2319.929 73.63936 -809.181 363.6494 2.985835
execute as @s[scores={cutSceneTimer=387}] run tp @e[tag=openingOwl,limit=1] 2309.385 70.9519 -813.0447 -176.1721 0
execute as @s[scores={cutSceneTimer=387}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0866f,0f,359.7315f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=388}] run tp @a[tag=cutsceneSlave] 2319.932 73.7088 -809.2353 363.6337 3.006692
execute as @s[scores={cutSceneTimer=388}] run tp @e[tag=openingOwl,limit=1] 2309.383 70.98152 -813.3674 -176.0455 0
execute as @s[scores={cutSceneTimer=388}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0870f,0f,359.7165f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=389}] run tp @a[tag=cutsceneSlave] 2319.934 73.7775 -809.2887 363.6201 3.026561
execute as @s[scores={cutSceneTimer=389}] run tp @e[tag=openingOwl,limit=1] 2309.381 71.00942 -813.6879 -175.9225 0
execute as @s[scores={cutSceneTimer=389}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0873f,0f,359.7009f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=390}] run tp @a[tag=cutsceneSlave] 2319.937 73.84474 -809.3409 363.6086 3.045187
execute as @s[scores={cutSceneTimer=390}] run tp @e[tag=openingOwl,limit=1] 2309.378 71.03642 -814.0031 -175.8041 0
execute as @s[scores={cutSceneTimer=390}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0876f,0f,359.6850f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=391}] run tp @a[tag=cutsceneSlave] 2319.94 73.91211 -809.3932 363.5989 3.062997
execute as @s[scores={cutSceneTimer=391}] run tp @e[tag=openingOwl,limit=1] 2309.376 71.06322 -814.3211 -175.6873 0
execute as @s[scores={cutSceneTimer=391}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0879f,0f,359.6685f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=392}] run tp @a[tag=cutsceneSlave] 2319.942 73.97827 -809.4446 363.591 3.079648
execute as @s[scores={cutSceneTimer=392}] run tp @e[tag=openingOwl,limit=1] 2309.374 71.08929 -814.6363 -175.5744 0
execute as @s[scores={cutSceneTimer=392}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0883f,0f,359.6516f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=393}] run tp @a[tag=cutsceneSlave] 2319.945 74.04188 -809.4942 363.585 3.094797
execute as @s[scores={cutSceneTimer=393}] run tp @e[tag=openingOwl,limit=1] 2309.372 71.11414 -814.9426 -175.4675 0
execute as @s[scores={cutSceneTimer=393}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0886f,0f,359.6348f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=394}] run tp @a[tag=cutsceneSlave] 2319.948 74.10522 -809.5439 363.5804 3.108916
execute as @s[scores={cutSceneTimer=394}] run tp @e[tag=openingOwl,limit=1] 2309.371 71.13872 -815.2516 -175.3624 0
execute as @s[scores={cutSceneTimer=394}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0888f,0f,359.6173f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=395}] run tp @a[tag=cutsceneSlave] 2319.95 74.167 -809.5927 363.5775 3.121834
execute as @s[scores={cutSceneTimer=395}] run tp @e[tag=openingOwl,limit=1] 2309.369 71.16254 -815.5574 -175.2614 0
execute as @s[scores={cutSceneTimer=395}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0891f,0f,359.5997f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=396}] run tp @a[tag=cutsceneSlave] 2319.952 74.22718 -809.6408 363.5758 3.133464
execute as @s[scores={cutSceneTimer=396}] run tp @e[tag=openingOwl,limit=1] 2309.367 71.18562 -815.8607 -175.1641 0
execute as @s[scores={cutSceneTimer=396}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0894f,0f,359.5818f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=397}] run tp @a[tag=cutsceneSlave] 2319.955 74.28547 -809.688 363.5754 3.143806
execute as @s[scores={cutSceneTimer=397}] run tp @e[tag=openingOwl,limit=1] 2309.365 71.20789 -816.1601 -175.0709 0
execute as @s[scores={cutSceneTimer=397}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0897f,0f,359.5638f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=398}] run tp @a[tag=cutsceneSlave] 2319.956 74.32352 -809.7191 363.5759 3.149944
execute as @s[scores={cutSceneTimer=398}] run tp @e[tag=openingOwl,limit=1] 2309.365 71.22238 -816.3591 -175.0106 0
execute as @s[scores={cutSceneTimer=398}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0898f,0f,359.5516f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=399}] run tp @a[tag=cutsceneSlave] 2319.958 74.37982 -809.7659 363.5773 3.158226
execute as @s[scores={cutSceneTimer=399}] run tp @e[tag=openingOwl,limit=1] 2309.363 71.24382 -816.6596 -174.922 0
execute as @s[scores={cutSceneTimer=399}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0901f,0f,359.5331f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=400}] run tp @a[tag=cutsceneSlave] 2319.961 74.43369 -809.8116 363.5797 3.16505
execute as @s[scores={cutSceneTimer=400}] run tp @e[tag=openingOwl,limit=1] 2309.362 71.26432 -816.9549 -174.8379 0
execute as @s[scores={cutSceneTimer=400}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0903f,0f,359.5145f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=401}] run tp @a[tag=cutsceneSlave] 2319.963 74.48614 -809.8572 363.5829 3.170586
execute as @s[scores={cutSceneTimer=401}] run tp @e[tag=openingOwl,limit=1] 2309.361 71.2843 -817.251 -174.7566 0
execute as @s[scores={cutSceneTimer=401}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0905f,0f,359.4957f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=402}] run tp @a[tag=cutsceneSlave] 2319.965 74.5364 -809.9021 363.5869 3.174834
execute as @s[scores={cutSceneTimer=402}] run tp @e[tag=openingOwl,limit=1] 2309.359 71.30352 -817.5441 -174.6791 0
execute as @s[scores={cutSceneTimer=402}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0907f,0f,359.4769f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=403}] run tp @a[tag=cutsceneSlave] 2319.966 74.58479 -809.9466 363.5914 3.177624
execute as @s[scores={cutSceneTimer=403}] run tp @e[tag=openingOwl,limit=1] 2309.358 71.32211 -817.8365 -174.6047 0
execute as @s[scores={cutSceneTimer=403}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0909f,0f,359.4579f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=404}] run tp @a[tag=cutsceneSlave] 2319.968 74.63094 -809.9905 363.5963 3.179083
execute as @s[scores={cutSceneTimer=404}] run tp @e[tag=openingOwl,limit=1] 2309.357 71.33999 -818.1266 -174.5338 0
execute as @s[scores={cutSceneTimer=404}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0911f,0f,359.4390f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=405}] run tp @a[tag=cutsceneSlave] 2319.97 74.67538 -810.0345 363.6016 3.179169
execute as @s[scores={cutSceneTimer=405}] run tp @e[tag=openingOwl,limit=1] 2309.356 71.35736 -818.4182 -174.4655 0
execute as @s[scores={cutSceneTimer=405}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0913f,0f,359.4199f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=406}] run tp @a[tag=cutsceneSlave] 2319.971 74.71752 -810.078 363.6071 3.177881
execute as @s[scores={cutSceneTimer=406}] run tp @e[tag=openingOwl,limit=1] 2309.356 71.37405 -818.7081 -174.4005 0
execute as @s[scores={cutSceneTimer=406}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0914f,0f,359.4008f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=407}] run tp @a[tag=cutsceneSlave] 2319.973 74.75776 -810.1216 363.6128 3.175177
execute as @s[scores={cutSceneTimer=407}] run tp @e[tag=openingOwl,limit=1] 2309.355 71.39024 -818.9996 -174.338 0
execute as @s[scores={cutSceneTimer=407}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0916f,0f,359.3816f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=408}] run tp @a[tag=cutsceneSlave] 2319.974 74.79607 -810.1653 363.6185 3.170972
execute as @s[scores={cutSceneTimer=408}] run tp @e[tag=openingOwl,limit=1] 2309.354 71.40595 -819.2936 -174.2779 0
execute as @s[scores={cutSceneTimer=408}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0917f,0f,359.3622f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=409}] run tp @a[tag=cutsceneSlave] 2319.975 74.83614 -810.209 363.6241 3.164664
execute as @s[scores={cutSceneTimer=409}] run tp @e[tag=openingOwl,limit=1] 2309.354 71.42109 -819.5881 -174.2207 0
execute as @s[scores={cutSceneTimer=409}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0918f,0f,359.3429f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=410}] run tp @a[tag=cutsceneSlave] 2319.975 74.88418 -810.2522 363.6295 3.152475
execute as @s[scores={cutSceneTimer=410}] run tp @e[tag=openingOwl,limit=1] 2309.353 71.43547 -819.8796 -174.1669 0
execute as @s[scores={cutSceneTimer=410}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0919f,0f,359.3237f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:9}}]}
execute as @s[scores={cutSceneTimer=411}] run tp @a[tag=cutsceneSlave] 2319.975 74.93548 -810.2956 363.6345 3.13591
execute as @s[scores={cutSceneTimer=411}] run tp @e[tag=openingOwl,limit=1] 2309.353 71.44939 -820.1738 -174.1153 0
execute as @s[scores={cutSceneTimer=411}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0920f,0f,359.3046f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=412}] run tp @a[tag=cutsceneSlave] 2319.977 74.98439 -810.3397 363.6391 3.117714
execute as @s[scores={cutSceneTimer=412}] run tp @e[tag=openingOwl,limit=1] 2309.353 71.46294 -820.4732 -174.0657 0
execute as @s[scores={cutSceneTimer=412}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0920f,0f,359.2852f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:8}}]}
execute as @s[scores={cutSceneTimer=413}] run tp @a[tag=cutsceneSlave] 2319.98 75.02327 -810.3831 363.6431 3.101578
execute as @s[scores={cutSceneTimer=413}] run tp @e[tag=openingOwl,limit=1] 2309.353 71.47569 -820.7682 -174.0196 0
execute as @s[scores={cutSceneTimer=413}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0921f,0f,359.2662f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=414}] run tp @a[tag=cutsceneSlave] 2319.987 75.04731 -810.4271 363.6464 3.089948
execute as @s[scores={cutSceneTimer=414}] run tp @e[tag=openingOwl,limit=1] 2309.353 71.48804 -821.0676 -173.9755 0
execute as @s[scores={cutSceneTimer=414}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0921f,0f,359.2472f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=415}] as @a[tag=cutsceneSlave] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=415}] run tp @a[tag=cutsceneSlave] 2323.7 82.00001 -830.8002 472.0002 55.89986
execute as @s[scores={cutSceneTimer=415}] run tp @e[tag=openingOwl,limit=1] 2309.353 71.49982 -821.3677 -173.9339 0
execute as @s[scores={cutSceneTimer=415}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0921f,0f,359.2284f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=416}] run tp @a[tag=cutsceneSlave] 2323.7 82.00007 -830.8018 472.0121 55.89114
execute as @s[scores={cutSceneTimer=416}] run tp @e[tag=openingOwl,limit=1] 2309.354 71.51123 -821.674 -173.8941 0
execute as @s[scores={cutSceneTimer=416}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0921f,0f,359.2094f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=417}] run tp @a[tag=cutsceneSlave] 2323.7 82.00014 -830.8033 472.043 55.8687
execute as @s[scores={cutSceneTimer=417}] run tp @e[tag=openingOwl,limit=1] 2309.356 71.52218 -821.9839 -173.8565 0
execute as @s[scores={cutSceneTimer=417}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0920f,0f,359.1905f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=418}] run tp @a[tag=cutsceneSlave] 2323.7 82.00019 -830.8047 472.0918 55.8333
execute as @s[scores={cutSceneTimer=418}] run tp @e[tag=openingOwl,limit=1] 2309.359 71.53249 -822.2924 -173.8216 0
execute as @s[scores={cutSceneTimer=418}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0919f,0f,359.1720f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=419}] run tp @a[tag=cutsceneSlave] 2323.7 82.00025 -830.8062 472.1577 55.78544
execute as @s[scores={cutSceneTimer=419}] run tp @e[tag=openingOwl,limit=1] 2309.363 71.54223 -822.6006 -173.7892 0
execute as @s[scores={cutSceneTimer=419}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0919f,0f,359.1539f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=420}] run tp @a[tag=cutsceneSlave] 2323.7 82.00031 -830.8075 472.2408 55.72515
execute as @s[scores={cutSceneTimer=420}] run tp @e[tag=openingOwl,limit=1] 2309.367 71.55148 -822.9117 -173.7587 0
execute as @s[scores={cutSceneTimer=420}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0918f,0f,359.1360f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=421}] run tp @a[tag=cutsceneSlave] 2323.7 82.00036 -830.8088 472.3416 55.65197
execute as @s[scores={cutSceneTimer=421}] run tp @e[tag=openingOwl,limit=1] 2309.372 71.56035 -823.2282 -173.7301 0
execute as @s[scores={cutSceneTimer=421}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0916f,0f,359.1182f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=422}] run tp @a[tag=cutsceneSlave] 2323.7 82.00041 -830.8101 472.459 55.56684
execute as @s[scores={cutSceneTimer=422}] run tp @e[tag=openingOwl,limit=1] 2309.378 71.56873 -823.5472 -173.7035 0
execute as @s[scores={cutSceneTimer=422}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0915f,0f,359.1007f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=423}] run tp @a[tag=cutsceneSlave] 2323.7 82.00047 -830.8113 472.5934 55.46929
execute as @s[scores={cutSceneTimer=423}] run tp @e[tag=openingOwl,limit=1] 2309.385 71.57669 -823.8712 -173.6786 0
execute as @s[scores={cutSceneTimer=423}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0913f,0f,359.0834f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=424}] run tp @a[tag=cutsceneSlave] 2323.7 82.00051 -830.8124 472.7427 55.36097
execute as @s[scores={cutSceneTimer=424}] run tp @e[tag=openingOwl,limit=1] 2309.393 71.58414 -824.1958 -173.6558 0
execute as @s[scores={cutSceneTimer=424}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0911f,0f,359.0665f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=425}] run tp @a[tag=cutsceneSlave] 2323.7 82.00056 -830.8137 472.9176 55.23403
execute as @s[scores={cutSceneTimer=425}] run tp @e[tag=openingOwl,limit=1] 2309.401 71.59155 -824.5434 -173.6336 0



execute as @s[scores={cutSceneTimer=425}] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute as @s[scores={cutSceneTimer=425}] run execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2344 -776 1 1 false @s
execute as @s[scores={cutSceneTimer=425}] run execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2360 -776 1 1 false @s
execute as @s[scores={cutSceneTimer=425}] run function hp:misc/privet_drive_bus
execute as @s[scores={cutSceneTimer=425}] as @e[tag=stanShunpikePrivetDrive,limit=1] at @s run tp @s ~ 64 ~
execute as @s[scores={cutSceneTimer=425}] run kill @e[tag=chunkLoader,limit=1,sort=nearest]

execute as @s[scores={cutSceneTimer=425}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0909f,0f,359.0490f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=426}] run tp @a[tag=cutsceneSlave] 2323.7 82.0006 -830.8148 473.1022 55.10013
execute as @s[scores={cutSceneTimer=426}] run tp @e[tag=openingOwl,limit=1] 2309.41 71.59824 -824.8822 -173.6139 0
execute as @s[scores={cutSceneTimer=426}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0907f,0f,359.0325f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=427}] run tp @a[tag=cutsceneSlave] 2323.7 82.00065 -830.8158 473.2985 54.95768
execute as @s[scores={cutSceneTimer=427}] run tp @e[tag=openingOwl,limit=1] 2309.42 71.60439 -825.2189 -173.5963 0
execute as @s[scores={cutSceneTimer=427}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0904f,0f,359.0167f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=428}] run tp @a[tag=cutsceneSlave] 2323.7 82.00069 -830.8168 473.512 54.8028
execute as @s[scores={cutSceneTimer=428}] run tp @e[tag=openingOwl,limit=1] 2309.43 71.61021 -825.5641 -173.58 0
execute as @s[scores={cutSceneTimer=428}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0901f,0f,359.0010f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=429}] run tp @a[tag=cutsceneSlave] 2323.7 82.00072 -830.8177 473.7396 54.63767
execute as @s[scores={cutSceneTimer=429}] run tp @e[tag=openingOwl,limit=1] 2309.441 71.6156 -825.9131 -173.5652 0
execute as @s[scores={cutSceneTimer=429}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0898f,0f,358.9858f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=430}] run tp @a[tag=cutsceneSlave] 2323.7 82.00076 -830.8187 473.9799 54.4634
execute as @s[scores={cutSceneTimer=430}] run tp @e[tag=openingOwl,limit=1] 2309.453 71.62057 -826.2646 -173.552 0
execute as @s[scores={cutSceneTimer=430}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0895f,0f,358.9711f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=431}] run tp @a[tag=cutsceneSlave] 2323.7 82.0008 -830.8195 474.2369 54.27687
execute as @s[scores={cutSceneTimer=431}] run tp @e[tag=openingOwl,limit=1] 2309.465 71.62521 -826.6254 -173.54 0
execute as @s[scores={cutSceneTimer=431}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0891f,0f,358.9567f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=432}] run tp @a[tag=cutsceneSlave] 2323.7 82.00082 -830.8201 474.42 54.14406
execute as @s[scores={cutSceneTimer=432}] run tp @e[tag=openingOwl,limit=1] 2309.473 71.62816 -826.8743 -173.5327 0
execute as @s[scores={cutSceneTimer=432}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0888f,0f,358.9471f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=433}] run tp @a[tag=cutsceneSlave] 2323.7 82.00085 -830.8209 474.7022 53.93936
execute as @s[scores={cutSceneTimer=433}] run tp @e[tag=openingOwl,limit=1] 2309.487 71.6322 -827.247 -173.5228 0
execute as @s[scores={cutSceneTimer=433}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0884f,0f,358.9333f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=434}] run tp @a[tag=cutsceneSlave] 2323.7 82.00089 -830.8217 474.9978 53.72491
execute as @s[scores={cutSceneTimer=434}] run tp @e[tag=openingOwl,limit=1] 2309.5 71.63588 -827.6255 -173.5142 0
execute as @s[scores={cutSceneTimer=434}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0879f,0f,358.9201f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=435}] run tp @a[tag=cutsceneSlave] 2323.7 82.00092 -830.8224 475.3012 53.50486
execute as @s[scores={cutSceneTimer=435}] run tp @e[tag=openingOwl,limit=1] 2309.514 71.63914 -828.0034 -173.5068 0
execute as @s[scores={cutSceneTimer=435}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0875f,0f,358.9075f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=436}] run tp @a[tag=cutsceneSlave] 2323.7 82.00095 -830.8231 475.6188 53.27442
execute as @s[scores={cutSceneTimer=436}] run tp @e[tag=openingOwl,limit=1] 2309.529 71.64207 -828.3895 -173.5005 0
execute as @s[scores={cutSceneTimer=436}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0870f,0f,358.8954f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=437}] run tp @a[tag=cutsceneSlave] 2323.7 82.00097 -830.8238 475.9473 53.03617
execute as @s[scores={cutSceneTimer=437}] run tp @e[tag=openingOwl,limit=1] 2309.544 71.64468 -828.7804 -173.4952 0
execute as @s[scores={cutSceneTimer=437}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0864f,0f,358.8839f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=438}] run tp @a[tag=cutsceneSlave] 2323.7 82.001 -830.8244 476.2977 52.78202
execute as @s[scores={cutSceneTimer=438}] run tp @e[tag=openingOwl,limit=1] 2309.56 71.64701 -829.1895 -173.4907 0
execute as @s[scores={cutSceneTimer=438}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0859f,0f,358.8727f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=439}] run tp @a[tag=cutsceneSlave] 2323.7 82.00102 -830.825 476.6488 52.52728
execute as @s[scores={cutSceneTimer=439}] run tp @e[tag=openingOwl,limit=1] 2309.576 71.64896 -829.5927 -173.4873 0
execute as @s[scores={cutSceneTimer=439}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0853f,0f,358.8624f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=440}] run tp @a[tag=cutsceneSlave] 2323.7 82.00105 -830.8255 477.0136 52.26261
execute as @s[scores={cutSceneTimer=440}] run tp @e[tag=openingOwl,limit=1] 2309.593 71.65062 -830.0056 -173.4846 0
execute as @s[scores={cutSceneTimer=440}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0847f,0f,358.8526f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=441}] run tp @a[tag=cutsceneSlave] 2323.7 82.00107 -830.826 477.3899 51.98967
execute as @s[scores={cutSceneTimer=441}] run tp @e[tag=openingOwl,limit=1] 2309.609 71.65198 -830.4262 -173.4827 0
execute as @s[scores={cutSceneTimer=441}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0840f,0f,358.8434f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=442}] run tp @a[tag=cutsceneSlave] 2323.7 82.00108 -830.8265 477.7774 51.70857
execute as @s[scores={cutSceneTimer=442}] run tp @e[tag=openingOwl,limit=1] 2309.627 71.65305 -830.8549 -173.4815 0
execute as @s[scores={cutSceneTimer=442}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0833f,0f,358.8348f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=443}] run tp @a[tag=cutsceneSlave] 2323.7 82.0011 -830.827 478.1718 51.42251
execute as @s[scores={cutSceneTimer=443}] run tp @e[tag=openingOwl,limit=1] 2309.644 71.65385 -831.2872 -173.4809 0
execute as @s[scores={cutSceneTimer=443}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0826f,0f,358.8270f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=444}] run tp @a[tag=cutsceneSlave] 2323.7 82.00112 -830.8274 478.5781 51.12771
execute as @s[scores={cutSceneTimer=444}] run tp @e[tag=openingOwl,limit=1] 2309.662 71.65437 -831.7296 -173.4815 0
execute as @s[scores={cutSceneTimer=444}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0819f,0f,358.8198f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=445}] run tp @a[tag=cutsceneSlave] 2323.7 82.00114 -830.8278 478.9943 50.82585
execute as @s[scores={cutSceneTimer=445}] run tp @e[tag=openingOwl,limit=1] 2309.68 71.65462 -832.1799 -173.4873 0
execute as @s[scores={cutSceneTimer=445}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0811f,0f,358.8132f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=446}] run tp @a[tag=cutsceneSlave] 2323.7 82.00114 -830.8281 479.4233 50.51463
execute as @s[scores={cutSceneTimer=446}] run tp @e[tag=openingOwl,limit=1] 2309.699 71.65462 -832.6407 -173.4992 0
execute as @s[scores={cutSceneTimer=446}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0803f,0f,358.8074f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:12}}]}
execute as @s[scores={cutSceneTimer=447}] run tp @a[tag=cutsceneSlave] 2323.7 82.00116 -830.8284 479.8621 50.19636
execute as @s[scores={cutSceneTimer=447}] run tp @e[tag=openingOwl,limit=1] 2309.718 71.65421 -833.1058 -173.5169 0
execute as @s[scores={cutSceneTimer=447}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0794f,0f,358.8023f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:11}}]}
execute as @s[scores={cutSceneTimer=448}] run tp @a[tag=cutsceneSlave] 2323.7 82.00117 -830.8287 480.3083 49.87265
execute as @s[scores={cutSceneTimer=448}] run tp @e[tag=openingOwl,limit=1] 2309.737 71.65337 -833.5729 -173.5399 0
execute as @s[scores={cutSceneTimer=448}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0785f,0f,358.7980f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=449}] run tp @a[tag=cutsceneSlave] 2323.7 82.00118 -830.8289 480.7586 49.54606
execute as @s[scores={cutSceneTimer=449}] run tp @e[tag=openingOwl,limit=1] 2309.757 71.65214 -834.0387 -173.5679 0
execute as @s[scores={cutSceneTimer=449}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0776f,0f,358.7944f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=450}] run tp @a[tag=cutsceneSlave] 2323.7 82.00119 -830.8292 481.217 49.21352
execute as @s[scores={cutSceneTimer=450}] run tp @e[tag=openingOwl,limit=1] 2309.776 71.65049 -834.508 -173.6008 0
execute as @s[scores={cutSceneTimer=450}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0766f,0f,358.7917f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=451}] run tp @a[tag=cutsceneSlave] 2323.7 82.0012 -830.8293 481.6842 48.87461
execute as @s[scores={cutSceneTimer=451}] run tp @e[tag=openingOwl,limit=1] 2309.796 71.64842 -834.9816 -173.6385 0
execute as @s[scores={cutSceneTimer=451}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0757f,0f,358.7898f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=452}] run tp @a[tag=cutsceneSlave] 2323.7 82.00121 -830.8295 482.1581 48.53086
execute as @s[scores={cutSceneTimer=452}] run tp @e[tag=openingOwl,limit=1] 2309.816 71.64595 -835.4576 -173.6805 0
execute as @s[scores={cutSceneTimer=452}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0746f,0f,358.7886f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:8}}]}
execute as @s[scores={cutSceneTimer=453}] run tp @a[tag=cutsceneSlave] 2323.7 82.00121 -830.8297 482.6476 48.17582
execute as @s[scores={cutSceneTimer=453}] run tp @e[tag=openingOwl,limit=1] 2309.836 71.64301 -835.9452 -173.7276 0
execute as @s[scores={cutSceneTimer=453}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0736f,0f,358.7888f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=454}] run tp @a[tag=cutsceneSlave] 2323.7 82.00121 -830.8298 483.1486 47.81237
execute as @s[scores={cutSceneTimer=454}] run tp @e[tag=openingOwl,limit=1] 2309.857 71.63961 -836.4403 -173.7792 0
execute as @s[scores={cutSceneTimer=454}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0724f,0f,358.8054f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=455}] run tp @a[tag=cutsceneSlave] 2323.7 82.00122 -830.8298 483.6534 47.44613
execute as @s[scores={cutSceneTimer=455}] run tp @e[tag=openingOwl,limit=1] 2309.878 71.6358 -836.9357 -173.8344 0
execute as @s[scores={cutSceneTimer=455}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0713f,0f,358.8436f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=456}] run tp @a[tag=cutsceneSlave] 2323.7 82.00122 -830.8299 484.165 47.07509
execute as @s[scores={cutSceneTimer=456}] run tp @e[tag=openingOwl,limit=1] 2309.899 71.63156 -837.4343 -173.8932 0
execute as @s[scores={cutSceneTimer=456}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0701f,0f,358.9005f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=457}] run tp @a[tag=cutsceneSlave] 2323.7 82.00122 -830.8299 484.6829 46.69942
execute as @s[scores={cutSceneTimer=457}] run tp @e[tag=openingOwl,limit=1] 2309.92 71.62688 -837.9362 -173.9554 0
execute as @s[scores={cutSceneTimer=457}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0688f,0f,358.9731f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=458}] run tp @a[tag=cutsceneSlave] 2323.7 82.00122 -830.8299 485.2067 46.31948
execute as @s[scores={cutSceneTimer=458}] run tp @e[tag=openingOwl,limit=1] 2309.941 71.62178 -838.441 -174.0208 0
execute as @s[scores={cutSceneTimer=458}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0676f,0f,359.0584f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=459}] run tp @a[tag=cutsceneSlave] 2323.7 82.00122 -830.8299 485.7343 45.93673
execute as @s[scores={cutSceneTimer=459}] run tp @e[tag=openingOwl,limit=1] 2309.962 71.61626 -838.9471 -174.0888 0
execute as @s[scores={cutSceneTimer=459}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0663f,0f,359.1532f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=460}] run tp @a[tag=cutsceneSlave] 2323.7 82.00122 -830.8298 486.2659 45.55116
execute as @s[scores={cutSceneTimer=460}] run tp @e[tag=openingOwl,limit=1] 2309.983 71.61034 -839.455 -174.1594 0
execute as @s[scores={cutSceneTimer=460}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0649f,0f,359.2545f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=461}] run tp @a[tag=cutsceneSlave] 2323.7 82.00122 -830.8298 486.7953 45.16711
execute as @s[scores={cutSceneTimer=461}] run tp @e[tag=openingOwl,limit=1] 2310.004 71.60406 -839.9589 -174.2312 0
execute as @s[scores={cutSceneTimer=461}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0635f,0f,359.3582f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=462}] run tp @a[tag=cutsceneSlave] 2323.7 82.00121 -830.8297 487.1507 44.90933
execute as @s[scores={cutSceneTimer=462}] run tp @e[tag=openingOwl,limit=1] 2310.018 71.59966 -840.2962 -174.2803 0
execute as @s[scores={cutSceneTimer=462}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0626f,0f,359.4281f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=463}] run tp @a[tag=cutsceneSlave] 2323.7 82.00121 -830.8296 487.7056 44.50686
execute as @s[scores={cutSceneTimer=463}] run tp @e[tag=openingOwl,limit=1] 2310.04 71.59245 -840.8217 -174.3581 0
execute as @s[scores={cutSceneTimer=463}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0611f,0f,359.5353f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:12}}]}
execute as @s[scores={cutSceneTimer=464}] run tp @a[tag=cutsceneSlave] 2323.7 82.00121 -830.8295 488.2501 44.11187
execute as @s[scores={cutSceneTimer=464}] run tp @e[tag=openingOwl,limit=1] 2310.061 71.58501 -841.3363 -174.4356 0
execute as @s[scores={cutSceneTimer=464}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0596f,0f,359.6359f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:11}}]}
execute as @s[scores={cutSceneTimer=465}] run tp @a[tag=cutsceneSlave] 2323.7 82.0012 -830.8293 488.7948 43.71679
execute as @s[scores={cutSceneTimer=465}] run tp @e[tag=openingOwl,limit=1] 2310.082 71.57719 -841.85 -174.514 0
execute as @s[scores={cutSceneTimer=465}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0581f,0f,359.7292f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=466}] run tp @a[tag=cutsceneSlave] 2323.7 82.00119 -830.8292 489.3474 43.31588
execute as @s[scores={cutSceneTimer=466}] run tp @e[tag=openingOwl,limit=1] 2310.103 71.56889 -842.3706 -174.5944 0
execute as @s[scores={cutSceneTimer=466}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0565f,0f,359.8137f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=467}] run tp @a[tag=cutsceneSlave] 2323.7 82.00118 -830.829 489.9098 42.90796
execute as @s[scores={cutSceneTimer=467}] run tp @e[tag=openingOwl,limit=1] 2310.124 71.56006 -842.8998 -174.6767 0
execute as @s[scores={cutSceneTimer=467}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0548f,0f,359.8866f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=468}] run tp @a[tag=cutsceneSlave] 2323.7 82.00117 -830.8287 490.464 42.50597
execute as @s[scores={cutSceneTimer=468}] run tp @e[tag=openingOwl,limit=1] 2310.144 71.55098 -843.4211 -174.7581 0
execute as @s[scores={cutSceneTimer=468}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0532f,0f,359.9429f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:9}}]}
execute as @s[scores={cutSceneTimer=469}] run tp @a[tag=cutsceneSlave] 2323.7 82.00117 -830.8286 491.0242 42.09956
execute as @s[scores={cutSceneTimer=469}] run tp @e[tag=openingOwl,limit=1] 2310.165 71.54142 -843.9481 -174.8407 0
execute as @s[scores={cutSceneTimer=469}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0515f,0f,359.9815f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:8}}]}
execute as @s[scores={cutSceneTimer=470}] run tp @a[tag=cutsceneSlave] 2323.7 82.00116 -830.8283 491.5848 41.6929
execute as @s[scores={cutSceneTimer=470}] run tp @e[tag=openingOwl,limit=1] 2310.185 71.53146 -844.4756 -174.9232 0
execute as @s[scores={cutSceneTimer=470}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0497f,0f,-0.0008f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=471}] run tp @a[tag=cutsceneSlave] 2323.7 82.00114 -830.828 492.1457 41.28606
execute as @s[scores={cutSceneTimer=471}] run tp @e[tag=openingOwl,limit=1] 2310.206 71.52113 -845.0037 -175.0056 0
execute as @s[scores={cutSceneTimer=471}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0479f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=472}] run tp @a[tag=cutsceneSlave] 2323.7 82.00114 -830.8278 492.7108 40.87618
execute as @s[scores={cutSceneTimer=472}] run tp @e[tag=openingOwl,limit=1] 2310.228 71.51031 -845.5366 -175.0881 0
execute as @s[scores={cutSceneTimer=472}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0461f,0f,-0.0002f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=473}] run tp @a[tag=cutsceneSlave] 2323.7 82.00112 -830.8275 493.2759 40.46625
execute as @s[scores={cutSceneTimer=473}] run tp @e[tag=openingOwl,limit=1] 2310.251 71.49911 -846.0704 -175.17 0
execute as @s[scores={cutSceneTimer=473}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0442f,0f,-0.0005f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=474}] run tp @a[tag=cutsceneSlave] 2323.7 82.00111 -830.8271 493.852 40.04847
execute as @s[scores={cutSceneTimer=474}] run tp @e[tag=openingOwl,limit=1] 2310.276 71.48727 -846.6155 -175.2528 0
execute as @s[scores={cutSceneTimer=474}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0422f,0f,-0.0010f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=475}] run tp @a[tag=cutsceneSlave] 2323.7 82.0011 -830.8268 494.4248 39.63288
execute as @s[scores={cutSceneTimer=475}] run tp @e[tag=openingOwl,limit=1] 2310.302 71.47507 -847.1591 -175.3341 0
execute as @s[scores={cutSceneTimer=475}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0402f,0f,-0.0016f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=476}] run tp @a[tag=cutsceneSlave] 2323.7 82.00108 -830.8264 494.991 39.22223
execute as @s[scores={cutSceneTimer=476}] run tp @e[tag=openingOwl,limit=1] 2310.329 71.46261 -847.6979 -175.4132 0
execute as @s[scores={cutSceneTimer=476}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0382f,0f,-0.0024f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=477}] run tp @a[tag=cutsceneSlave] 2323.7 82.00107 -830.8261 495.5607 38.80894
execute as @s[scores={cutSceneTimer=477}] run tp @e[tag=openingOwl,limit=1] 2310.356 71.44965 -848.2419 -175.4915 0
execute as @s[scores={cutSceneTimer=477}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0361f,0f,-0.0032f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=478}] run tp @a[tag=cutsceneSlave] 2323.7 82.00105 -830.8257 496.134 38.39309
execute as @s[scores={cutSceneTimer=478}] run tp @e[tag=openingOwl,limit=1] 2310.385 71.43616 -848.7914 -175.5687 0
execute as @s[scores={cutSceneTimer=478}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0340f,0f,-0.0042f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=479}] run tp @a[tag=cutsceneSlave] 2323.7 82.00104 -830.8253 496.7159 37.97103
execute as @s[scores={cutSceneTimer=479}] run tp @e[tag=openingOwl,limit=1] 2310.414 71.42202 -849.3514 -175.6452 0
execute as @s[scores={cutSceneTimer=479}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0317f,0f,-0.0054f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=480}] run tp @a[tag=cutsceneSlave] 2323.7 82.00101 -830.8249 497.2914 37.55359
execute as @s[scores={cutSceneTimer=480}] run tp @e[tag=openingOwl,limit=1] 2310.444 71.40757 -849.908 -175.7189 0
execute as @s[scores={cutSceneTimer=480}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0295f,0f,359.9934f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=481}] run tp @a[tag=cutsceneSlave] 2323.7 82.001 -830.8245 497.8625 37.13928
execute as @s[scores={cutSceneTimer=481}] run tp @e[tag=openingOwl,limit=1] 2310.475 71.39252 -850.4631 -175.7897 0
execute as @s[scores={cutSceneTimer=481}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0271f,0f,359.9920f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=482}] run tp @a[tag=cutsceneSlave] 2323.7 82.00098 -830.824 498.4396 36.72076
execute as @s[scores={cutSceneTimer=482}] run tp @e[tag=openingOwl,limit=1] 2310.506 71.37639 -851.0271 -175.8589 0
execute as @s[scores={cutSceneTimer=482}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0248f,0f,359.9905f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=483}] run tp @a[tag=cutsceneSlave] 2323.7 82.00097 -830.8236 499.0108 36.30643
execute as @s[scores={cutSceneTimer=483}] run tp @e[tag=openingOwl,limit=1] 2310.538 71.35943 -851.5887 -175.9247 0
execute as @s[scores={cutSceneTimer=483}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0223f,0f,359.9889f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=484}] run tp @a[tag=cutsceneSlave] 2323.7 82.00095 -830.8232 499.5808 35.89294
execute as @s[scores={cutSceneTimer=484}] run tp @e[tag=openingOwl,limit=1] 2310.57 71.34142 -852.1528 -175.9875 0
execute as @s[scores={cutSceneTimer=484}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0199f,0f,359.9872f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=485}] run tp @a[tag=cutsceneSlave] 2323.7 82.00093 -830.8227 500.1468 35.48241
execute as @s[scores={cutSceneTimer=485}] run tp @e[tag=openingOwl,limit=1] 2310.602 71.32235 -852.7167 -176.0468 0
execute as @s[scores={cutSceneTimer=485}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0173f,0f,359.9854f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=486}] run tp @a[tag=cutsceneSlave] 2323.7 82.00091 -830.8223 500.7112 35.07303
execute as @s[scores={cutSceneTimer=486}] run tp @e[tag=openingOwl,limit=1] 2310.635 71.30207 -853.2833 -176.1026 0
execute as @s[scores={cutSceneTimer=486}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0147f,0f,359.9834f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=487}] run tp @a[tag=cutsceneSlave] 2323.7 82.00089 -830.8218 501.272 34.66621
execute as @s[scores={cutSceneTimer=487}] run tp @e[tag=openingOwl,limit=1] 2310.667 71.28056 -853.8506 -176.1545 0
execute as @s[scores={cutSceneTimer=487}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0121f,0f,359.9814f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=488}] run tp @a[tag=cutsceneSlave] 2323.7 82.00087 -830.8213 501.8191 34.26941
execute as @s[scores={cutSceneTimer=488}] run tp @e[tag=openingOwl,limit=1] 2310.699 71.25815 -854.4087 -176.2015 0
execute as @s[scores={cutSceneTimer=488}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0095f,0f,359.9793f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=489}] run tp @a[tag=cutsceneSlave] 2323.7 82.00085 -830.8208 502.3682 33.87115
execute as @s[scores={cutSceneTimer=489}] run tp @e[tag=openingOwl,limit=1] 2310.732 71.23415 -854.9736 -176.2447 0
execute as @s[scores={cutSceneTimer=489}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0067f,0f,359.9771f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=490}] run tp @a[tag=cutsceneSlave] 2323.7 82.00084 -830.8205 502.7317 33.60748
execute as @s[scores={cutSceneTimer=490}] run tp @e[tag=openingOwl,limit=1] 2310.754 71.21736 -855.3505 -176.2711 0
execute as @s[scores={cutSceneTimer=490}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0049f,0f,359.9756f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=491}] run tp @a[tag=cutsceneSlave] 2323.7 82.00082 -830.8199 503.2796 33.21
execute as @s[scores={cutSceneTimer=491}] run tp @e[tag=openingOwl,limit=1] 2310.786 71.19061 -855.9233 -176.307 0
execute as @s[scores={cutSceneTimer=491}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[1.0020f,0f,359.9732f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=492}] run tp @a[tag=cutsceneSlave] 2323.7 82.00079 -830.8195 503.812 32.82381
execute as @s[scores={cutSceneTimer=492}] run tp @e[tag=openingOwl,limit=1] 2310.818 71.16284 -856.4854 -176.3373 0
execute as @s[scores={cutSceneTimer=492}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9992f,0f,359.9708f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=493}] run tp @a[tag=cutsceneSlave] 2323.7 82.00078 -830.819 504.3533 32.4312
execute as @s[scores={cutSceneTimer=493}] run tp @e[tag=openingOwl,limit=1] 2310.851 71.13268 -857.063 -176.3633 0
execute as @s[scores={cutSceneTimer=493}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9962f,0f,359.9683f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=494}] run tp @a[tag=cutsceneSlave] 2323.7 82.00076 -830.8184 504.8861 32.04471
execute as @s[scores={cutSceneTimer=494}] run tp @e[tag=openingOwl,limit=1] 2310.883 71.10094 -857.6381 -176.3836 0
execute as @s[scores={cutSceneTimer=494}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9932f,0f,359.9657f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=495}] run tp @a[tag=cutsceneSlave] 2323.7 82.00073 -830.8179 505.4067 31.66706
execute as @s[scores={cutSceneTimer=495}] run tp @e[tag=openingOwl,limit=1] 2310.914 71.06781 -858.2067 -176.398 0
execute as @s[scores={cutSceneTimer=495}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9902f,0f,359.9630f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=496}] run tp @a[tag=cutsceneSlave] 2323.7 82.00071 -830.8174 505.925 31.29113
execute as @s[scores={cutSceneTimer=496}] run tp @e[tag=openingOwl,limit=1] 2310.945 71.03259 -858.7798 -176.4067 0
execute as @s[scores={cutSceneTimer=496}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9871f,0f,359.9603f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=497}] run tp @a[tag=cutsceneSlave] 2323.7 82.00069 -830.8169 506.4336 30.92226
execute as @s[scores={cutSceneTimer=497}] run tp @e[tag=openingOwl,limit=1] 2310.975 70.99567 -859.3495 -176.4091 0
execute as @s[scores={cutSceneTimer=497}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9839f,0f,359.9576f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=498}] run tp @a[tag=cutsceneSlave] 2323.7 82.00067 -830.8163 506.9368 30.55723
execute as @s[scores={cutSceneTimer=498}] run tp @e[tag=openingOwl,limit=1] 2311.004 70.9567 -859.9208 -176.3981 0
execute as @s[scores={cutSceneTimer=498}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9807f,0f,359.9547f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=499}] run tp @a[tag=cutsceneSlave] 2323.7 82.00065 -830.8159 507.4326 30.19765
execute as @s[scores={cutSceneTimer=499}] run tp @e[tag=openingOwl,limit=1] 2311.033 70.91571 -860.4918 -176.369 0
execute as @s[scores={cutSceneTimer=499}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9774f,0f,359.9518f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=500}] run tp @a[tag=cutsceneSlave] 2323.7 82.00063 -830.8153 507.9257 29.83998
execute as @s[scores={cutSceneTimer=500}] run tp @e[tag=openingOwl,limit=1] 2311.061 70.87218 -861.0684 -176.3219 0
execute as @s[scores={cutSceneTimer=500}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9741f,0f,359.9489f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=501}] run tp @a[tag=cutsceneSlave] 2323.7 82.0006 -830.8148 508.4138 29.48589
execute as @s[scores={cutSceneTimer=501}] run tp @e[tag=openingOwl,limit=1] 2311.089 70.82617 -861.6482 -176.2573 0
execute as @s[scores={cutSceneTimer=501}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9707f,0f,359.9458f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=502}] run tp @a[tag=cutsceneSlave] 2323.7 82.00058 -830.8143 508.8854 29.14377
execute as @s[scores={cutSceneTimer=502}] run tp @e[tag=openingOwl,limit=1] 2311.115 70.77873 -862.2177 -176.1777 0
execute as @s[scores={cutSceneTimer=502}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9672f,0f,359.9428f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=503}] run tp @a[tag=cutsceneSlave] 2323.7 82.00056 -830.8137 509.3523 28.80517
execute as @s[scores={cutSceneTimer=503}] run tp @e[tag=openingOwl,limit=1] 2311.14 70.72861 -862.7913 -176.0822 0
execute as @s[scores={cutSceneTimer=503}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9637f,0f,359.9397f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=504}] run tp @a[tag=cutsceneSlave] 2323.7 82.00054 -830.8132 509.8082 28.47451
execute as @s[scores={cutSceneTimer=504}] run tp @e[tag=openingOwl,limit=1] 2311.165 70.67639 -863.3615 -175.9724 0
execute as @s[scores={cutSceneTimer=504}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9602f,0f,359.9366f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=505}] run tp @a[tag=cutsceneSlave] 2323.7 82.00052 -830.8127 510.2633 28.14435
execute as @s[scores={cutSceneTimer=505}] run tp @e[tag=openingOwl,limit=1] 2311.188 70.62073 -863.9417 -175.8464 0
execute as @s[scores={cutSceneTimer=505}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9565f,0f,359.9333f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=506}] run tp @a[tag=cutsceneSlave] 2323.7 82.0005 -830.8121 510.7021 27.82601
execute as @s[scores={cutSceneTimer=506}] run tp @e[tag=openingOwl,limit=1] 2311.21 70.56342 -864.5124 -175.709 0
execute as @s[scores={cutSceneTimer=506}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9528f,0f,359.9301f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=507}] run tp @a[tag=cutsceneSlave] 2323.7 82.00047 -830.8116 511.1339 27.51281
execute as @s[scores={cutSceneTimer=507}] run tp @e[tag=openingOwl,limit=1] 2311.231 70.5032 -865.0857 -175.5581 0
execute as @s[scores={cutSceneTimer=507}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9491f,0f,359.9269f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=508}] run tp @a[tag=cutsceneSlave] 2323.7 82.00046 -830.8112 511.5547 27.2076
execute as @s[scores={cutSceneTimer=508}] run tp @e[tag=openingOwl,limit=1] 2311.25 70.44054 -865.6567 -175.3958 0
execute as @s[scores={cutSceneTimer=508}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9453f,0f,359.9236f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=509}] run tp @a[tag=cutsceneSlave] 2323.7 82.00043 -830.8106 511.9715 26.9053
execute as @s[scores={cutSceneTimer=509}] run tp @e[tag=openingOwl,limit=1] 2311.265 70.37419 -866.2355 -175.2195 0
execute as @s[scores={cutSceneTimer=509}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9414f,0f,359.9203f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=510}] run tp @a[tag=cutsceneSlave] 2323.7 82.00041 -830.8101 512.3777 26.61073
execute as @s[scores={cutSceneTimer=510}] run tp @e[tag=openingOwl,limit=1] 2311.275 70.30501 -866.8136 -175.0323 0
execute as @s[scores={cutSceneTimer=510}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9374f,0f,359.9170f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=511}] run tp @a[tag=cutsceneSlave] 2323.7 82.0004 -830.8096 512.7739 26.32333
execute as @s[scores={cutSceneTimer=511}] run tp @e[tag=openingOwl,limit=1] 2311.28 70.23277 -867.3921 -174.8346 0
execute as @s[scores={cutSceneTimer=511}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9334f,0f,359.9136f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=512}] run tp @a[tag=cutsceneSlave] 2323.7 82.00037 -830.8091 513.1569 26.04549
execute as @s[scores={cutSceneTimer=512}] run tp @e[tag=openingOwl,limit=1] 2311.279 70.15797 -867.9666 -174.6285 0
execute as @s[scores={cutSceneTimer=512}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9293f,0f,359.9102f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=513}] run tp @a[tag=cutsceneSlave] 2323.7 82.00035 -830.8087 513.5271 25.77693
execute as @s[scores={cutSceneTimer=513}] run tp @e[tag=openingOwl,limit=1] 2311.273 70.08047 -868.5379 -174.4146 0
execute as @s[scores={cutSceneTimer=513}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9252f,0f,359.9069f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=514}] run tp @a[tag=cutsceneSlave] 2323.7 82.00034 -830.8082 513.8902 25.51356
execute as @s[scores={cutSceneTimer=514}] run tp @e[tag=openingOwl,limit=1] 2311.263 69.99906 -869.1152 -174.1899 0
execute as @s[scores={cutSceneTimer=514}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9209f,0f,359.9035f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=515}] run tp @a[tag=cutsceneSlave] 2323.7 82.00031 -830.8077 514.2443 25.25676
execute as @s[scores={cutSceneTimer=515}] run tp @e[tag=openingOwl,limit=1] 2311.247 69.91783 -869.6964 -173.9558 0
execute as @s[scores={cutSceneTimer=515}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9166f,0f,359.9000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=516}] run tp @a[tag=cutsceneSlave] 2323.7 82.0003 -830.8072 514.5865 25.00854
execute as @s[scores={cutSceneTimer=516}] run tp @e[tag=openingOwl,limit=1] 2311.228 69.83904 -870.2776 -173.7144 0
execute as @s[scores={cutSceneTimer=516}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9122f,0f,359.8966f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=517}] run tp @a[tag=cutsceneSlave] 2323.7 82.00027 -830.8068 514.9099 24.77391
execute as @s[scores={cutSceneTimer=517}] run tp @e[tag=openingOwl,limit=1] 2311.204 69.76423 -870.847 -173.4713 0
execute as @s[scores={cutSceneTimer=517}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9078f,0f,359.8932f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=518}] run tp @a[tag=cutsceneSlave] 2323.7 82.00026 -830.8063 515.2273 24.54372
execute as @s[scores={cutSceneTimer=518}] run tp @e[tag=openingOwl,limit=1] 2311.176 69.69034 -871.4272 -173.2177 0
execute as @s[scores={cutSceneTimer=518}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.9033f,0f,359.8898f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=519}] run tp @a[tag=cutsceneSlave] 2323.7 82.00024 -830.8058 515.5258 24.32721
execute as @s[scores={cutSceneTimer=519}] run tp @e[tag=openingOwl,limit=1] 2311.144 69.62022 -871.9957 -172.9639 0
execute as @s[scores={cutSceneTimer=519}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8987f,0f,359.8864f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=520}] run tp @a[tag=cutsceneSlave] 2323.7 82.00022 -830.8054 515.8133 24.11864
execute as @s[scores={cutSceneTimer=520}] run tp @e[tag=openingOwl,limit=1] 2311.109 69.55198 -872.5672 -172.7042 0
execute as @s[scores={cutSceneTimer=520}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8941f,0f,359.8830f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=521}] run tp @a[tag=cutsceneSlave] 2323.7 82.00021 -830.8051 516.0891 23.91857
execute as @s[scores={cutSceneTimer=521}] run tp @e[tag=openingOwl,limit=1] 2311.07 69.48563 -873.1414 -172.4391 0
execute as @s[scores={cutSceneTimer=521}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8894f,0f,359.8796f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=522}] run tp @a[tag=cutsceneSlave] 2323.7 82.00019 -830.8046 516.3542 23.72631
execute as @s[scores={cutSceneTimer=522}] run tp @e[tag=openingOwl,limit=1] 2311.027 69.42083 -873.7216 -172.1678 0
execute as @s[scores={cutSceneTimer=522}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8845f,0f,359.8763f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=523}] run tp @a[tag=cutsceneSlave] 2323.7 82.00018 -830.8043 516.6006 23.54761
execute as @s[scores={cutSceneTimer=523}] run tp @e[tag=openingOwl,limit=1] 2310.982 69.35941 -874.2908 -171.8989 0
execute as @s[scores={cutSceneTimer=523}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8797f,0f,359.8729f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=524}] run tp @a[tag=cutsceneSlave] 2323.7 82.00016 -830.804 516.7575 23.43375
execute as @s[scores={cutSceneTimer=524}] run tp @e[tag=openingOwl,limit=1] 2310.95 69.31954 -874.6713 -171.718 0
execute as @s[scores={cutSceneTimer=524}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8764f,0f,359.8707f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=524}] as @a[tag=cutsceneSlave] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=525}] run tp @a[tag=cutsceneSlave] 2323.7 82.00014 -830.8036 516.9816 23.27123
execute as @s[scores={cutSceneTimer=525}] run tp @e[tag=openingOwl,limit=1] 2310.9 69.26134 -875.2432 -171.4445 0
execute as @s[scores={cutSceneTimer=525}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8714f,0f,359.8674f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=526}] run tp @a[tag=cutsceneSlave] 2323.7 82.00014 -830.8033 517.1892 23.12064
execute as @s[scores={cutSceneTimer=526}] run tp @e[tag=openingOwl,limit=1] 2310.847 69.20574 -875.8098 -171.1726 0
execute as @s[scores={cutSceneTimer=526}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8664f,0f,359.8642f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=527}] run tp @a[tag=cutsceneSlave] 2323.7 82.00012 -830.8029 517.3809 22.9816
execute as @s[scores={cutSceneTimer=527}] run tp @e[tag=openingOwl,limit=1] 2310.793 69.15253 -876.3723 -170.9021 0
execute as @s[scores={cutSceneTimer=527}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8614f,0f,359.8610f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=528}] run tp @a[tag=cutsceneSlave] 2323.7 82.00011 -830.8026 517.5583 22.85289
execute as @s[scores={cutSceneTimer=528}] run tp @e[tag=openingOwl,limit=1] 2310.736 69.10108 -876.937 -170.6308 0
execute as @s[scores={cutSceneTimer=528}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8562f,0f,359.8578f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=529}] run tp @a[tag=cutsceneSlave] 2323.7 82.00009 -830.8023 517.7205 22.73526
execute as @s[scores={cutSceneTimer=529}] run tp @e[tag=openingOwl,limit=1] 2310.676 69.05156 -877.5018 -170.3602 0
execute as @s[scores={cutSceneTimer=529}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8509f,0f,359.8546f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=530}] run tp @a[tag=cutsceneSlave] 2323.7 82.00008 -830.802 517.8656 22.63003
execute as @s[scores={cutSceneTimer=530}] run tp @e[tag=openingOwl,limit=1] 2310.615 69.00442 -878.061 -170.0936 0
execute as @s[scores={cutSceneTimer=530}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8457f,0f,359.8515f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=531}] run tp @a[tag=cutsceneSlave] 2323.7 82.00007 -830.8018 517.9978 22.53416
execute as @s[scores={cutSceneTimer=531}] run tp @e[tag=openingOwl,limit=1] 2310.552 68.95811 -878.6332 -169.8231 0
execute as @s[scores={cutSceneTimer=531}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8402f,0f,359.8484f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=532}] run tp @a[tag=cutsceneSlave] 2323.7 82.00006 -830.8015 518.1101 22.45267
execute as @s[scores={cutSceneTimer=532}] run tp @e[tag=openingOwl,limit=1] 2310.488 68.9149 -879.1899 -169.5625 0
execute as @s[scores={cutSceneTimer=532}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8347f,0f,359.8454f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=533}] run tp @a[tag=cutsceneSlave] 2323.7 82.00005 -830.8013 518.2075 22.38203
execute as @s[scores={cutSceneTimer=533}] run tp @e[tag=openingOwl,limit=1] 2310.421 68.8728 -879.756 -169.301 0
execute as @s[scores={cutSceneTimer=533}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8291f,0f,359.8424f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=534}] run tp @a[tag=cutsceneSlave] 2323.7 82.00005 -830.801 518.2866 22.32464
execute as @s[scores={cutSceneTimer=534}] run tp @e[tag=openingOwl,limit=1] 2310.354 68.83302 -880.3152 -169.0465 0
execute as @s[scores={cutSceneTimer=534}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8235f,0f,359.8395f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=535}] run tp @a[tag=cutsceneSlave] 2323.7 82.00003 -830.8008 518.3477 22.28032
execute as @s[scores={cutSceneTimer=535}] run tp @e[tag=openingOwl,limit=1] 2310.287 68.79543 -880.8678 -168.7997 0
execute as @s[scores={cutSceneTimer=535}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8178f,0f,359.8367f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=536}] run tp @a[tag=cutsceneSlave] 2323.7 82.00003 -830.8007 518.3917 22.24839
execute as @s[scores={cutSceneTimer=536}] run tp @e[tag=openingOwl,limit=1] 2310.218 68.75914 -881.4266 -168.5555 0
execute as @s[scores={cutSceneTimer=536}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8120f,0f,359.8339f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=537}] run tp @a[tag=cutsceneSlave] 2323.7 82.00002 -830.8005 518.4174 22.22976
execute as @s[scores={cutSceneTimer=537}] run tp @e[tag=openingOwl,limit=1] 2310.149 68.72472 -881.9831 -168.3182 0
execute as @s[scores={cutSceneTimer=537}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8061f,0f,359.8311f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=538}] run tp @a[tag=cutsceneSlave] 2323.7 82.00002 -830.8004 518.4246 22.22457
execute as @s[scores={cutSceneTimer=538}] run tp @e[tag=openingOwl,limit=1] 2310.078 68.69171 -882.5453 -168.0856 0
execute as @s[scores={cutSceneTimer=538}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.8001f,0f,359.8285f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=539}] run tp @a[tag=cutsceneSlave] 2323.7 82.00001 -830.8002 518.4246 22.22457
execute as @s[scores={cutSceneTimer=539}] run tp @e[tag=openingOwl,limit=1] 2310.009 68.661 -883.098 -167.8649 0
execute as @s[scores={cutSceneTimer=539}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.7941f,0f,359.8258f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=540}] run tp @a[tag=cutsceneSlave] 2323.7 82.00001 -830.8001 518.4246 22.22457
execute as @s[scores={cutSceneTimer=540}] run tp @e[tag=openingOwl,limit=1] 2309.939 68.63202 -883.6501 -167.6533 0
execute as @s[scores={cutSceneTimer=540}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.7880f,0f,359.8234f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=541}] run tp @a[tag=cutsceneSlave] 2323.7 82 -830.8 518.4246 22.22457
execute as @s[scores={cutSceneTimer=541}] run tp @e[tag=openingOwl,limit=1] 2309.87 68.60478 -884.2007 -167.4514 0
execute as @s[scores={cutSceneTimer=541}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.7819f,0f,359.8209f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=542}] run tp @a[tag=cutsceneSlave] 2323.7 82 -830.8 518.4246 22.22457
execute as @s[scores={cutSceneTimer=542}] run tp @e[tag=openingOwl,limit=1] 2309.802 68.57905 -884.7543 -167.2584 0
execute as @s[scores={cutSceneTimer=542}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.7756f,0f,359.8186f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=543}] run tp @a[tag=cutsceneSlave] 2323.7 82 -830.8 518.4246 22.22457
execute as @s[scores={cutSceneTimer=543}] run tp @e[tag=openingOwl,limit=1] 2309.733 68.55475 -885.3124 -167.0748 0
execute as @s[scores={cutSceneTimer=543}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.7693f,0f,359.8163f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=544}] run tp @a[tag=cutsceneSlave] 2297.3 73.04253 -927.689 328.9998 18.19083
execute as @s[scores={cutSceneTimer=544}] run tp @e[tag=openingOwl,limit=1] 2309.665 68.53226 -885.8656 -166.9043 0
execute as @s[scores={cutSceneTimer=544}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.7629f,0f,359.8141f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:12}}]}
execute as @s[scores={cutSceneTimer=545}] run tp @a[tag=cutsceneSlave] 2297.3 73.04279 -927.7487 328.9923 18.24611
execute as @s[scores={cutSceneTimer=545}] run tp @e[tag=openingOwl,limit=1] 2309.599 68.51122 -886.4219 -166.7449 0
execute as @s[scores={cutSceneTimer=545}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.7564f,0f,359.8121f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:11}}]}
execute as @s[scores={cutSceneTimer=546}] run tp @a[tag=cutsceneSlave] 2297.298 73.0434 -927.8108 328.9733 18.30554
execute as @s[scores={cutSceneTimer=546}] run tp @e[tag=openingOwl,limit=1] 2309.532 68.49143 -886.9863 -166.5963 0
execute as @s[scores={cutSceneTimer=546}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.7498f,0f,359.8101f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=547}] run tp @a[tag=cutsceneSlave] 2297.296 73.0444 -927.8738 328.9432 18.36811
execute as @s[scores={cutSceneTimer=547}] run tp @e[tag=openingOwl,limit=1] 2309.467 68.47322 -887.55 -166.4617 0
execute as @s[scores={cutSceneTimer=547}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.7430f,0f,359.8081f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=548}] run tp @a[tag=cutsceneSlave] 2297.293 73.04572 -927.938 328.9022 18.4339
execute as @s[scores={cutSceneTimer=548}] run tp @e[tag=openingOwl,limit=1] 2309.404 68.4565 -888.1139 -166.3414 0
execute as @s[scores={cutSceneTimer=548}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.7363f,0f,359.8064f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=549}] run tp @a[tag=cutsceneSlave] 2297.289 73.04734 -928.0023 328.851 18.50214
execute as @s[scores={cutSceneTimer=549}] run tp @e[tag=openingOwl,limit=1] 2309.343 68.4414 -888.6723 -166.237 0
execute as @s[scores={cutSceneTimer=549}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.7295f,0f,359.8047f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:9}}]}
execute as @s[scores={cutSceneTimer=550}] run tp @a[tag=cutsceneSlave] 2297.286 73.04931 -928.0689 328.7888 18.57436
execute as @s[scores={cutSceneTimer=550}] as @a[tag=cutsceneSlave] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=550}] run tp @e[tag=openingOwl,limit=1] 2309.284 68.42753 -889.2375 -166.1469 0
execute as @s[scores={cutSceneTimer=550}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.7226f,0f,359.8031f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:8}}]}
execute as @s[scores={cutSceneTimer=551}] run tp @a[tag=cutsceneSlave] 2297.282 73.05158 -928.1368 328.7158 18.65011
execute as @s[scores={cutSceneTimer=551}] run tp @e[tag=openingOwl,limit=1] 2309.226 68.41497 -889.8062 -166.0724 0
execute as @s[scores={cutSceneTimer=551}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.7156f,0f,359.8016f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=552}] run tp @a[tag=cutsceneSlave] 2297.278 73.05412 -928.2061 328.6328 18.72898
execute as @s[scores={cutSceneTimer=552}] run tp @e[tag=openingOwl,limit=1] 2309.171 68.40378 -890.3749 -166.0148 0
execute as @s[scores={cutSceneTimer=552}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.7085f,0f,359.8003f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=553}] run tp @a[tag=cutsceneSlave] 2297.274 73.05693 -928.2762 328.5399 18.81087
execute as @s[scores={cutSceneTimer=553}] run tp @e[tag=openingOwl,limit=1] 2309.119 68.3939 -890.9436 -165.9745 0
execute as @s[scores={cutSceneTimer=553}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.7013f,0f,359.7990f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=554}] run tp @a[tag=cutsceneSlave] 2297.27 73.06001 -928.3479 328.4367 18.89627
execute as @s[scores={cutSceneTimer=554}] run tp @e[tag=openingOwl,limit=1] 2309.066 68.38525 -891.5159 -165.9518 0
execute as @s[scores={cutSceneTimer=554}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.6941f,0f,359.7979f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=555}] run tp @a[tag=cutsceneSlave] 2297.267 73.0633 -928.4207 328.3243 18.98455
execute as @s[scores={cutSceneTimer=555}] run tp @e[tag=openingOwl,limit=1] 2309.015 68.37784 -892.0875 -165.9475 0
execute as @s[scores={cutSceneTimer=555}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.6868f,0f,359.7970f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=556}] run tp @a[tag=cutsceneSlave] 2297.263 73.06684 -928.4948 328.2022 19.07617
execute as @s[scores={cutSceneTimer=556}] run tp @e[tag=openingOwl,limit=1] 2308.965 68.3716 -892.6619 -165.9613 0
execute as @s[scores={cutSceneTimer=556}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.6795f,0f,359.7961f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=557}] run tp @a[tag=cutsceneSlave] 2297.26 73.0706 -928.5706 328.0698 19.17162
execute as @s[scores={cutSceneTimer=557}] run tp @e[tag=openingOwl,limit=1] 2308.915 68.36646 -893.2424 -165.9921 0
execute as @s[scores={cutSceneTimer=557}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.6720f,0f,359.7954f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=558}] run tp @a[tag=cutsceneSlave] 2297.258 73.07462 -928.6478 327.9277 19.27058
execute as @s[scores={cutSceneTimer=558}] run tp @e[tag=openingOwl,limit=1] 2308.866 68.36244 -893.8265 -166.0383 0
execute as @s[scores={cutSceneTimer=558}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.6644f,0f,359.7948f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=559}] run tp @a[tag=cutsceneSlave] 2297.257 73.07879 -928.7263 327.7769 19.37242
execute as @s[scores={cutSceneTimer=559}] run tp @e[tag=openingOwl,limit=1] 2308.818 68.35952 -894.4111 -166.0981 0
execute as @s[scores={cutSceneTimer=559}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.6567f,0f,359.7943f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=560}] run tp @a[tag=cutsceneSlave] 2297.256 73.08319 -928.8069 327.614 19.47953
execute as @s[scores={cutSceneTimer=560}] run tp @e[tag=openingOwl,limit=1] 2308.77 68.35762 -895.0096 -166.1715 0
execute as @s[scores={cutSceneTimer=560}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.6489f,0f,359.7940f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=561}] run tp @a[tag=cutsceneSlave] 2297.256 73.08774 -928.8884 327.4427 19.58948
execute as @s[scores={cutSceneTimer=561}] run tp @e[tag=openingOwl,limit=1] 2308.723 68.35677 -895.6078 -166.2554 0
execute as @s[scores={cutSceneTimer=561}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.6410f,0f,359.7938f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=562}] run tp @a[tag=cutsceneSlave] 2297.258 73.09245 -928.9709 327.2635 19.70213
execute as @s[scores={cutSceneTimer=562}] run tp @e[tag=openingOwl,limit=1] 2308.678 68.35868 -896.2064 -166.3481 0
execute as @s[scores={cutSceneTimer=562}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.6330f,0f,359.7946f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=563}] run tp @a[tag=cutsceneSlave] 2297.26 73.0973 -929.0546 327.0767 19.81741
execute as @s[scores={cutSceneTimer=563}] run tp @e[tag=openingOwl,limit=1] 2308.634 68.369 -896.8044 -166.4477 0
execute as @s[scores={cutSceneTimer=563}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.6251f,0f,359.8067f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=564}] run tp @a[tag=cutsceneSlave] 2297.264 73.10226 -929.1396 326.8812 19.93607
execute as @s[scores={cutSceneTimer=564}] run tp @e[tag=openingOwl,limit=1] 2308.592 68.38751 -897.4065 -166.5534 0
execute as @s[scores={cutSceneTimer=564}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.6170f,0f,359.8303f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=565}] run tp @a[tag=cutsceneSlave] 2297.269 73.10738 -929.2263 326.6749 20.05941
execute as @s[scores={cutSceneTimer=565}] run tp @e[tag=openingOwl,limit=1] 2308.55 68.4138 -898.0193 -166.6649 0
execute as @s[scores={cutSceneTimer=565}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.6087f,0f,359.8618f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=566}] run tp @a[tag=cutsceneSlave] 2297.273 73.11086 -929.2847 326.5314 20.14429
execute as @s[scores={cutSceneTimer=566}] run tp @e[tag=openingOwl,limit=1] 2308.522 68.43539 -898.4338 -166.7416 0
execute as @s[scores={cutSceneTimer=566}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.6031f,0f,359.8854f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=567}] run tp @a[tag=cutsceneSlave] 2297.281 73.11616 -929.3737 326.3102 20.27381
execute as @s[scores={cutSceneTimer=567}] run tp @e[tag=openingOwl,limit=1] 2308.482 68.47288 -899.0557 -166.8577 0
execute as @s[scores={cutSceneTimer=567}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.5947f,0f,359.9214f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=568}] run tp @a[tag=cutsceneSlave] 2297.29 73.12154 -929.4637 326.0834 20.4053
execute as @s[scores={cutSceneTimer=568}] run tp @e[tag=openingOwl,limit=1] 2308.444 68.5155 -899.6797 -166.9729 0
execute as @s[scores={cutSceneTimer=568}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.5863f,0f,359.9543f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=569}] run tp @a[tag=cutsceneSlave] 2297.301 73.12705 -929.5559 325.8444 20.54246
execute as @s[scores={cutSceneTimer=569}] run tp @e[tag=openingOwl,limit=1] 2308.406 68.56377 -900.3369 -167.089 0
execute as @s[scores={cutSceneTimer=569}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.5777f,0f,359.9810f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=570}] run tp @a[tag=cutsceneSlave] 2297.314 73.13263 -929.6488 325.5998 20.68163
execute as @s[scores={cutSceneTimer=570}] run tp @e[tag=openingOwl,limit=1] 2308.37 68.61565 -901.0074 -167.2011 0
execute as @s[scores={cutSceneTimer=570}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.5690f,0f,-0.0030f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=571}] run tp @a[tag=cutsceneSlave] 2297.33 73.13834 -929.7446 325.3433 20.8266
execute as @s[scores={cutSceneTimer=571}] run tp @e[tag=openingOwl,limit=1] 2308.336 68.67181 -901.7067 -167.3108 0
execute as @s[scores={cutSceneTimer=571}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.5601f,0f,359.9825f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=572}] run tp @a[tag=cutsceneSlave] 2297.348 73.1441 -929.8419 325.0794 20.97479
execute as @s[scores={cutSceneTimer=572}] run tp @e[tag=openingOwl,limit=1] 2308.303 68.73056 -902.4199 -167.4143 0
execute as @s[scores={cutSceneTimer=572}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.5512f,0f,359.7970f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=573}] run tp @a[tag=cutsceneSlave] 2297.367 73.14977 -929.938 324.8132 21.12341
execute as @s[scores={cutSceneTimer=573}] run tp @e[tag=openingOwl,limit=1] 2308.272 68.78996 -903.1303 -167.5083 0
execute as @s[scores={cutSceneTimer=573}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.5423f,0f,359.4433f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=574}] run tp @a[tag=cutsceneSlave] 2297.39 73.15554 -930.0366 324.5365 21.27726
execute as @s[scores={cutSceneTimer=574}] run tp @e[tag=openingOwl,limit=1] 2308.242 68.8512 -903.8587 -167.5946 0
execute as @s[scores={cutSceneTimer=574}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.5332f,0f,358.9424f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:12}}]}
execute as @s[scores={cutSceneTimer=575}] run tp @a[tag=cutsceneSlave] 2297.415 73.16127 -930.1358 324.2538 21.43377
execute as @s[scores={cutSceneTimer=575}] run tp @e[tag=openingOwl,limit=1] 2308.215 68.91253 -904.5898 -167.67 0
execute as @s[scores={cutSceneTimer=575}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.5241f,0f,358.3315f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:12}}]}
execute as @s[scores={cutSceneTimer=576}] run tp @a[tag=cutsceneSlave] 2297.442 73.16695 -930.2352 323.9657 21.59276
execute as @s[scores={cutSceneTimer=576}] run tp @e[tag=openingOwl,limit=1] 2308.189 68.97314 -905.3205 -167.7331 0
execute as @s[scores={cutSceneTimer=576}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.5149f,0f,357.6427f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=577}] run tp @a[tag=cutsceneSlave] 2297.472 73.17267 -930.3363 323.6688 21.75615
execute as @s[scores={cutSceneTimer=577}] run tp @e[tag=openingOwl,limit=1] 2308.165 69.03307 -906.0568 -167.7832 0
execute as @s[scores={cutSceneTimer=577}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.5056f,0f,356.8975f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=578}] run tp @a[tag=cutsceneSlave] 2297.506 73.17847 -930.4406 323.3607 21.92545
execute as @s[scores={cutSceneTimer=578}] run tp @e[tag=openingOwl,limit=1] 2308.142 69.09198 -906.8019 -167.8187 0
execute as @s[scores={cutSceneTimer=578}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.4961f,0f,356.1190f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=579}] run tp @a[tag=cutsceneSlave] 2297.542 73.18411 -930.5438 323.0496 22.09608
execute as @s[scores={cutSceneTimer=579}] run tp @e[tag=openingOwl,limit=1] 2308.121 69.14758 -907.5333 -167.837 0
execute as @s[scores={cutSceneTimer=579}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.4866f,0f,355.3581f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=580}] run tp @a[tag=cutsceneSlave] 2297.583 73.18979 -930.6497 322.7283 22.27216
execute as @s[scores={cutSceneTimer=580}] run tp @e[tag=openingOwl,limit=1] 2308.102 69.20045 -908.2658 -167.8379 0
execute as @s[scores={cutSceneTimer=580}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.4769f,0f,354.6273f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:9}}]}
execute as @s[scores={cutSceneTimer=581}] run tp @a[tag=cutsceneSlave] 2297.626 73.1954 -930.7561 322.4009 22.45146
execute as @s[scores={cutSceneTimer=581}] run tp @e[tag=openingOwl,limit=1] 2308.085 69.24911 -908.987 -167.8246 0
execute as @s[scores={cutSceneTimer=581}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.4671f,0f,353.9672f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:8}}]}
execute as @s[scores={cutSceneTimer=582}] run tp @a[tag=cutsceneSlave] 2297.672 73.20081 -930.8615 322.0707 22.63227
execute as @s[scores={cutSceneTimer=582}] run tp @e[tag=openingOwl,limit=1] 2308.071 69.29247 -909.6878 -167.7975 0
execute as @s[scores={cutSceneTimer=582}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.4573f,0f,353.4126f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=583}] run tp @a[tag=cutsceneSlave] 2297.723 73.20622 -930.9691 321.7309 22.81844
execute as @s[scores={cutSceneTimer=583}] run tp @e[tag=openingOwl,limit=1] 2308.058 69.33069 -910.3802 -167.7552 0
execute as @s[scores={cutSceneTimer=583}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.4473f,0f,352.9793f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=584}] run tp @a[tag=cutsceneSlave] 2297.776 73.21149 -931.0768 321.3859 23.00752
execute as @s[scores={cutSceneTimer=584}] run tp @e[tag=openingOwl,limit=1] 2308.048 69.36249 -911.0526 -167.6972 0
execute as @s[scores={cutSceneTimer=584}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.4373f,0f,352.6023f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=585}] run tp @a[tag=cutsceneSlave] 2297.834 73.21661 -931.1844 321.036 23.19961
execute as @s[scores={cutSceneTimer=585}] run tp @e[tag=openingOwl,limit=1] 2308.04 69.38718 -911.7014 -167.623 0
execute as @s[scores={cutSceneTimer=585}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.4272f,0f,352.2389f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=586}] run tp @a[tag=cutsceneSlave] 2297.895 73.2216 -931.2924 320.6806 23.395
execute as @s[scores={cutSceneTimer=586}] run tp @e[tag=openingOwl,limit=1] 2308.034 69.40415 -912.3246 -167.5316 0
execute as @s[scores={cutSceneTimer=586}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.4170f,0f,351.8893f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=587}] run tp @a[tag=cutsceneSlave] 2297.96 73.22646 -931.4012 320.3185 23.59439
execute as @s[scores={cutSceneTimer=587}] run tp @e[tag=openingOwl,limit=1] 2308.03 69.41269 -912.9269 -167.422 0
execute as @s[scores={cutSceneTimer=587}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.4067f,0f,351.5534f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=588}] run tp @a[tag=cutsceneSlave] 2298.03 73.23122 -931.5117 319.9465 23.79969
execute as @s[scores={cutSceneTimer=588}] run tp @e[tag=openingOwl,limit=1] 2308.029 69.41357 -913.5167 -167.2918 0
execute as @s[scores={cutSceneTimer=588}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.3961f,0f,351.2297f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=589}] run tp @a[tag=cutsceneSlave] 2298.104 73.23576 -931.6216 319.571 24.00744
execute as @s[scores={cutSceneTimer=589}] run tp @e[tag=openingOwl,limit=1] 2308.031 69.41357 -914.0874 -167.1424 0
execute as @s[scores={cutSceneTimer=589}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.3856f,0f,350.9247f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=590}] run tp @a[tag=cutsceneSlave] 2298.181 73.2401 -931.7307 319.1928 24.21725
execute as @s[scores={cutSceneTimer=590}] run tp @e[tag=openingOwl,limit=1] 2308.038 69.41357 -914.6418 -166.9734 0
execute as @s[scores={cutSceneTimer=590}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.3750f,0f,350.6399f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:12}}]}
execute as @s[scores={cutSceneTimer=591}] run tp @a[tag=cutsceneSlave] 2298.263 73.24423 -931.84 318.8093 24.43072
execute as @s[scores={cutSceneTimer=591}] run tp @e[tag=openingOwl,limit=1] 2308.051 69.41357 -915.1879 -166.7831 0
execute as @s[scores={cutSceneTimer=591}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.3642f,0f,350.3739f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:11}}]}
execute as @s[scores={cutSceneTimer=592}] run tp @a[tag=cutsceneSlave] 2298.35 73.24816 -931.9493 318.4206 24.64769
execute as @s[scores={cutSceneTimer=592}] run tp @e[tag=openingOwl,limit=1] 2308.069 69.41251 -915.7285 -166.5707 0
execute as @s[scores={cutSceneTimer=592}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.3534f,0f,350.1278f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=593}] run tp @a[tag=cutsceneSlave] 2298.442 73.25191 -932.0594 318.0214 24.87142
execute as @s[scores={cutSceneTimer=593}] run tp @e[tag=openingOwl,limit=1] 2308.092 69.39174 -916.2747 -166.3319 0
execute as @s[scores={cutSceneTimer=593}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.3424f,0f,349.8998f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=594}] run tp @a[tag=cutsceneSlave] 2298.537 73.25538 -932.1682 317.6253 25.09428
execute as @s[scores={cutSceneTimer=594}] run tp @e[tag=openingOwl,limit=1] 2308.119 69.34715 -916.8116 -166.0742 0
execute as @s[scores={cutSceneTimer=594}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.3314f,0f,349.6984f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=595}] run tp @a[tag=cutsceneSlave] 2298.638 73.25862 -932.2769 317.2224 25.32182
execute as @s[scores={cutSceneTimer=595}] run tp @e[tag=openingOwl,limit=1] 2308.152 69.28023 -917.3561 -165.7907 0
execute as @s[scores={cutSceneTimer=595}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.3203f,0f,349.5191f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=596}] run tp @a[tag=cutsceneSlave] 2298.743 73.26161 -932.3858 316.8098 25.55587
execute as @s[scores={cutSceneTimer=596}] run tp @e[tag=openingOwl,limit=1] 2308.189 69.19198 -917.9163 -165.4778 0
execute as @s[scores={cutSceneTimer=596}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.3089f,0f,349.3622f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:8}}]}
execute as @s[scores={cutSceneTimer=597}] run tp @a[tag=cutsceneSlave] 2298.816 73.26345 -932.458 316.5329 25.71354
execute as @s[scores={cutSceneTimer=597}] run tp @e[tag=openingOwl,limit=1] 2308.216 69.12292 -918.2953 -165.2549 0
execute as @s[scores={cutSceneTimer=597}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.3013f,0f,349.2722f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=598}] run tp @a[tag=cutsceneSlave] 2298.931 73.26601 -932.5668 316.1064 25.95731
execute as @s[scores={cutSceneTimer=598}] run tp @e[tag=openingOwl,limit=1] 2308.261 69.00321 -918.8823 -164.8915 0
execute as @s[scores={cutSceneTimer=598}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.2896f,0f,349.1576f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=599}] run tp @a[tag=cutsceneSlave] 2299.051 73.26826 -932.6744 315.6875 26.19802
execute as @s[scores={cutSceneTimer=599}] run tp @e[tag=openingOwl,limit=1] 2308.31 68.87203 -919.4617 -164.5102 0
execute as @s[scores={cutSceneTimer=599}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.2775f,0f,349.0737f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=600}] run tp @a[tag=cutsceneSlave] 2299.176 73.27022 -932.7816 315.2635 26.44285
execute as @s[scores={cutSceneTimer=600}] run tp @e[tag=openingOwl,limit=1] 2308.362 68.72809 -920.0487 -164.0998 0
execute as @s[scores={cutSceneTimer=600}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[359.8194f,0f,349.0179f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=601}] run tp @a[tag=cutsceneSlave] 2299.305 73.27188 -932.888 314.8379 26.68995
execute as @s[scores={cutSceneTimer=601}] run tp @e[tag=openingOwl,limit=1] 2308.418 68.57452 -920.6372 -163.6626 0
execute as @s[scores={cutSceneTimer=601}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[358.6387f,0f,348.9915f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=602}] run tp @a[tag=cutsceneSlave] 2299.439 73.27321 -932.9954 314.4004 26.94534
execute as @s[scores={cutSceneTimer=602}] run tp @e[tag=openingOwl,limit=1] 2308.479 68.40955 -921.2395 -163.1869 0
execute as @s[scores={cutSceneTimer=602}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[356.8443f,0f,348.9956f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=603}] run tp @a[tag=cutsceneSlave] 2299.575 73.27422 -933.1017 313.9614 27.20309
execute as @s[scores={cutSceneTimer=603}] run tp @e[tag=openingOwl,limit=1] 2308.544 68.23894 -921.8397 -162.6823 0
execute as @s[scores={cutSceneTimer=603}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[354.6181f,0f,349.0318f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=604}] run tp @a[tag=cutsceneSlave] 2299.713 73.27486 -933.2075 313.5187 27.46453
execute as @s[scores={cutSceneTimer=604}] run tp @e[tag=openingOwl,limit=1] 2308.612 68.06398 -922.439 -162.1455 0
execute as @s[scores={cutSceneTimer=604}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[352.1046f,0f,349.1461f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=605}] run tp @a[tag=cutsceneSlave] 2299.853 73.27515 -933.3119 313.075 27.72816
execute as @s[scores={cutSceneTimer=605}] run tp @e[tag=openingOwl,limit=1] 2308.683 67.88779 -923.032 -161.5791 0
execute as @s[scores={cutSceneTimer=605}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[349.4707f,0f,349.6903f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=606}] run tp @a[tag=cutsceneSlave] 2299.997 73.27451 -933.4171 312.6225 27.99879
execute as @s[scores={cutSceneTimer=606}] run tp @e[tag=openingOwl,limit=1] 2308.758 67.70927 -923.6277 -160.9718 0
execute as @s[scores={cutSceneTimer=606}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[346.8203f,0f,350.6742f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=607}] run tp @a[tag=cutsceneSlave] 2300.141 73.27171 -933.5188 312.1754 28.26782
execute as @s[scores={cutSceneTimer=607}] run tp @e[tag=openingOwl,limit=1] 2308.835 67.53609 -924.2056 -160.3421 0
execute as @s[scores={cutSceneTimer=607}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[344.3848f,0f,351.9639f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=608}] run tp @a[tag=cutsceneSlave] 2300.287 73.26656 -933.6203 311.7224 28.54231
execute as @s[scores={cutSceneTimer=608}] run tp @e[tag=openingOwl,limit=1] 2308.916 67.36575 -924.7788 -159.6736 0
execute as @s[scores={cutSceneTimer=608}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[342.2466f,0f,353.4880f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=609}] run tp @a[tag=cutsceneSlave] 2300.436 73.25902 -933.7209 311.2664 28.82036
execute as @s[scores={cutSceneTimer=609}] run tp @e[tag=openingOwl,limit=1] 2308.999 67.20146 -925.3419 -158.9694 0
execute as @s[scores={cutSceneTimer=609}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[340.5704f,0f,355.1405f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=610}] run tp @a[tag=cutsceneSlave] 2300.587 73.24893 -933.8213 310.8046 29.10406
execute as @s[scores={cutSceneTimer=610}] run tp @e[tag=openingOwl,limit=1] 2309.086 67.04421 -925.8965 -158.2236 0
execute as @s[scores={cutSceneTimer=610}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.4995f,0f,356.8347f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=611}] run tp @a[tag=cutsceneSlave] 2300.741 73.23627 -933.9208 310.3395 29.39177
execute as @s[scores={cutSceneTimer=611}] run tp @e[tag=openingOwl,limit=1] 2309.175 66.89708 -926.4379 -157.439 0
execute as @s[scores={cutSceneTimer=611}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,358.4612f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=612}] run tp @a[tag=cutsceneSlave] 2300.895 73.22114 -934.0181 309.8745 29.68163
execute as @s[scores={cutSceneTimer=612}] run tp @e[tag=openingOwl,limit=1] 2309.267 66.76305 -926.9603 -156.6203 0
execute as @s[scores={cutSceneTimer=612}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,359.9100f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=613}] run tp @a[tag=cutsceneSlave] 2301.049 73.20361 -934.1132 309.4105 29.97294
execute as @s[scores={cutSceneTimer=613}] run tp @e[tag=openingOwl,limit=1] 2309.36 66.6442 -927.4614 -155.7692 0
execute as @s[scores={cutSceneTimer=613}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,1.0841f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=614}] run tp @a[tag=cutsceneSlave] 2301.207 73.18324 -934.2079 308.9413 30.26973
execute as @s[scores={cutSceneTimer=614}] run tp @e[tag=openingOwl,limit=1] 2309.456 66.54087 -927.9464 -154.873 0
execute as @s[scores={cutSceneTimer=614}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,1.9024f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=615}] run tp @a[tag=cutsceneSlave] 2301.369 73.15974 -934.3029 308.4646 30.57362
execute as @s[scores={cutSceneTimer=615}] run tp @e[tag=openingOwl,limit=1] 2309.556 66.45507 -928.415 -153.9257 0
execute as @s[scores={cutSceneTimer=615}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,2.2593f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=616}] run tp @a[tag=cutsceneSlave] 2301.529 73.13387 -934.3949 307.9916 30.87767
execute as @s[scores={cutSceneTimer=616}] run tp @e[tag=openingOwl,limit=1] 2309.656 66.38937 -928.855 -152.9402 0
execute as @s[scores={cutSceneTimer=616}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,2.2499f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=617}] run tp @a[tag=cutsceneSlave] 2301.69 73.10541 -934.4847 307.519 31.18393
execute as @s[scores={cutSceneTimer=617}] run tp @e[tag=openingOwl,limit=1] 2309.758 66.34199 -929.2681 -151.6354 0
execute as @s[scores={cutSceneTimer=617}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,2.1936f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=618}] run tp @a[tag=cutsceneSlave] 2301.858 73.07294 -934.5765 307.0327 31.50158
execute as @s[scores={cutSceneTimer=618}] run tp @e[tag=openingOwl,limit=1] 2309.864 66.31126 -929.6659 -149.8535 0
execute as @s[scores={cutSceneTimer=618}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,2.0991f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=619}] run tp @a[tag=cutsceneSlave] 2302.024 73.03806 -934.665 306.5507 31.81923
execute as @s[scores={cutSceneTimer=619}] run tp @e[tag=openingOwl,limit=1] 2309.97 66.29784 -930.0419 -147.6978 0
execute as @s[scores={cutSceneTimer=619}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,1.9745f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=620}] run tp @a[tag=cutsceneSlave] 2302.192 73.00005 -934.7524 306.0656 32.1417
execute as @s[scores={cutSceneTimer=620}] run tp @e[tag=openingOwl,limit=1] 2310.078 66.30052 -930.4026 -145.1885 0
execute as @s[scores={cutSceneTimer=620}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,1.8239f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=621}] run tp @a[tag=cutsceneSlave] 2302.36 72.95932 -934.8376 305.5821 32.46593
execute as @s[scores={cutSceneTimer=621}] run tp @e[tag=openingOwl,limit=1] 2310.187 66.31841 -930.7442 -142.3971 0
execute as @s[scores={cutSceneTimer=621}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,1.6542f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:12}}]}
execute as @s[scores={cutSceneTimer=622}] run tp @a[tag=cutsceneSlave] 2302.527 72.91601 -934.9203 305.1016 32.79093
execute as @s[scores={cutSceneTimer=622}] run tp @e[tag=openingOwl,limit=1] 2310.296 66.35036 -931.0653 -139.3834 0
execute as @s[scores={cutSceneTimer=622}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,1.4716f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:11}}]}
execute as @s[scores={cutSceneTimer=623}] run tp @a[tag=cutsceneSlave] 2302.696 72.86934 -935.0022 304.6173 33.12164
execute as @s[scores={cutSceneTimer=623}] run tp @e[tag=openingOwl,limit=1] 2310.407 66.396 -931.3702 -136.1495 0
execute as @s[scores={cutSceneTimer=623}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,1.2788f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=..623}] run kill @e[tag=hogwartsLetter]
execute as @s[scores={cutSceneTimer=623}] run summon minecraft:armor_stand 2310.674 67.74772 -931.1155 {Team: NPC, Marker: 1b, NoGravity: 1b, HurtByTimestamp: 0, Attributes: [{Base: 20.0d, Name: "generic.maxHealth"}, {Base: 0.0d, Name: "generic.knockbackResistance"}, {Base: 0.699999988079071d, Name: "generic.movementSpeed"}, {Base: 0.0d, Name: "generic.armor"}, {Base: 0.0d, Name: "generic.armorToughness"}], Invulnerable: 1b, FallFlying: 0b, ShowArms: 0b, PortalCooldown: 0, AbsorptionAmount: 0.0f, FallDistance: 0.0f, DisabledSlots: 4144959, DeathTime: 0s, Pose: {Head:[333.4708f,0.0043f]}, Invisible: 1b, Tags: ["hogwartsLetter","glowable", "questInteractable"], Motion: [0.0d, 0.0d, 0.0d], Small: 0b, Health: 20.0f, Air: 300s, OnGround: 1b, Rotation: [24.42244f, 0.0f], HandItems: [{}, {}], Fire: 0s, ArmorItems: [{}, {}, {}, {id: "minecraft:wooden_sword", Count: 1b, tag: {Unbreakable: 1b, Damage: 32}}], NoBasePlate: 0b, HurtTime: 0s}
execute as @s[scores={cutSceneTimer=623}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[333.4708f,0.0043f]}}
execute as @s[scores={cutSceneTimer=624}] run tp @a[tag=cutsceneSlave] 2302.865 72.81984 -935.0822 304.1343 33.4544
execute as @s[scores={cutSceneTimer=624}] run tp @e[tag=openingOwl,limit=1] 2310.518 66.4541 -931.6547 -132.7751 0
execute as @s[scores={cutSceneTimer=624}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,1.0829f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=624}] run tp @e[tag=hogwartsLetter,limit=1] 2310.718 67.72729 -931.214 23.99163 0
execute as @s[scores={cutSceneTimer=624}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[334.3279f,0359.9819f]}}
execute as @s[scores={cutSceneTimer=625}] run tp @a[tag=cutsceneSlave] 2303.038 72.76655 -935.1616 303.6443 33.79514
execute as @s[scores={cutSceneTimer=625}] run tp @e[tag=openingOwl,limit=1] 2310.632 66.52507 -931.9232 -129.245 0
execute as @s[scores={cutSceneTimer=625}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.8861f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=625}] run tp @e[tag=hogwartsLetter,limit=1] 2310.791 67.69319 -931.3766 23.2799 0
execute as @s[scores={cutSceneTimer=625}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[335.7441f,0359.9591f]}}
execute as @s[scores={cutSceneTimer=626}] run tp @a[tag=cutsceneSlave] 2303.208 72.71081 -935.2385 303.1599 34.13534
execute as @s[scores={cutSceneTimer=626}] run tp @e[tag=openingOwl,limit=1] 2310.744 66.60635 -932.168 -125.6944 0
execute as @s[scores={cutSceneTimer=626}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.6983f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=626}] run tp @e[tag=hogwartsLetter,limit=1] 2310.889 67.64733 -931.593 22.33355 0
execute as @s[scores={cutSceneTimer=626}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[337.6270f,0359.9288f]}}
execute as @s[scores={cutSceneTimer=627}] run tp @a[tag=cutsceneSlave] 2303.382 72.65127 -935.3147 302.6688 34.48355
execute as @s[scores={cutSceneTimer=627}] run tp @e[tag=openingOwl,limit=1] 2310.859 66.69921 -932.3947 -122.079 0
execute as @s[scores={cutSceneTimer=627}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.5204f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:9}}]}
execute as @s[scores={cutSceneTimer=627}] run tp @e[tag=hogwartsLetter,limit=1] 2311.012 67.5896 -931.8618 21.15722 0
execute as @s[scores={cutSceneTimer=627}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[339.9676f,0359.8911f]}}
execute as @s[scores={cutSceneTimer=628}] run tp @a[tag=cutsceneSlave] 2303.556 72.58889 -935.389 302.1801 34.83357
execute as @s[scores={cutSceneTimer=628}] run tp @e[tag=openingOwl,limit=1] 2310.974 66.80132 -932.5983 -118.51 0
execute as @s[scores={cutSceneTimer=628}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.3609f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=628}] run tp @e[tag=hogwartsLetter,limit=1] 2311.155 67.52199 -932.1724 19.79844 0
execute as @s[scores={cutSceneTimer=628}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[342.6712f,0359.8475f]}}
execute as @s[scores={cutSceneTimer=629}] run tp @a[tag=cutsceneSlave] 2303.729 72.5236 -935.4614 301.6935 35.18548
execute as @s[scores={cutSceneTimer=629}] run tp @e[tag=openingOwl,limit=1] 2311.098 66.91183 -932.7786 -115.0302 0
execute as @s[scores={cutSceneTimer=629}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.2247f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=629}] run tp @e[tag=hogwartsLetter,limit=1] 2311.315 67.44566 -932.5178 18.28758 0
execute as @s[scores={cutSceneTimer=629}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[345.6773f,0359.7990f]}}
execute as @s[scores={cutSceneTimer=630}] run tp @a[tag=cutsceneSlave] 2303.903 72.45522 -935.5325 301.2072 35.54081
execute as @s[scores={cutSceneTimer=630}] run tp @e[tag=openingOwl,limit=1] 2311.234 67.03033 -932.9357 -111.6699 0
execute as @s[scores={cutSceneTimer=630}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.1163f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=630}] run tp @e[tag=hogwartsLetter,limit=1] 2311.489 67.3614 -932.8925 16.64785 0
execute as @s[scores={cutSceneTimer=630}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[348.9399f,0359.7465f]}}
execute as @s[scores={cutSceneTimer=631}] run tp @a[tag=cutsceneSlave] 2304.078 72.38371 -935.6019 300.7207 35.89993
execute as @s[scores={cutSceneTimer=631}] run tp @e[tag=openingOwl,limit=1] 2311.38 67.15623 -933.0695 -108.4694 0
execute as @s[scores={cutSceneTimer=631}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0407f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=631}] run tp @e[tag=hogwartsLetter,limit=1] 2311.677 67.27016 -933.2909 14.90508 0
execute as @s[scores={cutSceneTimer=631}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[352.4075f,0359.6906f]}}
execute as @s[scores={cutSceneTimer=632}] run tp @a[tag=cutsceneSlave] 2304.254 72.30851 -935.6704 300.2281 36.2675
execute as @s[scores={cutSceneTimer=632}] run tp @e[tag=openingOwl,limit=1] 2311.538 67.29047 -933.1802 -105.438 0
execute as @s[scores={cutSceneTimer=632}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0030f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=632}] run tp @e[tag=hogwartsLetter,limit=1] 2311.876 67.17171 -933.7117 13.06393 0
execute as @s[scores={cutSceneTimer=632}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[356.0709f,0359.6316f]}}
execute as @s[scores={cutSceneTimer=633}] run tp @a[tag=cutsceneSlave] 2304.431 72.23022 -935.7374 299.7319 36.64168
execute as @s[scores={cutSceneTimer=633}] run tp @e[tag=openingOwl,limit=1] 2311.707 67.4318 -933.2659 -102.6438 0
execute as @s[scores={cutSceneTimer=633}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=633}] run tp @e[tag=hogwartsLetter,limit=1] 2312.085 67.06742 -934.1469 11.16018 0
execute as @s[scores={cutSceneTimer=633}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[359.8588f,0359.5706f]}}
execute as @s[scores={cutSceneTimer=634}] run tp @a[tag=cutsceneSlave] 2304.549 72.17661 -935.781 299.4012 36.89347
execute as @s[scores={cutSceneTimer=634}] run tp @e[tag=openingOwl,limit=1] 2311.823 67.52906 -933.3083 -100.9491 0
execute as @s[scores={cutSceneTimer=634}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=634}] run tp @e[tag=hogwartsLetter,limit=1] 2312.228 66.99557 -934.4399 9.878029 0
execute as @s[scores={cutSceneTimer=634}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[2.4099f,0359.5294f]}}
execute as @s[scores={cutSceneTimer=635}] run tp @a[tag=cutsceneSlave] 2304.725 72.09383 -935.845 298.9124 37.26893
execute as @s[scores={cutSceneTimer=635}] run tp @e[tag=openingOwl,limit=1] 2312.002 67.6767 -933.3489 -98.72473 0
execute as @s[scores={cutSceneTimer=635}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=635}] run tp @e[tag=hogwartsLetter,limit=1] 2312.44 66.88671 -934.8727 7.984711 0
execute as @s[scores={cutSceneTimer=635}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[6.1771f,0359.4687f]}}
execute as @s[scores={cutSceneTimer=636}] run tp @a[tag=cutsceneSlave] 2304.902 72.00754 -935.908 298.4155 37.655
execute as @s[scores={cutSceneTimer=636}] run tp @e[tag=openingOwl,limit=1] 2312.191 67.83261 -933.3623 -96.84822 0
execute as @s[scores={cutSceneTimer=636}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=636}] run tp @e[tag=hogwartsLetter,limit=1] 2312.657 66.77371 -935.3064 6.087227 0
execute as @s[scores={cutSceneTimer=636}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[9.9525f,0359.4079f]}}
execute as @s[scores={cutSceneTimer=637}] run tp @a[tag=cutsceneSlave] 2305.079 71.91903 -935.9692 297.9307 38.03605
execute as @s[scores={cutSceneTimer=637}] run tp @e[tag=openingOwl,limit=1] 2312.38 68.00768 -933.3519 -95.43797 0
execute as @s[scores={cutSceneTimer=637}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:12}}]}
execute as @s[scores={cutSceneTimer=637}] run tp @e[tag=hogwartsLetter,limit=1] 2312.867 66.66219 -935.7171 4.290344 0
execute as @s[scores={cutSceneTimer=637}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[13.5278f,0359.3503f]}}
execute as @s[scores={cutSceneTimer=638}] run tp @a[tag=cutsceneSlave] 2305.262 71.82446 -936.0309 297.425 38.43815
execute as @s[scores={cutSceneTimer=638}] run tp @e[tag=openingOwl,limit=1] 2312.583 68.21769 -933.3212 -94.46022 0
execute as @s[scores={cutSceneTimer=638}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:12}}]}
execute as @s[scores={cutSceneTimer=638}] run tp @e[tag=hogwartsLetter,limit=1] 2313.081 66.54562 -936.1255 2.503342 0
execute as @s[scores={cutSceneTimer=638}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[17.0834f,0359.2930f]}}
execute as @s[scores={cutSceneTimer=639}] run tp @a[tag=cutsceneSlave] 2305.44 71.72999 -936.0894 296.9396 38.82878
execute as @s[scores={cutSceneTimer=639}] run tp @e[tag=openingOwl,limit=1] 2312.781 68.44312 -933.2742 -94.0446 0
execute as @s[scores={cutSceneTimer=639}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:11}}]}
execute as @s[scores={cutSceneTimer=639}] run tp @e[tag=hogwartsLetter,limit=1] 2313.279 66.43454 -936.4918 0.9010162 0
execute as @s[scores={cutSceneTimer=639}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[20.2716f,0359.2416f]}}
execute as @s[scores={cutSceneTimer=640}] run tp @a[tag=cutsceneSlave] 2305.618 71.63253 -936.1466 296.4535 39.22458
execute as @s[scores={cutSceneTimer=640}] run tp @e[tag=openingOwl,limit=1] 2312.983 68.68988 -933.2113 -94.02647 0
execute as @s[scores={cutSceneTimer=640}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=640}] run tp @e[tag=hogwartsLetter,limit=1] 2313.468 66.32513 -936.8266 -0.5638504 0
execute as @s[scores={cutSceneTimer=640}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[23.1862f,0359.1947f]}}
execute as @s[scores={cutSceneTimer=641}] run tp @a[tag=cutsceneSlave] 2305.795 71.53349 -936.2019 295.9723 39.62125
execute as @s[scores={cutSceneTimer=641}] run tp @e[tag=openingOwl,limit=1] 2313.185 68.95262 -933.1348 -94.02647 0
execute as @s[scores={cutSceneTimer=641}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=641}] run tp @e[tag=hogwartsLetter,limit=1] 2313.643 66.21961 -937.1201 -1.848083 0
execute as @s[scores={cutSceneTimer=641}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[25.7415f,0359.1535f]}}
execute as @s[scores={cutSceneTimer=642}] run tp @a[tag=cutsceneSlave] 2305.979 71.42796 -936.258 295.477 40.03457
execute as @s[scores={cutSceneTimer=642}] run tp @e[tag=openingOwl,limit=1] 2313.394 69.23975 -933.0427 -94.02647 0
execute as @s[scores={cutSceneTimer=642}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=642}] run tp @e[tag=hogwartsLetter,limit=1] 2313.807 66.11501 -937.3759 -2.966965 0
execute as @s[scores={cutSceneTimer=642}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[27.9677f,0359.1176f]}}
execute as @s[scores={cutSceneTimer=643}] run tp @a[tag=cutsceneSlave] 2306.157 71.32359 -936.3109 294.9958 40.44123
execute as @s[scores={cutSceneTimer=643}] run tp @e[tag=openingOwl,limit=1] 2313.597 69.53253 -932.9418 -94.02647 0
execute as @s[scores={cutSceneTimer=643}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:9}}]}
execute as @s[scores={cutSceneTimer=643}] run tp @e[tag=hogwartsLetter,limit=1] 2313.948 66.01834 -937.5724 -3.826714 0
execute as @s[scores={cutSceneTimer=643}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[29.6784f,0359.0901f]}}
execute as @s[scores={cutSceneTimer=644}] run tp @a[tag=cutsceneSlave] 2306.336 71.21668 -936.3625 294.5147 40.85314
execute as @s[scores={cutSceneTimer=644}] run tp @e[tag=openingOwl,limit=1] 2313.799 69.83663 -932.8309 -94.02647 0
execute as @s[scores={cutSceneTimer=644}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:8}}]}
execute as @s[scores={cutSceneTimer=644}] run tp @e[tag=hogwartsLetter,limit=1] 2314.07 65.9276 -937.7108 -4.432297 0
execute as @s[scores={cutSceneTimer=644}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[30.8833f,0359.0707f]}}
execute as @s[scores={cutSceneTimer=645}] run tp @a[tag=cutsceneSlave] 2306.513 71.10821 -936.4127 294.0362 41.26804
execute as @s[scores={cutSceneTimer=645}] run tp @e[tag=openingOwl,limit=1] 2313.999 70.14786 -932.7121 -94.02647 0
execute as @s[scores={cutSceneTimer=645}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=645}] run tp @e[tag=hogwartsLetter,limit=1] 2314.168 65.84436 -937.7838 -4.751724 0
execute as @s[scores={cutSceneTimer=645}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[31.5189f,0359.0604f]}}
execute as @s[scores={cutSceneTimer=646}] run tp @a[tag=cutsceneSlave] 2306.689 70.99901 -936.4611 293.5624 41.68428
execute as @s[scores={cutSceneTimer=646}] run tp @e[tag=openingOwl,limit=1] 2314.194 70.46236 -932.5876 -94.02647 0
execute as @s[scores={cutSceneTimer=646}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=646}] run tp @e[tag=hogwartsLetter,limit=1] 2314.242 65.76927 -937.7902 -4.775429 0
execute as @s[scores={cutSceneTimer=646}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[31.4240f,0359.0602f]}}
execute as @s[scores={cutSceneTimer=647}] run tp @a[tag=cutsceneSlave] 2306.869 70.88577 -936.5092 293.0833 42.11086
execute as @s[scores={cutSceneTimer=647}] run tp @e[tag=openingOwl,limit=1] 2314.387 70.78446 -932.4561 -94.02647 0
execute as @s[scores={cutSceneTimer=647}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=647}] run tp @e[tag=hogwartsLetter,limit=1] 2314.309 65.69723 -937.7583 -4.601555 0
execute as @s[scores={cutSceneTimer=647}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[29.8778f,0359.0713f]}}
execute as @s[scores={cutSceneTimer=648}] run tp @a[tag=cutsceneSlave] 2307.045 70.77258 -936.5552 292.6104 42.53777
execute as @s[scores={cutSceneTimer=648}] run tp @e[tag=openingOwl,limit=1] 2314.574 71.10391 -932.3221 -94.02647 0
execute as @s[scores={cutSceneTimer=648}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=648}] run tp @e[tag=hogwartsLetter,limit=1] 2314.37 65.62898 -937.6987 -4.275772 0
execute as @s[scores={cutSceneTimer=648}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[26.9807f,0359.0932f]}}
execute as @s[scores={cutSceneTimer=649}] run tp @a[tag=cutsceneSlave] 2307.222 70.65771 -936.6002 292.1382 42.96981
execute as @s[scores={cutSceneTimer=649}] run tp @e[tag=openingOwl,limit=1] 2314.756 71.42188 -932.1858 -94.02647 0
execute as @s[scores={cutSceneTimer=649}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=649}] run tp @e[tag=hogwartsLetter,limit=1] 2314.426 65.56337 -937.6157 -3.821411 0
execute as @s[scores={cutSceneTimer=649}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[22.9401f,0359.1260f]}}
execute as @s[scores={cutSceneTimer=650}] run tp @a[tag=cutsceneSlave] 2307.4 70.54059 -936.6443 291.665 43.40905
execute as @s[scores={cutSceneTimer=650}] run tp @e[tag=openingOwl,limit=1] 2314.932 71.73714 -932.048 -94.02647 0
execute as @s[scores={cutSceneTimer=650}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=650}] run tp @e[tag=hogwartsLetter,limit=1] 2314.479 65.49982 -937.5135 -3.260643 0
execute as @s[scores={cutSceneTimer=650}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[17.9532f,0359.1696f]}}
execute as @s[scores={cutSceneTimer=651}] run tp @a[tag=cutsceneSlave] 2307.575 70.42437 -936.6865 291.1989 43.84794
execute as @s[scores={cutSceneTimer=651}] run tp @e[tag=openingOwl,limit=1] 2315.097 72.04174 -931.9127 -94.02647 0
execute as @s[scores={cutSceneTimer=651}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=651}] run tp @e[tag=hogwartsLetter,limit=1] 2314.528 65.43906 -937.3989 -2.629265 0
execute as @s[scores={cutSceneTimer=651}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[12.3385f,0359.2231f]}}
execute as @s[scores={cutSceneTimer=652}] run tp @a[tag=cutsceneSlave] 2307.749 70.30765 -936.7274 290.7355 44.29044
execute as @s[scores={cutSceneTimer=652}] run tp @e[tag=openingOwl,limit=1] 2315.254 72.33611 -931.78 -94.02647 0
execute as @s[scores={cutSceneTimer=652}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute as @s[scores={cutSceneTimer=652}] run tp @e[tag=hogwartsLetter,limit=1] 2314.573 65.38018 -937.2758 -1.948273 0
execute as @s[scores={cutSceneTimer=652}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[6.2823f,0359.2865f]}}
execute as @s[scores={cutSceneTimer=653}] run tp @a[tag=cutsceneSlave] 2307.922 70.19044 -936.767 290.2748 44.73715
execute as @s[scores={cutSceneTimer=653}] run tp @e[tag=openingOwl,limit=1] 2315.401 72.61797 -931.6514 -94.02647 0
execute as @s[scores={cutSceneTimer=653}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:12}}]}
execute as @s[scores={cutSceneTimer=653}] run tp @e[tag=hogwartsLetter,limit=1] 2314.616 65.32278 -937.1487 -1.242523 0
execute as @s[scores={cutSceneTimer=653}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[0.0062f,0359.3596f]}}
execute as @s[scores={cutSceneTimer=654}] run tp @a[tag=cutsceneSlave] 2308.096 70.07196 -936.8056 289.814 45.19059
execute as @s[scores={cutSceneTimer=654}] run tp @e[tag=openingOwl,limit=1] 2315.538 72.88633 -931.5276 -94.02647 0
execute as @s[scores={cutSceneTimer=654}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:11}}]}
execute as @s[scores={cutSceneTimer=654}] run tp @e[tag=hogwartsLetter,limit=1] 2314.657 65.26621 -937.022 -0.5334625 0
execute as @s[scores={cutSceneTimer=654}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[353.7006f,0359.4427f]}}
execute as @s[scores={cutSceneTimer=655}] run tp @a[tag=cutsceneSlave] 2308.267 69.95432 -936.8427 289.3586 45.64563
execute as @s[scores={cutSceneTimer=655}] run tp @e[tag=openingOwl,limit=1] 2315.666 73.13545 -931.4118 -94.02647 0
execute as @s[scores={cutSceneTimer=655}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=655}] run tp @e[tag=hogwartsLetter,limit=1] 2314.696 65.21081 -936.9017 0.1449051 0
execute as @s[scores={cutSceneTimer=655}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[347.6679f,0359.5346f]}}
execute as @s[scores={cutSceneTimer=656}] run tp @a[tag=cutsceneSlave] 2308.436 69.83783 -936.8783 288.9095 46.10134
execute as @s[scores={cutSceneTimer=656}] run tp @e[tag=openingOwl,limit=1] 2315.793 73.36782 -931.2985 -94.02647 0
execute as @s[scores={cutSceneTimer=656}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:0}}]}
execute as @s[scores={cutSceneTimer=656}] run tp @e[tag=hogwartsLetter,limit=1] 2314.733 65.1563 -936.7928 0.7667084 0
execute as @s[scores={cutSceneTimer=656}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[342.1384f,0359.6346f]}}
execute as @s[scores={cutSceneTimer=657}] run tp @a[tag=cutsceneSlave] 2308.605 69.72061 -936.9129 288.4608 46.56392
execute as @s[scores={cutSceneTimer=657}] run tp @e[tag=openingOwl,limit=1] 2315.92 73.59308 -931.1769 -94.02647 0
execute as @s[scores={cutSceneTimer=657}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=657}] run tp @e[tag=hogwartsLetter,limit=1] 2314.77 65.10165 -936.6985 1.314949 0
execute as @s[scores={cutSceneTimer=657}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[337.2629f,0359.7440f]}}
execute as @s[scores={cutSceneTimer=658}] run tp @a[tag=cutsceneSlave] 2308.772 69.60464 -936.9462 288.0179 47.02783
execute as @s[scores={cutSceneTimer=658}] run tp @e[tag=openingOwl,limit=1] 2316.045 73.80833 -931.0493 -94.02647 0
execute as @s[scores={cutSceneTimer=658}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[scores={cutSceneTimer=658}] run tp @e[tag=hogwartsLetter,limit=1] 2314.806 65.04718 -936.6248 1.757706 0
execute as @s[scores={cutSceneTimer=658}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[333.3254f,0359.8611f]}}
execute as @s[scores={cutSceneTimer=659}] run tp @a[tag=cutsceneSlave] 2308.94 69.48752 -936.9786 287.5733 47.50124
execute as @s[scores={cutSceneTimer=659}] run tp @e[tag=openingOwl,limit=1] 2316.17 74.01706 -930.914 -94.02647 0
execute as @s[scores={cutSceneTimer=659}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:8}}]}
execute as @s[scores={cutSceneTimer=659}] run tp @e[tag=hogwartsLetter,limit=1] 2314.843 64.99161 -936.5754 2.076225 0
execute as @s[scores={cutSceneTimer=659}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[330.4929f,0359.9878f]}}
execute as @s[scores={cutSceneTimer=660}] run tp @a[tag=cutsceneSlave] 2309.105 69.37218 -937.0096 287.1357 47.97498
execute as @s[scores={cutSceneTimer=660}] run tp @e[tag=openingOwl,limit=1] 2316.294 74.21493 -930.7745 -94.02647 0
execute as @s[scores={cutSceneTimer=660}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=660}] run tp @e[tag=hogwartsLetter,limit=1] 2314.88 64.93567 -936.5561 2.237991 0
execute as @s[scores={cutSceneTimer=660}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[329.0543f,00.1214f]}}
execute as @s[scores={cutSceneTimer=661}] run tp @a[tag=cutsceneSlave] 2309.269 69.25741 -937.0397 286.701 48.45361
execute as @s[scores={cutSceneTimer=661}] run tp @e[tag=openingOwl,limit=1] 2316.416 74.40371 -930.6303 -94.02647 0
execute as @s[scores={cutSceneTimer=661}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute as @s[scores={cutSceneTimer=661}] run tp @e[tag=hogwartsLetter,limit=1] 2314.918 64.87682 -936.5603 2.230728 0
execute as @s[scores={cutSceneTimer=661}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[329.0257f,00.2699f]}}
execute as @s[scores={cutSceneTimer=662}] run tp @a[tag=cutsceneSlave] 2309.432 69.14352 -937.0685 286.2701 48.93677
execute as @s[scores={cutSceneTimer=662}] run tp @e[tag=openingOwl,limit=1] 2316.536 74.58286 -930.4823 -94.02647 0
execute as @s[scores={cutSceneTimer=662}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute as @s[scores={cutSceneTimer=662}] run tp @e[tag=hogwartsLetter,limit=1] 2314.958 64.81329 -936.5743 2.090538 0
execute as @s[scores={cutSceneTimer=662}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[329.7114f,00.4606f]}}
execute as @s[scores={cutSceneTimer=663}] run tp @a[tag=cutsceneSlave] 2309.595 69.02915 -937.0966 285.8361 49.43851
execute as @s[scores={cutSceneTimer=663}] run tp @e[tag=openingOwl,limit=1] 2316.657 74.7548 -930.3289 -94.02647 0
execute as @s[scores={cutSceneTimer=663}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute as @s[scores={cutSceneTimer=663}] run tp @e[tag=hogwartsLetter,limit=1] 2314.999 64.745 -936.5974 1.832703 0
execute as @s[scores={cutSceneTimer=663}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[330.9724f,00.6944f]}}
execute as @s[scores={cutSceneTimer=664}] run tp @a[tag=cutsceneSlave] 2309.756 68.91686 -937.1233 285.408 49.9508
execute as @s[scores={cutSceneTimer=664}] run tp @e[tag=openingOwl,limit=1] 2316.775 74.91563 -930.1738 -94.02647 0
execute as @s[scores={cutSceneTimer=664}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=664}] run tp @e[tag=hogwartsLetter,limit=1] 2315.04 64.67431 -936.6281 1.477295 0
execute as @s[scores={cutSceneTimer=664}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[332.7106f,00.9600f]}}
execute as @s[scores={cutSceneTimer=665}] run tp @a[tag=cutsceneSlave] 2309.914 68.80635 -937.1489 284.9837 50.47523
execute as @s[scores={cutSceneTimer=665}] run tp @e[tag=openingOwl,limit=1] 2316.892 75.06598 -930.0172 -94.02647 0
execute as @s[scores={cutSceneTimer=665}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute as @s[scores={cutSceneTimer=665}] run tp @e[tag=hogwartsLetter,limit=1] 2315.081 64.60197 -936.6658 1.040077 0
execute as @s[scores={cutSceneTimer=665}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[334.8489f,01.2516f]}}
execute as @s[scores={cutSceneTimer=666}] run tp @a[tag=cutsceneSlave] 2310.07 68.69778 -937.1732 284.5722 50.99974
execute as @s[scores={cutSceneTimer=666}] run tp @e[tag=openingOwl,limit=1] 2317.005 75.20274 -929.8632 -94.02647 0
execute as @s[scores={cutSceneTimer=666}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=666}] run tp @e[tag=hogwartsLetter,limit=1] 2315.121 64.53058 -936.7082 0.5489883 0
execute as @s[scores={cutSceneTimer=666}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[337.2507f,01.5553f]}}
execute as @s[scores={cutSceneTimer=667}] run tp @a[tag=cutsceneSlave] 2310.172 68.62606 -937.1889 284.2961 51.36045
execute as @s[scores={cutSceneTimer=667}] run tp @e[tag=openingOwl,limit=1] 2317.08 75.2893 -929.759 -94.02647 0
execute as @s[scores={cutSceneTimer=667}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=667}] run tp @e[tag=hogwartsLetter,limit=1] 2315.148 64.48248 -936.7395 0.1894379 0
execute as @s[scores={cutSceneTimer=667}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[339.0090f,01.7677f]}}
execute as @s[scores={cutSceneTimer=668}] run tp @a[tag=cutsceneSlave] 2310.325 68.51974 -937.2114 283.8921 51.9007
execute as @s[scores={cutSceneTimer=668}] run tp @e[tag=openingOwl,limit=1] 2317.188 75.40798 -929.6059 -94.02647 0
execute as @s[scores={cutSceneTimer=668}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=668}] run tp @e[tag=hogwartsLetter,limit=1] 2315.186 64.41256 -936.7889 -0.3692474 0
execute as @s[scores={cutSceneTimer=668}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[341.7413f,02.0860f]}}
execute as @s[scores={cutSceneTimer=669}] run tp @a[tag=cutsceneSlave] 2310.477 68.41455 -937.2332 283.4865 52.45812
execute as @s[scores={cutSceneTimer=669}] run tp @e[tag=openingOwl,limit=1] 2317.297 75.51721 -929.4518 -94.02647 0
execute as @s[scores={cutSceneTimer=669}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=669}] run tp @e[tag=hogwartsLetter,limit=1] 2315.223 64.34381 -936.842 -0.9559784 0
execute as @s[scores={cutSceneTimer=669}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[344.6108f,02.4089f]}}
execute as @s[scores={cutSceneTimer=670}] run tp @a[tag=cutsceneSlave] 2310.626 68.3107 -937.2538 283.0876 53.02066
execute as @s[scores={cutSceneTimer=670}] run tp @e[tag=openingOwl,limit=1] 2317.402 75.61433 -929.3009 -94.02647 0
execute as @s[scores={cutSceneTimer=670}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=670}] run tp @e[tag=hogwartsLetter,limit=1] 2315.258 64.27874 -936.8967 -1.542397 0
execute as @s[scores={cutSceneTimer=670}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[347.4788f,02.7230f]}}
execute as @s[scores={cutSceneTimer=671}] run tp @a[tag=cutsceneSlave] 2310.774 68.20885 -937.2734 282.6981 53.58381
execute as @s[scores={cutSceneTimer=671}] run tp @e[tag=openingOwl,limit=1] 2317.503 75.69878 -929.1548 -94.02647 0
execute as @s[scores={cutSceneTimer=671}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=671}] run tp @e[tag=hogwartsLetter,limit=1] 2315.29 64.2187 -936.9516 -2.108414 0
execute as @s[scores={cutSceneTimer=671}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[350.2469f,03.0194f]}}
execute as @s[scores={cutSceneTimer=672}] run tp @a[tag=cutsceneSlave] 2310.922 68.10635 -937.2921 282.3135 54.15312
execute as @s[scores={cutSceneTimer=672}] run tp @e[tag=openingOwl,limit=1] 2317.602 75.77148 -929.0125 -94.02647 0
execute as @s[scores={cutSceneTimer=672}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=672}] run tp @e[tag=hogwartsLetter,limit=1] 2315.318 64.16396 -937.0063 -2.644539 0
execute as @s[scores={cutSceneTimer=672}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[352.8689f,03.2951f]}}
execute as @s[scores={cutSceneTimer=673}] run tp @a[tag=cutsceneSlave] 2311.065 68.00864 -937.3102 281.9264 54.73938
execute as @s[scores={cutSceneTimer=673}] run tp @e[tag=openingOwl,limit=1] 2317.7 75.83329 -928.8721 -94.02647 0
execute as @s[scores={cutSceneTimer=673}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=673}] run tp @e[tag=hogwartsLetter,limit=1] 2315.344 64.11462 -937.061 -3.143921 0
execute as @s[scores={cutSceneTimer=673}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[355.3112f,03.5479f]}}
execute as @s[scores={cutSceneTimer=674}] run tp @a[tag=cutsceneSlave] 2311.213 67.90863 -937.3274 281.5403 55.33732
execute as @s[scores={cutSceneTimer=674}] run tp @e[tag=openingOwl,limit=1] 2317.796 75.88289 -928.7357 -94.02647 0
execute as @s[scores={cutSceneTimer=674}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=674}] run tp @e[tag=hogwartsLetter,limit=1] 2315.366 64.07251 -937.114 -3.58284 0
execute as @s[scores={cutSceneTimer=674}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[357.4578f,03.7670f]}}
execute as @s[scores={cutSceneTimer=675}] run tp @a[tag=cutsceneSlave] 2311.356 67.81335 -937.3432 281.172 55.92015
execute as @s[scores={cutSceneTimer=675}] run tp @e[tag=openingOwl,limit=1] 2317.886 75.91827 -928.61 -94.02647 0
execute as @s[scores={cutSceneTimer=675}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=675}] run tp @e[tag=hogwartsLetter,limit=1] 2315.382 64.04025 -937.1619 -3.927612 0
execute as @s[scores={cutSceneTimer=675}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[359.1439f,03.9372f]}}
execute as @s[scores={cutSceneTimer=676}] run tp @a[tag=cutsceneSlave] 2311.5 67.71913 -937.3582 280.8071 56.50926
execute as @s[scores={cutSceneTimer=676}] run tp @e[tag=openingOwl,limit=1] 2317.973 75.94107 -928.4907 -94.02647 0
execute as @s[scores={cutSceneTimer=676}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=676}] run tp @e[tag=hogwartsLetter,limit=1] 2315.394 64.01731 -937.2059 -4.178246 0
execute as @s[scores={cutSceneTimer=676}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[0.3697f,04.0597f]}}
execute as @s[scores={cutSceneTimer=677}] run tp @a[tag=cutsceneSlave] 2311.641 67.62721 -937.3723 280.45 57.09719
execute as @s[scores={cutSceneTimer=677}] run tp @e[tag=openingOwl,limit=1] 2318.057 75.95081 -928.3798 -94.02647 0
execute as @s[scores={cutSceneTimer=677}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=677}] run tp @e[tag=hogwartsLetter,limit=1] 2315.401 64.00497 -937.2445 -4.315712 0
execute as @s[scores={cutSceneTimer=677}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[1.0420f,04.1263f]}}
execute as @s[scores={cutSceneTimer=678}] run tp @a[tag=cutsceneSlave] 2311.782 67.53673 -937.3854 280.0977 57.68814
execute as @s[scores={cutSceneTimer=678}] run tp @e[tag=openingOwl,limit=1] 2318.137 75.95119 -928.2772 -94.02647 0
execute as @s[scores={cutSceneTimer=678}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=678}] run tp @e[tag=hogwartsLetter,limit=1] 2315.402 64.00301 -937.2775 -4.338005 0
execute as @s[scores={cutSceneTimer=678}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[1.1510f,04.1370f]}}
execute as @s[scores={cutSceneTimer=679}] run tp @a[tag=cutsceneSlave] 2311.925 67.44621 -937.3979 279.746 58.28886
execute as @s[scores={cutSceneTimer=679}] run tp @e[tag=openingOwl,limit=1] 2318.215 75.95119 -928.1826 -94.02647 0
execute as @s[scores={cutSceneTimer=679}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=679}] run tp @e[tag=hogwartsLetter,limit=1] 2315.403 64.00318 -937.309 -4.338005 0
execute as @s[scores={cutSceneTimer=679}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[1.1510f,04.1370f]}}
execute as @s[scores={cutSceneTimer=680}] run tp @a[tag=cutsceneSlave] 2312.067 67.35723 -937.4095 279.4005 58.88982
execute as @s[scores={cutSceneTimer=680}] run tp @e[tag=openingOwl,limit=1] 2318.289 75.95119 -928.0984 -94.02647 0
execute as @s[scores={cutSceneTimer=680}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=680}] run tp @e[tag=hogwartsLetter,limit=1] 2315.403 64.00349 -937.3392 -4.338005 0
execute as @s[scores={cutSceneTimer=680}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[1.1510f,04.1370f]}}
execute as @s[scores={cutSceneTimer=681}] run tp @a[tag=cutsceneSlave] 2312.205 67.27183 -937.42 279.0663 59.48072
execute as @s[scores={cutSceneTimer=681}] run tp @e[tag=openingOwl,limit=1] 2318.359 75.95119 -928.0266 -94.02647 0
execute as @s[scores={cutSceneTimer=681}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=681}] run tp @e[tag=hogwartsLetter,limit=1] 2315.403 64.00391 -937.3676 -4.338005 0
execute as @s[scores={cutSceneTimer=681}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[1.1510f,04.1370f]}}
execute as @s[scores={cutSceneTimer=682}] run tp @a[tag=cutsceneSlave] 2312.34 67.18798 -937.4297 278.7382 60.07067
execute as @s[scores={cutSceneTimer=682}] run tp @e[tag=openingOwl,limit=1] 2318.424 75.95119 -927.9664 -94.02647 0
execute as @s[scores={cutSceneTimer=682}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=682}] run tp @e[tag=hogwartsLetter,limit=1] 2315.404 64.00443 -937.3942 -4.338005 0
execute as @s[scores={cutSceneTimer=682}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[1.1510f,04.1370f]}}
execute as @s[scores={cutSceneTimer=683}] run tp @a[tag=cutsceneSlave] 2312.473 67.10643 -937.4386 278.4181 60.65523
execute as @s[scores={cutSceneTimer=683}] run tp @e[tag=openingOwl,limit=1] 2318.485 75.95119 -927.9189 -94.02647 0
execute as @s[scores={cutSceneTimer=683}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=683}] run tp @e[tag=hogwartsLetter,limit=1] 2315.404 64.00499 -937.4186 -4.338005 0
execute as @s[scores={cutSceneTimer=683}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[1.1510f,04.1370f]}}
execute as @s[scores={cutSceneTimer=684}] run tp @a[tag=cutsceneSlave] 2312.607 67.02467 -937.4467 278.0994 61.24603
execute as @s[scores={cutSceneTimer=684}] run tp @e[tag=openingOwl,limit=1] 2318.543 75.95119 -927.8843 -94.02647 0
execute as @s[scores={cutSceneTimer=684}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=684}] run tp @e[tag=hogwartsLetter,limit=1] 2315.404 64.00559 -937.4412 -4.338005 0
execute as @s[scores={cutSceneTimer=684}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[1.1510f,04.1370f]}}
execute as @s[scores={cutSceneTimer=685}] run tp @a[tag=cutsceneSlave] 2312.735 66.94659 -937.4539 277.7928 61.82307
execute as @s[scores={cutSceneTimer=685}] run tp @e[tag=openingOwl,limit=1] 2318.596 75.95119 -927.8643 -94.02647 0
execute as @s[scores={cutSceneTimer=685}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=685}] run tp @e[tag=hogwartsLetter,limit=1] 2315.405 64.00617 -937.4608 -4.338005 0
execute as @s[scores={cutSceneTimer=685}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[1.1510f,04.1370f]}}
execute as @s[scores={cutSceneTimer=686}] run tp @a[tag=cutsceneSlave] 2312.861 66.87009 -937.4603 277.4927 62.39576
execute as @s[scores={cutSceneTimer=686}] run tp @e[tag=openingOwl,limit=1] 2318.645 75.95119 -927.8588 -94.02647 0
execute as @s[scores={cutSceneTimer=686}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=686}] run tp @e[tag=hogwartsLetter,limit=1] 2315.405 64.00672 -937.4775 -4.338005 0
execute as @s[scores={cutSceneTimer=686}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[1.1510f,04.1370f]}}
execute as @s[scores={cutSceneTimer=687}] run tp @a[tag=cutsceneSlave] 2312.984 66.79453 -937.4659 277.1977 62.96655
execute as @s[scores={cutSceneTimer=687}] run tp @e[tag=openingOwl,limit=1] 2318.689 75.95119 -927.8588 -94.02647 0
execute as @s[scores={cutSceneTimer=687}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=687}] run tp @e[tag=hogwartsLetter,limit=1] 2315.405 64.00721 -937.4913 -4.338005 0
execute as @s[scores={cutSceneTimer=687}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[1.1510f,04.1370f]}}
execute as @s[scores={cutSceneTimer=688}] run tp @a[tag=cutsceneSlave] 2313.103 66.72143 -937.4707 276.9119 63.52689
execute as @s[scores={cutSceneTimer=688}] run tp @e[tag=openingOwl,limit=1] 2318.728 75.95119 -927.8588 -94.02647 0
execute as @s[scores={cutSceneTimer=688}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=688}] run tp @e[tag=hogwartsLetter,limit=1] 2315.405 64.00761 -937.5015 -4.338005 0
execute as @s[scores={cutSceneTimer=688}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[1.1510f,04.1370f]}}
execute as @s[scores={cutSceneTimer=689}] run tp @a[tag=cutsceneSlave] 2313.219 66.64886 -937.4749 276.6305 64.08583
execute as @s[scores={cutSceneTimer=689}] run tp @e[tag=openingOwl,limit=1] 2318.763 75.95119 -927.8588 -94.02647 0
execute as @s[scores={cutSceneTimer=689}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=689}] run tp @e[tag=hogwartsLetter,limit=1] 2315.405 64.00788 -937.5082 -4.338005 0
execute as @s[scores={cutSceneTimer=689}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[1.1510f,04.1370f]}}
execute as @s[scores={cutSceneTimer=690}] run tp @a[tag=cutsceneSlave] 2313.332 66.57759 -937.4781 276.3556 64.63873
execute as @s[scores={cutSceneTimer=690}] run tp @e[tag=openingOwl,limit=1] 2318.793 75.95119 -927.8588 -94.02647 0
execute as @s[scores={cutSceneTimer=690}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=690}] run tp @e[tag=hogwartsLetter,limit=1] 2315.405 64.008 -937.5109 -4.338005 0
execute as @s[scores={cutSceneTimer=690}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[1.1510f,04.1370f]}}
execute as @s[scores={cutSceneTimer=691}] run tp @a[tag=cutsceneSlave] 2313.439 66.50887 -937.4807 276.0906 65.17803
execute as @s[scores={cutSceneTimer=691}] run tp @e[tag=openingOwl,limit=1] 2318.817 75.95119 -927.8588 -94.02647 0
execute as @s[scores={cutSceneTimer=691}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=691}] run tp @e[tag=hogwartsLetter,limit=1] 2315.405 64.008 -937.511 -4.338005 0
execute as @s[scores={cutSceneTimer=691}] run data merge entity @e[tag=hogwartsLetter,limit=1] {Pose:{Head:[1.1510f,04.1370f]}}
execute as @s[scores={cutSceneTimer=692}] run tp @a[tag=cutsceneSlave] 2313.541 66.44226 -937.4825 275.8346 65.70499
execute as @s[scores={cutSceneTimer=692}] run tp @e[tag=openingOwl,limit=1] 2318.837 75.95119 -927.8588 -94.02647 0
execute as @s[scores={cutSceneTimer=692}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=693}] run tp @a[tag=cutsceneSlave] 2313.64 66.37605 -937.4837 275.5834 66.22816
execute as @s[scores={cutSceneTimer=693}] run tp @e[tag=openingOwl,limit=1] 2318.851 75.95119 -927.8588 -94.02647 0
execute as @s[scores={cutSceneTimer=693}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=694}] run tp @a[tag=cutsceneSlave] 2313.734 66.3107 -937.484 275.3379 66.74474
execute as @s[scores={cutSceneTimer=694}] run tp @e[tag=openingOwl,limit=1] 2318.86 75.95119 -927.8588 -94.02647 0
execute as @s[scores={cutSceneTimer=694}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=695}] run tp @a[tag=cutsceneSlave] 2313.823 66.24733 -937.4836 275.1014 67.24771
execute as @s[scores={cutSceneTimer=695}] run tp @e[tag=openingOwl,limit=1] 2318.864 75.95119 -927.8588 -94.02647 0
execute as @s[scores={cutSceneTimer=695}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[339.1885f,0f,0.0000f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_shovel",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute as @s[scores={cutSceneTimer=696}] run tp @a[tag=cutsceneSlave] 2313.904 66.18648 -937.4825 274.876 67.73198
execute as @s[scores={cutSceneTimer=697}] run tp @a[tag=cutsceneSlave] 2313.98 66.12758 -937.4824 274.6604 68.19946
execute as @s[scores={cutSceneTimer=698}] run tp @a[tag=cutsceneSlave] 2314.052 66.06944 -937.4825 274.4507 68.65823
execute as @s[scores={cutSceneTimer=699}] run tp @a[tag=cutsceneSlave] 2314.118 66.01283 -937.4824 274.2496 69.10208
execute as @s[scores={cutSceneTimer=700}] run tp @a[tag=cutsceneSlave] 2314.179 65.9581 -937.4823 274.059 69.52618
execute as @s[scores={cutSceneTimer=701}] run tp @a[tag=cutsceneSlave] 2314.235 65.9044 -937.4824 273.8751 69.93839
execute as @s[scores={cutSceneTimer=702}] run tp @a[tag=cutsceneSlave] 2314.287 65.85245 -937.4825 273.7018 70.32973
execute as @s[scores={cutSceneTimer=703}] run tp @a[tag=cutsceneSlave] 2314.333 65.80199 -937.4825 273.5382 70.70145
execute as @s[scores={cutSceneTimer=704}] run tp @a[tag=cutsceneSlave] 2314.376 65.75272 -937.4823 273.3825 71.0575
execute as @s[scores={cutSceneTimer=705}] run tp @a[tag=cutsceneSlave] 2314.416 65.70499 -937.4824 273.238 71.38945
execute as @s[scores={cutSceneTimer=706}] run tp @a[tag=cutsceneSlave] 2314.451 65.6585 -937.4824 273.1028 71.70143
execute as @s[scores={cutSceneTimer=707}] run tp @a[tag=cutsceneSlave] 2314.472 65.6282 -937.4825 273.0164 71.90134
execute as @s[scores={cutSceneTimer=708}] run tp @a[tag=cutsceneSlave] 2314.503 65.58369 -937.4825 272.8952 72.18237
execute as @s[scores={cutSceneTimer=709}] run tp @a[tag=cutsceneSlave] 2314.53 65.54053 -937.4825 272.7856 72.43648
execute as @s[scores={cutSceneTimer=710}] run tp @a[tag=cutsceneSlave] 2314.555 65.49862 -937.4824 272.6862 72.66681
execute as @s[scores={cutSceneTimer=711}] run tp @a[tag=cutsceneSlave] 2314.576 65.45795 -937.4824 272.597 72.87282
execute as @s[scores={cutSceneTimer=712}] run tp @a[tag=cutsceneSlave] 2314.596 65.41783 -937.4825 272.5161 73.05853
execute as @s[scores={cutSceneTimer=713}] run tp @a[tag=cutsceneSlave] 2314.614 65.37885 -937.4823 272.4462 73.2166
execute as @s[scores={cutSceneTimer=714}] run tp @a[tag=cutsceneSlave] 2314.631 65.34171 -937.4825 272.3882 73.35132
execute as @s[scores={cutSceneTimer=715}] run tp @a[tag=cutsceneSlave] 2314.645 65.3052 -937.4824 272.3401 73.48263
execute as @s[scores={cutSceneTimer=716}] run tp @a[tag=cutsceneSlave] 2314.658 65.2694 -937.4824 272.3028 73.61089
execute as @s[scores={cutSceneTimer=717}] run tp @a[tag=cutsceneSlave] 2314.669 65.23474 -937.4825 272.2766 73.73471
execute as @s[scores={cutSceneTimer=718}] run tp @a[tag=cutsceneSlave] 2314.679 65.20029 -937.4824 272.2616 73.85648
execute as @s[scores={cutSceneTimer=719}] run tp @a[tag=cutsceneSlave] 2314.688 65.16873 -937.4825 272.2584 73.96977
execute as @s[scores={cutSceneTimer=720}] run tp @a[tag=cutsceneSlave] 2314.696 65.13744 -937.4824 272.2666 74.08104
execute as @s[scores={cutSceneTimer=721}] run tp @a[tag=cutsceneSlave] 2314.703 65.1077 -937.4825 272.2858 74.18722
execute as @s[scores={cutSceneTimer=722}] run tp @a[tag=cutsceneSlave] 2314.709 65.07926 -937.4824 272.3008 74.28886
execute as @s[scores={cutSceneTimer=723}] run tp @a[tag=cutsceneSlave] 2314.715 65.05075 -937.4824 272.3046 74.38947
execute as @s[scores={cutSceneTimer=724}] run tp @a[tag=cutsceneSlave] 2314.719 65.0243 -937.4823 272.2975 74.48376
execute as @s[scores={cutSceneTimer=725}] run tp @a[tag=cutsceneSlave] 2314.723 64.99879 -937.4824 272.2805 74.57437
execute as @s[scores={cutSceneTimer=726}] run tp @a[tag=cutsceneSlave] 2314.727 64.97404 -937.4825 272.2538 74.66202
execute as @s[scores={cutSceneTimer=727}] run tp @a[tag=cutsceneSlave] 2314.729 64.95006 -937.4824 272.218 74.74661
execute as @s[scores={cutSceneTimer=728}] run tp @a[tag=cutsceneSlave] 2314.732 64.92696 -937.4824 272.1736 74.82792
execute as @s[scores={cutSceneTimer=729}] run tp @a[tag=cutsceneSlave] 2314.734 64.90491 -937.4824 272.1216 74.90551
execute as @s[scores={cutSceneTimer=730}] run tp @a[tag=cutsceneSlave] 2314.736 64.88392 -937.4825 272.0627 74.9793
execute as @s[scores={cutSceneTimer=731}] run tp @a[tag=cutsceneSlave] 2314.738 64.86375 -937.4824 271.9971 75.05004
execute as @s[scores={cutSceneTimer=732}] run tp @a[tag=cutsceneSlave] 2314.739 64.84449 -937.4824 271.9256 75.11744
execute as @s[scores={cutSceneTimer=733}] run tp @a[tag=cutsceneSlave] 2314.74 64.82605 -937.4824 271.8481 75.18211
execute as @s[scores={cutSceneTimer=734}] run tp @a[tag=cutsceneSlave] 2314.74 64.80861 -937.4824 271.7669 75.2429
execute as @s[scores={cutSceneTimer=735}] run tp @a[tag=cutsceneSlave] 2314.741 64.79202 -937.4824 271.6823 75.30017
execute as @s[scores={cutSceneTimer=736}] run tp @a[tag=cutsceneSlave] 2314.741 64.77625 -937.4824 271.5942 75.35442
execute as @s[scores={cutSceneTimer=737}] run tp @a[tag=cutsceneSlave] 2314.742 64.76125 -937.4824 271.5026 75.40611
execute as @s[scores={cutSceneTimer=738}] run tp @a[tag=cutsceneSlave] 2314.742 64.74707 -937.4824 271.4091 75.45475
execute as @s[scores={cutSceneTimer=739}] run tp @a[tag=cutsceneSlave] 2314.742 64.73805 -937.4824 271.3455 75.48571
execute as @s[scores={cutSceneTimer=740}] run tp @a[tag=cutsceneSlave] 2314.742 64.72515 -937.4824 271.2495 75.52966
execute as @s[scores={cutSceneTimer=741}] run tp @a[tag=cutsceneSlave] 2314.742 64.71298 -937.4823 271.1522 75.5711
execute as @s[scores={cutSceneTimer=742}] run tp @a[tag=cutsceneSlave] 2314.742 64.70158 -937.4824 271.0555 75.6095
execute as @s[scores={cutSceneTimer=743}] run tp @a[tag=cutsceneSlave] 2314.742 64.6909 -937.4824 270.9595 75.64525
execute as @s[scores={cutSceneTimer=744}] run tp @a[tag=cutsceneSlave] 2314.741 64.68098 -937.4824 270.8653 75.67822
execute as @s[scores={cutSceneTimer=745}] run tp @a[tag=cutsceneSlave] 2314.741 64.67175 -937.4824 270.7722 75.70885
execute as @s[scores={cutSceneTimer=746}] run tp @a[tag=cutsceneSlave] 2314.741 64.66177 -937.4824 270.6691 75.74073
execute as @s[scores={cutSceneTimer=747}] run tp @a[tag=cutsceneSlave] 2314.741 64.65401 -937.4824 270.5818 75.76606
execute as @s[scores={cutSceneTimer=748}] run tp @a[tag=cutsceneSlave] 2314.74 64.64703 -937.4824 270.4988 75.78891
execute as @s[scores={cutSceneTimer=749}] run tp @a[tag=cutsceneSlave] 2314.74 64.64074 -937.4825 270.4202 75.8094
execute as @s[scores={cutSceneTimer=750}] run tp @a[tag=cutsceneSlave] 2314.74 64.63501 -937.4824 270.3455 75.82793
execute as @s[scores={cutSceneTimer=751}] run tp @a[tag=cutsceneSlave] 2314.74 64.63001 -937.4824 270.2769 75.84401
execute as @s[scores={cutSceneTimer=752}] run tp @a[tag=cutsceneSlave] 2314.74 64.62564 -937.4824 270.2141 75.85803
execute as @s[scores={cutSceneTimer=753}] run tp @a[tag=cutsceneSlave] 2314.74 64.62193 -937.4824 270.1577 75.87006
execute as @s[scores={cutSceneTimer=754}] run tp @a[tag=cutsceneSlave] 2314.74 64.61887 -937.4824 270.109 75.87992
execute as @s[scores={cutSceneTimer=755}] run tp @a[tag=cutsceneSlave] 2314.74 64.61646 -937.4824 270.0683 75.8878
execute as @s[scores={cutSceneTimer=756}] run tp @a[tag=cutsceneSlave] 2314.741 64.61472 -937.4824 270.0371 75.89355
execute as @s[scores={cutSceneTimer=757}] run tp @a[tag=cutsceneSlave] 2314.741 64.61359 -937.4824 270.015 75.89748
execute as @s[scores={cutSceneTimer=758}] run tp @a[tag=cutsceneSlave] 2314.741 64.61306 -937.4824 270.0025 75.89957
execute as @s[scores={cutSceneTimer=759..780}] run tp @a[tag=cutsceneSlave] 2314.742 64.61312 -937.4824 270 75.90002
execute as @s[scores={cutSceneTimer=760}] as @a[tag=cutsceneSlave] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=781}] run tag @a[tag=cutsceneSlave] remove letterbox
execute as @s[scores={cutSceneTimer=781}] run tag @a[tag=cutsceneSlave] remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=781}] run tag @a[tag=cutsceneSlave] remove cutsceneZoom
execute as @s[scores={cutSceneTimer=781}] run time set 4500
execute as @s[scores={cutSceneTimer=800}] as @a[tag=cutsceneSlave] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=800}] run kill @e[tag=openingOwl,limit=1]
# execute as @s[scores={cutSceneTimer=800}] run data merge entity @e[tag=openingOwl,limit=1] {Pose:{Head:[0.0000f,0f,0.0000f]},ArmorItems:[{},{},{},{}]}
# execute as @s[scores={cutSceneTimer=800}] run tp @e[tag=openingOwl,limit=1] 2326.439 65.46925 -795.42 89.97634 0

# This appears to solve some odd issues
execute as @s[scores={cutSceneTimer=780}] run gamemode creative @a[tag=cutsceneSlave]
execute as @s[scores={cutSceneTimer=781}] run gamemode adventure @a[tag=cutsceneSlave]

execute as @s[scores={cutSceneTimer=781}] run tp @p[tag=cutsceneSlave,scores={playerID=1}] 2328.59 71.00 -944.70 37.23 5.70
execute as @s[scores={cutSceneTimer=781}] run tp @p[tag=cutsceneSlave,scores={playerID=2}] 2325.97 71.00 -944.52 -17.44 3.96
execute as @s[scores={cutSceneTimer=781}] run tp @p[tag=cutsceneSlave,scores={playerID=3}] 2326.37 71.00 -941.58 -145.96 1.13
execute as @s[scores={cutSceneTimer=781}] run tp @p[tag=cutsceneSlave,scores={playerID=4}] 2328.57 71.00 -941.30 -216.44 2.33

execute as @s[scores={cutSceneTimer=819}] run tag @a[tag=cutsceneSlave] add dontExitCutSceneSilent
execute as @s[scores={cutSceneTimer=819}] run tag @a[tag=cutsceneSlave] remove doNotPlayAmbience
execute as @s[scores={cutSceneTimer=820}] as @a[tag=cutsceneSlave] run function hp:cutscenes/exit_cutscene

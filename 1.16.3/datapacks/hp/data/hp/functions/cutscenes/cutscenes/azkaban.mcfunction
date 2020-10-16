

# Reset dementors if slow loading or low render distance
execute as @e[tag=hangingDementor,tag=!hangingDementorIsVisible] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:74}}]}
execute as @e[tag=hangingDementor,tag=!hangingDementorIsVisible] run tag @s add hangingDementorIsVisible


# Join creature team to avoid dementors attacking
execute as @s[scores={cutSceneTimer=1}] run team join Creature @s


execute as @s[scores={cutSceneTimer=1}] run tag @s remove musicController
execute as @s[scores={cutSceneTimer=1}] run function hp:music/music/mysterious
execute as @s[scores={cutSceneTimer=1}] run scoreboard players set @s queuedMusic 0

# Load important chunks for low render distance and slow computers that haven't loaded them yet
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5000 10022 1 1 false @s
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5000 10009 1 1 false @s
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5016 10022 1 1 false @s
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5016 10009 1 1 false @s
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] run kill @e[tag=chunkLoader]

execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=hangingDementor1] run tp @s 5009.475 115.779 10045.307
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=hangingDementor2] run tp @s 4979.651 135.151 10046.422
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=hangingDementor3] run tp @s 4980.446 128.307 10054.7826
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=hangingDementor4] run tp @s 5001.269 130.622 10043.605
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=hangingDementor5] run tp @s 4975.411 133.769 9996.526
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=hangingDementor6] run tp @s 4982.088 141.110 9987.434 
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=hangingDementor7] run tp @s 5084.239 58.69 10058.153

execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=phoenixOrder1,limit=1] run tp @s 4992 99 10018
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=phoenixOrder2,limit=1] run tp @s 4992 99 10017
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=phoenixOrder3,limit=1] run tp @s 4992 99 10016
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=phoenixOrder4,limit=1] run tp @s 4992 99 10015
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=phoenixOrder5,limit=1] run tp @s 4992 99 10014

execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=phoenixOrder1,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 256
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=phoenixOrder2,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 246
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=phoenixOrder3,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 245
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=phoenixOrder4,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 259
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=phoenixOrder5,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 255
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=phoenixOrder1,limit=1] run tag @s add npcLookAtPlayer
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=phoenixOrder2,limit=1] run tag @s add npcLookAtPlayer
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=phoenixOrder3,limit=1] run tag @s add npcLookAtPlayer
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=phoenixOrder4,limit=1] run tag @s add npcLookAtPlayer
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=phoenixOrder5,limit=1] run tag @s add npcLookAtPlayer

execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=manaWell1,limit=1] run tp @s 4993 99 10016
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=manaWell2,limit=1] run tp @s 4993 99 10015
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] as @e[tag=manaWell3,limit=1] run tp @s 4993 99 10014

execute as @s[scores={cutSceneTimer=1}] run tag @s add azkabanStorm

# Spawn first enemies in
execute as @s[scores={cutSceneTimer=1},tag=cutsceneLeader] run function hp:quests/quests/azkaban/first_enemies

# Weather
execute as @s[scores={cutSceneTimer=-100},tag=cutsceneLeader] run weather rain
execute as @s[scores={cutSceneTimer=-100},tag=cutsceneLeader] run time set midnight

# Title
execute as @s[scores={cutSceneTimer=-130}] run title @s times 15 35 1
execute as @s[scores={cutSceneTimer=-130}] run title @s subtitle ["",{"text":"Азкабан","bold":true,"color":"gold"}]
execute as @s[scores={cutSceneTimer=-130}] run title @s title {"text":"Путешествие в","color":"gray"}



execute as @s[scores={cutSceneTimer=-150}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=22}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneLevitate
# execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=22}] run effect give @s minecraft:slowness 10000 2 true
execute as @s[scores={cutSceneTimer=22}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=-110..24}] run tp @s 5142.089 20.65053 10052 464.26 -18.26987
execute as @s[scores={cutSceneTimer=25}] run tp @s 5142.085 20.65648 10052.01 464.2605 -18.26862
execute as @s[scores={cutSceneTimer=26}] run tp @s 5142.071 20.6746 10052.05 464.2681 -18.2648
execute as @s[scores={cutSceneTimer=27}] run tp @s 5142.055 20.69597 10052.09 464.2803 -18.26025
execute as @s[scores={cutSceneTimer=28}] run tp @s 5142.035 20.72355 10052.14 464.2976 -18.25436
execute as @s[scores={cutSceneTimer=29}] run tp @s 5142.009 20.75768 10052.21 464.3202 -18.2471
execute as @s[scores={cutSceneTimer=30}] run tp @s 5141.979 20.79789 10052.29 464.3479 -18.23849
execute as @s[scores={cutSceneTimer=31}] run tp @s 5141.943 20.84524 10052.38 464.3813 -18.22833
execute as @s[scores={cutSceneTimer=32}] run tp @s 5141.903 20.89823 10052.48 464.4193 -18.21695
execute as @s[scores={cutSceneTimer=33}] run tp @s 5141.858 20.95733 10052.6 464.4622 -18.20419
execute as @s[scores={cutSceneTimer=34}] run tp @s 5141.809 21.02249 10052.72 464.5102 -18.19016
execute as @s[scores={cutSceneTimer=35}] run tp @s 5141.755 21.09466 10052.86 464.5637 -18.17453
execute as @s[scores={cutSceneTimer=36}] run tp @s 5141.696 21.17287 10053.01 464.6219 -18.15753
execute as @s[scores={cutSceneTimer=37}] run tp @s 5141.633 21.25595 10053.17 464.6843 -18.1395
execute as @s[scores={cutSceneTimer=38}] run tp @s 5141.566 21.34422 10053.34 464.7507 -18.12024
execute as @s[scores={cutSceneTimer=39}] run tp @s 5141.495 21.4387 10053.52 464.822 -18.09961
execute as @s[scores={cutSceneTimer=40}] run tp @s 5141.419 21.53954 10053.71 464.8984 -18.07751
execute as @s[scores={cutSceneTimer=41}] run tp @s 5141.34 21.64462 10053.91 464.9782 -18.05447
execute as @s[scores={cutSceneTimer=42}] run tp @s 5141.256 21.7558 10054.12 465.0627 -18.02997
execute as @s[scores={cutSceneTimer=43}] run tp @s 5141.167 21.8724 10054.34 465.1515 -18.00427
execute as @s[scores={cutSceneTimer=44}] run tp @s 5141.074 21.99608 10054.57 465.2458 -17.97693
execute as @s[scores={cutSceneTimer=45}] run tp @s 5140.977 22.12517 10054.81 465.3443 -17.9483
execute as @s[scores={cutSceneTimer=46}] run tp @s 5140.875 22.25965 10055.06 465.447 -17.9184
execute as @s[scores={cutSceneTimer=47}] run tp @s 5140.77 22.39932 10055.32 465.5536 -17.88727
execute as @s[scores={cutSceneTimer=48}] run tp @s 5140.66 22.54436 10055.59 465.6644 -17.85486
execute as @s[scores={cutSceneTimer=49}] run tp @s 5140.546 22.69443 10055.86 465.7789 -17.82123
execute as @s[scores={cutSceneTimer=50}] run tp @s 5140.431 22.84665 10056.14 465.8952 -17.78705
execute as @s[scores={cutSceneTimer=51}] run tp @s 5140.312 23.00358 10056.43 466.015 -17.75168
execute as @s[scores={cutSceneTimer=52}] run tp @s 5140.229 23.11274 10056.63 466.0982 -17.72705
execute as @s[scores={cutSceneTimer=53}] run tp @s 5140.103 23.27978 10056.93 466.2256 -17.68924
execute as @s[scores={cutSceneTimer=54}] run tp @s 5139.971 23.45379 10057.25 466.3582 -17.64975
execute as @s[scores={cutSceneTimer=55}] run tp @s 5139.837 23.63028 10057.57 466.4926 -17.60959
execute as @s[scores={cutSceneTimer=56}] run tp @s 5139.701 23.81021 10057.89 466.6295 -17.56854
execute as @s[scores={cutSceneTimer=57}] run tp @s 5139.559 23.99705 10058.23 466.7714 -17.52579
execute as @s[scores={cutSceneTimer=58}] run tp @s 5139.417 24.18467 10058.56 466.9139 -17.48276
execute as @s[scores={cutSceneTimer=59}] run tp @s 5139.27 24.37904 10058.91 467.0612 -17.43799
execute as @s[scores={cutSceneTimer=60}] run tp @s 5139.12 24.57635 10059.25 467.2107 -17.39249
execute as @s[scores={cutSceneTimer=61}] run tp @s 5138.967 24.77673 10059.61 467.3623 -17.34607
execute as @s[scores={cutSceneTimer=62}] run tp @s 5138.812 24.98113 10059.97 467.5167 -17.29865
execute as @s[scores={cutSceneTimer=63}] run tp @s 5138.652 25.19228 10060.34 467.676 -17.24945
execute as @s[scores={cutSceneTimer=64}] run tp @s 5138.489 25.40578 10060.71 467.8368 -17.19962
execute as @s[scores={cutSceneTimer=65}] run tp @s 5138.325 25.62211 10061.08 467.9995 -17.14893
execute as @s[scores={cutSceneTimer=66}] run tp @s 5138.158 25.84217 10061.46 468.1647 -17.09723
execute as @s[scores={cutSceneTimer=67}] run tp @s 5137.986 26.06719 10061.85 468.3334 -17.04416
execute as @s[scores={cutSceneTimer=68}] run tp @s 5137.81 26.29916 10062.25 468.507 -16.98932
execute as @s[scores={cutSceneTimer=69}] run tp @s 5137.629 26.53641 10062.65 468.6842 -16.93304
execute as @s[scores={cutSceneTimer=70}] run tp @s 5137.448 26.77417 10063.05 468.8614 -16.87646
execute as @s[scores={cutSceneTimer=71}] run tp @s 5137.266 27.01395 10063.46 469.0398 -16.81921
execute as @s[scores={cutSceneTimer=72}] run tp @s 5137.078 27.26037 10063.87 469.2228 -16.76019
execute as @s[scores={cutSceneTimer=73}] run tp @s 5136.89 27.50697 10064.29 469.4055 -16.70093
execute as @s[scores={cutSceneTimer=74}] run tp @s 5136.698 27.75841 10064.7 469.5915 -16.64029
execute as @s[scores={cutSceneTimer=75}] run tp @s 5136.502 28.01499 10065.13 469.7808 -16.57819
execute as @s[scores={cutSceneTimer=76}] run tp @s 5136.308 28.26966 10065.55 469.9683 -16.51633
execute as @s[scores={cutSceneTimer=77}] run tp @s 5136.109 28.53051 10065.97 470.1599 -16.45279
execute as @s[scores={cutSceneTimer=78}] run tp @s 5135.906 28.79651 10066.41 470.3548 -16.38773
execute as @s[scores={cutSceneTimer=79}] run tp @s 5135.705 29.06021 10066.83 470.5476 -16.32306
execute as @s[scores={cutSceneTimer=80}] run tp @s 5135.497 29.33174 10067.27 470.7456 -16.25616
execute as @s[scores={cutSceneTimer=81}] run tp @s 5135.291 29.60106 10067.7 470.9415 -16.18961
execute as @s[scores={cutSceneTimer=82}] run tp @s 5135.082 29.87473 10068.13 471.1401 -16.12173
execute as @s[scores={cutSceneTimer=83}] run tp @s 5134.872 30.14939 10068.57 471.3389 -16.05334
execute as @s[scores={cutSceneTimer=84}] run tp @s 5134.655 30.43207 10069.01 471.5428 -15.9827
execute as @s[scores={cutSceneTimer=85}] run tp @s 5134.441 30.71174 10069.45 471.7441 -15.91257
execute as @s[scores={cutSceneTimer=86}] run tp @s 5134.225 30.99394 10069.89 471.9467 -15.84152
execute as @s[scores={cutSceneTimer=87}] run tp @s 5134.077 31.18692 10070.18 472.0848 -15.79276
execute as @s[scores={cutSceneTimer=88}] run tp @s 5133.853 31.47879 10070.63 472.2932 -15.71881
execute as @s[scores={cutSceneTimer=89}] run tp @s 5133.63 31.76883 10071.07 472.4998 -15.64502
execute as @s[scores={cutSceneTimer=90}] run tp @s 5133.407 32.05938 10071.51 472.706 -15.57077
execute as @s[scores={cutSceneTimer=91}] run tp @s 5133.18 32.35556 10071.96 472.9156 -15.49481
execute as @s[scores={cutSceneTimer=92}] run tp @s 5132.954 32.65028 10072.39 473.1235 -15.41891
execute as @s[scores={cutSceneTimer=93}] run tp @s 5132.726 32.94691 10072.83 473.332 -15.34222
execute as @s[scores={cutSceneTimer=94}] run tp @s 5132.496 33.24542 10073.27 473.5411 -15.26471
execute as @s[scores={cutSceneTimer=95}] run tp @s 5132.264 33.54739 10073.71 473.752 -15.18597
execute as @s[scores={cutSceneTimer=96}] run tp @s 5132.031 33.8495 10074.15 473.9622 -15.10687
execute as @s[scores={cutSceneTimer=97}] run tp @s 5131.794 34.15713 10074.59 474.1755 -15.02597
execute as @s[scores={cutSceneTimer=98}] run tp @s 5131.556 34.46652 10075.03 474.3892 -14.94424
execute as @s[scores={cutSceneTimer=99}] run tp @s 5131.319 34.77353 10075.46 474.6005 -14.86279
execute as @s[scores={cutSceneTimer=100}] run tp @s 5131.08 35.08372 10075.89 474.8131 -14.78012
execute as @s[scores={cutSceneTimer=101}] run tp @s 5130.838 35.39777 10076.33 475.0275 -14.69604
execute as @s[scores={cutSceneTimer=102}] run tp @s 5130.597 35.70903 10076.75 475.2392 -14.61234
execute as @s[scores={cutSceneTimer=103}] run tp @s 5130.355 36.02296 10077.18 475.4518 -14.5275
execute as @s[scores={cutSceneTimer=104}] run tp @s 5130.112 36.33673 10077.6 475.6634 -14.44232
execute as @s[scores={cutSceneTimer=105}] run tp @s 5129.869 36.65161 10078.02 475.8748 -14.35645
execute as @s[scores={cutSceneTimer=106}] run tp @s 5129.625 36.96754 10078.43 476.086 -14.26987
execute as @s[scores={cutSceneTimer=107}] run tp @s 5129.376 37.28824 10078.85 476.2994 -14.18152
execute as @s[scores={cutSceneTimer=108}] run tp @s 5129.125 37.61224 10079.27 476.514 -14.09186
execute as @s[scores={cutSceneTimer=109}] run tp @s 5128.875 37.93502 10079.68 476.7267 -14.00204
execute as @s[scores={cutSceneTimer=110}] run tp @s 5128.627 38.25469 10080.08 476.9364 -13.91266
execute as @s[scores={cutSceneTimer=111}] run tp @s 5128.378 38.57494 10080.48 477.1454 -13.82263
execute as @s[scores={cutSceneTimer=112}] run tp @s 5128.124 38.90189 10080.88 477.3577 -13.73026
execute as @s[scores={cutSceneTimer=113}] run tp @s 5127.874 39.22347 10081.27 477.5654 -13.63892
execute as @s[scores={cutSceneTimer=114}] run tp @s 5127.622 39.54755 10081.65 477.7736 -13.54636
execute as @s[scores={cutSceneTimer=115}] run tp @s 5127.366 39.87641 10082.04 477.9836 -13.45193
execute as @s[scores={cutSceneTimer=116}] run tp @s 5127.115 40.1993 10082.42 478.1887 -13.3587
execute as @s[scores={cutSceneTimer=117}] run tp @s 5126.863 40.5225 10082.78 478.3927 -13.26483
execute as @s[scores={cutSceneTimer=118}] run tp @s 5126.61 40.84595 10083.15 478.5958 -13.17038
execute as @s[scores={cutSceneTimer=119}] run tp @s 5126.353 41.17561 10083.51 478.8014 -13.07355
execute as @s[scores={cutSceneTimer=120}] run tp @s 5126.097 41.50358 10083.87 479.0046 -12.97665
execute as @s[scores={cutSceneTimer=121}] run tp @s 5125.839 41.83364 10084.23 479.2078 -12.87854
execute as @s[scores={cutSceneTimer=122}] run tp @s 5125.579 42.16582 10084.57 479.4109 -12.77921
execute as @s[scores={cutSceneTimer=123}] run tp @s 5125.324 42.49165 10084.91 479.6087 -12.68115
execute as @s[scores={cutSceneTimer=124}] run tp @s 5125.07 42.8151 10085.24 479.8037 -12.58322
execute as @s[scores={cutSceneTimer=125}] run tp @s 5124.813 43.14232 10085.56 479.9995 -12.48349
execute as @s[scores={cutSceneTimer=126}] run tp @s 5124.555 43.47152 10085.88 480.195 -12.38254
execute as @s[scores={cutSceneTimer=127}] run tp @s 5124.302 43.79409 10086.19 480.3851 -12.28296
execute as @s[scores={cutSceneTimer=128}] run tp @s 5124.048 44.11614 10086.49 480.5733 -12.18289
execute as @s[scores={cutSceneTimer=129}] run tp @s 5123.791 44.44391 10086.79 480.7633 -12.08035
execute as @s[scores={cutSceneTimer=130}] run tp @s 5123.533 44.77089 10087.08 480.9512 -11.97736
execute as @s[scores={cutSceneTimer=131}] run tp @s 5123.361 44.98884 10087.26 481.0755 -11.90829
execute as @s[scores={cutSceneTimer=132}] run tp @s 5123.107 45.31062 10087.54 481.2576 -11.80573
execute as @s[scores={cutSceneTimer=133}] run tp @s 5122.855 45.62965 10087.8 481.4365 -11.70334
execute as @s[scores={cutSceneTimer=134}] run tp @s 5122.6 45.95196 10088.05 481.6155 -11.59915
execute as @s[scores={cutSceneTimer=135}] run tp @s 5122.346 46.27334 10088.3 481.7922 -11.49445
execute as @s[scores={cutSceneTimer=136}] run tp @s 5122.093 46.59222 10088.54 481.9655 -11.38983
execute as @s[scores={cutSceneTimer=137}] run tp @s 5121.836 46.91799 10088.78 482.1385 -11.28262
execute as @s[scores={cutSceneTimer=138}] run tp @s 5121.577 47.24844 10089.01 482.3119 -11.17368
execute as @s[scores={cutSceneTimer=139}] run tp @s 5121.317 47.58078 10089.25 482.4848 -11.06387
execute as @s[scores={cutSceneTimer=140}] run tp @s 5121.058 47.91463 10089.48 482.657 -10.95337
execute as @s[scores={cutSceneTimer=141}] run tp @s 5120.796 48.25277 10089.7 482.8301 -10.84125
execute as @s[scores={cutSceneTimer=142}] run tp @s 5120.532 48.59451 10089.93 483.0037 -10.72769
execute as @s[scores={cutSceneTimer=143}] run tp @s 5120.267 48.94043 10090.16 483.1781 -10.61255
execute as @s[scores={cutSceneTimer=144}] run tp @s 5120.001 49.28745 10090.38 483.3517 -10.49683
execute as @s[scores={cutSceneTimer=145}] run tp @s 5119.73 49.64253 10090.6 483.5282 -10.37823
execute as @s[scores={cutSceneTimer=146}] run tp @s 5119.459 49.99892 10090.82 483.7042 -10.25897
execute as @s[scores={cutSceneTimer=147}] run tp @s 5119.188 50.35663 10091.04 483.8796 -10.1391
execute as @s[scores={cutSceneTimer=148}] run tp @s 5118.915 50.71768 10091.25 484.0556 -10.01785
execute as @s[scores={cutSceneTimer=149}] run tp @s 5118.637 51.08651 10091.47 484.2342 -9.893799
execute as @s[scores={cutSceneTimer=150}] run tp @s 5118.355 51.46138 10091.68 484.4147 -9.767517
execute as @s[scores={cutSceneTimer=151}] run tp @s 5118.073 51.83696 10091.89 484.5945 -9.640808
execute as @s[scores={cutSceneTimer=152}] run tp @s 5117.792 52.21324 10092.1 484.7736 -9.513641
execute as @s[scores={cutSceneTimer=153}] run tp @s 5117.508 52.59281 10092.31 484.9532 -9.385162
execute as @s[scores={cutSceneTimer=154}] run tp @s 5117.224 52.97477 10092.52 485.1331 -9.255646
execute as @s[scores={cutSceneTimer=155}] run tp @s 5116.937 53.36006 10092.72 485.3137 -9.124786
execute as @s[scores={cutSceneTimer=156}] run tp @s 5116.645 53.7532 10092.93 485.497 -8.991089
execute as @s[scores={cutSceneTimer=157}] run tp @s 5116.356 54.14153 10093.13 485.6772 -8.858795
execute as @s[scores={cutSceneTimer=158}] run tp @s 5116.063 54.53754 10093.33 485.8602 -8.723694
execute as @s[scores={cutSceneTimer=159}] run tp @s 5115.766 54.93898 10093.53 486.0448 -8.586487
execute as @s[scores={cutSceneTimer=160}] run tp @s 5115.473 55.33515 10093.72 486.2262 -8.450897
execute as @s[scores={cutSceneTimer=161}] run tp @s 5115.171 55.74402 10093.92 486.4126 -8.31076
execute as @s[scores={cutSceneTimer=162}] run tp @s 5114.875 56.14505 10094.12 486.5948 -8.173065
execute as @s[scores={cutSceneTimer=163}] run tp @s 5114.574 56.55349 10094.31 486.7796 -8.032623
execute as @s[scores={cutSceneTimer=164}] run tp @s 5114.275 56.95912 10094.5 486.9625 -7.892944
execute as @s[scores={cutSceneTimer=165}] run tp @s 5113.973 57.3695 10094.68 487.1468 -7.751434
execute as @s[scores={cutSceneTimer=166}] run tp @s 5113.766 57.65121 10094.81 487.2729 -7.654144
execute as @s[scores={cutSceneTimer=167}] run tp @s 5113.461 58.06421 10095.00 487.4574 -7.511353
execute as @s[scores={cutSceneTimer=168}] run tp @s 5113.155 58.48001 10095.18 487.6425 -7.367371
execute as @s[scores={cutSceneTimer=169}] run tp @s 5112.844 58.90342 10095.37 487.8304 -7.22052
execute as @s[scores={cutSceneTimer=170}] run tp @s 5112.531 59.32832 10095.55 488.0184 -7.072937
execute as @s[scores={cutSceneTimer=171}] run tp @s 5112.222 59.7471 10095.73 488.2031 -6.927246
execute as @s[scores={cutSceneTimer=172}] run tp @s 5111.911 60.17015 10095.9 488.3892 -6.779846
execute as @s[scores={cutSceneTimer=173}] run tp @s 5111.6 60.59219 10096.08 488.5744 -6.632599
execute as @s[scores={cutSceneTimer=174}] run tp @s 5111.284 61.02095 10096.25 488.762 -6.482758
execute as @s[scores={cutSceneTimer=175}] run tp @s 5110.97 61.446 10096.42 488.9476 -6.333984
execute as @s[scores={cutSceneTimer=176}] run tp @s 5110.653 61.87528 10096.6 489.1346 -6.183502
execute as @s[scores={cutSceneTimer=177}] run tp @s 5110.335 62.30565 10096.77 489.3217 -6.03241
execute as @s[scores={cutSceneTimer=178}] run tp @s 5110.018 62.7347 10096.93 489.5078 -5.881531
execute as @s[scores={cutSceneTimer=179}] run tp @s 5109.699 63.16498 10097.1 489.694 -5.72998
execute as @s[scores={cutSceneTimer=180}] run tp @s 5109.375 63.60166 10097.26 489.8827 -5.575958
execute as @s[scores={cutSceneTimer=181}] run tp @s 5109.054 64.03412 10097.42 490.0692 -5.423157
execute as @s[scores={cutSceneTimer=182}] run tp @s 5108.729 64.47124 10097.59 490.2574 -5.268494
execute as @s[scores={cutSceneTimer=183}] run tp @s 5108.4 64.91314 10097.75 490.4474 -5.111847
execute as @s[scores={cutSceneTimer=184}] run tp @s 5108.072 65.35355 10097.91 490.6364 -4.955536
execute as @s[scores={cutSceneTimer=185}] run tp @s 5107.747 65.78942 10098.06 490.8232 -4.800537
execute as @s[scores={cutSceneTimer=186}] run tp @s 5107.42 66.22603 10098.22 491.0101 -4.64502
execute as @s[scores={cutSceneTimer=187}] run tp @s 5107.091 66.66571 10098.37 491.1981 -4.488159
execute as @s[scores={cutSceneTimer=188}] run tp @s 5106.755 67.1121 10098.53 491.3887 -4.328644
execute as @s[scores={cutSceneTimer=189}] run tp @s 5106.419 67.55901 10098.68 491.5794 -4.168701
execute as @s[scores={cutSceneTimer=190}] run tp @s 5106.088 67.99767 10098.83 491.7664 -4.011414
execute as @s[scores={cutSceneTimer=191}] run tp @s 5105.757 68.43676 10098.97 491.9534 -3.853699
execute as @s[scores={cutSceneTimer=192}] run tp @s 5105.418 68.88437 10099.12 492.1439 -3.692657
execute as @s[scores={cutSceneTimer=193}] run tp @s 5105.078 69.33256 10099.27 492.3345 -3.531128
execute as @s[scores={cutSceneTimer=194}] run tp @s 5104.741 69.77489 10099.41 492.5225 -3.371399
execute as @s[scores={cutSceneTimer=195}] run tp @s 5104.401 70.22035 10099.55 492.7118 -3.210297
execute as @s[scores={cutSceneTimer=196}] run tp @s 5104.063 70.66256 10099.69 492.8996 -3.050049
execute as @s[scores={cutSceneTimer=197}] run tp @s 5103.725 71.10207 10099.83 493.0862 -2.890533
execute as @s[scores={cutSceneTimer=198}] run tp @s 5103.383 71.54683 10099.96 493.2751 -2.72876
execute as @s[scores={cutSceneTimer=199}] run tp @s 5103.043 71.98595 10100.1 493.4615 -2.568756
execute as @s[scores={cutSceneTimer=200}] run tp @s 5102.702 72.42747 10100.23 493.649 -2.407593
execute as @s[scores={cutSceneTimer=201}] run tp @s 5102.361 72.86591 10100.36 493.8352 -2.247253
execute as @s[scores={cutSceneTimer=202}] run tp @s 5102.015 73.30951 10100.49 494.0236 -2.084686
execute as @s[scores={cutSceneTimer=203}] run tp @s 5101.668 73.75253 10100.62 494.2118 -1.922058
execute as @s[scores={cutSceneTimer=204}] run tp @s 5101.323 74.19226 10100.75 494.3987 -1.760284
execute as @s[scores={cutSceneTimer=205}] run tp @s 5100.978 74.63116 10100.88 494.5854 -1.59848
execute as @s[scores={cutSceneTimer=206}] run tp @s 5100.629 75.07221 10101.00 494.773 -1.435577
execute as @s[scores={cutSceneTimer=207}] run tp @s 5100.279 75.51264 10101.13 494.9605 -1.272552
execute as @s[scores={cutSceneTimer=208}] run tp @s 5100.048 75.80193 10101.21 495.0838 -1.165283
execute as @s[scores={cutSceneTimer=209}] run tp @s 5099.7 76.23779 10101.33 495.2697 -1.003418
execute as @s[scores={cutSceneTimer=210}] run tp @s 5099.351 76.67262 10101.45 495.4553 -0.8415527
execute as @s[scores={cutSceneTimer=211}] run tp @s 5099.001 77.10643 10101.56 495.6406 -0.679718
execute as @s[scores={cutSceneTimer=212}] run tp @s 5098.648 77.54207 10101.68 495.8269 -0.5168457
execute as @s[scores={cutSceneTimer=213}] run tp @s 5098.291 77.98188 10101.79 496.0153 -0.3520203
execute as @s[scores={cutSceneTimer=214}] run tp @s 5097.934 78.4178 10101.91 496.2023 -0.188324
execute as @s[scores={cutSceneTimer=215}] run tp @s 5097.578 78.85204 10102.02 496.3888 -0.02484131
execute as @s[scores={cutSceneTimer=216}] run tp @s 5097.22 79.28513 10102.13 496.5751 0.1386058
execute as @s[scores={cutSceneTimer=217}] run tp @s 5096.869 79.70825 10102.24 496.7574 0.2986694
execute as @s[scores={cutSceneTimer=218}] run tp @s 5096.511 80.13802 10102.35 496.943 0.4616297
execute as @s[scores={cutSceneTimer=219}] run tp @s 5096.12 80.60402 10102.46 497.1445 0.6388164
execute as @s[scores={cutSceneTimer=220}] run tp @s 5095.76 81.03125 10102.57 497.3298 0.8016801
execute as @s[scores={cutSceneTimer=221}] run tp @s 5095.4 81.45544 10102.67 497.514 0.9638251
execute as @s[scores={cutSceneTimer=222}] run tp @s 5095.043 81.87386 10102.77 497.6962 1.124167
execute as @s[scores={cutSceneTimer=223}] run tp @s 5094.687 82.28883 10102.87 497.8774 1.28363
execute as @s[scores={cutSceneTimer=224}] run tp @s 5094.33 82.70184 10102.97 498.0581 1.442771
execute as @s[scores={cutSceneTimer=225}] run tp @s 5093.973 83.11266 10103.07 498.2383 1.601504
execute as @s[scores={cutSceneTimer=226}] run tp @s 5093.616 83.52141 10103.16 498.4181 1.759883
execute as @s[scores={cutSceneTimer=227}] run tp @s 5093.375 83.7962 10103.22 498.5393 1.866625
execute as @s[scores={cutSceneTimer=228}] run tp @s 5093.015 84.2037 10103.32 498.7194 2.025304
execute as @s[scores={cutSceneTimer=229}] run tp @s 5092.657 84.60616 10103.41 498.8979 2.182482
execute as @s[scores={cutSceneTimer=230}] run tp @s 5092.277 85.0296 10103.5 499.0863 2.348371
execute as @s[scores={cutSceneTimer=231}] run tp @s 5091.92 85.42494 10103.59 499.2628 2.503757
execute as @s[scores={cutSceneTimer=232}] run tp @s 5091.56 85.82223 10103.68 499.4407 2.660408
execute as @s[scores={cutSceneTimer=233}] run tp @s 5091.202 86.21219 10103.76 499.6161 2.814678
execute as @s[scores={cutSceneTimer=234}] run tp @s 5090.838 86.60645 10103.84 499.794 2.971158
execute as @s[scores={cutSceneTimer=235}] run tp @s 5090.481 86.99069 10103.93 499.9681 3.124194
execute as @s[scores={cutSceneTimer=236}] run tp @s 5090.117 87.37962 10104.01 500.1451 3.279633
execute as @s[scores={cutSceneTimer=237}] run tp @s 5089.757 87.76051 10104.09 500.3192 3.432412
execute as @s[scores={cutSceneTimer=238}] run tp @s 5089.395 88.14082 10104.17 500.4937 3.585524
execute as @s[scores={cutSceneTimer=239}] run tp @s 5089.03 88.52046 10104.24 500.6688 3.738946
execute as @s[scores={cutSceneTimer=240}] run tp @s 5088.669 88.89201 10104.32 500.8409 3.889675
execute as @s[scores={cutSceneTimer=241}] run tp @s 5088.307 89.26288 10104.39 501.0136 4.040726
execute as @s[scores={cutSceneTimer=242}] run tp @s 5087.944 89.63037 10104.46 501.1856 4.191005
execute as @s[scores={cutSceneTimer=243}] run tp @s 5087.577 89.99899 10104.53 501.359 4.342379
execute as @s[scores={cutSceneTimer=244}] run tp @s 5087.211 90.36188 10104.6 501.5308 4.492056
execute as @s[scores={cutSceneTimer=245}] run tp @s 5086.846 90.72117 10104.67 501.7017 4.640898
execute as @s[scores={cutSceneTimer=246}] run tp @s 5086.488 91.06993 10104.74 501.8687 4.786038
execute as @s[scores={cutSceneTimer=247}] run tp @s 5086.129 91.41505 10104.8 502.035 4.930319
execute as @s[scores={cutSceneTimer=248}] run tp @s 5085.765 91.76297 10104.87 502.2036 5.076468
execute as @s[scores={cutSceneTimer=249}] run tp @s 5085.401 92.10554 10104.93 502.3706 5.221178
execute as @s[scores={cutSceneTimer=250}] run tp @s 5085.04 92.44479 10104.99 502.5357 5.365673
execute as @s[scores={cutSceneTimer=251}] run tp @s 5084.671 92.78748 10105.05 502.7026 5.512862
execute as @s[scores={cutSceneTimer=252}] run tp @s 5084.424 93.01542 10105.09 502.8137 5.61145
execute as @s[scores={cutSceneTimer=253}] run tp @s 5084.058 93.35208 10105.15 502.9779 5.758028
execute as @s[scores={cutSceneTimer=254}] run tp @s 5083.69 93.688 10105.21 503.1418 5.90544
execute as @s[scores={cutSceneTimer=255}] run tp @s 5083.323 94.02061 10105.27 503.3043 6.052523
execute as @s[scores={cutSceneTimer=256}] run tp @s 5082.946 94.36066 10105.33 503.4705 6.204035
execute as @s[scores={cutSceneTimer=257}] run tp @s 5082.574 94.6933 10105.39 503.6333 6.353358
execute as @s[scores={cutSceneTimer=258}] run tp @s 5082.197 95.0275 10105.45 503.7969 6.504463
execute as @s[scores={cutSceneTimer=259}] run tp @s 5081.825 95.35618 10105.5 503.958 6.654132
execute as @s[scores={cutSceneTimer=260}] run tp @s 5081.444 95.69014 10105.56 504.1218 6.807264
execute as @s[scores={cutSceneTimer=261}] run tp @s 5081.064 96.02115 10105.61 504.2844 6.960074
execute as @s[scores={cutSceneTimer=262}] run tp @s 5080.683 96.35101 10105.67 504.4465 7.11338
execute as @s[scores={cutSceneTimer=263}] run tp @s 5080.306 96.67567 10105.72 504.6063 7.265246
execute as @s[scores={cutSceneTimer=264}] run tp @s 5079.927 96.99936 10105.78 504.7658 7.417607
execute as @s[scores={cutSceneTimer=265}] run tp @s 5079.544 97.32381 10105.83 504.9258 7.571275
execute as @s[scores={cutSceneTimer=266}] run tp @s 5079.156 97.65166 10105.88 505.0876 7.727498
execute as @s[scores={cutSceneTimer=267}] run tp @s 5078.769 97.9764 10105.94 505.2481 7.883162
execute as @s[scores={cutSceneTimer=268}] run tp @s 5078.378 98.30212 10105.99 505.4094 8.040212
execute as @s[scores={cutSceneTimer=269}] run tp @s 5077.994 98.62059 10106.04 505.5671 8.19462
execute as @s[scores={cutSceneTimer=270}] run tp @s 5077.608 98.93801 10106.09 505.7247 8.349384
execute as @s[scores={cutSceneTimer=271}] run tp @s 5077.222 99.25438 10106.14 505.8819 8.504447
execute as @s[scores={cutSceneTimer=272}] run tp @s 5076.824 99.57773 10106.19 506.0427 8.663772
execute as @s[scores={cutSceneTimer=273}] run tp @s 5076.431 99.89584 10106.24 506.2012 8.821324
execute as @s[scores={cutSceneTimer=274}] run tp @s 5076.041 100.209 10106.29 506.3575 8.977224
execute as @s[scores={cutSceneTimer=275}] run tp @s 5075.651 100.5211 10106.33 506.5134 9.133307
execute as @s[scores={cutSceneTimer=276}] run tp @s 5075.257 100.834 10106.38 506.67 9.290518
execute as @s[scores={cutSceneTimer=277}] run tp @s 5074.862 101.146 10106.43 506.8264 9.448039
execute as @s[scores={cutSceneTimer=278}] run tp @s 5074.469 101.4547 10106.47 506.9813 9.604596
execute as @s[scores={cutSceneTimer=279}] run tp @s 5074.07 101.7662 10106.52 507.1379 9.763242
execute as @s[scores={cutSceneTimer=280}] run tp @s 5073.676 102.0728 10106.56 507.2923 9.920032
execute as @s[scores={cutSceneTimer=281}] run tp @s 5073.265 102.3901 10106.61 507.4524 10.08297
execute as @s[scores={cutSceneTimer=282}] run tp @s 5072.866 102.6965 10106.65 507.6072 10.24098
execute as @s[scores={cutSceneTimer=283}] run tp @s 5072.467 103.0014 10106.7 507.7616 10.39883
execute as @s[scores={cutSceneTimer=284}] run tp @s 5072.067 103.3054 10106.74 507.9158 10.55678
execute as @s[scores={cutSceneTimer=285}] run tp @s 5071.666 103.6082 10106.78 508.0697 10.7147
execute as @s[scores={cutSceneTimer=286}] run tp @s 5071.262 103.912 10106.82 508.2243 10.87365
execute as @s[scores={cutSceneTimer=287}] run tp @s 5070.862 104.2106 10106.86 508.3767 11.03043
execute as @s[scores={cutSceneTimer=288}] run tp @s 5070.462 104.508 10106.9 508.5287 11.18712
execute as @s[scores={cutSceneTimer=289}] run tp @s 5070.056 104.808 10106.94 508.6823 11.3456
execute as @s[scores={cutSceneTimer=290}] run tp @s 5069.725 105.0518 10106.98 508.8074 11.47481
execute as @s[scores={cutSceneTimer=291}] run tp @s 5069.315 105.3519 10107.02 508.9617 11.63422
execute as @s[scores={cutSceneTimer=292}] run tp @s 5068.91 105.6468 10107.05 509.1136 11.79138
execute as @s[scores={cutSceneTimer=293}] run tp @s 5068.505 105.9401 10107.09 509.2651 11.94806
execute as @s[scores={cutSceneTimer=294}] run tp @s 5068.097 106.2347 10107.13 509.4175 12.10583
execute as @s[scores={cutSceneTimer=295}] run tp @s 5067.688 106.5277 10107.17 509.5695 12.26313
execute as @s[scores={cutSceneTimer=296}] run tp @s 5067.278 106.8206 10107.2 509.7218 12.42072
execute as @s[scores={cutSceneTimer=297}] run tp @s 5066.873 107.1084 10107.24 509.8718 12.57591
execute as @s[scores={cutSceneTimer=298}] run tp @s 5066.46 107.3997 10107.27 510.024 12.73334
execute as @s[scores={cutSceneTimer=299}] run tp @s 5066.042 107.6931 10107.31 510.1777 12.89224
execute as @s[scores={cutSceneTimer=300}] run tp @s 5065.637 107.9764 10107.34 510.3264 13.04588
execute as @s[scores={cutSceneTimer=301}] run tp @s 5065.231 108.2584 10107.38 510.4749 13.19911
execute as @s[scores={cutSceneTimer=302}] run tp @s 5064.818 108.5445 10107.41 510.6259 13.35484
execute as @s[scores={cutSceneTimer=303}] run tp @s 5064.404 108.8295 10107.44 510.7767 13.51016
execute as @s[scores={cutSceneTimer=304}] run tp @s 5064.128 109.0189 10107.46 510.8771 13.6135
execute as @s[scores={cutSceneTimer=305}] run tp @s 5063.717 109.2997 10107.5 511.0264 13.76685
execute as @s[scores={cutSceneTimer=306}] run tp @s 5063.311 109.5758 10107.53 511.1736 13.9178
execute as @s[scores={cutSceneTimer=307}] run tp @s 5062.902 109.8522 10107.56 511.3214 14.06906
execute as @s[scores={cutSceneTimer=308}] run tp @s 5062.495 110.1259 10107.59 511.4681 14.21891
execute as @s[scores={cutSceneTimer=309}] run tp @s 5062.083 110.4017 10107.62 511.6165 14.3701
execute as @s[scores={cutSceneTimer=310}] run tp @s 5061.677 110.6728 10107.64 511.7626 14.51872
execute as @s[scores={cutSceneTimer=311}] run tp @s 5061.265 110.946 10107.67 511.9105 14.66858
execute as @s[scores={cutSceneTimer=312}] run tp @s 5060.853 111.2178 10107.7 512.058 14.81777
execute as @s[scores={cutSceneTimer=313}] run tp @s 5060.438 111.49 10107.73 512.2062 14.96716
execute as @s[scores={cutSceneTimer=314}] run tp @s 5060.027 111.7593 10107.75 512.3533 15.11491
execute as @s[scores={cutSceneTimer=315}] run tp @s 5059.621 112.0238 10107.78 512.4982 15.26002
execute as @s[scores={cutSceneTimer=316}] run tp @s 5059.214 112.2869 10107.8 512.6429 15.40437
execute as @s[scores={cutSceneTimer=317}] run tp @s 5058.806 112.5503 10107.83 512.7882 15.54876
execute as @s[scores={cutSceneTimer=318}] run tp @s 5058.397 112.8125 10107.85 512.9333 15.69243
execute as @s[scores={cutSceneTimer=319}] run tp @s 5057.991 113.0717 10107.88 513.0773 15.83432
execute as @s[scores={cutSceneTimer=320}] run tp @s 5057.581 113.3328 10107.9 513.2228 15.97715
execute as @s[scores={cutSceneTimer=321}] run tp @s 5057.167 113.5942 10107.92 513.3691 16.11998
execute as @s[scores={cutSceneTimer=322}] run tp @s 5056.754 113.8545 10107.94 513.5153 16.26199
execute as @s[scores={cutSceneTimer=323}] run tp @s 5056.342 114.1129 10107.96 513.6609 16.4028
execute as @s[scores={cutSceneTimer=324}] run tp @s 5055.932 114.3686 10107.99 513.8056 16.5419
execute as @s[scores={cutSceneTimer=325}] run tp @s 5055.525 114.6212 10108.01 513.9491 16.67909
execute as @s[scores={cutSceneTimer=326}] run tp @s 5055.12 114.8723 10108.03 514.0923 16.81517
execute as @s[scores={cutSceneTimer=327}] run tp @s 5054.711 115.1237 10108.04 514.2362 16.95112
execute as @s[scores={cutSceneTimer=328}] run tp @s 5054.308 115.3705 10108.06 514.3781 17.08429
execute as @s[scores={cutSceneTimer=329}] run tp @s 5053.898 115.6206 10108.08 514.5224 17.21887
execute as @s[scores={cutSceneTimer=330}] run tp @s 5053.488 115.8694 10108.1 514.6666 17.35241
execute as @s[scores={cutSceneTimer=331}] run tp @s 5053.079 116.1165 10108.12 514.8105 17.48465
execute as @s[scores={cutSceneTimer=332}] run tp @s 5052.678 116.3576 10108.13 514.9515 17.61329
execute as @s[scores={cutSceneTimer=333}] run tp @s 5052.271 116.6019 10108.15 515.095 17.74317
execute as @s[scores={cutSceneTimer=334}] run tp @s 5051.863 116.8448 10108.16 515.2382 17.87184
execute as @s[scores={cutSceneTimer=335}] run tp @s 5051.459 117.0844 10108.18 515.3801 17.99825
execute as @s[scores={cutSceneTimer=336}] run tp @s 5051.188 117.2444 10108.19 515.4753 18.08241
execute as @s[scores={cutSceneTimer=337}] run tp @s 5050.788 117.4803 10108.2 515.6163 18.20607
execute as @s[scores={cutSceneTimer=338}] run tp @s 5050.391 117.7132 10108.21 515.756 18.3276
execute as @s[scores={cutSceneTimer=339}] run tp @s 5049.989 117.9476 10108.23 515.8973 18.4493
execute as @s[scores={cutSceneTimer=340}] run tp @s 5049.591 118.179 10108.24 516.0375 18.56892
execute as @s[scores={cutSceneTimer=341}] run tp @s 5049.191 118.4103 10108.25 516.1783 18.68783
execute as @s[scores={cutSceneTimer=342}] run tp @s 5048.797 118.6375 10108.26 516.3173 18.80394
execute as @s[scores={cutSceneTimer=343}] run tp @s 5048.396 118.8673 10108.27 516.4587 18.92078
execute as @s[scores={cutSceneTimer=344}] run tp @s 5047.996 119.0958 10108.28 516.5999 19.03619
execute as @s[scores={cutSceneTimer=345}] run tp @s 5047.599 119.3213 10108.29 516.7401 19.14936
execute as @s[scores={cutSceneTimer=346}] run tp @s 5047.208 119.5423 10108.3 516.8782 19.25955
execute as @s[scores={cutSceneTimer=347}] run tp @s 5046.815 119.7632 10108.31 517.017 19.36892
execute as @s[scores={cutSceneTimer=348}] run tp @s 5046.427 119.9812 10108.31 517.1547 19.47606
execute as @s[scores={cutSceneTimer=349}] run tp @s 5046.039 120.1977 10108.32 517.2922 19.58164
execute as @s[scores={cutSceneTimer=350}] run tp @s 5045.647 120.4152 10108.33 517.4312 19.68683
execute as @s[scores={cutSceneTimer=351}] run tp @s 5045.256 120.6316 10108.33 517.5701 19.79058
execute as @s[scores={cutSceneTimer=352}] run tp @s 5044.871 120.8435 10108.34 517.7071 19.89131
execute as @s[scores={cutSceneTimer=353}] run tp @s 5044.482 121.0564 10108.34 517.8456 19.99158
execute as @s[scores={cutSceneTimer=354}] run tp @s 5044.1 121.2653 10108.35 517.9821 20.08894
execute as @s[scores={cutSceneTimer=355}] run tp @s 5043.711 121.4765 10108.35 518.1212 20.18641
execute as @s[scores={cutSceneTimer=356}] run tp @s 5043.328 121.6836 10108.35 518.2583 20.28094
execute as @s[scores={cutSceneTimer=357}] run tp @s 5042.949 121.8878 10108.36 518.3943 20.37309
execute as @s[scores={cutSceneTimer=358}] run tp @s 5042.571 122.0904 10108.36 518.5302 20.46344
execute as @s[scores={cutSceneTimer=359}] run tp @s 5042.191 122.2926 10108.36 518.6667 20.55254
execute as @s[scores={cutSceneTimer=360}] run tp @s 5041.813 122.4932 10108.36 518.803 20.63976
execute as @s[scores={cutSceneTimer=361}] run tp @s 5041.439 122.691 10108.36 518.9384 20.72464
execute as @s[scores={cutSceneTimer=362}] run tp @s 5041.063 122.8886 10108.36 519.0743 20.8089
execute as @s[scores={cutSceneTimer=363}] run tp @s 5040.684 123.0847 10108.35 519.21 20.89238
execute as @s[scores={cutSceneTimer=364}] run tp @s 5040.307 123.2783 10108.35 519.3447 20.97462
execute as @s[scores={cutSceneTimer=365}] run tp @s 5039.929 123.4704 10108.34 519.479 21.05611
execute as @s[scores={cutSceneTimer=366}] run tp @s 5039.55 123.6611 10108.33 519.613 21.13685
execute as @s[scores={cutSceneTimer=367}] run tp @s 5039.168 123.8514 10108.31 519.7476 21.21726
execute as @s[scores={cutSceneTimer=368}] run tp @s 5038.785 124.0405 10108.29 519.8819 21.29701
execute as @s[scores={cutSceneTimer=369}] run tp @s 5038.398 124.2293 10108.27 520.0168 21.37649
execute as @s[scores={cutSceneTimer=370}] run tp @s 5038.015 124.4144 10108.25 520.1498 21.45421
execute as @s[scores={cutSceneTimer=371}] run tp @s 5037.626 124.6003 10108.23 520.2841 21.53214
execute as @s[scores={cutSceneTimer=372}] run tp @s 5037.236 124.7857 10108.2 520.4187 21.60964
execute as @s[scores={cutSceneTimer=373}] run tp @s 5036.843 124.97 10108.17 520.5533 21.68655
execute as @s[scores={cutSceneTimer=374}] run tp @s 5036.457 125.1494 10108.14 520.6852 21.76123
execute as @s[scores={cutSceneTimer=375}] run tp @s 5036.063 125.3308 10108.1 520.8193 21.83661
execute as @s[scores={cutSceneTimer=376}] run tp @s 5035.668 125.5108 10108.07 520.9531 21.9112
execute as @s[scores={cutSceneTimer=377}] run tp @s 5035.273 125.6893 10108.03 521.0866 21.98498
execute as @s[scores={cutSceneTimer=378}] run tp @s 5035.009 125.8077 10108.00 521.1756 22.03381
execute as @s[scores={cutSceneTimer=379}] run tp @s 5034.615 125.9827 10107.96 521.3078 22.10583
execute as @s[scores={cutSceneTimer=380}] run tp @s 5034.224 126.155 10107.91 521.4388 22.1766
execute as @s[scores={cutSceneTimer=381}] run tp @s 5033.835 126.325 10107.86 521.5688 22.24619
execute as @s[scores={cutSceneTimer=382}] run tp @s 5033.437 126.4969 10107.81 521.7011 22.31643
execute as @s[scores={cutSceneTimer=383}] run tp @s 5033.044 126.6651 10107.76 521.8314 22.38494
execute as @s[scores={cutSceneTimer=384}] run tp @s 5032.649 126.8331 10107.71 521.9623 22.45318
execute as @s[scores={cutSceneTimer=385}] run tp @s 5032.258 126.9975 10107.65 522.0913 22.51976
execute as @s[scores={cutSceneTimer=386}] run tp @s 5031.867 127.1605 10107.59 522.22 22.58558
execute as @s[scores={cutSceneTimer=387}] run tp @s 5031.476 127.3221 10107.53 522.3484 22.65067
execute as @s[scores={cutSceneTimer=388}] run tp @s 5031.077 127.4853 10107.47 522.4789 22.71617
execute as @s[scores={cutSceneTimer=389}] run tp @s 5030.678 127.6472 10107.4 522.6094 22.78096
execute as @s[scores={cutSceneTimer=390}] run tp @s 5030.284 127.8057 10107.34 522.7379 22.84418
execute as @s[scores={cutSceneTimer=391}] run tp @s 5029.891 127.9628 10107.27 522.8661 22.90661
execute as @s[scores={cutSceneTimer=392}] run tp @s 5029.497 128.1184 10107.2 522.9941 22.96827
execute as @s[scores={cutSceneTimer=393}] run tp @s 5029.09 128.2778 10107.12 523.126 23.0312
execute as @s[scores={cutSceneTimer=394}] run tp @s 5028.696 128.4307 10107.05 523.2535 23.09133
execute as @s[scores={cutSceneTimer=395}] run tp @s 5028.3 128.5831 10106.97 523.3816 23.15109
execute as @s[scores={cutSceneTimer=396}] run tp @s 5027.909 128.7323 10106.89 523.5078 23.20934
execute as @s[scores={cutSceneTimer=397}] run tp @s 5027.511 128.883 10106.81 523.6362 23.26797
execute as @s[scores={cutSceneTimer=398}] run tp @s 5027.116 129.0313 10106.73 523.7635 23.32542
execute as @s[scores={cutSceneTimer=399}] run tp @s 5026.72 129.1782 10106.64 523.8906 23.38212
execute as @s[scores={cutSceneTimer=400}] run tp @s 5026.331 129.3219 10106.56 524.0158 23.43735
execute as @s[scores={cutSceneTimer=401}] run tp @s 5025.937 129.466 10106.47 524.1423 23.49248
execute as @s[scores={cutSceneTimer=402}] run tp @s 5025.54 129.6097 10106.38 524.2695 23.54725
execute as @s[scores={cutSceneTimer=403}] run tp @s 5025.144 129.752 10106.29 524.3965 23.60123
execute as @s[scores={cutSceneTimer=404}] run tp @s 5024.749 129.8929 10106.19 524.5233 23.65443
execute as @s[scores={cutSceneTimer=405}] run tp @s 5024.354 130.0325 10106.1 524.6498 23.70687
execute as @s[scores={cutSceneTimer=406}] run tp @s 5023.967 130.1679 10106.00 524.7736 23.75751
execute as @s[scores={cutSceneTimer=407}] run tp @s 5023.579 130.3029 10105.9 524.8981 23.80774
execute as @s[scores={cutSceneTimer=408}] run tp @s 5023.192 130.4362 10105.8 525.0219 23.85708
execute as @s[scores={cutSceneTimer=409}] run tp @s 5022.931 130.5257 10105.73 525.1056 23.89007
execute as @s[scores={cutSceneTimer=410}] run tp @s 5022.547 130.6562 10105.63 525.2286 23.93797
execute as @s[scores={cutSceneTimer=411}] run tp @s 5022.157 130.7878 10105.53 525.3537 23.98598
execute as @s[scores={cutSceneTimer=412}] run tp @s 5021.771 130.9165 10105.42 525.4771 24.03267
execute as @s[scores={cutSceneTimer=413}] run tp @s 5021.39 131.043 10105.31 525.5994 24.07832
execute as @s[scores={cutSceneTimer=414}] run tp @s 5021.005 131.1697 10105.2 525.7231 24.12377
execute as @s[scores={cutSceneTimer=415}] run tp @s 5020.618 131.2959 10105.09 525.8474 24.16872
execute as @s[scores={cutSceneTimer=416}] run tp @s 5020.232 131.4208 10104.98 525.9714 24.21295
execute as @s[scores={cutSceneTimer=417}] run tp @s 5019.847 131.5443 10104.86 526.0954 24.25639
execute as @s[scores={cutSceneTimer=418}] run tp @s 5019.471 131.6641 10104.75 526.2167 24.29824
execute as @s[scores={cutSceneTimer=419}] run tp @s 5019.091 131.784 10104.63 526.3392 24.33984
execute as @s[scores={cutSceneTimer=420}] run tp @s 5018.717 131.9011 10104.51 526.4601 24.38017
execute as @s[scores={cutSceneTimer=421}] run tp @s 5018.335 132.0198 10104.39 526.5839 24.42074
execute as @s[scores={cutSceneTimer=422}] run tp @s 5017.958 132.1357 10104.27 526.7058 24.46006
execute as @s[scores={cutSceneTimer=423}] run tp @s 5017.586 132.2495 10104.15 526.8268 24.49835
execute as @s[scores={cutSceneTimer=424}] run tp @s 5017.212 132.3627 10104.03 526.9484 24.53616
execute as @s[scores={cutSceneTimer=425}] run tp @s 5016.843 132.4739 10103.9 527.069 24.57294
execute as @s[scores={cutSceneTimer=426}] run tp @s 5016.472 132.5844 10103.78 527.1902 24.60919
execute as @s[scores={cutSceneTimer=427}] run tp @s 5016.107 132.6922 10103.65 527.3096 24.64423
execute as @s[scores={cutSceneTimer=428}] run tp @s 5015.74 132.8001 10103.52 527.4305 24.67897
execute as @s[scores={cutSceneTimer=429}] run tp @s 5015.378 132.9053 10103.39 527.5495 24.71251
execute as @s[scores={cutSceneTimer=430}] run tp @s 5015.014 133.0105 10103.26 527.6699 24.74571
execute as @s[scores={cutSceneTimer=431}] run tp @s 5014.656 133.113 10103.13 527.7886 24.77774
execute as @s[scores={cutSceneTimer=432}] run tp @s 5014.299 133.2143 10103.00 527.907 24.80904
execute as @s[scores={cutSceneTimer=433}] run tp @s 5013.944 133.3143 10102.87 528.0253 24.83957
execute as @s[scores={cutSceneTimer=434}] run tp @s 5013.587 133.4141 10102.73 528.1448 24.86972
execute as @s[scores={cutSceneTimer=435}] run tp @s 5013.235 133.5114 10102.59 528.2628 24.89875
execute as @s[scores={cutSceneTimer=436}] run tp @s 5012.886 133.6075 10102.46 528.3806 24.92706
execute as @s[scores={cutSceneTimer=437}] run tp @s 5012.538 133.7023 10102.32 528.4981 24.95459
execute as @s[scores={cutSceneTimer=438}] run tp @s 5012.191 133.7963 10102.18 528.6161 24.98152
execute as @s[scores={cutSceneTimer=439}] run tp @s 5011.847 133.8885 10102.04 528.7333 25.00758
execute as @s[scores={cutSceneTimer=440}] run tp @s 5011.528 133.9734 10101.91 528.8425 25.03123
execute as @s[scores={cutSceneTimer=441}] run tp @s 5011.188 134.0631 10101.77 528.9595 25.05584
execute as @s[scores={cutSceneTimer=442}] run tp @s 5010.847 134.1523 10101.63 529.0771 25.0799
execute as @s[scores={cutSceneTimer=443}] run tp @s 5010.51 134.24 10101.48 529.1944 25.10313
execute as @s[scores={cutSceneTimer=444}] run tp @s 5010.169 134.3276 10101.34 529.3131 25.12594
execute as @s[scores={cutSceneTimer=445}] run tp @s 5009.836 134.4126 10101.19 529.43 25.14766
execute as @s[scores={cutSceneTimer=446}] run tp @s 5009.503 134.4969 10101.04 529.5475 25.16875
execute as @s[scores={cutSceneTimer=447}] run tp @s 5009.176 134.5789 10100.9 529.6633 25.18884
execute as @s[scores={cutSceneTimer=448}] run tp @s 5008.846 134.6612 10100.75 529.7812 25.20855
execute as @s[scores={cutSceneTimer=449}] run tp @s 5008.524 134.7406 10100.6 529.8967 25.22713
execute as @s[scores={cutSceneTimer=450}] run tp @s 5008.198 134.8202 10100.45 530.0143 25.2453
execute as @s[scores={cutSceneTimer=451}] run tp @s 5007.879 134.8975 10100.3 530.1302 25.26249
execute as @s[scores={cutSceneTimer=452}] run tp @s 5007.561 134.9741 10100.15 530.2467 25.27901
execute as @s[scores={cutSceneTimer=453}] run tp @s 5007.242 135.0498 10100.00 530.3638 25.29487
execute as @s[scores={cutSceneTimer=454}] run tp @s 5006.933 135.1228 10099.84 530.4785 25.30968
execute as @s[scores={cutSceneTimer=455}] run tp @s 5006.622 135.1955 10099.69 530.5945 25.32392
execute as @s[scores={cutSceneTimer=456}] run tp @s 5006.316 135.2664 10099.54 530.7097 25.33729
execute as @s[scores={cutSceneTimer=457}] run tp @s 5006.111 135.3136 10099.43 530.7874 25.34591
execute as @s[scores={cutSceneTimer=458}] run tp @s 5005.806 135.3833 10099.28 530.9038 25.35819
execute as @s[scores={cutSceneTimer=459}] run tp @s 5005.505 135.4512 10099.12 531.0192 25.36962
execute as @s[scores={cutSceneTimer=460}] run tp @s 5005.211 135.517 10098.97 531.133 25.38016
execute as @s[scores={cutSceneTimer=461}] run tp @s 5004.914 135.5828 10098.81 531.249 25.39012
execute as @s[scores={cutSceneTimer=462}] run tp @s 5004.619 135.6477 10098.65 531.3654 25.39938
execute as @s[scores={cutSceneTimer=463}] run tp @s 5004.33 135.7105 10098.49 531.4803 25.40774
execute as @s[scores={cutSceneTimer=464}] run tp @s 5004.048 135.7713 10098.33 531.5936 25.41525
execute as @s[scores={cutSceneTimer=465}] run tp @s 5003.767 135.8311 10098.18 531.7074 25.42205
execute as @s[scores={cutSceneTimer=466}] run tp @s 5003.491 135.8894 10098.02 531.8204 25.42807
execute as @s[scores={cutSceneTimer=467}] run tp @s 5003.212 135.9475 10097.86 531.9354 25.43344
execute as @s[scores={cutSceneTimer=468}] run tp @s 5002.943 136.0033 10097.7 532.0482 25.43794
execute as @s[scores={cutSceneTimer=469}] run tp @s 5002.675 136.0581 10097.54 532.1614 25.44172
execute as @s[scores={cutSceneTimer=470}] run tp @s 5002.408 136.112 10097.38 532.2752 25.44476
execute as @s[scores={cutSceneTimer=471}] run tp @s 5002.143 136.1651 10097.22 532.3898 25.44706
execute as @s[scores={cutSceneTimer=472}] run tp @s 5001.881 136.2168 10097.06 532.5041 25.44859
execute as @s[scores={cutSceneTimer=473}] run tp @s 5001.623 136.2673 10096.9 532.6183 25.44934
execute as @s[scores={cutSceneTimer=474}] run tp @s 5001.368 136.3166 10096.73 532.7321 25.44925
execute as @s[scores={cutSceneTimer=475}] run tp @s 5001.119 136.3648 10096.57 532.8437 25.448
execute as @s[scores={cutSceneTimer=476}] run tp @s 5000.87 136.4126 10096.4 532.9553 25.44559
execute as @s[scores={cutSceneTimer=477}] run tp @s 5000.62 136.4608 10096.23 533.0682 25.44195
execute as @s[scores={cutSceneTimer=478}] run tp @s 5000.373 136.5083 10096.06 533.1798 25.43715
execute as @s[scores={cutSceneTimer=479}] run tp @s 5000.128 136.5553 10095.88 533.291 25.43118
execute as @s[scores={cutSceneTimer=480}] run tp @s 4999.886 136.6019 10095.71 533.4018 25.42409
execute as @s[scores={cutSceneTimer=481}] run tp @s 4999.646 136.6476 10095.53 533.5112 25.41594
execute as @s[scores={cutSceneTimer=482}] run tp @s 4999.413 136.6924 10095.35 533.6189 25.40681
execute as @s[scores={cutSceneTimer=483}] run tp @s 4999.18 136.7368 10095.17 533.7262 25.39664
execute as @s[scores={cutSceneTimer=484}] run tp @s 4999.024 136.7667 10095.05 533.7988 25.38915
execute as @s[scores={cutSceneTimer=485}] run tp @s 4998.793 136.8106 10094.86 533.9059 25.37717
execute as @s[scores={cutSceneTimer=486}] run tp @s 4998.563 136.8544 10094.67 534.0134 25.3641
execute as @s[scores={cutSceneTimer=487}] run tp @s 4998.334 136.898 10094.48 534.1213 25.34989
execute as @s[scores={cutSceneTimer=488}] run tp @s 4998.108 136.9409 10094.29 534.228 25.33479
execute as @s[scores={cutSceneTimer=489}] run tp @s 4997.886 136.983 10094.1 534.3336 25.31881
execute as @s[scores={cutSceneTimer=490}] run tp @s 4997.662 137.0254 10093.9 534.4402 25.30164
execute as @s[scores={cutSceneTimer=491}] run tp @s 4997.441 137.0672 10093.7 534.5464 25.28352
execute as @s[scores={cutSceneTimer=492}] run tp @s 4997.226 137.1078 10093.5 534.6503 25.26482
execute as @s[scores={cutSceneTimer=493}] run tp @s 4997.012 137.148 10093.3 534.7538 25.24522
execute as @s[scores={cutSceneTimer=494}] run tp @s 4996.797 137.1885 10093.1 534.859 25.22433
execute as @s[scores={cutSceneTimer=495}] run tp @s 4996.586 137.228 10092.9 534.9625 25.20285
execute as @s[scores={cutSceneTimer=496}] run tp @s 4996.375 137.2674 10092.69 535.0664 25.18034
execute as @s[scores={cutSceneTimer=497}] run tp @s 4996.17 137.3059 10092.49 535.1686 25.15728
execute as @s[scores={cutSceneTimer=498}] run tp @s 4995.962 137.3446 10092.27 535.2725 25.13293
execute as @s[scores={cutSceneTimer=499}] run tp @s 4995.759 137.3824 10092.06 535.3748 25.10806
execute as @s[scores={cutSceneTimer=500}] run tp @s 4995.559 137.4196 10091.85 535.4761 25.08258
execute as @s[scores={cutSceneTimer=501}] run tp @s 4995.36 137.4565 10091.64 535.5778 25.05617
execute as @s[scores={cutSceneTimer=502}] run tp @s 4995.161 137.4933 10091.43 535.6799 25.02879
execute as @s[scores={cutSceneTimer=503}] run tp @s 4994.964 137.5296 10091.21 535.7819 25.00064
execute as @s[scores={cutSceneTimer=504}] run tp @s 4994.769 137.5657 10090.99 535.8842 24.97158
execute as @s[scores={cutSceneTimer=505}] run tp @s 4994.575 137.6013 10090.77 535.9861 24.9418
execute as @s[scores={cutSceneTimer=506}] run tp @s 4994.382 137.6366 10090.54 536.088 24.91127
execute as @s[scores={cutSceneTimer=507}] run tp @s 4994.196 137.6707 10090.33 536.1876 24.88065
execute as @s[scores={cutSceneTimer=508}] run tp @s 4994.011 137.7044 10090.1 536.2871 24.84934
execute as @s[scores={cutSceneTimer=509}] run tp @s 4993.827 137.7378 10089.88 536.3868 24.81725
execute as @s[scores={cutSceneTimer=510}] run tp @s 4993.644 137.771 10089.66 536.4872 24.78426
execute as @s[scores={cutSceneTimer=511}] run tp @s 4993.461 137.8041 10089.43 536.588 24.75042
execute as @s[scores={cutSceneTimer=512}] run tp @s 4993.282 137.8364 10089.2 536.688 24.71615
execute as @s[scores={cutSceneTimer=513}] run tp @s 4993.105 137.8681 10088.97 536.7872 24.68155
execute as @s[scores={cutSceneTimer=514}] run tp @s 4992.932 137.8992 10088.75 536.8856 24.64658
execute as @s[scores={cutSceneTimer=515}] run tp @s 4992.759 137.9303 10088.52 536.985 24.61062
execute as @s[scores={cutSceneTimer=516}] run tp @s 4992.643 137.9509 10088.36 537.0517 24.58618
execute as @s[scores={cutSceneTimer=517}] run tp @s 4992.47 137.9816 10088.13 537.1523 24.54878
execute as @s[scores={cutSceneTimer=518}] run tp @s 4992.303 138.0112 10087.89 537.2509 24.51162
execute as @s[scores={cutSceneTimer=519}] run tp @s 4992.136 138.0407 10087.66 537.35 24.47368
execute as @s[scores={cutSceneTimer=520}] run tp @s 4991.97 138.0699 10087.42 537.4496 24.43502
execute as @s[scores={cutSceneTimer=521}] run tp @s 4991.808 138.0982 10087.19 537.5478 24.39639
execute as @s[scores={cutSceneTimer=522}] run tp @s 4991.647 138.1263 10086.96 537.6465 24.35705
execute as @s[scores={cutSceneTimer=523}] run tp @s 4991.488 138.154 10086.72 537.7452 24.31725
execute as @s[scores={cutSceneTimer=524}] run tp @s 4991.332 138.181 10086.48 537.8431 24.27736
execute as @s[scores={cutSceneTimer=525}] run tp @s 4991.178 138.2075 10086.25 537.9404 24.23726
execute as @s[scores={cutSceneTimer=526}] run tp @s 4991.025 138.2338 10086.01 538.0389 24.19626
execute as @s[scores={cutSceneTimer=527}] run tp @s 4990.873 138.2598 10085.77 538.1375 24.15486
execute as @s[scores={cutSceneTimer=528}] run tp @s 4990.722 138.2854 10085.53 538.2366 24.11282
execute as @s[scores={cutSceneTimer=529}] run tp @s 4990.572 138.3108 10085.29 538.3364 24.07016
execute as @s[scores={cutSceneTimer=530}] run tp @s 4990.425 138.3355 10085.05 538.4354 24.02745
execute as @s[scores={cutSceneTimer=531}] run tp @s 4990.28 138.3599 10084.81 538.5346 23.9844
execute as @s[scores={cutSceneTimer=532}] run tp @s 4990.137 138.3837 10084.57 538.6337 23.94106
execute as @s[scores={cutSceneTimer=533}] run tp @s 4989.999 138.4067 10084.33 538.731 23.89827
execute as @s[scores={cutSceneTimer=534}] run tp @s 4989.859 138.4297 10084.09 538.8301 23.85439
execute as @s[scores={cutSceneTimer=535}] run tp @s 4989.724 138.4518 10083.85 538.9274 23.81109
execute as @s[scores={cutSceneTimer=536}] run tp @s 4989.588 138.4739 10083.61 539.0266 23.76671
execute as @s[scores={cutSceneTimer=537}] run tp @s 4989.455 138.4955 10083.37 539.1259 23.72217
execute as @s[scores={cutSceneTimer=538}] run tp @s 4989.324 138.5164 10083.13 539.2239 23.67795
execute as @s[scores={cutSceneTimer=539}] run tp @s 4989.195 138.5371 10082.89 539.3228 23.63325
execute as @s[scores={cutSceneTimer=540}] run tp @s 4989.067 138.5573 10082.65 539.4217 23.58838
execute as @s[scores={cutSceneTimer=541}] run tp @s 4988.982 138.5707 10082.48 539.4888 23.55788
execute as @s[scores={cutSceneTimer=542}] run tp @s 4988.859 138.5899 10082.25 539.5865 23.51336
execute as @s[scores={cutSceneTimer=543}] run tp @s 4988.737 138.6089 10082.01 539.6857 23.46815
execute as @s[scores={cutSceneTimer=544}] run tp @s 4988.618 138.6273 10081.77 539.7837 23.42339
execute as @s[scores={cutSceneTimer=545}] run tp @s 4988.5 138.6452 10081.53 539.8818 23.37854
execute as @s[scores={cutSceneTimer=546}] run tp @s 4988.381 138.6631 10081.29 539.9826 23.33247
execute as @s[scores={cutSceneTimer=547}] run tp @s 4988.268 138.6802 10081.05 180.081 23.28748
execute as @s[scores={cutSceneTimer=548}] run tp @s 4988.156 138.6968 10080.82 180.1796 23.24244
execute as @s[scores={cutSceneTimer=549}] run tp @s 4988.045 138.7131 10080.58 180.2789 23.19711
execute as @s[scores={cutSceneTimer=550}] run tp @s 4987.935 138.729 10080.35 180.3791 23.15145
execute as @s[scores={cutSceneTimer=551}] run tp @s 4987.828 138.7445 10080.11 180.4788 23.10607
execute as @s[scores={cutSceneTimer=552}] run tp @s 4987.723 138.7594 10079.88 180.5781 23.06101
execute as @s[scores={cutSceneTimer=553}] run tp @s 4987.62 138.7738 10079.64 180.6776 23.01599
execute as @s[scores={cutSceneTimer=554}] run tp @s 4987.517 138.7881 10079.41 180.7785 22.97047
execute as @s[scores={cutSceneTimer=555}] run tp @s 4987.417 138.8017 10079.17 180.8791 22.92526
execute as @s[scores={cutSceneTimer=556}] run tp @s 4987.318 138.8151 10078.94 180.9805 22.87984
execute as @s[scores={cutSceneTimer=557}] run tp @s 4987.22 138.8281 10078.7 181.0829 22.83421
execute as @s[scores={cutSceneTimer=558}] run tp @s 4987.125 138.8404 10078.47 181.1835 22.78959
execute as @s[scores={cutSceneTimer=559}] run tp @s 4987.033 138.8523 10078.24 181.285 22.74481
execute as @s[scores={cutSceneTimer=560}] run tp @s 4986.942 138.8638 10078.02 181.3862 22.70045
execute as @s[scores={cutSceneTimer=561}] run tp @s 4986.847 138.8755 10077.77 181.4943 22.65334
execute as @s[scores={cutSceneTimer=562}] run tp @s 4986.759 138.8861 10077.55 181.5966 22.60906
execute as @s[scores={cutSceneTimer=563}] run tp @s 4986.674 138.8962 10077.32 181.6986 22.56523
execute as @s[scores={cutSceneTimer=564}] run tp @s 4986.589 138.9061 10077.09 181.8029 22.52077
execute as @s[scores={cutSceneTimer=565}] run tp @s 4986.506 138.9155 10076.87 181.9067 22.47686
execute as @s[scores={cutSceneTimer=566}] run tp @s 4986.426 138.9243 10076.64 182.0097 22.43369
execute as @s[scores={cutSceneTimer=567}] run tp @s 4986.348 138.9327 10076.42 182.113 22.39079
execute as @s[scores={cutSceneTimer=568}] run tp @s 4986.271 138.9407 10076.2 182.2172 22.34792
execute as @s[scores={cutSceneTimer=569}] run tp @s 4986.195 138.9483 10075.98 182.3211 22.30556
execute as @s[scores={cutSceneTimer=570}] run tp @s 4986.122 138.9555 10075.76 182.4267 22.26301
execute as @s[scores={cutSceneTimer=571}] run tp @s 4986.05 138.9622 10075.54 182.532 22.22101
execute as @s[scores={cutSceneTimer=572}] run tp @s 4985.979 138.9685 10075.33 182.6384 22.17907
execute as @s[scores={cutSceneTimer=573}] run tp @s 4985.911 138.9743 10075.11 182.7445 22.13775
execute as @s[scores={cutSceneTimer=574}] run tp @s 4985.844 138.9798 10074.9 182.8517 22.09654
execute as @s[scores={cutSceneTimer=575}] run tp @s 4985.778 138.9848 10074.68 182.9594 22.0557
execute as @s[scores={cutSceneTimer=576}] run tp @s 4985.715 138.9893 10074.47 183.0667 22.01555
execute as @s[scores={cutSceneTimer=577}] run tp @s 4985.673 138.9922 10074.33 183.1394 21.98863
execute as @s[scores={cutSceneTimer=578}] run tp @s 4985.613 138.996 10074.12 183.2482 21.94892
execute as @s[scores={cutSceneTimer=579}] run tp @s 4985.553 138.9994 10073.91 183.3588 21.90914
execute as @s[scores={cutSceneTimer=580}] run tp @s 4985.496 139.0024 10073.7 183.4692 21.87007
execute as @s[scores={cutSceneTimer=581}] run tp @s 4985.44 139.0049 10073.5 183.58 21.83151
execute as @s[scores={cutSceneTimer=582}] run tp @s 4985.386 139.007 10073.29 183.6907 21.79366
execute as @s[scores={cutSceneTimer=583}] run tp @s 4985.335 139.0086 10073.09 183.8003 21.75681
execute as @s[scores={cutSceneTimer=584}] run tp @s 4985.285 139.0098 10072.9 183.911 21.72028
execute as @s[scores={cutSceneTimer=585}] run tp @s 4985.236 139.0105 10072.7 184.0232 21.68401
execute as @s[scores={cutSceneTimer=586}] run tp @s 4985.19 139.0108 10072.5 184.1349 21.64855
execute as @s[scores={cutSceneTimer=587}] run tp @s 4985.145 139.0106 10072.31 184.2473 21.61341
execute as @s[scores={cutSceneTimer=588}] run tp @s 4985.1 139.0096 10072.12 184.3609 21.5779
execute as @s[scores={cutSceneTimer=589}] run tp @s 4985.056 139.0078 10071.93 184.4735 21.54267
execute as @s[scores={cutSceneTimer=590}] run tp @s 4985.012 139.0051 10071.74 184.589 21.50656
execute as @s[scores={cutSceneTimer=591}] run tp @s 4984.968 139.0017 10071.55 184.705 21.4703
execute as @s[scores={cutSceneTimer=592}] run tp @s 4984.925 138.9975 10071.36 184.8193 21.43456
execute as @s[scores={cutSceneTimer=593}] run tp @s 4984.881 138.9926 10071.17 184.9364 21.398
execute as @s[scores={cutSceneTimer=594}] run tp @s 4984.839 138.9868 10070.98 185.0542 21.36125
execute as @s[scores={cutSceneTimer=595}] run tp @s 4984.797 138.9804 10070.79 185.1702 21.32508
execute as @s[scores={cutSceneTimer=596}] run tp @s 4984.756 138.9732 10070.6 185.2876 21.28854
execute as @s[scores={cutSceneTimer=597}] run tp @s 4984.715 138.9654 10070.42 185.4049 21.25209
execute as @s[scores={cutSceneTimer=598}] run tp @s 4984.674 138.9568 10070.23 185.5233 21.21541
execute as @s[scores={cutSceneTimer=599}] run tp @s 4984.634 138.9476 10070.05 185.6424 21.17869
execute as @s[scores={cutSceneTimer=600}] run tp @s 4984.595 138.9376 10069.86 185.763 21.14172
execute as @s[scores={cutSceneTimer=601}] run tp @s 4984.555 138.9269 10069.68 185.8856 21.10429
execute as @s[scores={cutSceneTimer=602}] run tp @s 4984.516 138.9155 10069.49 186.0084 21.06698
execute as @s[scores={cutSceneTimer=603}] run tp @s 4984.477 138.9034 10069.31 186.1329 21.02932
execute as @s[scores={cutSceneTimer=604}] run tp @s 4984.438 138.8906 10069.12 186.2583 20.99155
execute as @s[scores={cutSceneTimer=605}] run tp @s 4984.401 138.8772 10068.94 186.384 20.95387
execute as @s[scores={cutSceneTimer=606}] run tp @s 4984.363 138.8632 10068.76 186.5101 20.91621
execute as @s[scores={cutSceneTimer=607}] run tp @s 4984.326 138.8484 10068.57 186.6381 20.87815
execute as @s[scores={cutSceneTimer=608}] run tp @s 4984.29 138.833 10068.39 186.767 20.83997
execute as @s[scores={cutSceneTimer=609}] run tp @s 4984.253 138.8168 10068.21 186.8975 20.80147
execute as @s[scores={cutSceneTimer=610}] run tp @s 4984.217 138.8003 10068.03 187.0271 20.76342
execute as @s[scores={cutSceneTimer=611}] run tp @s 4984.182 138.7832 10067.85 187.1566 20.7255
execute as @s[scores={cutSceneTimer=612}] run tp @s 4984.158 138.7714 10067.73 187.2442 20.69994
execute as @s[scores={cutSceneTimer=613}] run tp @s 4984.124 138.7534 10067.55 187.375 20.66192
execute as @s[scores={cutSceneTimer=614}] run tp @s 4984.089 138.7345 10067.37 187.5081 20.62336
execute as @s[scores={cutSceneTimer=615}] run tp @s 4984.055 138.7151 10067.19 187.6419 20.5847
execute as @s[scores={cutSceneTimer=616}] run tp @s 4984.021 138.6947 10067.01 187.7789 20.54528
execute as @s[scores={cutSceneTimer=617}] run tp @s 4983.988 138.6742 10066.83 187.9134 20.50674
execute as @s[scores={cutSceneTimer=618}] run tp @s 4983.956 138.6534 10066.66 188.0474 20.46843
execute as @s[scores={cutSceneTimer=619}] run tp @s 4983.923 138.6315 10066.48 188.1846 20.42935
execute as @s[scores={cutSceneTimer=620}] run tp @s 4983.891 138.6096 10066.3 188.32 20.39094
execute as @s[scores={cutSceneTimer=621}] run tp @s 4983.859 138.5867 10066.13 188.4584 20.35177
execute as @s[scores={cutSceneTimer=622}] run tp @s 4983.828 138.5634 10065.95 188.5965 20.31281
execute as @s[scores={cutSceneTimer=623}] run tp @s 4983.797 138.5399 10065.78 188.7334 20.27434
execute as @s[scores={cutSceneTimer=624}] run tp @s 4983.767 138.5157 10065.6 188.8722 20.23543
execute as @s[scores={cutSceneTimer=625}] run tp @s 4983.733 138.4873 10065.4 189.0318 20.19085
execute as @s[scores={cutSceneTimer=626}] run tp @s 4983.704 138.4622 10065.23 189.1706 20.15222
execute as @s[scores={cutSceneTimer=627}] run tp @s 4983.675 138.4367 10065.06 189.3094 20.11368
execute as @s[scores={cutSceneTimer=628}] run tp @s 4983.646 138.4101 10064.89 189.4521 20.07417
execute as @s[scores={cutSceneTimer=629}] run tp @s 4983.626 138.3922 10064.77 189.547 20.04797
execute as @s[scores={cutSceneTimer=630}] run tp @s 4983.599 138.365 10064.6 189.6897 20.00867
execute as @s[scores={cutSceneTimer=631}] run tp @s 4983.571 138.3378 10064.43 189.83 19.97012
execute as @s[scores={cutSceneTimer=632}] run tp @s 4983.544 138.3101 10064.26 189.9715 19.93135
execute as @s[scores={cutSceneTimer=633}] run tp @s 4983.517 138.2817 10064.09 190.1143 19.89235
execute as @s[scores={cutSceneTimer=634}] run tp @s 4983.491 138.2529 10063.92 190.2574 19.85336
execute as @s[scores={cutSceneTimer=635}] run tp @s 4983.465 138.2237 10063.75 190.4007 19.81441
execute as @s[scores={cutSceneTimer=636}] run tp @s 4983.439 138.1945 10063.59 190.5425 19.77599
execute as @s[scores={cutSceneTimer=637}] run tp @s 4983.415 138.1645 10063.42 190.6863 19.73711
execute as @s[scores={cutSceneTimer=638}] run tp @s 4983.39 138.1342 10063.26 190.8299 19.69841
execute as @s[scores={cutSceneTimer=639}] run tp @s 4983.365 138.1035 10063.09 190.9738 19.65971
execute as @s[scores={cutSceneTimer=640}] run tp @s 4983.342 138.0728 10062.93 191.1164 19.62144
execute as @s[scores={cutSceneTimer=641}] run tp @s 4983.318 138.0415 10062.76 191.2602 19.58297
execute as @s[scores={cutSceneTimer=642}] run tp @s 4983.295 138.0097 10062.6 191.405 19.54432
execute as @s[scores={cutSceneTimer=643}] run tp @s 4983.272 137.9773 10062.43 191.5509 19.50548
execute as @s[scores={cutSceneTimer=644}] run tp @s 4983.25 137.9445 10062.27 191.6969 19.46668
execute as @s[scores={cutSceneTimer=645}] run tp @s 4983.228 137.9117 10062.11 191.8421 19.42819
execute as @s[scores={cutSceneTimer=646}] run tp @s 4983.206 137.8781 10061.94 191.9892 19.38933
execute as @s[scores={cutSceneTimer=647}] run tp @s 4983.185 137.845 10061.78 192.1326 19.35152
execute as @s[scores={cutSceneTimer=648}] run tp @s 4983.165 137.8116 10061.62 192.276 19.31377
execute as @s[scores={cutSceneTimer=649}] run tp @s 4983.145 137.7776 10061.46 192.4212 19.27565
execute as @s[scores={cutSceneTimer=650}] run tp @s 4983.125 137.7435 10061.31 192.5655 19.23786
execute as @s[scores={cutSceneTimer=651}] run tp @s 4983.105 137.7086 10061.15 192.7116 19.19967
execute as @s[scores={cutSceneTimer=652}] run tp @s 4983.086 137.6735 10060.99 192.8577 19.16157
execute as @s[scores={cutSceneTimer=653}] run tp @s 4983.067 137.6387 10060.83 193.001 19.12429
execute as @s[scores={cutSceneTimer=654}] run tp @s 4983.049 137.6033 10060.67 193.146 19.08665
execute as @s[scores={cutSceneTimer=655}] run tp @s 4983.032 137.5677 10060.52 193.2908 19.04912
execute as @s[scores={cutSceneTimer=656}] run tp @s 4983.014 137.5318 10060.36 193.4355 19.01173
execute as @s[scores={cutSceneTimer=657}] run tp @s 4982.997 137.4962 10060.21 193.5782 18.97492
execute as @s[scores={cutSceneTimer=658}] run tp @s 4982.98 137.4596 10060.05 193.7236 18.93751
execute as @s[scores={cutSceneTimer=659}] run tp @s 4982.964 137.4228 10059.9 193.8689 18.9002
execute as @s[scores={cutSceneTimer=660}] run tp @s 4982.954 137.3986 10059.8 193.9637 18.8759
execute as @s[scores={cutSceneTimer=661}] run tp @s 4982.938 137.3618 10059.65 194.1075 18.8391
execute as @s[scores={cutSceneTimer=662}] run tp @s 4982.923 137.325 10059.5 194.25 18.80271
execute as @s[scores={cutSceneTimer=663}] run tp @s 4982.909 137.2876 10059.34 194.3942 18.76596
execute as @s[scores={cutSceneTimer=664}] run tp @s 4982.894 137.2499 10059.19 194.5381 18.72935
execute as @s[scores={cutSceneTimer=665}] run tp @s 4982.88 137.2126 10059.04 194.6799 18.69339
execute as @s[scores={cutSceneTimer=666}] run tp @s 4982.867 137.1754 10058.9 194.8204 18.6578
execute as @s[scores={cutSceneTimer=667}] run tp @s 4982.854 137.1381 10058.75 194.9605 18.62239
execute as @s[scores={cutSceneTimer=668}] run tp @s 4982.842 137.1006 10058.6 195.1003 18.58713
execute as @s[scores={cutSceneTimer=669}] run tp @s 4982.83 137.0625 10058.46 195.2413 18.55162
execute as @s[scores={cutSceneTimer=670}] run tp @s 4982.818 137.0246 10058.31 195.3812 18.51649
execute as @s[scores={cutSceneTimer=671}] run tp @s 4982.807 136.9865 10058.17 195.5207 18.48152
execute as @s[scores={cutSceneTimer=672}] run tp @s 4982.796 136.9486 10058.02 195.6589 18.44695
execute as @s[scores={cutSceneTimer=673}] run tp @s 4982.785 136.9104 10057.88 195.7971 18.41243
execute as @s[scores={cutSceneTimer=674}] run tp @s 4982.775 136.8723 10057.74 195.9343 18.37825
execute as @s[scores={cutSceneTimer=675}] run tp @s 4982.765 136.8337 10057.6 196.0728 18.34382
execute as @s[scores={cutSceneTimer=676}] run tp @s 4982.756 136.7947 10057.45 196.2115 18.30939
execute as @s[scores={cutSceneTimer=677}] run tp @s 4982.747 136.7564 10057.31 196.347 18.27582
execute as @s[scores={cutSceneTimer=678}] run tp @s 4982.739 136.7181 10057.17 196.482 18.24245
execute as @s[scores={cutSceneTimer=679}] run tp @s 4982.73 136.6798 10057.04 196.6164 18.2093
execute as @s[scores={cutSceneTimer=680}] run tp @s 4982.723 136.6414 10056.9 196.7502 18.17637
execute as @s[scores={cutSceneTimer=681}] run tp @s 4982.716 136.6024 10056.76 196.8853 18.14319
execute as @s[scores={cutSceneTimer=682}] run tp @s 4982.708 136.5633 10056.62 197.0204 18.11007
execute as @s[scores={cutSceneTimer=683}] run tp @s 4982.702 136.5248 10056.49 197.1522 18.07782
execute as @s[scores={cutSceneTimer=684}] run tp @s 4982.696 136.4864 10056.35 197.2833 18.0458
execute as @s[scores={cutSceneTimer=685}] run tp @s 4982.69 136.4476 10056.22 197.4154 18.01363
execute as @s[scores={cutSceneTimer=686}] run tp @s 4982.685 136.4089 10056.08 197.5459 17.98189
execute as @s[scores={cutSceneTimer=687}] run tp @s 4982.681 136.3706 10055.95 197.6748 17.95061
execute as @s[scores={cutSceneTimer=688}] run tp @s 4982.676 136.3323 10055.82 197.803 17.91956
execute as @s[scores={cutSceneTimer=689}] run tp @s 4982.672 136.2937 10055.69 197.9312 17.88857
execute as @s[scores={cutSceneTimer=690}] run tp @s 4982.668 136.255 10055.56 198.0594 17.85766
execute as @s[scores={cutSceneTimer=691}] run tp @s 4982.665 136.2164 10055.42 198.1868 17.82701
execute as @s[scores={cutSceneTimer=692}] run tp @s 4982.662 136.1777 10055.29 198.3135 17.7966
execute as @s[scores={cutSceneTimer=693}] run tp @s 4982.66 136.1393 10055.17 198.439 17.76652
execute as @s[scores={cutSceneTimer=694}] run tp @s 4982.658 136.1014 10055.04 198.5621 17.7371
execute as @s[scores={cutSceneTimer=695}] run tp @s 4982.656 136.0628 10054.91 198.6867 17.70737
execute as @s[scores={cutSceneTimer=696}] run tp @s 4982.655 136.0251 10054.78 198.808 17.6785
execute as @s[scores={cutSceneTimer=697}] run tp @s 4982.654 135.9868 10054.66 198.9306 17.64938
execute as @s[scores={cutSceneTimer=698}] run tp @s 4982.654 135.9488 10054.53 199.0516 17.62073
execute as @s[scores={cutSceneTimer=699}] run tp @s 4982.654 135.9111 10054.41 199.1707 17.59256
execute as @s[scores={cutSceneTimer=700}] run tp @s 4982.654 135.8828 10054.31 199.2581 17.57189
execute as @s[scores={cutSceneTimer=701}] run tp @s 4982.655 135.8443 10054.19 199.375 17.54422
execute as @s[scores={cutSceneTimer=702}] run tp @s 4982.657 135.8051 10054.07 199.4913 17.51667
execute as @s[scores={cutSceneTimer=703}] run tp @s 4982.659 135.7653 10053.95 199.6076 17.48934
execute as @s[scores={cutSceneTimer=704}] run tp @s 4982.662 135.7252 10053.83 199.7233 17.46239
execute as @s[scores={cutSceneTimer=705}] run tp @s 4982.666 135.6841 10053.7 199.8407 17.43532
execute as @s[scores={cutSceneTimer=706}] run tp @s 4982.669 135.6428 10053.58 199.9573 17.40866
execute as @s[scores={cutSceneTimer=707}] run tp @s 4982.674 135.6003 10053.46 200.0757 17.38183
execute as @s[scores={cutSceneTimer=708}] run tp @s 4982.679 135.5582 10053.34 200.1919 17.35573
execute as @s[scores={cutSceneTimer=709}] run tp @s 4982.684 135.5149 10053.22 200.3099 17.32944
execute as @s[scores={cutSceneTimer=710}] run tp @s 4982.69 135.4716 10053.11 200.427 17.3036
execute as @s[scores={cutSceneTimer=711}] run tp @s 4982.697 135.4278 10052.99 200.5441 17.27794
execute as @s[scores={cutSceneTimer=712}] run tp @s 4982.704 135.3835 10052.87 200.6612 17.25249
execute as @s[scores={cutSceneTimer=713}] run tp @s 4982.711 135.3391 10052.76 200.7777 17.2274
execute as @s[scores={cutSceneTimer=714}] run tp @s 4982.719 135.2937 10052.64 200.8956 17.2022
execute as @s[scores={cutSceneTimer=715}] run tp @s 4982.728 135.2482 10052.53 201.0127 17.17733
execute as @s[scores={cutSceneTimer=716}] run tp @s 4982.737 135.2025 10052.41 201.1291 17.15281
execute as @s[scores={cutSceneTimer=717}] run tp @s 4982.746 135.1556 10052.3 201.2478 17.12802
execute as @s[scores={cutSceneTimer=718}] run tp @s 4982.756 135.1082 10052.18 201.3664 17.1034
execute as @s[scores={cutSceneTimer=719}] run tp @s 4982.767 135.0608 10052.07 201.4843 17.07911
execute as @s[scores={cutSceneTimer=720}] run tp @s 4982.778 135.0133 10051.96 201.6012 17.05518
execute as @s[scores={cutSceneTimer=721}] run tp @s 4982.789 134.9654 10051.85 201.7182 17.0314
execute as @s[scores={cutSceneTimer=722}] run tp @s 4982.801 134.917 10051.74 201.8356 17.00768
execute as @s[scores={cutSceneTimer=723}] run tp @s 4982.813 134.8688 10051.63 201.9515 16.98442
execute as @s[scores={cutSceneTimer=724}] run tp @s 4982.826 134.8199 10051.52 202.0681 16.96118
execute as @s[scores={cutSceneTimer=725}] run tp @s 4982.839 134.7685 10051.4 202.1898 16.93707
execute as @s[scores={cutSceneTimer=726}] run tp @s 4982.853 134.7194 10051.3 202.3053 16.91432
execute as @s[scores={cutSceneTimer=727}] run tp @s 4982.867 134.6694 10051.19 202.4221 16.89145
execute as @s[scores={cutSceneTimer=728}] run tp @s 4982.881 134.619 10051.08 202.5387 16.86872
execute as @s[scores={cutSceneTimer=729}] run tp @s 4982.896 134.5687 10050.97 202.6544 16.84631
execute as @s[scores={cutSceneTimer=730}] run tp @s 4982.906 134.5343 10050.9 202.7332 16.83112
execute as @s[scores={cutSceneTimer=731}] run tp @s 4982.922 134.4832 10050.79 202.8493 16.80882
execute as @s[scores={cutSceneTimer=732}] run tp @s 4982.938 134.4326 10050.69 202.9637 16.78697
execute as @s[scores={cutSceneTimer=733}] run tp @s 4982.954 134.3815 10050.58 203.0785 16.76513
execute as @s[scores={cutSceneTimer=734}] run tp @s 4982.97 134.3304 10050.48 203.1923 16.74357
execute as @s[scores={cutSceneTimer=735}] run tp @s 4982.987 134.2788 10050.38 203.3066 16.72203
execute as @s[scores={cutSceneTimer=736}] run tp @s 4983.004 134.2271 10050.27 203.4206 16.70063
execute as @s[scores={cutSceneTimer=737}] run tp @s 4983.022 134.1755 10050.17 203.5336 16.67949
execute as @s[scores={cutSceneTimer=738}] run tp @s 4983.04 134.1237 10050.07 203.6463 16.65849
execute as @s[scores={cutSceneTimer=739}] run tp @s 4983.058 134.0717 10049.97 203.7587 16.63764
execute as @s[scores={cutSceneTimer=740}] run tp @s 4983.077 134.0193 10049.87 203.8714 16.61678
execute as @s[scores={cutSceneTimer=741}] run tp @s 4983.096 133.9671 10049.77 203.9831 16.59619
execute as @s[scores={cutSceneTimer=742}] run tp @s 4983.115 133.9137 10049.67 204.0965 16.57532
execute as @s[scores={cutSceneTimer=743}] run tp @s 4983.135 133.8609 10049.57 204.2081 16.55485
execute as @s[scores={cutSceneTimer=744}] run tp @s 4983.155 133.808 10049.47 204.3194 16.5345
execute as @s[scores={cutSceneTimer=745}] run tp @s 4983.175 133.754 10049.37 204.4324 16.51388
execute as @s[scores={cutSceneTimer=746}] run tp @s 4983.196 133.7005 10049.27 204.5435 16.49364
execute as @s[scores={cutSceneTimer=747}] run tp @s 4983.217 133.6477 10049.18 204.6528 16.47377
execute as @s[scores={cutSceneTimer=748}] run tp @s 4983.238 133.5934 10049.08 204.7644 16.45352
execute as @s[scores={cutSceneTimer=749}] run tp @s 4983.26 133.5394 10048.98 204.8749 16.4335
execute as @s[scores={cutSceneTimer=750}] run tp @s 4983.281 133.4865 10048.89 204.9827 16.41398
execute as @s[scores={cutSceneTimer=751}] run tp @s 4983.304 133.4328 10048.79 205.0914 16.39432
execute as @s[scores={cutSceneTimer=752}] run tp @s 4983.326 133.3794 10048.7 205.1989 16.3749
execute as @s[scores={cutSceneTimer=753}] run tp @s 4983.349 133.3257 10048.6 205.3067 16.35543
execute as @s[scores={cutSceneTimer=754}] run tp @s 4983.371 133.2723 10048.51 205.4132 16.3362
execute as @s[scores={cutSceneTimer=755}] run tp @s 4983.394 133.2186 10048.41 205.5199 16.31694
execute as @s[scores={cutSceneTimer=756}] run tp @s 4983.418 133.1642 10048.32 205.6273 16.29753
execute as @s[scores={cutSceneTimer=757}] run tp @s 4983.441 133.1103 10048.23 205.7334 16.27835
execute as @s[scores={cutSceneTimer=758}] run tp @s 4983.465 133.0567 10048.13 205.8383 16.25938
execute as @s[scores={cutSceneTimer=759}] run tp @s 4983.489 133.0035 10048.04 205.9419 16.2406
execute as @s[scores={cutSceneTimer=760}] run tp @s 4983.514 132.9497 10047.95 206.0463 16.22169
execute as @s[scores={cutSceneTimer=761}] run tp @s 4983.538 132.8967 10047.86 206.1486 16.2031
execute as @s[scores={cutSceneTimer=762}] run tp @s 4983.563 132.843 10047.77 206.2517 16.18433
execute as @s[scores={cutSceneTimer=763}] run tp @s 4983.587 132.7905 10047.68 206.352 16.16603
execute as @s[scores={cutSceneTimer=764}] run tp @s 4983.612 132.7381 10047.59 206.4517 16.1478
execute as @s[scores={cutSceneTimer=765}] run tp @s 4983.637 132.6856 10047.51 206.5512 16.12955
execute as @s[scores={cutSceneTimer=766}] run tp @s 4983.663 132.6329 10047.42 206.6508 16.11124
execute as @s[scores={cutSceneTimer=767}] run tp @s 4983.68 132.5975 10047.36 206.7172 16.09899
execute as @s[scores={cutSceneTimer=768}] run tp @s 4983.706 132.5446 10047.27 206.8163 16.08065
execute as @s[scores={cutSceneTimer=769}] run tp @s 4983.731 132.4929 10047.18 206.9127 16.06274
execute as @s[scores={cutSceneTimer=770}] run tp @s 4983.757 132.4405 10047.1 207.0101 16.04457
execute as @s[scores={cutSceneTimer=771}] run tp @s 4983.784 132.3881 10047.01 207.1069 16.02643
execute as @s[scores={cutSceneTimer=772}] run tp @s 4983.81 132.336 10046.92 207.2028 16.00836
execute as @s[scores={cutSceneTimer=773}] run tp @s 4983.836 132.2847 10046.84 207.2967 15.99058
execute as @s[scores={cutSceneTimer=774}] run tp @s 4983.863 132.2334 10046.76 207.3903 15.97275
execute as @s[scores={cutSceneTimer=775}] run tp @s 4983.889 132.1826 10046.67 207.4826 15.95507
execute as @s[scores={cutSceneTimer=776}] run tp @s 4983.916 132.1317 10046.59 207.5746 15.93733
execute as @s[scores={cutSceneTimer=777}] run tp @s 4983.943 132.0808 10046.5 207.6664 15.91954
execute as @s[scores={cutSceneTimer=778}] run tp @s 4983.97 132.0311 10046.42 207.7555 15.90211
execute as @s[scores={cutSceneTimer=779}] run tp @s 4983.997 131.981 10046.34 207.8448 15.88451
execute as @s[scores={cutSceneTimer=780}] run tp @s 4984.024 131.9306 10046.26 207.9345 15.86671
execute as @s[scores={cutSceneTimer=781}] run tp @s 4984.052 131.881 10046.18 208.0224 15.84914
execute as @s[scores={cutSceneTimer=782}] run tp @s 4984.079 131.8315 10046.09 208.1095 15.83154
execute as @s[scores={cutSceneTimer=783}] run tp @s 4984.106 131.7827 10046.01 208.1952 15.81408
execute as @s[scores={cutSceneTimer=784}] run tp @s 4984.134 131.7348 10045.93 208.2789 15.79687
execute as @s[scores={cutSceneTimer=785}] run tp @s 4984.161 131.687 10045.86 208.362 15.7796
execute as @s[scores={cutSceneTimer=786}] run tp @s 4984.189 131.6388 10045.78 208.4454 15.76211
execute as @s[scores={cutSceneTimer=787}] run tp @s 4984.216 131.592 10045.7 208.5262 15.74499
execute as @s[scores={cutSceneTimer=788}] run tp @s 4984.244 131.5453 10045.62 208.6064 15.72778
execute as @s[scores={cutSceneTimer=789}] run tp @s 4984.271 131.4986 10045.54 208.6862 15.71046
execute as @s[scores={cutSceneTimer=790}] run tp @s 4984.299 131.4521 10045.46 208.7654 15.69307
execute as @s[scores={cutSceneTimer=791}] run tp @s 4984.326 131.4068 10045.39 208.8421 15.67601
execute as @s[scores={cutSceneTimer=792}] run tp @s 4984.354 131.3614 10045.31 208.9187 15.65874
execute as @s[scores={cutSceneTimer=793}] run tp @s 4984.381 131.317 10045.24 208.9933 15.64169
execute as @s[scores={cutSceneTimer=794}] run tp @s 4984.409 131.2727 10045.16 209.0672 15.62456
execute as @s[scores={cutSceneTimer=795}] run tp @s 4984.437 131.2292 10045.08 209.1395 15.60754
execute as @s[scores={cutSceneTimer=796}] run tp @s 4984.455 131.1999 10045.03 209.1882 15.59596
execute as @s[scores={cutSceneTimer=797}] run tp @s 4984.483 131.1565 10044.96 209.2596 15.57872
execute as @s[scores={cutSceneTimer=798}] run tp @s 4984.511 131.1134 10044.88 209.3304 15.56135
execute as @s[scores={cutSceneTimer=799}] run tp @s 4984.538 131.0714 10044.81 209.3991 15.54422
execute as @s[scores={cutSceneTimer=800}] run tp @s 4984.566 131.0293 10044.74 209.4675 15.52685
execute as @s[scores={cutSceneTimer=801}] run tp @s 4984.594 130.9877 10044.66 209.5348 15.50945
execute as @s[scores={cutSceneTimer=802}] run tp @s 4984.621 130.9472 10044.59 209.5999 15.49228
execute as @s[scores={cutSceneTimer=803}] run tp @s 4984.648 130.9075 10044.52 209.6635 15.47521
execute as @s[scores={cutSceneTimer=804}] run tp @s 4984.676 130.8679 10044.45 209.7266 15.4579
execute as @s[scores={cutSceneTimer=805}] run tp @s 4984.703 130.8293 10044.38 209.7877 15.44079
execute as @s[scores={cutSceneTimer=806}] run tp @s 4984.729 130.791 10044.31 209.8479 15.42356
execute as @s[scores={cutSceneTimer=807}] run tp @s 4984.756 130.7535 10044.24 209.9066 15.4064
execute as @s[scores={cutSceneTimer=808}] run tp @s 4984.784 130.7162 10044.16 209.9647 15.389
execute as @s[scores={cutSceneTimer=809}] run tp @s 4984.811 130.6792 10044.09 210.0219 15.37146
execute as @s[scores={cutSceneTimer=810}] run tp @s 4984.837 130.6435 10044.02 210.0767 15.35422
execute as @s[scores={cutSceneTimer=811}] run tp @s 4984.864 130.6082 10043.96 210.1305 15.33685
execute as @s[scores={cutSceneTimer=812}] run tp @s 4984.892 130.5737 10043.89 210.1828 15.31952
execute as @s[scores={cutSceneTimer=813}] run tp @s 4984.92 130.5389 10043.82 210.2351 15.30185
execute as @s[scores={cutSceneTimer=814}] run tp @s 4984.949 130.504 10043.75 210.2873 15.2839
execute as @s[scores={cutSceneTimer=815}] run tp @s 4984.979 130.4696 10043.68 210.3384 15.26604
execute as @s[scores={cutSceneTimer=816}] run tp @s 4985.01 130.4351 10043.61 210.3893 15.24793
execute as @s[scores={cutSceneTimer=817}] run tp @s 4985.042 130.4007 10043.54 210.4397 15.22969
execute as @s[scores={cutSceneTimer=818}] run tp @s 4985.073 130.3667 10043.48 210.4892 15.21145
execute as @s[scores={cutSceneTimer=819}] run tp @s 4985.106 130.3325 10043.41 210.5386 15.19297
execute as @s[scores={cutSceneTimer=820}] run tp @s 4985.141 130.2979 10043.34 210.5882 15.1741
execute as @s[scores={cutSceneTimer=821}] run tp @s 4985.175 130.2634 10043.27 210.6375 15.15505
execute as @s[scores={cutSceneTimer=822}] run tp @s 4985.21 130.2297 10043.21 210.6851 15.13635
execute as @s[scores={cutSceneTimer=823}] run tp @s 4985.245 130.1964 10043.14 210.732 15.11767
execute as @s[scores={cutSceneTimer=824}] run tp @s 4985.281 130.1633 10043.08 210.7783 15.09892
execute as @s[scores={cutSceneTimer=825}] run tp @s 4985.318 130.1296 10043.01 210.8251 15.0797
execute as @s[scores={cutSceneTimer=826}] run tp @s 4985.355 130.0961 10042.95 210.8714 15.06041
execute as @s[scores={cutSceneTimer=827}] run tp @s 4985.393 130.0634 10042.88 210.9163 15.04143
execute as @s[scores={cutSceneTimer=828}] run tp @s 4985.431 130.0308 10042.82 210.9607 15.02235
execute as @s[scores={cutSceneTimer=829}] run tp @s 4985.469 129.9983 10042.75 211.0047 15.00322
execute as @s[scores={cutSceneTimer=830}] run tp @s 4985.508 129.966 10042.69 211.0481 14.98405
execute as @s[scores={cutSceneTimer=831}] run tp @s 4985.535 129.9444 10042.65 211.0771 14.97112
execute as @s[scores={cutSceneTimer=832}] run tp @s 4985.574 129.9121 10042.58 211.1201 14.95174
execute as @s[scores={cutSceneTimer=833}] run tp @s 4985.615 129.8796 10042.52 211.1631 14.93204
execute as @s[scores={cutSceneTimer=834}] run tp @s 4985.656 129.8473 10042.46 211.2057 14.91232
execute as @s[scores={cutSceneTimer=835}] run tp @s 4985.698 129.8156 10042.4 211.2472 14.89281
execute as @s[scores={cutSceneTimer=836}] run tp @s 4985.74 129.7836 10042.33 211.2887 14.87304
execute as @s[scores={cutSceneTimer=837}] run tp @s 4985.782 129.7518 10042.27 211.3298 14.85324
execute as @s[scores={cutSceneTimer=838}] run tp @s 4985.825 129.7204 10042.21 211.3701 14.83356
execute as @s[scores={cutSceneTimer=839}] run tp @s 4985.867 129.6894 10042.15 211.4097 14.81399
execute as @s[scores={cutSceneTimer=840}] run tp @s 4985.911 129.6582 10042.09 211.4494 14.79416
execute as @s[scores={cutSceneTimer=841}] run tp @s 4985.954 129.6274 10042.03 211.4883 14.77446
execute as @s[scores={cutSceneTimer=842}] run tp @s 4985.997 129.597 10041.97 211.5264 14.75491
execute as @s[scores={cutSceneTimer=843}] run tp @s 4986.042 129.5663 10041.91 211.5646 14.73509
execute as @s[scores={cutSceneTimer=844}] run tp @s 4986.085 129.5362 10041.85 211.602 14.71545
execute as @s[scores={cutSceneTimer=845}] run tp @s 4986.129 129.5064 10041.8 211.6387 14.69595
execute as @s[scores={cutSceneTimer=846}] run tp @s 4986.174 129.4765 10041.74 211.6754 14.67622
execute as @s[scores={cutSceneTimer=847}] run tp @s 4986.218 129.4473 10041.68 211.711 14.65691
execute as @s[scores={cutSceneTimer=848}] run tp @s 4986.263 129.418 10041.63 211.7465 14.63739
execute as @s[scores={cutSceneTimer=849}] run tp @s 4986.308 129.3891 10041.57 211.7813 14.61806
execute as @s[scores={cutSceneTimer=850}] run tp @s 4986.353 129.3601 10041.51 211.8161 14.5985
execute as @s[scores={cutSceneTimer=851}] run tp @s 4986.398 129.3315 10041.46 211.8502 14.57914
execute as @s[scores={cutSceneTimer=852}] run tp @s 4986.443 129.3034 10041.4 211.8835 14.56
execute as @s[scores={cutSceneTimer=853}] run tp @s 4986.489 129.2752 10041.35 211.9168 14.54068
execute as @s[scores={cutSceneTimer=854}] run tp @s 4986.534 129.2472 10041.3 211.9497 14.52142
execute as @s[scores={cutSceneTimer=855}] run tp @s 4986.579 129.2199 10041.24 211.9814 14.5026
execute as @s[scores={cutSceneTimer=856}] run tp @s 4986.624 129.193 10041.19 212.0127 14.48386
execute as @s[scores={cutSceneTimer=857}] run tp @s 4986.669 129.1657 10041.14 212.0441 14.46486
execute as @s[scores={cutSceneTimer=858}] run tp @s 4986.714 129.1391 10041.09 212.0747 14.44622
execute as @s[scores={cutSceneTimer=859}] run tp @s 4986.759 129.113 10041.04 212.1046 14.42776
execute as @s[scores={cutSceneTimer=860}] run tp @s 4986.789 129.0955 10041.00 212.1245 14.41541
execute as @s[scores={cutSceneTimer=861}] run tp @s 4986.833 129.0694 10040.96 212.1539 14.39692
execute as @s[scores={cutSceneTimer=862}] run tp @s 4986.878 129.044 10040.91 212.1826 14.37877
execute as @s[scores={cutSceneTimer=863}] run tp @s 4986.923 129.0184 10040.86 212.2113 14.36044
execute as @s[scores={cutSceneTimer=864}] run tp @s 4986.968 128.9931 10040.81 212.2395 14.3422
execute as @s[scores={cutSceneTimer=865}] run tp @s 4987.013 128.968 10040.76 212.2673 14.32411
execute as @s[scores={cutSceneTimer=866}] run tp @s 4987.056 128.9438 10040.71 212.2941 14.30651
execute as @s[scores={cutSceneTimer=867}] run tp @s 4987.1 128.9198 10040.67 212.3204 14.28904
execute as @s[scores={cutSceneTimer=868}] run tp @s 4987.144 128.8957 10040.62 212.3467 14.27139
execute as @s[scores={cutSceneTimer=869}] run tp @s 4987.187 128.8722 10040.58 212.3723 14.25413
execute as @s[scores={cutSceneTimer=870}] run tp @s 4987.229 128.8492 10040.53 212.3972 14.23713
execute as @s[scores={cutSceneTimer=871}] run tp @s 4987.272 128.8265 10040.49 212.4216 14.2203
execute as @s[scores={cutSceneTimer=872}] run tp @s 4987.314 128.8039 10040.45 212.4458 14.20355
execute as @s[scores={cutSceneTimer=873}] run tp @s 4987.357 128.7813 10040.41 212.4699 14.18664
execute as @s[scores={cutSceneTimer=874}] run tp @s 4987.399 128.7591 10040.36 212.4934 14.17004
execute as @s[scores={cutSceneTimer=875}] run tp @s 4987.44 128.7376 10040.32 212.5162 14.15384
execute as @s[scores={cutSceneTimer=876}] run tp @s 4987.482 128.7163 10040.28 212.5386 14.13773
execute as @s[scores={cutSceneTimer=877}] run tp @s 4987.522 128.6954 10040.24 212.5604 14.12194
execute as @s[scores={cutSceneTimer=878}] run tp @s 4987.563 128.6748 10040.2 212.5819 14.10624
execute as @s[scores={cutSceneTimer=879}] run tp @s 4987.602 128.6548 10040.16 212.6027 14.09096
execute as @s[scores={cutSceneTimer=880}] run tp @s 4987.642 128.6348 10040.13 212.6234 14.0756
execute as @s[scores={cutSceneTimer=881}] run tp @s 4987.681 128.6152 10040.09 212.6435 14.06057
execute as @s[scores={cutSceneTimer=882}] run tp @s 4987.719 128.5961 10040.05 212.6629 14.04587
execute as @s[scores={cutSceneTimer=883}] run tp @s 4987.757 128.5773 10040.02 212.6821 14.03131
execute as @s[scores={cutSceneTimer=884}] run tp @s 4987.794 128.5592 10039.98 212.7006 14.01718
execute as @s[scores={cutSceneTimer=885}] run tp @s 4987.83 128.5413 10039.95 212.7186 14.00327
execute as @s[scores={cutSceneTimer=886}] run tp @s 4987.867 128.5235 10039.92 212.7365 13.98935
execute as @s[scores={cutSceneTimer=887}] run tp @s 4987.902 128.5065 10039.88 212.7536 13.97598
execute as @s[scores={cutSceneTimer=888}] run tp @s 4987.937 128.4895 10039.85 212.7705 13.9626
execute as @s[scores={cutSceneTimer=889}] run tp @s 4987.971 128.4731 10039.82 212.7868 13.94967
execute as @s[scores={cutSceneTimer=890}] run tp @s 4988.005 128.457 10039.79 212.8027 13.93694
execute as @s[scores={cutSceneTimer=891}] run tp @s 4988.038 128.4415 10039.76 212.8179 13.92465
execute as @s[scores={cutSceneTimer=892}] run tp @s 4988.07 128.4264 10039.73 212.8329 13.91257
execute as @s[scores={cutSceneTimer=893}] run tp @s 4988.101 128.4116 10039.7 212.8473 13.90077
execute as @s[scores={cutSceneTimer=894}] run tp @s 4988.132 128.3974 10039.68 212.8612 13.88934
execute as @s[scores={cutSceneTimer=895}] run tp @s 4988.162 128.3835 10039.65 212.8746 13.87821
execute as @s[scores={cutSceneTimer=896}] run tp @s 4988.191 128.37 10039.63 212.8877 13.86733
execute as @s[scores={cutSceneTimer=897}] run tp @s 4988.219 128.3568 10039.6 212.9004 13.85668
execute as @s[scores={cutSceneTimer=898}] run tp @s 4988.238 128.3484 10039.58 212.9085 13.84985
execute as @s[scores={cutSceneTimer=899}] run tp @s 4988.265 128.336 10039.56 212.9204 13.83975
execute as @s[scores={cutSceneTimer=900}] run tp @s 4988.291 128.3241 10039.54 212.9317 13.83009
execute as @s[scores={cutSceneTimer=901}] run tp @s 4988.316 128.3127 10039.52 212.9426 13.82077
execute as @s[scores={cutSceneTimer=902}] run tp @s 4988.341 128.3017 10039.5 212.9531 13.81174
execute as @s[scores={cutSceneTimer=903}] run tp @s 4988.364 128.2912 10039.48 212.9631 13.80309
execute as @s[scores={cutSceneTimer=904}] run tp @s 4988.387 128.2811 10039.46 212.9726 13.79479
execute as @s[scores={cutSceneTimer=905}] run tp @s 4988.409 128.2714 10039.44 212.9818 13.7868
execute as @s[scores={cutSceneTimer=906}] run tp @s 4988.429 128.2622 10039.42 212.9904 13.77917
execute as @s[scores={cutSceneTimer=907}] run tp @s 4988.449 128.2535 10039.41 212.9986 13.77194
execute as @s[scores={cutSceneTimer=908}] run tp @s 4988.468 128.2452 10039.39 213.0064 13.76505
execute as @s[scores={cutSceneTimer=909}] run tp @s 4988.486 128.2374 10039.38 213.0138 13.7585
execute as @s[scores={cutSceneTimer=910}] run tp @s 4988.503 128.23 10039.36 213.0207 13.75237
execute as @s[scores={cutSceneTimer=911}] run tp @s 4988.519 128.2231 10039.35 213.0272 13.74656
execute as @s[scores={cutSceneTimer=912}] run tp @s 4988.534 128.2167 10039.34 213.0332 13.74115
execute as @s[scores={cutSceneTimer=913}] run tp @s 4988.547 128.2107 10039.33 213.0388 13.73615
execute as @s[scores={cutSceneTimer=914}] run tp @s 4988.56 128.2054 10039.32 213.0439 13.73166
execute as @s[scores={cutSceneTimer=915}] run tp @s 4988.571 128.2005 10039.31 213.0486 13.72749
execute as @s[scores={cutSceneTimer=916}] run tp @s 4988.582 128.1961 10039.3 213.0527 13.72378
execute as @s[scores={cutSceneTimer=917}] run tp @s 4988.591 128.1923 10039.29 213.0564 13.72052
execute as @s[scores={cutSceneTimer=918}] run tp @s 4988.599 128.1889 10039.29 213.0597 13.71765
execute as @s[scores={cutSceneTimer=919}] run tp @s 4988.605 128.1861 10039.28 213.0626 13.71525
execute as @s[scores={cutSceneTimer=920}] run tp @s 4988.611 128.1838 10039.28 213.0649 13.7133
execute as @s[scores={cutSceneTimer=921}] run tp @s 4988.615 128.1821 10039.27 213.0668 13.71179
execute as @s[scores={cutSceneTimer=922}] run tp @s 4988.618 128.1808 10039.27 213.0683 13.71074


execute as @s[scores={cutSceneTimer=40},tag=cutsceneLeader] run playsound minecraft:custom.thunder.thunder2 master @a 5024 70 9993 1000 1
execute as @s[scores={cutSceneTimer=40},tag=cutsceneLeader] run summon minecraft:lightning_bolt 5050 70 9972

execute as @s[scores={cutSceneTimer=100},tag=cutsceneLeader] run summon minecraft:lightning_bolt 5030 20 10069
execute as @s[scores={cutSceneTimer=103},tag=cutsceneLeader] run playsound minecraft:custom.thunder.thunder1 master @a 5030 20 10069 10000 1

execute as @s[scores={cutSceneTimer=200},tag=cutsceneLeader] run summon minecraft:lightning_bolt 5080 40 10030
execute as @s[scores={cutSceneTimer=203},tag=cutsceneLeader] run playsound minecraft:custom.thunder.thunder2 master @a 5120 90 10020 10000 1

# execute as @s[scores={cutSceneTimer=270},tag=cutsceneLeader] run summon minecraft:lightning_bolt 4975 90 10058
# execute as @s[scores={cutSceneTimer=273},tag=cutsceneLeader] run playsound minecraft:custom.thunder.thunder3 master @a 5080 40 10020 10000 1

execute as @s[scores={cutSceneTimer=380},tag=cutsceneLeader] run summon minecraft:lightning_bolt 5070 50 10010
execute as @s[scores={cutSceneTimer=383},tag=cutsceneLeader] run playsound minecraft:custom.thunder.thunder1 master @a 5080 40 10020 10000 1

execute as @s[scores={cutSceneTimer=503},tag=cutsceneLeader] run playsound minecraft:custom.thunder.thunder2 master @a 5024 109 9993 10000 1
execute as @s[scores={cutSceneTimer=500},tag=cutsceneLeader] run summon minecraft:lightning_bolt 5050 79 9972
execute as @s[scores={cutSceneTimer=583},tag=cutsceneLeader] run playsound minecraft:custom.thunder.thunder3 master @a 5080 40 10020 10000 1
execute as @s[scores={cutSceneTimer=580},tag=cutsceneLeader] run summon minecraft:lightning_bolt 5050 79 9972

execute as @s[scores={cutSceneTimer=653},tag=cutsceneLeader] run playsound minecraft:custom.thunder.thunder1 master @a 5030 20 10069 10000 1
execute as @s[scores={cutSceneTimer=650},tag=cutsceneLeader] run summon minecraft:lightning_bolt 5080 40 10030
execute as @s[scores={cutSceneTimer=823},tag=cutsceneLeader] run playsound minecraft:custom.thunder.thunder3 master @a 5080 200 10020 10000 1
execute as @s[scores={cutSceneTimer=820},tag=cutsceneLeader] run summon minecraft:lightning_bolt 5050 200 9972

execute as @s[scores={cutSceneTimer=1..922},tag=cutsceneLeader] as @e[tag=hangingDementor] at @s run tp @s ^ ^ ^.0075


execute as @s[scores={cutSceneTimer=760},tag=cutsceneLeader] as @e[tag=phoenixOrder1,limit=1] run tp @s 5001.820 121.062 10014.775
execute as @s[scores={cutSceneTimer=760},tag=cutsceneLeader] positioned as @e[tag=phoenixOrder1,limit=1] run particle minecraft:poof ~ ~0.75 ~ 0.15 1 0.15 0.05 100 force
execute as @s[scores={cutSceneTimer=760},tag=cutsceneLeader] positioned as @e[tag=phoenixOrder1,limit=1] run playsound minecraft:custom.spell.apparate.arrive master @a ~ ~ ~ 4 1.1

execute as @s[scores={cutSceneTimer=765},tag=cutsceneLeader] as @e[tag=phoenixOrder2,limit=1] run tp @s 5004.5 120.9375 10015.5
execute as @s[scores={cutSceneTimer=765},tag=cutsceneLeader] positioned as @e[tag=phoenixOrder2,limit=1] run particle minecraft:poof ~ ~0.75 ~ 0.15 1 0.15 0.05 100 force
execute as @s[scores={cutSceneTimer=765},tag=cutsceneLeader] positioned as @e[tag=phoenixOrder2,limit=1] run playsound minecraft:custom.spell.apparate.arrive master @a ~ ~ ~ 4 1.05

execute as @s[scores={cutSceneTimer=770},tag=cutsceneLeader] as @e[tag=phoenixOrder3,limit=1] run tp @s 5006.5 120.9375 10016.5
execute as @s[scores={cutSceneTimer=770},tag=cutsceneLeader] positioned as @e[tag=phoenixOrder3,limit=1] run particle minecraft:poof ~ ~0.75 ~ 0.15 1 0.15 0.05 100 force
execute as @s[scores={cutSceneTimer=770},tag=cutsceneLeader] positioned as @e[tag=phoenixOrder3,limit=1] run playsound minecraft:custom.spell.apparate.arrive master @a ~ ~ ~ 4 1.11

execute as @s[scores={cutSceneTimer=775},tag=cutsceneLeader] as @e[tag=phoenixOrder4,limit=1] run tp @s 5006.201 121.062 10018.222
execute as @s[scores={cutSceneTimer=775},tag=cutsceneLeader] positioned as @e[tag=phoenixOrder4,limit=1] run particle minecraft:poof ~ ~0.75 ~ 0.15 1 0.15 0.05 100 force
execute as @s[scores={cutSceneTimer=775},tag=cutsceneLeader] positioned as @e[tag=phoenixOrder4,limit=1] run playsound minecraft:custom.spell.apparate.arrive master @a ~ ~ ~ 4 1.025

execute as @s[scores={cutSceneTimer=780},tag=cutsceneLeader] as @e[tag=phoenixOrder5,limit=1] run tp @s 5004.069 121.0 10019.623
execute as @s[scores={cutSceneTimer=780},tag=cutsceneLeader] positioned as @e[tag=phoenixOrder5,limit=1] run particle minecraft:poof ~ ~0.75 ~ 0.15 1 0.15 0.05 100 force
execute as @s[scores={cutSceneTimer=780},tag=cutsceneLeader] positioned as @e[tag=phoenixOrder5,limit=1] run playsound minecraft:custom.spell.apparate.arrive master @a ~ ~ ~ 4 1.075

# Look around
execute as @s[scores={cutSceneTimer=790},tag=cutsceneLeader] as @e[tag=phoenixOrder1,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 200
execute as @s[scores={cutSceneTimer=790},tag=cutsceneLeader] as @e[tag=phoenixOrder1,limit=1] run tag @s add npcLookAtPlayer

execute as @s[scores={cutSceneTimer=795},tag=cutsceneLeader] as @e[tag=phoenixOrder2,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 190
execute as @s[scores={cutSceneTimer=795},tag=cutsceneLeader] as @e[tag=phoenixOrder2,limit=1] run tag @s add npcLookAtPlayer

execute as @s[scores={cutSceneTimer=800},tag=cutsceneLeader] as @e[tag=phoenixOrder3,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 295
execute as @s[scores={cutSceneTimer=800},tag=cutsceneLeader] as @e[tag=phoenixOrder3,limit=1] run tag @s add npcLookAtPlayer

execute as @s[scores={cutSceneTimer=793},tag=cutsceneLeader] as @e[tag=phoenixOrder4,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 209
execute as @s[scores={cutSceneTimer=793},tag=cutsceneLeader] as @e[tag=phoenixOrder4,limit=1] run tag @s add npcLookAtPlayer

execute as @s[scores={cutSceneTimer=802},tag=cutsceneLeader] as @e[tag=phoenixOrder5,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 225
execute as @s[scores={cutSceneTimer=802},tag=cutsceneLeader] as @e[tag=phoenixOrder5,limit=1] run tag @s add npcLookAtPlayer



execute as @s[scores={cutSceneTimer=810},tag=cutsceneLeader] as @e[tag=phoenixOrder1,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 286
execute as @s[scores={cutSceneTimer=810},tag=cutsceneLeader] as @e[tag=phoenixOrder1,limit=1] run tag @s add npcLookAtPlayer

execute as @s[scores={cutSceneTimer=812},tag=cutsceneLeader] as @e[tag=phoenixOrder2,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 296
execute as @s[scores={cutSceneTimer=812},tag=cutsceneLeader] as @e[tag=phoenixOrder2,limit=1] run tag @s add npcLookAtPlayer

execute as @s[scores={cutSceneTimer=815},tag=cutsceneLeader] as @e[tag=phoenixOrder3,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 205
execute as @s[scores={cutSceneTimer=815},tag=cutsceneLeader] as @e[tag=phoenixOrder3,limit=1] run tag @s add npcLookAtPlayer

execute as @s[scores={cutSceneTimer=810},tag=cutsceneLeader] as @e[tag=phoenixOrder4,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 309
execute as @s[scores={cutSceneTimer=810},tag=cutsceneLeader] as @e[tag=phoenixOrder4,limit=1] run tag @s add npcLookAtPlayer

execute as @s[scores={cutSceneTimer=822},tag=cutsceneLeader] as @e[tag=phoenixOrder5,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 295
execute as @s[scores={cutSceneTimer=822},tag=cutsceneLeader] as @e[tag=phoenixOrder5,limit=1] run tag @s add npcLookAtPlayer


execute as @s[scores={cutSceneTimer=830},tag=cutsceneLeader] as @e[tag=phoenixOrder1,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 256
execute as @s[scores={cutSceneTimer=830},tag=cutsceneLeader] as @e[tag=phoenixOrder1,limit=1] run tag @s add npcLookAtPlayer

execute as @s[scores={cutSceneTimer=832},tag=cutsceneLeader] as @e[tag=phoenixOrder2,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 246
execute as @s[scores={cutSceneTimer=832},tag=cutsceneLeader] as @e[tag=phoenixOrder2,limit=1] run tag @s add npcLookAtPlayer

execute as @s[scores={cutSceneTimer=835},tag=cutsceneLeader] as @e[tag=phoenixOrder3,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 245
execute as @s[scores={cutSceneTimer=835},tag=cutsceneLeader] as @e[tag=phoenixOrder3,limit=1] run tag @s add npcLookAtPlayer

execute as @s[scores={cutSceneTimer=830},tag=cutsceneLeader] as @e[tag=phoenixOrder4,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 259
execute as @s[scores={cutSceneTimer=830},tag=cutsceneLeader] as @e[tag=phoenixOrder4,limit=1] run tag @s add npcLookAtPlayer

execute as @s[scores={cutSceneTimer=842},tag=cutsceneLeader] as @e[tag=phoenixOrder5,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 255
execute as @s[scores={cutSceneTimer=842},tag=cutsceneLeader] as @e[tag=phoenixOrder5,limit=1] run tag @s add npcLookAtPlayer


# ¤Аластор Грюм:¤ These villains are everywhere. Hunt them down. Fight them. They must not escape!
# ¤Аластор Грюм:¤ Эти злодеи повсюду! Уничтожьте их! Сражайтесь с ними! Они не должны сбежать!
execute as @s[scores={cutSceneTimer=800},tag=cutsceneLeader] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=800..940}] run title @s actionbar ["",{"text":""},{"text":"Аластор Грюм:","color":"dark_gray"},{"text":" Эти злодеи повсюду! Уничтожьте их! Сражайтесь с ними! Они не должны сбежать!"}]


execute as @s[scores={cutSceneTimer=941..}] run title @s actionbar ""


execute as @s[scores={cutSceneTimer=923}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=944}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=944}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=944}] run effect clear @s minecraft:slowness

# Load important chunks
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5034 10021 1 1 false @s
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5000 9976 1 1 false @s
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 4967 10019 1 1 false @s
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] run kill @e[tag=chunkLoader]

# Spawn in mana wells
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=manaWell1,limit=1] run tp @s 4998 121 9969
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=manaWell2,limit=1] run tp @s 5031 121 10019
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=manaWell3,limit=1] run tp @s 4967 121 10019

# Move phoenix order members
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=phoenixOrder1,limit=1] run tp @s 4971.349 121.0 10019.296
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=phoenixOrder2,limit=1] run tp @s 5000.244 121.0 9969.903
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=phoenixOrder3,limit=1] run tp @s 4996.660 121.0 9969.984
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=phoenixOrder4,limit=1] run tp @s 4969.059 121.0 10018.387
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=phoenixOrder5,limit=1] run tp @s 5029.832 121.0 10018.493

execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=phoenixOrder1,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 240
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=phoenixOrder2,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 10
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=phoenixOrder3,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 0
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=phoenixOrder4,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 220
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=phoenixOrder5,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 110
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=phoenixOrder1,limit=1] run tag @s add npcLookAtPlayer
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=phoenixOrder2,limit=1] run tag @s add npcLookAtPlayer
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=phoenixOrder3,limit=1] run tag @s add npcLookAtPlayer
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=phoenixOrder4,limit=1] run tag @s add npcLookAtPlayer
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=phoenixOrder5,limit=1] run tag @s add npcLookAtPlayer

# Reset dementors
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=hangingDementor1] run tp @s 5009.475 115.779 10045.307
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=hangingDementor2] run tp @s 4979.651 135.151 10046.422
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=hangingDementor3] run tp @s 4980.446 128.307 10054.7826
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=hangingDementor4] run tp @s 5001.269 130.622 10043.605
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=hangingDementor5] run tp @s 4975.411 133.769 9996.526
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=hangingDementor6] run tp @s 4982.088 141.110 9987.434 
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=hangingDementor7] run tp @s 5084.239 58.69 10058.153
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=hangingDementor,tag=hangingDementorIsVisible] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] as @e[tag=hangingDementor,tag=hangingDementorIsVisible] run tag @s remove hangingDementorIsVisible

execute as @s[scores={cutSceneTimer=944}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=944,playerID=1}] run tp @s 5005.05 121.00 10019.66 259.27 0.08
execute as @s[scores={cutSceneTimer=944,playerID=2}] run tp @s 5004.92 121.06 10017.73 270.40 0.41
execute as @s[scores={cutSceneTimer=944,playerID=3}] run tp @s 5005.13 121.06 10015.01 277.90 0.95
execute as @s[scores={cutSceneTimer=944,playerID=4}] run tp @s 5005.74 121.00 10012.06 280.78 0.84
execute as @s[scores={cutSceneTimer=944},tag=cutsceneLeader] run scoreboard players set azkabanQuestIsGoing global 1

execute as @s[scores={cutSceneTimer=944}] run team join all @s
execute as @s[scores={cutSceneTimer=964}] run function hp:cutscenes/exit_cutscene

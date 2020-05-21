execute as @s[scores={trackQuestState=2}] run scoreboard players set @s questState 3
execute as @s[scores={trackQuestState=2}] run function hp:quests/set_quest

# Reset spell challenge
execute as @s[scores={cutSceneTimer=300},tag=cutsceneLeader] if score playerInWingardiumSpellChallenge global matches 0 run function hp:quests/quests/wingardium_leviosa/reset_wingardium_spell_challenge

execute as @s[scores={cutSceneTimer=-19}] run function hp:music/music/silence
execute as @s[scores={cutSceneTimer=-19}] run tag @s remove musicController
execute as @s[scores={cutSceneTimer=22}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=22}] run function hp:cutscenes/fade_out

execute as @s[scores={cutSceneTimer=..20}] run title @s actionbar ["",{"text":" "}]

execute as @s[scores={cutSceneTimer=100},tag=cutsceneLeader] run kill @e[tag=cutsceneWingardiumBlock]
execute as @s[scores={cutSceneTimer=100},tag=cutsceneLeader] positioned 7029.5 67.10 -16.01 run summon armor_stand ~ ~ ~ {Team:"wingardium",NoBasePlate:1b,Pose:{LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],Head:[180f,0f,0f]},Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["cutsceneWingardiumBlock"],DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:49}}],CustomName:"{\"text\":\"WingardiumMoveBlock\"}"}

execute as @s[scores={cutSceneTimer=22},tag=gameLeader] run time set day
execute as @s[scores={cutSceneTimer=22},tag=gameLeader] run gamerule doDaylightCycle false
tp @s[scores={cutSceneTimer=0..22}] 7035.275 75.65 -15.82 -89.3 46.655
tp @s[scores={cutSceneTimer=23}] 7035.283 75.65 -15.82 -89.3 46.59
tp @s[scores={cutSceneTimer=24}] 7035.291 75.65 -15.82 -89.3 46.52501
tp @s[scores={cutSceneTimer=25}] 7035.299 75.65 -15.82 -89.3 46.46001
tp @s[scores={cutSceneTimer=26}] 7035.307 75.65 -15.82 -89.3 46.39501
tp @s[scores={cutSceneTimer=27}] 7035.314 75.65 -15.82 -89.3 46.33001
tp @s[scores={cutSceneTimer=28}] 7035.322 75.65 -15.82 -89.3 46.26501
tp @s[scores={cutSceneTimer=29}] 7035.33 75.65 -15.82 -89.3 46.20001
tp @s[scores={cutSceneTimer=30}] 7035.338 75.65 -15.82 -89.3 46.13501
tp @s[scores={cutSceneTimer=31}] 7035.346 75.65 -15.82 -89.3 46.07001
tp @s[scores={cutSceneTimer=32}] 7035.354 75.65 -15.82 -89.3 46.00502
tp @s[scores={cutSceneTimer=33}] 7035.361 75.65 -15.82 -89.3 45.94002
tp @s[scores={cutSceneTimer=34}] 7035.369 75.65 -15.82 -89.3 45.87502
tp @s[scores={cutSceneTimer=35}] 7035.377 75.65 -15.82 -89.3 45.81002
tp @s[scores={cutSceneTimer=36}] 7035.385 75.65 -15.82 -89.3 45.74502
tp @s[scores={cutSceneTimer=37}] 7035.393 75.65 -15.82 -89.3 45.68002
tp @s[scores={cutSceneTimer=38}] 7035.4 75.65 -15.82 -89.3 45.61502
tp @s[scores={cutSceneTimer=39}] 7035.408 75.65 -15.82 -89.3 45.55003
tp @s[scores={cutSceneTimer=40}] 7035.416 75.65 -15.82 -89.3 45.48503
tp @s[scores={cutSceneTimer=41}] 7035.424 75.65 -15.82 -89.3 45.42003
tp @s[scores={cutSceneTimer=42}] 7035.432 75.65 -15.82 -89.3 45.35503
tp @s[scores={cutSceneTimer=43}] 7035.439 75.65 -15.82 -89.3 45.29003
tp @s[scores={cutSceneTimer=44}] 7035.447 75.65 -15.82 -89.3 45.22503
tp @s[scores={cutSceneTimer=45}] 7035.455 75.65 -15.82 -89.3 45.16003
tp @s[scores={cutSceneTimer=46}] 7035.463 75.65 -15.82 -89.3 45.09504
tp @s[scores={cutSceneTimer=47}] 7035.471 75.65 -15.82 -89.3 45.03004
tp @s[scores={cutSceneTimer=48}] 7035.479 75.65 -15.82 -89.3 44.96504
tp @s[scores={cutSceneTimer=49}] 7035.486 75.65 -15.82 -89.3 44.90004
tp @s[scores={cutSceneTimer=50}] 7035.494 75.65 -15.82 -89.3 44.83504
tp @s[scores={cutSceneTimer=51}] 7035.502 75.65 -15.82 -89.3 44.77004
tp @s[scores={cutSceneTimer=52}] 7035.51 75.65 -15.82 -89.3 44.70504
tp @s[scores={cutSceneTimer=53}] 7035.518 75.65 -15.82 -89.3 44.64005
tp @s[scores={cutSceneTimer=54}] 7035.525 75.65 -15.82 -89.3 44.57505
tp @s[scores={cutSceneTimer=55}] 7035.533 75.65 -15.82 -89.3 44.51005
tp @s[scores={cutSceneTimer=56}] 7035.541 75.65 -15.82 -89.3 44.44505
tp @s[scores={cutSceneTimer=57}] 7035.549 75.65 -15.82 -89.3 44.38005
tp @s[scores={cutSceneTimer=58}] 7035.557 75.65 -15.82 -89.3 44.31505
tp @s[scores={cutSceneTimer=59}] 7035.564 75.65 -15.82 -89.3 44.25005
tp @s[scores={cutSceneTimer=60}] 7035.572 75.65 -15.82 -89.3 44.18505
tp @s[scores={cutSceneTimer=61}] 7035.58 75.65 -15.82 -89.3 44.12006
tp @s[scores={cutSceneTimer=62}] 7035.588 75.65 -15.82 -89.3 44.05506
tp @s[scores={cutSceneTimer=63}] 7035.596 75.65 -15.82 -89.3 43.99006
tp @s[scores={cutSceneTimer=64}] 7035.604 75.65 -15.82 -89.3 43.92506
tp @s[scores={cutSceneTimer=65}] 7035.611 75.65 -15.82 -89.3 43.86006
tp @s[scores={cutSceneTimer=66}] 7035.619 75.65 -15.82 -89.3 43.79506
tp @s[scores={cutSceneTimer=67}] 7035.627 75.65 -15.82 -89.3 43.73006
tp @s[scores={cutSceneTimer=68}] 7035.635 75.65 -15.82 -89.3 43.66507
tp @s[scores={cutSceneTimer=69}] 7035.643 75.65 -15.82 -89.3 43.60007
tp @s[scores={cutSceneTimer=70}] 7035.65 75.65 -15.82 -89.3 43.53507
tp @s[scores={cutSceneTimer=71}] 7035.658 75.65 -15.82 -89.3 43.47007
tp @s[scores={cutSceneTimer=72}] 7035.666 75.65 -15.82 -89.3 43.40507
tp @s[scores={cutSceneTimer=73}] 7035.674 75.65 -15.82 -89.3 43.34007
tp @s[scores={cutSceneTimer=74}] 7035.682 75.65 -15.82 -89.3 43.27507
tp @s[scores={cutSceneTimer=75}] 7035.689 75.65 -15.82 -89.3 43.21008
tp @s[scores={cutSceneTimer=76}] 7035.697 75.65 -15.82 -89.3 43.14508
tp @s[scores={cutSceneTimer=77}] 7035.705 75.65 -15.82 -89.3 43.08008
tp @s[scores={cutSceneTimer=78}] 7035.713 75.65 -15.82 -89.3 43.01508
tp @s[scores={cutSceneTimer=79}] 7035.721 75.65 -15.82 -89.3 42.95008
tp @s[scores={cutSceneTimer=80}] 7035.729 75.65 -15.82 -89.3 42.88508
tp @s[scores={cutSceneTimer=81}] 7035.736 75.65 -15.82 -89.3 42.82008
tp @s[scores={cutSceneTimer=82}] 7035.744 75.65 -15.82 -89.3 42.75508
tp @s[scores={cutSceneTimer=83}] 7035.752 75.65 -15.82 -89.3 42.69009
tp @s[scores={cutSceneTimer=84}] 7035.76 75.65 -15.82 -89.3 42.62509
tp @s[scores={cutSceneTimer=85}] 7035.768 75.65 -15.82 -89.3 42.56009
tp @s[scores={cutSceneTimer=86}] 7035.775 75.65 -15.82 -89.3 42.49509
tp @s[scores={cutSceneTimer=87}] 7035.783 75.65 -15.82 -89.3 42.43009
tp @s[scores={cutSceneTimer=88}] 7035.791 75.65 -15.82 -89.3 42.36509
tp @s[scores={cutSceneTimer=89}] 7035.799 75.65 -15.82 -89.3 42.30009
tp @s[scores={cutSceneTimer=90}] 7035.807 75.65 -15.82 -89.3 42.2351
tp @s[scores={cutSceneTimer=91}] 7035.814 75.65 -15.82 -89.3 42.1701
tp @s[scores={cutSceneTimer=92}] 7035.822 75.65 -15.82 -89.3 42.1051
tp @s[scores={cutSceneTimer=93}] 7035.83 75.65 -15.82 -89.3 42.0401
tp @s[scores={cutSceneTimer=94}] 7035.838 75.65 -15.82 -89.3 41.9751
tp @s[scores={cutSceneTimer=95}] 7035.846 75.65 -15.82 -89.3 41.9101
tp @s[scores={cutSceneTimer=96}] 7035.854 75.65 -15.82 -89.3 41.8451
tp @s[scores={cutSceneTimer=97}] 7035.861 75.65 -15.82 -89.3 41.78011
tp @s[scores={cutSceneTimer=98}] 7035.869 75.65 -15.82 -89.3 41.71511
tp @s[scores={cutSceneTimer=99}] 7035.877 75.65 -15.82 -89.3 41.65011
tp @s[scores={cutSceneTimer=100}] 7035.885 75.65 -15.82 -89.3 41.58511
tp @s[scores={cutSceneTimer=101}] 7035.893 75.65 -15.82 -89.3 41.52011
tp @s[scores={cutSceneTimer=102}] 7035.9 75.65 -15.82 -89.3 41.45511
tp @s[scores={cutSceneTimer=103}] 7035.908 75.65 -15.82 -89.3 41.39011
tp @s[scores={cutSceneTimer=104}] 7035.916 75.65 -15.82 -89.3 41.32512
tp @s[scores={cutSceneTimer=105}] 7035.924 75.65 -15.82 -89.3 41.26012
tp @s[scores={cutSceneTimer=106}] 7035.932 75.65 -15.82 -89.3 41.19512
tp @s[scores={cutSceneTimer=107}] 7035.939 75.65 -15.82 -89.3 41.13012
tp @s[scores={cutSceneTimer=108}] 7035.947 75.65 -15.82 -89.3 41.06512
tp @s[scores={cutSceneTimer=109}] 7035.955 75.65 -15.82 -89.3 41.00012
tp @s[scores={cutSceneTimer=110}] 7035.963 75.65 -15.82 -89.3 40.93512
tp @s[scores={cutSceneTimer=111}] 7035.971 75.65 -15.82 -89.3 40.87012
tp @s[scores={cutSceneTimer=112}] 7035.979 75.65 -15.82 -89.3 40.80513
tp @s[scores={cutSceneTimer=113}] 7035.986 75.65 -15.82 -89.3 40.74013
tp @s[scores={cutSceneTimer=114}] 7035.994 75.65 -15.82 -89.3 40.67513
tp @s[scores={cutSceneTimer=115}] 7036.002 75.65 -15.82 -89.3 40.61013
tp @s[scores={cutSceneTimer=116}] 7036.01 75.65 -15.82 -89.3 40.54513
tp @s[scores={cutSceneTimer=117}] 7036.018 75.65 -15.82 -89.3 40.48013
tp @s[scores={cutSceneTimer=118}] 7036.025 75.65 -15.82 -89.3 40.41513
tp @s[scores={cutSceneTimer=119}] 7036.033 75.65 -15.82 -89.3 40.35014
tp @s[scores={cutSceneTimer=120}] 7036.041 75.65 -15.82 -89.3 40.28514
tp @s[scores={cutSceneTimer=121}] 7036.049 75.65 -15.82 -89.3 40.22014
tp @s[scores={cutSceneTimer=122}] 7036.057 75.65 -15.82 -89.3 40.15514
tp @s[scores={cutSceneTimer=123}] 7036.064 75.65 -15.82 -89.3 40.09014
tp @s[scores={cutSceneTimer=124}] 7036.072 75.65 -15.82 -89.3 40.02514
tp @s[scores={cutSceneTimer=125}] 7036.08 75.65 -15.82 -89.3 39.96014
tp @s[scores={cutSceneTimer=126}] 7036.088 75.65 -15.82 -89.3 39.89515
tp @s[scores={cutSceneTimer=127}] 7036.096 75.65 -15.82 -89.3 39.83015
tp @s[scores={cutSceneTimer=128}] 7036.104 75.65 -15.82 -89.3 39.76515
tp @s[scores={cutSceneTimer=129}] 7036.111 75.65 -15.82 -89.3 39.70015
tp @s[scores={cutSceneTimer=130}] 7036.119 75.65 -15.82 -89.3 39.63515
tp @s[scores={cutSceneTimer=131}] 7036.127 75.65 -15.82 -89.3 39.57015
tp @s[scores={cutSceneTimer=132}] 7036.135 75.65 -15.82 -89.3 39.50515
tp @s[scores={cutSceneTimer=133}] 7036.143 75.65 -15.82 -89.3 39.44016
tp @s[scores={cutSceneTimer=134}] 7036.15 75.65 -15.82 -89.3 39.37516
tp @s[scores={cutSceneTimer=135}] 7036.158 75.65 -15.82 -89.3 39.31016
tp @s[scores={cutSceneTimer=136}] 7036.166 75.65 -15.82 -89.3 39.24516
tp @s[scores={cutSceneTimer=137}] 7036.174 75.65 -15.82 -89.3 39.18016
tp @s[scores={cutSceneTimer=138}] 7036.182 75.65 -15.82 -89.3 39.11516
tp @s[scores={cutSceneTimer=139}] 7036.189 75.65 -15.82 -89.3 39.05016
tp @s[scores={cutSceneTimer=140}] 7036.197 75.65 -15.82 -89.3 38.98516
tp @s[scores={cutSceneTimer=141}] 7036.205 75.65 -15.82 -89.3 38.92017
tp @s[scores={cutSceneTimer=142}] 7036.213 75.65 -15.82 -89.3 38.85517
tp @s[scores={cutSceneTimer=143}] 7036.221 75.65 -15.82 -89.3 38.79017
tp @s[scores={cutSceneTimer=144}] 7036.229 75.65 -15.82 -89.3 38.72517
tp @s[scores={cutSceneTimer=145}] 7036.236 75.65 -15.82 -89.3 38.66017
tp @s[scores={cutSceneTimer=146}] 7036.244 75.65 -15.82 -89.3 38.59517
tp @s[scores={cutSceneTimer=147}] 7036.252 75.65 -15.82 -89.3 38.53017
tp @s[scores={cutSceneTimer=148}] 7036.26 75.65 -15.82 -89.3 38.46518
tp @s[scores={cutSceneTimer=149}] 7036.268 75.65 -15.82 -89.3 38.40018
tp @s[scores={cutSceneTimer=150}] 7036.275 75.65 -15.82 -89.3 38.33518
tp @s[scores={cutSceneTimer=151}] 7036.283 75.65 -15.82 -89.3 38.27018
tp @s[scores={cutSceneTimer=152}] 7036.291 75.65 -15.82 -89.3 38.20518
tp @s[scores={cutSceneTimer=153}] 7036.299 75.65 -15.82 -89.3 38.14018
tp @s[scores={cutSceneTimer=154}] 7036.307 75.65 -15.82 -89.3 38.07518
tp @s[scores={cutSceneTimer=155}] 7036.314 75.65 -15.82 -89.3 38.01019
tp @s[scores={cutSceneTimer=156}] 7036.322 75.65 -15.82 -89.3 37.94519
tp @s[scores={cutSceneTimer=157}] 7036.33 75.65 -15.82 -89.3 37.88019
tp @s[scores={cutSceneTimer=158}] 7036.338 75.65 -15.82 -89.3 37.81519
tp @s[scores={cutSceneTimer=159}] 7036.346 75.65 -15.82 -89.3 37.75019
tp @s[scores={cutSceneTimer=160}] 7036.354 75.65 -15.82 -89.3 37.68519
tp @s[scores={cutSceneTimer=161}] 7036.361 75.65 -15.82 -89.3 37.62019
tp @s[scores={cutSceneTimer=162}] 7036.369 75.65 -15.82 -89.3 37.55519
tp @s[scores={cutSceneTimer=163}] 7036.377 75.65 -15.82 -89.3 37.4902
tp @s[scores={cutSceneTimer=164}] 7036.385 75.65 -15.82 -89.3 37.4252
tp @s[scores={cutSceneTimer=165}] 7036.393 75.65 -15.82 -89.3 37.3602
tp @s[scores={cutSceneTimer=166}] 7036.4 75.65 -15.82 -89.3 37.2952
tp @s[scores={cutSceneTimer=167}] 7036.408 75.65 -15.82 -89.3 37.2302
tp @s[scores={cutSceneTimer=168}] 7036.416 75.65 -15.82 -89.3 37.1652
tp @s[scores={cutSceneTimer=169}] 7036.424 75.65 -15.82 -89.3 37.1002
tp @s[scores={cutSceneTimer=170}] 7036.432 75.65 -15.82 -89.3 37.03521
tp @s[scores={cutSceneTimer=171}] 7036.439 75.65 -15.82 -89.3 36.97021
tp @s[scores={cutSceneTimer=172}] 7036.447 75.65 -15.82 -89.3 36.90521
tp @s[scores={cutSceneTimer=173}] 7036.455 75.65 -15.82 -89.3 36.84021
tp @s[scores={cutSceneTimer=174}] 7036.463 75.65 -15.82 -89.3 36.77521
tp @s[scores={cutSceneTimer=175}] 7036.471 75.65 -15.82 -89.3 36.71021
tp @s[scores={cutSceneTimer=176}] 7036.479 75.65 -15.82 -89.3 36.64521
tp @s[scores={cutSceneTimer=177}] 7036.486 75.65 -15.82 -89.3 36.58022
tp @s[scores={cutSceneTimer=178}] 7036.494 75.65 -15.82 -89.3 36.51522
tp @s[scores={cutSceneTimer=179}] 7036.502 75.65 -15.82 -89.3 36.45022
tp @s[scores={cutSceneTimer=180}] 7036.51 75.65 -15.82 -89.3 36.38522
tp @s[scores={cutSceneTimer=181}] 7036.518 75.65 -15.82 -89.3 36.32022
tp @s[scores={cutSceneTimer=182}] 7036.525 75.65 -15.82 -89.3 36.25522
tp @s[scores={cutSceneTimer=183}] 7036.533 75.65 -15.82 -89.3 36.19022
tp @s[scores={cutSceneTimer=184}] 7036.541 75.65 -15.82 -89.3 36.12523
tp @s[scores={cutSceneTimer=185}] 7036.549 75.65 -15.82 -89.3 36.06023
tp @s[scores={cutSceneTimer=186}] 7036.557 75.65 -15.82 -89.3 35.99523
tp @s[scores={cutSceneTimer=187}] 7036.564 75.65 -15.82 -89.3 35.93023
tp @s[scores={cutSceneTimer=188}] 7036.572 75.65 -15.82 -89.3 35.86523
tp @s[scores={cutSceneTimer=189}] 7036.58 75.65 -15.82 -89.3 35.80023
tp @s[scores={cutSceneTimer=190}] 7036.588 75.65 -15.82 -89.3 35.73523
tp @s[scores={cutSceneTimer=191}] 7036.596 75.65 -15.82 -89.3 35.67023
tp @s[scores={cutSceneTimer=192}] 7036.604 75.65 -15.82 -89.3 35.60524
tp @s[scores={cutSceneTimer=193}] 7036.611 75.65 -15.82 -89.3 35.54024
tp @s[scores={cutSceneTimer=194}] 7036.619 75.65 -15.82 -89.3 35.47524
tp @s[scores={cutSceneTimer=195}] 7036.627 75.65 -15.82 -89.3 35.41024
tp @s[scores={cutSceneTimer=196}] 7036.635 75.65 -15.82 -89.3 35.34524
tp @s[scores={cutSceneTimer=197}] 7036.643 75.65 -15.82 -89.3 35.28024
tp @s[scores={cutSceneTimer=198}] 7036.65 75.65 -15.82 -89.3 35.21524
tp @s[scores={cutSceneTimer=199}] 7036.658 75.65 -15.82 -89.3 35.15025
tp @s[scores={cutSceneTimer=200}] 7036.666 75.65 -15.82 -89.3 35.08525
tp @s[scores={cutSceneTimer=201}] 7036.674 75.65 -15.82 -89.3 35.02025
tp @s[scores={cutSceneTimer=202}] 7036.682 75.65 -15.82 -89.3 34.95525
tp @s[scores={cutSceneTimer=203}] 7036.689 75.65 -15.82 -89.3 34.89025
tp @s[scores={cutSceneTimer=204}] 7036.697 75.65 -15.82 -89.3 34.82525
tp @s[scores={cutSceneTimer=205}] 7036.705 75.65 -15.82 -89.3 34.76025
tp @s[scores={cutSceneTimer=206}] 7036.713 75.65 -15.82 -89.3 34.69526
tp @s[scores={cutSceneTimer=207}] 7036.721 75.65 -15.82 -89.3 34.63026
tp @s[scores={cutSceneTimer=208}] 7036.729 75.65 -15.82 -89.3 34.56526
tp @s[scores={cutSceneTimer=209}] 7036.736 75.65 -15.82 -89.3 34.50026
tp @s[scores={cutSceneTimer=210}] 7036.744 75.65 -15.82 -89.3 34.43526
tp @s[scores={cutSceneTimer=211}] 7036.752 75.65 -15.82 -89.3 34.37026
tp @s[scores={cutSceneTimer=212}] 7036.76 75.65 -15.82 -89.3 34.30526
tp @s[scores={cutSceneTimer=213}] 7036.768 75.65 -15.82 -89.3 34.24026
tp @s[scores={cutSceneTimer=214}] 7036.775 75.65 -15.82 -89.3 34.17527
tp @s[scores={cutSceneTimer=215}] 7036.783 75.65 -15.82 -89.3 34.11027
tp @s[scores={cutSceneTimer=216}] 7036.791 75.65 -15.82 -89.3 34.04527
tp @s[scores={cutSceneTimer=217}] 7036.799 75.65 -15.82 -89.3 33.98027
tp @s[scores={cutSceneTimer=218}] 7036.807 75.65 -15.82 -89.3 33.91527
tp @s[scores={cutSceneTimer=219}] 7036.814 75.65 -15.82 -89.3 33.85027
tp @s[scores={cutSceneTimer=220}] 7036.822 75.65 -15.82 -89.3 33.78527
tp @s[scores={cutSceneTimer=221}] 7036.83 75.65 -15.82 -89.3 33.72028
tp @s[scores={cutSceneTimer=222}] 7036.838 75.65 -15.82 -89.3 33.65528
tp @s[scores={cutSceneTimer=223}] 7036.846 75.65 -15.82 -89.3 33.59028
tp @s[scores={cutSceneTimer=224}] 7036.854 75.65 -15.82 -89.3 33.52528
tp @s[scores={cutSceneTimer=225}] 7036.861 75.65 -15.82 -89.3 33.46028
tp @s[scores={cutSceneTimer=226}] 7036.869 75.65 -15.82 -89.3 33.39528
tp @s[scores={cutSceneTimer=227}] 7036.877 75.65 -15.82 -89.3 33.33028
tp @s[scores={cutSceneTimer=228}] 7036.885 75.65 -15.82 -89.3 33.26529
tp @s[scores={cutSceneTimer=229}] 7036.893 75.65 -15.82 -89.3 33.20029
tp @s[scores={cutSceneTimer=230}] 7036.9 75.65 -15.82 -89.3 33.13529
tp @s[scores={cutSceneTimer=231}] 7036.908 75.65 -15.82 -89.3 33.07029
tp @s[scores={cutSceneTimer=232}] 7036.916 75.65 -15.82 -89.3 33.00529
tp @s[scores={cutSceneTimer=233}] 7036.924 75.65 -15.82 -89.3 32.94029
tp @s[scores={cutSceneTimer=234}] 7036.932 75.65 -15.82 -89.3 32.87529
tp @s[scores={cutSceneTimer=235}] 7036.939 75.65 -15.82 -89.3 32.8103
tp @s[scores={cutSceneTimer=236}] 7036.947 75.65 -15.82 -89.3 32.7453
tp @s[scores={cutSceneTimer=237}] 7036.955 75.65 -15.82 -89.3 32.6803
tp @s[scores={cutSceneTimer=238}] 7036.963 75.65 -15.82 -89.3 32.6153
tp @s[scores={cutSceneTimer=239}] 7036.971 75.65 -15.82 -89.3 32.5503
tp @s[scores={cutSceneTimer=240}] 7036.979 75.65 -15.82 -89.3 32.4853
tp @s[scores={cutSceneTimer=241}] 7036.986 75.65 -15.82 -89.3 32.4203
tp @s[scores={cutSceneTimer=242}] 7036.994 75.65 -15.82 -89.3 32.3553
tp @s[scores={cutSceneTimer=243}] 7037.002 75.65 -15.82 -89.3 32.29031
tp @s[scores={cutSceneTimer=244}] 7037.01 75.65 -15.82 -89.3 32.22531
tp @s[scores={cutSceneTimer=245}] 7037.018 75.65 -15.82 -89.3 32.16031
tp @s[scores={cutSceneTimer=246}] 7037.025 75.65 -15.82 -89.3 32.09531
tp @s[scores={cutSceneTimer=247}] 7037.033 75.65 -15.82 -89.3 32.03031
tp @s[scores={cutSceneTimer=248}] 7037.041 75.65 -15.82 -89.3 31.96531
tp @s[scores={cutSceneTimer=249}] 7037.049 75.65 -15.82 -89.3 31.90031
tp @s[scores={cutSceneTimer=250}] 7037.057 75.65 -15.82 -89.3 31.83531
tp @s[scores={cutSceneTimer=251}] 7037.064 75.65 -15.82 -89.3 31.77031
tp @s[scores={cutSceneTimer=252}] 7037.072 75.65 -15.82 -89.3 31.70531
tp @s[scores={cutSceneTimer=253}] 7037.08 75.65 -15.82 -89.3 31.64031
tp @s[scores={cutSceneTimer=254}] 7037.088 75.65 -15.82 -89.3 31.57531
tp @s[scores={cutSceneTimer=255}] 7037.096 75.65 -15.82 -89.3 31.51031
tp @s[scores={cutSceneTimer=256}] 7037.104 75.65 -15.82 -89.3 31.44531
tp @s[scores={cutSceneTimer=257}] 7037.111 75.65 -15.82 -89.3 31.38031
tp @s[scores={cutSceneTimer=258}] 7037.119 75.65 -15.82 -89.3 31.31531
tp @s[scores={cutSceneTimer=259}] 7037.127 75.65 -15.82 -89.3 31.25031
tp @s[scores={cutSceneTimer=260}] 7037.135 75.65 -15.82 -89.3 31.1853
tp @s[scores={cutSceneTimer=261}] 7037.143 75.65 -15.82 -89.3 31.1203
tp @s[scores={cutSceneTimer=262}] 7037.15 75.65 -15.82 -89.3 31.0553
tp @s[scores={cutSceneTimer=263}] 7037.158 75.65 -15.82 -89.3 30.9903
tp @s[scores={cutSceneTimer=264}] 7037.166 75.65 -15.82 -89.3 30.9253
tp @s[scores={cutSceneTimer=265}] 7037.174 75.65 -15.82 -89.3 30.8603
tp @s[scores={cutSceneTimer=266}] 7037.182 75.65 -15.82 -89.3 30.7953
tp @s[scores={cutSceneTimer=267}] 7037.189 75.65 -15.82 -89.3 30.7303
tp @s[scores={cutSceneTimer=268}] 7037.197 75.65 -15.82 -89.3 30.6653
tp @s[scores={cutSceneTimer=269}] 7037.205 75.65 -15.82 -89.3 30.6003
tp @s[scores={cutSceneTimer=270}] 7037.213 75.65 -15.82 -89.3 30.5353
tp @s[scores={cutSceneTimer=271}] 7037.221 75.65 -15.82 -89.3 30.4703
tp @s[scores={cutSceneTimer=272}] 7037.229 75.65 -15.82 -89.3 30.4053
tp @s[scores={cutSceneTimer=273}] 7037.236 75.65 -15.82 -89.3 30.3403
tp @s[scores={cutSceneTimer=274}] 7037.244 75.65 -15.82 -89.3 30.2753
tp @s[scores={cutSceneTimer=275}] 7037.252 75.65 -15.82 -89.3 30.2103
tp @s[scores={cutSceneTimer=276}] 7037.26 75.65 -15.82 -89.3 30.1453
tp @s[scores={cutSceneTimer=277}] 7037.268 75.65 -15.82 -89.3 30.0803
tp @s[scores={cutSceneTimer=278}] 7037.275 75.65 -15.82 -89.3 30.0153
tp @s[scores={cutSceneTimer=279}] 7037.283 75.65 -15.82 -89.3 29.95029
tp @s[scores={cutSceneTimer=280}] 7037.291 75.65 -15.82 -89.3 29.88529
tp @s[scores={cutSceneTimer=281}] 7037.299 75.65 -15.82 -89.3 29.82029
tp @s[scores={cutSceneTimer=282}] 7037.307 75.65 -15.82 -89.3 29.75529
tp @s[scores={cutSceneTimer=283}] 7037.314 75.65 -15.82 -89.3 29.69029
tp @s[scores={cutSceneTimer=284}] 7037.322 75.65 -15.82 -89.3 29.62529
tp @s[scores={cutSceneTimer=285}] 7037.33 75.65 -15.82 -89.3 29.56029
tp @s[scores={cutSceneTimer=286}] 7037.338 75.65 -15.82 -89.3 29.49529
tp @s[scores={cutSceneTimer=287}] 7037.346 75.65 -15.82 -89.3 29.43029
tp @s[scores={cutSceneTimer=288}] 7037.354 75.65 -15.82 -89.3 29.36529
tp @s[scores={cutSceneTimer=289}] 7037.361 75.65 -15.82 -89.3 29.30029
tp @s[scores={cutSceneTimer=290}] 7037.369 75.65 -15.82 -89.3 29.23529
tp @s[scores={cutSceneTimer=291}] 7037.377 75.65 -15.82 -89.3 29.17029
tp @s[scores={cutSceneTimer=292}] 7037.385 75.65 -15.82 -89.3 29.10529
tp @s[scores={cutSceneTimer=293}] 7037.393 75.65 -15.82 -89.3 29.04029
tp @s[scores={cutSceneTimer=294}] 7037.4 75.65 -15.82 -89.3 28.97529
tp @s[scores={cutSceneTimer=295}] 7037.408 75.65 -15.82 -89.3 28.91029
tp @s[scores={cutSceneTimer=296}] 7037.416 75.65 -15.82 -89.3 28.84529
tp @s[scores={cutSceneTimer=297}] 7037.424 75.65 -15.82 -89.3 28.78028
tp @s[scores={cutSceneTimer=298}] 7037.432 75.65 -15.82 -89.3 28.71528
tp @s[scores={cutSceneTimer=299}] 7037.439 75.65 -15.82 -89.3 28.65028
tp @s[scores={cutSceneTimer=300}] 7037.447 75.65 -15.82 -89.3 28.58528
execute as @s[scores={cutSceneTimer=280}] run function hp:cutscenes/fade_in

# ¤Flitwick:¤ Welcome back students!
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=20..160}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"   "}]
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=27},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=31},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=38},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=49},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=53},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=60},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Flitwick:¤ Now, one of a wizard's most rudimentary skills is levitation: The ability to make objects fly.
execute as @s[scores={cutSceneTimer=161},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=161..350}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"                "}]
execute as @s[scores={cutSceneTimer=161},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=168},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=172},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=179},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=183},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=190},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=194},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=201},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Flitwick:¤ Заклинание "Wingardium Leviosa" will allow you to levitate certain objects.
execute as @s[scores={cutSceneTimer=351},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=351..500}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"           "}]
execute as @s[scores={cutSceneTimer=351},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=358},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=362},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=369},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=373},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=380},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=384},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=391},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Flitwick:¤ To focus on an object to levitate, start by double clicking £.
execute as @s[scores={cutSceneTimer=500},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=500..600}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"            "}]

# ¤Flitwick:¤ After that, you can click € once to levitate the object you are looking at,
execute as @s[scores={cutSceneTimer=601},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=601..690}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"               "}]

# ¤Flitwick:¤ and click € again to release it.
execute as @s[scores={cutSceneTimer=691},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=691..760}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"       "}]

# ¤Flitwick:¤ When levitating an object simply look where you want it to go.
execute as @s[scores={cutSceneTimer=761},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=761..850}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"            "}]

# ¤Flitwick:¤ You can use the mouse-wheel to adjust its distance to you.
execute as @s[scores={cutSceneTimer=861},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=861..950}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"           "}]

# ¤Flitwick:¤ When you are done you can unfocus by double clicking £ again.
execute as @s[scores={cutSceneTimer=951},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=951..1050}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"            "}]

# ¤Flitwick:¤ This spell is particularly useful for moving heavy blocks into switches, to trigger their mechanisms.
execute as @s[scores={cutSceneTimer=1051},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=1051..1200}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"               "}]

# ¤Flitwick:¤ I've put up an obstacle course that will require you to use the levitation spell.
execute as @s[scores={cutSceneTimer=1201},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=1201..1350}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"               "}]


execute as @s[scores={cutSceneTimer=520},tag=cutsceneLeader] run data merge entity @e[tag=cutsceneWingardiumBlock,limit=1,sort=nearest] {Glowing:1b,NoGravity:1b}
execute as @s[scores={cutSceneTimer=650},tag=cutsceneLeader] run team join wingardium_i @e[tag=cutsceneWingardiumBlock,limit=1,sort=nearest]
execute as @s[scores={cutSceneTimer=650..720},tag=cutsceneLeader] as @e[tag=cutsceneWingardiumBlock,limit=1,sort=nearest] at @s run tp @s ~ ~0.025 ~
execute as @s[scores={cutSceneTimer=800..830},tag=cutsceneLeader] as @e[tag=cutsceneWingardiumBlock,limit=1,sort=nearest] at @s run tp @s ~ ~ ~0.025
execute as @s[scores={cutSceneTimer=841..900},tag=cutsceneLeader] as @e[tag=cutsceneWingardiumBlock,limit=1,sort=nearest] at @s run tp @s ~ ~ ~-0.025
execute as @s[scores={cutSceneTimer=911..940},tag=cutsceneLeader] as @e[tag=cutsceneWingardiumBlock,limit=1,sort=nearest] at @s run tp @s ~ ~ ~0.025
execute as @s[scores={cutSceneTimer=960..1030},tag=cutsceneLeader] as @e[tag=cutsceneWingardiumBlock,limit=1,sort=nearest] at @s run tp @s ~ ~-0.025 ~
execute as @s[scores={cutSceneTimer=1030},tag=cutsceneLeader] run data merge entity @e[tag=cutsceneWingardiumBlock,limit=1,sort=nearest] {Glowing:0b,NoGravity:0b}



execute as @s[scores={cutSceneTimer=300}] run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=301}] 7046.215 69.29031 -15.54851 -107.33 3.6
tp @s[scores={cutSceneTimer=302}] 7046.21 69.29063 -15.54703 -107.33 3.6
tp @s[scores={cutSceneTimer=303}] 7046.206 69.29094 -15.54554 -107.33 3.6
tp @s[scores={cutSceneTimer=304}] 7046.201 69.29125 -15.54405 -107.33 3.6
tp @s[scores={cutSceneTimer=305}] 7046.196 69.29156 -15.54257 -107.33 3.6
tp @s[scores={cutSceneTimer=306}] 7046.191 69.29188 -15.54108 -107.33 3.6
tp @s[scores={cutSceneTimer=307}] 7046.186 69.29219 -15.53959 -107.33 3.6
tp @s[scores={cutSceneTimer=308}] 7046.181 69.2925 -15.53811 -107.33 3.6
tp @s[scores={cutSceneTimer=309}] 7046.176 69.29282 -15.53662 -107.33 3.6
tp @s[scores={cutSceneTimer=310}] 7046.171 69.29313 -15.53513 -107.33 3.6
tp @s[scores={cutSceneTimer=311}] 7046.167 69.29344 -15.53365 -107.33 3.6
tp @s[scores={cutSceneTimer=312}] 7046.162 69.29375 -15.53216 -107.33 3.6
tp @s[scores={cutSceneTimer=313}] 7046.157 69.29407 -15.53067 -107.33 3.6
tp @s[scores={cutSceneTimer=314}] 7046.152 69.29438 -15.52919 -107.33 3.6
tp @s[scores={cutSceneTimer=315}] 7046.147 69.29469 -15.5277 -107.33 3.6
tp @s[scores={cutSceneTimer=316}] 7046.142 69.29501 -15.52621 -107.33 3.6
tp @s[scores={cutSceneTimer=317}] 7046.137 69.29532 -15.52472 -107.33 3.6
tp @s[scores={cutSceneTimer=318}] 7046.132 69.29563 -15.52324 -107.33 3.6
tp @s[scores={cutSceneTimer=319}] 7046.127 69.29594 -15.52175 -107.33 3.6
tp @s[scores={cutSceneTimer=320}] 7046.123 69.29626 -15.52026 -107.33 3.6
tp @s[scores={cutSceneTimer=321}] 7046.118 69.29657 -15.51878 -107.33 3.6
tp @s[scores={cutSceneTimer=322}] 7046.113 69.29688 -15.51729 -107.33 3.6
tp @s[scores={cutSceneTimer=323}] 7046.108 69.2972 -15.5158 -107.33 3.6
tp @s[scores={cutSceneTimer=324}] 7046.103 69.29751 -15.51432 -107.33 3.6
tp @s[scores={cutSceneTimer=325}] 7046.098 69.29782 -15.51283 -107.33 3.6
tp @s[scores={cutSceneTimer=326}] 7046.093 69.29813 -15.51134 -107.33 3.6
tp @s[scores={cutSceneTimer=327}] 7046.088 69.29845 -15.50986 -107.33 3.6
tp @s[scores={cutSceneTimer=328}] 7046.083 69.29876 -15.50837 -107.33 3.6
tp @s[scores={cutSceneTimer=329}] 7046.079 69.29907 -15.50688 -107.33 3.6
tp @s[scores={cutSceneTimer=330}] 7046.074 69.29939 -15.5054 -107.33 3.6
tp @s[scores={cutSceneTimer=331}] 7046.069 69.2997 -15.50391 -107.33 3.6
tp @s[scores={cutSceneTimer=332}] 7046.064 69.30001 -15.50242 -107.33 3.6
tp @s[scores={cutSceneTimer=333}] 7046.059 69.30032 -15.50094 -107.33 3.6
tp @s[scores={cutSceneTimer=334}] 7046.054 69.30064 -15.49945 -107.33 3.6
tp @s[scores={cutSceneTimer=335}] 7046.049 69.30095 -15.49796 -107.33 3.6
tp @s[scores={cutSceneTimer=336}] 7046.044 69.30126 -15.49648 -107.33 3.6
tp @s[scores={cutSceneTimer=337}] 7046.04 69.30157 -15.49499 -107.33 3.6
tp @s[scores={cutSceneTimer=338}] 7046.035 69.30189 -15.4935 -107.33 3.6
tp @s[scores={cutSceneTimer=339}] 7046.03 69.3022 -15.49202 -107.33 3.6
tp @s[scores={cutSceneTimer=340}] 7046.025 69.30251 -15.49053 -107.33 3.6
tp @s[scores={cutSceneTimer=341}] 7046.02 69.30283 -15.48904 -107.33 3.6
tp @s[scores={cutSceneTimer=342}] 7046.015 69.30314 -15.48756 -107.33 3.6
tp @s[scores={cutSceneTimer=343}] 7046.01 69.30345 -15.48607 -107.33 3.6
tp @s[scores={cutSceneTimer=344}] 7046.005 69.30376 -15.48458 -107.33 3.6
tp @s[scores={cutSceneTimer=345}] 7046.000 69.30408 -15.4831 -107.33 3.6
tp @s[scores={cutSceneTimer=346}] 7045.996 69.30439 -15.48161 -107.33 3.6
tp @s[scores={cutSceneTimer=347}] 7045.991 69.3047 -15.48012 -107.33 3.6
tp @s[scores={cutSceneTimer=348}] 7045.986 69.30502 -15.47863 -107.33 3.6
tp @s[scores={cutSceneTimer=349}] 7045.981 69.30533 -15.47715 -107.33 3.6
tp @s[scores={cutSceneTimer=350}] 7045.976 69.30564 -15.47566 -107.33 3.6
tp @s[scores={cutSceneTimer=351}] 7045.971 69.30595 -15.47417 -107.33 3.6
tp @s[scores={cutSceneTimer=352}] 7045.966 69.30627 -15.47269 -107.33 3.6
tp @s[scores={cutSceneTimer=353}] 7045.961 69.30658 -15.4712 -107.33 3.6
tp @s[scores={cutSceneTimer=354}] 7045.957 69.30689 -15.46971 -107.33 3.6
tp @s[scores={cutSceneTimer=355}] 7045.952 69.30721 -15.46823 -107.33 3.6
tp @s[scores={cutSceneTimer=356}] 7045.947 69.30752 -15.46674 -107.33 3.6
tp @s[scores={cutSceneTimer=357}] 7045.942 69.30783 -15.46525 -107.33 3.6
tp @s[scores={cutSceneTimer=358}] 7045.937 69.30814 -15.46377 -107.33 3.6
tp @s[scores={cutSceneTimer=359}] 7045.932 69.30846 -15.46228 -107.33 3.6
tp @s[scores={cutSceneTimer=360}] 7045.927 69.30877 -15.46079 -107.33 3.6
tp @s[scores={cutSceneTimer=361}] 7045.922 69.30908 -15.45931 -107.33 3.6
tp @s[scores={cutSceneTimer=362}] 7045.917 69.30939 -15.45782 -107.33 3.6
tp @s[scores={cutSceneTimer=363}] 7045.913 69.30971 -15.45633 -107.33 3.6
tp @s[scores={cutSceneTimer=364}] 7045.908 69.31002 -15.45485 -107.33 3.6
tp @s[scores={cutSceneTimer=365}] 7045.903 69.31033 -15.45336 -107.33 3.6
tp @s[scores={cutSceneTimer=366}] 7045.898 69.31065 -15.45187 -107.33 3.6
tp @s[scores={cutSceneTimer=367}] 7045.893 69.31096 -15.45039 -107.33 3.6
tp @s[scores={cutSceneTimer=368}] 7045.888 69.31127 -15.4489 -107.33 3.6
tp @s[scores={cutSceneTimer=369}] 7045.883 69.31158 -15.44741 -107.33 3.6
tp @s[scores={cutSceneTimer=370}] 7045.878 69.3119 -15.44593 -107.33 3.6
tp @s[scores={cutSceneTimer=371}] 7045.874 69.31221 -15.44444 -107.33 3.6
tp @s[scores={cutSceneTimer=372}] 7045.869 69.31252 -15.44295 -107.33 3.6
tp @s[scores={cutSceneTimer=373}] 7045.864 69.31284 -15.44147 -107.33 3.6
tp @s[scores={cutSceneTimer=374}] 7045.859 69.31315 -15.43998 -107.33 3.6
tp @s[scores={cutSceneTimer=375}] 7045.854 69.31346 -15.43849 -107.33 3.6
tp @s[scores={cutSceneTimer=376}] 7045.849 69.31377 -15.43701 -107.33 3.6
tp @s[scores={cutSceneTimer=377}] 7045.844 69.31409 -15.43552 -107.33 3.6
tp @s[scores={cutSceneTimer=378}] 7045.839 69.3144 -15.43403 -107.33 3.6
tp @s[scores={cutSceneTimer=379}] 7045.834 69.31471 -15.43254 -107.33 3.6
tp @s[scores={cutSceneTimer=380}] 7045.83 69.31503 -15.43106 -107.33 3.6
tp @s[scores={cutSceneTimer=381}] 7045.825 69.31534 -15.42957 -107.33 3.6
tp @s[scores={cutSceneTimer=382}] 7045.82 69.31565 -15.42808 -107.33 3.6
tp @s[scores={cutSceneTimer=383}] 7045.815 69.31596 -15.4266 -107.33 3.6
tp @s[scores={cutSceneTimer=384}] 7045.81 69.31628 -15.42511 -107.33 3.6
tp @s[scores={cutSceneTimer=385}] 7045.805 69.31659 -15.42362 -107.33 3.6
tp @s[scores={cutSceneTimer=386}] 7045.8 69.3169 -15.42214 -107.33 3.6
tp @s[scores={cutSceneTimer=387}] 7045.795 69.31721 -15.42065 -107.33 3.6
tp @s[scores={cutSceneTimer=388}] 7045.791 69.31753 -15.41916 -107.33 3.6
tp @s[scores={cutSceneTimer=389}] 7045.786 69.31784 -15.41768 -107.33 3.6
tp @s[scores={cutSceneTimer=390}] 7045.781 69.31815 -15.41619 -107.33 3.6
tp @s[scores={cutSceneTimer=391}] 7045.776 69.31847 -15.4147 -107.33 3.6
tp @s[scores={cutSceneTimer=392}] 7045.771 69.31878 -15.41322 -107.33 3.6
tp @s[scores={cutSceneTimer=393}] 7045.766 69.31909 -15.41173 -107.33 3.6
tp @s[scores={cutSceneTimer=394}] 7045.761 69.3194 -15.41024 -107.33 3.6
tp @s[scores={cutSceneTimer=395}] 7045.756 69.31972 -15.40876 -107.33 3.6
tp @s[scores={cutSceneTimer=396}] 7045.751 69.32003 -15.40727 -107.33 3.6
tp @s[scores={cutSceneTimer=397}] 7045.747 69.32034 -15.40578 -107.33 3.6
tp @s[scores={cutSceneTimer=398}] 7045.742 69.32066 -15.4043 -107.33 3.6
tp @s[scores={cutSceneTimer=399}] 7045.737 69.32097 -15.40281 -107.33 3.6
tp @s[scores={cutSceneTimer=400}] 7045.732 69.32128 -15.40132 -107.33 3.6
tp @s[scores={cutSceneTimer=401}] 7045.727 69.32159 -15.39984 -107.33 3.6
tp @s[scores={cutSceneTimer=402}] 7045.722 69.32191 -15.39835 -107.33 3.6
tp @s[scores={cutSceneTimer=403}] 7045.717 69.32222 -15.39686 -107.33 3.6
tp @s[scores={cutSceneTimer=404}] 7045.712 69.32253 -15.39538 -107.33 3.6
tp @s[scores={cutSceneTimer=405}] 7045.708 69.32285 -15.39389 -107.33 3.6
tp @s[scores={cutSceneTimer=406}] 7045.703 69.32316 -15.3924 -107.33 3.6
tp @s[scores={cutSceneTimer=407}] 7045.698 69.32347 -15.39091 -107.33 3.6
tp @s[scores={cutSceneTimer=408}] 7045.693 69.32378 -15.38943 -107.33 3.6
tp @s[scores={cutSceneTimer=409}] 7045.688 69.3241 -15.38794 -107.33 3.6
tp @s[scores={cutSceneTimer=410}] 7045.683 69.32441 -15.38645 -107.33 3.6
tp @s[scores={cutSceneTimer=411}] 7045.678 69.32472 -15.38497 -107.33 3.6
tp @s[scores={cutSceneTimer=412}] 7045.673 69.32504 -15.38348 -107.33 3.6
tp @s[scores={cutSceneTimer=413}] 7045.668 69.32535 -15.38199 -107.33 3.6
tp @s[scores={cutSceneTimer=414}] 7045.664 69.32566 -15.38051 -107.33 3.6
tp @s[scores={cutSceneTimer=415}] 7045.659 69.32597 -15.37902 -107.33 3.6
tp @s[scores={cutSceneTimer=416}] 7045.654 69.32629 -15.37753 -107.33 3.6
tp @s[scores={cutSceneTimer=417}] 7045.649 69.3266 -15.37605 -107.33 3.6
tp @s[scores={cutSceneTimer=418}] 7045.644 69.32691 -15.37456 -107.33 3.6
tp @s[scores={cutSceneTimer=419}] 7045.639 69.32722 -15.37307 -107.33 3.6
tp @s[scores={cutSceneTimer=420}] 7045.634 69.32754 -15.37159 -107.33 3.6
tp @s[scores={cutSceneTimer=421}] 7045.629 69.32785 -15.3701 -107.33 3.6
tp @s[scores={cutSceneTimer=422}] 7045.625 69.32816 -15.36861 -107.33 3.6
tp @s[scores={cutSceneTimer=423}] 7045.62 69.32848 -15.36713 -107.33 3.6
tp @s[scores={cutSceneTimer=424}] 7045.615 69.32879 -15.36564 -107.33 3.6
tp @s[scores={cutSceneTimer=425}] 7045.61 69.3291 -15.36415 -107.33 3.6
tp @s[scores={cutSceneTimer=426}] 7045.605 69.32941 -15.36267 -107.33 3.6
tp @s[scores={cutSceneTimer=427}] 7045.6 69.32973 -15.36118 -107.33 3.6
tp @s[scores={cutSceneTimer=428}] 7045.595 69.33004 -15.35969 -107.33 3.6
tp @s[scores={cutSceneTimer=429}] 7045.59 69.33035 -15.35821 -107.33 3.6
tp @s[scores={cutSceneTimer=430}] 7045.585 69.33067 -15.35672 -107.33 3.6
tp @s[scores={cutSceneTimer=431}] 7045.581 69.33098 -15.35523 -107.33 3.6
tp @s[scores={cutSceneTimer=432}] 7045.576 69.33129 -15.35375 -107.33 3.6
tp @s[scores={cutSceneTimer=433}] 7045.571 69.3316 -15.35226 -107.33 3.6
tp @s[scores={cutSceneTimer=434}] 7045.566 69.33192 -15.35077 -107.33 3.6
tp @s[scores={cutSceneTimer=435}] 7045.561 69.33223 -15.34929 -107.33 3.6
tp @s[scores={cutSceneTimer=436}] 7045.556 69.33254 -15.3478 -107.33 3.6
tp @s[scores={cutSceneTimer=437}] 7045.551 69.33286 -15.34631 -107.33 3.6
tp @s[scores={cutSceneTimer=438}] 7045.546 69.33317 -15.34482 -107.33 3.6
tp @s[scores={cutSceneTimer=439}] 7045.542 69.33348 -15.34334 -107.33 3.6
tp @s[scores={cutSceneTimer=440}] 7045.537 69.33379 -15.34185 -107.33 3.6
tp @s[scores={cutSceneTimer=441}] 7045.532 69.33411 -15.34036 -107.33 3.6
tp @s[scores={cutSceneTimer=442}] 7045.527 69.33442 -15.33888 -107.33 3.6
tp @s[scores={cutSceneTimer=443}] 7045.522 69.33473 -15.33739 -107.33 3.6
tp @s[scores={cutSceneTimer=444}] 7045.517 69.33504 -15.3359 -107.33 3.6
tp @s[scores={cutSceneTimer=445}] 7045.512 69.33536 -15.33442 -107.33 3.6
tp @s[scores={cutSceneTimer=446}] 7045.507 69.33567 -15.33293 -107.33 3.6
tp @s[scores={cutSceneTimer=447}] 7045.502 69.33598 -15.33144 -107.33 3.6
tp @s[scores={cutSceneTimer=448}] 7045.498 69.3363 -15.32996 -107.33 3.6
tp @s[scores={cutSceneTimer=449}] 7045.493 69.33661 -15.32847 -107.33 3.6
tp @s[scores={cutSceneTimer=450}] 7045.488 69.33692 -15.32698 -107.33 3.6
tp @s[scores={cutSceneTimer=451}] 7045.483 69.33723 -15.3255 -107.33 3.6
tp @s[scores={cutSceneTimer=452}] 7045.478 69.33755 -15.32401 -107.33 3.6
tp @s[scores={cutSceneTimer=453}] 7045.473 69.33786 -15.32252 -107.33 3.6
tp @s[scores={cutSceneTimer=454}] 7045.468 69.33817 -15.32104 -107.33 3.6
tp @s[scores={cutSceneTimer=455}] 7045.463 69.33849 -15.31955 -107.33 3.6
tp @s[scores={cutSceneTimer=456}] 7045.458 69.3388 -15.31806 -107.33 3.6
tp @s[scores={cutSceneTimer=457}] 7045.454 69.33911 -15.31658 -107.33 3.6
tp @s[scores={cutSceneTimer=458}] 7045.449 69.33942 -15.31509 -107.33 3.6
tp @s[scores={cutSceneTimer=459}] 7045.444 69.33974 -15.3136 -107.33 3.6
tp @s[scores={cutSceneTimer=460}] 7045.439 69.34005 -15.31212 -107.33 3.6
tp @s[scores={cutSceneTimer=461}] 7045.434 69.34036 -15.31063 -107.33 3.6
tp @s[scores={cutSceneTimer=462}] 7045.429 69.34068 -15.30914 -107.33 3.6
tp @s[scores={cutSceneTimer=463}] 7045.424 69.34099 -15.30766 -107.33 3.6
tp @s[scores={cutSceneTimer=464}] 7045.419 69.3413 -15.30617 -107.33 3.6
tp @s[scores={cutSceneTimer=465}] 7045.415 69.34161 -15.30468 -107.33 3.6
tp @s[scores={cutSceneTimer=466}] 7045.41 69.34193 -15.30319 -107.33 3.6
tp @s[scores={cutSceneTimer=467}] 7045.405 69.34224 -15.30171 -107.33 3.6
tp @s[scores={cutSceneTimer=468}] 7045.4 69.34255 -15.30022 -107.33 3.6
tp @s[scores={cutSceneTimer=469}] 7045.395 69.34286 -15.29873 -107.33 3.6
tp @s[scores={cutSceneTimer=470}] 7045.39 69.34318 -15.29725 -107.33 3.6
tp @s[scores={cutSceneTimer=471}] 7045.385 69.34349 -15.29576 -107.33 3.6
tp @s[scores={cutSceneTimer=472}] 7045.38 69.3438 -15.29427 -107.33 3.6
tp @s[scores={cutSceneTimer=473}] 7045.375 69.34412 -15.29279 -107.33 3.6
tp @s[scores={cutSceneTimer=474}] 7045.371 69.34443 -15.2913 -107.33 3.6
tp @s[scores={cutSceneTimer=475}] 7045.366 69.34474 -15.28981 -107.33 3.6
tp @s[scores={cutSceneTimer=476}] 7045.361 69.34505 -15.28833 -107.33 3.6
tp @s[scores={cutSceneTimer=477}] 7045.356 69.34537 -15.28684 -107.33 3.6
tp @s[scores={cutSceneTimer=478}] 7045.351 69.34568 -15.28535 -107.33 3.6
tp @s[scores={cutSceneTimer=479}] 7045.346 69.34599 -15.28387 -107.33 3.6
tp @s[scores={cutSceneTimer=480}] 7045.341 69.34631 -15.28238 -107.33 3.6
tp @s[scores={cutSceneTimer=481}] 7045.336 69.34662 -15.28089 -107.33 3.6
tp @s[scores={cutSceneTimer=482}] 7045.332 69.34693 -15.27941 -107.33 3.6
tp @s[scores={cutSceneTimer=483}] 7045.327 69.34724 -15.27792 -107.33 3.6
tp @s[scores={cutSceneTimer=484}] 7045.322 69.34756 -15.27643 -107.33 3.6
tp @s[scores={cutSceneTimer=485}] 7045.317 69.34787 -15.27495 -107.33 3.6
tp @s[scores={cutSceneTimer=486}] 7045.312 69.34818 -15.27346 -107.33 3.6
tp @s[scores={cutSceneTimer=487}] 7045.307 69.3485 -15.27197 -107.33 3.6
tp @s[scores={cutSceneTimer=488}] 7045.302 69.34881 -15.27049 -107.33 3.6
tp @s[scores={cutSceneTimer=489}] 7045.297 69.34912 -15.269 -107.33 3.6
tp @s[scores={cutSceneTimer=490}] 7045.292 69.34943 -15.26751 -107.33 3.6
tp @s[scores={cutSceneTimer=491}] 7045.288 69.34975 -15.26603 -107.33 3.6
tp @s[scores={cutSceneTimer=492}] 7045.283 69.35006 -15.26454 -107.33 3.6
tp @s[scores={cutSceneTimer=493}] 7045.278 69.35037 -15.26305 -107.33 3.6
tp @s[scores={cutSceneTimer=494}] 7045.273 69.35069 -15.26157 -107.33 3.6
tp @s[scores={cutSceneTimer=495}] 7045.268 69.351 -15.26008 -107.33 3.6
tp @s[scores={cutSceneTimer=496}] 7045.263 69.35131 -15.25859 -107.33 3.6
tp @s[scores={cutSceneTimer=497}] 7045.258 69.35162 -15.2571 -107.33 3.6
tp @s[scores={cutSceneTimer=498}] 7045.253 69.35194 -15.25562 -107.33 3.6
tp @s[scores={cutSceneTimer=499}] 7045.249 69.35225 -15.25413 -107.33 3.6
tp @s[scores={cutSceneTimer=500}] 7045.244 69.35256 -15.25264 -107.33 3.6
execute as @s[scores={cutSceneTimer=480}] run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=500}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=500..1050}] anchored eyes run tp @s 7036.76 68.16 -18.03 facing entity @e[tag=cutsceneWingardiumBlock,limit=1,sort=nearest] feet
execute as @s[scores={cutSceneTimer=1030}] run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=1051}] run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=1051}] 6923.03 33 -29.06 -135.26 -1.864
tp @s[scores={cutSceneTimer=1052}] 6923.03 33 -29.06 -135.36 -1.788
tp @s[scores={cutSceneTimer=1053}] 6923.03 33 -29.06 -135.46 -1.712
tp @s[scores={cutSceneTimer=1054}] 6923.03 33 -29.06 -135.56 -1.636
tp @s[scores={cutSceneTimer=1055}] 6923.03 33 -29.06 -135.66 -1.56
tp @s[scores={cutSceneTimer=1056}] 6923.03 33 -29.06 -135.76 -1.484
tp @s[scores={cutSceneTimer=1057}] 6923.03 33 -29.06 -135.86 -1.408
tp @s[scores={cutSceneTimer=1058}] 6923.03 33 -29.06 -135.9601 -1.332
tp @s[scores={cutSceneTimer=1059}] 6923.03 33 -29.06 -136.0601 -1.256
tp @s[scores={cutSceneTimer=1060}] 6923.03 33 -29.06 -136.1601 -1.18
tp @s[scores={cutSceneTimer=1061}] 6923.03 33 -29.06 -136.2601 -1.104
tp @s[scores={cutSceneTimer=1062}] 6923.03 33 -29.06 -136.3601 -1.028
tp @s[scores={cutSceneTimer=1063}] 6923.03 33 -29.06 -136.4601 -0.9520004
tp @s[scores={cutSceneTimer=1064}] 6923.03 33 -29.06 -136.5601 -0.8760004
tp @s[scores={cutSceneTimer=1065}] 6923.03 33 -29.06 -136.6601 -0.8000004
tp @s[scores={cutSceneTimer=1066}] 6923.03 33 -29.06 -136.7601 -0.7240005
tp @s[scores={cutSceneTimer=1067}] 6923.03 33 -29.06 -136.8601 -0.6480005
tp @s[scores={cutSceneTimer=1068}] 6923.03 33 -29.06 -136.9601 -0.5720005
tp @s[scores={cutSceneTimer=1069}] 6923.03 33 -29.06 -137.0601 -0.4960005
tp @s[scores={cutSceneTimer=1070}] 6923.03 33 -29.06 -137.1601 -0.4200005
tp @s[scores={cutSceneTimer=1071}] 6923.03 33 -29.06 -137.2601 -0.3440005
tp @s[scores={cutSceneTimer=1072}] 6923.03 33 -29.06 -137.3601 -0.2680005
tp @s[scores={cutSceneTimer=1073}] 6923.03 33 -29.06 -137.4601 -0.1920005
tp @s[scores={cutSceneTimer=1074}] 6923.03 33 -29.06 -137.5602 -0.1160005
tp @s[scores={cutSceneTimer=1075}] 6923.03 33 -29.06 -137.6602 -0.04000048
tp @s[scores={cutSceneTimer=1076}] 6923.03 33 -29.06 -137.7602 0.03599951
tp @s[scores={cutSceneTimer=1077}] 6923.03 33 -29.06 -137.8602 0.1119995
tp @s[scores={cutSceneTimer=1078}] 6923.03 33 -29.06 -137.9602 0.1879995
tp @s[scores={cutSceneTimer=1079}] 6923.03 33 -29.06 -138.0602 0.2639995
tp @s[scores={cutSceneTimer=1080}] 6923.03 33 -29.06 -138.1602 0.3399995
tp @s[scores={cutSceneTimer=1081}] 6923.03 33 -29.06 -138.2602 0.4159995
tp @s[scores={cutSceneTimer=1082}] 6923.03 33 -29.06 -138.3602 0.4919995
tp @s[scores={cutSceneTimer=1083}] 6923.03 33 -29.06 -138.4602 0.5679995
tp @s[scores={cutSceneTimer=1084}] 6923.03 33 -29.06 -138.5602 0.6439995
tp @s[scores={cutSceneTimer=1085}] 6923.03 33 -29.06 -138.6602 0.7199995
tp @s[scores={cutSceneTimer=1086}] 6923.03 33 -29.06 -138.7602 0.7959995
tp @s[scores={cutSceneTimer=1087}] 6923.03 33 -29.06 -138.8602 0.8719994
tp @s[scores={cutSceneTimer=1088}] 6923.03 33 -29.06 -138.9602 0.9479994
tp @s[scores={cutSceneTimer=1089}] 6923.03 33 -29.06 -139.0602 1.023999
tp @s[scores={cutSceneTimer=1090}] 6923.03 33 -29.06 -139.1602 1.099999
tp @s[scores={cutSceneTimer=1091}] 6923.03 33 -29.06 -139.2603 1.175999
tp @s[scores={cutSceneTimer=1092}] 6923.03 33 -29.06 -139.3603 1.251999
tp @s[scores={cutSceneTimer=1093}] 6923.03 33 -29.06 -139.4603 1.327999
tp @s[scores={cutSceneTimer=1094}] 6923.03 33 -29.06 -139.5603 1.403999
tp @s[scores={cutSceneTimer=1095}] 6923.03 33 -29.06 -139.6603 1.479999
tp @s[scores={cutSceneTimer=1096}] 6923.03 33 -29.06 -139.7603 1.555999
tp @s[scores={cutSceneTimer=1097}] 6923.03 33 -29.06 -139.8603 1.631999
tp @s[scores={cutSceneTimer=1098}] 6923.03 33 -29.06 -139.9603 1.707999
tp @s[scores={cutSceneTimer=1099}] 6923.03 33 -29.06 -140.0603 1.783999
tp @s[scores={cutSceneTimer=1100}] 6923.03 33 -29.06 -140.1603 1.859999
tp @s[scores={cutSceneTimer=1101}] 6923.03 33 -29.06 -140.2603 1.935999
tp @s[scores={cutSceneTimer=1102}] 6923.03 33 -29.06 -140.3603 2.011999
tp @s[scores={cutSceneTimer=1103}] 6923.03 33 -29.06 -140.4603 2.087999
tp @s[scores={cutSceneTimer=1104}] 6923.03 33 -29.06 -140.5603 2.163999
tp @s[scores={cutSceneTimer=1105}] 6923.03 33 -29.06 -140.6603 2.239999
tp @s[scores={cutSceneTimer=1106}] 6923.03 33 -29.06 -140.7603 2.315999
tp @s[scores={cutSceneTimer=1107}] 6923.03 33 -29.06 -140.8604 2.391999
tp @s[scores={cutSceneTimer=1108}] 6923.03 33 -29.06 -140.9604 2.467999
tp @s[scores={cutSceneTimer=1109}] 6923.03 33 -29.06 -141.0604 2.543999
tp @s[scores={cutSceneTimer=1110}] 6923.03 33 -29.06 -141.1604 2.619999
tp @s[scores={cutSceneTimer=1111}] 6923.03 33 -29.06 -141.2604 2.695999
tp @s[scores={cutSceneTimer=1112}] 6923.03 33 -29.06 -141.3604 2.771999
tp @s[scores={cutSceneTimer=1113}] 6923.03 33 -29.06 -141.4604 2.847999
tp @s[scores={cutSceneTimer=1114}] 6923.03 33 -29.06 -141.5604 2.923999
tp @s[scores={cutSceneTimer=1115}] 6923.03 33 -29.06 -141.6604 2.999999
tp @s[scores={cutSceneTimer=1116}] 6923.03 33 -29.06 -141.7604 3.075999
tp @s[scores={cutSceneTimer=1117}] 6923.03 33 -29.06 -141.8604 3.151999
tp @s[scores={cutSceneTimer=1118}] 6923.03 33 -29.06 -141.9604 3.227999
tp @s[scores={cutSceneTimer=1119}] 6923.03 33 -29.06 -142.0604 3.303999
tp @s[scores={cutSceneTimer=1120}] 6923.03 33 -29.06 -142.1604 3.379999
tp @s[scores={cutSceneTimer=1121}] 6923.03 33 -29.06 -142.2604 3.455999
tp @s[scores={cutSceneTimer=1122}] 6923.03 33 -29.06 -142.3604 3.531999
tp @s[scores={cutSceneTimer=1123}] 6923.03 33 -29.06 -142.4604 3.607999
tp @s[scores={cutSceneTimer=1124}] 6923.03 33 -29.06 -142.5605 3.683999
tp @s[scores={cutSceneTimer=1125}] 6923.03 33 -29.06 -142.6605 3.759999
tp @s[scores={cutSceneTimer=1126}] 6923.03 33 -29.06 -142.7605 3.835999
tp @s[scores={cutSceneTimer=1127}] 6923.03 33 -29.06 -142.8605 3.911999
tp @s[scores={cutSceneTimer=1128}] 6923.03 33 -29.06 -142.9605 3.987998
tp @s[scores={cutSceneTimer=1129}] 6923.03 33 -29.06 -143.0605 4.063999
tp @s[scores={cutSceneTimer=1130}] 6923.03 33 -29.06 -143.1605 4.139999
tp @s[scores={cutSceneTimer=1131}] 6923.03 33 -29.06 -143.2605 4.215999
tp @s[scores={cutSceneTimer=1132}] 6923.03 33 -29.06 -143.3605 4.291999
tp @s[scores={cutSceneTimer=1133}] 6923.03 33 -29.06 -143.4605 4.368
tp @s[scores={cutSceneTimer=1134}] 6923.03 33 -29.06 -143.5605 4.444
tp @s[scores={cutSceneTimer=1135}] 6923.03 33 -29.06 -143.6605 4.52
tp @s[scores={cutSceneTimer=1136}] 6923.03 33 -29.06 -143.7605 4.596
tp @s[scores={cutSceneTimer=1137}] 6923.03 33 -29.06 -143.8605 4.672
tp @s[scores={cutSceneTimer=1138}] 6923.03 33 -29.06 -143.9605 4.748001
tp @s[scores={cutSceneTimer=1139}] 6923.03 33 -29.06 -144.0605 4.824001
tp @s[scores={cutSceneTimer=1140}] 6923.03 33 -29.06 -144.1606 4.900001
tp @s[scores={cutSceneTimer=1141}] 6923.03 33 -29.06 -144.2606 4.976001
tp @s[scores={cutSceneTimer=1142}] 6923.03 33 -29.06 -144.3606 5.052001
tp @s[scores={cutSceneTimer=1143}] 6923.03 33 -29.06 -144.4606 5.128002
tp @s[scores={cutSceneTimer=1144}] 6923.03 33 -29.06 -144.5606 5.204002
tp @s[scores={cutSceneTimer=1145}] 6923.03 33 -29.06 -144.6606 5.280002
tp @s[scores={cutSceneTimer=1146}] 6923.03 33 -29.06 -144.7606 5.356002
tp @s[scores={cutSceneTimer=1147}] 6923.03 33 -29.06 -144.8606 5.432003
tp @s[scores={cutSceneTimer=1148}] 6923.03 33 -29.06 -144.9606 5.508003
tp @s[scores={cutSceneTimer=1149}] 6923.03 33 -29.06 -145.0606 5.584003
tp @s[scores={cutSceneTimer=1150}] 6923.03 33 -29.06 -145.1606 5.660003
tp @s[scores={cutSceneTimer=1151}] 6923.03 33 -29.06 -145.2606 5.736003
tp @s[scores={cutSceneTimer=1152}] 6923.03 33 -29.06 -145.3606 5.812004
tp @s[scores={cutSceneTimer=1153}] 6923.03 33 -29.06 -145.4606 5.888004
tp @s[scores={cutSceneTimer=1154}] 6923.03 33 -29.06 -145.5606 5.964004
tp @s[scores={cutSceneTimer=1155}] 6923.03 33 -29.06 -145.6606 6.040004
tp @s[scores={cutSceneTimer=1156}] 6923.03 33 -29.06 -145.7607 6.116004
tp @s[scores={cutSceneTimer=1157}] 6923.03 33 -29.06 -145.8607 6.192005
tp @s[scores={cutSceneTimer=1158}] 6923.03 33 -29.06 -145.9607 6.268005
tp @s[scores={cutSceneTimer=1159}] 6923.03 33 -29.06 -146.0607 6.344005
tp @s[scores={cutSceneTimer=1160}] 6923.03 33 -29.06 -146.1607 6.420005
tp @s[scores={cutSceneTimer=1161}] 6923.03 33 -29.06 -146.2607 6.496006
tp @s[scores={cutSceneTimer=1162}] 6923.03 33 -29.06 -146.3607 6.572006
tp @s[scores={cutSceneTimer=1163}] 6923.03 33 -29.06 -146.4607 6.648006
tp @s[scores={cutSceneTimer=1164}] 6923.03 33 -29.06 -146.5607 6.724006
tp @s[scores={cutSceneTimer=1165}] 6923.03 33 -29.06 -146.6607 6.800006
tp @s[scores={cutSceneTimer=1166}] 6923.03 33 -29.06 -146.7607 6.876007
tp @s[scores={cutSceneTimer=1167}] 6923.03 33 -29.06 -146.8607 6.952007
tp @s[scores={cutSceneTimer=1168}] 6923.03 33 -29.06 -146.9607 7.028007
tp @s[scores={cutSceneTimer=1169}] 6923.03 33 -29.06 -147.0607 7.104007
tp @s[scores={cutSceneTimer=1170}] 6923.03 33 -29.06 -147.1607 7.180007
tp @s[scores={cutSceneTimer=1171}] 6923.03 33 -29.06 -147.2607 7.256008
tp @s[scores={cutSceneTimer=1172}] 6923.03 33 -29.06 -147.3607 7.332008
tp @s[scores={cutSceneTimer=1173}] 6923.03 33 -29.06 -147.4608 7.408008
tp @s[scores={cutSceneTimer=1174}] 6923.03 33 -29.06 -147.5608 7.484008
tp @s[scores={cutSceneTimer=1175}] 6923.03 33 -29.06 -147.6608 7.560009
tp @s[scores={cutSceneTimer=1176}] 6923.03 33 -29.06 -147.7608 7.636009
tp @s[scores={cutSceneTimer=1177}] 6923.03 33 -29.06 -147.8608 7.712009
tp @s[scores={cutSceneTimer=1178}] 6923.03 33 -29.06 -147.9608 7.788009
tp @s[scores={cutSceneTimer=1179}] 6923.03 33 -29.06 -148.0608 7.864009
tp @s[scores={cutSceneTimer=1180}] 6923.03 33 -29.06 -148.1608 7.94001
tp @s[scores={cutSceneTimer=1181}] 6923.03 33 -29.06 -148.2608 8.016009
tp @s[scores={cutSceneTimer=1182}] 6923.03 33 -29.06 -148.3608 8.09201
tp @s[scores={cutSceneTimer=1183}] 6923.03 33 -29.06 -148.4608 8.16801
tp @s[scores={cutSceneTimer=1184}] 6923.03 33 -29.06 -148.5608 8.24401
tp @s[scores={cutSceneTimer=1185}] 6923.03 33 -29.06 -148.6608 8.32001
tp @s[scores={cutSceneTimer=1186}] 6923.03 33 -29.06 -148.7608 8.39601
tp @s[scores={cutSceneTimer=1187}] 6923.03 33 -29.06 -148.8608 8.472011
tp @s[scores={cutSceneTimer=1188}] 6923.03 33 -29.06 -148.9608 8.548011
tp @s[scores={cutSceneTimer=1189}] 6923.03 33 -29.06 -149.0609 8.624011
tp @s[scores={cutSceneTimer=1190}] 6923.03 33 -29.06 -149.1609 8.700011
tp @s[scores={cutSceneTimer=1191}] 6923.03 33 -29.06 -149.2609 8.776011
tp @s[scores={cutSceneTimer=1192}] 6923.03 33 -29.06 -149.3609 8.852012
tp @s[scores={cutSceneTimer=1193}] 6923.03 33 -29.06 -149.4609 8.928012
tp @s[scores={cutSceneTimer=1194}] 6923.03 33 -29.06 -149.5609 9.004012
tp @s[scores={cutSceneTimer=1195}] 6923.03 33 -29.06 -149.6609 9.080012
tp @s[scores={cutSceneTimer=1196}] 6923.03 33 -29.06 -149.7609 9.156013
tp @s[scores={cutSceneTimer=1197}] 6923.03 33 -29.06 -149.8609 9.232013
tp @s[scores={cutSceneTimer=1198}] 6923.03 33 -29.06 -149.9609 9.308013
tp @s[scores={cutSceneTimer=1199}] 6923.03 33 -29.06 -150.0609 9.384013
tp @s[scores={cutSceneTimer=1200}] 6923.03 33 -29.06 -150.1609 9.460013
execute as @s[scores={cutSceneTimer=1180}] run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=1201}] run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=1201}] 6978.299 40.37497 -30.65092 -11.885 -6.595
tp @s[scores={cutSceneTimer=1202}] 6978.348 40.37993 -30.66178 -11.81 -6.58
tp @s[scores={cutSceneTimer=1203}] 6978.396 40.3849 -30.67258 -11.735 -6.565001
tp @s[scores={cutSceneTimer=1204}] 6978.445 40.38987 -30.68331 -11.66 -6.550001
tp @s[scores={cutSceneTimer=1205}] 6978.495 40.39483 -30.69397 -11.585 -6.535001
tp @s[scores={cutSceneTimer=1206}] 6978.544 40.3998 -30.70457 -11.51 -6.520001
tp @s[scores={cutSceneTimer=1207}] 6978.593 40.40477 -30.7151 -11.435 -6.505001
tp @s[scores={cutSceneTimer=1208}] 6978.643 40.40973 -30.72557 -11.36 -6.490001
tp @s[scores={cutSceneTimer=1209}] 6978.692 40.4147 -30.73597 -11.285 -6.475001
tp @s[scores={cutSceneTimer=1210}] 6978.741 40.41967 -30.74631 -11.21 -6.460001
tp @s[scores={cutSceneTimer=1211}] 6978.791 40.42463 -30.75658 -11.135 -6.445002
tp @s[scores={cutSceneTimer=1212}] 6978.84 40.4296 -30.76679 -11.06 -6.430002
tp @s[scores={cutSceneTimer=1213}] 6978.889 40.43457 -30.77693 -10.985 -6.415002
tp @s[scores={cutSceneTimer=1214}] 6978.938 40.43954 -30.78701 -10.91 -6.400002
tp @s[scores={cutSceneTimer=1215}] 6978.988 40.44451 -30.79702 -10.835 -6.385002
tp @s[scores={cutSceneTimer=1216}] 6979.037 40.44948 -30.80696 -10.76 -6.370002
tp @s[scores={cutSceneTimer=1217}] 6979.086 40.45445 -30.81684 -10.685 -6.355002
tp @s[scores={cutSceneTimer=1218}] 6979.136 40.45942 -30.82666 -10.61 -6.340003
tp @s[scores={cutSceneTimer=1219}] 6979.185 40.46439 -30.8364 -10.535 -6.325003
tp @s[scores={cutSceneTimer=1220}] 6979.234 40.46936 -30.84609 -10.46 -6.310003
tp @s[scores={cutSceneTimer=1221}] 6979.284 40.47433 -30.85571 -10.385 -6.295003
tp @s[scores={cutSceneTimer=1222}] 6979.333 40.4793 -30.86526 -10.31 -6.280003
tp @s[scores={cutSceneTimer=1223}] 6979.382 40.48427 -30.87475 -10.235 -6.265003
tp @s[scores={cutSceneTimer=1224}] 6979.432 40.48924 -30.88417 -10.16 -6.250003
tp @s[scores={cutSceneTimer=1225}] 6979.481 40.49421 -30.89352 -10.085 -6.235003
tp @s[scores={cutSceneTimer=1226}] 6979.53 40.49918 -30.90281 -10.01 -6.220004
tp @s[scores={cutSceneTimer=1227}] 6979.58 40.50415 -30.91204 -9.935005 -6.205004
tp @s[scores={cutSceneTimer=1228}] 6979.629 40.50912 -30.9212 -9.860005 -6.190004
tp @s[scores={cutSceneTimer=1229}] 6979.678 40.5141 -30.93029 -9.785006 -6.175004
tp @s[scores={cutSceneTimer=1230}] 6979.728 40.51907 -30.93932 -9.710006 -6.160004
tp @s[scores={cutSceneTimer=1231}] 6979.777 40.52404 -30.94828 -9.635006 -6.145004
tp @s[scores={cutSceneTimer=1232}] 6979.826 40.52901 -30.95717 -9.560006 -6.130004
tp @s[scores={cutSceneTimer=1233}] 6979.875 40.53398 -30.96601 -9.485006 -6.115005
tp @s[scores={cutSceneTimer=1234}] 6979.925 40.53895 -30.97477 -9.410007 -6.100005
tp @s[scores={cutSceneTimer=1235}] 6979.974 40.54392 -30.98347 -9.335007 -6.085005
tp @s[scores={cutSceneTimer=1236}] 6980.023 40.54889 -30.9921 -9.260007 -6.070005
tp @s[scores={cutSceneTimer=1237}] 6980.073 40.55386 -31.00067 -9.185007 -6.055005
tp @s[scores={cutSceneTimer=1238}] 6980.122 40.55883 -31.00917 -9.110007 -6.040005
tp @s[scores={cutSceneTimer=1239}] 6980.171 40.5638 -31.01761 -9.035007 -6.025005
tp @s[scores={cutSceneTimer=1240}] 6980.221 40.56877 -31.02598 -8.960008 -6.010005
tp @s[scores={cutSceneTimer=1241}] 6980.27 40.57375 -31.03428 -8.885008 -5.995006
tp @s[scores={cutSceneTimer=1242}] 6980.319 40.57872 -31.04252 -8.810008 -5.980006
tp @s[scores={cutSceneTimer=1243}] 6980.369 40.58369 -31.05069 -8.735008 -5.965006
tp @s[scores={cutSceneTimer=1244}] 6980.418 40.58867 -31.0588 -8.660008 -5.950006
tp @s[scores={cutSceneTimer=1245}] 6980.467 40.59364 -31.06684 -8.585009 -5.935006
tp @s[scores={cutSceneTimer=1246}] 6980.517 40.59862 -31.07481 -8.510009 -5.920006
tp @s[scores={cutSceneTimer=1247}] 6980.566 40.60359 -31.08272 -8.435009 -5.905006
tp @s[scores={cutSceneTimer=1248}] 6980.615 40.60857 -31.09057 -8.360009 -5.890007
tp @s[scores={cutSceneTimer=1249}] 6980.665 40.61354 -31.09834 -8.285009 -5.875007
tp @s[scores={cutSceneTimer=1250}] 6980.714 40.61852 -31.10606 -8.21001 -5.860007
tp @s[scores={cutSceneTimer=1251}] 6980.763 40.62349 -31.1137 -8.13501 -5.845007
tp @s[scores={cutSceneTimer=1252}] 6980.813 40.62846 -31.12128 -8.06001 -5.830007
tp @s[scores={cutSceneTimer=1253}] 6980.863 40.63344 -31.12879 -7.98501 -5.815007
tp @s[scores={cutSceneTimer=1254}] 6980.913 40.63841 -31.13624 -7.91001 -5.800007
tp @s[scores={cutSceneTimer=1255}] 6980.962 40.64339 -31.14362 -7.835011 -5.785007
tp @s[scores={cutSceneTimer=1256}] 6981.012 40.64836 -31.15094 -7.760011 -5.770008
tp @s[scores={cutSceneTimer=1257}] 6981.062 40.65334 -31.15819 -7.685011 -5.755008
tp @s[scores={cutSceneTimer=1258}] 6981.112 40.65831 -31.16537 -7.610011 -5.740008
tp @s[scores={cutSceneTimer=1259}] 6981.162 40.66328 -31.17249 -7.535011 -5.725008
tp @s[scores={cutSceneTimer=1260}] 6981.211 40.66826 -31.17954 -7.460011 -5.710008
tp @s[scores={cutSceneTimer=1261}] 6981.261 40.67323 -31.18652 -7.385012 -5.695008
tp @s[scores={cutSceneTimer=1262}] 6981.311 40.67821 -31.19344 -7.310012 -5.680008
tp @s[scores={cutSceneTimer=1263}] 6981.361 40.68318 -31.20029 -7.235012 -5.665009
tp @s[scores={cutSceneTimer=1264}] 6981.411 40.68816 -31.20708 -7.160012 -5.650009
tp @s[scores={cutSceneTimer=1265}] 6981.46 40.69313 -31.2138 -7.085012 -5.635009
tp @s[scores={cutSceneTimer=1266}] 6981.51 40.6981 -31.22046 -7.010013 -5.620009
tp @s[scores={cutSceneTimer=1267}] 6981.56 40.70308 -31.22704 -6.935013 -5.605009
tp @s[scores={cutSceneTimer=1268}] 6981.61 40.70805 -31.23356 -6.860013 -5.590009
tp @s[scores={cutSceneTimer=1269}] 6981.66 40.71303 -31.24002 -6.785013 -5.575009
tp @s[scores={cutSceneTimer=1270}] 6981.709 40.71801 -31.24641 -6.710013 -5.560009
tp @s[scores={cutSceneTimer=1271}] 6981.759 40.72298 -31.25273 -6.635014 -5.54501
tp @s[scores={cutSceneTimer=1272}] 6981.809 40.72796 -31.25899 -6.560014 -5.53001
tp @s[scores={cutSceneTimer=1273}] 6981.859 40.73294 -31.26518 -6.485014 -5.51501
tp @s[scores={cutSceneTimer=1274}] 6981.909 40.73792 -31.27131 -6.410014 -5.50001
tp @s[scores={cutSceneTimer=1275}] 6981.958 40.7429 -31.27736 -6.335014 -5.48501
tp @s[scores={cutSceneTimer=1276}] 6982.008 40.74788 -31.28336 -6.260015 -5.47001
tp @s[scores={cutSceneTimer=1277}] 6982.058 40.75285 -31.28928 -6.185015 -5.45501
tp @s[scores={cutSceneTimer=1278}] 6982.108 40.75783 -31.29514 -6.110015 -5.440011
tp @s[scores={cutSceneTimer=1279}] 6982.158 40.76281 -31.30094 -6.035015 -5.425011
tp @s[scores={cutSceneTimer=1280}] 6982.208 40.76779 -31.30666 -5.960015 -5.410011
tp @s[scores={cutSceneTimer=1281}] 6982.257 40.77277 -31.31232 -5.885015 -5.395011
tp @s[scores={cutSceneTimer=1282}] 6982.307 40.77774 -31.31792 -5.810016 -5.380011
tp @s[scores={cutSceneTimer=1283}] 6982.357 40.78272 -31.32345 -5.735016 -5.365011
tp @s[scores={cutSceneTimer=1284}] 6982.407 40.7877 -31.32891 -5.660016 -5.350011
tp @s[scores={cutSceneTimer=1285}] 6982.457 40.79268 -31.3343 -5.585016 -5.335011
tp @s[scores={cutSceneTimer=1286}] 6982.506 40.79766 -31.33963 -5.510016 -5.320012
tp @s[scores={cutSceneTimer=1287}] 6982.556 40.80264 -31.34489 -5.435017 -5.305012
tp @s[scores={cutSceneTimer=1288}] 6982.606 40.80761 -31.35009 -5.360017 -5.290012
tp @s[scores={cutSceneTimer=1289}] 6982.656 40.81259 -31.35522 -5.285017 -5.275012
tp @s[scores={cutSceneTimer=1290}] 6982.706 40.81757 -31.36028 -5.210017 -5.260012
tp @s[scores={cutSceneTimer=1291}] 6982.755 40.82255 -31.36528 -5.135017 -5.245012
tp @s[scores={cutSceneTimer=1292}] 6982.805 40.82753 -31.37021 -5.060018 -5.230012
tp @s[scores={cutSceneTimer=1293}] 6982.855 40.8325 -31.37507 -4.985018 -5.215013
tp @s[scores={cutSceneTimer=1294}] 6982.905 40.83748 -31.37987 -4.910018 -5.200013
tp @s[scores={cutSceneTimer=1295}] 6982.955 40.84246 -31.3846 -4.835018 -5.185013
tp @s[scores={cutSceneTimer=1296}] 6983.004 40.84744 -31.38927 -4.760018 -5.170013
tp @s[scores={cutSceneTimer=1297}] 6983.054 40.85242 -31.39387 -4.685019 -5.155013
tp @s[scores={cutSceneTimer=1298}] 6983.104 40.8574 -31.3984 -4.610019 -5.140013
tp @s[scores={cutSceneTimer=1299}] 6983.154 40.86237 -31.40286 -4.535019 -5.125013
tp @s[scores={cutSceneTimer=1300}] 6983.204 40.86735 -31.40726 -4.460019 -5.110013
tp @s[scores={cutSceneTimer=1301}] 6983.253 40.87233 -31.41159 -4.385019 -5.095014
tp @s[scores={cutSceneTimer=1302}] 6983.303 40.87732 -31.41586 -4.310019 -5.080014
tp @s[scores={cutSceneTimer=1303}] 6983.353 40.8823 -31.42006 -4.23502 -5.065014
tp @s[scores={cutSceneTimer=1304}] 6983.403 40.88728 -31.42419 -4.16002 -5.050014
tp @s[scores={cutSceneTimer=1305}] 6983.453 40.89226 -31.42826 -4.08502 -5.035014
tp @s[scores={cutSceneTimer=1306}] 6983.502 40.89724 -31.43226 -4.01002 -5.020014
tp @s[scores={cutSceneTimer=1307}] 6983.552 40.90223 -31.43619 -3.93502 -5.005014
tp @s[scores={cutSceneTimer=1308}] 6983.602 40.90721 -31.44006 -3.86002 -4.990015
tp @s[scores={cutSceneTimer=1309}] 6983.652 40.91219 -31.44386 -3.78502 -4.975015
tp @s[scores={cutSceneTimer=1310}] 6983.702 40.91717 -31.44759 -3.71002 -4.960015
tp @s[scores={cutSceneTimer=1311}] 6983.751 40.92215 -31.45125 -3.63502 -4.945015
tp @s[scores={cutSceneTimer=1312}] 6983.801 40.92714 -31.45485 -3.56002 -4.930015
tp @s[scores={cutSceneTimer=1313}] 6983.851 40.93212 -31.45839 -3.48502 -4.915015
tp @s[scores={cutSceneTimer=1314}] 6983.901 40.9371 -31.46186 -3.41002 -4.900015
tp @s[scores={cutSceneTimer=1315}] 6983.951 40.94208 -31.46526 -3.33502 -4.885015
tp @s[scores={cutSceneTimer=1316}] 6984.000 40.94706 -31.46859 -3.26002 -4.870016
tp @s[scores={cutSceneTimer=1317}] 6984.05 40.95205 -31.47186 -3.18502 -4.855016
tp @s[scores={cutSceneTimer=1318}] 6984.1 40.95703 -31.47506 -3.11002 -4.840016
tp @s[scores={cutSceneTimer=1319}] 6984.15 40.96201 -31.47819 -3.03502 -4.825016
tp @s[scores={cutSceneTimer=1320}] 6984.2 40.96699 -31.48126 -2.96002 -4.810016
tp @s[scores={cutSceneTimer=1321}] 6984.25 40.97197 -31.48426 -2.88502 -4.795016
tp @s[scores={cutSceneTimer=1322}] 6984.299 40.97696 -31.48719 -2.810019 -4.780016
tp @s[scores={cutSceneTimer=1323}] 6984.349 40.98194 -31.49006 -2.735019 -4.765017
tp @s[scores={cutSceneTimer=1324}] 6984.399 40.98692 -31.49286 -2.660019 -4.750017
tp @s[scores={cutSceneTimer=1325}] 6984.449 40.9919 -31.49559 -2.585019 -4.735017
tp @s[scores={cutSceneTimer=1326}] 6984.499 40.99688 -31.49826 -2.510019 -4.720017
tp @s[scores={cutSceneTimer=1327}] 6984.548 41.00187 -31.50086 -2.435019 -4.705017
tp @s[scores={cutSceneTimer=1328}] 6984.598 41.00685 -31.5034 -2.360019 -4.690017
tp @s[scores={cutSceneTimer=1329}] 6984.648 41.01183 -31.50587 -2.285019 -4.675017
tp @s[scores={cutSceneTimer=1330}] 6984.698 41.01681 -31.50827 -2.210019 -4.660017
tp @s[scores={cutSceneTimer=1331}] 6984.748 41.02179 -31.5106 -2.135019 -4.645018
tp @s[scores={cutSceneTimer=1332}] 6984.797 41.02678 -31.51287 -2.060019 -4.630018
tp @s[scores={cutSceneTimer=1333}] 6984.847 41.03176 -31.51507 -1.985019 -4.615018
tp @s[scores={cutSceneTimer=1334}] 6984.897 41.03674 -31.5172 -1.910019 -4.600018
tp @s[scores={cutSceneTimer=1335}] 6984.947 41.04172 -31.51927 -1.835019 -4.585018
tp @s[scores={cutSceneTimer=1336}] 6984.997 41.04671 -31.52127 -1.760019 -4.570018
tp @s[scores={cutSceneTimer=1337}] 6985.046 41.05169 -31.52321 -1.685019 -4.555018
tp @s[scores={cutSceneTimer=1338}] 6985.096 41.05668 -31.52507 -1.610019 -4.540019
tp @s[scores={cutSceneTimer=1339}] 6985.146 41.06166 -31.52687 -1.535019 -4.525019
tp @s[scores={cutSceneTimer=1340}] 6985.196 41.06665 -31.52861 -1.460019 -4.510019
tp @s[scores={cutSceneTimer=1341}] 6985.246 41.07164 -31.53028 -1.385019 -4.495019
tp @s[scores={cutSceneTimer=1342}] 6985.295 41.07662 -31.53188 -1.310019 -4.480019
tp @s[scores={cutSceneTimer=1343}] 6985.345 41.08161 -31.53341 -1.235018 -4.465019
tp @s[scores={cutSceneTimer=1344}] 6985.395 41.08659 -31.53488 -1.160018 -4.450019
tp @s[scores={cutSceneTimer=1345}] 6985.445 41.09158 -31.53628 -1.085018 -4.435019
tp @s[scores={cutSceneTimer=1346}] 6985.495 41.09657 -31.53761 -1.010018 -4.42002
tp @s[scores={cutSceneTimer=1347}] 6985.544 41.10155 -31.53888 -0.9350184 -4.40502
tp @s[scores={cutSceneTimer=1348}] 6985.594 41.10654 -31.54008 -0.8600184 -4.39002
tp @s[scores={cutSceneTimer=1349}] 6985.644 41.11152 -31.54121 -0.7850184 -4.37502
tp @s[scores={cutSceneTimer=1350}] 6985.694 41.11651 -31.54227 -0.7100184 -4.36002
tp @s[scores={cutSceneTimer=1351}] 6985.744 41.12149 -31.54327 -0.6350184 -4.34502
tp @s[scores={cutSceneTimer=1352}] 6985.793 41.12648 -31.54421 -0.5600184 -4.33002
tp @s[scores={cutSceneTimer=1353}] 6985.843 41.13147 -31.54507 -0.4850184 -4.315021
tp @s[scores={cutSceneTimer=1354}] 6985.893 41.13645 -31.54587 -0.4100184 -4.300021
tp @s[scores={cutSceneTimer=1355}] 6985.943 41.14144 -31.5466 -0.3350185 -4.285021
tp @s[scores={cutSceneTimer=1356}] 6985.993 41.14642 -31.54727 -0.2600185 -4.270021
tp @s[scores={cutSceneTimer=1357}] 6986.042 41.15141 -31.54787 -0.1850185 -4.255021
tp @s[scores={cutSceneTimer=1358}] 6986.092 41.15639 -31.5484 -0.1100185 -4.240021
tp @s[scores={cutSceneTimer=1359}] 6986.142 41.16138 -31.54887 -0.03501846 -4.225021
tp @s[scores={cutSceneTimer=1360}] 6986.192 41.16637 -31.54926 0.03998154 -4.210021
tp @s[scores={cutSceneTimer=1361}] 6986.242 41.17135 -31.5496 0.1149815 -4.195022
tp @s[scores={cutSceneTimer=1362}] 6986.292 41.17634 -31.54986 0.1899815 -4.180022
tp @s[scores={cutSceneTimer=1363}] 6986.341 41.18132 -31.55006 0.2649816 -4.165022
tp @s[scores={cutSceneTimer=1364}] 6986.391 41.18631 -31.55019 0.3399816 -4.150022
tp @s[scores={cutSceneTimer=1365}] 6986.441 41.1913 -31.55026 0.4149815 -4.135022
tp @s[scores={cutSceneTimer=1366}] 6986.491 41.19628 -31.55025 0.4899815 -4.120022
tp @s[scores={cutSceneTimer=1367}] 6986.541 41.20127 -31.55019 0.5649815 -4.105022
tp @s[scores={cutSceneTimer=1368}] 6986.59 41.20625 -31.55005 0.6399815 -4.090023
tp @s[scores={cutSceneTimer=1369}] 6986.64 41.21124 -31.54985 0.7149815 -4.075023
tp @s[scores={cutSceneTimer=1370}] 6986.69 41.21622 -31.54958 0.7899815 -4.060023
tp @s[scores={cutSceneTimer=1371}] 6986.74 41.22121 -31.54924 0.8649815 -4.045023
tp @s[scores={cutSceneTimer=1372}] 6986.79 41.2262 -31.54884 0.9399815 -4.030023
tp @s[scores={cutSceneTimer=1373}] 6986.839 41.23118 -31.54837 1.014982 -4.015023
tp @s[scores={cutSceneTimer=1374}] 6986.889 41.23617 -31.54784 1.089982 -4.000023
tp @s[scores={cutSceneTimer=1375}] 6986.939 41.24116 -31.54723 1.164982 -3.985023
tp @s[scores={cutSceneTimer=1376}] 6986.989 41.24615 -31.54656 1.239982 -3.970023
tp @s[scores={cutSceneTimer=1377}] 6987.039 41.25114 -31.54583 1.314982 -3.955023
tp @s[scores={cutSceneTimer=1378}] 6987.088 41.25613 -31.54502 1.389982 -3.940023
tp @s[scores={cutSceneTimer=1379}] 6987.138 41.26112 -31.54416 1.464982 -3.925023
tp @s[scores={cutSceneTimer=1380}] 6987.188 41.26611 -31.54322 1.539982 -3.910023
tp @s[scores={cutSceneTimer=1381}] 6987.238 41.2711 -31.54222 1.614982 -3.895023
tp @s[scores={cutSceneTimer=1382}] 6987.288 41.27609 -31.54115 1.689982 -3.880023
tp @s[scores={cutSceneTimer=1383}] 6987.337 41.28108 -31.54001 1.764982 -3.865022
tp @s[scores={cutSceneTimer=1384}] 6987.387 41.28607 -31.53881 1.839982 -3.850022
tp @s[scores={cutSceneTimer=1385}] 6987.437 41.29106 -31.53753 1.914982 -3.835022
tp @s[scores={cutSceneTimer=1386}] 6987.487 41.29605 -31.5362 1.989982 -3.820022
tp @s[scores={cutSceneTimer=1387}] 6987.537 41.30104 -31.53479 2.064982 -3.805022
tp @s[scores={cutSceneTimer=1388}] 6987.586 41.30603 -31.53332 2.139982 -3.790022
tp @s[scores={cutSceneTimer=1389}] 6987.636 41.31102 -31.53179 2.214982 -3.775022
tp @s[scores={cutSceneTimer=1390}] 6987.686 41.31601 -31.53018 2.289982 -3.760022
tp @s[scores={cutSceneTimer=1391}] 6987.736 41.321 -31.52851 2.364982 -3.745022
tp @s[scores={cutSceneTimer=1392}] 6987.786 41.32598 -31.52677 2.439982 -3.730021
tp @s[scores={cutSceneTimer=1393}] 6987.835 41.33097 -31.52497 2.514982 -3.715021
tp @s[scores={cutSceneTimer=1394}] 6987.885 41.33596 -31.5231 2.589983 -3.700021
tp @s[scores={cutSceneTimer=1395}] 6987.935 41.34095 -31.52116 2.664983 -3.685021
tp @s[scores={cutSceneTimer=1396}] 6987.985 41.34594 -31.51916 2.739983 -3.670021
tp @s[scores={cutSceneTimer=1397}] 6988.035 41.35093 -31.51708 2.814983 -3.655021
tp @s[scores={cutSceneTimer=1398}] 6988.084 41.35592 -31.51495 2.889983 -3.640021
tp @s[scores={cutSceneTimer=1399}] 6988.134 41.36091 -31.51274 2.964983 -3.625021
tp @s[scores={cutSceneTimer=1400}] 6988.184 41.3659 -31.51047 3.039983 -3.610021
execute as @s[scores={cutSceneTimer=1380}] run function hp:cutscenes/fade_in



# ¤Flitwick:¤ Best of luck!
execute as @s[scores={cutSceneTimer=1351},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=1351..1420}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"   "}]

# Clear subtitles instantly rather than a slow fade I can't control
execute as @s[scores={cutSceneTimer=1421..}] run title @s actionbar ""

execute as @s[scores={cutSceneTimer=1442}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=1442}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=1442}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=1442}] run effect clear @s blindness
execute as @s[scores={cutSceneTimer=1442}] run effect clear @s night_vision
execute as @s[scores={cutSceneTimer=1442}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=1443}] run tp @s[scores={playerID=1}] 6918.35 33.00 -32.68 -449.28 -1.18
execute as @s[scores={cutSceneTimer=1443}] run tp @s[scores={playerID=2}] 6918.37 33.00 -35.05 -442.06 -2.32
execute as @s[scores={cutSceneTimer=1443}] run tp @s[scores={playerID=3}] 6919.48 33.00 -28.82 -460.36 -2.92
execute as @s[scores={cutSceneTimer=1443}] run tp @s[scores={playerID=4}] 6921.79 33.00 -39.46 -413.07 -1.07
execute as @s[scores={cutSceneTimer=1463}] run tag @s add dontExitCutSceneSilent
execute as @s[scores={cutSceneTimer=1463}] run scoreboard players set playerInWingardiumSpellChallenge global 1
execute as @s[scores={cutSceneTimer=1463}] run function hp:quests/timer/start_pensive_timer
execute as @s[scores={cutSceneTimer=1250}] run function hp:music/music/swish_and_flick
execute as @s[scores={cutSceneTimer=1250}] run scoreboard players set @s queuedMusic 0
execute as @s[scores={cutSceneTimer=1463}] run function hp:cutscenes/exit_cutscene



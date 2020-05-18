execute as @s[scores={cutSceneTimer=0}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=22}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=22}] run function hp:cutscenes/fade_out

title @s actionbar ["",{"text":" "}]

# Join creature team to avoid dementors attacking
execute as @s[scores={cutSceneTimer=1}] run team join Creature @s


# Reset
# Load important chunks for low render distance and slow computers that haven't loaded them yet
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5000 10022 1 1 false @s
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5000 10009 1 1 false @s
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5016 10022 1 1 false @s
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 5016 10009 1 1 false @s
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run kill @e[tag=chunkLoader]

execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=hangingDementor1] run tp @s 5009.475 115.779 10045.307
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=hangingDementor2] run tp @s 4979.651 135.151 10046.422
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=hangingDementor3] run tp @s 4980.446 128.307 10054.7826
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=hangingDementor4] run tp @s 5001.269 130.622 10043.605
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=hangingDementor5] run tp @s 4975.411 133.769 9996.526
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=hangingDementor6] run tp @s 4982.088 141.110 9987.434 
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=hangingDementor7] run tp @s 5084.239 58.69 10058.153

execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=phoenixOrder1,limit=1] run tp @s 4992 99 10018
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=phoenixOrder2,limit=1] run tp @s 4992 99 10017
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=phoenixOrder3,limit=1] run tp @s 4992 99 10016
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=phoenixOrder4,limit=1] run tp @s 4992 99 10015
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=phoenixOrder5,limit=1] run tp @s 4992 99 10014

execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=phoenixOrder1,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 256
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=phoenixOrder2,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 246
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=phoenixOrder3,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 245
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=phoenixOrder4,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 259
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=phoenixOrder5,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set tmp tmp 255
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=phoenixOrder1,limit=1] run tag @s add npcLookAtPlayer
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=phoenixOrder2,limit=1] run tag @s add npcLookAtPlayer
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=phoenixOrder3,limit=1] run tag @s add npcLookAtPlayer
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=phoenixOrder4,limit=1] run tag @s add npcLookAtPlayer
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=phoenixOrder5,limit=1] run tag @s add npcLookAtPlayer

execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=manaWell1,limit=1] run tp @s 4993 99 10016
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=manaWell2,limit=1] run tp @s 4993 99 10015
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=manaWell3,limit=1] run tp @s 4993 99 10014







tp @s[scores={cutSceneTimer=22}] 5050.418 129.82 10072.16 -211.56 15.78
tp @s[scores={cutSceneTimer=23}] 5050.546 129.82 10072.08 -211.66 15.78
tp @s[scores={cutSceneTimer=24}] 5050.673 129.82 10072 -211.76 15.78
tp @s[scores={cutSceneTimer=25}] 5050.801 129.82 10071.93 -211.86 15.78
tp @s[scores={cutSceneTimer=26}] 5050.928 129.82 10071.85 -211.96 15.78
tp @s[scores={cutSceneTimer=27}] 5051.056 129.82 10071.77 -212.06 15.78
tp @s[scores={cutSceneTimer=28}] 5051.183 129.82 10071.69 -212.16 15.78
tp @s[scores={cutSceneTimer=29}] 5051.31 129.82 10071.61 -212.2601 15.78
tp @s[scores={cutSceneTimer=30}] 5051.437 129.82 10071.53 -212.3601 15.78
tp @s[scores={cutSceneTimer=31}] 5051.563 129.82 10071.45 -212.4601 15.78
tp @s[scores={cutSceneTimer=32}] 5051.689 129.82 10071.37 -212.5601 15.78
tp @s[scores={cutSceneTimer=33}] 5051.816 129.82 10071.29 -212.6601 15.78
tp @s[scores={cutSceneTimer=34}] 5051.942 129.82 10071.21 -212.7601 15.78
tp @s[scores={cutSceneTimer=35}] 5052.068 129.82 10071.12 -212.8601 15.78
tp @s[scores={cutSceneTimer=36}] 5052.194 129.82 10071.04 -212.9601 15.78
tp @s[scores={cutSceneTimer=37}] 5052.32 129.82 10070.96 -213.0601 15.78
tp @s[scores={cutSceneTimer=38}] 5052.446 129.82 10070.88 -213.1601 15.78
tp @s[scores={cutSceneTimer=39}] 5052.571 129.82 10070.8 -213.2601 15.78
tp @s[scores={cutSceneTimer=40}] 5052.697 129.82 10070.71 -213.3601 15.78
tp @s[scores={cutSceneTimer=41}] 5052.822 129.82 10070.63 -213.4601 15.78
tp @s[scores={cutSceneTimer=42}] 5052.947 129.82 10070.55 -213.5601 15.78
tp @s[scores={cutSceneTimer=43}] 5053.072 129.82 10070.47 -213.6601 15.78
tp @s[scores={cutSceneTimer=44}] 5053.197 129.82 10070.38 -213.7601 15.78
tp @s[scores={cutSceneTimer=45}] 5053.322 129.82 10070.3 -213.8602 15.78
tp @s[scores={cutSceneTimer=46}] 5053.446 129.82 10070.22 -213.9602 15.78
tp @s[scores={cutSceneTimer=47}] 5053.571 129.82 10070.13 -214.0602 15.78
tp @s[scores={cutSceneTimer=48}] 5053.695 129.82 10070.05 -214.1602 15.78
tp @s[scores={cutSceneTimer=49}] 5053.819 129.82 10069.96 -214.2602 15.78
tp @s[scores={cutSceneTimer=50}] 5053.943 129.82 10069.88 -214.3602 15.78
tp @s[scores={cutSceneTimer=51}] 5054.067 129.82 10069.8 -214.4602 15.78
tp @s[scores={cutSceneTimer=52}] 5054.19 129.82 10069.71 -214.5602 15.78
tp @s[scores={cutSceneTimer=53}] 5054.314 129.82 10069.63 -214.6602 15.78
tp @s[scores={cutSceneTimer=54}] 5054.438 129.82 10069.54 -214.7602 15.78
tp @s[scores={cutSceneTimer=55}] 5054.561 129.82 10069.46 -214.8602 15.78
tp @s[scores={cutSceneTimer=56}] 5054.684 129.82 10069.37 -214.9602 15.78
tp @s[scores={cutSceneTimer=57}] 5054.807 129.82 10069.28 -215.0602 15.78
tp @s[scores={cutSceneTimer=58}] 5054.929 129.82 10069.2 -215.1602 15.78
tp @s[scores={cutSceneTimer=59}] 5055.052 129.82 10069.11 -215.2602 15.78
tp @s[scores={cutSceneTimer=60}] 5055.174 129.82 10069.02 -215.3602 15.78
tp @s[scores={cutSceneTimer=61}] 5055.297 129.82 10068.94 -215.4603 15.78
tp @s[scores={cutSceneTimer=62}] 5055.419 129.82 10068.85 -215.5603 15.78
tp @s[scores={cutSceneTimer=63}] 5055.541 129.82 10068.76 -215.6603 15.78
tp @s[scores={cutSceneTimer=64}] 5055.663 129.82 10068.68 -215.7603 15.78
tp @s[scores={cutSceneTimer=65}] 5055.785 129.82 10068.59 -215.8603 15.78
tp @s[scores={cutSceneTimer=66}] 5055.906 129.82 10068.5 -215.9603 15.78
tp @s[scores={cutSceneTimer=67}] 5056.028 129.82 10068.41 -216.0603 15.78
tp @s[scores={cutSceneTimer=68}] 5056.149 129.82 10068.32 -216.1603 15.78
tp @s[scores={cutSceneTimer=69}] 5056.27 129.82 10068.24 -216.2603 15.78
tp @s[scores={cutSceneTimer=70}] 5056.391 129.82 10068.15 -216.3603 15.78
tp @s[scores={cutSceneTimer=71}] 5056.512 129.82 10068.06 -216.4603 15.78
tp @s[scores={cutSceneTimer=72}] 5056.632 129.82 10067.97 -216.5603 15.78
tp @s[scores={cutSceneTimer=73}] 5056.753 129.82 10067.88 -216.6603 15.78
tp @s[scores={cutSceneTimer=74}] 5056.873 129.82 10067.79 -216.7603 15.78
tp @s[scores={cutSceneTimer=75}] 5056.993 129.82 10067.7 -216.8603 15.78
tp @s[scores={cutSceneTimer=76}] 5057.113 129.82 10067.61 -216.9603 15.78
tp @s[scores={cutSceneTimer=77}] 5057.233 129.82 10067.52 -217.0603 15.78
tp @s[scores={cutSceneTimer=78}] 5057.353 129.82 10067.43 -217.1604 15.78
tp @s[scores={cutSceneTimer=79}] 5057.472 129.82 10067.34 -217.2604 15.78
tp @s[scores={cutSceneTimer=80}] 5057.591 129.82 10067.25 -217.3604 15.78
tp @s[scores={cutSceneTimer=81}] 5057.71 129.82 10067.16 -217.4604 15.78
tp @s[scores={cutSceneTimer=82}] 5057.83 129.82 10067.07 -217.5604 15.78
tp @s[scores={cutSceneTimer=83}] 5057.949 129.82 10066.97 -217.6604 15.78
tp @s[scores={cutSceneTimer=84}] 5058.067 129.82 10066.88 -217.7604 15.78
tp @s[scores={cutSceneTimer=85}] 5058.186 129.82 10066.79 -217.8604 15.78
tp @s[scores={cutSceneTimer=86}] 5058.305 129.82 10066.7 -217.9604 15.78
tp @s[scores={cutSceneTimer=87}] 5058.423 129.82 10066.61 -218.0604 15.78
tp @s[scores={cutSceneTimer=88}] 5058.541 129.82 10066.51 -218.1604 15.78
tp @s[scores={cutSceneTimer=89}] 5058.659 129.82 10066.42 -218.2604 15.78
tp @s[scores={cutSceneTimer=90}] 5058.777 129.82 10066.33 -218.3604 15.78
tp @s[scores={cutSceneTimer=91}] 5058.895 129.82 10066.24 -218.4604 15.78
tp @s[scores={cutSceneTimer=92}] 5059.012 129.82 10066.14 -218.5604 15.78
tp @s[scores={cutSceneTimer=93}] 5059.129 129.82 10066.05 -218.6604 15.78
tp @s[scores={cutSceneTimer=94}] 5059.247 129.82 10065.96 -218.7605 15.78
tp @s[scores={cutSceneTimer=95}] 5059.364 129.82 10065.86 -218.8605 15.78
tp @s[scores={cutSceneTimer=96}] 5059.48 129.82 10065.77 -218.9605 15.78
tp @s[scores={cutSceneTimer=97}] 5059.597 129.82 10065.67 -219.0605 15.78
tp @s[scores={cutSceneTimer=98}] 5059.714 129.82 10065.58 -219.1605 15.78
tp @s[scores={cutSceneTimer=99}] 5059.83 129.82 10065.48 -219.2605 15.78
tp @s[scores={cutSceneTimer=100}] 5059.946 129.82 10065.39 -219.3605 15.78
tp @s[scores={cutSceneTimer=101}] 5060.063 129.82 10065.29 -219.4605 15.78
tp @s[scores={cutSceneTimer=102}] 5060.178 129.82 10065.2 -219.5605 15.78
tp @s[scores={cutSceneTimer=103}] 5060.294 129.82 10065.1 -219.6605 15.78
tp @s[scores={cutSceneTimer=104}] 5060.409 129.82 10065.01 -219.7605 15.78
tp @s[scores={cutSceneTimer=105}] 5060.524 129.82 10064.91 -219.8605 15.78
tp @s[scores={cutSceneTimer=106}] 5060.64 129.82 10064.82 -219.9605 15.78
tp @s[scores={cutSceneTimer=107}] 5060.754 129.82 10064.72 -220.0605 15.78
tp @s[scores={cutSceneTimer=108}] 5060.869 129.82 10064.62 -220.1605 15.78
tp @s[scores={cutSceneTimer=109}] 5060.984 129.82 10064.53 -220.2605 15.78
tp @s[scores={cutSceneTimer=110}] 5061.098 129.82 10064.43 -220.3605 15.78
tp @s[scores={cutSceneTimer=111}] 5061.212 129.82 10064.33 -220.4606 15.78
tp @s[scores={cutSceneTimer=112}] 5061.327 129.82 10064.23 -220.5606 15.78
tp @s[scores={cutSceneTimer=113}] 5061.44 129.82 10064.14 -220.6606 15.78
tp @s[scores={cutSceneTimer=114}] 5061.554 129.82 10064.04 -220.7606 15.78
tp @s[scores={cutSceneTimer=115}] 5061.668 129.82 10063.94 -220.8606 15.78
tp @s[scores={cutSceneTimer=116}] 5061.781 129.82 10063.84 -220.9606 15.78
tp @s[scores={cutSceneTimer=117}] 5061.895 129.82 10063.75 -221.0606 15.78
tp @s[scores={cutSceneTimer=118}] 5062.008 129.82 10063.65 -221.1606 15.78
tp @s[scores={cutSceneTimer=119}] 5062.121 129.82 10063.55 -221.2606 15.78
tp @s[scores={cutSceneTimer=120}] 5062.233 129.82 10063.45 -221.3606 15.78
tp @s[scores={cutSceneTimer=121}] 5062.346 129.82 10063.35 -221.4606 15.78
tp @s[scores={cutSceneTimer=122}] 5062.458 129.82 10063.25 -221.5606 15.78
tp @s[scores={cutSceneTimer=123}] 5062.571 129.82 10063.15 -221.6606 15.78
tp @s[scores={cutSceneTimer=124}] 5062.683 129.82 10063.05 -221.7606 15.78
tp @s[scores={cutSceneTimer=125}] 5062.795 129.82 10062.95 -221.8606 15.78
tp @s[scores={cutSceneTimer=126}] 5062.907 129.82 10062.85 -221.9606 15.78
tp @s[scores={cutSceneTimer=127}] 5063.018 129.82 10062.75 -222.0607 15.78
tp @s[scores={cutSceneTimer=128}] 5063.129 129.82 10062.65 -222.1607 15.78
tp @s[scores={cutSceneTimer=129}] 5063.241 129.82 10062.55 -222.2607 15.78
tp @s[scores={cutSceneTimer=130}] 5063.352 129.82 10062.45 -222.3607 15.78
tp @s[scores={cutSceneTimer=131}] 5063.462 129.82 10062.35 -222.4607 15.78
tp @s[scores={cutSceneTimer=132}] 5063.573 129.82 10062.25 -222.5607 15.78
tp @s[scores={cutSceneTimer=133}] 5063.684 129.82 10062.15 -222.6607 15.78
tp @s[scores={cutSceneTimer=134}] 5063.794 129.82 10062.04 -222.7607 15.78
tp @s[scores={cutSceneTimer=135}] 5063.904 129.82 10061.94 -222.8607 15.78
tp @s[scores={cutSceneTimer=136}] 5064.014 129.82 10061.84 -222.9607 15.78
tp @s[scores={cutSceneTimer=137}] 5064.124 129.82 10061.74 -223.0607 15.78
tp @s[scores={cutSceneTimer=138}] 5064.233 129.82 10061.64 -223.1607 15.78
tp @s[scores={cutSceneTimer=139}] 5064.343 129.82 10061.53 -223.2607 15.78
tp @s[scores={cutSceneTimer=140}] 5064.452 129.82 10061.43 -223.3607 15.78
tp @s[scores={cutSceneTimer=141}] 5064.561 129.82 10061.33 -223.4607 15.78
tp @s[scores={cutSceneTimer=142}] 5064.67 129.82 10061.22 -223.5607 15.78
tp @s[scores={cutSceneTimer=143}] 5064.779 129.82 10061.12 -223.6608 15.78
tp @s[scores={cutSceneTimer=144}] 5064.887 129.82 10061.02 -223.7608 15.78
tp @s[scores={cutSceneTimer=145}] 5064.996 129.82 10060.91 -223.8608 15.78
tp @s[scores={cutSceneTimer=146}] 5065.104 129.82 10060.81 -223.9608 15.78
tp @s[scores={cutSceneTimer=147}] 5065.211 129.82 10060.71 -224.0608 15.78
tp @s[scores={cutSceneTimer=148}] 5065.319 129.82 10060.6 -224.1608 15.78
tp @s[scores={cutSceneTimer=149}] 5065.427 129.82 10060.5 -224.2608 15.78
tp @s[scores={cutSceneTimer=150}] 5065.534 129.82 10060.39 -224.3608 15.78
tp @s[scores={cutSceneTimer=151}] 5065.642 129.82 10060.29 -224.4608 15.78
tp @s[scores={cutSceneTimer=152}] 5065.749 129.82 10060.18 -224.5608 15.78
tp @s[scores={cutSceneTimer=153}] 5065.855 129.82 10060.08 -224.6608 15.78
tp @s[scores={cutSceneTimer=154}] 5065.962 129.82 10059.97 -224.7608 15.78
tp @s[scores={cutSceneTimer=155}] 5066.069 129.82 10059.87 -224.8608 15.78
tp @s[scores={cutSceneTimer=156}] 5066.175 129.82 10059.76 -224.9608 15.78
tp @s[scores={cutSceneTimer=157}] 5066.281 129.82 10059.65 -225.0608 15.78
tp @s[scores={cutSceneTimer=158}] 5066.387 129.82 10059.55 -225.1608 15.78
tp @s[scores={cutSceneTimer=159}] 5066.493 129.82 10059.44 -225.2608 15.78
tp @s[scores={cutSceneTimer=160}] 5066.599 129.82 10059.33 -225.3609 15.78
tp @s[scores={cutSceneTimer=161}] 5066.704 129.82 10059.23 -225.4609 15.78
tp @s[scores={cutSceneTimer=162}] 5066.809 129.82 10059.12 -225.5609 15.78
tp @s[scores={cutSceneTimer=163}] 5066.914 129.82 10059.01 -225.6609 15.78
tp @s[scores={cutSceneTimer=164}] 5067.019 129.82 10058.91 -225.7609 15.78
tp @s[scores={cutSceneTimer=165}] 5067.124 129.82 10058.8 -225.8609 15.78
tp @s[scores={cutSceneTimer=166}] 5067.228 129.82 10058.69 -225.9609 15.78
tp @s[scores={cutSceneTimer=167}] 5067.333 129.82 10058.58 -226.0609 15.78
tp @s[scores={cutSceneTimer=168}] 5067.437 129.82 10058.48 -226.1609 15.78
tp @s[scores={cutSceneTimer=169}] 5067.541 129.82 10058.37 -226.2609 15.78
tp @s[scores={cutSceneTimer=170}] 5067.644 129.82 10058.26 -226.3609 15.78
execute as @s[scores={cutSceneTimer=150}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=170},tag=cutsceneLeader] run gamerule doDaylightCycle true
execute as @s[scores={cutSceneTimer=170},tag=cutsceneLeader] run weather clear
execute as @s[scores={cutSceneTimer=170}] run tag @s remove azkabanStorm



tp @s[scores={cutSceneTimer=171..210}] 2460.14 70.06 -258.53 -117.63 3.05
execute as @s[scores={cutSceneTimer=170}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=170}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=170}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=210}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=210}] run team join all @s
execute as @s[scores={cutSceneTimer=230}] run function hp:cutscenes/exit_cutscene



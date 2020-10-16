execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=30}] as @s run function hp:cutscenes/fade_out

execute as @s[scores={cutSceneTimer=..20}] run title @s actionbar ["",{"text":" "}]

execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tp @e[tag=lupinPatronusBridgeFpEngine,limit=1] 8043 134 64
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] run scoreboard players set @s targetPathPoint 0
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] store result entity @s ArmorItems[3].tag.targetPathPoint int 1 run scoreboard players get @s targetPathPoint
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinPatronusBridgeFpEngine,limit=1] at @s run function hp:npc/read_path_point
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=lupinPatronusBridgeFpEngine,limit=1] remove idle
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=lupinPatronusBridgeFpEngine,limit=1] remove stop
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=lupinPatronusBridgeFpEngine,limit=1] remove permStop
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinPatronusBridgeFpEngine,limit=1] at @s run function hp:npc/update_path
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run fill 8040 135 64 8040 138 68 air
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run fill 8030 134 68 8030 136 64 air

execute as @s[scores={cutSceneTimer=140},tag=cutsceneLeader] run playsound minecraft:custom.fx.wood_creak master @a 8033 132 66 1 1

tp @s[scores={cutSceneTimer=22}] 8045.53 135.081 69.49976 -203.29 15.61
tp @s[scores={cutSceneTimer=23}] 8045.53 135.0819 69.49951 -203.49 15.61
tp @s[scores={cutSceneTimer=24}] 8045.53 135.0829 69.49927 -203.69 15.61
tp @s[scores={cutSceneTimer=25}] 8045.53 135.0838 69.49902 -203.89 15.61
tp @s[scores={cutSceneTimer=26}] 8045.53 135.0848 69.49878 -204.09 15.61
tp @s[scores={cutSceneTimer=27}] 8045.53 135.0858 69.49854 -204.29 15.61
tp @s[scores={cutSceneTimer=28}] 8045.53 135.0867 69.49829 -204.49 15.61
tp @s[scores={cutSceneTimer=29}] 8045.53 135.0877 69.49805 -204.69 15.61
tp @s[scores={cutSceneTimer=30}] 8045.53 135.0887 69.4978 -204.89 15.61
tp @s[scores={cutSceneTimer=31}] 8045.53 135.0896 69.49756 -205.09 15.61
tp @s[scores={cutSceneTimer=32}] 8045.53 135.0906 69.49731 -205.29 15.61
tp @s[scores={cutSceneTimer=33}] 8045.53 135.0915 69.49707 -205.49 15.61
tp @s[scores={cutSceneTimer=34}] 8045.53 135.0925 69.49683 -205.69 15.61
tp @s[scores={cutSceneTimer=35}] 8045.53 135.0935 69.49658 -205.89 15.61
tp @s[scores={cutSceneTimer=36}] 8045.53 135.0944 69.49634 -206.09 15.61
tp @s[scores={cutSceneTimer=37}] 8045.53 135.0954 69.49609 -206.2899 15.61
tp @s[scores={cutSceneTimer=38}] 8045.53 135.0963 69.49585 -206.4899 15.61
tp @s[scores={cutSceneTimer=39}] 8045.53 135.0973 69.49561 -206.6899 15.61
tp @s[scores={cutSceneTimer=40}] 8045.53 135.0983 69.49536 -206.8899 15.61
tp @s[scores={cutSceneTimer=41}] 8045.53 135.0992 69.49512 -207.0899 15.61
tp @s[scores={cutSceneTimer=42}] 8045.53 135.1002 69.49489 -207.2899 15.61
tp @s[scores={cutSceneTimer=43}] 8045.53 135.1012 69.49465 -207.4899 15.61
tp @s[scores={cutSceneTimer=44}] 8045.53 135.1021 69.49442 -207.6899 15.61
tp @s[scores={cutSceneTimer=45}] 8045.53 135.1031 69.49418 -207.8899 15.61
tp @s[scores={cutSceneTimer=46}] 8045.53 135.104 69.49394 -208.0899 15.61
tp @s[scores={cutSceneTimer=47}] 8045.53 135.105 69.49371 -208.2899 15.61
tp @s[scores={cutSceneTimer=48}] 8045.53 135.106 69.49347 -208.4899 15.61
tp @s[scores={cutSceneTimer=49}] 8045.53 135.1069 69.49323 -208.6899 15.61
tp @s[scores={cutSceneTimer=50}] 8045.53 135.1079 69.493 -208.8899 15.61
tp @s[scores={cutSceneTimer=51}] 8045.53 135.1088 69.49276 -209.0899 15.61
tp @s[scores={cutSceneTimer=52}] 8045.53 135.1098 69.49252 -209.2899 15.61
tp @s[scores={cutSceneTimer=53}] 8045.53 135.1108 69.49229 -209.4899 15.61
tp @s[scores={cutSceneTimer=54}] 8045.53 135.1117 69.49205 -209.6899 15.61
tp @s[scores={cutSceneTimer=55}] 8045.53 135.1127 69.49181 -209.8899 15.61
tp @s[scores={cutSceneTimer=56}] 8045.53 135.1136 69.49158 -210.0899 15.61
tp @s[scores={cutSceneTimer=57}] 8045.53 135.1146 69.49134 -210.2899 15.61
tp @s[scores={cutSceneTimer=58}] 8045.53 135.1156 69.49111 -210.4899 15.61
tp @s[scores={cutSceneTimer=59}] 8045.53 135.1165 69.49088 -210.6899 15.61
tp @s[scores={cutSceneTimer=60}] 8045.53 135.1175 69.49065 -210.8899 15.61
tp @s[scores={cutSceneTimer=61}] 8045.53 135.1185 69.49043 -211.0899 15.61
tp @s[scores={cutSceneTimer=62}] 8045.53 135.1194 69.4902 -211.2899 15.61
tp @s[scores={cutSceneTimer=63}] 8045.53 135.1204 69.48997 -211.4899 15.61
tp @s[scores={cutSceneTimer=64}] 8045.53 135.1213 69.48974 -211.6899 15.61
tp @s[scores={cutSceneTimer=65}] 8045.53 135.1223 69.48951 -211.8899 15.61
tp @s[scores={cutSceneTimer=66}] 8045.53 135.1233 69.48928 -212.0899 15.61
tp @s[scores={cutSceneTimer=67}] 8045.53 135.1242 69.48905 -212.2899 15.61
tp @s[scores={cutSceneTimer=68}] 8045.53 135.1252 69.48882 -212.4899 15.61
tp @s[scores={cutSceneTimer=69}] 8045.53 135.1261 69.48859 -212.6898 15.61
tp @s[scores={cutSceneTimer=70}] 8045.53 135.1271 69.48837 -212.8898 15.61
tp @s[scores={cutSceneTimer=71}] 8045.53 135.1281 69.48814 -213.0898 15.61
tp @s[scores={cutSceneTimer=72}] 8045.53 135.129 69.48791 -213.2898 15.61
tp @s[scores={cutSceneTimer=73}] 8045.53 135.13 69.48769 -213.4898 15.61
tp @s[scores={cutSceneTimer=74}] 8045.53 135.131 69.48746 -213.6898 15.61
tp @s[scores={cutSceneTimer=75}] 8045.53 135.1319 69.48724 -213.8898 15.61
tp @s[scores={cutSceneTimer=76}] 8045.53 135.1329 69.48702 -214.0898 15.61
tp @s[scores={cutSceneTimer=77}] 8045.53 135.1338 69.4868 -214.2898 15.61
tp @s[scores={cutSceneTimer=78}] 8045.53 135.1348 69.48658 -214.4898 15.61
tp @s[scores={cutSceneTimer=79}] 8045.53 135.1358 69.48636 -214.6898 15.61
tp @s[scores={cutSceneTimer=80}] 8045.53 135.1367 69.48614 -214.8898 15.61
tp @s[scores={cutSceneTimer=81}] 8045.53 135.1377 69.48592 -215.0898 15.61
tp @s[scores={cutSceneTimer=82}] 8045.53 135.1386 69.48569 -215.2898 15.61
tp @s[scores={cutSceneTimer=83}] 8045.53 135.1396 69.48547 -215.4898 15.61
tp @s[scores={cutSceneTimer=84}] 8045.53 135.1406 69.48525 -215.6898 15.61
tp @s[scores={cutSceneTimer=85}] 8045.53 135.1415 69.48503 -215.8898 15.61
tp @s[scores={cutSceneTimer=86}] 8045.53 135.1425 69.48481 -216.0898 15.61
tp @s[scores={cutSceneTimer=87}] 8045.53 135.1434 69.48459 -216.2898 15.61
tp @s[scores={cutSceneTimer=88}] 8045.53 135.1444 69.48438 -216.4898 15.61
tp @s[scores={cutSceneTimer=89}] 8045.53 135.1454 69.48416 -216.6898 15.61
tp @s[scores={cutSceneTimer=90}] 8045.53 135.1463 69.48395 -216.8898 15.61
tp @s[scores={cutSceneTimer=91}] 8045.53 135.1473 69.48373 -217.0898 15.61
tp @s[scores={cutSceneTimer=92}] 8045.53 135.1483 69.48352 -217.2898 15.61
tp @s[scores={cutSceneTimer=93}] 8045.53 135.1492 69.48331 -217.4898 15.61
tp @s[scores={cutSceneTimer=94}] 8045.53 135.1502 69.48309 -217.6898 15.61
tp @s[scores={cutSceneTimer=95}] 8045.53 135.1511 69.48288 -217.8898 15.61
tp @s[scores={cutSceneTimer=96}] 8045.53 135.1521 69.48267 -218.0898 15.61
tp @s[scores={cutSceneTimer=97}] 8045.53 135.1531 69.48245 -218.2898 15.61
tp @s[scores={cutSceneTimer=98}] 8045.53 135.154 69.48224 -218.4898 15.61
tp @s[scores={cutSceneTimer=99}] 8045.53 135.155 69.48203 -218.6898 15.61
tp @s[scores={cutSceneTimer=100}] 8045.53 135.1559 69.48181 -218.8898 15.61
tp @s[scores={cutSceneTimer=101}] 8045.53 135.1569 69.48161 -219.0898 15.61
tp @s[scores={cutSceneTimer=102}] 8045.53 135.1579 69.4814 -219.2897 15.61
tp @s[scores={cutSceneTimer=103}] 8045.53 135.1588 69.48119 -219.4897 15.61
tp @s[scores={cutSceneTimer=104}] 8045.53 135.1598 69.48099 -219.6897 15.61
tp @s[scores={cutSceneTimer=105}] 8045.53 135.1608 69.48078 -219.8897 15.61
tp @s[scores={cutSceneTimer=106}] 8045.53 135.1617 69.48058 -220.0897 15.61
tp @s[scores={cutSceneTimer=107}] 8045.53 135.1627 69.48037 -220.2897 15.61
tp @s[scores={cutSceneTimer=108}] 8045.53 135.1636 69.48016 -220.4897 15.61
tp @s[scores={cutSceneTimer=109}] 8045.53 135.1646 69.47996 -220.6897 15.61
tp @s[scores={cutSceneTimer=110}] 8045.53 135.1656 69.47975 -220.8897 15.61
tp @s[scores={cutSceneTimer=111}] 8045.53 135.1665 69.47955 -221.0897 15.61
tp @s[scores={cutSceneTimer=112}] 8045.53 135.1675 69.47934 -221.2897 15.61
tp @s[scores={cutSceneTimer=113}] 8045.53 135.1684 69.47913 -221.4897 15.61
tp @s[scores={cutSceneTimer=114}] 8045.53 135.1694 69.47894 -221.6897 15.61
tp @s[scores={cutSceneTimer=115}] 8045.53 135.1704 69.47874 -221.8897 15.61
tp @s[scores={cutSceneTimer=116}] 8045.53 135.1713 69.47854 -222.0897 15.61
tp @s[scores={cutSceneTimer=117}] 8045.53 135.1723 69.47834 -222.2897 15.61
tp @s[scores={cutSceneTimer=118}] 8045.53 135.1732 69.47814 -222.4897 15.61
tp @s[scores={cutSceneTimer=119}] 8045.53 135.1742 69.47794 -222.6897 15.61
tp @s[scores={cutSceneTimer=120}] 8045.53 135.1752 69.47775 -222.8897 15.61
tp @s[scores={cutSceneTimer=121}] 8045.53 135.1761 69.47755 -223.0897 15.61
tp @s[scores={cutSceneTimer=122}] 8045.53 135.1771 69.47735 -223.2897 15.61
tp @s[scores={cutSceneTimer=123}] 8045.53 135.1781 69.47715 -223.4897 15.61
tp @s[scores={cutSceneTimer=124}] 8045.53 135.179 69.47695 -223.6897 15.61
tp @s[scores={cutSceneTimer=125}] 8045.53 135.18 69.47675 -223.8897 15.61
tp @s[scores={cutSceneTimer=126}] 8045.53 135.1809 69.47656 -224.0897 15.61
tp @s[scores={cutSceneTimer=127}] 8045.53 135.1819 69.47637 -224.2897 15.61
tp @s[scores={cutSceneTimer=128}] 8045.53 135.1829 69.47618 -224.4897 15.61
tp @s[scores={cutSceneTimer=129}] 8045.53 135.1838 69.47599 -224.6897 15.61
tp @s[scores={cutSceneTimer=130}] 8045.53 135.1848 69.4758 -224.8897 15.61
tp @s[scores={cutSceneTimer=131}] 8045.53 135.1857 69.47561 -225.0897 15.61
tp @s[scores={cutSceneTimer=132}] 8045.53 135.1867 69.47542 -225.2897 15.61
tp @s[scores={cutSceneTimer=133}] 8045.53 135.1877 69.47523 -225.4897 15.61
tp @s[scores={cutSceneTimer=134}] 8045.53 135.1886 69.47504 -225.6897 15.61
tp @s[scores={cutSceneTimer=135}] 8045.53 135.1896 69.47485 -225.8896 15.61
tp @s[scores={cutSceneTimer=136}] 8045.53 135.1906 69.47466 -226.0896 15.61
tp @s[scores={cutSceneTimer=137}] 8045.53 135.1915 69.47447 -226.2896 15.61
tp @s[scores={cutSceneTimer=138}] 8045.53 135.1925 69.47429 -226.4896 15.61
tp @s[scores={cutSceneTimer=139}] 8045.53 135.1934 69.47411 -226.6896 15.61
tp @s[scores={cutSceneTimer=140}] 8045.53 135.1944 69.47392 -226.8896 15.61
tp @s[scores={cutSceneTimer=141}] 8045.53 135.1954 69.47374 -227.0896 15.61
tp @s[scores={cutSceneTimer=142}] 8045.53 135.1963 69.47356 -227.2896 15.61
tp @s[scores={cutSceneTimer=143}] 8045.53 135.1973 69.47337 -227.4896 15.61
tp @s[scores={cutSceneTimer=144}] 8045.53 135.1982 69.47319 -227.6896 15.61
tp @s[scores={cutSceneTimer=145}] 8045.53 135.1992 69.47301 -227.8896 15.61
tp @s[scores={cutSceneTimer=146}] 8045.53 135.2002 69.47282 -228.0896 15.61
tp @s[scores={cutSceneTimer=147}] 8045.53 135.2011 69.47264 -228.2896 15.61
tp @s[scores={cutSceneTimer=148}] 8045.53 135.2021 69.47247 -228.4896 15.61
tp @s[scores={cutSceneTimer=149}] 8045.53 135.203 69.47229 -228.6896 15.61
tp @s[scores={cutSceneTimer=150}] 8045.53 135.204 69.47211 -228.8896 15.61
tp @s[scores={cutSceneTimer=151}] 8045.53 135.205 69.47194 -229.0896 15.61
tp @s[scores={cutSceneTimer=152}] 8045.53 135.2059 69.47176 -229.2896 15.61
tp @s[scores={cutSceneTimer=153}] 8045.53 135.2069 69.47159 -229.4896 15.61
tp @s[scores={cutSceneTimer=154}] 8045.53 135.2079 69.47141 -229.6896 15.61
tp @s[scores={cutSceneTimer=155}] 8045.53 135.2088 69.47124 -229.8896 15.61
tp @s[scores={cutSceneTimer=156}] 8045.53 135.2098 69.47106 -230.0896 15.61
tp @s[scores={cutSceneTimer=157}] 8045.53 135.2107 69.47089 -230.2896 15.61
tp @s[scores={cutSceneTimer=158}] 8045.53 135.2117 69.47071 -230.4896 15.61
tp @s[scores={cutSceneTimer=159}] 8045.53 135.2127 69.47054 -230.6896 15.61
tp @s[scores={cutSceneTimer=160}] 8045.53 135.2136 69.47038 -230.8896 15.61
execute as @s[scores={cutSceneTimer=140}] as @s run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=160}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=161}] 8038.728 140.697 63.98 -302.73 51.72
tp @s[scores={cutSceneTimer=162}] 8038.727 140.694 63.98 -302.58 51.52
tp @s[scores={cutSceneTimer=163}] 8038.726 140.691 63.98 -302.43 51.32
tp @s[scores={cutSceneTimer=164}] 8038.725 140.688 63.98 -302.28 51.12
tp @s[scores={cutSceneTimer=165}] 8038.724 140.685 63.98 -302.13 50.91999
tp @s[scores={cutSceneTimer=166}] 8038.723 140.682 63.98 -301.98 50.71999
tp @s[scores={cutSceneTimer=167}] 8038.722 140.679 63.98 -301.83 50.51999
tp @s[scores={cutSceneTimer=168}] 8038.721 140.6759 63.98 -301.6801 50.31999
tp @s[scores={cutSceneTimer=169}] 8038.72 140.6729 63.98 -301.5301 50.11999
tp @s[scores={cutSceneTimer=170}] 8038.719 140.6699 63.98 -301.3801 49.91999
tp @s[scores={cutSceneTimer=171}] 8038.718 140.6669 63.98 -301.2301 49.71999
tp @s[scores={cutSceneTimer=172}] 8038.717 140.6639 63.98 -301.0801 49.51999
tp @s[scores={cutSceneTimer=173}] 8038.716 140.6609 63.98 -300.9301 49.31999
tp @s[scores={cutSceneTimer=174}] 8038.715 140.6579 63.98 -300.7801 49.11999
tp @s[scores={cutSceneTimer=175}] 8038.714 140.6549 63.98 -300.6301 48.91999
tp @s[scores={cutSceneTimer=176}] 8038.713 140.6519 63.98 -300.4801 48.71999
tp @s[scores={cutSceneTimer=177}] 8038.712 140.6489 63.98 -300.3301 48.51999
tp @s[scores={cutSceneTimer=178}] 8038.711 140.6459 63.98 -300.1801 48.31998
tp @s[scores={cutSceneTimer=179}] 8038.71 140.6429 63.98 -300.0301 48.11998
tp @s[scores={cutSceneTimer=180}] 8038.709 140.6399 63.98 -299.8801 47.91998
tp @s[scores={cutSceneTimer=181}] 8038.708 140.6369 63.98 -299.7301 47.71998
tp @s[scores={cutSceneTimer=182}] 8038.708 140.6339 63.98 -299.5801 47.51998
tp @s[scores={cutSceneTimer=183}] 8038.707 140.6309 63.98 -299.4301 47.31998
tp @s[scores={cutSceneTimer=184}] 8038.706 140.6279 63.98 -299.2802 47.11998
tp @s[scores={cutSceneTimer=185}] 8038.705 140.6248 63.98 -299.1302 46.91998
tp @s[scores={cutSceneTimer=186}] 8038.704 140.6218 63.98 -298.9802 46.71998
tp @s[scores={cutSceneTimer=187}] 8038.703 140.6188 63.98 -298.8302 46.51998
tp @s[scores={cutSceneTimer=188}] 8038.702 140.6158 63.98 -298.6802 46.31998
tp @s[scores={cutSceneTimer=189}] 8038.701 140.6128 63.98 -298.5302 46.11998
tp @s[scores={cutSceneTimer=190}] 8038.7 140.6098 63.98 -298.3802 45.91998
tp @s[scores={cutSceneTimer=191}] 8038.699 140.6068 63.98 -298.2302 45.71997
tp @s[scores={cutSceneTimer=192}] 8038.698 140.6038 63.98 -298.0802 45.51997
tp @s[scores={cutSceneTimer=193}] 8038.697 140.6008 63.98 -297.9302 45.31997
tp @s[scores={cutSceneTimer=194}] 8038.696 140.5978 63.98 -297.7802 45.11997
tp @s[scores={cutSceneTimer=195}] 8038.695 140.5948 63.98 -297.6302 44.91997
tp @s[scores={cutSceneTimer=196}] 8038.694 140.5918 63.98 -297.4802 44.71997
tp @s[scores={cutSceneTimer=197}] 8038.693 140.5888 63.98 -297.3302 44.51997
tp @s[scores={cutSceneTimer=198}] 8038.692 140.5858 63.98 -297.1802 44.31997
tp @s[scores={cutSceneTimer=199}] 8038.691 140.5828 63.98 -297.0302 44.11997
tp @s[scores={cutSceneTimer=200}] 8038.69 140.5798 63.98 -296.8802 43.91997
tp @s[scores={cutSceneTimer=201}] 8038.689 140.5768 63.98 -296.7303 43.71997
tp @s[scores={cutSceneTimer=202}] 8038.688 140.5737 63.98 -296.5803 43.51997
tp @s[scores={cutSceneTimer=203}] 8038.687 140.5707 63.98 -296.4303 43.31997
tp @s[scores={cutSceneTimer=204}] 8038.686 140.5677 63.98 -296.2803 43.11996
tp @s[scores={cutSceneTimer=205}] 8038.685 140.5647 63.98 -296.1303 42.91996
tp @s[scores={cutSceneTimer=206}] 8038.684 140.5617 63.98 -295.9803 42.71996
tp @s[scores={cutSceneTimer=207}] 8038.683 140.5587 63.98 -295.8303 42.51996
tp @s[scores={cutSceneTimer=208}] 8038.682 140.5557 63.98 -295.6803 42.31996
tp @s[scores={cutSceneTimer=209}] 8038.681 140.5527 63.98 -295.5303 42.11996
tp @s[scores={cutSceneTimer=210}] 8038.68 140.5497 63.98 -295.3803 41.91996
tp @s[scores={cutSceneTimer=211}] 8038.679 140.5467 63.98 -295.2303 41.71996
tp @s[scores={cutSceneTimer=212}] 8038.678 140.5437 63.98 -295.0803 41.51996
tp @s[scores={cutSceneTimer=213}] 8038.677 140.5407 63.98 -294.9303 41.31996
tp @s[scores={cutSceneTimer=214}] 8038.676 140.5377 63.98 -294.7803 41.11996
tp @s[scores={cutSceneTimer=215}] 8038.675 140.5347 63.98 -294.6303 40.91996
tp @s[scores={cutSceneTimer=216}] 8038.674 140.5317 63.98 -294.4803 40.71996
tp @s[scores={cutSceneTimer=217}] 8038.673 140.5287 63.98 -294.3304 40.51995
tp @s[scores={cutSceneTimer=218}] 8038.672 140.5257 63.98 -294.1804 40.31995
tp @s[scores={cutSceneTimer=219}] 8038.671 140.5226 63.98 -294.0304 40.11995
tp @s[scores={cutSceneTimer=220}] 8038.67 140.5196 63.98 -293.8804 39.91995
tp @s[scores={cutSceneTimer=221}] 8038.669 140.5166 63.98 -293.7304 39.71995
tp @s[scores={cutSceneTimer=222}] 8038.668 140.5136 63.98 -293.5804 39.51995
tp @s[scores={cutSceneTimer=223}] 8038.667 140.5106 63.98 -293.4304 39.31995
tp @s[scores={cutSceneTimer=224}] 8038.667 140.5076 63.98 -293.2804 39.11995
tp @s[scores={cutSceneTimer=225}] 8038.666 140.5046 63.98 -293.1304 38.91995
tp @s[scores={cutSceneTimer=226}] 8038.665 140.5016 63.98 -292.9804 38.71995
tp @s[scores={cutSceneTimer=227}] 8038.664 140.4986 63.98 -292.8304 38.51995
tp @s[scores={cutSceneTimer=228}] 8038.663 140.4956 63.98 -292.6804 38.31995
tp @s[scores={cutSceneTimer=229}] 8038.662 140.4926 63.98 -292.5304 38.11995
tp @s[scores={cutSceneTimer=230}] 8038.661 140.4896 63.98 -292.3804 37.91994
tp @s[scores={cutSceneTimer=231}] 8038.66 140.4866 63.98 -292.2304 37.71994
tp @s[scores={cutSceneTimer=232}] 8038.659 140.4836 63.98 -292.0804 37.51994
tp @s[scores={cutSceneTimer=233}] 8038.658 140.4806 63.98 -291.9305 37.31994
tp @s[scores={cutSceneTimer=234}] 8038.657 140.4776 63.98 -291.7805 37.11994
tp @s[scores={cutSceneTimer=235}] 8038.656 140.4745 63.98 -291.6305 36.91994
tp @s[scores={cutSceneTimer=236}] 8038.655 140.4715 63.98 -291.4805 36.71994
tp @s[scores={cutSceneTimer=237}] 8038.654 140.4685 63.98 -291.3305 36.51994
tp @s[scores={cutSceneTimer=238}] 8038.653 140.4655 63.98 -291.1805 36.31994
tp @s[scores={cutSceneTimer=239}] 8038.652 140.4625 63.98 -291.0305 36.11994
tp @s[scores={cutSceneTimer=240}] 8038.651 140.4595 63.98 -290.8805 35.91994
tp @s[scores={cutSceneTimer=241}] 8038.65 140.4565 63.98 -290.7305 35.71994
tp @s[scores={cutSceneTimer=242}] 8038.649 140.4535 63.98 -290.5805 35.51994
tp @s[scores={cutSceneTimer=243}] 8038.648 140.4505 63.98 -290.4305 35.31993
tp @s[scores={cutSceneTimer=244}] 8038.647 140.4475 63.98 -290.2805 35.11993
tp @s[scores={cutSceneTimer=245}] 8038.646 140.4445 63.98 -290.1305 34.91993
tp @s[scores={cutSceneTimer=246}] 8038.645 140.4415 63.98 -289.9805 34.71993
tp @s[scores={cutSceneTimer=247}] 8038.644 140.4385 63.98 -289.8305 34.51993
tp @s[scores={cutSceneTimer=248}] 8038.643 140.4355 63.98 -289.6805 34.31993
tp @s[scores={cutSceneTimer=249}] 8038.642 140.4325 63.98 -289.5305 34.11993
tp @s[scores={cutSceneTimer=250}] 8038.641 140.4295 63.98 -289.3806 33.91993
tp @s[scores={cutSceneTimer=251}] 8038.64 140.4265 63.98 -289.2306 33.71993
tp @s[scores={cutSceneTimer=252}] 8038.639 140.4234 63.98 -289.0806 33.51993
tp @s[scores={cutSceneTimer=253}] 8038.638 140.4204 63.98 -288.9306 33.31993
tp @s[scores={cutSceneTimer=254}] 8038.637 140.4174 63.98 -288.7806 33.11993
tp @s[scores={cutSceneTimer=255}] 8038.636 140.4144 63.98 -288.6306 32.91993
tp @s[scores={cutSceneTimer=256}] 8038.635 140.4114 63.98 -288.4806 32.71992
tp @s[scores={cutSceneTimer=257}] 8038.634 140.4084 63.98 -288.3306 32.51992
tp @s[scores={cutSceneTimer=258}] 8038.633 140.4054 63.98 -288.1806 32.31992
tp @s[scores={cutSceneTimer=259}] 8038.632 140.4024 63.98 -288.0306 32.11992
tp @s[scores={cutSceneTimer=260}] 8038.631 140.3994 63.98 -287.8806 31.91992
tp @s[scores={cutSceneTimer=261}] 8038.63 140.3964 63.98 -287.7306 31.71992
tp @s[scores={cutSceneTimer=262}] 8038.629 140.3934 63.98 -287.5806 31.51992
tp @s[scores={cutSceneTimer=263}] 8038.628 140.3904 63.98 -287.4306 31.31992
tp @s[scores={cutSceneTimer=264}] 8038.627 140.3874 63.98 -287.2806 31.11992
tp @s[scores={cutSceneTimer=265}] 8038.626 140.3844 63.98 -287.1306 30.91992
tp @s[scores={cutSceneTimer=266}] 8038.625 140.3814 63.98 -286.9807 30.71992
tp @s[scores={cutSceneTimer=267}] 8038.625 140.3784 63.98 -286.8307 30.51992
tp @s[scores={cutSceneTimer=268}] 8038.624 140.3754 63.98 -286.6807 30.31992
tp @s[scores={cutSceneTimer=269}] 8038.623 140.3723 63.98 -286.5307 30.11992
tp @s[scores={cutSceneTimer=270}] 8038.622 140.3693 63.98 -286.3807 29.91991
tp @s[scores={cutSceneTimer=271}] 8038.621 140.3663 63.98 -286.2307 29.71991
tp @s[scores={cutSceneTimer=272}] 8038.62 140.3633 63.98 -286.0807 29.51991
tp @s[scores={cutSceneTimer=273}] 8038.619 140.3603 63.98 -285.9307 29.31991
tp @s[scores={cutSceneTimer=274}] 8038.618 140.3573 63.98 -285.7807 29.11991
tp @s[scores={cutSceneTimer=275}] 8038.617 140.3543 63.98 -285.6307 28.91991
tp @s[scores={cutSceneTimer=276}] 8038.616 140.3513 63.98 -285.4807 28.71991
tp @s[scores={cutSceneTimer=277}] 8038.615 140.3483 63.98 -285.3307 28.51991
tp @s[scores={cutSceneTimer=278}] 8038.614 140.3453 63.98 -285.1807 28.31991
tp @s[scores={cutSceneTimer=279}] 8038.613 140.3423 63.98 -285.0307 28.11991
tp @s[scores={cutSceneTimer=280}] 8038.612 140.3393 63.98 -284.8807 27.91991
tp @s[scores={cutSceneTimer=281}] 8038.611 140.3363 63.98 -284.7307 27.71991
tp @s[scores={cutSceneTimer=282}] 8038.61 140.3333 63.98 -284.5807 27.51991
tp @s[scores={cutSceneTimer=283}] 8038.609 140.3303 63.98 -284.4308 27.3199
tp @s[scores={cutSceneTimer=284}] 8038.608 140.3273 63.98 -284.2808 27.1199
tp @s[scores={cutSceneTimer=285}] 8038.607 140.3242 63.98 -284.1308 26.9199
tp @s[scores={cutSceneTimer=286}] 8038.606 140.3212 63.98 -283.9808 26.7199
tp @s[scores={cutSceneTimer=287}] 8038.605 140.3182 63.98 -283.8308 26.5199
tp @s[scores={cutSceneTimer=288}] 8038.604 140.3152 63.98 -283.6808 26.3199
tp @s[scores={cutSceneTimer=289}] 8038.603 140.3122 63.98 -283.5308 26.1199
tp @s[scores={cutSceneTimer=290}] 8038.602 140.3092 63.98 -283.3808 25.9199

execute as @s[scores={cutSceneTimer=270}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=290}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=290}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=290}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=290}] run function hp:cutscenes/revert_to_start_position
execute as @s[scores={cutSceneTimer=290}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run fill 8030 134 68 8030 136 64 barrier
execute as @s[scores={cutSceneTimer=310}] run function hp:cutscenes/exit_cutscene


# ¤Lupin:¤ Excellent!
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=20..100}] run title @s actionbar ["",{"text":""},{"text":"Люпин;","color":"dark_gray"},{"text":" Замечательно!"}]
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=27},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=31},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=38},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=49},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=53},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=60},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] run function hp:npc/update_npc_head_neutral


# ¤Lupin:¤ Now follow me to the next training area.
# ¤Lupin:¤ Следуй за мной в следующую зону для тренировки.
execute as @s[scores={cutSceneTimer=100},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=100..240}] run title @s actionbar ["",{"text":""},{"text":"Люпин;","color":"dark_gray"},{"text":" Следуй за мной в следующую зону для тренировки."}]
execute as @s[scores={cutSceneTimer=100},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=107},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=111},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=118},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=122},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=129},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=133},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=140},tag=cutsceneLeader] as @e[tag=lupinPatronusBridge,limit=1] run function hp:npc/update_npc_head_neutral

execute as @s[scores={cutSceneTimer=240..}] run title @s actionbar ""
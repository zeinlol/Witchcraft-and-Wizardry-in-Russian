execute as @s[scores={cutSceneTimer=1}] run function hp:music/music/silence
execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=30}] as @s run function hp:cutscenes/fade_out

execute as @s[scores={cutSceneTimer=..20}] run title @s actionbar ["",{"text":" "}]

execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tp @e[tag=lupinFogClearingFpEngine,limit=1] 7493 84 411
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] run scoreboard players set @s targetPathPoint 0
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] store result entity @s ArmorItems[3].tag.targetPathPoint int 1 run scoreboard players get @s targetPathPoint
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinFogClearingFpEngine,limit=1] at @s run function hp:npc/read_path_point
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=lupinFogClearingFpEngine,limit=1] remove idle
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=lupinFogClearingFpEngine,limit=1] remove stop
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=lupinFogClearingFpEngine,limit=1] remove permStop
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinFogClearingFpEngine,limit=1] at @s run function hp:npc/update_path
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run setblock 7493 84 410 minecraft:iron_door[facing=east,half=lower,hinge=right,open=false,powered=false]
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run setblock 7493 85 410 minecraft:iron_door[facing=east,half=upper,hinge=right,open=false,powered=false]
execute as @s[scores={cutSceneTimer=200},tag=cutsceneLeader] run tag @e[tag=lupinFogClearingFpEngine,limit=1] remove cutsceneStop

# Remove fog
execute as @s[scores={cutSceneTimer=21}] run tag @s remove fog
execute as @s[scores={cutSceneTimer=21}] run function hp:misc/update_bossbar

tp @s[scores={cutSceneTimer=22}] 7486.406 85.78736 401.9872 317.97 15.29
tp @s[scores={cutSceneTimer=23}] 7486.413 85.78472 401.9944 317.97 15.29
tp @s[scores={cutSceneTimer=24}] 7486.419 85.78208 402.0015 317.97 15.29
tp @s[scores={cutSceneTimer=25}] 7486.425 85.77944 402.0087 317.97 15.29
tp @s[scores={cutSceneTimer=26}] 7486.432 85.7768 402.0159 317.97 15.29
tp @s[scores={cutSceneTimer=27}] 7486.438 85.77416 402.023 317.97 15.29
tp @s[scores={cutSceneTimer=28}] 7486.444 85.77152 402.0302 317.97 15.29
tp @s[scores={cutSceneTimer=29}] 7486.451 85.76888 402.0374 317.97 15.29
tp @s[scores={cutSceneTimer=30}] 7486.457 85.76624 402.0446 317.97 15.29
tp @s[scores={cutSceneTimer=31}] 7486.463 85.7636 402.0517 317.97 15.29
tp @s[scores={cutSceneTimer=32}] 7486.47 85.76096 402.0589 317.97 15.29
tp @s[scores={cutSceneTimer=33}] 7486.476 85.75832 402.0661 317.97 15.29
tp @s[scores={cutSceneTimer=34}] 7486.482 85.75568 402.0732 317.97 15.29
tp @s[scores={cutSceneTimer=35}] 7486.489 85.75304 402.0804 317.97 15.29
tp @s[scores={cutSceneTimer=36}] 7486.495 85.7504 402.0876 317.97 15.29
tp @s[scores={cutSceneTimer=37}] 7486.501 85.74776 402.0948 317.97 15.29
tp @s[scores={cutSceneTimer=38}] 7486.508 85.74512 402.1019 317.97 15.29
tp @s[scores={cutSceneTimer=39}] 7486.514 85.74249 402.1091 317.97 15.29
tp @s[scores={cutSceneTimer=40}] 7486.521 85.73985 402.1163 317.97 15.29
tp @s[scores={cutSceneTimer=41}] 7486.527 85.73721 402.1234 317.97 15.29
tp @s[scores={cutSceneTimer=42}] 7486.533 85.73457 402.1306 317.97 15.29
tp @s[scores={cutSceneTimer=43}] 7486.54 85.73193 402.1378 317.97 15.29
tp @s[scores={cutSceneTimer=44}] 7486.546 85.72929 402.145 317.97 15.29
tp @s[scores={cutSceneTimer=45}] 7486.552 85.72665 402.1521 317.97 15.29
tp @s[scores={cutSceneTimer=46}] 7486.559 85.72401 402.1593 317.97 15.29
tp @s[scores={cutSceneTimer=47}] 7486.565 85.72137 402.1665 317.97 15.29
tp @s[scores={cutSceneTimer=48}] 7486.571 85.71873 402.1736 317.97 15.29
tp @s[scores={cutSceneTimer=49}] 7486.578 85.71609 402.1808 317.97 15.29
tp @s[scores={cutSceneTimer=50}] 7486.584 85.71345 402.188 317.97 15.29
tp @s[scores={cutSceneTimer=51}] 7486.59 85.71081 402.1952 317.97 15.29
tp @s[scores={cutSceneTimer=52}] 7486.597 85.70817 402.2023 317.97 15.29
tp @s[scores={cutSceneTimer=53}] 7486.603 85.70553 402.2095 317.97 15.29
tp @s[scores={cutSceneTimer=54}] 7486.609 85.70289 402.2167 317.97 15.29
tp @s[scores={cutSceneTimer=55}] 7486.616 85.70025 402.2238 317.97 15.29
tp @s[scores={cutSceneTimer=56}] 7486.622 85.69761 402.231 317.97 15.29
tp @s[scores={cutSceneTimer=57}] 7486.628 85.69497 402.2382 317.97 15.29
tp @s[scores={cutSceneTimer=58}] 7486.635 85.69233 402.2454 317.97 15.29
tp @s[scores={cutSceneTimer=59}] 7486.641 85.68969 402.2525 317.97 15.29
tp @s[scores={cutSceneTimer=60}] 7486.647 85.68705 402.2597 317.97 15.29
tp @s[scores={cutSceneTimer=61}] 7486.654 85.68441 402.2669 317.97 15.29
tp @s[scores={cutSceneTimer=62}] 7486.66 85.68177 402.274 317.97 15.29
tp @s[scores={cutSceneTimer=63}] 7486.667 85.67913 402.2812 317.97 15.29
tp @s[scores={cutSceneTimer=64}] 7486.673 85.67649 402.2884 317.97 15.29
tp @s[scores={cutSceneTimer=65}] 7486.679 85.67385 402.2956 317.97 15.29
tp @s[scores={cutSceneTimer=66}] 7486.686 85.67121 402.3027 317.97 15.29
tp @s[scores={cutSceneTimer=67}] 7486.692 85.66857 402.3099 317.97 15.29
tp @s[scores={cutSceneTimer=68}] 7486.698 85.66593 402.3171 317.97 15.29
tp @s[scores={cutSceneTimer=69}] 7486.705 85.66329 402.3242 317.97 15.29
tp @s[scores={cutSceneTimer=70}] 7486.711 85.66065 402.3314 317.97 15.29
tp @s[scores={cutSceneTimer=71}] 7486.717 85.65801 402.3386 317.97 15.29
tp @s[scores={cutSceneTimer=72}] 7486.724 85.65537 402.3458 317.97 15.29
tp @s[scores={cutSceneTimer=73}] 7486.73 85.65273 402.3529 317.97 15.29
tp @s[scores={cutSceneTimer=74}] 7486.736 85.65009 402.3601 317.97 15.29
tp @s[scores={cutSceneTimer=75}] 7486.743 85.64745 402.3673 317.97 15.29
tp @s[scores={cutSceneTimer=76}] 7486.749 85.64481 402.3745 317.97 15.29
tp @s[scores={cutSceneTimer=77}] 7486.755 85.64217 402.3816 317.97 15.29
tp @s[scores={cutSceneTimer=78}] 7486.762 85.63953 402.3888 317.97 15.29
tp @s[scores={cutSceneTimer=79}] 7486.768 85.63689 402.396 317.97 15.29
tp @s[scores={cutSceneTimer=80}] 7486.774 85.63425 402.4031 317.97 15.29
tp @s[scores={cutSceneTimer=81}] 7486.781 85.63161 402.4103 317.97 15.29
tp @s[scores={cutSceneTimer=82}] 7486.787 85.62897 402.4175 317.97 15.29
tp @s[scores={cutSceneTimer=83}] 7486.793 85.62634 402.4247 317.97 15.29
tp @s[scores={cutSceneTimer=84}] 7486.8 85.6237 402.4318 317.97 15.29
tp @s[scores={cutSceneTimer=85}] 7486.806 85.62106 402.439 317.97 15.29
tp @s[scores={cutSceneTimer=86}] 7486.813 85.61842 402.4462 317.97 15.29
tp @s[scores={cutSceneTimer=87}] 7486.819 85.61578 402.4533 317.97 15.29
tp @s[scores={cutSceneTimer=88}] 7486.825 85.61314 402.4605 317.97 15.29
tp @s[scores={cutSceneTimer=89}] 7486.832 85.6105 402.4677 317.97 15.29
tp @s[scores={cutSceneTimer=90}] 7486.838 85.60786 402.4749 317.97 15.29
tp @s[scores={cutSceneTimer=91}] 7486.844 85.60522 402.482 317.97 15.29
tp @s[scores={cutSceneTimer=92}] 7486.851 85.60258 402.4892 317.97 15.29
tp @s[scores={cutSceneTimer=93}] 7486.857 85.59994 402.4964 317.97 15.29
tp @s[scores={cutSceneTimer=94}] 7486.863 85.5973 402.5035 317.97 15.29
tp @s[scores={cutSceneTimer=95}] 7486.87 85.59466 402.5107 317.97 15.29
tp @s[scores={cutSceneTimer=96}] 7486.876 85.59202 402.5179 317.97 15.29
tp @s[scores={cutSceneTimer=97}] 7486.882 85.58938 402.5251 317.97 15.29
tp @s[scores={cutSceneTimer=98}] 7486.889 85.58674 402.5322 317.97 15.29
tp @s[scores={cutSceneTimer=99}] 7486.895 85.5841 402.5394 317.97 15.29
tp @s[scores={cutSceneTimer=100}] 7486.901 85.58146 402.5466 317.97 15.29
tp @s[scores={cutSceneTimer=101}] 7486.908 85.57882 402.5537 317.97 15.29
tp @s[scores={cutSceneTimer=102}] 7486.914 85.57618 402.5609 317.97 15.29
tp @s[scores={cutSceneTimer=103}] 7486.92 85.57354 402.5681 317.97 15.29
tp @s[scores={cutSceneTimer=104}] 7486.927 85.5709 402.5753 317.97 15.29
tp @s[scores={cutSceneTimer=105}] 7486.933 85.56826 402.5824 317.97 15.29
tp @s[scores={cutSceneTimer=106}] 7486.939 85.56562 402.5896 317.97 15.29
tp @s[scores={cutSceneTimer=107}] 7486.946 85.56298 402.5968 317.97 15.29
tp @s[scores={cutSceneTimer=108}] 7486.952 85.56034 402.6039 317.97 15.29
tp @s[scores={cutSceneTimer=109}] 7486.958 85.5577 402.6111 317.97 15.29
tp @s[scores={cutSceneTimer=110}] 7486.965 85.55506 402.6183 317.97 15.29
tp @s[scores={cutSceneTimer=111}] 7486.971 85.55242 402.6255 317.97 15.29
tp @s[scores={cutSceneTimer=112}] 7486.978 85.54978 402.6326 317.97 15.29
tp @s[scores={cutSceneTimer=113}] 7486.984 85.54714 402.6398 317.97 15.29
tp @s[scores={cutSceneTimer=114}] 7486.99 85.5445 402.647 317.97 15.29
tp @s[scores={cutSceneTimer=115}] 7486.997 85.54186 402.6541 317.97 15.29
tp @s[scores={cutSceneTimer=116}] 7487.003 85.53922 402.6613 317.97 15.29
tp @s[scores={cutSceneTimer=117}] 7487.009 85.53658 402.6685 317.97 15.29
tp @s[scores={cutSceneTimer=118}] 7487.016 85.53394 402.6757 317.97 15.29
tp @s[scores={cutSceneTimer=119}] 7487.022 85.5313 402.6828 317.97 15.29
tp @s[scores={cutSceneTimer=120}] 7487.028 85.52866 402.69 317.97 15.29
tp @s[scores={cutSceneTimer=121}] 7487.035 85.52602 402.6972 317.97 15.29
tp @s[scores={cutSceneTimer=122}] 7487.041 85.52338 402.7043 317.97 15.29
tp @s[scores={cutSceneTimer=123}] 7487.047 85.52074 402.7115 317.97 15.29
tp @s[scores={cutSceneTimer=124}] 7487.054 85.5181 402.7187 317.97 15.29
tp @s[scores={cutSceneTimer=125}] 7487.06 85.51546 402.7259 317.97 15.29
tp @s[scores={cutSceneTimer=126}] 7487.066 85.51283 402.733 317.97 15.29
tp @s[scores={cutSceneTimer=127}] 7487.073 85.51019 402.7402 317.97 15.29
tp @s[scores={cutSceneTimer=128}] 7487.079 85.50755 402.7474 317.97 15.29
tp @s[scores={cutSceneTimer=129}] 7487.085 85.50491 402.7545 317.97 15.29
tp @s[scores={cutSceneTimer=130}] 7487.092 85.50227 402.7617 317.97 15.29
tp @s[scores={cutSceneTimer=131}] 7487.098 85.49963 402.7689 317.97 15.29
tp @s[scores={cutSceneTimer=132}] 7487.104 85.49699 402.7761 317.97 15.29
tp @s[scores={cutSceneTimer=133}] 7487.111 85.49435 402.7832 317.97 15.29
tp @s[scores={cutSceneTimer=134}] 7487.117 85.49171 402.7904 317.97 15.29
tp @s[scores={cutSceneTimer=135}] 7487.124 85.48907 402.7976 317.97 15.29
tp @s[scores={cutSceneTimer=136}] 7487.13 85.48643 402.8047 317.97 15.29
tp @s[scores={cutSceneTimer=137}] 7487.136 85.48379 402.8119 317.97 15.29
tp @s[scores={cutSceneTimer=138}] 7487.143 85.48115 402.8191 317.97 15.29
tp @s[scores={cutSceneTimer=139}] 7487.149 85.47851 402.8263 317.97 15.29
tp @s[scores={cutSceneTimer=140}] 7487.155 85.47587 402.8334 317.97 15.29
tp @s[scores={cutSceneTimer=141}] 7487.162 85.47323 402.8406 317.97 15.29
tp @s[scores={cutSceneTimer=142}] 7487.168 85.47059 402.8478 317.97 15.29
tp @s[scores={cutSceneTimer=143}] 7487.174 85.46795 402.8549 317.97 15.29
tp @s[scores={cutSceneTimer=144}] 7487.181 85.46531 402.8621 317.97 15.29
tp @s[scores={cutSceneTimer=145}] 7487.187 85.46267 402.8693 317.97 15.29
tp @s[scores={cutSceneTimer=146}] 7487.193 85.46003 402.8765 317.97 15.29
tp @s[scores={cutSceneTimer=147}] 7487.2 85.45739 402.8836 317.97 15.29
tp @s[scores={cutSceneTimer=148}] 7487.206 85.45475 402.8908 317.97 15.29
tp @s[scores={cutSceneTimer=149}] 7487.212 85.45211 402.898 317.97 15.29
tp @s[scores={cutSceneTimer=150}] 7487.219 85.44947 402.9052 317.97 15.29
tp @s[scores={cutSceneTimer=151}] 7487.225 85.44683 402.9123 317.97 15.29
tp @s[scores={cutSceneTimer=152}] 7487.231 85.44419 402.9195 317.97 15.29
tp @s[scores={cutSceneTimer=153}] 7487.238 85.44155 402.9267 317.97 15.29
tp @s[scores={cutSceneTimer=154}] 7487.244 85.43891 402.9338 317.97 15.29
tp @s[scores={cutSceneTimer=155}] 7487.25 85.43627 402.941 317.97 15.29
tp @s[scores={cutSceneTimer=156}] 7487.257 85.43363 402.9482 317.97 15.29
tp @s[scores={cutSceneTimer=157}] 7487.263 85.43099 402.9554 317.97 15.29
tp @s[scores={cutSceneTimer=158}] 7487.27 85.42835 402.9625 317.97 15.29
tp @s[scores={cutSceneTimer=159}] 7487.276 85.42571 402.9697 317.97 15.29
tp @s[scores={cutSceneTimer=160}] 7487.282 85.42307 402.9769 317.97 15.29
tp @s[scores={cutSceneTimer=161}] 7487.289 85.42043 402.984 317.97 15.29
tp @s[scores={cutSceneTimer=162}] 7487.295 85.41779 402.9912 317.97 15.29
tp @s[scores={cutSceneTimer=163}] 7487.301 85.41515 402.9984 317.97 15.29
tp @s[scores={cutSceneTimer=164}] 7487.308 85.41251 403.0056 317.97 15.29
tp @s[scores={cutSceneTimer=165}] 7487.314 85.40987 403.0127 317.97 15.29
tp @s[scores={cutSceneTimer=166}] 7487.32 85.40723 403.0199 317.97 15.29
tp @s[scores={cutSceneTimer=167}] 7487.327 85.40459 403.0271 317.97 15.29
tp @s[scores={cutSceneTimer=168}] 7487.333 85.40195 403.0342 317.97 15.29
tp @s[scores={cutSceneTimer=169}] 7487.339 85.39931 403.0414 317.97 15.29
tp @s[scores={cutSceneTimer=170}] 7487.346 85.39668 403.0486 317.97 15.29
tp @s[scores={cutSceneTimer=171}] 7487.352 85.39404 403.0558 317.97 15.29
tp @s[scores={cutSceneTimer=172}] 7487.358 85.3914 403.0629 317.97 15.29
tp @s[scores={cutSceneTimer=173}] 7487.365 85.38876 403.0701 317.97 15.29
tp @s[scores={cutSceneTimer=174}] 7487.371 85.38612 403.0773 317.97 15.29
tp @s[scores={cutSceneTimer=175}] 7487.377 85.38348 403.0844 317.97 15.29
tp @s[scores={cutSceneTimer=176}] 7487.384 85.38084 403.0916 317.97 15.29
tp @s[scores={cutSceneTimer=177}] 7487.39 85.3782 403.0988 317.97 15.29
tp @s[scores={cutSceneTimer=178}] 7487.396 85.37556 403.106 317.97 15.29
tp @s[scores={cutSceneTimer=179}] 7487.403 85.37292 403.1131 317.97 15.29
tp @s[scores={cutSceneTimer=180}] 7487.409 85.37028 403.1203 317.97 15.29
tp @s[scores={cutSceneTimer=181}] 7487.416 85.36764 403.1275 317.97 15.29
tp @s[scores={cutSceneTimer=182}] 7487.422 85.365 403.1346 317.97 15.29
tp @s[scores={cutSceneTimer=183}] 7487.428 85.36236 403.1418 317.97 15.29
tp @s[scores={cutSceneTimer=184}] 7487.435 85.35972 403.149 317.97 15.29
tp @s[scores={cutSceneTimer=185}] 7487.441 85.35708 403.1562 317.97 15.29
tp @s[scores={cutSceneTimer=186}] 7487.447 85.35444 403.1633 317.97 15.29
tp @s[scores={cutSceneTimer=187}] 7487.454 85.3518 403.1705 317.97 15.29
tp @s[scores={cutSceneTimer=188}] 7487.46 85.34916 403.1777 317.97 15.29
tp @s[scores={cutSceneTimer=189}] 7487.466 85.34652 403.1848 317.97 15.29
tp @s[scores={cutSceneTimer=190}] 7487.473 85.34388 403.192 317.97 15.29
tp @s[scores={cutSceneTimer=191}] 7487.479 85.34124 403.1992 317.97 15.29
tp @s[scores={cutSceneTimer=192}] 7487.485 85.3386 403.2064 317.97 15.29
tp @s[scores={cutSceneTimer=193}] 7487.492 85.33596 403.2135 317.97 15.29
tp @s[scores={cutSceneTimer=194}] 7487.498 85.33332 403.2207 317.97 15.29
tp @s[scores={cutSceneTimer=195}] 7487.504 85.33068 403.2279 317.97 15.29
tp @s[scores={cutSceneTimer=196}] 7487.511 85.32804 403.235 317.97 15.29
tp @s[scores={cutSceneTimer=197}] 7487.517 85.3254 403.2422 317.97 15.29
tp @s[scores={cutSceneTimer=198}] 7487.523 85.32276 403.2494 317.97 15.29
tp @s[scores={cutSceneTimer=199}] 7487.53 85.32012 403.2566 317.97 15.29
tp @s[scores={cutSceneTimer=200}] 7487.536 85.31748 403.2637 317.97 15.29
tp @s[scores={cutSceneTimer=201}] 7487.542 85.31484 403.2709 317.97 15.29
tp @s[scores={cutSceneTimer=202}] 7487.549 85.3122 403.2781 317.97 15.29
tp @s[scores={cutSceneTimer=203}] 7487.555 85.30956 403.2852 317.97 15.29
tp @s[scores={cutSceneTimer=204}] 7487.562 85.30692 403.2924 317.97 15.29
tp @s[scores={cutSceneTimer=205}] 7487.568 85.30428 403.2996 317.97 15.29
tp @s[scores={cutSceneTimer=206}] 7487.574 85.30164 403.3068 317.97 15.29
tp @s[scores={cutSceneTimer=207}] 7487.581 85.299 403.3139 317.97 15.29
tp @s[scores={cutSceneTimer=208}] 7487.587 85.29636 403.3211 317.97 15.29
tp @s[scores={cutSceneTimer=209}] 7487.593 85.29372 403.3283 317.97 15.29
tp @s[scores={cutSceneTimer=210}] 7487.6 85.29108 403.3354 317.97 15.29
tp @s[scores={cutSceneTimer=211}] 7487.606 85.28844 403.3426 317.97 15.29
tp @s[scores={cutSceneTimer=212}] 7487.612 85.2858 403.3498 317.97 15.29
tp @s[scores={cutSceneTimer=213}] 7487.619 85.28316 403.357 317.97 15.29
tp @s[scores={cutSceneTimer=214}] 7487.625 85.28053 403.3641 317.97 15.29
tp @s[scores={cutSceneTimer=215}] 7487.631 85.27789 403.3713 317.97 15.29
tp @s[scores={cutSceneTimer=216}] 7487.638 85.27525 403.3785 317.97 15.29
tp @s[scores={cutSceneTimer=217}] 7487.644 85.27261 403.3857 317.97 15.29
tp @s[scores={cutSceneTimer=218}] 7487.65 85.26997 403.3928 317.97 15.29
tp @s[scores={cutSceneTimer=219}] 7487.657 85.26733 403.4 317.97 15.29
tp @s[scores={cutSceneTimer=220}] 7487.663 85.26469 403.4072 317.97 15.29
tp @s[scores={cutSceneTimer=221}] 7487.669 85.26205 403.4143 317.97 15.29
tp @s[scores={cutSceneTimer=222}] 7487.676 85.25941 403.4215 317.97 15.29
tp @s[scores={cutSceneTimer=223}] 7487.682 85.25677 403.4287 317.97 15.29
tp @s[scores={cutSceneTimer=224}] 7487.688 85.25413 403.4359 317.97 15.29
tp @s[scores={cutSceneTimer=225}] 7487.695 85.25149 403.443 317.97 15.29
tp @s[scores={cutSceneTimer=226}] 7487.701 85.24885 403.4502 317.97 15.29
tp @s[scores={cutSceneTimer=227}] 7487.708 85.24621 403.4574 317.97 15.29
tp @s[scores={cutSceneTimer=228}] 7487.714 85.24357 403.4645 317.97 15.29
tp @s[scores={cutSceneTimer=229}] 7487.72 85.24093 403.4717 317.97 15.29
tp @s[scores={cutSceneTimer=230}] 7487.727 85.23829 403.4789 317.97 15.29
tp @s[scores={cutSceneTimer=231}] 7487.733 85.23565 403.4861 317.97 15.29
tp @s[scores={cutSceneTimer=232}] 7487.739 85.23301 403.4932 317.97 15.29
tp @s[scores={cutSceneTimer=233}] 7487.746 85.23037 403.5004 317.97 15.29
tp @s[scores={cutSceneTimer=234}] 7487.752 85.22773 403.5076 317.97 15.29
tp @s[scores={cutSceneTimer=235}] 7487.758 85.22509 403.5147 317.97 15.29
tp @s[scores={cutSceneTimer=236}] 7487.765 85.22245 403.5219 317.97 15.29
tp @s[scores={cutSceneTimer=237}] 7487.771 85.21981 403.5291 317.97 15.29
tp @s[scores={cutSceneTimer=238}] 7487.777 85.21717 403.5363 317.97 15.29
tp @s[scores={cutSceneTimer=239}] 7487.784 85.21453 403.5434 317.97 15.29
tp @s[scores={cutSceneTimer=240}] 7487.79 85.21189 403.5506 317.97 15.29
tp @s[scores={cutSceneTimer=241}] 7487.796 85.20925 403.5578 317.97 15.29
tp @s[scores={cutSceneTimer=242}] 7487.803 85.20661 403.5649 317.97 15.29
tp @s[scores={cutSceneTimer=243}] 7487.809 85.20397 403.5721 317.97 15.29
tp @s[scores={cutSceneTimer=244}] 7487.815 85.20133 403.5793 317.97 15.29
tp @s[scores={cutSceneTimer=245}] 7487.822 85.19869 403.5865 317.97 15.29
tp @s[scores={cutSceneTimer=246}] 7487.828 85.19605 403.5936 317.97 15.29
tp @s[scores={cutSceneTimer=247}] 7487.834 85.19341 403.6008 317.97 15.29
tp @s[scores={cutSceneTimer=248}] 7487.841 85.19077 403.608 317.97 15.29
tp @s[scores={cutSceneTimer=249}] 7487.847 85.18813 403.6151 317.97 15.29
tp @s[scores={cutSceneTimer=250}] 7487.854 85.18549 403.6223 317.97 15.29
tp @s[scores={cutSceneTimer=251}] 7487.86 85.18285 403.6295 317.97 15.29
tp @s[scores={cutSceneTimer=252}] 7487.866 85.18021 403.6367 317.97 15.29
tp @s[scores={cutSceneTimer=253}] 7487.873 85.17757 403.6438 317.97 15.29
tp @s[scores={cutSceneTimer=254}] 7487.879 85.17493 403.651 317.97 15.29
tp @s[scores={cutSceneTimer=255}] 7487.885 85.17229 403.6582 317.97 15.29
tp @s[scores={cutSceneTimer=256}] 7487.892 85.16965 403.6653 317.97 15.29
tp @s[scores={cutSceneTimer=257}] 7487.898 85.16702 403.6725 317.97 15.29
tp @s[scores={cutSceneTimer=258}] 7487.904 85.16438 403.6797 317.97 15.29
tp @s[scores={cutSceneTimer=259}] 7487.911 85.16174 403.6869 317.97 15.29
tp @s[scores={cutSceneTimer=260}] 7487.917 85.1591 403.694 317.97 15.29
tp @s[scores={cutSceneTimer=261}] 7487.923 85.15646 403.7012 317.97 15.29
tp @s[scores={cutSceneTimer=262}] 7487.93 85.15382 403.7084 317.97 15.29
tp @s[scores={cutSceneTimer=263}] 7487.936 85.15118 403.7155 317.97 15.29
tp @s[scores={cutSceneTimer=264}] 7487.942 85.14854 403.7227 317.97 15.29
tp @s[scores={cutSceneTimer=265}] 7487.949 85.1459 403.7299 317.97 15.29
tp @s[scores={cutSceneTimer=266}] 7487.955 85.14326 403.7371 317.97 15.29
tp @s[scores={cutSceneTimer=267}] 7487.961 85.14062 403.7442 317.97 15.29
tp @s[scores={cutSceneTimer=268}] 7487.968 85.13798 403.7514 317.97 15.29
tp @s[scores={cutSceneTimer=269}] 7487.974 85.13534 403.7586 317.97 15.29
tp @s[scores={cutSceneTimer=270}] 7487.98 85.1327 403.7657 317.97 15.29
tp @s[scores={cutSceneTimer=271}] 7487.987 85.13006 403.7729 317.97 15.29
tp @s[scores={cutSceneTimer=272}] 7487.993 85.12742 403.7801 317.97 15.29
tp @s[scores={cutSceneTimer=273}] 7488.0 85.12478 403.7873 317.97 15.29
tp @s[scores={cutSceneTimer=274}] 7488.006 85.12214 403.7944 317.97 15.29
tp @s[scores={cutSceneTimer=275}] 7488.012 85.1195 403.8016 317.97 15.29
tp @s[scores={cutSceneTimer=276}] 7488.019 85.11686 403.8088 317.97 15.29
tp @s[scores={cutSceneTimer=277}] 7488.025 85.11422 403.8159 317.97 15.29
tp @s[scores={cutSceneTimer=278}] 7488.031 85.11158 403.8231 317.97 15.29
tp @s[scores={cutSceneTimer=279}] 7488.038 85.10894 403.8303 317.97 15.29
tp @s[scores={cutSceneTimer=280}] 7488.044 85.1063 403.8375 317.97 15.29
tp @s[scores={cutSceneTimer=281}] 7488.05 85.10366 403.8446 317.97 15.29
tp @s[scores={cutSceneTimer=282}] 7488.057 85.10102 403.8518 317.97 15.29
tp @s[scores={cutSceneTimer=283}] 7488.063 85.09838 403.859 317.97 15.29
tp @s[scores={cutSceneTimer=284}] 7488.069 85.09574 403.8661 317.97 15.29
tp @s[scores={cutSceneTimer=285}] 7488.076 85.0931 403.8733 317.97 15.29
tp @s[scores={cutSceneTimer=286}] 7488.082 85.09046 403.8805 317.97 15.29
tp @s[scores={cutSceneTimer=287}] 7488.088 85.08782 403.8877 317.97 15.29
tp @s[scores={cutSceneTimer=288}] 7488.095 85.08518 403.8948 317.97 15.29
tp @s[scores={cutSceneTimer=289}] 7488.101 85.08254 403.902 317.97 15.29
tp @s[scores={cutSceneTimer=290}] 7488.107 85.0799 403.9092 317.97 15.29

execute as @s[scores={cutSceneTimer=270}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=290}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=290}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=290}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=290}] run function hp:cutscenes/revert_to_start_position
execute as @s[scores={cutSceneTimer=290}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7493 84 410 minecraft:iron_door[facing=north,half=lower,hinge=right,open=false,powered=false]
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7493 85 410 minecraft:iron_door[facing=north,half=upper,hinge=right,open=false,powered=false]
# Door 1
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7479 86 401 minecraft:blue_concrete_powder
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7479 86 400 minecraft:cyan_concrete_powder
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7479 86 399 minecraft:green_concrete_powder
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7479 87 401 minecraft:stripped_spruce_wood[axis=x]
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7479 87 400 minecraft:light_blue_concrete_powder
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7479 87 399 minecraft:stripped_spruce_wood[axis=z]
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7479 88 401 minecraft:dried_kelp_block
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7479 88 400 minecraft:lime_concrete_powder
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7479 88 399 minecraft:blue_ice
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7479 89 401 minecraft:stripped_spruce_wood[axis=x]
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7479 89 400 minecraft:lime_concrete_powder
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7479 89 399 minecraft:stripped_spruce_wood[axis=z]
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7480 87 401 air
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7480 87 399 air
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run tp @e[tag=lupinFogClearingFpEngine,limit=1] 7493 84 411

# Door 2
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run fill 7500 85 401 7500 93 399 air
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7499 85 399 minecraft:spruce_trapdoor[facing=south,half=bottom,open=true,powered=false,waterlogged=false]
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7499 87 399 minecraft:spruce_trapdoor[facing=south,half=top,open=true,powered=false,waterlogged=false]
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7499 89 399 minecraft:spruce_trapdoor[facing=south,half=top,open=true,powered=false,waterlogged=false]
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7499 91 399 minecraft:spruce_trapdoor[facing=south,half=top,open=true,powered=false,waterlogged=false]
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7499 91 401 minecraft:dark_oak_trapdoor[facing=north,half=top,open=true,powered=false,waterlogged=false]
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7499 89 401 minecraft:dark_oak_trapdoor[facing=north,half=top,open=true,powered=false,waterlogged=false]
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7499 87 401 minecraft:dark_oak_trapdoor[facing=north,half=top,open=true,powered=false,waterlogged=false]
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] run setblock 7499 85 401 minecraft:dark_oak_trapdoor[facing=north,half=top,open=true,powered=false,waterlogged=false]

execute as @s[scores={cutSceneTimer=310}] run function hp:cutscenes/exit_cutscene


# ¤Lupin:¤ Well done!
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=20..100}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"  "}]
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=27},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=31},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=38},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=49},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=53},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=60},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] run function hp:npc/update_npc_head_neutral


# ¤Lupin:¤ But you're not done yet. Keep heading upwards and I'll meet you at the top.
execute as @s[scores={cutSceneTimer=100},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=100..240}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"               "}]
execute as @s[scores={cutSceneTimer=100},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=107},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=111},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=118},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=122},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=129},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=133},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=140},tag=cutsceneLeader] as @e[tag=lupinFogClearing,limit=1] run function hp:npc/update_npc_head_neutral

execute as @s[scores={cutSceneTimer=240..}] run title @s actionbar ""
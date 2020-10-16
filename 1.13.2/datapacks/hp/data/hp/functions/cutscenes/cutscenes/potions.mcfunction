execute as @s[scores={trackQuestState=2}] run scoreboard players set @s questState 3
execute as @s[scores={trackQuestState=2}] run function hp:quests/set_quest

execute as @s[scores={cutSceneTimer=1}] as @s run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=30}] as @s run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=30},tag=cutsceneLeader] run tag @e[tag=snapeClassroomFpEngine,limit=1,sort=nearest] remove cutsceneStop
execute as @s[scores={cutSceneTimer=..20}] run title @s actionbar ["",{"text":" "}]

tp @s[scores={cutSceneTimer=22}] 747.26 37.06836 193.3798 269.359 1.82
tp @s[scores={cutSceneTimer=23}] 747.28 37.06673 193.3796 269.298 1.82
tp @s[scores={cutSceneTimer=24}] 747.3 37.06509 193.3793 269.237 1.82
tp @s[scores={cutSceneTimer=25}] 747.3201 37.06345 193.3791 269.176 1.82
tp @s[scores={cutSceneTimer=26}] 747.3401 37.06182 193.3788 269.115 1.82
tp @s[scores={cutSceneTimer=27}] 747.3601 37.06018 193.3785 269.054 1.82
tp @s[scores={cutSceneTimer=28}] 747.3801 37.05854 193.3781 268.993 1.82
tp @s[scores={cutSceneTimer=29}] 747.4001 37.05691 193.3778 268.932 1.82
tp @s[scores={cutSceneTimer=30}] 747.4202 37.05527 193.3774 268.871 1.82
tp @s[scores={cutSceneTimer=31}] 747.4402 37.05363 193.377 268.81 1.82
tp @s[scores={cutSceneTimer=32}] 747.4602 37.052 193.3766 268.749 1.82
tp @s[scores={cutSceneTimer=33}] 747.4802 37.05036 193.3762 268.688 1.82
tp @s[scores={cutSceneTimer=34}] 747.5002 37.04873 193.3757 268.627 1.82
tp @s[scores={cutSceneTimer=35}] 747.5203 37.04709 193.3752 268.5659 1.82
tp @s[scores={cutSceneTimer=36}] 747.5403 37.04545 193.3747 268.5049 1.82
tp @s[scores={cutSceneTimer=37}] 747.5603 37.04382 193.3742 268.4439 1.82
tp @s[scores={cutSceneTimer=38}] 747.5803 37.04218 193.3737 268.3829 1.82
tp @s[scores={cutSceneTimer=39}] 747.6003 37.04054 193.3731 268.3219 1.82
tp @s[scores={cutSceneTimer=40}] 747.6204 37.03891 193.3725 268.2609 1.82
tp @s[scores={cutSceneTimer=41}] 747.6404 37.03727 193.3719 268.1999 1.82
tp @s[scores={cutSceneTimer=42}] 747.6604 37.03563 193.3713 268.1389 1.82
tp @s[scores={cutSceneTimer=43}] 747.6804 37.034 193.3707 268.0779 1.82
tp @s[scores={cutSceneTimer=44}] 747.7004 37.03236 193.37 268.0169 1.82
tp @s[scores={cutSceneTimer=45}] 747.7205 37.03072 193.3693 267.9559 1.82
tp @s[scores={cutSceneTimer=46}] 747.7405 37.02909 193.3686 267.8949 1.82
tp @s[scores={cutSceneTimer=47}] 747.7605 37.02745 193.3678 267.8339 1.82
tp @s[scores={cutSceneTimer=48}] 747.7805 37.02581 193.3671 267.7729 1.82
tp @s[scores={cutSceneTimer=49}] 747.8005 37.02418 193.3663 267.7119 1.82
tp @s[scores={cutSceneTimer=50}] 747.8206 37.02254 193.3655 267.6509 1.82
tp @s[scores={cutSceneTimer=51}] 747.8406 37.0209 193.3647 267.5899 1.82
tp @s[scores={cutSceneTimer=52}] 747.8606 37.01927 193.3639 267.5289 1.82
tp @s[scores={cutSceneTimer=53}] 747.8806 37.01763 193.363 267.4679 1.82
tp @s[scores={cutSceneTimer=54}] 747.9006 37.016 193.3621 267.4069 1.82
tp @s[scores={cutSceneTimer=55}] 747.9207 37.01436 193.3612 267.3459 1.82
tp @s[scores={cutSceneTimer=56}] 747.9407 37.01272 193.3603 267.2849 1.82
tp @s[scores={cutSceneTimer=57}] 747.9607 37.01109 193.3593 267.2238 1.82
tp @s[scores={cutSceneTimer=58}] 747.9807 37.00945 193.3584 267.1628 1.82
tp @s[scores={cutSceneTimer=59}] 748.0007 37.00781 193.3574 267.1018 1.82
tp @s[scores={cutSceneTimer=60}] 748.0208 37.00618 193.3564 267.0408 1.82
tp @s[scores={cutSceneTimer=61}] 748.0408 37.00454 193.3553 266.9798 1.82
tp @s[scores={cutSceneTimer=62}] 748.0608 37.0029 193.3543 266.9188 1.82
tp @s[scores={cutSceneTimer=63}] 748.0808 37.00127 193.3532 266.8578 1.82
tp @s[scores={cutSceneTimer=64}] 748.1008 36.99963 193.3521 266.7968 1.82
tp @s[scores={cutSceneTimer=65}] 748.1208 36.99799 193.351 266.7358 1.82
tp @s[scores={cutSceneTimer=66}] 748.1409 36.99636 193.3499 266.6748 1.82
tp @s[scores={cutSceneTimer=67}] 748.1608 36.99472 193.3487 266.6138 1.82
tp @s[scores={cutSceneTimer=68}] 748.1808 36.99308 193.3475 266.5528 1.82
tp @s[scores={cutSceneTimer=69}] 748.2007 36.99145 193.3463 266.4918 1.82
tp @s[scores={cutSceneTimer=70}] 748.2207 36.98981 193.3451 266.4308 1.82
tp @s[scores={cutSceneTimer=71}] 748.2407 36.98817 193.3439 266.3698 1.82
tp @s[scores={cutSceneTimer=72}] 748.2606 36.98654 193.3426 266.3088 1.82
tp @s[scores={cutSceneTimer=73}] 748.2806 36.9849 193.3413 266.2478 1.82
tp @s[scores={cutSceneTimer=74}] 748.3005 36.98326 193.34 266.1868 1.82
tp @s[scores={cutSceneTimer=75}] 748.3205 36.98163 193.3387 266.1258 1.82
tp @s[scores={cutSceneTimer=76}] 748.3405 36.97999 193.3374 266.0648 1.82
tp @s[scores={cutSceneTimer=77}] 748.3604 36.97836 193.336 266.0038 1.82
tp @s[scores={cutSceneTimer=78}] 748.3804 36.97672 193.3346 265.9427 1.82
tp @s[scores={cutSceneTimer=79}] 748.4003 36.97508 193.3332 265.8817 1.82
tp @s[scores={cutSceneTimer=80}] 748.4203 36.97345 193.3317 265.8207 1.82
tp @s[scores={cutSceneTimer=81}] 748.4402 36.97181 193.3303 265.7597 1.82
tp @s[scores={cutSceneTimer=82}] 748.4602 36.97017 193.3288 265.6987 1.82
tp @s[scores={cutSceneTimer=83}] 748.4802 36.96854 193.3273 265.6377 1.82
tp @s[scores={cutSceneTimer=84}] 748.5001 36.9669 193.3258 265.5767 1.82
tp @s[scores={cutSceneTimer=85}] 748.5201 36.96526 193.3243 265.5157 1.82
tp @s[scores={cutSceneTimer=86}] 748.54 36.96363 193.3227 265.4547 1.82
tp @s[scores={cutSceneTimer=87}] 748.56 36.96199 193.3211 265.3937 1.82
tp @s[scores={cutSceneTimer=88}] 748.58 36.96035 193.3195 265.3327 1.82
tp @s[scores={cutSceneTimer=89}] 748.5999 36.95872 193.3179 265.2717 1.82
tp @s[scores={cutSceneTimer=90}] 748.6199 36.95708 193.3163 265.2107 1.82
tp @s[scores={cutSceneTimer=91}] 748.6398 36.95544 193.3146 265.1497 1.82
tp @s[scores={cutSceneTimer=92}] 748.6598 36.95381 193.3129 265.0887 1.82
tp @s[scores={cutSceneTimer=93}] 748.6797 36.95217 193.3112 265.0277 1.82
tp @s[scores={cutSceneTimer=94}] 748.6997 36.95053 193.3095 264.9667 1.82
tp @s[scores={cutSceneTimer=95}] 748.7197 36.9489 193.3077 264.9057 1.82
tp @s[scores={cutSceneTimer=96}] 748.7396 36.94726 193.3059 264.8447 1.82
tp @s[scores={cutSceneTimer=97}] 748.7596 36.94563 193.3041 264.7837 1.82
tp @s[scores={cutSceneTimer=98}] 748.7795 36.94399 193.3023 264.7227 1.82
tp @s[scores={cutSceneTimer=99}] 748.7995 36.94235 193.3005 264.6617 1.82
tp @s[scores={cutSceneTimer=100}] 748.8195 36.94072 193.2986 264.6006 1.82
tp @s[scores={cutSceneTimer=101}] 748.8394 36.93908 193.2968 264.5396 1.82
tp @s[scores={cutSceneTimer=102}] 748.8594 36.93744 193.2949 264.4786 1.82
tp @s[scores={cutSceneTimer=103}] 748.8793 36.93581 193.2929 264.4176 1.82
tp @s[scores={cutSceneTimer=104}] 748.8992 36.93417 193.291 264.3566 1.82
tp @s[scores={cutSceneTimer=105}] 748.9191 36.93253 193.289 264.2956 1.82
tp @s[scores={cutSceneTimer=106}] 748.939 36.9309 193.287 264.2346 1.82
tp @s[scores={cutSceneTimer=107}] 748.9589 36.92926 193.285 264.1736 1.82
tp @s[scores={cutSceneTimer=108}] 748.9788 36.92762 193.283 264.1126 1.82
tp @s[scores={cutSceneTimer=109}] 748.9987 36.92599 193.281 264.0516 1.82
tp @s[scores={cutSceneTimer=110}] 749.0186 36.92435 193.2789 263.9906 1.82
tp @s[scores={cutSceneTimer=111}] 749.0385 36.92271 193.2768 263.9296 1.82
tp @s[scores={cutSceneTimer=112}] 749.0584 36.92108 193.2747 263.8686 1.82
tp @s[scores={cutSceneTimer=113}] 749.0783 36.91944 193.2726 263.8076 1.82
tp @s[scores={cutSceneTimer=114}] 749.0982 36.9178 193.2704 263.7466 1.82
tp @s[scores={cutSceneTimer=115}] 749.1181 36.91617 193.2682 263.6856 1.82
tp @s[scores={cutSceneTimer=116}] 749.138 36.91453 193.2661 263.6246 1.82
tp @s[scores={cutSceneTimer=117}] 749.1579 36.9129 193.2638 263.5636 1.82
tp @s[scores={cutSceneTimer=118}] 749.1778 36.91126 193.2616 263.5026 1.82
tp @s[scores={cutSceneTimer=119}] 749.1977 36.90962 193.2593 263.4416 1.82
tp @s[scores={cutSceneTimer=120}] 749.2176 36.90799 193.2571 263.3806 1.82
tp @s[scores={cutSceneTimer=121}] 749.2375 36.90635 193.2548 263.3195 1.82
tp @s[scores={cutSceneTimer=122}] 749.2574 36.90471 193.2524 263.2585 1.82
tp @s[scores={cutSceneTimer=123}] 749.2773 36.90308 193.2501 263.1975 1.82
tp @s[scores={cutSceneTimer=124}] 749.2972 36.90144 193.2477 263.1365 1.82
tp @s[scores={cutSceneTimer=125}] 749.3171 36.8998 193.2453 263.0755 1.82
tp @s[scores={cutSceneTimer=126}] 749.337 36.89817 193.2429 263.0145 1.82
tp @s[scores={cutSceneTimer=127}] 749.3569 36.89653 193.2405 262.9535 1.82
tp @s[scores={cutSceneTimer=128}] 749.3768 36.89489 193.2381 262.8925 1.82
tp @s[scores={cutSceneTimer=129}] 749.3967 36.89326 193.2356 262.8315 1.82
tp @s[scores={cutSceneTimer=130}] 749.4165 36.89162 193.2331 262.7705 1.82
tp @s[scores={cutSceneTimer=131}] 749.4363 36.88998 193.2306 262.7095 1.82
tp @s[scores={cutSceneTimer=132}] 749.4562 36.88835 193.2281 262.6485 1.82
tp @s[scores={cutSceneTimer=133}] 749.476 36.88671 193.2255 262.5875 1.82
tp @s[scores={cutSceneTimer=134}] 749.4958 36.88507 193.2229 262.5265 1.82
tp @s[scores={cutSceneTimer=135}] 749.5157 36.88344 193.2203 262.4655 1.82
tp @s[scores={cutSceneTimer=136}] 749.5355 36.8818 193.2177 262.4045 1.82
tp @s[scores={cutSceneTimer=137}] 749.5554 36.88017 193.2151 262.3435 1.82
tp @s[scores={cutSceneTimer=138}] 749.5752 36.87853 193.2124 262.2825 1.82
tp @s[scores={cutSceneTimer=139}] 749.595 36.87689 193.2097 262.2215 1.82
tp @s[scores={cutSceneTimer=140}] 749.6149 36.87526 193.207 262.1605 1.82
tp @s[scores={cutSceneTimer=141}] 749.6347 36.87362 193.2043 262.0995 1.82
tp @s[scores={cutSceneTimer=142}] 749.6545 36.87198 193.2016 262.0385 1.82
tp @s[scores={cutSceneTimer=143}] 749.6744 36.87035 193.1988 261.9774 1.82
tp @s[scores={cutSceneTimer=144}] 749.6942 36.86871 193.196 261.9164 1.82
tp @s[scores={cutSceneTimer=145}] 749.7141 36.86707 193.1932 261.8554 1.82
tp @s[scores={cutSceneTimer=146}] 749.7339 36.86544 193.1904 261.7944 1.82
tp @s[scores={cutSceneTimer=147}] 749.7537 36.8638 193.1875 261.7334 1.82
tp @s[scores={cutSceneTimer=148}] 749.7736 36.86216 193.1847 261.6724 1.82
tp @s[scores={cutSceneTimer=149}] 749.7934 36.86053 193.1818 261.6114 1.82
tp @s[scores={cutSceneTimer=150}] 749.8132 36.85889 193.1789 261.5504 1.82
tp @s[scores={cutSceneTimer=151}] 749.833 36.85725 193.1759 261.4894 1.82
tp @s[scores={cutSceneTimer=152}] 749.8528 36.85562 193.173 261.4284 1.82
tp @s[scores={cutSceneTimer=153}] 749.8726 36.85398 193.17 261.3674 1.82
tp @s[scores={cutSceneTimer=154}] 749.8923 36.85234 193.167 261.3064 1.82
tp @s[scores={cutSceneTimer=155}] 749.9121 36.85071 193.164 261.2454 1.82
tp @s[scores={cutSceneTimer=156}] 749.9319 36.84907 193.1609 261.1844 1.82
tp @s[scores={cutSceneTimer=157}] 749.9517 36.84743 193.1579 261.1234 1.82
tp @s[scores={cutSceneTimer=158}] 749.9714 36.8458 193.1548 261.0624 1.82
tp @s[scores={cutSceneTimer=159}] 749.9912 36.84416 193.1517 261.0014 1.82
tp @s[scores={cutSceneTimer=160}] 750.011 36.84253 193.1486 260.9404 1.82
tp @s[scores={cutSceneTimer=161}] 750.0308 36.84089 193.1454 260.8794 1.82
tp @s[scores={cutSceneTimer=162}] 750.0505 36.83925 193.1423 260.8184 1.82
tp @s[scores={cutSceneTimer=163}] 750.0703 36.83762 193.1391 260.7574 1.82
tp @s[scores={cutSceneTimer=164}] 750.0901 36.83598 193.1359 260.6964 1.82
tp @s[scores={cutSceneTimer=165}] 750.1099 36.83434 193.1327 260.6353 1.82
tp @s[scores={cutSceneTimer=166}] 750.1296 36.83271 193.1294 260.5743 1.82
tp @s[scores={cutSceneTimer=167}] 750.1494 36.83107 193.1262 260.5133 1.82
tp @s[scores={cutSceneTimer=168}] 750.1692 36.82943 193.1229 260.4523 1.82
tp @s[scores={cutSceneTimer=169}] 750.1889 36.8278 193.1196 260.3913 1.82
tp @s[scores={cutSceneTimer=170}] 750.2086 36.82616 193.1162 260.3303 1.82
tp @s[scores={cutSceneTimer=171}] 750.2283 36.82452 193.1129 260.2693 1.82
tp @s[scores={cutSceneTimer=172}] 750.248 36.82289 193.1095 260.2083 1.82
tp @s[scores={cutSceneTimer=173}] 750.2678 36.82125 193.1061 260.1473 1.82
tp @s[scores={cutSceneTimer=174}] 750.2875 36.81961 193.1027 260.0863 1.82
tp @s[scores={cutSceneTimer=175}] 750.3072 36.81798 193.0993 260.0253 1.82
tp @s[scores={cutSceneTimer=176}] 750.3269 36.81634 193.0958 259.9643 1.82
tp @s[scores={cutSceneTimer=177}] 750.3466 36.8147 193.0923 259.9033 1.82
tp @s[scores={cutSceneTimer=178}] 750.3663 36.81307 193.0888 259.8423 1.82
tp @s[scores={cutSceneTimer=179}] 750.386 36.81143 193.0853 259.7813 1.82
tp @s[scores={cutSceneTimer=180}] 750.4058 36.8098 193.0818 259.7203 1.82
tp @s[scores={cutSceneTimer=181}] 750.4255 36.80816 193.0782 259.6593 1.82
tp @s[scores={cutSceneTimer=182}] 750.4452 36.80652 193.0746 259.5983 1.82
tp @s[scores={cutSceneTimer=183}] 750.4649 36.80489 193.071 259.5373 1.82
tp @s[scores={cutSceneTimer=184}] 750.4846 36.80325 193.0674 259.4763 1.82
tp @s[scores={cutSceneTimer=185}] 750.5043 36.80161 193.0637 259.4153 1.82
tp @s[scores={cutSceneTimer=186}] 750.524 36.79998 193.0601 259.3542 1.82
tp @s[scores={cutSceneTimer=187}] 750.5436 36.79834 193.0564 259.2932 1.82
tp @s[scores={cutSceneTimer=188}] 750.5633 36.7967 193.0527 259.2322 1.82
tp @s[scores={cutSceneTimer=189}] 750.5829 36.79507 193.049 259.1712 1.82
tp @s[scores={cutSceneTimer=190}] 750.6026 36.79343 193.0452 259.1102 1.82
tp @s[scores={cutSceneTimer=191}] 750.6223 36.79179 193.0414 259.0492 1.82
tp @s[scores={cutSceneTimer=192}] 750.6419 36.79016 193.0376 258.9882 1.82
tp @s[scores={cutSceneTimer=193}] 750.6616 36.78852 193.0338 258.9272 1.82
tp @s[scores={cutSceneTimer=194}] 750.6812 36.78688 193.03 258.8662 1.82
tp @s[scores={cutSceneTimer=195}] 750.7009 36.78525 193.0261 258.8052 1.82
tp @s[scores={cutSceneTimer=196}] 750.7205 36.78361 193.0223 258.7442 1.82
tp @s[scores={cutSceneTimer=197}] 750.7402 36.78197 193.0184 258.6832 1.82
tp @s[scores={cutSceneTimer=198}] 750.7598 36.78034 193.0145 258.6222 1.82
tp @s[scores={cutSceneTimer=199}] 750.7795 36.7787 193.0105 258.5612 1.82
tp @s[scores={cutSceneTimer=200}] 750.7991 36.77707 193.0066 258.5002 1.82
tp @s[scores={cutSceneTimer=201}] 750.8187 36.77543 193.0026 258.4392 1.82
tp @s[scores={cutSceneTimer=202}] 750.8383 36.77379 192.9986 258.3782 1.82
tp @s[scores={cutSceneTimer=203}] 750.8579 36.77216 192.9946 258.3172 1.82
tp @s[scores={cutSceneTimer=204}] 750.8775 36.77052 192.9905 258.2562 1.82
tp @s[scores={cutSceneTimer=205}] 750.8971 36.76888 192.9865 258.1952 1.82
tp @s[scores={cutSceneTimer=206}] 750.9167 36.76725 192.9824 258.1342 1.82
tp @s[scores={cutSceneTimer=207}] 750.9363 36.76561 192.9783 258.0732 1.82
tp @s[scores={cutSceneTimer=208}] 750.9559 36.76397 192.9742 258.0121 1.82
tp @s[scores={cutSceneTimer=209}] 750.9755 36.76234 192.97 257.9511 1.82
tp @s[scores={cutSceneTimer=210}] 750.9951 36.7607 192.9658 257.8901 1.82
tp @s[scores={cutSceneTimer=211}] 751.0146 36.75906 192.9617 257.8291 1.82
tp @s[scores={cutSceneTimer=212}] 751.0342 36.75743 192.9574 257.7681 1.82
tp @s[scores={cutSceneTimer=213}] 751.0538 36.75579 192.9532 257.7071 1.82
tp @s[scores={cutSceneTimer=214}] 751.0734 36.75415 192.949 257.6461 1.82
tp @s[scores={cutSceneTimer=215}] 751.093 36.75252 192.9447 257.5851 1.82
tp @s[scores={cutSceneTimer=216}] 751.1125 36.75088 192.9404 257.5241 1.82
tp @s[scores={cutSceneTimer=217}] 751.132 36.74924 192.9361 257.4631 1.82
tp @s[scores={cutSceneTimer=218}] 751.1516 36.74761 192.9318 257.4021 1.82
tp @s[scores={cutSceneTimer=219}] 751.1711 36.74597 192.9274 257.3411 1.82
tp @s[scores={cutSceneTimer=220}] 751.1906 36.74434 192.923 257.2801 1.82
tp @s[scores={cutSceneTimer=221}] 751.2101 36.7427 192.9186 257.2191 1.82
tp @s[scores={cutSceneTimer=222}] 751.2297 36.74106 192.9142 257.1581 1.82
tp @s[scores={cutSceneTimer=223}] 751.2492 36.73943 192.9098 257.0971 1.82
tp @s[scores={cutSceneTimer=224}] 751.2687 36.73779 192.9053 257.0361 1.82
tp @s[scores={cutSceneTimer=225}] 751.2883 36.73615 192.9009 256.9751 1.82
tp @s[scores={cutSceneTimer=226}] 751.3078 36.73452 192.8964 256.9141 1.82
tp @s[scores={cutSceneTimer=227}] 751.3273 36.73288 192.8918 256.8531 1.82
tp @s[scores={cutSceneTimer=228}] 751.3468 36.73124 192.8873 256.7921 1.82
tp @s[scores={cutSceneTimer=229}] 751.3663 36.72961 192.8828 256.731 1.82
tp @s[scores={cutSceneTimer=230}] 751.3857 36.72797 192.8782 256.67 1.82
tp @s[scores={cutSceneTimer=231}] 751.4052 36.72633 192.8736 256.609 1.82
tp @s[scores={cutSceneTimer=232}] 751.4247 36.7247 192.8689 256.548 1.82
tp @s[scores={cutSceneTimer=233}] 751.4442 36.72306 192.8643 256.487 1.82
tp @s[scores={cutSceneTimer=234}] 751.4636 36.72142 192.8596 256.426 1.82
tp @s[scores={cutSceneTimer=235}] 751.4831 36.71979 192.8549 256.365 1.82
tp @s[scores={cutSceneTimer=236}] 751.5026 36.71815 192.8503 256.304 1.82
tp @s[scores={cutSceneTimer=237}] 751.522 36.71651 192.8455 256.243 1.82
tp @s[scores={cutSceneTimer=238}] 751.5415 36.71488 192.8408 256.182 1.82
tp @s[scores={cutSceneTimer=239}] 751.561 36.71324 192.836 256.121 1.82
tp @s[scores={cutSceneTimer=240}] 751.5804 36.71161 192.8312 256.06 1.82
tp @s[scores={cutSceneTimer=241}] 751.5998 36.70997 192.8264 255.999 1.82
tp @s[scores={cutSceneTimer=242}] 751.6192 36.70833 192.8216 255.938 1.82
tp @s[scores={cutSceneTimer=243}] 751.6386 36.7067 192.8167 255.877 1.82
tp @s[scores={cutSceneTimer=244}] 751.658 36.70506 192.8119 255.816 1.82
tp @s[scores={cutSceneTimer=245}] 751.6774 36.70342 192.807 255.755 1.82
tp @s[scores={cutSceneTimer=246}] 751.6968 36.70179 192.8021 255.694 1.82
tp @s[scores={cutSceneTimer=247}] 751.7162 36.70015 192.7971 255.633 1.82
tp @s[scores={cutSceneTimer=248}] 751.7357 36.69851 192.7922 255.572 1.82
tp @s[scores={cutSceneTimer=249}] 751.7551 36.69688 192.7872 255.511 1.82
tp @s[scores={cutSceneTimer=250}] 751.7745 36.69524 192.7822 255.45 1.82
tp @s[scores={cutSceneTimer=251}] 751.7939 36.6936 192.7772 255.3889 1.82
tp @s[scores={cutSceneTimer=252}] 751.8132 36.69197 192.7722 255.3279 1.82
tp @s[scores={cutSceneTimer=253}] 751.8326 36.69033 192.7671 255.2669 1.82
tp @s[scores={cutSceneTimer=254}] 751.8519 36.68869 192.762 255.2059 1.82
tp @s[scores={cutSceneTimer=255}] 751.8713 36.68706 192.7569 255.1449 1.82
tp @s[scores={cutSceneTimer=256}] 751.8906 36.68542 192.7518 255.0839 1.82
tp @s[scores={cutSceneTimer=257}] 751.91 36.68378 192.7467 255.0229 1.82
tp @s[scores={cutSceneTimer=258}] 751.9293 36.68215 192.7415 254.9619 1.82
tp @s[scores={cutSceneTimer=259}] 751.9487 36.68051 192.7363 254.9009 1.82
tp @s[scores={cutSceneTimer=260}] 751.968 36.67887 192.7311 254.8399 1.82
tp @s[scores={cutSceneTimer=261}] 751.9874 36.67724 192.7259 254.7789 1.82
tp @s[scores={cutSceneTimer=262}] 752.0067 36.6756 192.7207 254.7179 1.82
tp @s[scores={cutSceneTimer=263}] 752.026 36.67397 192.7154 254.6569 1.82
tp @s[scores={cutSceneTimer=264}] 752.0453 36.67233 192.7101 254.5959 1.82
tp @s[scores={cutSceneTimer=265}] 752.0646 36.67069 192.7048 254.5349 1.82
tp @s[scores={cutSceneTimer=266}] 752.0839 36.66906 192.6995 254.4739 1.82
tp @s[scores={cutSceneTimer=267}] 752.1031 36.66742 192.6942 254.4129 1.82
tp @s[scores={cutSceneTimer=268}] 752.1224 36.66578 192.6888 254.3519 1.82
tp @s[scores={cutSceneTimer=269}] 752.1417 36.66415 192.6834 254.2909 1.82
tp @s[scores={cutSceneTimer=270}] 752.161 36.66251 192.678 254.2299 1.82
tp @s[scores={cutSceneTimer=271}] 752.1803 36.66087 192.6726 254.1689 1.82
tp @s[scores={cutSceneTimer=272}] 752.1996 36.65924 192.6672 254.1078 1.82
tp @s[scores={cutSceneTimer=273}] 752.2188 36.6576 192.6617 254.0468 1.82
tp @s[scores={cutSceneTimer=274}] 752.238 36.65596 192.6562 253.9858 1.82
tp @s[scores={cutSceneTimer=275}] 752.2573 36.65433 192.6507 253.9248 1.82
tp @s[scores={cutSceneTimer=276}] 752.2765 36.65269 192.6452 253.8638 1.82
tp @s[scores={cutSceneTimer=277}] 752.2957 36.65105 192.6396 253.8028 1.82
tp @s[scores={cutSceneTimer=278}] 752.3149 36.64942 192.6341 253.7418 1.82
tp @s[scores={cutSceneTimer=279}] 752.3342 36.64778 192.6285 253.6808 1.82
tp @s[scores={cutSceneTimer=280}] 752.3534 36.64614 192.6229 253.6198 1.82
tp @s[scores={cutSceneTimer=281}] 752.3726 36.64451 192.6172 253.5588 1.82
tp @s[scores={cutSceneTimer=282}] 752.3918 36.64287 192.6116 253.4978 1.82
tp @s[scores={cutSceneTimer=283}] 752.4111 36.64124 192.6059 253.4368 1.82
tp @s[scores={cutSceneTimer=284}] 752.4302 36.6396 192.6002 253.3758 1.82
tp @s[scores={cutSceneTimer=285}] 752.4494 36.63796 192.5945 253.3148 1.82
tp @s[scores={cutSceneTimer=286}] 752.4686 36.63633 192.5888 253.2538 1.82
tp @s[scores={cutSceneTimer=287}] 752.4877 36.63469 192.583 253.1928 1.82
tp @s[scores={cutSceneTimer=288}] 752.5069 36.63305 192.5773 253.1318 1.82
tp @s[scores={cutSceneTimer=289}] 752.5261 36.63142 192.5715 253.0708 1.82
tp @s[scores={cutSceneTimer=290}] 752.5452 36.62978 192.5657 253.0098 1.82
tp @s[scores={cutSceneTimer=291}] 752.5644 36.62814 192.5598 252.9488 1.82
tp @s[scores={cutSceneTimer=292}] 752.5836 36.62651 192.554 252.8878 1.82
tp @s[scores={cutSceneTimer=293}] 752.6027 36.62487 192.5481 252.8268 1.82
tp @s[scores={cutSceneTimer=294}] 752.6218 36.62323 192.5422 252.7657 1.82
tp @s[scores={cutSceneTimer=295}] 752.6409 36.6216 192.5363 252.7047 1.82
tp @s[scores={cutSceneTimer=296}] 752.66 36.61996 192.5303 252.6437 1.82
tp @s[scores={cutSceneTimer=297}] 752.6791 36.61832 192.5244 252.5827 1.82
tp @s[scores={cutSceneTimer=298}] 752.6982 36.61669 192.5184 252.5217 1.82
tp @s[scores={cutSceneTimer=299}] 752.7173 36.61505 192.5124 252.4607 1.82
tp @s[scores={cutSceneTimer=300}] 752.7365 36.61341 192.5064 252.3997 1.82
tp @s[scores={cutSceneTimer=301}] 752.7556 36.61178 192.5004 252.3387 1.82
tp @s[scores={cutSceneTimer=302}] 752.7747 36.61014 192.4943 252.2777 1.82
tp @s[scores={cutSceneTimer=303}] 752.7937 36.60851 192.4883 252.2167 1.82
tp @s[scores={cutSceneTimer=304}] 752.8127 36.60687 192.4822 252.1557 1.82
tp @s[scores={cutSceneTimer=305}] 752.8318 36.60523 192.476 252.0947 1.82
tp @s[scores={cutSceneTimer=306}] 752.8508 36.6036 192.4699 252.0337 1.82
tp @s[scores={cutSceneTimer=307}] 752.8699 36.60196 192.4638 251.9727 1.82
tp @s[scores={cutSceneTimer=308}] 752.8889 36.60032 192.4576 251.9117 1.82
tp @s[scores={cutSceneTimer=309}] 752.908 36.59869 192.4514 251.8507 1.82
tp @s[scores={cutSceneTimer=310}] 752.927 36.59705 192.4452 251.7897 1.82
tp @s[scores={cutSceneTimer=311}] 752.946 36.59541 192.4389 251.7287 1.82
tp @s[scores={cutSceneTimer=312}] 752.965 36.59378 192.4327 251.6677 1.82
tp @s[scores={cutSceneTimer=313}] 752.984 36.59214 192.4264 251.6067 1.82
tp @s[scores={cutSceneTimer=314}] 753.003 36.5905 192.4201 251.5457 1.82
tp @s[scores={cutSceneTimer=315}] 753.022 36.58887 192.4138 251.4846 1.82
tp @s[scores={cutSceneTimer=316}] 753.041 36.58723 192.4075 251.4236 1.82
tp @s[scores={cutSceneTimer=317}] 753.0599 36.58559 192.4011 251.3626 1.82
tp @s[scores={cutSceneTimer=318}] 753.0789 36.58396 192.3947 251.3016 1.82
tp @s[scores={cutSceneTimer=319}] 753.0979 36.58232 192.3883 251.2406 1.82
tp @s[scores={cutSceneTimer=320}] 753.1169 36.58068 192.3819 251.1796 1.82
tp @s[scores={cutSceneTimer=321}] 753.1358 36.57905 192.3755 251.1186 1.82
tp @s[scores={cutSceneTimer=322}] 753.1547 36.57741 192.369 251.0576 1.82
tp @s[scores={cutSceneTimer=323}] 753.1736 36.57578 192.3625 250.9966 1.82
tp @s[scores={cutSceneTimer=324}] 753.1926 36.57414 192.356 250.9356 1.82
tp @s[scores={cutSceneTimer=325}] 753.2115 36.5725 192.3495 250.8746 1.82
tp @s[scores={cutSceneTimer=326}] 753.2304 36.57087 192.343 250.8136 1.82
tp @s[scores={cutSceneTimer=327}] 753.2493 36.56923 192.3364 250.7526 1.82
tp @s[scores={cutSceneTimer=328}] 753.2682 36.56759 192.3298 250.6916 1.82
tp @s[scores={cutSceneTimer=329}] 753.2872 36.56596 192.3232 250.6306 1.82
tp @s[scores={cutSceneTimer=330}] 753.306 36.56432 192.3166 250.5696 1.82
tp @s[scores={cutSceneTimer=331}] 753.3249 36.56268 192.31 250.5086 1.82
tp @s[scores={cutSceneTimer=332}] 753.3438 36.56105 192.3033 250.4476 1.82
tp @s[scores={cutSceneTimer=333}] 753.3626 36.55941 192.2966 250.3866 1.82
tp @s[scores={cutSceneTimer=334}] 753.3815 36.55777 192.2899 250.3256 1.82
tp @s[scores={cutSceneTimer=335}] 753.4003 36.55614 192.2832 250.2646 1.82
tp @s[scores={cutSceneTimer=336}] 753.4192 36.5545 192.2765 250.2036 1.82
tp @s[scores={cutSceneTimer=337}] 753.438 36.55286 192.2697 250.1425 1.82
tp @s[scores={cutSceneTimer=338}] 753.4569 36.55123 192.2629 250.0815 1.82
tp @s[scores={cutSceneTimer=339}] 753.4757 36.54959 192.2561 250.0205 1.82
tp @s[scores={cutSceneTimer=340}] 753.4945 36.54795 192.2493 249.9595 1.82
tp @s[scores={cutSceneTimer=341}] 753.5133 36.54632 192.2425 249.8985 1.82
tp @s[scores={cutSceneTimer=342}] 753.5321 36.54468 192.2356 249.8375 1.82
tp @s[scores={cutSceneTimer=343}] 753.5509 36.54305 192.2287 249.7765 1.82
tp @s[scores={cutSceneTimer=344}] 753.5697 36.54141 192.2218 249.7155 1.82
tp @s[scores={cutSceneTimer=345}] 753.5885 36.53977 192.2149 249.6545 1.82
tp @s[scores={cutSceneTimer=346}] 753.6073 36.53814 192.208 249.5935 1.82
tp @s[scores={cutSceneTimer=347}] 753.626 36.5365 192.201 249.5325 1.82
tp @s[scores={cutSceneTimer=348}] 753.6448 36.53486 192.194 249.4715 1.82
tp @s[scores={cutSceneTimer=349}] 753.6635 36.53323 192.187 249.4105 1.82
tp @s[scores={cutSceneTimer=350}] 753.6823 36.53159 192.18 249.3495 1.82
tp @s[scores={cutSceneTimer=351}] 753.701 36.52995 192.173 249.2885 1.82
tp @s[scores={cutSceneTimer=352}] 753.7197 36.52832 192.1659 249.2275 1.82
tp @s[scores={cutSceneTimer=353}] 753.7385 36.52668 192.1588 249.1665 1.82
tp @s[scores={cutSceneTimer=354}] 753.7572 36.52504 192.1517 249.1055 1.82
tp @s[scores={cutSceneTimer=355}] 753.7759 36.52341 192.1446 249.0445 1.82
tp @s[scores={cutSceneTimer=356}] 753.7946 36.52177 192.1375 248.9835 1.82
tp @s[scores={cutSceneTimer=357}] 753.8132 36.52013 192.1303 248.9225 1.82
tp @s[scores={cutSceneTimer=358}] 753.8319 36.5185 192.1232 248.8615 1.82
tp @s[scores={cutSceneTimer=359}] 753.8506 36.51686 192.116 248.8004 1.82
tp @s[scores={cutSceneTimer=360}] 753.8693 36.51522 192.1087 248.7394 1.82
tp @s[scores={cutSceneTimer=361}] 753.8879 36.51359 192.1015 248.6784 1.82
tp @s[scores={cutSceneTimer=362}] 753.9066 36.51195 192.0943 248.6174 1.82
tp @s[scores={cutSceneTimer=363}] 753.9252 36.51031 192.087 248.5564 1.82
tp @s[scores={cutSceneTimer=364}] 753.9438 36.50868 192.0797 248.4954 1.82
tp @s[scores={cutSceneTimer=365}] 753.9625 36.50704 192.0724 248.4344 1.82
tp @s[scores={cutSceneTimer=366}] 753.9811 36.50541 192.065 248.3734 1.82
tp @s[scores={cutSceneTimer=367}] 753.9997 36.50377 192.0577 248.3124 1.82
tp @s[scores={cutSceneTimer=368}] 754.0183 36.50213 192.0503 248.2514 1.82
tp @s[scores={cutSceneTimer=369}] 754.0369 36.5005 192.0429 248.1904 1.82
tp @s[scores={cutSceneTimer=370}] 754.0555 36.49886 192.0355 248.1294 1.82
tp @s[scores={cutSceneTimer=371}] 754.0741 36.49722 192.0281 248.0684 1.82
tp @s[scores={cutSceneTimer=372}] 754.0927 36.49559 192.0206 248.0074 1.82
tp @s[scores={cutSceneTimer=373}] 754.1112 36.49395 192.0131 247.9464 1.82
tp @s[scores={cutSceneTimer=374}] 754.1298 36.49231 192.0056 247.8854 1.82
tp @s[scores={cutSceneTimer=375}] 754.1483 36.49068 191.9981 247.8244 1.82
tp @s[scores={cutSceneTimer=376}] 754.1669 36.48904 191.9906 247.7634 1.82
tp @s[scores={cutSceneTimer=377}] 754.1854 36.4874 191.983 247.7024 1.82
tp @s[scores={cutSceneTimer=378}] 754.204 36.48577 191.9755 247.6414 1.82
tp @s[scores={cutSceneTimer=379}] 754.2225 36.48413 191.9679 247.5804 1.82
tp @s[scores={cutSceneTimer=380}] 754.241 36.48249 191.9603 247.5193 1.82
tp @s[scores={cutSceneTimer=381}] 754.2595 36.48086 191.9526 247.4583 1.82
tp @s[scores={cutSceneTimer=382}] 754.278 36.47922 191.945 247.3973 1.82
tp @s[scores={cutSceneTimer=383}] 754.2964 36.47758 191.9373 247.3363 1.82
tp @s[scores={cutSceneTimer=384}] 754.3149 36.47595 191.9296 247.2753 1.82
tp @s[scores={cutSceneTimer=385}] 754.3334 36.47431 191.9219 247.2143 1.82
tp @s[scores={cutSceneTimer=386}] 754.3519 36.47268 191.9142 247.1533 1.82
tp @s[scores={cutSceneTimer=387}] 754.3703 36.47104 191.9064 247.0923 1.82
tp @s[scores={cutSceneTimer=388}] 754.3887 36.4694 191.8987 247.0313 1.82
tp @s[scores={cutSceneTimer=389}] 754.4072 36.46777 191.8909 246.9703 1.82
tp @s[scores={cutSceneTimer=390}] 754.4256 36.46613 191.8831 246.9093 1.82
tp @s[scores={cutSceneTimer=391}] 754.444 36.46449 191.8752 246.8483 1.82
tp @s[scores={cutSceneTimer=392}] 754.4625 36.46286 191.8674 246.7873 1.82
tp @s[scores={cutSceneTimer=393}] 754.4808 36.46122 191.8595 246.7263 1.82
tp @s[scores={cutSceneTimer=394}] 754.4992 36.45958 191.8516 246.6653 1.82
tp @s[scores={cutSceneTimer=395}] 754.5176 36.45795 191.8437 246.6043 1.82
tp @s[scores={cutSceneTimer=396}] 754.5359 36.45631 191.8358 246.5433 1.82
tp @s[scores={cutSceneTimer=397}] 754.5543 36.45467 191.8279 246.4823 1.82
tp @s[scores={cutSceneTimer=398}] 754.5727 36.45304 191.8199 246.4213 1.82
tp @s[scores={cutSceneTimer=399}] 754.5911 36.4514 191.8119 246.3603 1.82
tp @s[scores={cutSceneTimer=400}] 754.6094 36.44976 191.8039 246.2993 1.82
tp @s[scores={cutSceneTimer=401}] 754.6277 36.44813 191.7959 246.2383 1.82
tp @s[scores={cutSceneTimer=402}] 754.6461 36.44649 191.7878 246.1772 1.82
tp @s[scores={cutSceneTimer=403}] 754.6644 36.44485 191.7798 246.1162 1.82
tp @s[scores={cutSceneTimer=404}] 754.6827 36.44322 191.7717 246.0552 1.82
tp @s[scores={cutSceneTimer=405}] 754.701 36.44158 191.7636 245.9942 1.82
tp @s[scores={cutSceneTimer=406}] 754.7193 36.43995 191.7555 245.9332 1.82
tp @s[scores={cutSceneTimer=407}] 754.7376 36.43831 191.7473 245.8722 1.82
tp @s[scores={cutSceneTimer=408}] 754.7559 36.43667 191.7392 245.8112 1.82
tp @s[scores={cutSceneTimer=409}] 754.7741 36.43504 191.731 245.7502 1.82
tp @s[scores={cutSceneTimer=410}] 754.7924 36.4334 191.7228 245.6892 1.82
tp @s[scores={cutSceneTimer=411}] 754.8106 36.43176 191.7146 245.6282 1.82
tp @s[scores={cutSceneTimer=412}] 754.8289 36.43013 191.7064 245.5672 1.82
tp @s[scores={cutSceneTimer=413}] 754.8471 36.42849 191.6981 245.5062 1.82
tp @s[scores={cutSceneTimer=414}] 754.8654 36.42685 191.6898 245.4452 1.82
tp @s[scores={cutSceneTimer=415}] 754.8835 36.42522 191.6815 245.3842 1.82
tp @s[scores={cutSceneTimer=416}] 754.9017 36.42358 191.6732 245.3232 1.82
tp @s[scores={cutSceneTimer=417}] 754.9199 36.42194 191.6649 245.2622 1.82
tp @s[scores={cutSceneTimer=418}] 754.9381 36.42031 191.6565 245.2012 1.82
tp @s[scores={cutSceneTimer=419}] 754.9563 36.41867 191.6482 245.1402 1.82
tp @s[scores={cutSceneTimer=420}] 754.9745 36.41703 191.6398 245.0792 1.82
execute as @s[scores={cutSceneTimer=400}] as @s run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=420},tag=cutsceneLeader] run tag @e[tag=snapeClassroomFpEngine,limit=1,sort=nearest] remove cutsceneStop
execute as @s[scores={cutSceneTimer=420}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=421}] 758.4141 41.45528 211.0764 196.92 18.34
tp @s[scores={cutSceneTimer=422}] 758.4183 41.45056 211.0627 196.92 18.34
tp @s[scores={cutSceneTimer=423}] 758.4224 41.44584 211.0491 196.92 18.34
tp @s[scores={cutSceneTimer=424}] 758.4266 41.44112 211.0355 196.92 18.34
tp @s[scores={cutSceneTimer=425}] 758.4307 41.43641 211.0219 196.92 18.34
tp @s[scores={cutSceneTimer=426}] 758.4349 41.43169 211.0082 196.92 18.34
tp @s[scores={cutSceneTimer=427}] 758.439 41.42697 210.9946 196.92 18.34
tp @s[scores={cutSceneTimer=428}] 758.4432 41.42225 210.981 196.92 18.34
tp @s[scores={cutSceneTimer=429}] 758.4473 41.41753 210.9674 196.92 18.34
tp @s[scores={cutSceneTimer=430}] 758.4515 41.41281 210.9537 196.92 18.34
tp @s[scores={cutSceneTimer=431}] 758.4556 41.40809 210.9401 196.92 18.34
tp @s[scores={cutSceneTimer=432}] 758.4598 41.40337 210.9265 196.92 18.34
tp @s[scores={cutSceneTimer=433}] 758.4639 41.39865 210.9129 196.92 18.34
tp @s[scores={cutSceneTimer=434}] 758.4681 41.39394 210.8992 196.92 18.34
tp @s[scores={cutSceneTimer=435}] 758.4722 41.38922 210.8856 196.92 18.34
tp @s[scores={cutSceneTimer=436}] 758.4764 41.3845 210.872 196.92 18.34
tp @s[scores={cutSceneTimer=437}] 758.4805 41.37978 210.8584 196.92 18.34
tp @s[scores={cutSceneTimer=438}] 758.4847 41.37506 210.8447 196.92 18.34
tp @s[scores={cutSceneTimer=439}] 758.4888 41.37034 210.8311 196.92 18.34
tp @s[scores={cutSceneTimer=440}] 758.493 41.36562 210.8175 196.92 18.34
tp @s[scores={cutSceneTimer=441}] 758.4971 41.3609 210.8038 196.92 18.34
tp @s[scores={cutSceneTimer=442}] 758.5013 41.35619 210.7902 196.92 18.34
tp @s[scores={cutSceneTimer=443}] 758.5054 41.35147 210.7766 196.92 18.34
tp @s[scores={cutSceneTimer=444}] 758.5096 41.34675 210.763 196.92 18.34
tp @s[scores={cutSceneTimer=445}] 758.5137 41.34203 210.7493 196.92 18.34
tp @s[scores={cutSceneTimer=446}] 758.5179 41.33731 210.7357 196.92 18.34
tp @s[scores={cutSceneTimer=447}] 758.522 41.33259 210.7221 196.92 18.34
tp @s[scores={cutSceneTimer=448}] 758.5262 41.32787 210.7085 196.92 18.34
tp @s[scores={cutSceneTimer=449}] 758.5303 41.32315 210.6948 196.92 18.34
tp @s[scores={cutSceneTimer=450}] 758.5345 41.31844 210.6812 196.92 18.34
tp @s[scores={cutSceneTimer=451}] 758.5386 41.31372 210.6676 196.92 18.34
tp @s[scores={cutSceneTimer=452}] 758.5428 41.309 210.654 196.92 18.34
tp @s[scores={cutSceneTimer=453}] 758.5469 41.30428 210.6403 196.92 18.34
tp @s[scores={cutSceneTimer=454}] 758.5511 41.29956 210.6267 196.92 18.34
tp @s[scores={cutSceneTimer=455}] 758.5552 41.29484 210.6131 196.92 18.34
tp @s[scores={cutSceneTimer=456}] 758.5594 41.29012 210.5995 196.92 18.34
tp @s[scores={cutSceneTimer=457}] 758.5635 41.2854 210.5858 196.92 18.34
tp @s[scores={cutSceneTimer=458}] 758.5677 41.28069 210.5722 196.92 18.34
tp @s[scores={cutSceneTimer=459}] 758.5718 41.27597 210.5586 196.92 18.34
tp @s[scores={cutSceneTimer=460}] 758.576 41.27125 210.545 196.92 18.34
tp @s[scores={cutSceneTimer=461}] 758.5801 41.26653 210.5313 196.92 18.34
tp @s[scores={cutSceneTimer=462}] 758.5843 41.26181 210.5177 196.92 18.34
tp @s[scores={cutSceneTimer=463}] 758.5884 41.25709 210.5041 196.92 18.34
tp @s[scores={cutSceneTimer=464}] 758.5926 41.25237 210.4904 196.92 18.34
tp @s[scores={cutSceneTimer=465}] 758.5967 41.24765 210.4768 196.92 18.34
tp @s[scores={cutSceneTimer=466}] 758.6009 41.24294 210.4632 196.92 18.34
tp @s[scores={cutSceneTimer=467}] 758.605 41.23822 210.4496 196.92 18.34
tp @s[scores={cutSceneTimer=468}] 758.6092 41.2335 210.4359 196.92 18.34
tp @s[scores={cutSceneTimer=469}] 758.6133 41.22878 210.4223 196.92 18.34
tp @s[scores={cutSceneTimer=470}] 758.6175 41.22406 210.4087 196.92 18.34
tp @s[scores={cutSceneTimer=471}] 758.6216 41.21934 210.3951 196.92 18.34
tp @s[scores={cutSceneTimer=472}] 758.6258 41.21462 210.3814 196.92 18.34
tp @s[scores={cutSceneTimer=473}] 758.6299 41.2099 210.3678 196.92 18.34
tp @s[scores={cutSceneTimer=474}] 758.6341 41.20518 210.3542 196.92 18.34
tp @s[scores={cutSceneTimer=475}] 758.6382 41.20047 210.3406 196.92 18.34
tp @s[scores={cutSceneTimer=476}] 758.6424 41.19575 210.3269 196.92 18.34
tp @s[scores={cutSceneTimer=477}] 758.6465 41.19103 210.3133 196.92 18.34
tp @s[scores={cutSceneTimer=478}] 758.6507 41.18631 210.2997 196.92 18.34
tp @s[scores={cutSceneTimer=479}] 758.6548 41.18159 210.2861 196.92 18.34
tp @s[scores={cutSceneTimer=480}] 758.659 41.17687 210.2724 196.92 18.34
tp @s[scores={cutSceneTimer=481}] 758.6631 41.17215 210.2588 196.92 18.34
tp @s[scores={cutSceneTimer=482}] 758.6673 41.16743 210.2452 196.92 18.34
tp @s[scores={cutSceneTimer=483}] 758.6714 41.16272 210.2316 196.92 18.34
tp @s[scores={cutSceneTimer=484}] 758.6756 41.158 210.2179 196.92 18.34
tp @s[scores={cutSceneTimer=485}] 758.6797 41.15328 210.2043 196.92 18.34
tp @s[scores={cutSceneTimer=486}] 758.6839 41.14856 210.1907 196.92 18.34
tp @s[scores={cutSceneTimer=487}] 758.688 41.14384 210.177 196.92 18.34
tp @s[scores={cutSceneTimer=488}] 758.6922 41.13912 210.1634 196.92 18.34
tp @s[scores={cutSceneTimer=489}] 758.6964 41.1344 210.1498 196.92 18.34
tp @s[scores={cutSceneTimer=490}] 758.7005 41.12968 210.1362 196.92 18.34
tp @s[scores={cutSceneTimer=491}] 758.7047 41.12497 210.1225 196.92 18.34
tp @s[scores={cutSceneTimer=492}] 758.7088 41.12025 210.1089 196.92 18.34
tp @s[scores={cutSceneTimer=493}] 758.713 41.11553 210.0953 196.92 18.34
tp @s[scores={cutSceneTimer=494}] 758.7171 41.11081 210.0817 196.92 18.34
tp @s[scores={cutSceneTimer=495}] 758.7213 41.10609 210.068 196.92 18.34
tp @s[scores={cutSceneTimer=496}] 758.7254 41.10137 210.0544 196.92 18.34
tp @s[scores={cutSceneTimer=497}] 758.7296 41.09665 210.0408 196.92 18.34
tp @s[scores={cutSceneTimer=498}] 758.7337 41.09193 210.0272 196.92 18.34
tp @s[scores={cutSceneTimer=499}] 758.7379 41.08722 210.0135 196.92 18.34
tp @s[scores={cutSceneTimer=500}] 758.742 41.0825 209.9999 196.92 18.34
tp @s[scores={cutSceneTimer=501}] 758.7462 41.07778 209.9863 196.92 18.34
tp @s[scores={cutSceneTimer=502}] 758.7503 41.07306 209.9727 196.92 18.34
tp @s[scores={cutSceneTimer=503}] 758.7545 41.06834 209.959 196.92 18.34
tp @s[scores={cutSceneTimer=504}] 758.7586 41.06362 209.9454 196.92 18.34
tp @s[scores={cutSceneTimer=505}] 758.7628 41.0589 209.9318 196.92 18.34
tp @s[scores={cutSceneTimer=506}] 758.7669 41.05418 209.9182 196.92 18.34
tp @s[scores={cutSceneTimer=507}] 758.7711 41.04947 209.9045 196.92 18.34
tp @s[scores={cutSceneTimer=508}] 758.7752 41.04475 209.8909 196.92 18.34
tp @s[scores={cutSceneTimer=509}] 758.7794 41.04003 209.8773 196.92 18.34
tp @s[scores={cutSceneTimer=510}] 758.7835 41.03531 209.8636 196.92 18.34
tp @s[scores={cutSceneTimer=511}] 758.7877 41.03059 209.85 196.92 18.34
tp @s[scores={cutSceneTimer=512}] 758.7918 41.02587 209.8364 196.92 18.34
tp @s[scores={cutSceneTimer=513}] 758.796 41.02115 209.8228 196.92 18.34
tp @s[scores={cutSceneTimer=514}] 758.8001 41.01643 209.8091 196.92 18.34
tp @s[scores={cutSceneTimer=515}] 758.8043 41.01171 209.7955 196.92 18.34
tp @s[scores={cutSceneTimer=516}] 758.8084 41.007 209.7819 196.92 18.34
tp @s[scores={cutSceneTimer=517}] 758.8126 41.00228 209.7683 196.92 18.34
tp @s[scores={cutSceneTimer=518}] 758.8167 40.99756 209.7546 196.92 18.34
tp @s[scores={cutSceneTimer=519}] 758.8209 40.99284 209.741 196.92 18.34
tp @s[scores={cutSceneTimer=520}] 758.825 40.98812 209.7274 196.92 18.34
tp @s[scores={cutSceneTimer=521}] 758.8292 40.9834 209.7138 196.92 18.34
tp @s[scores={cutSceneTimer=522}] 758.8333 40.97868 209.7001 196.92 18.34
tp @s[scores={cutSceneTimer=523}] 758.8375 40.97396 209.6865 196.92 18.34
tp @s[scores={cutSceneTimer=524}] 758.8416 40.96925 209.6729 196.92 18.34
tp @s[scores={cutSceneTimer=525}] 758.8458 40.96453 209.6593 196.92 18.34
tp @s[scores={cutSceneTimer=526}] 758.8499 40.95981 209.6456 196.92 18.34
tp @s[scores={cutSceneTimer=527}] 758.8541 40.95509 209.632 196.92 18.34
tp @s[scores={cutSceneTimer=528}] 758.8582 40.95037 209.6184 196.92 18.34
tp @s[scores={cutSceneTimer=529}] 758.8624 40.94565 209.6048 196.92 18.34
tp @s[scores={cutSceneTimer=530}] 758.8665 40.94093 209.5911 196.92 18.34
tp @s[scores={cutSceneTimer=531}] 758.8707 40.93621 209.5775 196.92 18.34
tp @s[scores={cutSceneTimer=532}] 758.8748 40.9315 209.5639 196.92 18.34
tp @s[scores={cutSceneTimer=533}] 758.879 40.92678 209.5502 196.92 18.34
tp @s[scores={cutSceneTimer=534}] 758.8831 40.92206 209.5366 196.92 18.34
tp @s[scores={cutSceneTimer=535}] 758.8873 40.91734 209.523 196.92 18.34
tp @s[scores={cutSceneTimer=536}] 758.8914 40.91262 209.5094 196.92 18.34
tp @s[scores={cutSceneTimer=537}] 758.8956 40.9079 209.4957 196.92 18.34
tp @s[scores={cutSceneTimer=538}] 758.8997 40.90318 209.4821 196.92 18.34
tp @s[scores={cutSceneTimer=539}] 758.9039 40.89846 209.4685 196.92 18.34
tp @s[scores={cutSceneTimer=540}] 758.908 40.89375 209.4549 196.92 18.34
tp @s[scores={cutSceneTimer=541}] 758.9122 40.88903 209.4412 196.92 18.34
tp @s[scores={cutSceneTimer=542}] 758.9163 40.88431 209.4276 196.92 18.34
tp @s[scores={cutSceneTimer=543}] 758.9205 40.87959 209.414 196.92 18.34
tp @s[scores={cutSceneTimer=544}] 758.9246 40.87487 209.4004 196.92 18.34
tp @s[scores={cutSceneTimer=545}] 758.9288 40.87015 209.3867 196.92 18.34
tp @s[scores={cutSceneTimer=546}] 758.9329 40.86543 209.3731 196.92 18.34
tp @s[scores={cutSceneTimer=547}] 758.9371 40.86071 209.3595 196.92 18.34
tp @s[scores={cutSceneTimer=548}] 758.9412 40.856 209.3459 196.92 18.34
tp @s[scores={cutSceneTimer=549}] 758.9454 40.85128 209.3322 196.92 18.34
tp @s[scores={cutSceneTimer=550}] 758.9495 40.84656 209.3186 196.92 18.34
tp @s[scores={cutSceneTimer=551}] 758.9537 40.84184 209.305 196.92 18.34
tp @s[scores={cutSceneTimer=552}] 758.9578 40.83712 209.2914 196.92 18.34
tp @s[scores={cutSceneTimer=553}] 758.962 40.8324 209.2777 196.92 18.34
tp @s[scores={cutSceneTimer=554}] 758.9661 40.82768 209.2641 196.92 18.34
tp @s[scores={cutSceneTimer=555}] 758.9703 40.82296 209.2505 196.92 18.34
tp @s[scores={cutSceneTimer=556}] 758.9744 40.81824 209.2368 196.92 18.34
tp @s[scores={cutSceneTimer=557}] 758.9786 40.81353 209.2232 196.92 18.34
tp @s[scores={cutSceneTimer=558}] 758.9827 40.80881 209.2096 196.92 18.34
tp @s[scores={cutSceneTimer=559}] 758.9869 40.80409 209.196 196.92 18.34
tp @s[scores={cutSceneTimer=560}] 758.991 40.79937 209.1823 196.92 18.34
tp @s[scores={cutSceneTimer=561}] 758.9952 40.79465 209.1687 196.92 18.34
tp @s[scores={cutSceneTimer=562}] 758.9993 40.78993 209.1551 196.92 18.34
tp @s[scores={cutSceneTimer=563}] 759.0035 40.78521 209.1415 196.92 18.34
tp @s[scores={cutSceneTimer=564}] 759.0076 40.78049 209.1278 196.92 18.34
tp @s[scores={cutSceneTimer=565}] 759.0118 40.77578 209.1142 196.92 18.34
tp @s[scores={cutSceneTimer=566}] 759.0159 40.77106 209.1006 196.92 18.34
tp @s[scores={cutSceneTimer=567}] 759.0201 40.76634 209.087 196.92 18.34
tp @s[scores={cutSceneTimer=568}] 759.0242 40.76162 209.0733 196.92 18.34
tp @s[scores={cutSceneTimer=569}] 759.0284 40.7569 209.0597 196.92 18.34
tp @s[scores={cutSceneTimer=570}] 759.0325 40.75218 209.0461 196.92 18.34
tp @s[scores={cutSceneTimer=571}] 759.0367 40.74746 209.0325 196.92 18.34
tp @s[scores={cutSceneTimer=572}] 759.0408 40.74274 209.0188 196.92 18.34
tp @s[scores={cutSceneTimer=573}] 759.045 40.73803 209.0052 196.92 18.34
tp @s[scores={cutSceneTimer=574}] 759.0491 40.73331 208.9916 196.92 18.34
tp @s[scores={cutSceneTimer=575}] 759.0533 40.72859 208.978 196.92 18.34
tp @s[scores={cutSceneTimer=576}] 759.0574 40.72387 208.9643 196.92 18.34
tp @s[scores={cutSceneTimer=577}] 759.0616 40.71915 208.9507 196.92 18.34
tp @s[scores={cutSceneTimer=578}] 759.0657 40.71443 208.9371 196.92 18.34
tp @s[scores={cutSceneTimer=579}] 759.0699 40.70971 208.9234 196.92 18.34
tp @s[scores={cutSceneTimer=580}] 759.074 40.70499 208.9098 196.92 18.34
tp @s[scores={cutSceneTimer=581}] 759.0782 40.70028 208.8962 196.92 18.34
tp @s[scores={cutSceneTimer=582}] 759.0823 40.69556 208.8826 196.92 18.34
tp @s[scores={cutSceneTimer=583}] 759.0865 40.69084 208.8689 196.92 18.34
tp @s[scores={cutSceneTimer=584}] 759.0906 40.68612 208.8553 196.92 18.34
tp @s[scores={cutSceneTimer=585}] 759.0948 40.6814 208.8417 196.92 18.34
tp @s[scores={cutSceneTimer=586}] 759.0989 40.67668 208.8281 196.92 18.34
tp @s[scores={cutSceneTimer=587}] 759.1031 40.67196 208.8144 196.92 18.34
tp @s[scores={cutSceneTimer=588}] 759.1072 40.66724 208.8008 196.92 18.34
tp @s[scores={cutSceneTimer=589}] 759.1114 40.66253 208.7872 196.92 18.34
tp @s[scores={cutSceneTimer=590}] 759.1155 40.65781 208.7736 196.92 18.34
tp @s[scores={cutSceneTimer=591}] 759.1197 40.65309 208.7599 196.92 18.34
tp @s[scores={cutSceneTimer=592}] 759.1238 40.64837 208.7463 196.92 18.34
tp @s[scores={cutSceneTimer=593}] 759.128 40.64365 208.7327 196.92 18.34
tp @s[scores={cutSceneTimer=594}] 759.1321 40.63893 208.7191 196.92 18.34
tp @s[scores={cutSceneTimer=595}] 759.1363 40.63421 208.7054 196.92 18.34
tp @s[scores={cutSceneTimer=596}] 759.1404 40.62949 208.6918 196.92 18.34
tp @s[scores={cutSceneTimer=597}] 759.1446 40.62477 208.6782 196.92 18.34
tp @s[scores={cutSceneTimer=598}] 759.1487 40.62006 208.6646 196.92 18.34
tp @s[scores={cutSceneTimer=599}] 759.1529 40.61534 208.6509 196.92 18.34
tp @s[scores={cutSceneTimer=600}] 759.157 40.61062 208.6373 196.92 18.34
tp @s[scores={cutSceneTimer=601}] 759.1612 40.6059 208.6237 196.92 18.34
tp @s[scores={cutSceneTimer=602}] 759.1653 40.60118 208.61 196.92 18.34
tp @s[scores={cutSceneTimer=603}] 759.1695 40.59646 208.5964 196.92 18.34
tp @s[scores={cutSceneTimer=604}] 759.1736 40.59174 208.5828 196.92 18.34
tp @s[scores={cutSceneTimer=605}] 759.1778 40.58702 208.5692 196.92 18.34
tp @s[scores={cutSceneTimer=606}] 759.1819 40.58231 208.5555 196.92 18.34
tp @s[scores={cutSceneTimer=607}] 759.1861 40.57759 208.5419 196.92 18.34
tp @s[scores={cutSceneTimer=608}] 759.1902 40.57287 208.5283 196.92 18.34
tp @s[scores={cutSceneTimer=609}] 759.1944 40.56815 208.5147 196.92 18.34
tp @s[scores={cutSceneTimer=610}] 759.1985 40.56343 208.501 196.92 18.34
tp @s[scores={cutSceneTimer=611}] 759.2027 40.55871 208.4874 196.92 18.34
tp @s[scores={cutSceneTimer=612}] 759.2068 40.55399 208.4738 196.92 18.34
tp @s[scores={cutSceneTimer=613}] 759.211 40.54927 208.4602 196.92 18.34
tp @s[scores={cutSceneTimer=614}] 759.2151 40.54456 208.4465 196.92 18.34
tp @s[scores={cutSceneTimer=615}] 759.2193 40.53984 208.4329 196.92 18.34
tp @s[scores={cutSceneTimer=616}] 759.2234 40.53512 208.4193 196.92 18.34
tp @s[scores={cutSceneTimer=617}] 759.2276 40.5304 208.4057 196.92 18.34
tp @s[scores={cutSceneTimer=618}] 759.2318 40.52568 208.392 196.92 18.34
tp @s[scores={cutSceneTimer=619}] 759.2359 40.52096 208.3784 196.92 18.34
tp @s[scores={cutSceneTimer=620}] 759.2401 40.51624 208.3648 196.92 18.34
tp @s[scores={cutSceneTimer=621}] 759.2442 40.51152 208.3512 196.92 18.34
tp @s[scores={cutSceneTimer=622}] 759.2484 40.50681 208.3375 196.92 18.34
tp @s[scores={cutSceneTimer=623}] 759.2525 40.50209 208.3239 196.92 18.34
tp @s[scores={cutSceneTimer=624}] 759.2567 40.49737 208.3103 196.92 18.34
tp @s[scores={cutSceneTimer=625}] 759.2608 40.49265 208.2966 196.92 18.34
tp @s[scores={cutSceneTimer=626}] 759.265 40.48793 208.283 196.92 18.34
tp @s[scores={cutSceneTimer=627}] 759.2691 40.48321 208.2694 196.92 18.34
tp @s[scores={cutSceneTimer=628}] 759.2733 40.47849 208.2558 196.92 18.34
tp @s[scores={cutSceneTimer=629}] 759.2774 40.47377 208.2421 196.92 18.34
tp @s[scores={cutSceneTimer=630}] 759.2816 40.46906 208.2285 196.92 18.34
tp @s[scores={cutSceneTimer=631}] 759.2857 40.46434 208.2149 196.92 18.34
tp @s[scores={cutSceneTimer=632}] 759.2899 40.45962 208.2013 196.92 18.34
tp @s[scores={cutSceneTimer=633}] 759.294 40.4549 208.1876 196.92 18.34
tp @s[scores={cutSceneTimer=634}] 759.2982 40.45018 208.174 196.92 18.34
tp @s[scores={cutSceneTimer=635}] 759.3023 40.44546 208.1604 196.92 18.34
tp @s[scores={cutSceneTimer=636}] 759.3065 40.44074 208.1468 196.92 18.34
tp @s[scores={cutSceneTimer=637}] 759.3106 40.43602 208.1331 196.92 18.34
tp @s[scores={cutSceneTimer=638}] 759.3148 40.4313 208.1195 196.92 18.34
tp @s[scores={cutSceneTimer=639}] 759.3189 40.42659 208.1059 196.92 18.34
tp @s[scores={cutSceneTimer=640}] 759.3231 40.42187 208.0923 196.92 18.34
tp @s[scores={cutSceneTimer=641}] 759.3272 40.41715 208.0786 196.92 18.34
tp @s[scores={cutSceneTimer=642}] 759.3314 40.41243 208.065 196.92 18.34
tp @s[scores={cutSceneTimer=643}] 759.3355 40.40771 208.0514 196.92 18.34
tp @s[scores={cutSceneTimer=644}] 759.3397 40.40299 208.0378 196.92 18.34
tp @s[scores={cutSceneTimer=645}] 759.3438 40.39827 208.0241 196.92 18.34
tp @s[scores={cutSceneTimer=646}] 759.348 40.39355 208.0105 196.92 18.34
tp @s[scores={cutSceneTimer=647}] 759.3521 40.38884 207.9969 196.92 18.34
tp @s[scores={cutSceneTimer=648}] 759.3563 40.38412 207.9832 196.92 18.34
tp @s[scores={cutSceneTimer=649}] 759.3604 40.3794 207.9696 196.92 18.34
tp @s[scores={cutSceneTimer=650}] 759.3646 40.37468 207.956 196.92 18.34
tp @s[scores={cutSceneTimer=651}] 759.3687 40.36996 207.9424 196.92 18.34
tp @s[scores={cutSceneTimer=652}] 759.3729 40.36524 207.9287 196.92 18.34
tp @s[scores={cutSceneTimer=653}] 759.377 40.36052 207.9151 196.92 18.34
tp @s[scores={cutSceneTimer=654}] 759.3812 40.3558 207.9015 196.92 18.34
tp @s[scores={cutSceneTimer=655}] 759.3853 40.35109 207.8879 196.92 18.34
tp @s[scores={cutSceneTimer=656}] 759.3895 40.34637 207.8742 196.92 18.34
tp @s[scores={cutSceneTimer=657}] 759.3936 40.34165 207.8606 196.92 18.34
tp @s[scores={cutSceneTimer=658}] 759.3978 40.33693 207.847 196.92 18.34
tp @s[scores={cutSceneTimer=659}] 759.4019 40.33221 207.8334 196.92 18.34
tp @s[scores={cutSceneTimer=660}] 759.4061 40.32749 207.8197 196.92 18.34
tp @s[scores={cutSceneTimer=661}] 759.4102 40.32277 207.8061 196.92 18.34
tp @s[scores={cutSceneTimer=662}] 759.4144 40.31805 207.7925 196.92 18.34
tp @s[scores={cutSceneTimer=663}] 759.4185 40.31334 207.7789 196.92 18.34
tp @s[scores={cutSceneTimer=664}] 759.4227 40.30862 207.7652 196.92 18.34
tp @s[scores={cutSceneTimer=665}] 759.4268 40.3039 207.7516 196.92 18.34
tp @s[scores={cutSceneTimer=666}] 759.431 40.29918 207.738 196.92 18.34
tp @s[scores={cutSceneTimer=667}] 759.4351 40.29446 207.7243 196.92 18.34
tp @s[scores={cutSceneTimer=668}] 759.4393 40.28974 207.7107 196.92 18.34
tp @s[scores={cutSceneTimer=669}] 759.4434 40.28502 207.6971 196.92 18.34
tp @s[scores={cutSceneTimer=670}] 759.4476 40.2803 207.6835 196.92 18.34
execute as @s[scores={cutSceneTimer=650}] as @s run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=620},tag=cutsceneLeader] run tag @e[tag=snapeClassroomFpEngine,limit=1,sort=nearest] remove cutsceneStop

execute as @s[scores={cutSceneTimer=670}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=671}] 762.8305 36.1097 199.5476 191.96 6.785
tp @s[scores={cutSceneTimer=672}] 762.831 36.10941 199.5452 191.96 6.75
tp @s[scores={cutSceneTimer=673}] 762.8315 36.10912 199.5427 191.96 6.715001
tp @s[scores={cutSceneTimer=674}] 762.832 36.10882 199.5403 191.96 6.680001
tp @s[scores={cutSceneTimer=675}] 762.8325 36.10853 199.5379 191.96 6.645001
tp @s[scores={cutSceneTimer=676}] 762.8329 36.10824 199.5354 191.96 6.610001
tp @s[scores={cutSceneTimer=677}] 762.8334 36.10796 199.533 191.96 6.575001
tp @s[scores={cutSceneTimer=678}] 762.8339 36.10767 199.5306 191.96 6.540001
tp @s[scores={cutSceneTimer=679}] 762.8344 36.10738 199.5282 191.96 6.505002
tp @s[scores={cutSceneTimer=680}] 762.8349 36.1071 199.5257 191.96 6.470002
tp @s[scores={cutSceneTimer=681}] 762.8354 36.10682 199.5233 191.96 6.435002
tp @s[scores={cutSceneTimer=682}] 762.8359 36.10654 199.5209 191.96 6.400002
tp @s[scores={cutSceneTimer=683}] 762.8364 36.10626 199.5185 191.96 6.365002
tp @s[scores={cutSceneTimer=684}] 762.8369 36.10598 199.516 191.96 6.330002
tp @s[scores={cutSceneTimer=685}] 762.8373 36.10571 199.5136 191.96 6.295002
tp @s[scores={cutSceneTimer=686}] 762.8378 36.10543 199.5112 191.96 6.260003
tp @s[scores={cutSceneTimer=687}] 762.8383 36.10516 199.5088 191.96 6.225003
tp @s[scores={cutSceneTimer=688}] 762.8388 36.10489 199.5063 191.96 6.190003
tp @s[scores={cutSceneTimer=689}] 762.8393 36.10462 199.5039 191.96 6.155003
tp @s[scores={cutSceneTimer=690}] 762.8398 36.10435 199.5015 191.96 6.120003
tp @s[scores={cutSceneTimer=691}] 762.8403 36.10409 199.4991 191.96 6.085003
tp @s[scores={cutSceneTimer=692}] 762.8408 36.10382 199.4966 191.96 6.050004
tp @s[scores={cutSceneTimer=693}] 762.8412 36.10356 199.4942 191.96 6.015004
tp @s[scores={cutSceneTimer=694}] 762.8417 36.1033 199.4918 191.96 5.980004
tp @s[scores={cutSceneTimer=695}] 762.8422 36.10304 199.4893 191.96 5.945004
tp @s[scores={cutSceneTimer=696}] 762.8427 36.10278 199.4869 191.96 5.910004
tp @s[scores={cutSceneTimer=697}] 762.8432 36.10252 199.4845 191.96 5.875004
tp @s[scores={cutSceneTimer=698}] 762.8437 36.10227 199.4821 191.96 5.840004
tp @s[scores={cutSceneTimer=699}] 762.8442 36.10201 199.4796 191.96 5.805005
tp @s[scores={cutSceneTimer=700}] 762.8447 36.10176 199.4772 191.96 5.770005
tp @s[scores={cutSceneTimer=701}] 762.8452 36.10151 199.4748 191.96 5.735005
tp @s[scores={cutSceneTimer=702}] 762.8456 36.10126 199.4724 191.96 5.700005
tp @s[scores={cutSceneTimer=703}] 762.8461 36.10101 199.4699 191.96 5.665005
tp @s[scores={cutSceneTimer=704}] 762.8466 36.10077 199.4675 191.96 5.630005
tp @s[scores={cutSceneTimer=705}] 762.8471 36.10052 199.4651 191.96 5.595006
tp @s[scores={cutSceneTimer=706}] 762.8476 36.10028 199.4626 191.96 5.560006
tp @s[scores={cutSceneTimer=707}] 762.8481 36.10004 199.4602 191.96 5.525006
tp @s[scores={cutSceneTimer=708}] 762.8486 36.0998 199.4577 191.96 5.490006
tp @s[scores={cutSceneTimer=709}] 762.8491 36.09956 199.4553 191.96 5.455006
tp @s[scores={cutSceneTimer=710}] 762.8495 36.09932 199.4529 191.96 5.420006
tp @s[scores={cutSceneTimer=711}] 762.85 36.09908 199.4504 191.96 5.385006
tp @s[scores={cutSceneTimer=712}] 762.8505 36.09885 199.448 191.96 5.350007
tp @s[scores={cutSceneTimer=713}] 762.851 36.09861 199.4455 191.96 5.315007
tp @s[scores={cutSceneTimer=714}] 762.8515 36.09838 199.4431 191.96 5.280007
tp @s[scores={cutSceneTimer=715}] 762.852 36.09815 199.4406 191.96 5.245007
tp @s[scores={cutSceneTimer=716}] 762.8525 36.09792 199.4382 191.96 5.210007
tp @s[scores={cutSceneTimer=717}] 762.853 36.09769 199.4358 191.96 5.175007
tp @s[scores={cutSceneTimer=718}] 762.8535 36.09747 199.4333 191.96 5.140007
tp @s[scores={cutSceneTimer=719}] 762.8539 36.09724 199.4309 191.96 5.105008
tp @s[scores={cutSceneTimer=720}] 762.8544 36.09702 199.4284 191.96 5.070008
tp @s[scores={cutSceneTimer=721}] 762.8549 36.0968 199.426 191.96 5.035008
tp @s[scores={cutSceneTimer=722}] 762.8554 36.09658 199.4236 191.96 5.000008
tp @s[scores={cutSceneTimer=723}] 762.8559 36.09636 199.4211 191.96 4.965008
tp @s[scores={cutSceneTimer=724}] 762.8564 36.09615 199.4187 191.96 4.930008
tp @s[scores={cutSceneTimer=725}] 762.8569 36.09593 199.4162 191.96 4.895009
tp @s[scores={cutSceneTimer=726}] 762.8574 36.09572 199.4138 191.96 4.860009
tp @s[scores={cutSceneTimer=727}] 762.8578 36.0955 199.4113 191.96 4.825009
tp @s[scores={cutSceneTimer=728}] 762.8583 36.09529 199.4089 191.96 4.790009
tp @s[scores={cutSceneTimer=729}] 762.8588 36.09509 199.4065 191.96 4.755009
tp @s[scores={cutSceneTimer=730}] 762.8593 36.09488 199.404 191.96 4.720009
tp @s[scores={cutSceneTimer=731}] 762.8598 36.09467 199.4016 191.96 4.685009
tp @s[scores={cutSceneTimer=732}] 762.8603 36.09447 199.3991 191.96 4.65001
tp @s[scores={cutSceneTimer=733}] 762.8608 36.09426 199.3967 191.96 4.61501
tp @s[scores={cutSceneTimer=734}] 762.8613 36.09406 199.3943 191.96 4.58001
tp @s[scores={cutSceneTimer=735}] 762.8618 36.09386 199.3918 191.96 4.54501
tp @s[scores={cutSceneTimer=736}] 762.8622 36.09367 199.3894 191.96 4.51001
tp @s[scores={cutSceneTimer=737}] 762.8627 36.09347 199.3869 191.96 4.47501
tp @s[scores={cutSceneTimer=738}] 762.8632 36.09327 199.3845 191.96 4.440011
tp @s[scores={cutSceneTimer=739}] 762.8637 36.09308 199.382 191.96 4.405011
tp @s[scores={cutSceneTimer=740}] 762.8642 36.09289 199.3796 191.96 4.370011
tp @s[scores={cutSceneTimer=741}] 762.8647 36.0927 199.3772 191.96 4.335011
tp @s[scores={cutSceneTimer=742}] 762.8652 36.09251 199.3747 191.96 4.300011
tp @s[scores={cutSceneTimer=743}] 762.8657 36.09232 199.3723 191.96 4.265011
tp @s[scores={cutSceneTimer=744}] 762.8661 36.09213 199.3698 191.96 4.230011
tp @s[scores={cutSceneTimer=745}] 762.8666 36.09195 199.3674 191.96 4.195012
tp @s[scores={cutSceneTimer=746}] 762.8671 36.09177 199.365 191.96 4.160012
tp @s[scores={cutSceneTimer=747}] 762.8676 36.09158 199.3625 191.96 4.125012
tp @s[scores={cutSceneTimer=748}] 762.8681 36.0914 199.3601 191.96 4.090012
tp @s[scores={cutSceneTimer=749}] 762.8686 36.09122 199.3576 191.96 4.055012
tp @s[scores={cutSceneTimer=750}] 762.8691 36.09105 199.3552 191.96 4.020012
tp @s[scores={cutSceneTimer=751}] 762.8696 36.09087 199.3528 191.96 3.985012
tp @s[scores={cutSceneTimer=752}] 762.8701 36.0907 199.3503 191.96 3.950012
tp @s[scores={cutSceneTimer=753}] 762.8705 36.09053 199.3479 191.96 3.915012
tp @s[scores={cutSceneTimer=754}] 762.871 36.09035 199.3454 191.96 3.880012
tp @s[scores={cutSceneTimer=755}] 762.8715 36.09019 199.343 191.96 3.845012
tp @s[scores={cutSceneTimer=756}] 762.872 36.09002 199.3405 191.96 3.810012
tp @s[scores={cutSceneTimer=757}] 762.8725 36.08985 199.3381 191.96 3.775012
tp @s[scores={cutSceneTimer=758}] 762.873 36.08969 199.3357 191.96 3.740012
tp @s[scores={cutSceneTimer=759}] 762.8735 36.08952 199.3332 191.96 3.705012
tp @s[scores={cutSceneTimer=760}] 762.874 36.08936 199.3308 191.96 3.670012
tp @s[scores={cutSceneTimer=761}] 762.8745 36.0892 199.3283 191.96 3.635011
tp @s[scores={cutSceneTimer=762}] 762.8749 36.08904 199.3259 191.96 3.600011
tp @s[scores={cutSceneTimer=763}] 762.8754 36.08889 199.3235 191.96 3.565011
tp @s[scores={cutSceneTimer=764}] 762.8759 36.08873 199.321 191.96 3.530011
tp @s[scores={cutSceneTimer=765}] 762.8764 36.08858 199.3186 191.96 3.495011
tp @s[scores={cutSceneTimer=766}] 762.8769 36.08842 199.3161 191.96 3.460011
tp @s[scores={cutSceneTimer=767}] 762.8774 36.08827 199.3137 191.96 3.425011
tp @s[scores={cutSceneTimer=768}] 762.8779 36.08812 199.3112 191.96 3.390011
tp @s[scores={cutSceneTimer=769}] 762.8784 36.08797 199.3088 191.96 3.355011
tp @s[scores={cutSceneTimer=770}] 762.8788 36.08783 199.3064 191.96 3.320011
tp @s[scores={cutSceneTimer=771}] 762.8793 36.08768 199.3039 191.96 3.285011
tp @s[scores={cutSceneTimer=772}] 762.8798 36.08754 199.3015 191.96 3.25001
tp @s[scores={cutSceneTimer=773}] 762.8803 36.0874 199.299 191.96 3.21501
tp @s[scores={cutSceneTimer=774}] 762.8808 36.08726 199.2966 191.96 3.18001
tp @s[scores={cutSceneTimer=775}] 762.8813 36.08712 199.2942 191.96 3.14501
tp @s[scores={cutSceneTimer=776}] 762.8818 36.08698 199.2917 191.96 3.11001
tp @s[scores={cutSceneTimer=777}] 762.8823 36.08685 199.2893 191.96 3.07501
tp @s[scores={cutSceneTimer=778}] 762.8828 36.08671 199.2868 191.96 3.04001
tp @s[scores={cutSceneTimer=779}] 762.8832 36.08658 199.2844 191.96 3.00501
tp @s[scores={cutSceneTimer=780}] 762.8837 36.08645 199.282 191.96 2.97001
tp @s[scores={cutSceneTimer=781}] 762.8842 36.08632 199.2795 191.96 2.93501
tp @s[scores={cutSceneTimer=782}] 762.8847 36.08619 199.2771 191.96 2.90001
tp @s[scores={cutSceneTimer=783}] 762.8852 36.08606 199.2746 191.96 2.86501
tp @s[scores={cutSceneTimer=784}] 762.8857 36.08594 199.2722 191.96 2.830009
tp @s[scores={cutSceneTimer=785}] 762.8862 36.08582 199.2697 191.96 2.795009
tp @s[scores={cutSceneTimer=786}] 762.8867 36.08569 199.2673 191.96 2.760009
tp @s[scores={cutSceneTimer=787}] 762.8871 36.08557 199.2649 191.96 2.725009
tp @s[scores={cutSceneTimer=788}] 762.8876 36.08545 199.2624 191.96 2.690009
tp @s[scores={cutSceneTimer=789}] 762.8881 36.08533 199.26 191.96 2.655009
tp @s[scores={cutSceneTimer=790}] 762.8886 36.08522 199.2575 191.96 2.620009
tp @s[scores={cutSceneTimer=791}] 762.8891 36.08511 199.2551 191.96 2.585009
tp @s[scores={cutSceneTimer=792}] 762.8896 36.08499 199.2527 191.96 2.550009
tp @s[scores={cutSceneTimer=793}] 762.8901 36.08488 199.2502 191.96 2.515009
tp @s[scores={cutSceneTimer=794}] 762.8906 36.08477 199.2478 191.96 2.480009
tp @s[scores={cutSceneTimer=795}] 762.8911 36.08466 199.2453 191.96 2.445009
tp @s[scores={cutSceneTimer=796}] 762.8915 36.08456 199.2429 191.96 2.410008
tp @s[scores={cutSceneTimer=797}] 762.892 36.08445 199.2404 191.96 2.375008
tp @s[scores={cutSceneTimer=798}] 762.8925 36.08435 199.238 191.96 2.340008
tp @s[scores={cutSceneTimer=799}] 762.893 36.08424 199.2356 191.96 2.305008
tp @s[scores={cutSceneTimer=800}] 762.8935 36.08414 199.2331 191.96 2.270008
execute as @s[scores={cutSceneTimer=780}] as @s run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=800}] run tag @s add fastFade
execute as @s[scores={cutSceneTimer=800}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=801}] 743.0198 37.68 205.902 348.46 40.81
tp @s[scores={cutSceneTimer=802}] 743.0296 37.68 205.904 348.57 40.81
tp @s[scores={cutSceneTimer=803}] 743.0394 37.68 205.906 348.68 40.81
tp @s[scores={cutSceneTimer=804}] 743.0493 37.68 205.908 348.7899 40.81
tp @s[scores={cutSceneTimer=805}] 743.0591 37.68 205.9099 348.8999 40.81
tp @s[scores={cutSceneTimer=806}] 743.0689 37.68 205.9118 349.0099 40.81
tp @s[scores={cutSceneTimer=807}] 743.0787 37.68 205.9137 349.1199 40.81
tp @s[scores={cutSceneTimer=808}] 743.0886 37.68 205.9156 349.2299 40.81
tp @s[scores={cutSceneTimer=809}] 743.0984 37.68 205.9175 349.3399 40.81
tp @s[scores={cutSceneTimer=810}] 743.1082 37.68 205.9193 349.4499 40.81
tp @s[scores={cutSceneTimer=811}] 743.118 37.68 205.9212 349.5598 40.81
tp @s[scores={cutSceneTimer=812}] 743.1279 37.68 205.923 349.6698 40.81
tp @s[scores={cutSceneTimer=813}] 743.1377 37.68 205.9248 349.7798 40.81
tp @s[scores={cutSceneTimer=814}] 743.1475 37.68 205.9265 349.8898 40.81
tp @s[scores={cutSceneTimer=815}] 743.1573 37.68 205.9283 349.9998 40.81
tp @s[scores={cutSceneTimer=816}] 743.1672 37.68 205.93 350.1098 40.81
tp @s[scores={cutSceneTimer=817}] 743.177 37.68 205.9318 350.2198 40.81
tp @s[scores={cutSceneTimer=818}] 743.1868 37.68 205.9335 350.3297 40.81
tp @s[scores={cutSceneTimer=819}] 743.1967 37.68 205.9351 350.4397 40.81
tp @s[scores={cutSceneTimer=820}] 743.2066 37.68 205.9368 350.5497 40.81
tp @s[scores={cutSceneTimer=821}] 743.2165 37.68 205.9384 350.6597 40.81
tp @s[scores={cutSceneTimer=822}] 743.2264 37.68 205.9401 350.7697 40.81
tp @s[scores={cutSceneTimer=823}] 743.2363 37.68 205.9417 350.8797 40.81
tp @s[scores={cutSceneTimer=824}] 743.2462 37.68 205.9433 350.9897 40.81
tp @s[scores={cutSceneTimer=825}] 743.256 37.68 205.9448 351.0996 40.81
tp @s[scores={cutSceneTimer=826}] 743.2659 37.68 205.9464 351.2096 40.81
tp @s[scores={cutSceneTimer=827}] 743.2758 37.68 205.9479 351.3196 40.81
tp @s[scores={cutSceneTimer=828}] 743.2857 37.68 205.9494 351.4296 40.81
tp @s[scores={cutSceneTimer=829}] 743.2956 37.68 205.9509 351.5396 40.81
tp @s[scores={cutSceneTimer=830}] 743.3055 37.68 205.9524 351.6496 40.81
tp @s[scores={cutSceneTimer=831}] 743.3154 37.68 205.9538 351.7596 40.81
tp @s[scores={cutSceneTimer=832}] 743.3253 37.68 205.9552 351.8695 40.81
tp @s[scores={cutSceneTimer=833}] 743.3351 37.68 205.9567 351.9795 40.81
tp @s[scores={cutSceneTimer=834}] 743.345 37.68 205.9581 352.0895 40.81
tp @s[scores={cutSceneTimer=835}] 743.3549 37.68 205.9594 352.1995 40.81
tp @s[scores={cutSceneTimer=836}] 743.3648 37.68 205.9608 352.3095 40.81
tp @s[scores={cutSceneTimer=837}] 743.3747 37.68 205.9621 352.4195 40.81
tp @s[scores={cutSceneTimer=838}] 743.3846 37.68 205.9634 352.5294 40.81
tp @s[scores={cutSceneTimer=839}] 743.3945 37.68 205.9647 352.6394 40.81
tp @s[scores={cutSceneTimer=840}] 743.4044 37.68 205.966 352.7494 40.81
tp @s[scores={cutSceneTimer=841}] 743.4143 37.68 205.9673 352.8594 40.81
tp @s[scores={cutSceneTimer=842}] 743.4243 37.68 205.9685 352.9694 40.81
tp @s[scores={cutSceneTimer=843}] 743.4342 37.68 205.9697 353.0794 40.81
tp @s[scores={cutSceneTimer=844}] 743.4442 37.68 205.9709 353.1894 40.81
tp @s[scores={cutSceneTimer=845}] 743.4541 37.68 205.9721 353.2993 40.81
tp @s[scores={cutSceneTimer=846}] 743.4641 37.68 205.9733 353.4093 40.81
tp @s[scores={cutSceneTimer=847}] 743.474 37.68 205.9744 353.5193 40.81
tp @s[scores={cutSceneTimer=848}] 743.4839 37.68 205.9756 353.6293 40.81
tp @s[scores={cutSceneTimer=849}] 743.4939 37.68 205.9767 353.7393 40.81
tp @s[scores={cutSceneTimer=850}] 743.5038 37.68 205.9778 353.8493 40.81
execute as @s[scores={cutSceneTimer=840}] as @s run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=850}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=851}] 741.52 43.89454 208.5511 0.1 27.02
tp @s[scores={cutSceneTimer=852}] 741.52 43.89909 208.5422 0.1 27.02
tp @s[scores={cutSceneTimer=853}] 741.52 43.90363 208.5333 0.1 27.02
tp @s[scores={cutSceneTimer=854}] 741.52 43.90817 208.5244 0.1 27.02
tp @s[scores={cutSceneTimer=855}] 741.52 43.91272 208.5154 0.1 27.02
tp @s[scores={cutSceneTimer=856}] 741.52 43.91726 208.5065 0.1 27.02
tp @s[scores={cutSceneTimer=857}] 741.52 43.9218 208.4976 0.1 27.02
tp @s[scores={cutSceneTimer=858}] 741.52 43.92635 208.4887 0.1 27.02
tp @s[scores={cutSceneTimer=859}] 741.52 43.93089 208.4798 0.1 27.02
tp @s[scores={cutSceneTimer=860}] 741.52 43.93543 208.4709 0.1 27.02
tp @s[scores={cutSceneTimer=861}] 741.52 43.93998 208.462 0.1 27.02
tp @s[scores={cutSceneTimer=862}] 741.52 43.94452 208.4531 0.1 27.02
tp @s[scores={cutSceneTimer=863}] 741.52 43.94906 208.4442 0.1 27.02
tp @s[scores={cutSceneTimer=864}] 741.52 43.95361 208.4352 0.1 27.02
tp @s[scores={cutSceneTimer=865}] 741.52 43.95815 208.4263 0.1 27.02
tp @s[scores={cutSceneTimer=866}] 741.52 43.96269 208.4174 0.1 27.02
tp @s[scores={cutSceneTimer=867}] 741.52 43.96724 208.4085 0.1 27.02
tp @s[scores={cutSceneTimer=868}] 741.52 43.97178 208.3996 0.1 27.02
tp @s[scores={cutSceneTimer=869}] 741.52 43.97632 208.3907 0.1 27.02
tp @s[scores={cutSceneTimer=870}] 741.52 43.98087 208.3818 0.1 27.02
tp @s[scores={cutSceneTimer=871}] 741.52 43.98541 208.3729 0.1 27.02
tp @s[scores={cutSceneTimer=872}] 741.52 43.98995 208.364 0.1 27.02
tp @s[scores={cutSceneTimer=873}] 741.52 43.9945 208.355 0.1 27.02
tp @s[scores={cutSceneTimer=874}] 741.52 43.99904 208.3461 0.1 27.02
tp @s[scores={cutSceneTimer=875}] 741.52 44.00358 208.3372 0.1 27.02
tp @s[scores={cutSceneTimer=876}] 741.52 44.00813 208.3283 0.1 27.02
tp @s[scores={cutSceneTimer=877}] 741.52 44.01267 208.3194 0.1 27.02
tp @s[scores={cutSceneTimer=878}] 741.52 44.01721 208.3105 0.1 27.02
tp @s[scores={cutSceneTimer=879}] 741.52 44.02176 208.3016 0.1 27.02
tp @s[scores={cutSceneTimer=880}] 741.52 44.0263 208.2927 0.1 27.02
tp @s[scores={cutSceneTimer=881}] 741.52 44.03084 208.2838 0.1 27.02
tp @s[scores={cutSceneTimer=882}] 741.52 44.03539 208.2748 0.1 27.02
tp @s[scores={cutSceneTimer=883}] 741.52 44.03993 208.2659 0.1 27.02
tp @s[scores={cutSceneTimer=884}] 741.52 44.04447 208.257 0.1 27.02
tp @s[scores={cutSceneTimer=885}] 741.52 44.04902 208.2481 0.1 27.02
tp @s[scores={cutSceneTimer=886}] 741.52 44.05356 208.2392 0.1 27.02
tp @s[scores={cutSceneTimer=887}] 741.52 44.0581 208.2303 0.1 27.02
tp @s[scores={cutSceneTimer=888}] 741.52 44.06264 208.2214 0.1 27.02
tp @s[scores={cutSceneTimer=889}] 741.52 44.06719 208.2125 0.1 27.02
tp @s[scores={cutSceneTimer=890}] 741.52 44.07173 208.2036 0.1 27.02
tp @s[scores={cutSceneTimer=891}] 741.52 44.07627 208.1946 0.1 27.02
tp @s[scores={cutSceneTimer=892}] 741.52 44.08082 208.1857 0.1 27.02
tp @s[scores={cutSceneTimer=893}] 741.52 44.08536 208.1768 0.1 27.02
tp @s[scores={cutSceneTimer=894}] 741.52 44.0899 208.1679 0.1 27.02
tp @s[scores={cutSceneTimer=895}] 741.52 44.09445 208.159 0.1 27.02
tp @s[scores={cutSceneTimer=896}] 741.52 44.09899 208.1501 0.1 27.02
tp @s[scores={cutSceneTimer=897}] 741.52 44.10353 208.1412 0.1 27.02
tp @s[scores={cutSceneTimer=898}] 741.52 44.10808 208.1323 0.1 27.02
tp @s[scores={cutSceneTimer=899}] 741.52 44.11262 208.1234 0.1 27.02
tp @s[scores={cutSceneTimer=900}] 741.52 44.11716 208.1144 0.1 27.02
execute as @s[scores={cutSceneTimer=890}] as @s run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=901}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=901}] 777.1536 37.44644 135.7386 -22.1 20.88
tp @s[scores={cutSceneTimer=902}] 777.1571 37.44287 135.7473 -22.1 20.88
tp @s[scores={cutSceneTimer=903}] 777.1606 37.43931 135.756 -22.1 20.88
tp @s[scores={cutSceneTimer=904}] 777.1642 37.43575 135.7646 -22.1 20.88
tp @s[scores={cutSceneTimer=905}] 777.1677 37.43219 135.7733 -22.1 20.88
tp @s[scores={cutSceneTimer=906}] 777.1713 37.42862 135.7819 -22.1 20.88
tp @s[scores={cutSceneTimer=907}] 777.1748 37.42506 135.7906 -22.1 20.88
tp @s[scores={cutSceneTimer=908}] 777.1783 37.4215 135.7992 -22.1 20.88
tp @s[scores={cutSceneTimer=909}] 777.1819 37.41793 135.8079 -22.1 20.88
tp @s[scores={cutSceneTimer=910}] 777.1854 37.41437 135.8165 -22.1 20.88
tp @s[scores={cutSceneTimer=911}] 777.189 37.41081 135.8252 -22.1 20.88
tp @s[scores={cutSceneTimer=912}] 777.1925 37.40725 135.8338 -22.1 20.88
tp @s[scores={cutSceneTimer=913}] 777.196 37.40368 135.8425 -22.1 20.88
tp @s[scores={cutSceneTimer=914}] 777.1996 37.40012 135.8511 -22.1 20.88
tp @s[scores={cutSceneTimer=915}] 777.2031 37.39656 135.8598 -22.1 20.88
tp @s[scores={cutSceneTimer=916}] 777.2067 37.39299 135.8684 -22.1 20.88
tp @s[scores={cutSceneTimer=917}] 777.2102 37.38943 135.8771 -22.1 20.88
tp @s[scores={cutSceneTimer=918}] 777.2137 37.38587 135.8857 -22.1 20.88
tp @s[scores={cutSceneTimer=919}] 777.2173 37.38231 135.8944 -22.1 20.88
tp @s[scores={cutSceneTimer=920}] 777.2208 37.37874 135.903 -22.1 20.88
tp @s[scores={cutSceneTimer=921}] 777.2244 37.37518 135.9117 -22.1 20.88
tp @s[scores={cutSceneTimer=922}] 777.2279 37.37162 135.9203 -22.1 20.88
tp @s[scores={cutSceneTimer=923}] 777.2314 37.36805 135.929 -22.1 20.88
tp @s[scores={cutSceneTimer=924}] 777.235 37.36449 135.9376 -22.1 20.88
tp @s[scores={cutSceneTimer=925}] 777.2385 37.36093 135.9463 -22.1 20.88
tp @s[scores={cutSceneTimer=926}] 777.2421 37.35736 135.9549 -22.1 20.88
tp @s[scores={cutSceneTimer=927}] 777.2456 37.3538 135.9636 -22.1 20.88
tp @s[scores={cutSceneTimer=928}] 777.2491 37.35024 135.9722 -22.1 20.88
tp @s[scores={cutSceneTimer=929}] 777.2527 37.34668 135.9809 -22.1 20.88
tp @s[scores={cutSceneTimer=930}] 777.2562 37.34311 135.9895 -22.1 20.88
tp @s[scores={cutSceneTimer=931}] 777.2598 37.33955 135.9982 -22.1 20.88
tp @s[scores={cutSceneTimer=932}] 777.2633 37.33599 136.0069 -22.1 20.88
tp @s[scores={cutSceneTimer=933}] 777.2668 37.33242 136.0155 -22.1 20.88
tp @s[scores={cutSceneTimer=934}] 777.2704 37.32886 136.0242 -22.1 20.88
tp @s[scores={cutSceneTimer=935}] 777.2739 37.3253 136.0328 -22.1 20.88
tp @s[scores={cutSceneTimer=936}] 777.2775 37.32174 136.0415 -22.1 20.88
tp @s[scores={cutSceneTimer=937}] 777.281 37.31817 136.0501 -22.1 20.88
tp @s[scores={cutSceneTimer=938}] 777.2845 37.31461 136.0588 -22.1 20.88
tp @s[scores={cutSceneTimer=939}] 777.2881 37.31105 136.0674 -22.1 20.88
tp @s[scores={cutSceneTimer=940}] 777.2916 37.30748 136.0761 -22.1 20.88
tp @s[scores={cutSceneTimer=941}] 777.2952 37.30392 136.0847 -22.1 20.88
tp @s[scores={cutSceneTimer=942}] 777.2987 37.30036 136.0934 -22.1 20.88
tp @s[scores={cutSceneTimer=943}] 777.3022 37.29679 136.102 -22.1 20.88
tp @s[scores={cutSceneTimer=944}] 777.3058 37.29323 136.1107 -22.1 20.88
tp @s[scores={cutSceneTimer=945}] 777.3093 37.28967 136.1193 -22.1 20.88
tp @s[scores={cutSceneTimer=946}] 777.3129 37.28611 136.128 -22.1 20.88
tp @s[scores={cutSceneTimer=947}] 777.3164 37.28254 136.1366 -22.1 20.88
tp @s[scores={cutSceneTimer=948}] 777.3199 37.27898 136.1453 -22.1 20.88
tp @s[scores={cutSceneTimer=949}] 777.3235 37.27542 136.1539 -22.1 20.88
tp @s[scores={cutSceneTimer=950}] 777.327 37.27185 136.1626 -22.1 20.88
execute as @s[scores={cutSceneTimer=940}] as @s run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=951}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=951}] 760.2601 36.42105 188.6504 267.87 6.05
tp @s[scores={cutSceneTimer=952}] 760.2501 36.4221 188.6507 267.87 6.05
tp @s[scores={cutSceneTimer=953}] 760.2402 36.42316 188.6511 267.87 6.05
tp @s[scores={cutSceneTimer=954}] 760.2302 36.42421 188.6515 267.87 6.05
tp @s[scores={cutSceneTimer=955}] 760.2203 36.42526 188.6518 267.87 6.05
tp @s[scores={cutSceneTimer=956}] 760.2103 36.42632 188.6522 267.87 6.05
tp @s[scores={cutSceneTimer=957}] 760.2004 36.42737 188.6526 267.87 6.05
tp @s[scores={cutSceneTimer=958}] 760.1904 36.42842 188.6529 267.87 6.05
tp @s[scores={cutSceneTimer=959}] 760.1805 36.42947 188.6533 267.87 6.05
tp @s[scores={cutSceneTimer=960}] 760.1705 36.43053 188.6537 267.87 6.05
tp @s[scores={cutSceneTimer=961}] 760.1606 36.43158 188.654 267.87 6.05
tp @s[scores={cutSceneTimer=962}] 760.1506 36.43263 188.6544 267.87 6.05
tp @s[scores={cutSceneTimer=963}] 760.1407 36.43369 188.6548 267.87 6.05
tp @s[scores={cutSceneTimer=964}] 760.1307 36.43474 188.6551 267.87 6.05
tp @s[scores={cutSceneTimer=965}] 760.1208 36.43579 188.6555 267.87 6.05
tp @s[scores={cutSceneTimer=966}] 760.1108 36.43684 188.6559 267.87 6.05
tp @s[scores={cutSceneTimer=967}] 760.1009 36.4379 188.6562 267.87 6.05
tp @s[scores={cutSceneTimer=968}] 760.0909 36.43895 188.6566 267.87 6.05
tp @s[scores={cutSceneTimer=969}] 760.081 36.44 188.657 267.87 6.05
tp @s[scores={cutSceneTimer=970}] 760.071 36.44106 188.6573 267.87 6.05
tp @s[scores={cutSceneTimer=971}] 760.0611 36.44211 188.6577 267.87 6.05
tp @s[scores={cutSceneTimer=972}] 760.0511 36.44316 188.6581 267.87 6.05
tp @s[scores={cutSceneTimer=973}] 760.0412 36.44421 188.6584 267.87 6.05
tp @s[scores={cutSceneTimer=974}] 760.0313 36.44527 188.6588 267.87 6.05
tp @s[scores={cutSceneTimer=975}] 760.0213 36.44632 188.6591 267.87 6.05
tp @s[scores={cutSceneTimer=976}] 760.0114 36.44737 188.6595 267.87 6.05
tp @s[scores={cutSceneTimer=977}] 760.0014 36.44843 188.6599 267.87 6.05
tp @s[scores={cutSceneTimer=978}] 759.9915 36.44948 188.6602 267.87 6.05
tp @s[scores={cutSceneTimer=979}] 759.9815 36.45053 188.6606 267.87 6.05
tp @s[scores={cutSceneTimer=980}] 759.9716 36.45158 188.661 267.87 6.05
tp @s[scores={cutSceneTimer=981}] 759.9616 36.45264 188.6613 267.87 6.05
tp @s[scores={cutSceneTimer=982}] 759.9517 36.45369 188.6617 267.87 6.05
tp @s[scores={cutSceneTimer=983}] 759.9417 36.45474 188.6621 267.87 6.05
tp @s[scores={cutSceneTimer=984}] 759.9318 36.4558 188.6624 267.87 6.05
tp @s[scores={cutSceneTimer=985}] 759.9218 36.45685 188.6628 267.87 6.05
tp @s[scores={cutSceneTimer=986}] 759.9119 36.4579 188.6632 267.87 6.05
tp @s[scores={cutSceneTimer=987}] 759.9019 36.45895 188.6635 267.87 6.05
tp @s[scores={cutSceneTimer=988}] 759.892 36.46001 188.6639 267.87 6.05
tp @s[scores={cutSceneTimer=989}] 759.882 36.46106 188.6643 267.87 6.05
tp @s[scores={cutSceneTimer=990}] 759.8721 36.46211 188.6646 267.87 6.05
tp @s[scores={cutSceneTimer=991}] 759.8621 36.46317 188.665 267.87 6.05
tp @s[scores={cutSceneTimer=992}] 759.8522 36.46422 188.6654 267.87 6.05
tp @s[scores={cutSceneTimer=993}] 759.8422 36.46527 188.6657 267.87 6.05
tp @s[scores={cutSceneTimer=994}] 759.8323 36.46632 188.6661 267.87 6.05
tp @s[scores={cutSceneTimer=995}] 759.8223 36.46738 188.6665 267.87 6.05
tp @s[scores={cutSceneTimer=996}] 759.8124 36.46843 188.6668 267.87 6.05
tp @s[scores={cutSceneTimer=997}] 759.8024 36.46948 188.6672 267.87 6.05
tp @s[scores={cutSceneTimer=998}] 759.7925 36.47054 188.6676 267.87 6.05
tp @s[scores={cutSceneTimer=999}] 759.7825 36.47159 188.6679 267.87 6.05
tp @s[scores={cutSceneTimer=1000}] 759.7726 36.47264 188.6683 267.87 6.05
tp @s[scores={cutSceneTimer=1001}] 759.7626 36.47369 188.6687 267.87 6.05
tp @s[scores={cutSceneTimer=1002}] 759.7527 36.47475 188.669 267.87 6.05
tp @s[scores={cutSceneTimer=1003}] 759.7427 36.4758 188.6694 267.87 6.05
tp @s[scores={cutSceneTimer=1004}] 759.7328 36.47685 188.6698 267.87 6.05
tp @s[scores={cutSceneTimer=1005}] 759.7228 36.47791 188.6701 267.87 6.05
tp @s[scores={cutSceneTimer=1006}] 759.7129 36.47896 188.6705 267.87 6.05
tp @s[scores={cutSceneTimer=1007}] 759.7029 36.48001 188.6709 267.87 6.05
tp @s[scores={cutSceneTimer=1008}] 759.693 36.48106 188.6712 267.87 6.05
tp @s[scores={cutSceneTimer=1009}] 759.683 36.48212 188.6716 267.87 6.05
tp @s[scores={cutSceneTimer=1010}] 759.6731 36.48317 188.672 267.87 6.05
tp @s[scores={cutSceneTimer=1011}] 759.6631 36.48422 188.6723 267.87 6.05
tp @s[scores={cutSceneTimer=1012}] 759.6532 36.48528 188.6727 267.87 6.05
tp @s[scores={cutSceneTimer=1013}] 759.6432 36.48633 188.6731 267.87 6.05
tp @s[scores={cutSceneTimer=1014}] 759.6333 36.48738 188.6734 267.87 6.05
tp @s[scores={cutSceneTimer=1015}] 759.6234 36.48843 188.6738 267.87 6.05
tp @s[scores={cutSceneTimer=1016}] 759.6134 36.48949 188.6742 267.87 6.05
tp @s[scores={cutSceneTimer=1017}] 759.6035 36.49054 188.6745 267.87 6.05
tp @s[scores={cutSceneTimer=1018}] 759.5935 36.49159 188.6749 267.87 6.05
tp @s[scores={cutSceneTimer=1019}] 759.5836 36.49265 188.6753 267.87 6.05
tp @s[scores={cutSceneTimer=1020}] 759.5736 36.4937 188.6756 267.87 6.05
tp @s[scores={cutSceneTimer=1021}] 759.5637 36.49475 188.676 267.87 6.05
tp @s[scores={cutSceneTimer=1022}] 759.5537 36.4958 188.6764 267.87 6.05
tp @s[scores={cutSceneTimer=1023}] 759.5438 36.49686 188.6767 267.87 6.05
tp @s[scores={cutSceneTimer=1024}] 759.5338 36.49791 188.6771 267.87 6.05
tp @s[scores={cutSceneTimer=1025}] 759.5239 36.49896 188.6775 267.87 6.05
tp @s[scores={cutSceneTimer=1026}] 759.5139 36.50002 188.6778 267.87 6.05
tp @s[scores={cutSceneTimer=1027}] 759.504 36.50107 188.6782 267.87 6.05
tp @s[scores={cutSceneTimer=1028}] 759.494 36.50212 188.6786 267.87 6.05
tp @s[scores={cutSceneTimer=1029}] 759.4841 36.50317 188.6789 267.87 6.05
tp @s[scores={cutSceneTimer=1030}] 759.4741 36.50423 188.6793 267.87 6.05
tp @s[scores={cutSceneTimer=1031}] 759.4642 36.50528 188.6797 267.87 6.05
tp @s[scores={cutSceneTimer=1032}] 759.4542 36.50633 188.68 267.87 6.05
tp @s[scores={cutSceneTimer=1033}] 759.4443 36.50739 188.6804 267.87 6.05
tp @s[scores={cutSceneTimer=1034}] 759.4343 36.50844 188.6808 267.87 6.05
tp @s[scores={cutSceneTimer=1035}] 759.4244 36.50949 188.6811 267.87 6.05
tp @s[scores={cutSceneTimer=1036}] 759.4144 36.51054 188.6815 267.87 6.05
tp @s[scores={cutSceneTimer=1037}] 759.4045 36.5116 188.6819 267.87 6.05
tp @s[scores={cutSceneTimer=1038}] 759.3945 36.51265 188.6822 267.87 6.05
tp @s[scores={cutSceneTimer=1039}] 759.3846 36.5137 188.6826 267.87 6.05
tp @s[scores={cutSceneTimer=1040}] 759.3746 36.51476 188.683 267.87 6.05
tp @s[scores={cutSceneTimer=1041}] 759.3647 36.51581 188.6833 267.87 6.05
tp @s[scores={cutSceneTimer=1042}] 759.3547 36.51686 188.6837 267.87 6.05
tp @s[scores={cutSceneTimer=1043}] 759.3448 36.51791 188.6841 267.87 6.05
tp @s[scores={cutSceneTimer=1044}] 759.3348 36.51897 188.6844 267.87 6.05
tp @s[scores={cutSceneTimer=1045}] 759.3249 36.52002 188.6848 267.87 6.05
tp @s[scores={cutSceneTimer=1046}] 759.3149 36.52107 188.6852 267.87 6.05
tp @s[scores={cutSceneTimer=1047}] 759.305 36.52213 188.6855 267.87 6.05
tp @s[scores={cutSceneTimer=1048}] 759.295 36.52318 188.6859 267.87 6.05
tp @s[scores={cutSceneTimer=1049}] 759.2851 36.52423 188.6862 267.87 6.05
tp @s[scores={cutSceneTimer=1050}] 759.2751 36.52528 188.6866 267.87 6.05
tp @s[scores={cutSceneTimer=1051}] 759.2652 36.52634 188.687 267.87 6.05
tp @s[scores={cutSceneTimer=1052}] 759.2552 36.52739 188.6873 267.87 6.05
tp @s[scores={cutSceneTimer=1053}] 759.2453 36.52844 188.6877 267.87 6.05
tp @s[scores={cutSceneTimer=1054}] 759.2354 36.5295 188.6881 267.87 6.05
tp @s[scores={cutSceneTimer=1055}] 759.2254 36.53055 188.6884 267.87 6.05
tp @s[scores={cutSceneTimer=1056}] 759.2155 36.5316 188.6888 267.87 6.05
tp @s[scores={cutSceneTimer=1057}] 759.2055 36.53265 188.6892 267.87 6.05
tp @s[scores={cutSceneTimer=1058}] 759.1956 36.53371 188.6895 267.87 6.05
tp @s[scores={cutSceneTimer=1059}] 759.1856 36.53476 188.6899 267.87 6.05
tp @s[scores={cutSceneTimer=1060}] 759.1757 36.53581 188.6903 267.87 6.05
tp @s[scores={cutSceneTimer=1061}] 759.1657 36.53687 188.6906 267.87 6.05
tp @s[scores={cutSceneTimer=1062}] 759.1558 36.53792 188.691 267.87 6.05
tp @s[scores={cutSceneTimer=1063}] 759.1458 36.53897 188.6914 267.87 6.05
tp @s[scores={cutSceneTimer=1064}] 759.1359 36.54002 188.6917 267.87 6.05
tp @s[scores={cutSceneTimer=1065}] 759.1259 36.54108 188.6921 267.87 6.05
tp @s[scores={cutSceneTimer=1066}] 759.116 36.54213 188.6925 267.87 6.05
tp @s[scores={cutSceneTimer=1067}] 759.106 36.54318 188.6928 267.87 6.05
tp @s[scores={cutSceneTimer=1068}] 759.0961 36.54424 188.6932 267.87 6.05
tp @s[scores={cutSceneTimer=1069}] 759.0861 36.54529 188.6936 267.87 6.05
tp @s[scores={cutSceneTimer=1070}] 759.0762 36.54634 188.6939 267.87 6.05
tp @s[scores={cutSceneTimer=1071}] 759.0662 36.54739 188.6943 267.87 6.05
tp @s[scores={cutSceneTimer=1072}] 759.0563 36.54845 188.6947 267.87 6.05
tp @s[scores={cutSceneTimer=1073}] 759.0463 36.5495 188.695 267.87 6.05
tp @s[scores={cutSceneTimer=1074}] 759.0364 36.55055 188.6954 267.87 6.05
tp @s[scores={cutSceneTimer=1075}] 759.0264 36.55161 188.6958 267.87 6.05
tp @s[scores={cutSceneTimer=1076}] 759.0165 36.55266 188.6961 267.87 6.05
tp @s[scores={cutSceneTimer=1077}] 759.0065 36.55371 188.6965 267.87 6.05
tp @s[scores={cutSceneTimer=1078}] 758.9966 36.55476 188.6969 267.87 6.05
tp @s[scores={cutSceneTimer=1079}] 758.9866 36.55582 188.6972 267.87 6.05
tp @s[scores={cutSceneTimer=1080}] 758.9767 36.55687 188.6976 267.87 6.05




# ¤Snape:¤ There will be no foolish wand waving or silly incantations in this class.
# ¤Snape:¤ На этом уроке не будет дурацких взмахов волшебной палочки и глупых заклинаний.
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=20..140}] run title @s actionbar ["",{"text":""},{"text":"Снегг;","color":"dark_gray"},{"text":" На этом уроке не будет дурацких взмахов волшебной палочки и глупых заклинаний."}]
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=27},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=31},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=38},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=49},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=53},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=60},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Snape:¤ As such, I don't expect many of you to appreciate the subtle science and exact art that is potion brewing,
execute as @s[scores={cutSceneTimer=140},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=140..320}] run title @s actionbar ["",{"text":""},{"text":"Снегг;","color":"dark_gray"},{"text":" Я не надеюсь, что вы оцените такую тонкую науку, такое точное искусство, как приготовление зелий."}]
execute as @s[scores={cutSceneTimer=140},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=147},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=151},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=158},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=162},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=169},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=173},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=180},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Snape:¤ However for those select few who posess the predisposition
execute as @s[scores={cutSceneTimer=320},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=320..420}] run title @s actionbar ["",{"text":""},{"text":"Снегг;","color":"dark_gray"},{"text":" Однако тех нескольких... избранных, кто имеет предрасположение,"}]
execute as @s[scores={cutSceneTimer=320},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=327},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=331},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=335},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=342},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=349},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=353},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=360},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Snape:¤ I can teach you how to bewitch the mind, and ensnare the senses.
execute as @s[scores={cutSceneTimer=420},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=420..600}] run title @s actionbar ["",{"text":""},{"text":"Снегг;","color":"dark_gray"},{"text":" Я научу вас, как околдовать разум и обмануть чувства. Я расскажу вам как"}]
execute as @s[scores={cutSceneTimer=420},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=427},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=431},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=435},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=442},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=449},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=453},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=460},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Snape:¤ I can tell you how to bottle fame, brew glory and even put a stopper in death.
execute as @s[scores={cutSceneTimer=510},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=510..600}] run title @s actionbar ["",{"text":""},{"text":"Снегг;","color":"dark_gray"},{"text":" разлить по бутылкам известность, как заваривать славу, и даже как закупорить смерть…"}]
execute as @s[scores={cutSceneTimer=510},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=517},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=521},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=525},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=532},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=539},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=543},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=550},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral


# ¤Snape:¤ In this lesson you will be brewing the "Настойка Растопырника" potion,
# ¤Snape:¤ На этом занятии вы научитесь варить зелье 'Настойка Растопырника',
execute as @s[scores={cutSceneTimer=600},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=600..800}] run title @s actionbar ["",{"text":""},{"text":"Снегг;","color":"dark_gray"},{"text":" На этом занятии вы научитесь варить зелье 'Настойка Растопырника',"}]
execute as @s[scores={cutSceneTimer=600},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=607},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=611},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=618},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=622},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=629},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=633},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=640},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Snape:¤ which when consumed will restore a significant amount of your health.
# ¤Snape:¤ которое восстановит часть вашего здоровья при употреблении.
execute as @s[scores={cutSceneTimer=700},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=700..800}] run title @s actionbar ["",{"text":""},{"text":"Снегг;","color":"dark_gray"},{"text":" которое восстановит часть вашего здоровья при употреблении."}]
execute as @s[scores={cutSceneTimer=700},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=707},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=711},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=718},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=722},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=729},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=733},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=740},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral


# ¤Snape:¤ For this you need to collect a variety of potion supplies that are scattered in and around this room.
# ¤Snape:¤ Для этого вам нужно собрать различные ингредиенты для зелья, разложенные в этой комнате.
execute as @s[scores={cutSceneTimer=800},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=800..970}] run title @s actionbar ["",{"text":""},{"text":"Снегг;","color":"dark_gray"},{"text":" Для этого вам нужно собрать различные ингредиенты для зелья, разложенные в этой комнате."}]
execute as @s[scores={cutSceneTimer=800},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=807},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=811},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=818},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=822},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=829},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=833},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=840},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Snape:¤ You may begin.
execute as @s[scores={cutSceneTimer=970},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=970..1170}] run title @s actionbar ["",{"text":""},{"text":"Снегг;","color":"dark_gray"},{"text":" Можете начинать."}]
execute as @s[scores={cutSceneTimer=970},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=977},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=981},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=985},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=992},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=999},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=1003},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=1010},tag=cutsceneLeader] as @e[tag=snapeClassroom,limit=1] run function hp:npc/update_npc_head_neutral


# Clear subtitles instantly rather than a slow fade I can't control
execute as @s[scores={cutSceneTimer=1170..}] run title @s actionbar ""

execute as @s[scores={cutSceneTimer=1081}] as @s run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=1102}] as @s run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=1102}] as @s run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=1102}] as @s run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=1102}] as @s run tag @s remove fastFade
execute as @s[scores={cutSceneTimer=1102}] as @s run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=1103}] run function hp:cutscenes/revert_to_start_position
execute as @s[scores={cutSceneTimer=1123}] run tag @s add dontExitCutSceneSilent
execute as @s[scores={cutSceneTimer=1123}] as @s run function hp:cutscenes/exit_cutscene



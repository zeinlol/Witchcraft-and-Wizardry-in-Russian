execute as @s[scores={trackQuestState=2}] run scoreboard players set @s questState 3
execute as @s[scores={trackQuestState=2}] run function hp:quests/set_quest


# Reset spell challenge
execute as @s[scores={cutSceneTimer=300},tag=cutsceneLeader] if score playerInStupefySpellChallenge global matches 0 run function hp:quests/quests/stupefy/reset_stupefy_spell_challenge


execute as @s[scores={cutSceneTimer=-19}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=-19}] run function hp:music/music/silence
execute as @s[scores={cutSceneTimer=-19}] run tag @s remove musicController
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=30}] as @s run function hp:cutscenes/fade_out

execute as @s[scores={cutSceneTimer=..20}] run title @s actionbar ["",{"text":" "}]

execute as @s[scores={cutSceneTimer=22},tag=gameLeader] run time set day
execute as @s[scores={cutSceneTimer=22},tag=gameLeader] run gamerule doDaylightCycle false
tp @s[scores={cutSceneTimer=0..22}] 5553.61 96.58 -18.71 -15.42 20.43
tp @s[scores={cutSceneTimer=23}] 5553.625 96.58 -18.71 -15.32 20.43
tp @s[scores={cutSceneTimer=24}] 5553.641 96.58 -18.71 -15.22 20.43
tp @s[scores={cutSceneTimer=25}] 5553.656 96.58 -18.71 -15.12 20.43
tp @s[scores={cutSceneTimer=26}] 5553.671 96.58 -18.71 -15.02 20.43
tp @s[scores={cutSceneTimer=27}] 5553.686 96.58 -18.71 -14.92 20.43
tp @s[scores={cutSceneTimer=28}] 5553.701 96.58 -18.71 -14.82 20.43
tp @s[scores={cutSceneTimer=29}] 5553.716 96.58 -18.71 -14.72 20.43
tp @s[scores={cutSceneTimer=30}] 5553.731 96.58 -18.71 -14.62 20.43
tp @s[scores={cutSceneTimer=31}] 5553.747 96.58 -18.71 -14.52 20.43
tp @s[scores={cutSceneTimer=32}] 5553.762 96.58 -18.71 -14.42 20.43
tp @s[scores={cutSceneTimer=33}] 5553.777 96.58 -18.71 -14.32 20.43
tp @s[scores={cutSceneTimer=34}] 5553.792 96.58 -18.71 -14.22 20.43
tp @s[scores={cutSceneTimer=35}] 5553.807 96.58 -18.71 -14.12 20.43
tp @s[scores={cutSceneTimer=36}] 5553.822 96.58 -18.71 -14.01999 20.43
tp @s[scores={cutSceneTimer=37}] 5553.837 96.58 -18.71 -13.91999 20.43
tp @s[scores={cutSceneTimer=38}] 5553.853 96.58 -18.71 -13.81999 20.43
tp @s[scores={cutSceneTimer=39}] 5553.868 96.58 -18.71 -13.71999 20.43
tp @s[scores={cutSceneTimer=40}] 5553.883 96.58 -18.71 -13.61999 20.43
tp @s[scores={cutSceneTimer=41}] 5553.898 96.58 -18.71 -13.51999 20.43
tp @s[scores={cutSceneTimer=42}] 5553.913 96.58 -18.71 -13.41999 20.43
tp @s[scores={cutSceneTimer=43}] 5553.928 96.58 -18.71 -13.31999 20.43
tp @s[scores={cutSceneTimer=44}] 5553.943 96.58 -18.71 -13.21999 20.43
tp @s[scores={cutSceneTimer=45}] 5553.958 96.58 -18.71 -13.11999 20.43
tp @s[scores={cutSceneTimer=46}] 5553.974 96.58 -18.71 -13.01999 20.43
tp @s[scores={cutSceneTimer=47}] 5553.989 96.58 -18.71 -12.91999 20.43
tp @s[scores={cutSceneTimer=48}] 5554.004 96.58 -18.71 -12.81999 20.43
tp @s[scores={cutSceneTimer=49}] 5554.019 96.58 -18.71 -12.71999 20.43
tp @s[scores={cutSceneTimer=50}] 5554.034 96.58 -18.71 -12.61999 20.43
tp @s[scores={cutSceneTimer=51}] 5554.049 96.58 -18.71 -12.51999 20.43
tp @s[scores={cutSceneTimer=52}] 5554.064 96.58 -18.71 -12.41999 20.43
tp @s[scores={cutSceneTimer=53}] 5554.08 96.58 -18.71 -12.31999 20.43
tp @s[scores={cutSceneTimer=54}] 5554.095 96.58 -18.71 -12.21999 20.43
tp @s[scores={cutSceneTimer=55}] 5554.11 96.58 -18.71 -12.11999 20.43
tp @s[scores={cutSceneTimer=56}] 5554.125 96.58 -18.71 -12.01999 20.43
tp @s[scores={cutSceneTimer=57}] 5554.14 96.58 -18.71 -11.91999 20.43
tp @s[scores={cutSceneTimer=58}] 5554.155 96.58 -18.71 -11.81999 20.43
tp @s[scores={cutSceneTimer=59}] 5554.17 96.58 -18.71 -11.71999 20.43
tp @s[scores={cutSceneTimer=60}] 5554.186 96.58 -18.71 -11.61999 20.43
tp @s[scores={cutSceneTimer=61}] 5554.201 96.58 -18.71 -11.51999 20.43
tp @s[scores={cutSceneTimer=62}] 5554.216 96.58 -18.71 -11.41998 20.43
tp @s[scores={cutSceneTimer=63}] 5554.231 96.58 -18.71 -11.31998 20.43
tp @s[scores={cutSceneTimer=64}] 5554.246 96.58 -18.71 -11.21998 20.43
tp @s[scores={cutSceneTimer=65}] 5554.261 96.58 -18.71 -11.11998 20.43
tp @s[scores={cutSceneTimer=66}] 5554.276 96.58 -18.71 -11.01998 20.43
tp @s[scores={cutSceneTimer=67}] 5554.292 96.58 -18.71 -10.91998 20.43
tp @s[scores={cutSceneTimer=68}] 5554.307 96.58 -18.71 -10.81998 20.43
tp @s[scores={cutSceneTimer=69}] 5554.322 96.58 -18.71 -10.71998 20.43
tp @s[scores={cutSceneTimer=70}] 5554.337 96.58 -18.71 -10.61998 20.43
tp @s[scores={cutSceneTimer=71}] 5554.352 96.58 -18.71 -10.51998 20.43
tp @s[scores={cutSceneTimer=72}] 5554.367 96.58 -18.71 -10.41998 20.43
tp @s[scores={cutSceneTimer=73}] 5554.382 96.58 -18.71 -10.31998 20.43
tp @s[scores={cutSceneTimer=74}] 5554.397 96.58 -18.71 -10.21998 20.43
tp @s[scores={cutSceneTimer=75}] 5554.413 96.58 -18.71 -10.11998 20.43
tp @s[scores={cutSceneTimer=76}] 5554.428 96.58 -18.71 -10.01998 20.43
tp @s[scores={cutSceneTimer=77}] 5554.443 96.58 -18.71 -9.919979 20.43
tp @s[scores={cutSceneTimer=78}] 5554.458 96.58 -18.71 -9.819979 20.43
tp @s[scores={cutSceneTimer=79}] 5554.473 96.58 -18.71 -9.719978 20.43
tp @s[scores={cutSceneTimer=80}] 5554.488 96.58 -18.71 -9.619978 20.43
tp @s[scores={cutSceneTimer=81}] 5554.503 96.58 -18.71 -9.519978 20.43
tp @s[scores={cutSceneTimer=82}] 5554.519 96.58 -18.71 -9.419977 20.43
tp @s[scores={cutSceneTimer=83}] 5554.534 96.58 -18.71 -9.319977 20.43
tp @s[scores={cutSceneTimer=84}] 5554.549 96.58 -18.71 -9.219976 20.43
tp @s[scores={cutSceneTimer=85}] 5554.564 96.58 -18.71 -9.119976 20.43
tp @s[scores={cutSceneTimer=86}] 5554.579 96.58 -18.71 -9.019976 20.43
tp @s[scores={cutSceneTimer=87}] 5554.594 96.58 -18.71 -8.919975 20.43
tp @s[scores={cutSceneTimer=88}] 5554.609 96.58 -18.71 -8.819975 20.43
tp @s[scores={cutSceneTimer=89}] 5554.625 96.58 -18.71 -8.719975 20.43
tp @s[scores={cutSceneTimer=90}] 5554.64 96.58 -18.71 -8.619974 20.43
tp @s[scores={cutSceneTimer=91}] 5554.655 96.58 -18.71 -8.519974 20.43
tp @s[scores={cutSceneTimer=92}] 5554.67 96.58 -18.71 -8.419973 20.43
tp @s[scores={cutSceneTimer=93}] 5554.685 96.58 -18.71 -8.319973 20.43
tp @s[scores={cutSceneTimer=94}] 5554.7 96.58 -18.71 -8.219973 20.43
tp @s[scores={cutSceneTimer=95}] 5554.715 96.58 -18.71 -8.119972 20.43
tp @s[scores={cutSceneTimer=96}] 5554.73 96.58 -18.71 -8.019972 20.43
tp @s[scores={cutSceneTimer=97}] 5554.746 96.58 -18.71 -7.919972 20.43
tp @s[scores={cutSceneTimer=98}] 5554.761 96.58 -18.71 -7.819972 20.43
tp @s[scores={cutSceneTimer=99}] 5554.776 96.58 -18.71 -7.719972 20.43
tp @s[scores={cutSceneTimer=100}] 5554.791 96.58 -18.71 -7.619972 20.43
tp @s[scores={cutSceneTimer=101}] 5554.806 96.58 -18.71 -7.519972 20.43
tp @s[scores={cutSceneTimer=102}] 5554.821 96.58 -18.71 -7.419972 20.43
tp @s[scores={cutSceneTimer=103}] 5554.836 96.58 -18.71 -7.319973 20.43
tp @s[scores={cutSceneTimer=104}] 5554.852 96.58 -18.71 -7.219973 20.43
tp @s[scores={cutSceneTimer=105}] 5554.867 96.58 -18.71 -7.119973 20.43
tp @s[scores={cutSceneTimer=106}] 5554.882 96.58 -18.71 -7.019973 20.43
tp @s[scores={cutSceneTimer=107}] 5554.897 96.58 -18.71 -6.919973 20.43
tp @s[scores={cutSceneTimer=108}] 5554.912 96.58 -18.71 -6.819973 20.43
tp @s[scores={cutSceneTimer=109}] 5554.927 96.58 -18.71 -6.719973 20.43
tp @s[scores={cutSceneTimer=110}] 5554.942 96.58 -18.71 -6.619973 20.43
tp @s[scores={cutSceneTimer=111}] 5554.958 96.58 -18.71 -6.519973 20.43
tp @s[scores={cutSceneTimer=112}] 5554.973 96.58 -18.71 -6.419973 20.43
tp @s[scores={cutSceneTimer=113}] 5554.988 96.58 -18.71 -6.319973 20.43
tp @s[scores={cutSceneTimer=114}] 5555.003 96.58 -18.71 -6.219974 20.43
tp @s[scores={cutSceneTimer=115}] 5555.018 96.58 -18.71 -6.119974 20.43
tp @s[scores={cutSceneTimer=116}] 5555.033 96.58 -18.71 -6.019974 20.43
tp @s[scores={cutSceneTimer=117}] 5555.048 96.58 -18.71 -5.919974 20.43
tp @s[scores={cutSceneTimer=118}] 5555.063 96.58 -18.71 -5.819974 20.43
tp @s[scores={cutSceneTimer=119}] 5555.079 96.58 -18.71 -5.719974 20.43
tp @s[scores={cutSceneTimer=120}] 5555.094 96.58 -18.71 -5.619974 20.43
tp @s[scores={cutSceneTimer=121}] 5555.109 96.58 -18.71 -5.519974 20.43
tp @s[scores={cutSceneTimer=122}] 5555.124 96.58 -18.71 -5.419974 20.43
tp @s[scores={cutSceneTimer=123}] 5555.139 96.58 -18.71 -5.319974 20.43
tp @s[scores={cutSceneTimer=124}] 5555.154 96.58 -18.71 -5.219975 20.43
tp @s[scores={cutSceneTimer=125}] 5555.169 96.58 -18.71 -5.119975 20.43
tp @s[scores={cutSceneTimer=126}] 5555.185 96.58 -18.71 -5.019975 20.43
tp @s[scores={cutSceneTimer=127}] 5555.2 96.58 -18.71 -4.919975 20.43
tp @s[scores={cutSceneTimer=128}] 5555.215 96.58 -18.71 -4.819975 20.43
tp @s[scores={cutSceneTimer=129}] 5555.23 96.58 -18.71 -4.719975 20.43
tp @s[scores={cutSceneTimer=130}] 5555.245 96.58 -18.71 -4.619975 20.43
tp @s[scores={cutSceneTimer=131}] 5555.26 96.58 -18.71 -4.519975 20.43
tp @s[scores={cutSceneTimer=132}] 5555.275 96.58 -18.71 -4.419975 20.43
tp @s[scores={cutSceneTimer=133}] 5555.291 96.58 -18.71 -4.319975 20.43
tp @s[scores={cutSceneTimer=134}] 5555.306 96.58 -18.71 -4.219975 20.43
tp @s[scores={cutSceneTimer=135}] 5555.321 96.58 -18.71 -4.119976 20.43
tp @s[scores={cutSceneTimer=136}] 5555.336 96.58 -18.71 -4.019976 20.43
tp @s[scores={cutSceneTimer=137}] 5555.351 96.58 -18.71 -3.919976 20.43
tp @s[scores={cutSceneTimer=138}] 5555.366 96.58 -18.71 -3.819976 20.43
tp @s[scores={cutSceneTimer=139}] 5555.381 96.58 -18.71 -3.719976 20.43
tp @s[scores={cutSceneTimer=140}] 5555.396 96.58 -18.71 -3.619976 20.43
tp @s[scores={cutSceneTimer=141}] 5555.412 96.58 -18.71 -3.519976 20.43
tp @s[scores={cutSceneTimer=142}] 5555.427 96.58 -18.71 -3.419976 20.43
tp @s[scores={cutSceneTimer=143}] 5555.442 96.58 -18.71 -3.319976 20.43
tp @s[scores={cutSceneTimer=144}] 5555.457 96.58 -18.71 -3.219976 20.43
tp @s[scores={cutSceneTimer=145}] 5555.472 96.58 -18.71 -3.119977 20.43
tp @s[scores={cutSceneTimer=146}] 5555.487 96.58 -18.71 -3.019977 20.43
tp @s[scores={cutSceneTimer=147}] 5555.502 96.58 -18.71 -2.919977 20.43
tp @s[scores={cutSceneTimer=148}] 5555.518 96.58 -18.71 -2.819977 20.43
tp @s[scores={cutSceneTimer=149}] 5555.533 96.58 -18.71 -2.719977 20.43
tp @s[scores={cutSceneTimer=150}] 5555.548 96.58 -18.71 -2.619977 20.43
tp @s[scores={cutSceneTimer=151}] 5555.563 96.58 -18.71 -2.519977 20.43
tp @s[scores={cutSceneTimer=152}] 5555.578 96.58 -18.71 -2.419977 20.43
tp @s[scores={cutSceneTimer=153}] 5555.593 96.58 -18.71 -2.319977 20.43
tp @s[scores={cutSceneTimer=154}] 5555.608 96.58 -18.71 -2.219977 20.43
tp @s[scores={cutSceneTimer=155}] 5555.624 96.58 -18.71 -2.119977 20.43
tp @s[scores={cutSceneTimer=156}] 5555.639 96.58 -18.71 -2.019978 20.43
tp @s[scores={cutSceneTimer=157}] 5555.654 96.58 -18.71 -1.919978 20.43
tp @s[scores={cutSceneTimer=158}] 5555.669 96.58 -18.71 -1.819978 20.43
tp @s[scores={cutSceneTimer=159}] 5555.684 96.58 -18.71 -1.719977 20.43
tp @s[scores={cutSceneTimer=160}] 5555.699 96.58 -18.71 -1.619977 20.43
tp @s[scores={cutSceneTimer=161}] 5555.714 96.58 -18.71 -1.519977 20.43
tp @s[scores={cutSceneTimer=162}] 5555.729 96.58 -18.71 -1.419977 20.43
tp @s[scores={cutSceneTimer=163}] 5555.745 96.58 -18.71 -1.319977 20.43
tp @s[scores={cutSceneTimer=164}] 5555.76 96.58 -18.71 -1.219977 20.43
tp @s[scores={cutSceneTimer=165}] 5555.775 96.58 -18.71 -1.119977 20.43
tp @s[scores={cutSceneTimer=166}] 5555.79 96.58 -18.71 -1.019977 20.43
tp @s[scores={cutSceneTimer=167}] 5555.805 96.58 -18.71 -0.9199773 20.43
tp @s[scores={cutSceneTimer=168}] 5555.82 96.58 -18.71 -0.8199773 20.43
tp @s[scores={cutSceneTimer=169}] 5555.835 96.58 -18.71 -0.7199773 20.43
tp @s[scores={cutSceneTimer=170}] 5555.851 96.58 -18.71 -0.6199772 20.43
tp @s[scores={cutSceneTimer=171}] 5555.866 96.58 -18.71 -0.5199772 20.43
tp @s[scores={cutSceneTimer=172}] 5555.881 96.58 -18.71 -0.4199772 20.43
tp @s[scores={cutSceneTimer=173}] 5555.896 96.58 -18.71 -0.3199772 20.43
tp @s[scores={cutSceneTimer=174}] 5555.911 96.58 -18.71 -0.2199772 20.43
tp @s[scores={cutSceneTimer=175}] 5555.926 96.58 -18.71 -0.1199772 20.43
tp @s[scores={cutSceneTimer=176}] 5555.941 96.58 -18.71 -0.01997723 20.43
tp @s[scores={cutSceneTimer=177}] 5555.957 96.58 -18.71 0.08002277 20.43
tp @s[scores={cutSceneTimer=178}] 5555.972 96.58 -18.71 0.1800228 20.43
tp @s[scores={cutSceneTimer=179}] 5555.987 96.58 -18.71 0.2800228 20.43
tp @s[scores={cutSceneTimer=180}] 5556.002 96.58 -18.71 0.3800228 20.43
tp @s[scores={cutSceneTimer=181}] 5556.017 96.58 -18.71 0.4800228 20.43
tp @s[scores={cutSceneTimer=182}] 5556.032 96.58 -18.71 0.5800228 20.43
tp @s[scores={cutSceneTimer=183}] 5556.047 96.58 -18.71 0.6800228 20.43
tp @s[scores={cutSceneTimer=184}] 5556.063 96.58 -18.71 0.7800228 20.43
tp @s[scores={cutSceneTimer=185}] 5556.078 96.58 -18.71 0.8800228 20.43
tp @s[scores={cutSceneTimer=186}] 5556.093 96.58 -18.71 0.9800228 20.43
tp @s[scores={cutSceneTimer=187}] 5556.108 96.58 -18.71 1.080023 20.43
tp @s[scores={cutSceneTimer=188}] 5556.123 96.58 -18.71 1.180023 20.43
tp @s[scores={cutSceneTimer=189}] 5556.138 96.58 -18.71 1.280023 20.43
tp @s[scores={cutSceneTimer=190}] 5556.153 96.58 -18.71 1.380023 20.43
tp @s[scores={cutSceneTimer=191}] 5556.168 96.58 -18.71 1.480023 20.43
tp @s[scores={cutSceneTimer=192}] 5556.184 96.58 -18.71 1.580023 20.43
tp @s[scores={cutSceneTimer=193}] 5556.199 96.58 -18.71 1.680023 20.43
tp @s[scores={cutSceneTimer=194}] 5556.214 96.58 -18.71 1.780023 20.43
tp @s[scores={cutSceneTimer=195}] 5556.229 96.58 -18.71 1.880023 20.43
tp @s[scores={cutSceneTimer=196}] 5556.244 96.58 -18.71 1.980023 20.43
tp @s[scores={cutSceneTimer=197}] 5556.259 96.58 -18.71 2.080023 20.43
tp @s[scores={cutSceneTimer=198}] 5556.274 96.58 -18.71 2.180023 20.43
tp @s[scores={cutSceneTimer=199}] 5556.29 96.58 -18.71 2.280023 20.43
tp @s[scores={cutSceneTimer=200}] 5556.305 96.58 -18.71 2.380023 20.43
tp @s[scores={cutSceneTimer=201}] 5556.32 96.58 -18.71 2.480023 20.43
tp @s[scores={cutSceneTimer=202}] 5556.335 96.58 -18.71 2.580023 20.43
tp @s[scores={cutSceneTimer=203}] 5556.35 96.58 -18.71 2.680022 20.43
tp @s[scores={cutSceneTimer=204}] 5556.365 96.58 -18.71 2.780022 20.43
tp @s[scores={cutSceneTimer=205}] 5556.38 96.58 -18.71 2.880022 20.43
tp @s[scores={cutSceneTimer=206}] 5556.396 96.58 -18.71 2.980022 20.43
tp @s[scores={cutSceneTimer=207}] 5556.411 96.58 -18.71 3.080022 20.43
tp @s[scores={cutSceneTimer=208}] 5556.426 96.58 -18.71 3.180022 20.43
tp @s[scores={cutSceneTimer=209}] 5556.441 96.58 -18.71 3.280022 20.43
tp @s[scores={cutSceneTimer=210}] 5556.456 96.58 -18.71 3.380022 20.43
tp @s[scores={cutSceneTimer=211}] 5556.471 96.58 -18.71 3.480022 20.43
tp @s[scores={cutSceneTimer=212}] 5556.486 96.58 -18.71 3.580022 20.43
tp @s[scores={cutSceneTimer=213}] 5556.501 96.58 -18.71 3.680022 20.43
tp @s[scores={cutSceneTimer=214}] 5556.517 96.58 -18.71 3.780021 20.43
tp @s[scores={cutSceneTimer=215}] 5556.532 96.58 -18.71 3.880021 20.43
tp @s[scores={cutSceneTimer=216}] 5556.547 96.58 -18.71 3.980021 20.43
tp @s[scores={cutSceneTimer=217}] 5556.562 96.58 -18.71 4.080021 20.43
tp @s[scores={cutSceneTimer=218}] 5556.577 96.58 -18.71 4.180021 20.43
tp @s[scores={cutSceneTimer=219}] 5556.592 96.58 -18.71 4.280021 20.43
tp @s[scores={cutSceneTimer=220}] 5556.607 96.58 -18.71 4.380021 20.43
tp @s[scores={cutSceneTimer=221}] 5556.623 96.58 -18.71 4.480021 20.43
tp @s[scores={cutSceneTimer=222}] 5556.638 96.58 -18.71 4.580021 20.43
tp @s[scores={cutSceneTimer=223}] 5556.653 96.58 -18.71 4.680021 20.43
tp @s[scores={cutSceneTimer=224}] 5556.668 96.58 -18.71 4.780021 20.43
tp @s[scores={cutSceneTimer=225}] 5556.683 96.58 -18.71 4.880021 20.43
tp @s[scores={cutSceneTimer=226}] 5556.698 96.58 -18.71 4.980021 20.43
tp @s[scores={cutSceneTimer=227}] 5556.713 96.58 -18.71 5.08002 20.43
tp @s[scores={cutSceneTimer=228}] 5556.729 96.58 -18.71 5.18002 20.43
tp @s[scores={cutSceneTimer=229}] 5556.744 96.58 -18.71 5.28002 20.43
tp @s[scores={cutSceneTimer=230}] 5556.759 96.58 -18.71 5.38002 20.43
tp @s[scores={cutSceneTimer=231}] 5556.774 96.58 -18.71 5.48002 20.43
tp @s[scores={cutSceneTimer=232}] 5556.789 96.58 -18.71 5.58002 20.43
tp @s[scores={cutSceneTimer=233}] 5556.804 96.58 -18.71 5.68002 20.43
tp @s[scores={cutSceneTimer=234}] 5556.819 96.58 -18.71 5.78002 20.43
tp @s[scores={cutSceneTimer=235}] 5556.834 96.58 -18.71 5.88002 20.43
tp @s[scores={cutSceneTimer=236}] 5556.85 96.58 -18.71 5.98002 20.43
tp @s[scores={cutSceneTimer=237}] 5556.865 96.58 -18.71 6.080019 20.43
tp @s[scores={cutSceneTimer=238}] 5556.88 96.58 -18.71 6.180019 20.43
tp @s[scores={cutSceneTimer=239}] 5556.895 96.58 -18.71 6.280019 20.43
tp @s[scores={cutSceneTimer=240}] 5556.91 96.58 -18.71 6.380019 20.43
tp @s[scores={cutSceneTimer=241}] 5556.925 96.58 -18.71 6.480019 20.43
tp @s[scores={cutSceneTimer=242}] 5556.94 96.58 -18.71 6.580019 20.43
tp @s[scores={cutSceneTimer=243}] 5556.956 96.58 -18.71 6.680019 20.43
tp @s[scores={cutSceneTimer=244}] 5556.971 96.58 -18.71 6.780019 20.43
tp @s[scores={cutSceneTimer=245}] 5556.986 96.58 -18.71 6.880019 20.43
tp @s[scores={cutSceneTimer=246}] 5557.001 96.58 -18.71 6.980019 20.43
tp @s[scores={cutSceneTimer=247}] 5557.016 96.58 -18.71 7.080019 20.43
tp @s[scores={cutSceneTimer=248}] 5557.031 96.58 -18.71 7.180018 20.43
tp @s[scores={cutSceneTimer=249}] 5557.046 96.58 -18.71 7.280018 20.43
tp @s[scores={cutSceneTimer=250}] 5557.062 96.58 -18.71 7.380018 20.43
tp @s[scores={cutSceneTimer=251}] 5557.077 96.58 -18.71 7.480018 20.43
tp @s[scores={cutSceneTimer=252}] 5557.092 96.58 -18.71 7.580018 20.43
tp @s[scores={cutSceneTimer=253}] 5557.107 96.58 -18.71 7.680018 20.43
tp @s[scores={cutSceneTimer=254}] 5557.122 96.58 -18.71 7.780018 20.43
tp @s[scores={cutSceneTimer=255}] 5557.137 96.58 -18.71 7.880018 20.43
tp @s[scores={cutSceneTimer=256}] 5557.152 96.58 -18.71 7.980018 20.43
tp @s[scores={cutSceneTimer=257}] 5557.167 96.58 -18.71 8.080018 20.43
tp @s[scores={cutSceneTimer=258}] 5557.183 96.58 -18.71 8.180018 20.43
tp @s[scores={cutSceneTimer=259}] 5557.198 96.58 -18.71 8.280019 20.43
tp @s[scores={cutSceneTimer=260}] 5557.213 96.58 -18.71 8.380019 20.43
tp @s[scores={cutSceneTimer=261}] 5557.228 96.58 -18.71 8.48002 20.43
tp @s[scores={cutSceneTimer=262}] 5557.243 96.58 -18.71 8.58002 20.43
tp @s[scores={cutSceneTimer=263}] 5557.258 96.58 -18.71 8.68002 20.43
tp @s[scores={cutSceneTimer=264}] 5557.273 96.58 -18.71 8.780021 20.43
tp @s[scores={cutSceneTimer=265}] 5557.289 96.58 -18.71 8.880021 20.43
tp @s[scores={cutSceneTimer=266}] 5557.304 96.58 -18.71 8.980021 20.43
tp @s[scores={cutSceneTimer=267}] 5557.319 96.58 -18.71 9.080022 20.43
tp @s[scores={cutSceneTimer=268}] 5557.334 96.58 -18.71 9.180022 20.43
tp @s[scores={cutSceneTimer=269}] 5557.349 96.58 -18.71 9.280023 20.43
tp @s[scores={cutSceneTimer=270}] 5557.364 96.58 -18.71 9.380023 20.43
tp @s[scores={cutSceneTimer=271}] 5557.379 96.58 -18.71 9.480023 20.43
tp @s[scores={cutSceneTimer=272}] 5557.395 96.58 -18.71 9.580024 20.43
tp @s[scores={cutSceneTimer=273}] 5557.41 96.58 -18.71 9.680024 20.43
tp @s[scores={cutSceneTimer=274}] 5557.425 96.58 -18.71 9.780025 20.43
tp @s[scores={cutSceneTimer=275}] 5557.44 96.58 -18.71 9.880025 20.43
tp @s[scores={cutSceneTimer=276}] 5557.455 96.58 -18.71 9.980025 20.43
tp @s[scores={cutSceneTimer=277}] 5557.47 96.58 -18.71 10.08003 20.43
tp @s[scores={cutSceneTimer=278}] 5557.485 96.58 -18.71 10.18003 20.43
tp @s[scores={cutSceneTimer=279}] 5557.5 96.58 -18.71 10.28003 20.43
tp @s[scores={cutSceneTimer=280}] 5557.516 96.58 -18.71 10.38003 20.43
tp @s[scores={cutSceneTimer=281}] 5557.531 96.58 -18.71 10.48003 20.43
tp @s[scores={cutSceneTimer=282}] 5557.546 96.58 -18.71 10.58003 20.43
tp @s[scores={cutSceneTimer=283}] 5557.561 96.58 -18.71 10.68003 20.43
tp @s[scores={cutSceneTimer=284}] 5557.576 96.58 -18.71 10.78003 20.43
tp @s[scores={cutSceneTimer=285}] 5557.591 96.58 -18.71 10.88003 20.43
tp @s[scores={cutSceneTimer=286}] 5557.606 96.58 -18.71 10.98003 20.43
tp @s[scores={cutSceneTimer=287}] 5557.622 96.58 -18.71 11.08003 20.43
tp @s[scores={cutSceneTimer=288}] 5557.637 96.58 -18.71 11.18003 20.43
tp @s[scores={cutSceneTimer=289}] 5557.652 96.58 -18.71 11.28003 20.43
tp @s[scores={cutSceneTimer=290}] 5557.667 96.58 -18.71 11.38003 20.43
tp @s[scores={cutSceneTimer=291}] 5557.682 96.58 -18.71 11.48003 20.43
tp @s[scores={cutSceneTimer=292}] 5557.697 96.58 -18.71 11.58003 20.43
tp @s[scores={cutSceneTimer=293}] 5557.712 96.58 -18.71 11.68003 20.43
tp @s[scores={cutSceneTimer=294}] 5557.728 96.58 -18.71 11.78003 20.43
tp @s[scores={cutSceneTimer=295}] 5557.743 96.58 -18.71 11.88003 20.43
tp @s[scores={cutSceneTimer=296}] 5557.758 96.58 -18.71 11.98003 20.43
tp @s[scores={cutSceneTimer=297}] 5557.773 96.58 -18.71 12.08003 20.43
tp @s[scores={cutSceneTimer=298}] 5557.788 96.58 -18.71 12.18003 20.43
tp @s[scores={cutSceneTimer=299}] 5557.803 96.58 -18.71 12.28003 20.43
tp @s[scores={cutSceneTimer=300}] 5557.818 96.58 -18.71 12.38003 20.43
tp @s[scores={cutSceneTimer=301}] 5557.833 96.58 -18.71 12.48003 20.43
tp @s[scores={cutSceneTimer=302}] 5557.849 96.58 -18.71 12.58004 20.43
tp @s[scores={cutSceneTimer=303}] 5557.864 96.58 -18.71 12.68004 20.43
tp @s[scores={cutSceneTimer=304}] 5557.879 96.58 -18.71 12.78004 20.43
tp @s[scores={cutSceneTimer=305}] 5557.894 96.58 -18.71 12.88004 20.43
tp @s[scores={cutSceneTimer=306}] 5557.909 96.58 -18.71 12.98004 20.43
tp @s[scores={cutSceneTimer=307}] 5557.924 96.58 -18.71 13.08004 20.43
tp @s[scores={cutSceneTimer=308}] 5557.939 96.58 -18.71 13.18004 20.43
tp @s[scores={cutSceneTimer=309}] 5557.955 96.58 -18.71 13.28004 20.43
tp @s[scores={cutSceneTimer=310}] 5557.97 96.58 -18.71 13.38004 20.43
tp @s[scores={cutSceneTimer=311}] 5557.985 96.58 -18.71 13.48004 20.43
tp @s[scores={cutSceneTimer=312}] 5558.000 96.58 -18.71 13.58004 20.43
tp @s[scores={cutSceneTimer=313}] 5558.015 96.58 -18.71 13.68004 20.43
tp @s[scores={cutSceneTimer=314}] 5558.03 96.58 -18.71 13.78004 20.43
tp @s[scores={cutSceneTimer=315}] 5558.045 96.58 -18.71 13.88004 20.43
tp @s[scores={cutSceneTimer=316}] 5558.061 96.58 -18.71 13.98004 20.43
tp @s[scores={cutSceneTimer=317}] 5558.076 96.58 -18.71 14.08004 20.43
tp @s[scores={cutSceneTimer=318}] 5558.091 96.58 -18.71 14.18004 20.43
tp @s[scores={cutSceneTimer=319}] 5558.106 96.58 -18.71 14.28004 20.43
tp @s[scores={cutSceneTimer=320}] 5558.121 96.58 -18.71 14.38004 20.43
execute as @s[scores={cutSceneTimer=300}] as @s run function hp:cutscenes/fade_in

# ¤Lupin:¤ Добро пожаловать в  Defense Against the Dark Arts!
execute as @s[scores={cutSceneTimer=40},tag=cutsceneLeader] run tag @e[tag=lupinClassroomFpEngine,limit=1] remove cutsceneStop
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=20..80}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"       "}]
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=27},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=31},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=38},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=49},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=53},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=60},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Lupin:¤ I'm Professor Lupin, your Defense Against the Dark Arts teacher here at Hogwarts.
execute as @s[scores={cutSceneTimer=80},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=80..160}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"             "}]
execute as @s[scores={cutSceneTimer=80},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=87},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=91},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=98},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=102},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=109},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=113},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=120},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Lupin:¤ Please put away your books, this is going to be a practical lesson. You will only need your wand.
execute as @s[scores={cutSceneTimer=161},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=161..320}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"                   "}]
execute as @s[scores={cutSceneTimer=161},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=168},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=172},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=179},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=173},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=180},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=184},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=191},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Lupin:¤ Today you will be learning the spell 'Stupefy', which will allow you to stun and damage opponents.
execute as @s[scores={cutSceneTimer=320},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=320..490}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"                 "}]
execute as @s[scores={cutSceneTimer=320},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=327},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=331},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=335},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=342},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=349},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=353},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=360},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral


execute as @s[scores={cutSceneTimer=320}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=321}] 5553.863 91.54867 -15.49535 -11.29 5.11
tp @s[scores={cutSceneTimer=322}] 5553.866 91.54733 -15.4807 -11.29 5.11
tp @s[scores={cutSceneTimer=323}] 5553.869 91.546 -15.46605 -11.29 5.11
tp @s[scores={cutSceneTimer=324}] 5553.872 91.54466 -15.4514 -11.29 5.11
tp @s[scores={cutSceneTimer=325}] 5553.875 91.54333 -15.43674 -11.29 5.11
tp @s[scores={cutSceneTimer=326}] 5553.877 91.54199 -15.42209 -11.29 5.11
tp @s[scores={cutSceneTimer=327}] 5553.88 91.54066 -15.40744 -11.29 5.11
tp @s[scores={cutSceneTimer=328}] 5553.883 91.53932 -15.39279 -11.29 5.11
tp @s[scores={cutSceneTimer=329}] 5553.886 91.53799 -15.37814 -11.29 5.11
tp @s[scores={cutSceneTimer=330}] 5553.889 91.53665 -15.36349 -11.29 5.11
tp @s[scores={cutSceneTimer=331}] 5553.892 91.53532 -15.34884 -11.29 5.11
tp @s[scores={cutSceneTimer=332}] 5553.895 91.53398 -15.33418 -11.29 5.11
tp @s[scores={cutSceneTimer=333}] 5553.898 91.53265 -15.31953 -11.29 5.11
tp @s[scores={cutSceneTimer=334}] 5553.901 91.53131 -15.30488 -11.29 5.11
tp @s[scores={cutSceneTimer=335}] 5553.904 91.52998 -15.29023 -11.29 5.11
tp @s[scores={cutSceneTimer=336}] 5553.907 91.52864 -15.27558 -11.29 5.11
tp @s[scores={cutSceneTimer=337}] 5553.91 91.52731 -15.26093 -11.29 5.11
tp @s[scores={cutSceneTimer=338}] 5553.913 91.52597 -15.24628 -11.29 5.11
tp @s[scores={cutSceneTimer=339}] 5553.916 91.52464 -15.23163 -11.29 5.11
tp @s[scores={cutSceneTimer=340}] 5553.918 91.5233 -15.21697 -11.29 5.11
tp @s[scores={cutSceneTimer=341}] 5553.921 91.52197 -15.20232 -11.29 5.11
tp @s[scores={cutSceneTimer=342}] 5553.924 91.52063 -15.18767 -11.29 5.11
tp @s[scores={cutSceneTimer=343}] 5553.927 91.51929 -15.17302 -11.29 5.11
tp @s[scores={cutSceneTimer=344}] 5553.93 91.51796 -15.15837 -11.29 5.11
tp @s[scores={cutSceneTimer=345}] 5553.933 91.51662 -15.14372 -11.29 5.11
tp @s[scores={cutSceneTimer=346}] 5553.936 91.51529 -15.12907 -11.29 5.11
tp @s[scores={cutSceneTimer=347}] 5553.939 91.51395 -15.11442 -11.29 5.11
tp @s[scores={cutSceneTimer=348}] 5553.942 91.51262 -15.09976 -11.29 5.11
tp @s[scores={cutSceneTimer=349}] 5553.945 91.51128 -15.08511 -11.29 5.11
tp @s[scores={cutSceneTimer=350}] 5553.948 91.50995 -15.07046 -11.29 5.11
tp @s[scores={cutSceneTimer=351}] 5553.951 91.50861 -15.05581 -11.29 5.11
tp @s[scores={cutSceneTimer=352}] 5553.954 91.50728 -15.04116 -11.29 5.11
tp @s[scores={cutSceneTimer=353}] 5553.957 91.50594 -15.02651 -11.29 5.11
tp @s[scores={cutSceneTimer=354}] 5553.959 91.50461 -15.01186 -11.29 5.11
tp @s[scores={cutSceneTimer=355}] 5553.962 91.50327 -14.9972 -11.29 5.11
tp @s[scores={cutSceneTimer=356}] 5553.965 91.50194 -14.98255 -11.29 5.11
tp @s[scores={cutSceneTimer=357}] 5553.968 91.5006 -14.9679 -11.29 5.11
tp @s[scores={cutSceneTimer=358}] 5553.971 91.49927 -14.95325 -11.29 5.11
tp @s[scores={cutSceneTimer=359}] 5553.974 91.49793 -14.9386 -11.29 5.11
tp @s[scores={cutSceneTimer=360}] 5553.977 91.4966 -14.92395 -11.29 5.11
tp @s[scores={cutSceneTimer=361}] 5553.98 91.49526 -14.9093 -11.29 5.11
tp @s[scores={cutSceneTimer=362}] 5553.983 91.49393 -14.89465 -11.29 5.11
tp @s[scores={cutSceneTimer=363}] 5553.986 91.49259 -14.87999 -11.29 5.11
tp @s[scores={cutSceneTimer=364}] 5553.989 91.49126 -14.86534 -11.29 5.11
tp @s[scores={cutSceneTimer=365}] 5553.992 91.48992 -14.85069 -11.29 5.11
tp @s[scores={cutSceneTimer=366}] 5553.995 91.48859 -14.83604 -11.29 5.11
tp @s[scores={cutSceneTimer=367}] 5553.998 91.48725 -14.82139 -11.29 5.11
tp @s[scores={cutSceneTimer=368}] 5554.000 91.48592 -14.80674 -11.29 5.11
tp @s[scores={cutSceneTimer=369}] 5554.003 91.48458 -14.79209 -11.29 5.11
tp @s[scores={cutSceneTimer=370}] 5554.006 91.48325 -14.77744 -11.29 5.11
tp @s[scores={cutSceneTimer=371}] 5554.009 91.48191 -14.76278 -11.29 5.11
tp @s[scores={cutSceneTimer=372}] 5554.012 91.48058 -14.74813 -11.29 5.11
tp @s[scores={cutSceneTimer=373}] 5554.015 91.47924 -14.73348 -11.29 5.11
tp @s[scores={cutSceneTimer=374}] 5554.018 91.47791 -14.71883 -11.29 5.11
tp @s[scores={cutSceneTimer=375}] 5554.021 91.47657 -14.70418 -11.29 5.11
tp @s[scores={cutSceneTimer=376}] 5554.024 91.47523 -14.68953 -11.29 5.11
tp @s[scores={cutSceneTimer=377}] 5554.027 91.4739 -14.67488 -11.29 5.11
tp @s[scores={cutSceneTimer=378}] 5554.03 91.47256 -14.66022 -11.29 5.11
tp @s[scores={cutSceneTimer=379}] 5554.033 91.47123 -14.64557 -11.29 5.11
tp @s[scores={cutSceneTimer=380}] 5554.036 91.46989 -14.63092 -11.29 5.11
tp @s[scores={cutSceneTimer=381}] 5554.039 91.46856 -14.61627 -11.29 5.11
tp @s[scores={cutSceneTimer=382}] 5554.042 91.46722 -14.60162 -11.29 5.11
tp @s[scores={cutSceneTimer=383}] 5554.044 91.46589 -14.58697 -11.29 5.11
tp @s[scores={cutSceneTimer=384}] 5554.047 91.46455 -14.57232 -11.29 5.11
tp @s[scores={cutSceneTimer=385}] 5554.05 91.46322 -14.55767 -11.29 5.11
tp @s[scores={cutSceneTimer=386}] 5554.053 91.46188 -14.54301 -11.29 5.11
tp @s[scores={cutSceneTimer=387}] 5554.056 91.46055 -14.52836 -11.29 5.11
tp @s[scores={cutSceneTimer=388}] 5554.059 91.45921 -14.51371 -11.29 5.11
tp @s[scores={cutSceneTimer=389}] 5554.062 91.45788 -14.49906 -11.29 5.11
tp @s[scores={cutSceneTimer=390}] 5554.065 91.45654 -14.48441 -11.29 5.11
tp @s[scores={cutSceneTimer=391}] 5554.068 91.45521 -14.46976 -11.29 5.11
tp @s[scores={cutSceneTimer=392}] 5554.071 91.45387 -14.45511 -11.29 5.11
tp @s[scores={cutSceneTimer=393}] 5554.074 91.45254 -14.44046 -11.29 5.11
tp @s[scores={cutSceneTimer=394}] 5554.077 91.4512 -14.4258 -11.29 5.11
tp @s[scores={cutSceneTimer=395}] 5554.08 91.44987 -14.41115 -11.29 5.11
tp @s[scores={cutSceneTimer=396}] 5554.083 91.44853 -14.3965 -11.29 5.11
tp @s[scores={cutSceneTimer=397}] 5554.085 91.4472 -14.38185 -11.29 5.11
tp @s[scores={cutSceneTimer=398}] 5554.088 91.44586 -14.3672 -11.29 5.11
tp @s[scores={cutSceneTimer=399}] 5554.091 91.44453 -14.35255 -11.29 5.11
tp @s[scores={cutSceneTimer=400}] 5554.094 91.44319 -14.3379 -11.29 5.11
tp @s[scores={cutSceneTimer=401}] 5554.097 91.44186 -14.32325 -11.29 5.11
tp @s[scores={cutSceneTimer=402}] 5554.1 91.44052 -14.30859 -11.29 5.11
tp @s[scores={cutSceneTimer=403}] 5554.103 91.43919 -14.29394 -11.29 5.11
tp @s[scores={cutSceneTimer=404}] 5554.106 91.43785 -14.27929 -11.29 5.11
tp @s[scores={cutSceneTimer=405}] 5554.109 91.43652 -14.26464 -11.29 5.11
tp @s[scores={cutSceneTimer=406}] 5554.112 91.43518 -14.24999 -11.29 5.11
tp @s[scores={cutSceneTimer=407}] 5554.115 91.43385 -14.23534 -11.29 5.11
tp @s[scores={cutSceneTimer=408}] 5554.118 91.43251 -14.22069 -11.29 5.11
tp @s[scores={cutSceneTimer=409}] 5554.121 91.43118 -14.20603 -11.29 5.11
tp @s[scores={cutSceneTimer=410}] 5554.124 91.42984 -14.19138 -11.29 5.11
tp @s[scores={cutSceneTimer=411}] 5554.126 91.4285 -14.17673 -11.29 5.11
tp @s[scores={cutSceneTimer=412}] 5554.129 91.42717 -14.16208 -11.29 5.11
tp @s[scores={cutSceneTimer=413}] 5554.132 91.42583 -14.14743 -11.29 5.11
tp @s[scores={cutSceneTimer=414}] 5554.135 91.4245 -14.13278 -11.29 5.11
tp @s[scores={cutSceneTimer=415}] 5554.138 91.42316 -14.11813 -11.29 5.11
tp @s[scores={cutSceneTimer=416}] 5554.141 91.42183 -14.10348 -11.29 5.11
tp @s[scores={cutSceneTimer=417}] 5554.144 91.42049 -14.08882 -11.29 5.11
tp @s[scores={cutSceneTimer=418}] 5554.147 91.41916 -14.07417 -11.29 5.11
tp @s[scores={cutSceneTimer=419}] 5554.15 91.41782 -14.05952 -11.29 5.11
tp @s[scores={cutSceneTimer=420}] 5554.153 91.41649 -14.04487 -11.29 5.11
tp @s[scores={cutSceneTimer=421}] 5554.156 91.41515 -14.03022 -11.29 5.11
tp @s[scores={cutSceneTimer=422}] 5554.159 91.41382 -14.01557 -11.29 5.11
tp @s[scores={cutSceneTimer=423}] 5554.162 91.41248 -14.00092 -11.29 5.11
tp @s[scores={cutSceneTimer=424}] 5554.165 91.41115 -13.98627 -11.29 5.11
tp @s[scores={cutSceneTimer=425}] 5554.167 91.40981 -13.97161 -11.29 5.11
tp @s[scores={cutSceneTimer=426}] 5554.17 91.40848 -13.95696 -11.29 5.11
tp @s[scores={cutSceneTimer=427}] 5554.173 91.40714 -13.94231 -11.29 5.11
tp @s[scores={cutSceneTimer=428}] 5554.176 91.40581 -13.92766 -11.29 5.11
tp @s[scores={cutSceneTimer=429}] 5554.179 91.40447 -13.91301 -11.29 5.11
tp @s[scores={cutSceneTimer=430}] 5554.182 91.40314 -13.89836 -11.29 5.11
tp @s[scores={cutSceneTimer=431}] 5554.185 91.4018 -13.88371 -11.29 5.11
tp @s[scores={cutSceneTimer=432}] 5554.188 91.40047 -13.86905 -11.29 5.11
tp @s[scores={cutSceneTimer=433}] 5554.191 91.39913 -13.8544 -11.29 5.11
tp @s[scores={cutSceneTimer=434}] 5554.194 91.3978 -13.83975 -11.29 5.11
tp @s[scores={cutSceneTimer=435}] 5554.197 91.39646 -13.8251 -11.29 5.11
tp @s[scores={cutSceneTimer=436}] 5554.2 91.39513 -13.81045 -11.29 5.11
tp @s[scores={cutSceneTimer=437}] 5554.203 91.39379 -13.7958 -11.29 5.11
tp @s[scores={cutSceneTimer=438}] 5554.206 91.39246 -13.78115 -11.29 5.11
tp @s[scores={cutSceneTimer=439}] 5554.208 91.39112 -13.7665 -11.29 5.11
tp @s[scores={cutSceneTimer=440}] 5554.211 91.38979 -13.75184 -11.29 5.11
tp @s[scores={cutSceneTimer=441}] 5554.214 91.38845 -13.73719 -11.29 5.11
tp @s[scores={cutSceneTimer=442}] 5554.217 91.38712 -13.72254 -11.29 5.11
tp @s[scores={cutSceneTimer=443}] 5554.22 91.38578 -13.70789 -11.29 5.11
tp @s[scores={cutSceneTimer=444}] 5554.223 91.38445 -13.69324 -11.29 5.11
tp @s[scores={cutSceneTimer=445}] 5554.226 91.38311 -13.67859 -11.29 5.11
tp @s[scores={cutSceneTimer=446}] 5554.229 91.38177 -13.66394 -11.29 5.11
tp @s[scores={cutSceneTimer=447}] 5554.232 91.38044 -13.64929 -11.29 5.11
tp @s[scores={cutSceneTimer=448}] 5554.235 91.3791 -13.63463 -11.29 5.11
tp @s[scores={cutSceneTimer=449}] 5554.238 91.37777 -13.61998 -11.29 5.11
tp @s[scores={cutSceneTimer=450}] 5554.241 91.37643 -13.60533 -11.29 5.11
tp @s[scores={cutSceneTimer=451}] 5554.244 91.3751 -13.59068 -11.29 5.11
tp @s[scores={cutSceneTimer=452}] 5554.247 91.37376 -13.57603 -11.29 5.11
tp @s[scores={cutSceneTimer=453}] 5554.25 91.37243 -13.56138 -11.29 5.11
tp @s[scores={cutSceneTimer=454}] 5554.252 91.37109 -13.54673 -11.29 5.11
tp @s[scores={cutSceneTimer=455}] 5554.255 91.36976 -13.53207 -11.29 5.11
tp @s[scores={cutSceneTimer=456}] 5554.258 91.36842 -13.51742 -11.29 5.11
tp @s[scores={cutSceneTimer=457}] 5554.261 91.36709 -13.50277 -11.29 5.11
tp @s[scores={cutSceneTimer=458}] 5554.264 91.36575 -13.48812 -11.29 5.11
tp @s[scores={cutSceneTimer=459}] 5554.267 91.36442 -13.47347 -11.29 5.11
tp @s[scores={cutSceneTimer=460}] 5554.27 91.36308 -13.45882 -11.29 5.11
tp @s[scores={cutSceneTimer=461}] 5554.273 91.36175 -13.44417 -11.29 5.11
tp @s[scores={cutSceneTimer=462}] 5554.276 91.36041 -13.42952 -11.29 5.11
tp @s[scores={cutSceneTimer=463}] 5554.279 91.35908 -13.41486 -11.29 5.11
tp @s[scores={cutSceneTimer=464}] 5554.282 91.35774 -13.40021 -11.29 5.11
tp @s[scores={cutSceneTimer=465}] 5554.285 91.35641 -13.38556 -11.29 5.11
tp @s[scores={cutSceneTimer=466}] 5554.288 91.35507 -13.37091 -11.29 5.11
tp @s[scores={cutSceneTimer=467}] 5554.291 91.35374 -13.35626 -11.29 5.11
tp @s[scores={cutSceneTimer=468}] 5554.293 91.3524 -13.34161 -11.29 5.11
tp @s[scores={cutSceneTimer=469}] 5554.296 91.35107 -13.32696 -11.29 5.11
tp @s[scores={cutSceneTimer=470}] 5554.299 91.34973 -13.31231 -11.29 5.11
tp @s[scores={cutSceneTimer=471}] 5554.302 91.3484 -13.29765 -11.29 5.11
tp @s[scores={cutSceneTimer=472}] 5554.305 91.34706 -13.283 -11.29 5.11
tp @s[scores={cutSceneTimer=473}] 5554.308 91.34573 -13.26835 -11.29 5.11
tp @s[scores={cutSceneTimer=474}] 5554.311 91.34439 -13.2537 -11.29 5.11
tp @s[scores={cutSceneTimer=475}] 5554.314 91.34306 -13.23905 -11.29 5.11
tp @s[scores={cutSceneTimer=476}] 5554.317 91.34172 -13.2244 -11.29 5.11
tp @s[scores={cutSceneTimer=477}] 5554.32 91.34039 -13.20975 -11.29 5.11
tp @s[scores={cutSceneTimer=478}] 5554.323 91.33905 -13.1951 -11.29 5.11
tp @s[scores={cutSceneTimer=479}] 5554.326 91.33772 -13.18044 -11.29 5.11
tp @s[scores={cutSceneTimer=480}] 5554.329 91.33638 -13.16579 -11.29 5.11
tp @s[scores={cutSceneTimer=481}] 5554.332 91.33504 -13.15114 -11.29 5.11
tp @s[scores={cutSceneTimer=482}] 5554.334 91.33371 -13.13649 -11.29 5.11
tp @s[scores={cutSceneTimer=483}] 5554.337 91.33237 -13.12184 -11.29 5.11
tp @s[scores={cutSceneTimer=484}] 5554.34 91.33104 -13.10719 -11.29 5.11
tp @s[scores={cutSceneTimer=485}] 5554.343 91.3297 -13.09254 -11.29 5.11
tp @s[scores={cutSceneTimer=486}] 5554.346 91.32837 -13.07788 -11.29 5.11
tp @s[scores={cutSceneTimer=487}] 5554.349 91.32703 -13.06323 -11.29 5.11
tp @s[scores={cutSceneTimer=488}] 5554.352 91.3257 -13.04858 -11.29 5.11
tp @s[scores={cutSceneTimer=489}] 5554.355 91.32436 -13.03393 -11.29 5.11
tp @s[scores={cutSceneTimer=490}] 5554.358 91.32303 -13.01928 -11.29 5.11
tp @s[scores={cutSceneTimer=491}] 5554.361 91.32169 -13.00463 -11.29 5.11
tp @s[scores={cutSceneTimer=492}] 5554.364 91.32036 -12.98998 -11.29 5.11
tp @s[scores={cutSceneTimer=493}] 5554.367 91.31902 -12.97533 -11.29 5.11
tp @s[scores={cutSceneTimer=494}] 5554.37 91.31769 -12.96067 -11.29 5.11
tp @s[scores={cutSceneTimer=495}] 5554.373 91.31635 -12.94602 -11.29 5.11
tp @s[scores={cutSceneTimer=496}] 5554.375 91.31502 -12.93137 -11.29 5.11
tp @s[scores={cutSceneTimer=497}] 5554.378 91.31368 -12.91672 -11.29 5.11
tp @s[scores={cutSceneTimer=498}] 5554.381 91.31235 -12.90207 -11.29 5.11
tp @s[scores={cutSceneTimer=499}] 5554.384 91.31101 -12.88742 -11.29 5.11
tp @s[scores={cutSceneTimer=500}] 5554.387 91.30968 -12.87277 -11.29 5.11
tp @s[scores={cutSceneTimer=501}] 5554.39 91.30834 -12.85812 -11.29 5.11
tp @s[scores={cutSceneTimer=502}] 5554.393 91.30701 -12.84346 -11.29 5.11
tp @s[scores={cutSceneTimer=503}] 5554.396 91.30567 -12.82881 -11.29 5.11
tp @s[scores={cutSceneTimer=504}] 5554.399 91.30434 -12.81416 -11.29 5.11
tp @s[scores={cutSceneTimer=505}] 5554.402 91.303 -12.79951 -11.29 5.11
tp @s[scores={cutSceneTimer=506}] 5554.405 91.30167 -12.78486 -11.29 5.11
tp @s[scores={cutSceneTimer=507}] 5554.408 91.30033 -12.77021 -11.29 5.11
tp @s[scores={cutSceneTimer=508}] 5554.411 91.299 -12.75556 -11.29 5.11
tp @s[scores={cutSceneTimer=509}] 5554.414 91.29766 -12.7409 -11.29 5.11
tp @s[scores={cutSceneTimer=510}] 5554.417 91.29633 -12.72625 -11.29 5.11
tp @s[scores={cutSceneTimer=511}] 5554.419 91.29499 -12.7116 -11.29 5.11
tp @s[scores={cutSceneTimer=512}] 5554.422 91.29366 -12.69695 -11.29 5.11
tp @s[scores={cutSceneTimer=513}] 5554.425 91.29232 -12.6823 -11.29 5.11
tp @s[scores={cutSceneTimer=514}] 5554.428 91.29099 -12.66765 -11.29 5.11
tp @s[scores={cutSceneTimer=515}] 5554.431 91.28965 -12.653 -11.29 5.11
tp @s[scores={cutSceneTimer=516}] 5554.434 91.28831 -12.63835 -11.29 5.11
tp @s[scores={cutSceneTimer=517}] 5554.437 91.28698 -12.62369 -11.29 5.11
tp @s[scores={cutSceneTimer=518}] 5554.44 91.28564 -12.60904 -11.29 5.11
tp @s[scores={cutSceneTimer=519}] 5554.443 91.28431 -12.59439 -11.29 5.11
tp @s[scores={cutSceneTimer=520}] 5554.446 91.28297 -12.57974 -11.29 5.11
tp @s[scores={cutSceneTimer=521}] 5554.449 91.28164 -12.56509 -11.29 5.11
tp @s[scores={cutSceneTimer=522}] 5554.452 91.2803 -12.55044 -11.29 5.11
tp @s[scores={cutSceneTimer=523}] 5554.455 91.27897 -12.53579 -11.29 5.11
tp @s[scores={cutSceneTimer=524}] 5554.458 91.27763 -12.52114 -11.29 5.11
tp @s[scores={cutSceneTimer=525}] 5554.46 91.2763 -12.50648 -11.29 5.11
tp @s[scores={cutSceneTimer=526}] 5554.463 91.27496 -12.49183 -11.29 5.11
tp @s[scores={cutSceneTimer=527}] 5554.466 91.27363 -12.47718 -11.29 5.11
tp @s[scores={cutSceneTimer=528}] 5554.469 91.27229 -12.46253 -11.29 5.11
tp @s[scores={cutSceneTimer=529}] 5554.472 91.27096 -12.44788 -11.29 5.11
tp @s[scores={cutSceneTimer=530}] 5554.475 91.26962 -12.43323 -11.29 5.11
tp @s[scores={cutSceneTimer=531}] 5554.478 91.26829 -12.41858 -11.29 5.11
tp @s[scores={cutSceneTimer=532}] 5554.481 91.26695 -12.40392 -11.29 5.11
tp @s[scores={cutSceneTimer=533}] 5554.484 91.26562 -12.38927 -11.29 5.11
tp @s[scores={cutSceneTimer=534}] 5554.487 91.26428 -12.37462 -11.29 5.11
tp @s[scores={cutSceneTimer=535}] 5554.49 91.26295 -12.35997 -11.29 5.11
tp @s[scores={cutSceneTimer=536}] 5554.493 91.26161 -12.34532 -11.29 5.11
tp @s[scores={cutSceneTimer=537}] 5554.496 91.26028 -12.33067 -11.29 5.11
tp @s[scores={cutSceneTimer=538}] 5554.499 91.25894 -12.31602 -11.29 5.11
tp @s[scores={cutSceneTimer=539}] 5554.501 91.25761 -12.30137 -11.29 5.11
tp @s[scores={cutSceneTimer=540}] 5554.504 91.25627 -12.28671 -11.29 5.11
tp @s[scores={cutSceneTimer=541}] 5554.507 91.25494 -12.27206 -11.29 5.11
tp @s[scores={cutSceneTimer=542}] 5554.51 91.2536 -12.25741 -11.29 5.11
tp @s[scores={cutSceneTimer=543}] 5554.513 91.25227 -12.24276 -11.29 5.11
tp @s[scores={cutSceneTimer=544}] 5554.516 91.25093 -12.22811 -11.29 5.11
tp @s[scores={cutSceneTimer=545}] 5554.519 91.2496 -12.21346 -11.29 5.11
tp @s[scores={cutSceneTimer=546}] 5554.522 91.24826 -12.19881 -11.29 5.11
tp @s[scores={cutSceneTimer=547}] 5554.525 91.24693 -12.18416 -11.29 5.11
tp @s[scores={cutSceneTimer=548}] 5554.528 91.24559 -12.1695 -11.29 5.11
tp @s[scores={cutSceneTimer=549}] 5554.531 91.24426 -12.15485 -11.29 5.11
tp @s[scores={cutSceneTimer=550}] 5554.534 91.24292 -12.1402 -11.29 5.11
execute as @s[scores={cutSceneTimer=530}] as @s run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=340},tag=cutsceneLeader] run tag @e[tag=lupinClassroomFpEngine,limit=1] remove cutsceneStop
execute as @s[scores={cutSceneTimer=530},tag=cutsceneLeader] as @s run setblock 5561 75 -73 minecraft:redstone_block



# ¤Lupin:¤ I've set up an obstacle course with targets for you to make your way through, so you can practice the spell.
execute as @s[scores={cutSceneTimer=490},tag=cutsceneLeader] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=490..980}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"                     "}]

execute as @s[scores={cutSceneTimer=550}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=551}] 5567.31 45.23 -70.44 35.12 -9.110001
tp @s[scores={cutSceneTimer=552}] 5567.31 45.23 -70.44 35.27 -9.210001
tp @s[scores={cutSceneTimer=553}] 5567.31 45.23 -70.44 35.42001 -9.310001
tp @s[scores={cutSceneTimer=554}] 5567.31 45.23 -70.44 35.57001 -9.410002
tp @s[scores={cutSceneTimer=555}] 5567.31 45.23 -70.44 35.72001 -9.510002
tp @s[scores={cutSceneTimer=556}] 5567.31 45.23 -70.44 35.87001 -9.610003
tp @s[scores={cutSceneTimer=557}] 5567.31 45.23 -70.44 36.02001 -9.710003
tp @s[scores={cutSceneTimer=558}] 5567.31 45.23 -70.44 36.17001 -9.810003
tp @s[scores={cutSceneTimer=559}] 5567.31 45.23 -70.44 36.32001 -9.910004
tp @s[scores={cutSceneTimer=560}] 5567.31 45.23 -70.44 36.47002 -10.01
tp @s[scores={cutSceneTimer=561}] 5567.31 45.23 -70.44 36.62002 -10.11
tp @s[scores={cutSceneTimer=562}] 5567.31 45.23 -70.44 36.77002 -10.21
tp @s[scores={cutSceneTimer=563}] 5567.31 45.23 -70.44 36.92002 -10.31001
tp @s[scores={cutSceneTimer=564}] 5567.31 45.23 -70.44 37.07002 -10.41001
tp @s[scores={cutSceneTimer=565}] 5567.31 45.23 -70.44 37.22002 -10.51001
tp @s[scores={cutSceneTimer=566}] 5567.31 45.23 -70.44 37.37003 -10.61001
tp @s[scores={cutSceneTimer=567}] 5567.31 45.23 -70.44 37.52003 -10.71001
tp @s[scores={cutSceneTimer=568}] 5567.31 45.23 -70.44 37.67003 -10.81001
tp @s[scores={cutSceneTimer=569}] 5567.31 45.23 -70.44 37.82003 -10.91001
tp @s[scores={cutSceneTimer=570}] 5567.31 45.23 -70.44 37.97003 -11.01001
tp @s[scores={cutSceneTimer=571}] 5567.31 45.23 -70.44 38.12003 -11.11001
tp @s[scores={cutSceneTimer=572}] 5567.31 45.23 -70.44 38.27003 -11.21001
tp @s[scores={cutSceneTimer=573}] 5567.31 45.23 -70.44 38.42004 -11.31001
tp @s[scores={cutSceneTimer=574}] 5567.31 45.23 -70.44 38.57004 -11.41001
tp @s[scores={cutSceneTimer=575}] 5567.31 45.23 -70.44 38.72004 -11.51001
tp @s[scores={cutSceneTimer=576}] 5567.31 45.23 -70.44 38.87004 -11.61001
tp @s[scores={cutSceneTimer=577}] 5567.31 45.23 -70.44 39.02004 -11.71001
tp @s[scores={cutSceneTimer=578}] 5567.31 45.23 -70.44 39.17004 -11.81001
tp @s[scores={cutSceneTimer=579}] 5567.31 45.23 -70.44 39.32005 -11.91001
tp @s[scores={cutSceneTimer=580}] 5567.31 45.23 -70.44 39.47005 -12.01001
tp @s[scores={cutSceneTimer=581}] 5567.31 45.23 -70.44 39.62005 -12.11001
tp @s[scores={cutSceneTimer=582}] 5567.31 45.23 -70.44 39.77005 -12.21001
tp @s[scores={cutSceneTimer=583}] 5567.31 45.23 -70.44 39.92005 -12.31001
tp @s[scores={cutSceneTimer=584}] 5567.31 45.23 -70.44 40.07005 -12.41001
tp @s[scores={cutSceneTimer=585}] 5567.31 45.23 -70.44 40.22005 -12.51001
tp @s[scores={cutSceneTimer=586}] 5567.31 45.23 -70.44 40.37006 -12.61001
tp @s[scores={cutSceneTimer=587}] 5567.31 45.23 -70.44 40.52006 -12.71001
tp @s[scores={cutSceneTimer=588}] 5567.31 45.23 -70.44 40.67006 -12.81001
tp @s[scores={cutSceneTimer=589}] 5567.31 45.23 -70.44 40.82006 -12.91002
tp @s[scores={cutSceneTimer=590}] 5567.31 45.23 -70.44 40.97006 -13.01002
tp @s[scores={cutSceneTimer=591}] 5567.31 45.23 -70.44 41.12006 -13.11002
tp @s[scores={cutSceneTimer=592}] 5567.31 45.23 -70.44 41.27007 -13.21002
tp @s[scores={cutSceneTimer=593}] 5567.31 45.23 -70.44 41.42007 -13.31002
tp @s[scores={cutSceneTimer=594}] 5567.31 45.23 -70.44 41.57007 -13.41002
tp @s[scores={cutSceneTimer=595}] 5567.31 45.23 -70.44 41.72007 -13.51002
tp @s[scores={cutSceneTimer=596}] 5567.31 45.23 -70.44 41.87007 -13.61002
tp @s[scores={cutSceneTimer=597}] 5567.31 45.23 -70.44 42.02007 -13.71002
tp @s[scores={cutSceneTimer=598}] 5567.31 45.23 -70.44 42.17007 -13.81002
tp @s[scores={cutSceneTimer=599}] 5567.31 45.23 -70.44 42.32008 -13.91002
tp @s[scores={cutSceneTimer=600}] 5567.31 45.23 -70.44 42.47008 -14.01002
tp @s[scores={cutSceneTimer=601}] 5567.31 45.23 -70.44 42.62008 -14.11002
tp @s[scores={cutSceneTimer=602}] 5567.31 45.23 -70.44 42.77008 -14.21002
tp @s[scores={cutSceneTimer=603}] 5567.31 45.23 -70.44 42.92008 -14.31002
tp @s[scores={cutSceneTimer=604}] 5567.31 45.23 -70.44 43.07008 -14.41002
tp @s[scores={cutSceneTimer=605}] 5567.31 45.23 -70.44 43.22009 -14.51002
tp @s[scores={cutSceneTimer=606}] 5567.31 45.23 -70.44 43.37009 -14.61002
tp @s[scores={cutSceneTimer=607}] 5567.31 45.23 -70.44 43.52009 -14.71002
tp @s[scores={cutSceneTimer=608}] 5567.31 45.23 -70.44 43.67009 -14.81002
tp @s[scores={cutSceneTimer=609}] 5567.31 45.23 -70.44 43.82009 -14.91002
tp @s[scores={cutSceneTimer=610}] 5567.31 45.23 -70.44 43.97009 -15.01002
tp @s[scores={cutSceneTimer=611}] 5567.31 45.23 -70.44 44.12009 -15.11002
tp @s[scores={cutSceneTimer=612}] 5567.31 45.23 -70.44 44.2701 -15.21002
tp @s[scores={cutSceneTimer=613}] 5567.31 45.23 -70.44 44.4201 -15.31002
tp @s[scores={cutSceneTimer=614}] 5567.31 45.23 -70.44 44.5701 -15.41002
tp @s[scores={cutSceneTimer=615}] 5567.31 45.23 -70.44 44.7201 -15.51003
tp @s[scores={cutSceneTimer=616}] 5567.31 45.23 -70.44 44.8701 -15.61003
tp @s[scores={cutSceneTimer=617}] 5567.31 45.23 -70.44 45.0201 -15.71003
tp @s[scores={cutSceneTimer=618}] 5567.31 45.23 -70.44 45.1701 -15.81003
tp @s[scores={cutSceneTimer=619}] 5567.31 45.23 -70.44 45.32011 -15.91003
tp @s[scores={cutSceneTimer=620}] 5567.31 45.23 -70.44 45.47011 -16.01003
tp @s[scores={cutSceneTimer=621}] 5567.31 45.23 -70.44 45.62011 -16.11003
tp @s[scores={cutSceneTimer=622}] 5567.31 45.23 -70.44 45.77011 -16.21003
tp @s[scores={cutSceneTimer=623}] 5567.31 45.23 -70.44 45.92011 -16.31003
tp @s[scores={cutSceneTimer=624}] 5567.31 45.23 -70.44 46.07011 -16.41003
tp @s[scores={cutSceneTimer=625}] 5567.31 45.23 -70.44 46.22012 -16.51003
tp @s[scores={cutSceneTimer=626}] 5567.31 45.23 -70.44 46.37012 -16.61003
tp @s[scores={cutSceneTimer=627}] 5567.31 45.23 -70.44 46.52012 -16.71003
tp @s[scores={cutSceneTimer=628}] 5567.31 45.23 -70.44 46.67012 -16.81003
tp @s[scores={cutSceneTimer=629}] 5567.31 45.23 -70.44 46.82012 -16.91003
tp @s[scores={cutSceneTimer=630}] 5567.31 45.23 -70.44 46.97012 -17.01003
tp @s[scores={cutSceneTimer=631}] 5567.31 45.23 -70.44 47.12012 -17.11003
tp @s[scores={cutSceneTimer=632}] 5567.31 45.23 -70.44 47.27013 -17.21003
tp @s[scores={cutSceneTimer=633}] 5567.31 45.23 -70.44 47.42013 -17.31003
tp @s[scores={cutSceneTimer=634}] 5567.31 45.23 -70.44 47.57013 -17.41003
tp @s[scores={cutSceneTimer=635}] 5567.31 45.23 -70.44 47.72013 -17.51003
tp @s[scores={cutSceneTimer=636}] 5567.31 45.23 -70.44 47.87013 -17.61003
tp @s[scores={cutSceneTimer=637}] 5567.31 45.23 -70.44 48.02013 -17.71003
tp @s[scores={cutSceneTimer=638}] 5567.31 45.23 -70.44 48.17014 -17.81003
tp @s[scores={cutSceneTimer=639}] 5567.31 45.23 -70.44 48.32014 -17.91003
tp @s[scores={cutSceneTimer=640}] 5567.31 45.23 -70.44 48.47014 -18.01003
tp @s[scores={cutSceneTimer=641}] 5567.31 45.23 -70.44 48.62014 -18.11003
tp @s[scores={cutSceneTimer=642}] 5567.31 45.23 -70.44 48.77014 -18.21004
tp @s[scores={cutSceneTimer=643}] 5567.31 45.23 -70.44 48.92014 -18.31004
tp @s[scores={cutSceneTimer=644}] 5567.31 45.23 -70.44 49.07014 -18.41004
tp @s[scores={cutSceneTimer=645}] 5567.31 45.23 -70.44 49.22015 -18.51004
tp @s[scores={cutSceneTimer=646}] 5567.31 45.23 -70.44 49.37015 -18.61004
tp @s[scores={cutSceneTimer=647}] 5567.31 45.23 -70.44 49.52015 -18.71004
tp @s[scores={cutSceneTimer=648}] 5567.31 45.23 -70.44 49.67015 -18.81004
tp @s[scores={cutSceneTimer=649}] 5567.31 45.23 -70.44 49.82015 -18.91004
tp @s[scores={cutSceneTimer=650}] 5567.31 45.23 -70.44 49.97015 -19.01004
tp @s[scores={cutSceneTimer=651}] 5567.31 45.23 -70.44 50.12016 -19.11004
tp @s[scores={cutSceneTimer=652}] 5567.31 45.23 -70.44 50.27016 -19.21004
tp @s[scores={cutSceneTimer=653}] 5567.31 45.23 -70.44 50.42016 -19.31004
tp @s[scores={cutSceneTimer=654}] 5567.31 45.23 -70.44 50.57016 -19.41004
tp @s[scores={cutSceneTimer=655}] 5567.31 45.23 -70.44 50.72016 -19.51004
tp @s[scores={cutSceneTimer=656}] 5567.31 45.23 -70.44 50.87016 -19.61004
tp @s[scores={cutSceneTimer=657}] 5567.31 45.23 -70.44 51.02016 -19.71004
tp @s[scores={cutSceneTimer=658}] 5567.31 45.23 -70.44 51.17017 -19.81004
tp @s[scores={cutSceneTimer=659}] 5567.31 45.23 -70.44 51.32017 -19.91004
tp @s[scores={cutSceneTimer=660}] 5567.31 45.23 -70.44 51.47017 -20.01004
tp @s[scores={cutSceneTimer=661}] 5567.31 45.23 -70.44 51.62017 -20.11004
tp @s[scores={cutSceneTimer=662}] 5567.31 45.23 -70.44 51.77017 -20.21004
tp @s[scores={cutSceneTimer=663}] 5567.31 45.23 -70.44 51.92017 -20.31004
tp @s[scores={cutSceneTimer=664}] 5567.31 45.23 -70.44 52.07018 -20.41004
tp @s[scores={cutSceneTimer=665}] 5567.31 45.23 -70.44 52.22018 -20.51004
tp @s[scores={cutSceneTimer=666}] 5567.31 45.23 -70.44 52.37018 -20.61004
tp @s[scores={cutSceneTimer=667}] 5567.31 45.23 -70.44 52.52018 -20.71004
tp @s[scores={cutSceneTimer=668}] 5567.31 45.23 -70.44 52.67018 -20.81005
tp @s[scores={cutSceneTimer=669}] 5567.31 45.23 -70.44 52.82018 -20.91005
tp @s[scores={cutSceneTimer=670}] 5567.31 45.23 -70.44 52.97018 -21.01005
tp @s[scores={cutSceneTimer=671}] 5567.31 45.23 -70.44 53.12019 -21.11005
tp @s[scores={cutSceneTimer=672}] 5567.31 45.23 -70.44 53.27019 -21.21005
tp @s[scores={cutSceneTimer=673}] 5567.31 45.23 -70.44 53.42019 -21.31005
tp @s[scores={cutSceneTimer=674}] 5567.31 45.23 -70.44 53.57019 -21.41005
tp @s[scores={cutSceneTimer=675}] 5567.31 45.23 -70.44 53.72019 -21.51005
tp @s[scores={cutSceneTimer=676}] 5567.31 45.23 -70.44 53.87019 -21.61005
tp @s[scores={cutSceneTimer=677}] 5567.31 45.23 -70.44 54.0202 -21.71005
tp @s[scores={cutSceneTimer=678}] 5567.31 45.23 -70.44 54.1702 -21.81005
tp @s[scores={cutSceneTimer=679}] 5567.31 45.23 -70.44 54.3202 -21.91005
tp @s[scores={cutSceneTimer=680}] 5567.31 45.23 -70.44 54.4702 -22.01005
tp @s[scores={cutSceneTimer=681}] 5567.31 45.23 -70.44 54.6202 -22.11005
tp @s[scores={cutSceneTimer=682}] 5567.31 45.23 -70.44 54.7702 -22.21005
tp @s[scores={cutSceneTimer=683}] 5567.31 45.23 -70.44 54.9202 -22.31005
tp @s[scores={cutSceneTimer=684}] 5567.31 45.23 -70.44 55.07021 -22.41005
tp @s[scores={cutSceneTimer=685}] 5567.31 45.23 -70.44 55.22021 -22.51005
tp @s[scores={cutSceneTimer=686}] 5567.31 45.23 -70.44 55.37021 -22.61005
tp @s[scores={cutSceneTimer=687}] 5567.31 45.23 -70.44 55.52021 -22.71005
tp @s[scores={cutSceneTimer=688}] 5567.31 45.23 -70.44 55.67021 -22.81005
tp @s[scores={cutSceneTimer=689}] 5567.31 45.23 -70.44 55.82021 -22.91005
tp @s[scores={cutSceneTimer=690}] 5567.31 45.23 -70.44 55.97021 -23.01005
tp @s[scores={cutSceneTimer=691}] 5567.31 45.23 -70.44 56.12022 -23.11005
tp @s[scores={cutSceneTimer=692}] 5567.31 45.23 -70.44 56.27022 -23.21005
tp @s[scores={cutSceneTimer=693}] 5567.31 45.23 -70.44 56.42022 -23.31005
tp @s[scores={cutSceneTimer=694}] 5567.31 45.23 -70.44 56.57022 -23.41006
tp @s[scores={cutSceneTimer=695}] 5567.31 45.23 -70.44 56.72022 -23.51006
tp @s[scores={cutSceneTimer=696}] 5567.31 45.23 -70.44 56.87022 -23.61006
tp @s[scores={cutSceneTimer=697}] 5567.31 45.23 -70.44 57.02023 -23.71006
tp @s[scores={cutSceneTimer=698}] 5567.31 45.23 -70.44 57.17023 -23.81006
tp @s[scores={cutSceneTimer=699}] 5567.31 45.23 -70.44 57.32023 -23.91006
tp @s[scores={cutSceneTimer=700}] 5567.31 45.23 -70.44 57.47023 -24.01006
execute as @s[scores={cutSceneTimer=680}] as @s run function hp:cutscenes/fade_in


execute as @s[scores={cutSceneTimer=700}] run function hp:music/music/eerie
execute as @s[scores={cutSceneTimer=700}] run scoreboard players set @s queuedMusic 0
execute as @s[scores={cutSceneTimer=700}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=701}] 5508.26 45.24 -41.55 160.19 -24.29
tp @s[scores={cutSceneTimer=702}] 5508.26 45.24 -41.55 160.19 -24.14
tp @s[scores={cutSceneTimer=703}] 5508.26 45.24 -41.55 160.19 -23.99
tp @s[scores={cutSceneTimer=704}] 5508.26 45.24 -41.55 160.19 -23.84
tp @s[scores={cutSceneTimer=705}] 5508.26 45.24 -41.55 160.19 -23.69
tp @s[scores={cutSceneTimer=706}] 5508.26 45.24 -41.55 160.19 -23.54
tp @s[scores={cutSceneTimer=707}] 5508.26 45.24 -41.55 160.19 -23.39
tp @s[scores={cutSceneTimer=708}] 5508.26 45.24 -41.55 160.19 -23.24
tp @s[scores={cutSceneTimer=709}] 5508.26 45.24 -41.55 160.19 -23.09
tp @s[scores={cutSceneTimer=710}] 5508.26 45.24 -41.55 160.19 -22.94
tp @s[scores={cutSceneTimer=711}] 5508.26 45.24 -41.55 160.19 -22.79
tp @s[scores={cutSceneTimer=712}] 5508.26 45.24 -41.55 160.19 -22.64001
tp @s[scores={cutSceneTimer=713}] 5508.26 45.24 -41.55 160.19 -22.49001
tp @s[scores={cutSceneTimer=714}] 5508.26 45.24 -41.55 160.19 -22.34001
tp @s[scores={cutSceneTimer=715}] 5508.26 45.24 -41.55 160.19 -22.19001
tp @s[scores={cutSceneTimer=716}] 5508.26 45.24 -41.55 160.19 -22.04001
tp @s[scores={cutSceneTimer=717}] 5508.26 45.24 -41.55 160.19 -21.89001
tp @s[scores={cutSceneTimer=718}] 5508.26 45.24 -41.55 160.19 -21.74001
tp @s[scores={cutSceneTimer=719}] 5508.26 45.24 -41.55 160.19 -21.59001
tp @s[scores={cutSceneTimer=720}] 5508.26 45.24 -41.55 160.19 -21.44001
tp @s[scores={cutSceneTimer=721}] 5508.26 45.24 -41.55 160.19 -21.29001
tp @s[scores={cutSceneTimer=722}] 5508.26 45.24 -41.55 160.19 -21.14001
tp @s[scores={cutSceneTimer=723}] 5508.26 45.24 -41.55 160.19 -20.99001
tp @s[scores={cutSceneTimer=724}] 5508.26 45.24 -41.55 160.19 -20.84001
tp @s[scores={cutSceneTimer=725}] 5508.26 45.24 -41.55 160.19 -20.69001
tp @s[scores={cutSceneTimer=726}] 5508.26 45.24 -41.55 160.19 -20.54001
tp @s[scores={cutSceneTimer=727}] 5508.26 45.24 -41.55 160.19 -20.39001
tp @s[scores={cutSceneTimer=728}] 5508.26 45.24 -41.55 160.19 -20.24001
tp @s[scores={cutSceneTimer=729}] 5508.26 45.24 -41.55 160.19 -20.09001
tp @s[scores={cutSceneTimer=730}] 5508.26 45.24 -41.55 160.19 -19.94001
tp @s[scores={cutSceneTimer=731}] 5508.26 45.24 -41.55 160.19 -19.79001
tp @s[scores={cutSceneTimer=732}] 5508.26 45.24 -41.55 160.19 -19.64001
tp @s[scores={cutSceneTimer=733}] 5508.26 45.24 -41.55 160.19 -19.49001
tp @s[scores={cutSceneTimer=734}] 5508.26 45.24 -41.55 160.19 -19.34001
tp @s[scores={cutSceneTimer=735}] 5508.26 45.24 -41.55 160.19 -19.19001
tp @s[scores={cutSceneTimer=736}] 5508.26 45.24 -41.55 160.19 -19.04001
tp @s[scores={cutSceneTimer=737}] 5508.26 45.24 -41.55 160.19 -18.89001
tp @s[scores={cutSceneTimer=738}] 5508.26 45.24 -41.55 160.19 -18.74002
tp @s[scores={cutSceneTimer=739}] 5508.26 45.24 -41.55 160.19 -18.59002
tp @s[scores={cutSceneTimer=740}] 5508.26 45.24 -41.55 160.19 -18.44002
tp @s[scores={cutSceneTimer=741}] 5508.26 45.24 -41.55 160.19 -18.29002
tp @s[scores={cutSceneTimer=742}] 5508.26 45.24 -41.55 160.19 -18.14002
tp @s[scores={cutSceneTimer=743}] 5508.26 45.24 -41.55 160.19 -17.99002
tp @s[scores={cutSceneTimer=744}] 5508.26 45.24 -41.55 160.19 -17.84002
tp @s[scores={cutSceneTimer=745}] 5508.26 45.24 -41.55 160.19 -17.69002
tp @s[scores={cutSceneTimer=746}] 5508.26 45.24 -41.55 160.19 -17.54002
tp @s[scores={cutSceneTimer=747}] 5508.26 45.24 -41.55 160.19 -17.39002
tp @s[scores={cutSceneTimer=748}] 5508.26 45.24 -41.55 160.19 -17.24002
tp @s[scores={cutSceneTimer=749}] 5508.26 45.24 -41.55 160.19 -17.09002
tp @s[scores={cutSceneTimer=750}] 5508.26 45.24 -41.55 160.19 -16.94002
tp @s[scores={cutSceneTimer=751}] 5508.26 45.24 -41.55 160.19 -16.79002
tp @s[scores={cutSceneTimer=752}] 5508.26 45.24 -41.55 160.19 -16.64002
tp @s[scores={cutSceneTimer=753}] 5508.26 45.24 -41.55 160.19 -16.49002
tp @s[scores={cutSceneTimer=754}] 5508.26 45.24 -41.55 160.19 -16.34002
tp @s[scores={cutSceneTimer=755}] 5508.26 45.24 -41.55 160.19 -16.19002
tp @s[scores={cutSceneTimer=756}] 5508.26 45.24 -41.55 160.19 -16.04002
tp @s[scores={cutSceneTimer=757}] 5508.26 45.24 -41.55 160.19 -15.89002
tp @s[scores={cutSceneTimer=758}] 5508.26 45.24 -41.55 160.19 -15.74002
tp @s[scores={cutSceneTimer=759}] 5508.26 45.24 -41.55 160.19 -15.59002
tp @s[scores={cutSceneTimer=760}] 5508.26 45.24 -41.55 160.19 -15.44002
tp @s[scores={cutSceneTimer=761}] 5508.26 45.24 -41.55 160.19 -15.29002
tp @s[scores={cutSceneTimer=762}] 5508.26 45.24 -41.55 160.19 -15.14002
tp @s[scores={cutSceneTimer=763}] 5508.26 45.24 -41.55 160.19 -14.99002
tp @s[scores={cutSceneTimer=764}] 5508.26 45.24 -41.55 160.19 -14.84002
tp @s[scores={cutSceneTimer=765}] 5508.26 45.24 -41.55 160.19 -14.69003
tp @s[scores={cutSceneTimer=766}] 5508.26 45.24 -41.55 160.19 -14.54003
tp @s[scores={cutSceneTimer=767}] 5508.26 45.24 -41.55 160.19 -14.39003
tp @s[scores={cutSceneTimer=768}] 5508.26 45.24 -41.55 160.19 -14.24003
tp @s[scores={cutSceneTimer=769}] 5508.26 45.24 -41.55 160.19 -14.09003
tp @s[scores={cutSceneTimer=770}] 5508.26 45.24 -41.55 160.19 -13.94003
tp @s[scores={cutSceneTimer=771}] 5508.26 45.24 -41.55 160.19 -13.79003
tp @s[scores={cutSceneTimer=772}] 5508.26 45.24 -41.55 160.19 -13.64003
tp @s[scores={cutSceneTimer=773}] 5508.26 45.24 -41.55 160.19 -13.49003
tp @s[scores={cutSceneTimer=774}] 5508.26 45.24 -41.55 160.19 -13.34003
tp @s[scores={cutSceneTimer=775}] 5508.26 45.24 -41.55 160.19 -13.19003
tp @s[scores={cutSceneTimer=776}] 5508.26 45.24 -41.55 160.19 -13.04003
tp @s[scores={cutSceneTimer=777}] 5508.26 45.24 -41.55 160.19 -12.89003
tp @s[scores={cutSceneTimer=778}] 5508.26 45.24 -41.55 160.19 -12.74003
tp @s[scores={cutSceneTimer=779}] 5508.26 45.24 -41.55 160.19 -12.59003
tp @s[scores={cutSceneTimer=780}] 5508.26 45.24 -41.55 160.19 -12.44003
tp @s[scores={cutSceneTimer=781}] 5508.26 45.24 -41.55 160.19 -12.29003
tp @s[scores={cutSceneTimer=782}] 5508.26 45.24 -41.55 160.19 -12.14003
tp @s[scores={cutSceneTimer=783}] 5508.26 45.24 -41.55 160.19 -11.99003
tp @s[scores={cutSceneTimer=784}] 5508.26 45.24 -41.55 160.19 -11.84003
tp @s[scores={cutSceneTimer=785}] 5508.26 45.24 -41.55 160.19 -11.69003
tp @s[scores={cutSceneTimer=786}] 5508.26 45.24 -41.55 160.19 -11.54003
tp @s[scores={cutSceneTimer=787}] 5508.26 45.24 -41.55 160.19 -11.39003
tp @s[scores={cutSceneTimer=788}] 5508.26 45.24 -41.55 160.19 -11.24003
tp @s[scores={cutSceneTimer=789}] 5508.26 45.24 -41.55 160.19 -11.09003
tp @s[scores={cutSceneTimer=790}] 5508.26 45.24 -41.55 160.19 -10.94003
tp @s[scores={cutSceneTimer=791}] 5508.26 45.24 -41.55 160.19 -10.79004
tp @s[scores={cutSceneTimer=792}] 5508.26 45.24 -41.55 160.19 -10.64004
tp @s[scores={cutSceneTimer=793}] 5508.26 45.24 -41.55 160.19 -10.49004
tp @s[scores={cutSceneTimer=794}] 5508.26 45.24 -41.55 160.19 -10.34004
tp @s[scores={cutSceneTimer=795}] 5508.26 45.24 -41.55 160.19 -10.19004
tp @s[scores={cutSceneTimer=796}] 5508.26 45.24 -41.55 160.19 -10.04004
tp @s[scores={cutSceneTimer=797}] 5508.26 45.24 -41.55 160.19 -9.890038
tp @s[scores={cutSceneTimer=798}] 5508.26 45.24 -41.55 160.19 -9.740038
tp @s[scores={cutSceneTimer=799}] 5508.26 45.24 -41.55 160.19 -9.590038
tp @s[scores={cutSceneTimer=800}] 5508.26 45.24 -41.55 160.19 -9.440039
tp @s[scores={cutSceneTimer=801}] 5508.26 45.24 -41.55 160.19 -9.290039
tp @s[scores={cutSceneTimer=802}] 5508.26 45.24 -41.55 160.19 -9.140039
tp @s[scores={cutSceneTimer=803}] 5508.26 45.24 -41.55 160.19 -8.99004
tp @s[scores={cutSceneTimer=804}] 5508.26 45.24 -41.55 160.19 -8.84004
tp @s[scores={cutSceneTimer=805}] 5508.26 45.24 -41.55 160.19 -8.690041
tp @s[scores={cutSceneTimer=806}] 5508.26 45.24 -41.55 160.19 -8.540041
tp @s[scores={cutSceneTimer=807}] 5508.26 45.24 -41.55 160.19 -8.390041
tp @s[scores={cutSceneTimer=808}] 5508.26 45.24 -41.55 160.19 -8.240042
tp @s[scores={cutSceneTimer=809}] 5508.26 45.24 -41.55 160.19 -8.090042
tp @s[scores={cutSceneTimer=810}] 5508.26 45.24 -41.55 160.19 -7.940042
tp @s[scores={cutSceneTimer=811}] 5508.26 45.24 -41.55 160.19 -7.790042
tp @s[scores={cutSceneTimer=812}] 5508.26 45.24 -41.55 160.19 -7.640042
tp @s[scores={cutSceneTimer=813}] 5508.26 45.24 -41.55 160.19 -7.490042
tp @s[scores={cutSceneTimer=814}] 5508.26 45.24 -41.55 160.19 -7.340042
tp @s[scores={cutSceneTimer=815}] 5508.26 45.24 -41.55 160.19 -7.190042
tp @s[scores={cutSceneTimer=816}] 5508.26 45.24 -41.55 160.19 -7.040041
tp @s[scores={cutSceneTimer=817}] 5508.26 45.24 -41.55 160.19 -6.890041
tp @s[scores={cutSceneTimer=818}] 5508.26 45.24 -41.55 160.19 -6.740041
tp @s[scores={cutSceneTimer=819}] 5508.26 45.24 -41.55 160.19 -6.590041
tp @s[scores={cutSceneTimer=820}] 5508.26 45.24 -41.55 160.19 -6.440041
tp @s[scores={cutSceneTimer=821}] 5508.26 45.24 -41.55 160.19 -6.290041
tp @s[scores={cutSceneTimer=822}] 5508.26 45.24 -41.55 160.19 -6.140041
tp @s[scores={cutSceneTimer=823}] 5508.26 45.24 -41.55 160.19 -5.990041
tp @s[scores={cutSceneTimer=824}] 5508.26 45.24 -41.55 160.19 -5.840041
tp @s[scores={cutSceneTimer=825}] 5508.26 45.24 -41.55 160.19 -5.690041
tp @s[scores={cutSceneTimer=826}] 5508.26 45.24 -41.55 160.19 -5.54004
tp @s[scores={cutSceneTimer=827}] 5508.26 45.24 -41.55 160.19 -5.39004
tp @s[scores={cutSceneTimer=828}] 5508.26 45.24 -41.55 160.19 -5.24004
tp @s[scores={cutSceneTimer=829}] 5508.26 45.24 -41.55 160.19 -5.09004
tp @s[scores={cutSceneTimer=830}] 5508.26 45.24 -41.55 160.19 -4.94004
tp @s[scores={cutSceneTimer=831}] 5508.26 45.24 -41.55 160.19 -4.79004
tp @s[scores={cutSceneTimer=832}] 5508.26 45.24 -41.55 160.19 -4.64004
tp @s[scores={cutSceneTimer=833}] 5508.26 45.24 -41.55 160.19 -4.49004
tp @s[scores={cutSceneTimer=834}] 5508.26 45.24 -41.55 160.19 -4.34004
tp @s[scores={cutSceneTimer=835}] 5508.26 45.24 -41.55 160.19 -4.19004
tp @s[scores={cutSceneTimer=836}] 5508.26 45.24 -41.55 160.19 -4.04004
tp @s[scores={cutSceneTimer=837}] 5508.26 45.24 -41.55 160.19 -3.890039
tp @s[scores={cutSceneTimer=838}] 5508.26 45.24 -41.55 160.19 -3.740039
tp @s[scores={cutSceneTimer=839}] 5508.26 45.24 -41.55 160.19 -3.590039
tp @s[scores={cutSceneTimer=840}] 5508.26 45.24 -41.55 160.19 -3.440039
tp @s[scores={cutSceneTimer=841}] 5508.26 45.24 -41.55 160.19 -3.290039
tp @s[scores={cutSceneTimer=842}] 5508.26 45.24 -41.55 160.19 -3.140039
tp @s[scores={cutSceneTimer=843}] 5508.26 45.24 -41.55 160.19 -2.990039
tp @s[scores={cutSceneTimer=844}] 5508.26 45.24 -41.55 160.19 -2.840039
tp @s[scores={cutSceneTimer=845}] 5508.26 45.24 -41.55 160.19 -2.690039
tp @s[scores={cutSceneTimer=846}] 5508.26 45.24 -41.55 160.19 -2.540039
tp @s[scores={cutSceneTimer=847}] 5508.26 45.24 -41.55 160.19 -2.390038
tp @s[scores={cutSceneTimer=848}] 5508.26 45.24 -41.55 160.19 -2.240038
tp @s[scores={cutSceneTimer=849}] 5508.26 45.24 -41.55 160.19 -2.090038
tp @s[scores={cutSceneTimer=850}] 5508.26 45.24 -41.55 160.19 -1.940038
tp @s[scores={cutSceneTimer=851}] 5508.26 45.24 -41.55 160.19 -1.790038
tp @s[scores={cutSceneTimer=852}] 5508.26 45.24 -41.55 160.19 -1.640038
tp @s[scores={cutSceneTimer=853}] 5508.26 45.24 -41.55 160.19 -1.490038
tp @s[scores={cutSceneTimer=854}] 5508.26 45.24 -41.55 160.19 -1.340038
tp @s[scores={cutSceneTimer=855}] 5508.26 45.24 -41.55 160.19 -1.190038
tp @s[scores={cutSceneTimer=856}] 5508.26 45.24 -41.55 160.19 -1.040038
tp @s[scores={cutSceneTimer=857}] 5508.26 45.24 -41.55 160.19 -0.8900385
tp @s[scores={cutSceneTimer=858}] 5508.26 45.24 -41.55 160.19 -0.7400385
tp @s[scores={cutSceneTimer=859}] 5508.26 45.24 -41.55 160.19 -0.5900385
tp @s[scores={cutSceneTimer=860}] 5508.26 45.24 -41.55 160.19 -0.4400385
tp @s[scores={cutSceneTimer=861}] 5508.26 45.24 -41.55 160.19 -0.2900385
tp @s[scores={cutSceneTimer=862}] 5508.26 45.24 -41.55 160.19 -0.1400385
tp @s[scores={cutSceneTimer=863}] 5508.26 45.24 -41.55 160.19 0.009961486
tp @s[scores={cutSceneTimer=864}] 5508.26 45.24 -41.55 160.19 0.1599615
tp @s[scores={cutSceneTimer=865}] 5508.26 45.24 -41.55 160.19 0.3099615
tp @s[scores={cutSceneTimer=866}] 5508.26 45.24 -41.55 160.19 0.4599615
tp @s[scores={cutSceneTimer=867}] 5508.26 45.24 -41.55 160.19 0.6099615
tp @s[scores={cutSceneTimer=868}] 5508.26 45.24 -41.55 160.19 0.7599615
tp @s[scores={cutSceneTimer=869}] 5508.26 45.24 -41.55 160.19 0.9099615
tp @s[scores={cutSceneTimer=870}] 5508.26 45.24 -41.55 160.19 1.059961
tp @s[scores={cutSceneTimer=871}] 5508.26 45.24 -41.55 160.19 1.209961
tp @s[scores={cutSceneTimer=872}] 5508.26 45.24 -41.55 160.19 1.359961
tp @s[scores={cutSceneTimer=873}] 5508.26 45.24 -41.55 160.19 1.509961
tp @s[scores={cutSceneTimer=874}] 5508.26 45.24 -41.55 160.19 1.659961
tp @s[scores={cutSceneTimer=875}] 5508.26 45.24 -41.55 160.19 1.809961
tp @s[scores={cutSceneTimer=876}] 5508.26 45.24 -41.55 160.19 1.959961
tp @s[scores={cutSceneTimer=877}] 5508.26 45.24 -41.55 160.19 2.109961
tp @s[scores={cutSceneTimer=878}] 5508.26 45.24 -41.55 160.19 2.259961
tp @s[scores={cutSceneTimer=879}] 5508.26 45.24 -41.55 160.19 2.409961
tp @s[scores={cutSceneTimer=880}] 5508.26 45.24 -41.55 160.19 2.559962
tp @s[scores={cutSceneTimer=881}] 5508.26 45.24 -41.55 160.19 2.709962
tp @s[scores={cutSceneTimer=882}] 5508.26 45.24 -41.55 160.19 2.859962
tp @s[scores={cutSceneTimer=883}] 5508.26 45.24 -41.55 160.19 3.009962
tp @s[scores={cutSceneTimer=884}] 5508.26 45.24 -41.55 160.19 3.159962
tp @s[scores={cutSceneTimer=885}] 5508.26 45.24 -41.55 160.19 3.309962
tp @s[scores={cutSceneTimer=886}] 5508.26 45.24 -41.55 160.19 3.459962
tp @s[scores={cutSceneTimer=887}] 5508.26 45.24 -41.55 160.19 3.609962
tp @s[scores={cutSceneTimer=888}] 5508.26 45.24 -41.55 160.19 3.759962
tp @s[scores={cutSceneTimer=889}] 5508.26 45.24 -41.55 160.19 3.909962
tp @s[scores={cutSceneTimer=890}] 5508.26 45.24 -41.55 160.19 4.059962
tp @s[scores={cutSceneTimer=891}] 5508.26 45.24 -41.55 160.19 4.209962
tp @s[scores={cutSceneTimer=892}] 5508.26 45.24 -41.55 160.19 4.359962
tp @s[scores={cutSceneTimer=893}] 5508.26 45.24 -41.55 160.19 4.509963
tp @s[scores={cutSceneTimer=894}] 5508.26 45.24 -41.55 160.19 4.659963
tp @s[scores={cutSceneTimer=895}] 5508.26 45.24 -41.55 160.19 4.809963
tp @s[scores={cutSceneTimer=896}] 5508.26 45.24 -41.55 160.19 4.959963
tp @s[scores={cutSceneTimer=897}] 5508.26 45.24 -41.55 160.19 5.109963
tp @s[scores={cutSceneTimer=898}] 5508.26 45.24 -41.55 160.19 5.259963
tp @s[scores={cutSceneTimer=899}] 5508.26 45.24 -41.55 160.19 5.409963
tp @s[scores={cutSceneTimer=900}] 5508.26 45.24 -41.55 160.19 5.559963
execute as @s[scores={cutSceneTimer=880}] as @s run function hp:cutscenes/fade_in

# ¤Lupin:¤ You can select the Stupefy spell by pressing { для использования дважды нажми £.
execute as @s[scores={cutSceneTimer=980},tag=cutsceneLeader] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=980..1110}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"                "}]

execute as @s[scores={cutSceneTimer=910}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=900}] 5507.347 43.80817 -36.82643 -336.56 -5.83
tp @s[scores={cutSceneTimer=901}] 5507.354 43.80635 -36.84286 -336.56 -5.83
tp @s[scores={cutSceneTimer=902}] 5507.362 43.80452 -36.85929 -336.56 -5.83
tp @s[scores={cutSceneTimer=903}] 5507.369 43.80269 -36.87572 -336.56 -5.83
tp @s[scores={cutSceneTimer=904}] 5507.376 43.80087 -36.89215 -336.56 -5.83
tp @s[scores={cutSceneTimer=905}] 5507.384 43.79904 -36.90858 -336.56 -5.83
tp @s[scores={cutSceneTimer=906}] 5507.391 43.79721 -36.92501 -336.56 -5.83
tp @s[scores={cutSceneTimer=907}] 5507.398 43.79538 -36.94144 -336.56 -5.83
tp @s[scores={cutSceneTimer=908}] 5507.406 43.79356 -36.95787 -336.56 -5.83
tp @s[scores={cutSceneTimer=909}] 5507.413 43.79173 -36.9743 -336.56 -5.83
tp @s[scores={cutSceneTimer=910}] 5507.42 43.7899 -36.99073 -336.56 -5.83
tp @s[scores={cutSceneTimer=911}] 5507.428 43.78807 -37.00716 -336.56 -5.83
tp @s[scores={cutSceneTimer=912}] 5507.435 43.78625 -37.02359 -336.56 -5.83
tp @s[scores={cutSceneTimer=913}] 5507.442 43.78442 -37.04002 -336.56 -5.83
tp @s[scores={cutSceneTimer=914}] 5507.45 43.78259 -37.05645 -336.56 -5.83
tp @s[scores={cutSceneTimer=915}] 5507.457 43.78077 -37.07288 -336.56 -5.83
tp @s[scores={cutSceneTimer=916}] 5507.464 43.77894 -37.08931 -336.56 -5.83
tp @s[scores={cutSceneTimer=917}] 5507.472 43.77711 -37.10574 -336.56 -5.83
tp @s[scores={cutSceneTimer=918}] 5507.479 43.77528 -37.12217 -336.56 -5.83
tp @s[scores={cutSceneTimer=919}] 5507.486 43.77346 -37.1386 -336.56 -5.83
tp @s[scores={cutSceneTimer=920}] 5507.494 43.77163 -37.15503 -336.56 -5.83
tp @s[scores={cutSceneTimer=921}] 5507.501 43.7698 -37.17146 -336.56 -5.83
tp @s[scores={cutSceneTimer=922}] 5507.508 43.76797 -37.18789 -336.56 -5.83
tp @s[scores={cutSceneTimer=923}] 5507.516 43.76615 -37.20432 -336.56 -5.83
tp @s[scores={cutSceneTimer=924}] 5507.523 43.76432 -37.22075 -336.56 -5.83
tp @s[scores={cutSceneTimer=925}] 5507.53 43.76249 -37.23718 -336.56 -5.83
tp @s[scores={cutSceneTimer=926}] 5507.538 43.76067 -37.25361 -336.56 -5.83
tp @s[scores={cutSceneTimer=927}] 5507.545 43.75884 -37.27004 -336.56 -5.83
tp @s[scores={cutSceneTimer=928}] 5507.552 43.75701 -37.28647 -336.56 -5.83
tp @s[scores={cutSceneTimer=929}] 5507.56 43.75518 -37.3029 -336.56 -5.83
tp @s[scores={cutSceneTimer=930}] 5507.567 43.75336 -37.31933 -336.56 -5.83
tp @s[scores={cutSceneTimer=931}] 5507.574 43.75153 -37.33576 -336.56 -5.83
tp @s[scores={cutSceneTimer=932}] 5507.582 43.7497 -37.35219 -336.56 -5.83
tp @s[scores={cutSceneTimer=933}] 5507.589 43.74788 -37.36862 -336.56 -5.83
tp @s[scores={cutSceneTimer=934}] 5507.596 43.74605 -37.38505 -336.56 -5.83
tp @s[scores={cutSceneTimer=935}] 5507.604 43.74422 -37.40148 -336.56 -5.83
tp @s[scores={cutSceneTimer=936}] 5507.611 43.74239 -37.41791 -336.56 -5.83
tp @s[scores={cutSceneTimer=937}] 5507.618 43.74057 -37.43434 -336.56 -5.83
tp @s[scores={cutSceneTimer=938}] 5507.625 43.73874 -37.45077 -336.56 -5.83
tp @s[scores={cutSceneTimer=939}] 5507.633 43.73691 -37.4672 -336.56 -5.83
tp @s[scores={cutSceneTimer=940}] 5507.64 43.73508 -37.48363 -336.56 -5.83
tp @s[scores={cutSceneTimer=941}] 5507.647 43.73326 -37.50006 -336.56 -5.83
tp @s[scores={cutSceneTimer=942}] 5507.655 43.73143 -37.51649 -336.56 -5.83
tp @s[scores={cutSceneTimer=943}] 5507.662 43.7296 -37.53292 -336.56 -5.83
tp @s[scores={cutSceneTimer=944}] 5507.669 43.72778 -37.54935 -336.56 -5.83
tp @s[scores={cutSceneTimer=945}] 5507.677 43.72595 -37.56578 -336.56 -5.83
tp @s[scores={cutSceneTimer=946}] 5507.684 43.72412 -37.58221 -336.56 -5.83
tp @s[scores={cutSceneTimer=947}] 5507.691 43.72229 -37.59864 -336.56 -5.83
tp @s[scores={cutSceneTimer=948}] 5507.699 43.72047 -37.61507 -336.56 -5.83
tp @s[scores={cutSceneTimer=949}] 5507.706 43.71864 -37.6315 -336.56 -5.83
tp @s[scores={cutSceneTimer=950}] 5507.713 43.71681 -37.64793 -336.56 -5.83
tp @s[scores={cutSceneTimer=951}] 5507.721 43.71498 -37.66436 -336.56 -5.83
tp @s[scores={cutSceneTimer=952}] 5507.728 43.71316 -37.68079 -336.56 -5.83
tp @s[scores={cutSceneTimer=953}] 5507.735 43.71133 -37.69722 -336.56 -5.83
tp @s[scores={cutSceneTimer=954}] 5507.743 43.7095 -37.71365 -336.56 -5.83
tp @s[scores={cutSceneTimer=955}] 5507.75 43.70768 -37.73008 -336.56 -5.83
tp @s[scores={cutSceneTimer=956}] 5507.757 43.70585 -37.74651 -336.56 -5.83
tp @s[scores={cutSceneTimer=957}] 5507.765 43.70402 -37.76294 -336.56 -5.83
tp @s[scores={cutSceneTimer=958}] 5507.772 43.70219 -37.77937 -336.56 -5.83
tp @s[scores={cutSceneTimer=959}] 5507.779 43.70037 -37.7958 -336.56 -5.83
tp @s[scores={cutSceneTimer=960}] 5507.787 43.69854 -37.81223 -336.56 -5.83
tp @s[scores={cutSceneTimer=961}] 5507.794 43.69671 -37.82866 -336.56 -5.83
tp @s[scores={cutSceneTimer=962}] 5507.801 43.69489 -37.84509 -336.56 -5.83
tp @s[scores={cutSceneTimer=963}] 5507.809 43.69306 -37.86152 -336.56 -5.83
tp @s[scores={cutSceneTimer=964}] 5507.816 43.69123 -37.87794 -336.56 -5.83
tp @s[scores={cutSceneTimer=965}] 5507.823 43.6894 -37.89437 -336.56 -5.83
tp @s[scores={cutSceneTimer=966}] 5507.831 43.68758 -37.9108 -336.56 -5.83
tp @s[scores={cutSceneTimer=967}] 5507.838 43.68575 -37.92723 -336.56 -5.83
tp @s[scores={cutSceneTimer=968}] 5507.845 43.68392 -37.94366 -336.56 -5.83
tp @s[scores={cutSceneTimer=969}] 5507.853 43.68209 -37.96009 -336.56 -5.83
tp @s[scores={cutSceneTimer=970}] 5507.86 43.68027 -37.97652 -336.56 -5.83
tp @s[scores={cutSceneTimer=971}] 5507.867 43.67844 -37.99295 -336.56 -5.83
tp @s[scores={cutSceneTimer=972}] 5507.875 43.67661 -38.00938 -336.56 -5.83
tp @s[scores={cutSceneTimer=973}] 5507.882 43.67479 -38.02581 -336.56 -5.83
tp @s[scores={cutSceneTimer=974}] 5507.889 43.67296 -38.04224 -336.56 -5.83
tp @s[scores={cutSceneTimer=975}] 5507.896 43.67113 -38.05867 -336.56 -5.83
tp @s[scores={cutSceneTimer=976}] 5507.904 43.6693 -38.0751 -336.56 -5.83
tp @s[scores={cutSceneTimer=977}] 5507.911 43.66748 -38.09153 -336.56 -5.83
tp @s[scores={cutSceneTimer=978}] 5507.918 43.66565 -38.10796 -336.56 -5.83
tp @s[scores={cutSceneTimer=979}] 5507.926 43.66382 -38.12439 -336.56 -5.83
tp @s[scores={cutSceneTimer=980}] 5507.933 43.66199 -38.14082 -336.56 -5.83
tp @s[scores={cutSceneTimer=981}] 5507.94 43.66017 -38.15725 -336.56 -5.83
tp @s[scores={cutSceneTimer=982}] 5507.948 43.65834 -38.17368 -336.56 -5.83
tp @s[scores={cutSceneTimer=983}] 5507.955 43.65651 -38.19011 -336.56 -5.83
tp @s[scores={cutSceneTimer=984}] 5507.962 43.65469 -38.20654 -336.56 -5.83
tp @s[scores={cutSceneTimer=985}] 5507.97 43.65286 -38.22297 -336.56 -5.83
tp @s[scores={cutSceneTimer=986}] 5507.977 43.65103 -38.2394 -336.56 -5.83
tp @s[scores={cutSceneTimer=987}] 5507.984 43.6492 -38.25583 -336.56 -5.83
tp @s[scores={cutSceneTimer=988}] 5507.992 43.64738 -38.27226 -336.56 -5.83
tp @s[scores={cutSceneTimer=989}] 5507.999 43.64555 -38.28869 -336.56 -5.83
tp @s[scores={cutSceneTimer=990}] 5508.006 43.64372 -38.30512 -336.56 -5.83
tp @s[scores={cutSceneTimer=991}] 5508.014 43.6419 -38.32155 -336.56 -5.83
tp @s[scores={cutSceneTimer=992}] 5508.021 43.64007 -38.33798 -336.56 -5.83
tp @s[scores={cutSceneTimer=993}] 5508.028 43.63824 -38.35441 -336.56 -5.83
tp @s[scores={cutSceneTimer=994}] 5508.036 43.63641 -38.37084 -336.56 -5.83
tp @s[scores={cutSceneTimer=995}] 5508.043 43.63459 -38.38727 -336.56 -5.83
tp @s[scores={cutSceneTimer=996}] 5508.05 43.63276 -38.4037 -336.56 -5.83
tp @s[scores={cutSceneTimer=997}] 5508.058 43.63093 -38.42013 -336.56 -5.83
tp @s[scores={cutSceneTimer=998}] 5508.065 43.6291 -38.43656 -336.56 -5.83
tp @s[scores={cutSceneTimer=999}] 5508.072 43.62728 -38.45299 -336.56 -5.83
tp @s[scores={cutSceneTimer=1000}] 5508.08 43.62545 -38.46942 -336.56 -5.83
tp @s[scores={cutSceneTimer=1001}] 5508.087 43.62362 -38.48585 -336.56 -5.83
tp @s[scores={cutSceneTimer=1002}] 5508.094 43.6218 -38.50228 -336.56 -5.83
tp @s[scores={cutSceneTimer=1003}] 5508.102 43.61997 -38.51871 -336.56 -5.83
tp @s[scores={cutSceneTimer=1004}] 5508.109 43.61814 -38.53514 -336.56 -5.83
tp @s[scores={cutSceneTimer=1005}] 5508.116 43.61631 -38.55157 -336.56 -5.83
tp @s[scores={cutSceneTimer=1006}] 5508.124 43.61449 -38.568 -336.56 -5.83
tp @s[scores={cutSceneTimer=1007}] 5508.131 43.61266 -38.58443 -336.56 -5.83
tp @s[scores={cutSceneTimer=1008}] 5508.138 43.61083 -38.60086 -336.56 -5.83
tp @s[scores={cutSceneTimer=1009}] 5508.146 43.609 -38.61729 -336.56 -5.83
tp @s[scores={cutSceneTimer=1010}] 5508.153 43.60718 -38.63372 -336.56 -5.83
tp @s[scores={cutSceneTimer=1011}] 5508.16 43.60535 -38.65015 -336.56 -5.83
tp @s[scores={cutSceneTimer=1012}] 5508.167 43.60352 -38.66658 -336.56 -5.83
tp @s[scores={cutSceneTimer=1013}] 5508.175 43.6017 -38.68301 -336.56 -5.83
tp @s[scores={cutSceneTimer=1014}] 5508.182 43.59987 -38.69944 -336.56 -5.83
tp @s[scores={cutSceneTimer=1015}] 5508.189 43.59804 -38.71587 -336.56 -5.83
tp @s[scores={cutSceneTimer=1016}] 5508.197 43.59621 -38.7323 -336.56 -5.83
tp @s[scores={cutSceneTimer=1017}] 5508.204 43.59439 -38.74873 -336.56 -5.83
tp @s[scores={cutSceneTimer=1018}] 5508.211 43.59256 -38.76516 -336.56 -5.83
tp @s[scores={cutSceneTimer=1019}] 5508.219 43.59073 -38.78159 -336.56 -5.83
tp @s[scores={cutSceneTimer=1020}] 5508.226 43.58891 -38.79802 -336.56 -5.83
tp @s[scores={cutSceneTimer=1021}] 5508.233 43.58708 -38.81445 -336.56 -5.83
tp @s[scores={cutSceneTimer=1022}] 5508.241 43.58525 -38.83088 -336.56 -5.83
tp @s[scores={cutSceneTimer=1023}] 5508.248 43.58342 -38.84731 -336.56 -5.83
tp @s[scores={cutSceneTimer=1024}] 5508.255 43.5816 -38.86374 -336.56 -5.83
tp @s[scores={cutSceneTimer=1025}] 5508.263 43.57977 -38.88017 -336.56 -5.83
tp @s[scores={cutSceneTimer=1026}] 5508.27 43.57794 -38.8966 -336.56 -5.83
tp @s[scores={cutSceneTimer=1027}] 5508.277 43.57611 -38.91303 -336.56 -5.83
tp @s[scores={cutSceneTimer=1028}] 5508.285 43.57429 -38.92946 -336.56 -5.83
tp @s[scores={cutSceneTimer=1029}] 5508.292 43.57246 -38.94589 -336.56 -5.83
tp @s[scores={cutSceneTimer=1030}] 5508.299 43.57063 -38.96232 -336.56 -5.83
tp @s[scores={cutSceneTimer=1031}] 5508.307 43.56881 -38.97875 -336.56 -5.83
tp @s[scores={cutSceneTimer=1032}] 5508.314 43.56698 -38.99518 -336.56 -5.83
tp @s[scores={cutSceneTimer=1033}] 5508.321 43.56515 -39.01161 -336.56 -5.83
tp @s[scores={cutSceneTimer=1034}] 5508.329 43.56332 -39.02804 -336.56 -5.83
tp @s[scores={cutSceneTimer=1035}] 5508.336 43.5615 -39.04447 -336.56 -5.83
tp @s[scores={cutSceneTimer=1036}] 5508.343 43.55967 -39.0609 -336.56 -5.83
tp @s[scores={cutSceneTimer=1037}] 5508.351 43.55784 -39.07733 -336.56 -5.83
tp @s[scores={cutSceneTimer=1038}] 5508.358 43.55602 -39.09376 -336.56 -5.83
tp @s[scores={cutSceneTimer=1039}] 5508.365 43.55419 -39.11019 -336.56 -5.83
tp @s[scores={cutSceneTimer=1040}] 5508.373 43.55236 -39.12662 -336.56 -5.83
tp @s[scores={cutSceneTimer=1041}] 5508.38 43.55053 -39.14305 -336.56 -5.83
tp @s[scores={cutSceneTimer=1042}] 5508.387 43.54871 -39.15948 -336.56 -5.83
tp @s[scores={cutSceneTimer=1043}] 5508.395 43.54688 -39.17591 -336.56 -5.83
tp @s[scores={cutSceneTimer=1044}] 5508.402 43.54505 -39.19234 -336.56 -5.83
tp @s[scores={cutSceneTimer=1045}] 5508.409 43.54322 -39.20877 -336.56 -5.83
tp @s[scores={cutSceneTimer=1046}] 5508.417 43.5414 -39.2252 -336.56 -5.83
tp @s[scores={cutSceneTimer=1047}] 5508.424 43.53957 -39.24163 -336.56 -5.83
tp @s[scores={cutSceneTimer=1048}] 5508.431 43.53774 -39.25806 -336.56 -5.83
tp @s[scores={cutSceneTimer=1049}] 5508.438 43.53592 -39.27449 -336.56 -5.83
tp @s[scores={cutSceneTimer=1050}] 5508.446 43.53409 -39.29092 -336.56 -5.83
tp @s[scores={cutSceneTimer=1051}] 5508.453 43.53226 -39.30735 -336.56 -5.83
tp @s[scores={cutSceneTimer=1052}] 5508.46 43.53043 -39.32378 -336.56 -5.83
tp @s[scores={cutSceneTimer=1053}] 5508.468 43.52861 -39.34021 -336.56 -5.83
tp @s[scores={cutSceneTimer=1054}] 5508.475 43.52678 -39.35664 -336.56 -5.83
tp @s[scores={cutSceneTimer=1055}] 5508.482 43.52495 -39.37307 -336.56 -5.83
tp @s[scores={cutSceneTimer=1056}] 5508.49 43.52312 -39.3895 -336.56 -5.83
tp @s[scores={cutSceneTimer=1057}] 5508.497 43.5213 -39.40593 -336.56 -5.83
tp @s[scores={cutSceneTimer=1058}] 5508.504 43.51947 -39.42236 -336.56 -5.83
tp @s[scores={cutSceneTimer=1059}] 5508.512 43.51764 -39.43879 -336.56 -5.83
tp @s[scores={cutSceneTimer=1060}] 5508.519 43.51582 -39.45522 -336.56 -5.83
tp @s[scores={cutSceneTimer=1061}] 5508.526 43.51399 -39.47165 -336.56 -5.83
tp @s[scores={cutSceneTimer=1062}] 5508.534 43.51216 -39.48808 -336.56 -5.83
tp @s[scores={cutSceneTimer=1063}] 5508.541 43.51033 -39.50451 -336.56 -5.83
tp @s[scores={cutSceneTimer=1064}] 5508.548 43.50851 -39.52094 -336.56 -5.83
tp @s[scores={cutSceneTimer=1065}] 5508.556 43.50668 -39.53736 -336.56 -5.83
tp @s[scores={cutSceneTimer=1066}] 5508.563 43.50485 -39.55379 -336.56 -5.83
tp @s[scores={cutSceneTimer=1067}] 5508.57 43.50303 -39.57022 -336.56 -5.83
tp @s[scores={cutSceneTimer=1068}] 5508.578 43.5012 -39.58665 -336.56 -5.83
tp @s[scores={cutSceneTimer=1069}] 5508.585 43.49937 -39.60308 -336.56 -5.83
tp @s[scores={cutSceneTimer=1070}] 5508.592 43.49754 -39.61951 -336.56 -5.83
tp @s[scores={cutSceneTimer=1071}] 5508.6 43.49572 -39.63594 -336.56 -5.83
tp @s[scores={cutSceneTimer=1072}] 5508.607 43.49389 -39.65237 -336.56 -5.83
tp @s[scores={cutSceneTimer=1073}] 5508.614 43.49206 -39.6688 -336.56 -5.83
tp @s[scores={cutSceneTimer=1074}] 5508.622 43.49023 -39.68523 -336.56 -5.83
tp @s[scores={cutSceneTimer=1075}] 5508.629 43.48841 -39.70166 -336.56 -5.83
tp @s[scores={cutSceneTimer=1076}] 5508.636 43.48658 -39.71809 -336.56 -5.83
tp @s[scores={cutSceneTimer=1077}] 5508.644 43.48475 -39.73452 -336.56 -5.83
tp @s[scores={cutSceneTimer=1078}] 5508.651 43.48293 -39.75095 -336.56 -5.83
tp @s[scores={cutSceneTimer=1079}] 5508.658 43.4811 -39.76738 -336.56 -5.83
tp @s[scores={cutSceneTimer=1080..1100}] 5508.666 43.47927 -39.78381 -336.56 -5.83
execute as @s[scores={cutSceneTimer=1060}] as @s run function hp:cutscenes/fade_in


# ¤Lupin:¤ Best of luck!
execute as @s[scores={cutSceneTimer=1110},tag=cutsceneLeader] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=1110..1200}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"   "}]
execute as @s[scores={cutSceneTimer=1110},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=1117},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=1121},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=1125},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=1132},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=1139},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=1143},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=1150},tag=cutsceneLeader] as @e[tag=lupinClassroom,limit=1] run function hp:npc/update_npc_head_neutral

execute as @s[scores={cutSceneTimer=1110}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=1100}] 5556.349 91.14981 -8.135153 14.03 2.15
tp @s[scores={cutSceneTimer=1101}] 5556.348 91.14962 -8.130305 14.03 2.15
tp @s[scores={cutSceneTimer=1102}] 5556.347 91.14943 -8.125458 14.03 2.15
tp @s[scores={cutSceneTimer=1103}] 5556.346 91.14924 -8.12061 14.03 2.15
tp @s[scores={cutSceneTimer=1104}] 5556.345 91.14905 -8.115763 14.03 2.15
tp @s[scores={cutSceneTimer=1105}] 5556.344 91.14886 -8.110915 14.03 2.15
tp @s[scores={cutSceneTimer=1106}] 5556.343 91.14867 -8.106068 14.03 2.15
tp @s[scores={cutSceneTimer=1107}] 5556.342 91.14848 -8.10122 14.03 2.15
tp @s[scores={cutSceneTimer=1108}] 5556.341 91.14828 -8.096373 14.03 2.15
tp @s[scores={cutSceneTimer=1109}] 5556.34 91.14809 -8.091525 14.03 2.15
tp @s[scores={cutSceneTimer=1110}] 5556.339 91.1479 -8.086678 14.03 2.15
tp @s[scores={cutSceneTimer=1111}] 5556.338 91.14771 -8.08183 14.03 2.15
tp @s[scores={cutSceneTimer=1112}] 5556.337 91.14752 -8.076982 14.03 2.15
tp @s[scores={cutSceneTimer=1113}] 5556.336 91.14733 -8.072135 14.03 2.15
tp @s[scores={cutSceneTimer=1114}] 5556.335 91.14714 -8.067287 14.03 2.15
tp @s[scores={cutSceneTimer=1115}] 5556.334 91.14695 -8.06244 14.03 2.15
tp @s[scores={cutSceneTimer=1116}] 5556.333 91.14676 -8.057592 14.03 2.15
tp @s[scores={cutSceneTimer=1117}] 5556.333 91.14657 -8.052745 14.03 2.15
tp @s[scores={cutSceneTimer=1118}] 5556.332 91.14638 -8.047897 14.03 2.15
tp @s[scores={cutSceneTimer=1119}] 5556.331 91.14619 -8.04305 14.03 2.15
tp @s[scores={cutSceneTimer=1120}] 5556.33 91.146 -8.038202 14.03 2.15
tp @s[scores={cutSceneTimer=1121}] 5556.329 91.14581 -8.033355 14.03 2.15
tp @s[scores={cutSceneTimer=1122}] 5556.328 91.14561 -8.028507 14.03 2.15
tp @s[scores={cutSceneTimer=1123}] 5556.327 91.14542 -8.02366 14.03 2.15
tp @s[scores={cutSceneTimer=1124}] 5556.326 91.14523 -8.018812 14.03 2.15
tp @s[scores={cutSceneTimer=1125}] 5556.325 91.14504 -8.013965 14.03 2.15
tp @s[scores={cutSceneTimer=1126}] 5556.324 91.14485 -8.009117 14.03 2.15
tp @s[scores={cutSceneTimer=1127}] 5556.323 91.14466 -8.00427 14.03 2.15
tp @s[scores={cutSceneTimer=1128}] 5556.322 91.14447 -7.999422 14.03 2.15
tp @s[scores={cutSceneTimer=1129}] 5556.321 91.14428 -7.994575 14.03 2.15
tp @s[scores={cutSceneTimer=1130}] 5556.32 91.14409 -7.989727 14.03 2.15
tp @s[scores={cutSceneTimer=1131}] 5556.319 91.1439 -7.984879 14.03 2.15
tp @s[scores={cutSceneTimer=1132}] 5556.318 91.14371 -7.980032 14.03 2.15
tp @s[scores={cutSceneTimer=1133}] 5556.317 91.14352 -7.975184 14.03 2.15
tp @s[scores={cutSceneTimer=1134}] 5556.316 91.14333 -7.970337 14.03 2.15
tp @s[scores={cutSceneTimer=1135}] 5556.315 91.14314 -7.965489 14.03 2.15
tp @s[scores={cutSceneTimer=1136}] 5556.314 91.14294 -7.960642 14.03 2.15
tp @s[scores={cutSceneTimer=1137}] 5556.313 91.14275 -7.955794 14.03 2.15
tp @s[scores={cutSceneTimer=1138}] 5556.312 91.14256 -7.950947 14.03 2.15
tp @s[scores={cutSceneTimer=1139}] 5556.311 91.14237 -7.946099 14.03 2.15
tp @s[scores={cutSceneTimer=1140}] 5556.31 91.14218 -7.941252 14.03 2.15
tp @s[scores={cutSceneTimer=1141}] 5556.309 91.14199 -7.936404 14.03 2.15
tp @s[scores={cutSceneTimer=1142}] 5556.308 91.1418 -7.931557 14.03 2.15
tp @s[scores={cutSceneTimer=1143}] 5556.307 91.14161 -7.926709 14.03 2.15
tp @s[scores={cutSceneTimer=1144}] 5556.306 91.14142 -7.921862 14.03 2.15
tp @s[scores={cutSceneTimer=1145}] 5556.305 91.14123 -7.917014 14.03 2.15
tp @s[scores={cutSceneTimer=1146}] 5556.304 91.14104 -7.912167 14.03 2.15
tp @s[scores={cutSceneTimer=1147}] 5556.303 91.14085 -7.907319 14.03 2.15
tp @s[scores={cutSceneTimer=1148}] 5556.302 91.14066 -7.902472 14.03 2.15
tp @s[scores={cutSceneTimer=1149}] 5556.301 91.14046 -7.897624 14.03 2.15
tp @s[scores={cutSceneTimer=1150}] 5556.3 91.14027 -7.892776 14.03 2.15
tp @s[scores={cutSceneTimer=1151}] 5556.299 91.14008 -7.887929 14.03 2.15
tp @s[scores={cutSceneTimer=1152}] 5556.298 91.13989 -7.883081 14.03 2.15
tp @s[scores={cutSceneTimer=1153}] 5556.297 91.1397 -7.878234 14.03 2.15
tp @s[scores={cutSceneTimer=1154}] 5556.296 91.13951 -7.873386 14.03 2.15
tp @s[scores={cutSceneTimer=1155}] 5556.295 91.13932 -7.868539 14.03 2.15
tp @s[scores={cutSceneTimer=1156}] 5556.294 91.13913 -7.863691 14.03 2.15
tp @s[scores={cutSceneTimer=1157}] 5556.293 91.13894 -7.858844 14.03 2.15
tp @s[scores={cutSceneTimer=1158}] 5556.292 91.13875 -7.853996 14.03 2.15
tp @s[scores={cutSceneTimer=1159}] 5556.292 91.13856 -7.849149 14.03 2.15
tp @s[scores={cutSceneTimer=1160}] 5556.291 91.13837 -7.844301 14.03 2.15
tp @s[scores={cutSceneTimer=1161}] 5556.29 91.13818 -7.839454 14.03 2.15
tp @s[scores={cutSceneTimer=1162}] 5556.289 91.13799 -7.834606 14.03 2.15
tp @s[scores={cutSceneTimer=1163}] 5556.288 91.13779 -7.829759 14.03 2.15
tp @s[scores={cutSceneTimer=1164}] 5556.287 91.1376 -7.824911 14.03 2.15
tp @s[scores={cutSceneTimer=1165}] 5556.286 91.13741 -7.820064 14.03 2.15
tp @s[scores={cutSceneTimer=1166}] 5556.285 91.13722 -7.815216 14.03 2.15
tp @s[scores={cutSceneTimer=1167}] 5556.284 91.13703 -7.810369 14.03 2.15
tp @s[scores={cutSceneTimer=1168}] 5556.283 91.13684 -7.805521 14.03 2.15
tp @s[scores={cutSceneTimer=1169}] 5556.282 91.13665 -7.800673 14.03 2.15
tp @s[scores={cutSceneTimer=1170}] 5556.281 91.13646 -7.795826 14.03 2.15
tp @s[scores={cutSceneTimer=1171}] 5556.28 91.13627 -7.790978 14.03 2.15
tp @s[scores={cutSceneTimer=1172}] 5556.279 91.13608 -7.786131 14.03 2.15
tp @s[scores={cutSceneTimer=1173}] 5556.278 91.13589 -7.781283 14.03 2.15
tp @s[scores={cutSceneTimer=1174}] 5556.277 91.1357 -7.776436 14.03 2.15
tp @s[scores={cutSceneTimer=1175}] 5556.276 91.13551 -7.771588 14.03 2.15
tp @s[scores={cutSceneTimer=1176}] 5556.275 91.13531 -7.766741 14.03 2.15
tp @s[scores={cutSceneTimer=1177}] 5556.274 91.13512 -7.761893 14.03 2.15
tp @s[scores={cutSceneTimer=1178}] 5556.273 91.13493 -7.757046 14.03 2.15
tp @s[scores={cutSceneTimer=1179}] 5556.272 91.13474 -7.752198 14.03 2.15
tp @s[scores={cutSceneTimer=1180}] 5556.271 91.13455 -7.747351 14.03 2.15
tp @s[scores={cutSceneTimer=1181}] 5556.27 91.13436 -7.742503 14.03 2.15
tp @s[scores={cutSceneTimer=1182}] 5556.269 91.13417 -7.737656 14.03 2.15
tp @s[scores={cutSceneTimer=1183}] 5556.268 91.13398 -7.732808 14.03 2.15
tp @s[scores={cutSceneTimer=1184}] 5556.267 91.13379 -7.727961 14.03 2.15
tp @s[scores={cutSceneTimer=1185}] 5556.266 91.1336 -7.723113 14.03 2.15
tp @s[scores={cutSceneTimer=1186}] 5556.265 91.13341 -7.718266 14.03 2.15
tp @s[scores={cutSceneTimer=1187}] 5556.264 91.13322 -7.713418 14.03 2.15
tp @s[scores={cutSceneTimer=1188}] 5556.263 91.13303 -7.70857 14.03 2.15
tp @s[scores={cutSceneTimer=1189}] 5556.262 91.13284 -7.703723 14.03 2.15
tp @s[scores={cutSceneTimer=1190}] 5556.261 91.13264 -7.698875 14.03 2.15
tp @s[scores={cutSceneTimer=1191}] 5556.26 91.13245 -7.694028 14.03 2.15
tp @s[scores={cutSceneTimer=1192}] 5556.259 91.13226 -7.68918 14.03 2.15
tp @s[scores={cutSceneTimer=1193}] 5556.258 91.13207 -7.684333 14.03 2.15
tp @s[scores={cutSceneTimer=1194}] 5556.257 91.13188 -7.679485 14.03 2.15
tp @s[scores={cutSceneTimer=1195}] 5556.256 91.13169 -7.674638 14.03 2.15
tp @s[scores={cutSceneTimer=1196}] 5556.255 91.1315 -7.66979 14.03 2.15
tp @s[scores={cutSceneTimer=1197}] 5556.254 91.13131 -7.664943 14.03 2.15
tp @s[scores={cutSceneTimer=1198}] 5556.253 91.13112 -7.660095 14.03 2.15
tp @s[scores={cutSceneTimer=1199}] 5556.252 91.13093 -7.655248 14.03 2.15
tp @s[scores={cutSceneTimer=1200}] 5556.251 91.13074 -7.6504 14.03 2.15
tp @s[scores={cutSceneTimer=1201}] 5556.25 91.13055 -7.645553 14.03 2.15
tp @s[scores={cutSceneTimer=1202}] 5556.25 91.13036 -7.640705 14.03 2.15
tp @s[scores={cutSceneTimer=1203}] 5556.249 91.13017 -7.635858 14.03 2.15
tp @s[scores={cutSceneTimer=1204}] 5556.248 91.12997 -7.63101 14.03 2.15
tp @s[scores={cutSceneTimer=1205}] 5556.247 91.12978 -7.626163 14.03 2.15
tp @s[scores={cutSceneTimer=1206}] 5556.246 91.12959 -7.621315 14.03 2.15
tp @s[scores={cutSceneTimer=1207}] 5556.245 91.1294 -7.616467 14.03 2.15
tp @s[scores={cutSceneTimer=1208}] 5556.244 91.12921 -7.61162 14.03 2.15
tp @s[scores={cutSceneTimer=1209}] 5556.243 91.12902 -7.606772 14.03 2.15
tp @s[scores={cutSceneTimer=1210}] 5556.242 91.12883 -7.601925 14.03 2.15
tp @s[scores={cutSceneTimer=1211}] 5556.241 91.12864 -7.597077 14.03 2.15
tp @s[scores={cutSceneTimer=1212}] 5556.24 91.12845 -7.59223 14.03 2.15
tp @s[scores={cutSceneTimer=1213}] 5556.239 91.12826 -7.587382 14.03 2.15
tp @s[scores={cutSceneTimer=1214}] 5556.238 91.12807 -7.582535 14.03 2.15
tp @s[scores={cutSceneTimer=1215}] 5556.237 91.12788 -7.577687 14.03 2.15
tp @s[scores={cutSceneTimer=1216}] 5556.236 91.12769 -7.57284 14.03 2.15
tp @s[scores={cutSceneTimer=1217}] 5556.235 91.12749 -7.567992 14.03 2.15
tp @s[scores={cutSceneTimer=1218}] 5556.234 91.1273 -7.563145 14.03 2.15
tp @s[scores={cutSceneTimer=1219}] 5556.233 91.12711 -7.558297 14.03 2.15
tp @s[scores={cutSceneTimer=1220}] 5556.232 91.12692 -7.55345 14.03 2.15
tp @s[scores={cutSceneTimer=1221}] 5556.231 91.12673 -7.548602 14.03 2.15
tp @s[scores={cutSceneTimer=1222}] 5556.23 91.12654 -7.543755 14.03 2.15


# Clear subtitles instantly rather than a slow fade I can't control
execute as @s[scores={cutSceneTimer=1200..}] run title @s actionbar ""

execute as @s[scores={cutSceneTimer=1201}] as @s run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=1222}] as @s run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=1222}] as @s run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=1222}] as @s run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=1222}] as @s run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=1223,playerID=1}] run tp @s 5561.39 49.00 -87.85 719.82 -0.89
execute as @s[scores={cutSceneTimer=1223,playerID=2}] run tp @s 5558.82 49.00 -87.58 703.70 0.14
execute as @s[scores={cutSceneTimer=1223,playerID=3}] run tp @s 5563.91 49.00 -87.36 732.74 0.36
execute as @s[scores={cutSceneTimer=1223,playerID=4}] run tp @s 5566.48 49.00 -86.30 760.11 1.77
execute as @s[scores={cutSceneTimer=1243}] run tag @s add dontExitCutSceneSilent
execute as @s[scores={cutSceneTimer=1243}] run scoreboard players set playerInStupefySpellChallenge global 1
execute as @s[scores={cutSceneTimer=1243}] run function hp:quests/timer/start_pensive_timer
execute as @s[scores={cutSceneTimer=1243}] as @s run function hp:cutscenes/exit_cutscene



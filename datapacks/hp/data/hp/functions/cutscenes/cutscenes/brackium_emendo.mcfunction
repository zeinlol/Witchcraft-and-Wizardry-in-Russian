execute as @s[scores={trackQuestState=2}] run scoreboard players set @s questState 3
execute as @s[scores={trackQuestState=2}] run function hp:quests/set_quest

# Reset spell challenge
execute as @s[scores={cutSceneTimer=300},tag=cutsceneLeader] if score playerInBrackiumEmendoSpellChallenge global matches 0 run function hp:quests/quests/brackium_emendo/reset_brackium_spell_challenge

execute as @s[scores={cutSceneTimer=-19}] run tag @s remove musicController
execute as @s[scores={cutSceneTimer=-19}] run function hp:music/music/silence
execute as @s[scores={cutSceneTimer=-19}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=22}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=22}] run function hp:cutscenes/fade_out

execute as @s[scores={cutSceneTimer=..20}] run title @s actionbar ["",{"text":" "}]

execute as @s[scores={cutSceneTimer=22},tag=gameLeader] run time set day
execute as @s[scores={cutSceneTimer=22},tag=gameLeader] run gamerule doDaylightCycle false
tp @s[scores={cutSceneTimer=0..22}] 6005.597 85.60922 6.049188 263.75 5.95
tp @s[scores={cutSceneTimer=23}] 6005.604 85.60844 6.048376 263.75 5.95
tp @s[scores={cutSceneTimer=24}] 6005.612 85.60767 6.047564 263.75 5.95
tp @s[scores={cutSceneTimer=25}] 6005.619 85.60689 6.046752 263.75 5.95
tp @s[scores={cutSceneTimer=26}] 6005.626 85.60611 6.04594 263.75 5.95
tp @s[scores={cutSceneTimer=27}] 6005.634 85.60533 6.045128 263.75 5.95
tp @s[scores={cutSceneTimer=28}] 6005.641 85.60455 6.044316 263.75 5.95
tp @s[scores={cutSceneTimer=29}] 6005.648 85.60378 6.043504 263.75 5.95
tp @s[scores={cutSceneTimer=30}] 6005.656 85.603 6.042692 263.75 5.95
tp @s[scores={cutSceneTimer=31}] 6005.663 85.60222 6.04188 263.75 5.95
tp @s[scores={cutSceneTimer=32}] 6005.67 85.60144 6.041068 263.75 5.95
tp @s[scores={cutSceneTimer=33}] 6005.678 85.60066 6.040256 263.75 5.95
tp @s[scores={cutSceneTimer=34}] 6005.685 85.59988 6.039443 263.75 5.95
tp @s[scores={cutSceneTimer=35}] 6005.692 85.59911 6.038631 263.75 5.95
tp @s[scores={cutSceneTimer=36}] 6005.7 85.59833 6.037819 263.75 5.95
tp @s[scores={cutSceneTimer=37}] 6005.707 85.59755 6.037007 263.75 5.95
tp @s[scores={cutSceneTimer=38}] 6005.714 85.59677 6.036195 263.75 5.95
tp @s[scores={cutSceneTimer=39}] 6005.722 85.59599 6.035383 263.75 5.95
tp @s[scores={cutSceneTimer=40}] 6005.729 85.59521 6.034571 263.75 5.95
tp @s[scores={cutSceneTimer=41}] 6005.736 85.59444 6.033759 263.75 5.95
tp @s[scores={cutSceneTimer=42}] 6005.744 85.59366 6.032947 263.75 5.95
tp @s[scores={cutSceneTimer=43}] 6005.751 85.59288 6.032135 263.75 5.95
tp @s[scores={cutSceneTimer=44}] 6005.758 85.5921 6.031323 263.75 5.95
tp @s[scores={cutSceneTimer=45}] 6005.766 85.59132 6.030511 263.75 5.95
tp @s[scores={cutSceneTimer=46}] 6005.773 85.59055 6.029699 263.75 5.95
tp @s[scores={cutSceneTimer=47}] 6005.78 85.58977 6.028887 263.75 5.95
tp @s[scores={cutSceneTimer=48}] 6005.788 85.58899 6.028075 263.75 5.95
tp @s[scores={cutSceneTimer=49}] 6005.795 85.58821 6.027263 263.75 5.95
tp @s[scores={cutSceneTimer=50}] 6005.802 85.58743 6.026451 263.75 5.95
tp @s[scores={cutSceneTimer=51}] 6005.81 85.58665 6.025639 263.75 5.95
tp @s[scores={cutSceneTimer=52}] 6005.817 85.58588 6.024827 263.75 5.95
tp @s[scores={cutSceneTimer=53}] 6005.824 85.5851 6.024014 263.75 5.95
tp @s[scores={cutSceneTimer=54}] 6005.832 85.58432 6.023202 263.75 5.95
tp @s[scores={cutSceneTimer=55}] 6005.839 85.58354 6.02239 263.75 5.95
tp @s[scores={cutSceneTimer=56}] 6005.846 85.58276 6.021578 263.75 5.95
tp @s[scores={cutSceneTimer=57}] 6005.854 85.58199 6.020766 263.75 5.95
tp @s[scores={cutSceneTimer=58}] 6005.861 85.58121 6.019954 263.75 5.95
tp @s[scores={cutSceneTimer=59}] 6005.868 85.58043 6.019142 263.75 5.95
tp @s[scores={cutSceneTimer=60}] 6005.875 85.57965 6.01833 263.75 5.95
tp @s[scores={cutSceneTimer=61}] 6005.883 85.57887 6.017518 263.75 5.95
tp @s[scores={cutSceneTimer=62}] 6005.89 85.57809 6.016706 263.75 5.95
tp @s[scores={cutSceneTimer=63}] 6005.897 85.57732 6.015894 263.75 5.95
tp @s[scores={cutSceneTimer=64}] 6005.905 85.57654 6.015082 263.75 5.95
tp @s[scores={cutSceneTimer=65}] 6005.912 85.57576 6.01427 263.75 5.95
tp @s[scores={cutSceneTimer=66}] 6005.919 85.57498 6.013458 263.75 5.95
tp @s[scores={cutSceneTimer=67}] 6005.927 85.5742 6.012646 263.75 5.95
tp @s[scores={cutSceneTimer=68}] 6005.934 85.57343 6.011834 263.75 5.95
tp @s[scores={cutSceneTimer=69}] 6005.941 85.57265 6.011022 263.75 5.95
tp @s[scores={cutSceneTimer=70}] 6005.949 85.57187 6.01021 263.75 5.95
tp @s[scores={cutSceneTimer=71}] 6005.956 85.57109 6.009398 263.75 5.95
tp @s[scores={cutSceneTimer=72}] 6005.963 85.57031 6.008585 263.75 5.95
tp @s[scores={cutSceneTimer=73}] 6005.971 85.56953 6.007773 263.75 5.95
tp @s[scores={cutSceneTimer=74}] 6005.978 85.56876 6.006961 263.75 5.95
tp @s[scores={cutSceneTimer=75}] 6005.985 85.56798 6.006149 263.75 5.95
tp @s[scores={cutSceneTimer=76}] 6005.993 85.5672 6.005337 263.75 5.95
tp @s[scores={cutSceneTimer=77}] 6006.000 85.56642 6.004525 263.75 5.95
tp @s[scores={cutSceneTimer=78}] 6006.007 85.56564 6.003713 263.75 5.95
tp @s[scores={cutSceneTimer=79}] 6006.015 85.56487 6.002901 263.75 5.95
tp @s[scores={cutSceneTimer=80}] 6006.022 85.56409 6.002089 263.75 5.95
tp @s[scores={cutSceneTimer=81}] 6006.029 85.56331 6.001277 263.75 5.95
tp @s[scores={cutSceneTimer=82}] 6006.037 85.56253 6.000465 263.75 5.95
tp @s[scores={cutSceneTimer=83}] 6006.044 85.56175 5.999653 263.75 5.95
tp @s[scores={cutSceneTimer=84}] 6006.051 85.56097 5.998841 263.75 5.95
tp @s[scores={cutSceneTimer=85}] 6006.059 85.5602 5.998029 263.75 5.95
tp @s[scores={cutSceneTimer=86}] 6006.066 85.55942 5.997217 263.75 5.95
tp @s[scores={cutSceneTimer=87}] 6006.073 85.55864 5.996405 263.75 5.95
tp @s[scores={cutSceneTimer=88}] 6006.081 85.55786 5.995593 263.75 5.95
tp @s[scores={cutSceneTimer=89}] 6006.088 85.55708 5.994781 263.75 5.95
tp @s[scores={cutSceneTimer=90}] 6006.095 85.5563 5.993968 263.75 5.95
tp @s[scores={cutSceneTimer=91}] 6006.103 85.55553 5.993156 263.75 5.95
tp @s[scores={cutSceneTimer=92}] 6006.11 85.55475 5.992344 263.75 5.95
tp @s[scores={cutSceneTimer=93}] 6006.117 85.55397 5.991532 263.75 5.95
tp @s[scores={cutSceneTimer=94}] 6006.125 85.55319 5.99072 263.75 5.95
tp @s[scores={cutSceneTimer=95}] 6006.132 85.55241 5.989908 263.75 5.95
tp @s[scores={cutSceneTimer=96}] 6006.139 85.55164 5.989096 263.75 5.95
tp @s[scores={cutSceneTimer=97}] 6006.146 85.55086 5.988284 263.75 5.95
tp @s[scores={cutSceneTimer=98}] 6006.154 85.55008 5.987472 263.75 5.95
tp @s[scores={cutSceneTimer=99}] 6006.161 85.5493 5.98666 263.75 5.95
tp @s[scores={cutSceneTimer=100}] 6006.168 85.54852 5.985848 263.75 5.95
tp @s[scores={cutSceneTimer=101}] 6006.176 85.54774 5.985036 263.75 5.95
tp @s[scores={cutSceneTimer=102}] 6006.183 85.54697 5.984224 263.75 5.95
tp @s[scores={cutSceneTimer=103}] 6006.19 85.54619 5.983412 263.75 5.95
tp @s[scores={cutSceneTimer=104}] 6006.198 85.54541 5.9826 263.75 5.95
tp @s[scores={cutSceneTimer=105}] 6006.205 85.54463 5.981788 263.75 5.95
tp @s[scores={cutSceneTimer=106}] 6006.212 85.54385 5.980976 263.75 5.95
tp @s[scores={cutSceneTimer=107}] 6006.22 85.54308 5.980164 263.75 5.95
tp @s[scores={cutSceneTimer=108}] 6006.227 85.5423 5.979352 263.75 5.95
tp @s[scores={cutSceneTimer=109}] 6006.234 85.54152 5.978539 263.75 5.95
tp @s[scores={cutSceneTimer=110}] 6006.242 85.54074 5.977727 263.75 5.95
tp @s[scores={cutSceneTimer=111}] 6006.249 85.53996 5.976915 263.75 5.95
tp @s[scores={cutSceneTimer=112}] 6006.256 85.53918 5.976103 263.75 5.95
tp @s[scores={cutSceneTimer=113}] 6006.264 85.53841 5.975291 263.75 5.95
tp @s[scores={cutSceneTimer=114}] 6006.271 85.53763 5.974479 263.75 5.95
tp @s[scores={cutSceneTimer=115}] 6006.278 85.53685 5.973667 263.75 5.95
tp @s[scores={cutSceneTimer=116}] 6006.286 85.53607 5.972855 263.75 5.95
tp @s[scores={cutSceneTimer=117}] 6006.293 85.53529 5.972043 263.75 5.95
tp @s[scores={cutSceneTimer=118}] 6006.3 85.53452 5.971231 263.75 5.95
tp @s[scores={cutSceneTimer=119}] 6006.308 85.53374 5.970419 263.75 5.95
tp @s[scores={cutSceneTimer=120}] 6006.315 85.53296 5.969607 263.75 5.95
tp @s[scores={cutSceneTimer=121}] 6006.322 85.53218 5.968795 263.75 5.95
tp @s[scores={cutSceneTimer=122}] 6006.33 85.5314 5.967983 263.75 5.95
tp @s[scores={cutSceneTimer=123}] 6006.337 85.53062 5.967171 263.75 5.95
tp @s[scores={cutSceneTimer=124}] 6006.344 85.52985 5.966359 263.75 5.95
tp @s[scores={cutSceneTimer=125}] 6006.352 85.52907 5.965547 263.75 5.95
tp @s[scores={cutSceneTimer=126}] 6006.359 85.52829 5.964735 263.75 5.95
tp @s[scores={cutSceneTimer=127}] 6006.366 85.52751 5.963923 263.75 5.95
tp @s[scores={cutSceneTimer=128}] 6006.374 85.52673 5.96311 263.75 5.95
tp @s[scores={cutSceneTimer=129}] 6006.381 85.52596 5.962298 263.75 5.95
tp @s[scores={cutSceneTimer=130}] 6006.388 85.52518 5.961486 263.75 5.95
tp @s[scores={cutSceneTimer=131}] 6006.396 85.5244 5.960674 263.75 5.95
tp @s[scores={cutSceneTimer=132}] 6006.403 85.52362 5.959862 263.75 5.95
tp @s[scores={cutSceneTimer=133}] 6006.41 85.52284 5.95905 263.75 5.95
tp @s[scores={cutSceneTimer=134}] 6006.417 85.52206 5.958238 263.75 5.95
tp @s[scores={cutSceneTimer=135}] 6006.425 85.52129 5.957426 263.75 5.95
tp @s[scores={cutSceneTimer=136}] 6006.432 85.52051 5.956614 263.75 5.95
tp @s[scores={cutSceneTimer=137}] 6006.439 85.51973 5.955802 263.75 5.95
tp @s[scores={cutSceneTimer=138}] 6006.447 85.51895 5.95499 263.75 5.95
tp @s[scores={cutSceneTimer=139}] 6006.454 85.51817 5.954178 263.75 5.95
tp @s[scores={cutSceneTimer=140}] 6006.461 85.5174 5.953366 263.75 5.95
tp @s[scores={cutSceneTimer=141}] 6006.469 85.51662 5.952554 263.75 5.95
tp @s[scores={cutSceneTimer=142}] 6006.476 85.51584 5.951742 263.75 5.95
tp @s[scores={cutSceneTimer=143}] 6006.483 85.51506 5.95093 263.75 5.95
tp @s[scores={cutSceneTimer=144}] 6006.491 85.51428 5.950118 263.75 5.95
tp @s[scores={cutSceneTimer=145}] 6006.498 85.5135 5.949306 263.75 5.95
tp @s[scores={cutSceneTimer=146}] 6006.505 85.51273 5.948493 263.75 5.95
tp @s[scores={cutSceneTimer=147}] 6006.513 85.51195 5.947681 263.75 5.95
tp @s[scores={cutSceneTimer=148}] 6006.52 85.51117 5.946869 263.75 5.95
tp @s[scores={cutSceneTimer=149}] 6006.527 85.51039 5.946057 263.75 5.95
tp @s[scores={cutSceneTimer=150}] 6006.535 85.50961 5.945245 263.75 5.95
tp @s[scores={cutSceneTimer=151}] 6006.542 85.50883 5.944433 263.75 5.95
tp @s[scores={cutSceneTimer=152}] 6006.549 85.50806 5.943621 263.75 5.95
tp @s[scores={cutSceneTimer=153}] 6006.557 85.50728 5.942809 263.75 5.95
tp @s[scores={cutSceneTimer=154}] 6006.564 85.5065 5.941997 263.75 5.95
tp @s[scores={cutSceneTimer=155}] 6006.571 85.50572 5.941185 263.75 5.95
tp @s[scores={cutSceneTimer=156}] 6006.579 85.50494 5.940373 263.75 5.95
tp @s[scores={cutSceneTimer=157}] 6006.586 85.50417 5.939561 263.75 5.95
tp @s[scores={cutSceneTimer=158}] 6006.593 85.50339 5.938749 263.75 5.95
tp @s[scores={cutSceneTimer=159}] 6006.601 85.50261 5.937937 263.75 5.95
tp @s[scores={cutSceneTimer=160}] 6006.608 85.50183 5.937125 263.75 5.95
execute as @s[scores={cutSceneTimer=140}] run function hp:cutscenes/fade_in

# ¤Flitwick:¤ Welcome back to my class students!
# ¤Флитвик;¤ Рад вас снова видеть на занятии!
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 10 1 0
execute as @s[scores={cutSceneTimer=20..160}] run title @s actionbar ["",{"text":""},{"text":"Флитвик;","color":"dark_gray"},{"text":" Рад вас снова видеть на занятии! "}]
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=27},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=31},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=38},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=49},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=53},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=60},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Flitwick:¤ You've already learned that you can heal yourself using potions.
# ¤Flitwick:¤ Вы уже узнали как можно исцелить себя с помощью зелий.
execute as @s[scores={cutSceneTimer=161},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 10 1 0
execute as @s[scores={cutSceneTimer=161..300}] run title @s actionbar ["",{"text":""},{"text":"Флитвик;","color":"dark_gray"},{"text":" Вы уже узнали как можно исцелить себя с помощью зелий."}]
execute as @s[scores={cutSceneTimer=161},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=168},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=172},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=179},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=183},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=190},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=194},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=201},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral


# ¤Flitwick:¤ In this lesson you will learn the spell 'Брахиам Эмендо' as another way to restore your health after a fight.
# ¤Flitwick:¤ На этом занятии вы научитесь заклинанию 'Брахиам Эмендо', другой способ восстановления здоровья.
execute as @s[scores={cutSceneTimer=301},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 10 1 0
execute as @s[scores={cutSceneTimer=301..450}] run title @s actionbar ["",{"text":""},{"text":"Флитвик;","color":"dark_gray"},{"text":" На этом занятии вы научитесь заклинанию 'Брахиам Эмендо', другой способ восстановления здоровья."}]
execute as @s[scores={cutSceneTimer=301},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=308},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=312},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=319},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=323},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=330},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=334},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=341},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral



execute as @s[scores={cutSceneTimer=161}] run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=161}] 5996.977 87.35645 8.618429 -963.44 45.36
tp @s[scores={cutSceneTimer=162}] 5996.974 87.35289 8.616858 -963.44 45.36
tp @s[scores={cutSceneTimer=163}] 5996.971 87.34933 8.615288 -963.44 45.36
tp @s[scores={cutSceneTimer=164}] 5996.968 87.34578 8.613717 -963.44 45.36
tp @s[scores={cutSceneTimer=165}] 5996.965 87.34222 8.612146 -963.44 45.36
tp @s[scores={cutSceneTimer=166}] 5996.962 87.33867 8.610576 -963.44 45.36
tp @s[scores={cutSceneTimer=167}] 5996.959 87.33511 8.609005 -963.44 45.36
tp @s[scores={cutSceneTimer=168}] 5996.957 87.33156 8.607434 -963.44 45.36
tp @s[scores={cutSceneTimer=169}] 5996.954 87.328 8.605864 -963.44 45.36
tp @s[scores={cutSceneTimer=170}] 5996.951 87.32445 8.604293 -963.44 45.36
tp @s[scores={cutSceneTimer=171}] 5996.948 87.32089 8.602722 -963.44 45.36
tp @s[scores={cutSceneTimer=172}] 5996.945 87.31734 8.601151 -963.44 45.36
tp @s[scores={cutSceneTimer=173}] 5996.942 87.31378 8.599581 -963.44 45.36
tp @s[scores={cutSceneTimer=174}] 5996.939 87.31023 8.59801 -963.44 45.36
tp @s[scores={cutSceneTimer=175}] 5996.936 87.30667 8.596439 -963.44 45.36
tp @s[scores={cutSceneTimer=176}] 5996.933 87.30312 8.594869 -963.44 45.36
tp @s[scores={cutSceneTimer=177}] 5996.93 87.29956 8.593298 -963.44 45.36
tp @s[scores={cutSceneTimer=178}] 5996.927 87.29601 8.591727 -963.44 45.36
tp @s[scores={cutSceneTimer=179}] 5996.924 87.29245 8.590157 -963.44 45.36
tp @s[scores={cutSceneTimer=180}] 5996.921 87.28889 8.588586 -963.44 45.36
tp @s[scores={cutSceneTimer=181}] 5996.918 87.28534 8.587015 -963.44 45.36
tp @s[scores={cutSceneTimer=182}] 5996.916 87.28178 8.585444 -963.44 45.36
tp @s[scores={cutSceneTimer=183}] 5996.913 87.27823 8.583874 -963.44 45.36
tp @s[scores={cutSceneTimer=184}] 5996.91 87.27467 8.582303 -963.44 45.36
tp @s[scores={cutSceneTimer=185}] 5996.907 87.27112 8.580732 -963.44 45.36
tp @s[scores={cutSceneTimer=186}] 5996.904 87.26756 8.579162 -963.44 45.36
tp @s[scores={cutSceneTimer=187}] 5996.901 87.26401 8.577591 -963.44 45.36
tp @s[scores={cutSceneTimer=188}] 5996.898 87.26045 8.57602 -963.44 45.36
tp @s[scores={cutSceneTimer=189}] 5996.895 87.2569 8.57445 -963.44 45.36
tp @s[scores={cutSceneTimer=190}] 5996.892 87.25334 8.572879 -963.44 45.36
tp @s[scores={cutSceneTimer=191}] 5996.889 87.24979 8.571308 -963.44 45.36
tp @s[scores={cutSceneTimer=192}] 5996.886 87.24623 8.569737 -963.44 45.36
tp @s[scores={cutSceneTimer=193}] 5996.883 87.24268 8.568167 -963.44 45.36
tp @s[scores={cutSceneTimer=194}] 5996.88 87.23912 8.566596 -963.44 45.36
tp @s[scores={cutSceneTimer=195}] 5996.877 87.23557 8.565025 -963.44 45.36
tp @s[scores={cutSceneTimer=196}] 5996.875 87.23201 8.563455 -963.44 45.36
tp @s[scores={cutSceneTimer=197}] 5996.872 87.22845 8.561884 -963.44 45.36
tp @s[scores={cutSceneTimer=198}] 5996.869 87.2249 8.560313 -963.44 45.36
tp @s[scores={cutSceneTimer=199}] 5996.866 87.22134 8.558743 -963.44 45.36
tp @s[scores={cutSceneTimer=200}] 5996.863 87.21779 8.557172 -963.44 45.36
tp @s[scores={cutSceneTimer=201}] 5996.86 87.21423 8.555601 -963.44 45.36
tp @s[scores={cutSceneTimer=202}] 5996.857 87.21068 8.55403 -963.44 45.36
tp @s[scores={cutSceneTimer=203}] 5996.854 87.20712 8.55246 -963.44 45.36
tp @s[scores={cutSceneTimer=204}] 5996.851 87.20357 8.550889 -963.44 45.36
tp @s[scores={cutSceneTimer=205}] 5996.848 87.20001 8.549318 -963.44 45.36
tp @s[scores={cutSceneTimer=206}] 5996.845 87.19646 8.547748 -963.44 45.36
tp @s[scores={cutSceneTimer=207}] 5996.842 87.1929 8.546177 -963.44 45.36
tp @s[scores={cutSceneTimer=208}] 5996.839 87.18935 8.544606 -963.44 45.36
tp @s[scores={cutSceneTimer=209}] 5996.836 87.18579 8.543036 -963.44 45.36
tp @s[scores={cutSceneTimer=210}] 5996.833 87.18224 8.541465 -963.44 45.36
tp @s[scores={cutSceneTimer=211}] 5996.831 87.17868 8.539894 -963.44 45.36
tp @s[scores={cutSceneTimer=212}] 5996.828 87.17513 8.538323 -963.44 45.36
tp @s[scores={cutSceneTimer=213}] 5996.825 87.17157 8.536753 -963.44 45.36
tp @s[scores={cutSceneTimer=214}] 5996.822 87.16801 8.535182 -963.44 45.36
tp @s[scores={cutSceneTimer=215}] 5996.819 87.16446 8.533611 -963.44 45.36
tp @s[scores={cutSceneTimer=216}] 5996.816 87.1609 8.532041 -963.44 45.36
tp @s[scores={cutSceneTimer=217}] 5996.813 87.15735 8.53047 -963.44 45.36
tp @s[scores={cutSceneTimer=218}] 5996.81 87.15379 8.528899 -963.44 45.36
tp @s[scores={cutSceneTimer=219}] 5996.807 87.15024 8.527328 -963.44 45.36
tp @s[scores={cutSceneTimer=220}] 5996.804 87.14668 8.525758 -963.44 45.36
tp @s[scores={cutSceneTimer=221}] 5996.801 87.14313 8.524187 -963.44 45.36
tp @s[scores={cutSceneTimer=222}] 5996.798 87.13957 8.522616 -963.44 45.36
tp @s[scores={cutSceneTimer=223}] 5996.795 87.13602 8.521046 -963.44 45.36
tp @s[scores={cutSceneTimer=224}] 5996.792 87.13246 8.519475 -963.44 45.36
tp @s[scores={cutSceneTimer=225}] 5996.79 87.12891 8.517904 -963.44 45.36
tp @s[scores={cutSceneTimer=226}] 5996.787 87.12535 8.516334 -963.44 45.36
tp @s[scores={cutSceneTimer=227}] 5996.784 87.1218 8.514763 -963.44 45.36
tp @s[scores={cutSceneTimer=228}] 5996.781 87.11824 8.513192 -963.44 45.36
tp @s[scores={cutSceneTimer=229}] 5996.778 87.11469 8.511621 -963.44 45.36
tp @s[scores={cutSceneTimer=230}] 5996.775 87.11113 8.510051 -963.44 45.36
tp @s[scores={cutSceneTimer=231}] 5996.772 87.10757 8.50848 -963.44 45.36
tp @s[scores={cutSceneTimer=232}] 5996.769 87.10402 8.506909 -963.44 45.36
tp @s[scores={cutSceneTimer=233}] 5996.766 87.10046 8.505339 -963.44 45.36
tp @s[scores={cutSceneTimer=234}] 5996.763 87.09691 8.503768 -963.44 45.36
tp @s[scores={cutSceneTimer=235}] 5996.76 87.09335 8.502197 -963.44 45.36
tp @s[scores={cutSceneTimer=236}] 5996.757 87.0898 8.500627 -963.44 45.36
tp @s[scores={cutSceneTimer=237}] 5996.754 87.08624 8.499056 -963.44 45.36
tp @s[scores={cutSceneTimer=238}] 5996.751 87.08269 8.497485 -963.44 45.36
tp @s[scores={cutSceneTimer=239}] 5996.749 87.07913 8.495914 -963.44 45.36
tp @s[scores={cutSceneTimer=240}] 5996.746 87.07558 8.494344 -963.44 45.36
tp @s[scores={cutSceneTimer=241}] 5996.743 87.07202 8.492773 -963.44 45.36
tp @s[scores={cutSceneTimer=242}] 5996.74 87.06847 8.491202 -963.44 45.36
tp @s[scores={cutSceneTimer=243}] 5996.737 87.06491 8.489632 -963.44 45.36
tp @s[scores={cutSceneTimer=244}] 5996.734 87.06136 8.488061 -963.44 45.36
tp @s[scores={cutSceneTimer=245}] 5996.731 87.0578 8.48649 -963.44 45.36
tp @s[scores={cutSceneTimer=246}] 5996.728 87.05424 8.48492 -963.44 45.36
tp @s[scores={cutSceneTimer=247}] 5996.725 87.05069 8.483349 -963.44 45.36
tp @s[scores={cutSceneTimer=248}] 5996.722 87.04713 8.481778 -963.44 45.36
tp @s[scores={cutSceneTimer=249}] 5996.719 87.04358 8.480207 -963.44 45.36
tp @s[scores={cutSceneTimer=250}] 5996.716 87.04002 8.478637 -963.44 45.36
tp @s[scores={cutSceneTimer=251}] 5996.713 87.03647 8.477066 -963.44 45.36
tp @s[scores={cutSceneTimer=252}] 5996.71 87.03291 8.475495 -963.44 45.36
tp @s[scores={cutSceneTimer=253}] 5996.708 87.02936 8.473925 -963.44 45.36
tp @s[scores={cutSceneTimer=254}] 5996.705 87.0258 8.472354 -963.44 45.36
tp @s[scores={cutSceneTimer=255}] 5996.702 87.02225 8.470783 -963.44 45.36
tp @s[scores={cutSceneTimer=256}] 5996.699 87.01869 8.469213 -963.44 45.36
tp @s[scores={cutSceneTimer=257}] 5996.696 87.01514 8.467642 -963.44 45.36
tp @s[scores={cutSceneTimer=258}] 5996.693 87.01158 8.466071 -963.44 45.36
tp @s[scores={cutSceneTimer=259}] 5996.69 87.00803 8.4645 -963.44 45.36
tp @s[scores={cutSceneTimer=260}] 5996.687 87.00447 8.46293 -963.44 45.36
tp @s[scores={cutSceneTimer=261}] 5996.684 87.00092 8.461359 -963.44 45.36
tp @s[scores={cutSceneTimer=262}] 5996.681 86.99736 8.459788 -963.44 45.36
tp @s[scores={cutSceneTimer=263}] 5996.678 86.9938 8.458218 -963.44 45.36
tp @s[scores={cutSceneTimer=264}] 5996.675 86.99025 8.456647 -963.44 45.36
tp @s[scores={cutSceneTimer=265}] 5996.672 86.98669 8.455076 -963.44 45.36
tp @s[scores={cutSceneTimer=266}] 5996.669 86.98314 8.453506 -963.44 45.36
tp @s[scores={cutSceneTimer=267}] 5996.667 86.97958 8.451935 -963.44 45.36
tp @s[scores={cutSceneTimer=268}] 5996.664 86.97603 8.450364 -963.44 45.36
tp @s[scores={cutSceneTimer=269}] 5996.661 86.97247 8.448793 -963.44 45.36
tp @s[scores={cutSceneTimer=270}] 5996.658 86.96892 8.447223 -963.44 45.36
tp @s[scores={cutSceneTimer=271}] 5996.655 86.96536 8.445652 -963.44 45.36
tp @s[scores={cutSceneTimer=272}] 5996.652 86.96181 8.444081 -963.44 45.36
tp @s[scores={cutSceneTimer=273}] 5996.649 86.95825 8.442511 -963.44 45.36
tp @s[scores={cutSceneTimer=274}] 5996.646 86.9547 8.44094 -963.44 45.36
tp @s[scores={cutSceneTimer=275}] 5996.643 86.95114 8.439369 -963.44 45.36
tp @s[scores={cutSceneTimer=276}] 5996.64 86.94759 8.437799 -963.44 45.36
tp @s[scores={cutSceneTimer=277}] 5996.637 86.94403 8.436228 -963.44 45.36
tp @s[scores={cutSceneTimer=278}] 5996.634 86.94048 8.434657 -963.44 45.36
tp @s[scores={cutSceneTimer=279}] 5996.631 86.93692 8.433086 -963.44 45.36
tp @s[scores={cutSceneTimer=280}] 5996.628 86.93336 8.431516 -963.44 45.36
tp @s[scores={cutSceneTimer=281}] 5996.625 86.92981 8.429945 -963.44 45.36
tp @s[scores={cutSceneTimer=282}] 5996.623 86.92625 8.428374 -963.44 45.36
tp @s[scores={cutSceneTimer=283}] 5996.62 86.9227 8.426804 -963.44 45.36
tp @s[scores={cutSceneTimer=284}] 5996.617 86.91914 8.425233 -963.44 45.36
tp @s[scores={cutSceneTimer=285}] 5996.614 86.91559 8.423662 -963.44 45.36
tp @s[scores={cutSceneTimer=286}] 5996.611 86.91203 8.422091 -963.44 45.36
tp @s[scores={cutSceneTimer=287}] 5996.608 86.90848 8.420521 -963.44 45.36
tp @s[scores={cutSceneTimer=288}] 5996.605 86.90492 8.41895 -963.44 45.36
tp @s[scores={cutSceneTimer=289}] 5996.602 86.90137 8.417379 -963.44 45.36
tp @s[scores={cutSceneTimer=290}] 5996.599 86.89781 8.415809 -963.44 45.36
tp @s[scores={cutSceneTimer=291}] 5996.596 86.89426 8.414238 -963.44 45.36
tp @s[scores={cutSceneTimer=292}] 5996.593 86.8907 8.412667 -963.44 45.36
tp @s[scores={cutSceneTimer=293}] 5996.59 86.88715 8.411097 -963.44 45.36
tp @s[scores={cutSceneTimer=294}] 5996.587 86.88359 8.409526 -963.44 45.36
tp @s[scores={cutSceneTimer=295}] 5996.584 86.88004 8.407955 -963.44 45.36
tp @s[scores={cutSceneTimer=296}] 5996.582 86.87648 8.406384 -963.44 45.36
tp @s[scores={cutSceneTimer=297}] 5996.579 86.87292 8.404814 -963.44 45.36
tp @s[scores={cutSceneTimer=298}] 5996.576 86.86937 8.403243 -963.44 45.36
tp @s[scores={cutSceneTimer=299}] 5996.573 86.86581 8.401672 -963.44 45.36
tp @s[scores={cutSceneTimer=300}] 5996.57 86.86226 8.400102 -963.44 45.36
tp @s[scores={cutSceneTimer=301}] 5996.567 86.8587 8.398531 -963.44 45.36
tp @s[scores={cutSceneTimer=302}] 5996.564 86.85515 8.39696 -963.44 45.36
tp @s[scores={cutSceneTimer=303}] 5996.561 86.85159 8.39539 -963.44 45.36
tp @s[scores={cutSceneTimer=304}] 5996.558 86.84804 8.393819 -963.44 45.36
tp @s[scores={cutSceneTimer=305}] 5996.555 86.84448 8.392248 -963.44 45.36
tp @s[scores={cutSceneTimer=306}] 5996.552 86.84093 8.390677 -963.44 45.36
tp @s[scores={cutSceneTimer=307}] 5996.549 86.83737 8.389107 -963.44 45.36
tp @s[scores={cutSceneTimer=308}] 5996.546 86.83382 8.387536 -963.44 45.36
tp @s[scores={cutSceneTimer=309}] 5996.543 86.83026 8.385965 -963.44 45.36
tp @s[scores={cutSceneTimer=310}] 5996.541 86.82671 8.384395 -963.44 45.36
tp @s[scores={cutSceneTimer=311}] 5996.538 86.82315 8.382824 -963.44 45.36
tp @s[scores={cutSceneTimer=312}] 5996.535 86.8196 8.381253 -963.44 45.36
tp @s[scores={cutSceneTimer=313}] 5996.532 86.81604 8.379683 -963.44 45.36
tp @s[scores={cutSceneTimer=314}] 5996.529 86.81248 8.378112 -963.44 45.36
tp @s[scores={cutSceneTimer=315}] 5996.526 86.80893 8.376541 -963.44 45.36
tp @s[scores={cutSceneTimer=316}] 5996.523 86.80537 8.37497 -963.44 45.36
tp @s[scores={cutSceneTimer=317}] 5996.52 86.80182 8.3734 -963.44 45.36
tp @s[scores={cutSceneTimer=318}] 5996.517 86.79826 8.371829 -963.44 45.36
tp @s[scores={cutSceneTimer=319}] 5996.514 86.79471 8.370258 -963.44 45.36
tp @s[scores={cutSceneTimer=320}] 5996.511 86.79115 8.368688 -963.44 45.36
tp @s[scores={cutSceneTimer=321}] 5996.508 86.7876 8.367117 -963.44 45.36
tp @s[scores={cutSceneTimer=322}] 5996.505 86.78404 8.365546 -963.44 45.36
tp @s[scores={cutSceneTimer=323}] 5996.502 86.78049 8.363976 -963.44 45.36
tp @s[scores={cutSceneTimer=324}] 5996.5 86.77693 8.362405 -963.44 45.36
tp @s[scores={cutSceneTimer=325}] 5996.497 86.77338 8.360834 -963.44 45.36
tp @s[scores={cutSceneTimer=326}] 5996.494 86.76982 8.359263 -963.44 45.36
tp @s[scores={cutSceneTimer=327}] 5996.491 86.76627 8.357693 -963.44 45.36
tp @s[scores={cutSceneTimer=328}] 5996.488 86.76271 8.356122 -963.44 45.36
tp @s[scores={cutSceneTimer=329}] 5996.485 86.75916 8.354551 -963.44 45.36
tp @s[scores={cutSceneTimer=330}] 5996.482 86.7556 8.352981 -963.44 45.36
tp @s[scores={cutSceneTimer=331}] 5996.479 86.75204 8.35141 -963.44 45.36
tp @s[scores={cutSceneTimer=332}] 5996.476 86.74849 8.349839 -963.44 45.36
tp @s[scores={cutSceneTimer=333}] 5996.473 86.74493 8.348269 -963.44 45.36
tp @s[scores={cutSceneTimer=334}] 5996.47 86.74138 8.346698 -963.44 45.36
tp @s[scores={cutSceneTimer=335}] 5996.467 86.73782 8.345127 -963.44 45.36
tp @s[scores={cutSceneTimer=336}] 5996.464 86.73427 8.343556 -963.44 45.36
tp @s[scores={cutSceneTimer=337}] 5996.461 86.73071 8.341986 -963.44 45.36
tp @s[scores={cutSceneTimer=338}] 5996.458 86.72716 8.340415 -963.44 45.36
tp @s[scores={cutSceneTimer=339}] 5996.456 86.7236 8.338844 -963.44 45.36
tp @s[scores={cutSceneTimer=340}] 5996.453 86.72005 8.337274 -963.44 45.36
tp @s[scores={cutSceneTimer=341}] 5996.45 86.71649 8.335703 -963.44 45.36
tp @s[scores={cutSceneTimer=342}] 5996.447 86.71294 8.334132 -963.44 45.36
tp @s[scores={cutSceneTimer=343}] 5996.444 86.70938 8.332561 -963.44 45.36
tp @s[scores={cutSceneTimer=344}] 5996.441 86.70583 8.330991 -963.44 45.36
tp @s[scores={cutSceneTimer=345}] 5996.438 86.70227 8.32942 -963.44 45.36
tp @s[scores={cutSceneTimer=346}] 5996.435 86.69872 8.327849 -963.44 45.36
tp @s[scores={cutSceneTimer=347}] 5996.432 86.69516 8.326279 -963.44 45.36
tp @s[scores={cutSceneTimer=348}] 5996.429 86.6916 8.324708 -963.44 45.36
tp @s[scores={cutSceneTimer=349}] 5996.426 86.68805 8.323137 -963.44 45.36
tp @s[scores={cutSceneTimer=350}] 5996.423 86.68449 8.321567 -963.44 45.36
tp @s[scores={cutSceneTimer=351}] 5996.42 86.68094 8.319996 -963.44 45.36
tp @s[scores={cutSceneTimer=352}] 5996.417 86.67738 8.318425 -963.44 45.36
tp @s[scores={cutSceneTimer=353}] 5996.415 86.67383 8.316854 -963.44 45.36
tp @s[scores={cutSceneTimer=354}] 5996.412 86.67027 8.315284 -963.44 45.36
tp @s[scores={cutSceneTimer=355}] 5996.409 86.66672 8.313713 -963.44 45.36
tp @s[scores={cutSceneTimer=356}] 5996.406 86.66316 8.312142 -963.44 45.36
tp @s[scores={cutSceneTimer=357}] 5996.403 86.65961 8.310572 -963.44 45.36
tp @s[scores={cutSceneTimer=358}] 5996.4 86.65605 8.309001 -963.44 45.36
tp @s[scores={cutSceneTimer=359}] 5996.397 86.6525 8.30743 -963.44 45.36
tp @s[scores={cutSceneTimer=360}] 5996.394 86.64894 8.30586 -963.44 45.36
tp @s[scores={cutSceneTimer=361}] 5996.391 86.64539 8.304289 -963.44 45.36
tp @s[scores={cutSceneTimer=362}] 5996.388 86.64183 8.302718 -963.44 45.36
tp @s[scores={cutSceneTimer=363}] 5996.385 86.63828 8.301147 -963.44 45.36
tp @s[scores={cutSceneTimer=364}] 5996.382 86.63472 8.299577 -963.44 45.36
tp @s[scores={cutSceneTimer=365}] 5996.379 86.63116 8.298006 -963.44 45.36
tp @s[scores={cutSceneTimer=366}] 5996.376 86.62761 8.296435 -963.44 45.36
tp @s[scores={cutSceneTimer=367}] 5996.374 86.62405 8.294865 -963.44 45.36
tp @s[scores={cutSceneTimer=368}] 5996.371 86.6205 8.293294 -963.44 45.36
tp @s[scores={cutSceneTimer=369}] 5996.368 86.61694 8.291723 -963.44 45.36
tp @s[scores={cutSceneTimer=370}] 5996.365 86.61339 8.290153 -963.44 45.36
tp @s[scores={cutSceneTimer=371}] 5996.362 86.60983 8.288582 -963.44 45.36
tp @s[scores={cutSceneTimer=372}] 5996.359 86.60628 8.287011 -963.44 45.36
tp @s[scores={cutSceneTimer=373}] 5996.356 86.60272 8.28544 -963.44 45.36
tp @s[scores={cutSceneTimer=374}] 5996.353 86.59917 8.28387 -963.44 45.36
tp @s[scores={cutSceneTimer=375}] 5996.35 86.59561 8.282299 -963.44 45.36
tp @s[scores={cutSceneTimer=376}] 5996.347 86.59206 8.280728 -963.44 45.36
tp @s[scores={cutSceneTimer=377}] 5996.344 86.5885 8.279158 -963.44 45.36
tp @s[scores={cutSceneTimer=378}] 5996.341 86.58495 8.277587 -963.44 45.36
tp @s[scores={cutSceneTimer=379}] 5996.338 86.58139 8.276016 -963.44 45.36
tp @s[scores={cutSceneTimer=380}] 5996.335 86.57784 8.274446 -963.44 45.36
tp @s[scores={cutSceneTimer=381}] 5996.333 86.57428 8.272875 -963.44 45.36
tp @s[scores={cutSceneTimer=382}] 5996.33 86.57072 8.271304 -963.44 45.36
tp @s[scores={cutSceneTimer=383}] 5996.327 86.56717 8.269733 -963.44 45.36
tp @s[scores={cutSceneTimer=384}] 5996.324 86.56361 8.268163 -963.44 45.36
tp @s[scores={cutSceneTimer=385}] 5996.321 86.56006 8.266592 -963.44 45.36
tp @s[scores={cutSceneTimer=386}] 5996.318 86.5565 8.265021 -963.44 45.36
tp @s[scores={cutSceneTimer=387}] 5996.315 86.55295 8.263451 -963.44 45.36
tp @s[scores={cutSceneTimer=388}] 5996.312 86.54939 8.26188 -963.44 45.36
tp @s[scores={cutSceneTimer=389}] 5996.309 86.54584 8.260309 -963.44 45.36
tp @s[scores={cutSceneTimer=390}] 5996.306 86.54228 8.258739 -963.44 45.36
tp @s[scores={cutSceneTimer=391}] 5996.303 86.53873 8.257168 -963.44 45.36
tp @s[scores={cutSceneTimer=392}] 5996.3 86.53517 8.255597 -963.44 45.36
tp @s[scores={cutSceneTimer=393}] 5996.297 86.53162 8.254026 -963.44 45.36
tp @s[scores={cutSceneTimer=394}] 5996.294 86.52806 8.252456 -963.44 45.36
tp @s[scores={cutSceneTimer=395}] 5996.292 86.52451 8.250885 -963.44 45.36
tp @s[scores={cutSceneTimer=396}] 5996.289 86.52095 8.249314 -963.44 45.36
tp @s[scores={cutSceneTimer=397}] 5996.286 86.5174 8.247744 -963.44 45.36
tp @s[scores={cutSceneTimer=398}] 5996.283 86.51384 8.246173 -963.44 45.36
tp @s[scores={cutSceneTimer=399}] 5996.28 86.51028 8.244602 -963.44 45.36
tp @s[scores={cutSceneTimer=400}] 5996.277 86.50673 8.243032 -963.44 45.36
tp @s[scores={cutSceneTimer=401}] 5996.274 86.50317 8.241461 -963.44 45.36
tp @s[scores={cutSceneTimer=402}] 5996.271 86.49962 8.23989 -963.44 45.36
tp @s[scores={cutSceneTimer=403}] 5996.268 86.49606 8.238319 -963.44 45.36
tp @s[scores={cutSceneTimer=404}] 5996.265 86.49251 8.236749 -963.44 45.36
tp @s[scores={cutSceneTimer=405}] 5996.262 86.48895 8.235178 -963.44 45.36
tp @s[scores={cutSceneTimer=406}] 5996.259 86.4854 8.233607 -963.44 45.36
tp @s[scores={cutSceneTimer=407}] 5996.256 86.48184 8.232037 -963.44 45.36
tp @s[scores={cutSceneTimer=408}] 5996.253 86.47829 8.230466 -963.44 45.36
tp @s[scores={cutSceneTimer=409}] 5996.25 86.47473 8.228895 -963.44 45.36
tp @s[scores={cutSceneTimer=410}] 5996.248 86.47118 8.227324 -963.44 45.36
tp @s[scores={cutSceneTimer=411}] 5996.245 86.46762 8.225754 -963.44 45.36
tp @s[scores={cutSceneTimer=412}] 5996.242 86.46407 8.224183 -963.44 45.36
tp @s[scores={cutSceneTimer=413}] 5996.239 86.46051 8.222612 -963.44 45.36
tp @s[scores={cutSceneTimer=414}] 5996.236 86.45695 8.221042 -963.44 45.36
tp @s[scores={cutSceneTimer=415}] 5996.233 86.4534 8.219471 -963.44 45.36
tp @s[scores={cutSceneTimer=416}] 5996.23 86.44984 8.2179 -963.44 45.36
tp @s[scores={cutSceneTimer=417}] 5996.227 86.44629 8.21633 -963.44 45.36
tp @s[scores={cutSceneTimer=418}] 5996.224 86.44273 8.214759 -963.44 45.36
tp @s[scores={cutSceneTimer=419}] 5996.221 86.43918 8.213188 -963.44 45.36
tp @s[scores={cutSceneTimer=420}] 5996.218 86.43562 8.211617 -963.44 45.36
tp @s[scores={cutSceneTimer=421}] 5996.215 86.43207 8.210047 -963.44 45.36
tp @s[scores={cutSceneTimer=422}] 5996.212 86.42851 8.208476 -963.44 45.36
tp @s[scores={cutSceneTimer=423}] 5996.209 86.42496 8.206905 -963.44 45.36
tp @s[scores={cutSceneTimer=424}] 5996.207 86.4214 8.205335 -963.44 45.36
tp @s[scores={cutSceneTimer=425}] 5996.204 86.41785 8.203764 -963.44 45.36
tp @s[scores={cutSceneTimer=426}] 5996.201 86.41429 8.202193 -963.44 45.36
tp @s[scores={cutSceneTimer=427}] 5996.198 86.41074 8.200623 -963.44 45.36
tp @s[scores={cutSceneTimer=428}] 5996.195 86.40718 8.199052 -963.44 45.36
tp @s[scores={cutSceneTimer=429}] 5996.192 86.40363 8.197481 -963.44 45.36
tp @s[scores={cutSceneTimer=430}] 5996.189 86.40007 8.19591 -963.44 45.36
tp @s[scores={cutSceneTimer=431}] 5996.186 86.39651 8.19434 -963.44 45.36
tp @s[scores={cutSceneTimer=432}] 5996.183 86.39296 8.192769 -963.44 45.36
tp @s[scores={cutSceneTimer=433}] 5996.18 86.3894 8.191198 -963.44 45.36
tp @s[scores={cutSceneTimer=434}] 5996.177 86.38585 8.189628 -963.44 45.36
tp @s[scores={cutSceneTimer=435}] 5996.174 86.38229 8.188057 -963.44 45.36
tp @s[scores={cutSceneTimer=436}] 5996.171 86.37874 8.186486 -963.44 45.36
tp @s[scores={cutSceneTimer=437}] 5996.168 86.37518 8.184916 -963.44 45.36
tp @s[scores={cutSceneTimer=438}] 5996.166 86.37163 8.183345 -963.44 45.36
tp @s[scores={cutSceneTimer=439}] 5996.163 86.36807 8.181774 -963.44 45.36
tp @s[scores={cutSceneTimer=440}] 5996.16 86.36452 8.180203 -963.44 45.36
tp @s[scores={cutSceneTimer=441}] 5996.157 86.36096 8.178633 -963.44 45.36
tp @s[scores={cutSceneTimer=442}] 5996.154 86.35741 8.177062 -963.44 45.36
tp @s[scores={cutSceneTimer=443}] 5996.151 86.35385 8.175491 -963.44 45.36
tp @s[scores={cutSceneTimer=444}] 5996.148 86.3503 8.173921 -963.44 45.36
tp @s[scores={cutSceneTimer=445}] 5996.145 86.34674 8.17235 -963.44 45.36
tp @s[scores={cutSceneTimer=446}] 5996.142 86.34319 8.170779 -963.44 45.36
tp @s[scores={cutSceneTimer=447}] 5996.139 86.33963 8.169209 -963.44 45.36
tp @s[scores={cutSceneTimer=448}] 5996.136 86.33607 8.167638 -963.44 45.36
tp @s[scores={cutSceneTimer=449}] 5996.133 86.33252 8.166067 -963.44 45.36
tp @s[scores={cutSceneTimer=450}] 5996.13 86.32896 8.164496 -963.44 45.36
execute as @s[scores={cutSceneTimer=430}] run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=220},tag=cutsceneLeader] positioned 5991.22 83.00 5.75 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["spellEntity","BrackiumArea","BrackiumInit"],CustomName:"{\"text\":\"BrackiumArea\"}"}
execute as @s[scores={cutSceneTimer=220},tag=cutsceneLeader] positioned 5991.22 83.00 5.75 run scoreboard players set @e[tag=BrackiumInit] idle 300
execute as @s[scores={cutSceneTimer=220},tag=cutsceneLeader] positioned 5991.22 83.00 5.75 run scoreboard players set @e[tag=BrackiumInit] tmp 0
execute as @s[scores={cutSceneTimer=220},tag=cutsceneLeader] positioned 5991.22 83.00 5.75 run tag @e[tag=BrackiumInit] remove BrackiumInit

# ¤Flitwick:¤ I've set up an arena for you to test out the spell!
# ¤Flitwick:¤ Я создал область где вы можете попрактиковаться!
execute as @s[scores={cutSceneTimer=450},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 10 1 0
execute as @s[scores={cutSceneTimer=450..520}] run title @s actionbar ["",{"text":""},{"text":"Флитвик;","color":"dark_gray"},{"text":" Я создал область где вы можете попрактиковаться!"}]


# ¤Flitwick:¤ Fight off the enemies, and use the spell to heal yourself if you take damage.
# ¤Flitwick:¤ Сразитесь с врагами и используйте заклинание, чтобы исцелять себя.
execute as @s[scores={cutSceneTimer=521},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 10 1 0
execute as @s[scores={cutSceneTimer=521..630}] run title @s actionbar ["",{"text":""},{"text":"Флитвик;","color":"dark_gray"},{"text":" Сразитесь с врагами и используйте заклинание, чтобы исцелять себя."}]


execute as @s[scores={cutSceneTimer=452}] run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=451}] 5989.411 47 14.65834 218.1425 31.04875
tp @s[scores={cutSceneTimer=452}] 5989.421 47 14.66668 218.105 31.0975
tp @s[scores={cutSceneTimer=453}] 5989.432 47 14.67501 218.0675 31.14625
tp @s[scores={cutSceneTimer=454}] 5989.443 47 14.68334 218.03 31.195
tp @s[scores={cutSceneTimer=455}] 5989.454 47 14.69165 217.9925 31.24375
tp @s[scores={cutSceneTimer=456}] 5989.464 47 14.69996 217.955 31.2925
tp @s[scores={cutSceneTimer=457}] 5989.475 47 14.70827 217.9174 31.34125
tp @s[scores={cutSceneTimer=458}] 5989.486 47 14.71656 217.8799 31.39
tp @s[scores={cutSceneTimer=459}] 5989.497 47 14.72485 217.8424 31.43875
tp @s[scores={cutSceneTimer=460}] 5989.507 47 14.73313 217.8049 31.4875
tp @s[scores={cutSceneTimer=461}] 5989.518 47 14.74141 217.7674 31.53625
tp @s[scores={cutSceneTimer=462}] 5989.529 47 14.74968 217.7299 31.585
tp @s[scores={cutSceneTimer=463}] 5989.54 47 14.75794 217.6924 31.63375
tp @s[scores={cutSceneTimer=464}] 5989.55 47 14.76619 217.6549 31.6825
tp @s[scores={cutSceneTimer=465}] 5989.561 47 14.77444 217.6174 31.73125
tp @s[scores={cutSceneTimer=466}] 5989.572 47 14.78268 217.5799 31.78
tp @s[scores={cutSceneTimer=467}] 5989.583 47 14.79091 217.5424 31.82875
tp @s[scores={cutSceneTimer=468}] 5989.593 47 14.79914 217.5049 31.8775
tp @s[scores={cutSceneTimer=469}] 5989.604 47 14.80736 217.4674 31.92625
tp @s[scores={cutSceneTimer=470}] 5989.615 47 14.81557 217.4299 31.975
tp @s[scores={cutSceneTimer=471}] 5989.625 47 14.82378 217.3924 32.02375
tp @s[scores={cutSceneTimer=472}] 5989.636 47 14.83197 217.3549 32.0725
tp @s[scores={cutSceneTimer=473}] 5989.647 47 14.84016 217.3174 32.12125
tp @s[scores={cutSceneTimer=474}] 5989.658 47 14.84835 217.2798 32.17001
tp @s[scores={cutSceneTimer=475}] 5989.668 47 14.85653 217.2423 32.21876
tp @s[scores={cutSceneTimer=476}] 5989.679 47 14.8647 217.2048 32.26751
tp @s[scores={cutSceneTimer=477}] 5989.69 47 14.87286 217.1673 32.31626
tp @s[scores={cutSceneTimer=478}] 5989.701 47 14.88101 217.1298 32.36501
tp @s[scores={cutSceneTimer=479}] 5989.711 47 14.88916 217.0923 32.41376
tp @s[scores={cutSceneTimer=480}] 5989.722 47 14.89731 217.0548 32.46252
tp @s[scores={cutSceneTimer=481}] 5989.733 47 14.90544 217.0173 32.51127
tp @s[scores={cutSceneTimer=482}] 5989.744 47 14.91357 216.9798 32.56002
tp @s[scores={cutSceneTimer=483}] 5989.754 47 14.92169 216.9423 32.60877
tp @s[scores={cutSceneTimer=484}] 5989.765 47 14.9298 216.9048 32.65752
tp @s[scores={cutSceneTimer=485}] 5989.776 47 14.93791 216.8673 32.70628
tp @s[scores={cutSceneTimer=486}] 5989.787 47 14.94601 216.8298 32.75503
tp @s[scores={cutSceneTimer=487}] 5989.797 47 14.9541 216.7923 32.80378
tp @s[scores={cutSceneTimer=488}] 5989.808 47 14.96219 216.7548 32.85253
tp @s[scores={cutSceneTimer=489}] 5989.819 47 14.97027 216.7173 32.90128
tp @s[scores={cutSceneTimer=490}] 5989.83 47 14.97834 216.6797 32.95004
tp @s[scores={cutSceneTimer=491}] 5989.84 47 14.9864 216.6422 32.99879
tp @s[scores={cutSceneTimer=492}] 5989.851 47 14.99446 216.6047 33.04754
tp @s[scores={cutSceneTimer=493}] 5989.862 47 15.00251 216.5672 33.09629
tp @s[scores={cutSceneTimer=494}] 5989.873 47 15.01055 216.5297 33.14504
tp @s[scores={cutSceneTimer=495}] 5989.883 47 15.01859 216.4922 33.19379
tp @s[scores={cutSceneTimer=496}] 5989.894 47 15.02662 216.4547 33.24255
tp @s[scores={cutSceneTimer=497}] 5989.905 47 15.03464 216.4172 33.2913
tp @s[scores={cutSceneTimer=498}] 5989.916 47 15.04265 216.3797 33.34005
tp @s[scores={cutSceneTimer=499}] 5989.926 47 15.05066 216.3422 33.3888
tp @s[scores={cutSceneTimer=500}] 5989.937 47 15.05866 216.3047 33.43755
tp @s[scores={cutSceneTimer=501}] 5989.948 47 15.06665 216.2672 33.48631
tp @s[scores={cutSceneTimer=502}] 5989.958 47 15.07464 216.2297 33.53506
tp @s[scores={cutSceneTimer=503}] 5989.969 47 15.08262 216.1922 33.58381
tp @s[scores={cutSceneTimer=504}] 5989.98 47 15.09059 216.1547 33.63256
tp @s[scores={cutSceneTimer=505}] 5989.991 47 15.09855 216.1172 33.68131
tp @s[scores={cutSceneTimer=506}] 5990.001 47 15.10651 216.0797 33.73006
tp @s[scores={cutSceneTimer=507}] 5990.012 47 15.11446 216.0421 33.77882
tp @s[scores={cutSceneTimer=508}] 5990.023 47 15.1224 216.0046 33.82757
tp @s[scores={cutSceneTimer=509}] 5990.034 47 15.13034 215.9671 33.87632
tp @s[scores={cutSceneTimer=510}] 5990.044 47 15.13827 215.9296 33.92507
tp @s[scores={cutSceneTimer=511}] 5990.055 47 15.14619 215.8921 33.97382
tp @s[scores={cutSceneTimer=512}] 5990.066 47 15.1541 215.8546 34.02258
tp @s[scores={cutSceneTimer=513}] 5990.077 47 15.16201 215.8171 34.07133
tp @s[scores={cutSceneTimer=514}] 5990.087 47 15.16991 215.7796 34.12008
tp @s[scores={cutSceneTimer=515}] 5990.098 47 15.1778 215.7421 34.16883
tp @s[scores={cutSceneTimer=516}] 5990.109 47 15.18569 215.7046 34.21758
tp @s[scores={cutSceneTimer=517}] 5990.12 47 15.19357 215.6671 34.26633
tp @s[scores={cutSceneTimer=518}] 5990.13 47 15.20144 215.6296 34.31509
tp @s[scores={cutSceneTimer=519}] 5990.141 47 15.2093 215.5921 34.36384
tp @s[scores={cutSceneTimer=520}] 5990.152 47 15.21716 215.5546 34.41259
tp @s[scores={cutSceneTimer=521}] 5990.163 47 15.22501 215.5171 34.46134
tp @s[scores={cutSceneTimer=522}] 5990.174 47 15.23285 215.4796 34.51009
tp @s[scores={cutSceneTimer=523}] 5990.185 47 15.24069 215.442 34.55885
tp @s[scores={cutSceneTimer=524}] 5990.196 47 15.24852 215.4045 34.6076
tp @s[scores={cutSceneTimer=525}] 5990.208 47 15.25634 215.367 34.65635
tp @s[scores={cutSceneTimer=526}] 5990.219 47 15.26415 215.3295 34.7051
tp @s[scores={cutSceneTimer=527}] 5990.23 47 15.27196 215.292 34.75385
tp @s[scores={cutSceneTimer=528}] 5990.241 47 15.27976 215.2545 34.8026
tp @s[scores={cutSceneTimer=529}] 5990.252 47 15.28755 215.217 34.85136
tp @s[scores={cutSceneTimer=530}] 5990.264 47 15.29533 215.1795 34.90011
tp @s[scores={cutSceneTimer=531}] 5990.275 47 15.30311 215.142 34.94886
tp @s[scores={cutSceneTimer=532}] 5990.286 47 15.31088 215.1045 34.99761
tp @s[scores={cutSceneTimer=533}] 5990.297 47 15.31865 215.067 35.04636
tp @s[scores={cutSceneTimer=534}] 5990.309 47 15.3264 215.0295 35.09512
tp @s[scores={cutSceneTimer=535}] 5990.32 47 15.33415 214.992 35.14387
tp @s[scores={cutSceneTimer=536}] 5990.331 47 15.34189 214.9545 35.19262
tp @s[scores={cutSceneTimer=537}] 5990.342 47 15.34963 214.917 35.24137
tp @s[scores={cutSceneTimer=538}] 5990.354 47 15.35736 214.8795 35.29012
tp @s[scores={cutSceneTimer=539}] 5990.365 47 15.36508 214.8419 35.33887
tp @s[scores={cutSceneTimer=540}] 5990.376 47 15.37279 214.8044 35.38763
tp @s[scores={cutSceneTimer=541}] 5990.387 47 15.38049 214.7669 35.43638
tp @s[scores={cutSceneTimer=542}] 5990.398 47 15.38819 214.7294 35.48513
tp @s[scores={cutSceneTimer=543}] 5990.41 47 15.39588 214.6919 35.53388
tp @s[scores={cutSceneTimer=544}] 5990.421 47 15.40357 214.6544 35.58263
tp @s[scores={cutSceneTimer=545}] 5990.432 47 15.41124 214.6169 35.63139
tp @s[scores={cutSceneTimer=546}] 5990.443 47 15.41891 214.5794 35.68014
tp @s[scores={cutSceneTimer=547}] 5990.455 47 15.42657 214.5419 35.72889
tp @s[scores={cutSceneTimer=548}] 5990.466 47 15.43423 214.5044 35.77764
tp @s[scores={cutSceneTimer=549}] 5990.477 47 15.44188 214.4669 35.82639
tp @s[scores={cutSceneTimer=550}] 5990.488 47 15.44952 214.4294 35.87514
tp @s[scores={cutSceneTimer=551}] 5990.5 47 15.45715 214.3919 35.9239
tp @s[scores={cutSceneTimer=552}] 5990.511 47 15.46478 214.3544 35.97265
tp @s[scores={cutSceneTimer=553}] 5990.522 47 15.47239 214.3169 36.0214
tp @s[scores={cutSceneTimer=554}] 5990.533 47 15.48 214.2794 36.07015
tp @s[scores={cutSceneTimer=555}] 5990.544 47 15.48761 214.2419 36.1189
tp @s[scores={cutSceneTimer=556}] 5990.556 47 15.4952 214.2043 36.16766
tp @s[scores={cutSceneTimer=557}] 5990.567 47 15.50279 214.1668 36.21641
tp @s[scores={cutSceneTimer=558}] 5990.578 47 15.51038 214.1293 36.26516
tp @s[scores={cutSceneTimer=559}] 5990.589 47 15.51795 214.0918 36.31391
tp @s[scores={cutSceneTimer=560}] 5990.601 47 15.52552 214.0543 36.36266
tp @s[scores={cutSceneTimer=561}] 5990.612 47 15.53308 214.0168 36.41142
tp @s[scores={cutSceneTimer=562}] 5990.623 47 15.54063 213.9793 36.46017
tp @s[scores={cutSceneTimer=563}] 5990.634 47 15.54817 213.9418 36.50892
tp @s[scores={cutSceneTimer=564}] 5990.646 47 15.55571 213.9043 36.55767
tp @s[scores={cutSceneTimer=565}] 5990.657 47 15.56324 213.8668 36.60642
tp @s[scores={cutSceneTimer=566}] 5990.668 47 15.57077 213.8293 36.65517
tp @s[scores={cutSceneTimer=567}] 5990.679 47 15.57828 213.7918 36.70393
tp @s[scores={cutSceneTimer=568}] 5990.69 47 15.58579 213.7543 36.75268
tp @s[scores={cutSceneTimer=569}] 5990.702 47 15.59329 213.7168 36.80143
tp @s[scores={cutSceneTimer=570}] 5990.713 47 15.60078 213.6793 36.85018
tp @s[scores={cutSceneTimer=571}] 5990.724 47 15.60827 213.6418 36.89893
tp @s[scores={cutSceneTimer=572}] 5990.735 47 15.61575 213.6042 36.94769
tp @s[scores={cutSceneTimer=573}] 5990.747 47 15.62322 213.5667 36.99644
tp @s[scores={cutSceneTimer=574}] 5990.758 47 15.63069 213.5292 37.04519
tp @s[scores={cutSceneTimer=575}] 5990.769 47 15.63814 213.4917 37.09394
tp @s[scores={cutSceneTimer=576}] 5990.78 47 15.64559 213.4542 37.14269
tp @s[scores={cutSceneTimer=577}] 5990.792 47 15.65303 213.4167 37.19144
tp @s[scores={cutSceneTimer=578}] 5990.803 47 15.66047 213.3792 37.2402
tp @s[scores={cutSceneTimer=579}] 5990.814 47 15.6679 213.3417 37.28895
tp @s[scores={cutSceneTimer=580}] 5990.825 47 15.67532 213.3042 37.3377
tp @s[scores={cutSceneTimer=581}] 5990.836 47 15.68273 213.2667 37.38645
tp @s[scores={cutSceneTimer=582}] 5990.848 47 15.69013 213.2292 37.4352
tp @s[scores={cutSceneTimer=583}] 5990.859 47 15.69753 213.1917 37.48396
tp @s[scores={cutSceneTimer=584}] 5990.87 47 15.70492 213.1542 37.53271
tp @s[scores={cutSceneTimer=585}] 5990.881 47 15.71231 213.1167 37.58146
tp @s[scores={cutSceneTimer=586}] 5990.893 47 15.71968 213.0792 37.63021
tp @s[scores={cutSceneTimer=587}] 5990.904 47 15.72705 213.0417 37.67896
tp @s[scores={cutSceneTimer=588}] 5990.915 47 15.73441 213.0042 37.72771
tp @s[scores={cutSceneTimer=589}] 5990.926 47 15.74176 212.9666 37.77647
tp @s[scores={cutSceneTimer=590}] 5990.938 47 15.74911 212.9291 37.82522
tp @s[scores={cutSceneTimer=591}] 5990.949 47 15.75645 212.8916 37.87397
tp @s[scores={cutSceneTimer=592}] 5990.96 47 15.76378 212.8541 37.92272
tp @s[scores={cutSceneTimer=593}] 5990.971 47 15.7711 212.8166 37.97147
tp @s[scores={cutSceneTimer=594}] 5990.982 47 15.77842 212.7791 38.02023
tp @s[scores={cutSceneTimer=595}] 5990.994 47 15.78573 212.7416 38.06898
tp @s[scores={cutSceneTimer=596}] 5991.005 47 15.79303 212.7041 38.11773
tp @s[scores={cutSceneTimer=597}] 5991.016 47 15.80032 212.6666 38.16648
tp @s[scores={cutSceneTimer=598}] 5991.027 47 15.80761 212.6291 38.21523
tp @s[scores={cutSceneTimer=599}] 5991.039 47 15.81489 212.5916 38.26398
tp @s[scores={cutSceneTimer=600}] 5991.05 47 15.82216 212.5541 38.31274
tp @s[scores={cutSceneTimer=601}] 5991.061 47 15.82943 212.5166 38.36149
tp @s[scores={cutSceneTimer=602}] 5991.072 47 15.83668 212.4791 38.41024
tp @s[scores={cutSceneTimer=603}] 5991.083 47 15.84393 212.4416 38.45899
tp @s[scores={cutSceneTimer=604}] 5991.095 47 15.85117 212.4041 38.50774
tp @s[scores={cutSceneTimer=605}] 5991.106 47 15.85841 212.3665 38.5565
tp @s[scores={cutSceneTimer=606}] 5991.117 47 15.86564 212.329 38.60525
tp @s[scores={cutSceneTimer=607}] 5991.128 47 15.87286 212.2915 38.654
tp @s[scores={cutSceneTimer=608}] 5991.14 47 15.88007 212.254 38.70275
tp @s[scores={cutSceneTimer=609}] 5991.151 47 15.88727 212.2165 38.7515
tp @s[scores={cutSceneTimer=610}] 5991.162 47 15.89447 212.179 38.80025
tp @s[scores={cutSceneTimer=611}] 5991.173 47 15.90166 212.1415 38.84901
tp @s[scores={cutSceneTimer=612}] 5991.185 47 15.90884 212.104 38.89776
tp @s[scores={cutSceneTimer=613}] 5991.196 47 15.91602 212.0665 38.94651
tp @s[scores={cutSceneTimer=614}] 5991.207 47 15.92318 212.029 38.99526
tp @s[scores={cutSceneTimer=615}] 5991.218 47 15.93034 211.9915 39.04401
tp @s[scores={cutSceneTimer=616}] 5991.229 47 15.93749 211.954 39.09277
tp @s[scores={cutSceneTimer=617}] 5991.241 47 15.94464 211.9165 39.14152
tp @s[scores={cutSceneTimer=618}] 5991.252 47 15.95178 211.879 39.19027
tp @s[scores={cutSceneTimer=619}] 5991.263 47 15.95891 211.8415 39.23902
tp @s[scores={cutSceneTimer=620}] 5991.274 47 15.96603 211.804 39.28777
tp @s[scores={cutSceneTimer=621}] 5991.286 47 15.97314 211.7664 39.33652
tp @s[scores={cutSceneTimer=622}] 5991.297 47 15.98025 211.7289 39.38528
tp @s[scores={cutSceneTimer=623}] 5991.309 47 15.98735 211.6914 39.43403
tp @s[scores={cutSceneTimer=624}] 5991.321 47 15.99444 211.6539 39.48278
tp @s[scores={cutSceneTimer=625}] 5991.333 47 16.00153 211.6164 39.53153
tp @s[scores={cutSceneTimer=626}] 5991.344 47 16.0086 211.5789 39.58028
tp @s[scores={cutSceneTimer=627}] 5991.356 47 16.01567 211.5414 39.62904
tp @s[scores={cutSceneTimer=628}] 5991.368 47 16.02273 211.5039 39.67779
tp @s[scores={cutSceneTimer=629}] 5991.379 47 16.02979 211.4664 39.72654
tp @s[scores={cutSceneTimer=630}] 5991.391 47 16.03684 211.4289 39.77529
tp @s[scores={cutSceneTimer=631}] 5991.403 47 16.04388 211.3914 39.82404
tp @s[scores={cutSceneTimer=632}] 5991.415 47 16.05091 211.3539 39.8728
tp @s[scores={cutSceneTimer=633}] 5991.426 47 16.05793 211.3164 39.92155
tp @s[scores={cutSceneTimer=634}] 5991.438 47 16.06495 211.2789 39.9703
tp @s[scores={cutSceneTimer=635}] 5991.45 47 16.07196 211.2414 40.01905
tp @s[scores={cutSceneTimer=636}] 5991.461 47 16.07896 211.2039 40.0678
tp @s[scores={cutSceneTimer=637}] 5991.473 47 16.08596 211.1664 40.11655
tp @s[scores={cutSceneTimer=638}] 5991.485 47 16.09294 211.1288 40.16531
tp @s[scores={cutSceneTimer=639}] 5991.497 47 16.09992 211.0913 40.21406
tp @s[scores={cutSceneTimer=640}] 5991.508 47 16.10689 211.0538 40.26281
tp @s[scores={cutSceneTimer=641}] 5991.52 47 16.11386 211.0163 40.31156
tp @s[scores={cutSceneTimer=642}] 5991.532 47 16.12081 210.9788 40.36031
tp @s[scores={cutSceneTimer=643}] 5991.543 47 16.12776 210.9413 40.40907
tp @s[scores={cutSceneTimer=644}] 5991.555 47 16.1347 210.9038 40.45782
tp @s[scores={cutSceneTimer=645}] 5991.567 47 16.14164 210.8663 40.50657
tp @s[scores={cutSceneTimer=646}] 5991.579 47 16.14856 210.8288 40.55532
tp @s[scores={cutSceneTimer=647}] 5991.59 47 16.15548 210.7913 40.60407
tp @s[scores={cutSceneTimer=648}] 5991.602 47 16.16239 210.7538 40.65282
tp @s[scores={cutSceneTimer=649}] 5991.614 47 16.16929 210.7163 40.70158
tp @s[scores={cutSceneTimer=650}] 5991.625 47 16.17619 210.6788 40.75033
tp @s[scores={cutSceneTimer=651}] 5991.637 47 16.18307 210.6413 40.79908
tp @s[scores={cutSceneTimer=652}] 5991.649 47 16.18995 210.6038 40.84783
tp @s[scores={cutSceneTimer=653}] 5991.661 47 16.19683 210.5663 40.89658
tp @s[scores={cutSceneTimer=654}] 5991.672 47 16.20369 210.5287 40.94534
tp @s[scores={cutSceneTimer=655}] 5991.684 47 16.21055 210.4912 40.99409
tp @s[scores={cutSceneTimer=656}] 5991.696 47 16.2174 210.4537 41.04284
tp @s[scores={cutSceneTimer=657}] 5991.708 47 16.22424 210.4162 41.09159
tp @s[scores={cutSceneTimer=658}] 5991.719 47 16.23107 210.3787 41.14034
tp @s[scores={cutSceneTimer=659}] 5991.731 47 16.2379 210.3412 41.18909
tp @s[scores={cutSceneTimer=660}] 5991.743 47 16.24472 210.3037 41.23785
tp @s[scores={cutSceneTimer=661}] 5991.754 47 16.25153 210.2662 41.2866
tp @s[scores={cutSceneTimer=662}] 5991.766 47 16.25833 210.2287 41.33535
tp @s[scores={cutSceneTimer=663}] 5991.778 47 16.26513 210.1912 41.3841
tp @s[scores={cutSceneTimer=664}] 5991.79 47 16.27192 210.1537 41.43285
tp @s[scores={cutSceneTimer=665}] 5991.801 47 16.2787 210.1162 41.48161
tp @s[scores={cutSceneTimer=666}] 5991.813 47 16.28547 210.0787 41.53036
tp @s[scores={cutSceneTimer=667}] 5991.825 47 16.29224 210.0412 41.57911
tp @s[scores={cutSceneTimer=668}] 5991.836 47 16.29899 210.0037 41.62786
tp @s[scores={cutSceneTimer=669}] 5991.848 47 16.30574 209.9662 41.67661
tp @s[scores={cutSceneTimer=670}] 5991.86 47 16.31249 209.9286 41.72536
tp @s[scores={cutSceneTimer=671}] 5991.872 47 16.31922 209.8911 41.77412
tp @s[scores={cutSceneTimer=672}] 5991.883 47 16.32595 209.8536 41.82287
tp @s[scores={cutSceneTimer=673}] 5991.895 47 16.33267 209.8161 41.87162
tp @s[scores={cutSceneTimer=674}] 5991.907 47 16.33938 209.7786 41.92037
tp @s[scores={cutSceneTimer=675}] 5991.918 47 16.34608 209.7411 41.96912
tp @s[scores={cutSceneTimer=676}] 5991.93 47 16.35278 209.7036 42.01788
tp @s[scores={cutSceneTimer=677}] 5991.942 47 16.35947 209.6661 42.06663
tp @s[scores={cutSceneTimer=678}] 5991.954 47 16.36615 209.6286 42.11538
tp @s[scores={cutSceneTimer=679}] 5991.965 47 16.37283 209.5911 42.16413
tp @s[scores={cutSceneTimer=680}] 5991.977 47 16.37949 209.5536 42.21288
tp @s[scores={cutSceneTimer=681}] 5991.989 47 16.38615 209.5161 42.26163
tp @s[scores={cutSceneTimer=682}] 5992.000 47 16.3928 209.4786 42.31039
tp @s[scores={cutSceneTimer=683}] 5992.012 47 16.39944 209.4411 42.35914
tp @s[scores={cutSceneTimer=684}] 5992.024 47 16.40608 209.4036 42.40789
tp @s[scores={cutSceneTimer=685}] 5992.036 47 16.41271 209.3661 42.45664
tp @s[scores={cutSceneTimer=686}] 5992.047 47 16.41933 209.3286 42.50539
tp @s[scores={cutSceneTimer=687}] 5992.059 47 16.42594 209.291 42.55415
tp @s[scores={cutSceneTimer=688}] 5992.071 47 16.43255 209.2535 42.6029
tp @s[scores={cutSceneTimer=689}] 5992.083 47 16.43914 209.216 42.65165
tp @s[scores={cutSceneTimer=690}] 5992.094 47 16.44573 209.1785 42.7004
tp @s[scores={cutSceneTimer=691}] 5992.106 47 16.45232 209.141 42.74915
tp @s[scores={cutSceneTimer=692}] 5992.118 47 16.45889 209.1035 42.7979
tp @s[scores={cutSceneTimer=693}] 5992.129 47 16.46546 209.066 42.84666
tp @s[scores={cutSceneTimer=694}] 5992.141 47 16.47202 209.0285 42.89541
tp @s[scores={cutSceneTimer=695}] 5992.153 47 16.47857 208.991 42.94416
tp @s[scores={cutSceneTimer=696}] 5992.165 47 16.48511 208.9535 42.99291
tp @s[scores={cutSceneTimer=697}] 5992.176 47 16.49165 208.916 43.04166
tp @s[scores={cutSceneTimer=698}] 5992.188 47 16.49817 208.8785 43.09042
tp @s[scores={cutSceneTimer=699}] 5992.2 47 16.50469 208.841 43.13917
tp @s[scores={cutSceneTimer=700}] 5992.211 47 16.5112 208.8035 43.18792
tp @s[scores={cutSceneTimer=701}] 5992.223 47 16.51771 208.766 43.23667
tp @s[scores={cutSceneTimer=702}] 5992.235 47 16.5242 208.7285 43.28542
tp @s[scores={cutSceneTimer=703}] 5992.247 47 16.53069 208.6909 43.33418
tp @s[scores={cutSceneTimer=704}] 5992.258 47 16.53717 208.6534 43.38293
tp @s[scores={cutSceneTimer=705}] 5992.27 47 16.54365 208.6159 43.43168
tp @s[scores={cutSceneTimer=706}] 5992.282 47 16.55011 208.5784 43.48043
tp @s[scores={cutSceneTimer=707}] 5992.293 47 16.55657 208.5409 43.52918
tp @s[scores={cutSceneTimer=708}] 5992.305 47 16.56302 208.5034 43.57793
tp @s[scores={cutSceneTimer=709}] 5992.317 47 16.56947 208.4659 43.62669
tp @s[scores={cutSceneTimer=710}] 5992.329 47 16.5759 208.4284 43.67544
tp @s[scores={cutSceneTimer=711}] 5992.34 47 16.58233 208.3909 43.72419
tp @s[scores={cutSceneTimer=712}] 5992.352 47 16.58875 208.3534 43.77294
tp @s[scores={cutSceneTimer=713}] 5992.364 47 16.59516 208.3159 43.82169
tp @s[scores={cutSceneTimer=714}] 5992.375 47 16.60156 208.2784 43.87045
tp @s[scores={cutSceneTimer=715}] 5992.387 47 16.60796 208.2409 43.9192
tp @s[scores={cutSceneTimer=716}] 5992.399 47 16.61434 208.2034 43.96795
tp @s[scores={cutSceneTimer=717}] 5992.411 47 16.62072 208.1659 44.0167
tp @s[scores={cutSceneTimer=718}] 5992.422 47 16.6271 208.1284 44.06545
tp @s[scores={cutSceneTimer=719}] 5992.434 47 16.63346 208.0909 44.1142
tp @s[scores={cutSceneTimer=720}] 5992.446 47 16.63982 208.0533 44.16296
tp @s[scores={cutSceneTimer=721}] 5992.458 47 16.64617 208.0158 44.21171
tp @s[scores={cutSceneTimer=722}] 5992.469 47 16.65251 207.9783 44.26046
tp @s[scores={cutSceneTimer=723}] 5992.481 47 16.65884 207.9408 44.30921
tp @s[scores={cutSceneTimer=724}] 5992.493 47 16.66517 207.9033 44.35796
tp @s[scores={cutSceneTimer=725}] 5992.504 47 16.67149 207.8658 44.40672
tp @s[scores={cutSceneTimer=726}] 5992.516 47 16.6778 207.8283 44.45547
tp @s[scores={cutSceneTimer=727}] 5992.528 47 16.6841 207.7908 44.50422
tp @s[scores={cutSceneTimer=728}] 5992.54 47 16.69039 207.7533 44.55297
tp @s[scores={cutSceneTimer=729}] 5992.551 47 16.69668 207.7158 44.60172
tp @s[scores={cutSceneTimer=730}] 5992.563 47 16.70296 207.6783 44.65047
tp @s[scores={cutSceneTimer=731}] 5992.575 47 16.70923 207.6408 44.69923
tp @s[scores={cutSceneTimer=732}] 5992.586 47 16.71549 207.6033 44.74798
tp @s[scores={cutSceneTimer=733}] 5992.599 47 16.72175 207.5658 44.79673
tp @s[scores={cutSceneTimer=734}] 5992.611 47 16.72799 207.5283 44.84548
tp @s[scores={cutSceneTimer=735}] 5992.623 47 16.73423 207.4908 44.89423
tp @s[scores={cutSceneTimer=736}] 5992.635 47 16.74047 207.4532 44.94299
tp @s[scores={cutSceneTimer=737}] 5992.647 47 16.74669 207.4157 44.99174
tp @s[scores={cutSceneTimer=738}] 5992.66 47 16.7529 207.3782 45.04049
tp @s[scores={cutSceneTimer=739}] 5992.672 47 16.75911 207.3407 45.08924
tp @s[scores={cutSceneTimer=740}] 5992.684 47 16.76531 207.3032 45.13799
tp @s[scores={cutSceneTimer=741}] 5992.696 47 16.77151 207.2657 45.18674
tp @s[scores={cutSceneTimer=742}] 5992.708 47 16.77769 207.2282 45.2355
tp @s[scores={cutSceneTimer=743}] 5992.721 47 16.78387 207.1907 45.28425
tp @s[scores={cutSceneTimer=744}] 5992.733 47 16.79004 207.1532 45.333
tp @s[scores={cutSceneTimer=745}] 5992.745 47 16.7962 207.1157 45.38175
tp @s[scores={cutSceneTimer=746}] 5992.757 47 16.80235 207.0782 45.4305
tp @s[scores={cutSceneTimer=747}] 5992.77 47 16.8085 207.0407 45.47926
tp @s[scores={cutSceneTimer=748}] 5992.782 47 16.81463 207.0032 45.52801
tp @s[scores={cutSceneTimer=749}] 5992.794 47 16.82076 206.9657 45.57676
tp @s[scores={cutSceneTimer=750}] 5992.806 47 16.82689 206.9282 45.62551
tp @s[scores={cutSceneTimer=751}] 5992.818 47 16.833 206.8907 45.67426
tp @s[scores={cutSceneTimer=752}] 5992.831 47 16.83911 206.8531 45.72301
tp @s[scores={cutSceneTimer=753}] 5992.843 47 16.8452 206.8156 45.77177
tp @s[scores={cutSceneTimer=754}] 5992.855 47 16.85129 206.7781 45.82052
tp @s[scores={cutSceneTimer=755}] 5992.867 47 16.85738 206.7406 45.86927
tp @s[scores={cutSceneTimer=756}] 5992.879 47 16.86345 206.7031 45.91802
tp @s[scores={cutSceneTimer=757}] 5992.892 47 16.86952 206.6656 45.96677
tp @s[scores={cutSceneTimer=758}] 5992.904 47 16.87558 206.6281 46.01553
tp @s[scores={cutSceneTimer=759}] 5992.916 47 16.88163 206.5906 46.06428
tp @s[scores={cutSceneTimer=760}] 5992.928 47 16.88767 206.5531 46.11303
tp @s[scores={cutSceneTimer=761}] 5992.94 47 16.8937 206.5156 46.16178
tp @s[scores={cutSceneTimer=762}] 5992.953 47 16.89973 206.4781 46.21053
tp @s[scores={cutSceneTimer=763}] 5992.965 47 16.90575 206.4406 46.25928
tp @s[scores={cutSceneTimer=764}] 5992.977 47 16.91176 206.4031 46.30804
tp @s[scores={cutSceneTimer=765}] 5992.989 47 16.91776 206.3656 46.35679
tp @s[scores={cutSceneTimer=766}] 5993.001 47 16.92376 206.3281 46.40554
tp @s[scores={cutSceneTimer=767}] 5993.014 47 16.92975 206.2906 46.45429
tp @s[scores={cutSceneTimer=768}] 5993.026 47 16.93573 206.2531 46.50304
tp @s[scores={cutSceneTimer=769}] 5993.038 47 16.9417 206.2155 46.5518
tp @s[scores={cutSceneTimer=770}] 5993.05 47 16.94766 206.178 46.60055
tp @s[scores={cutSceneTimer=771}] 5993.063 47 16.95362 206.1405 46.6493
tp @s[scores={cutSceneTimer=772}] 5993.075 47 16.95956 206.103 46.69805
tp @s[scores={cutSceneTimer=773}] 5993.087 47 16.9655 206.0655 46.7468
tp @s[scores={cutSceneTimer=774}] 5993.099 47 16.97144 206.028 46.79556
tp @s[scores={cutSceneTimer=775}] 5993.111 47 16.97736 205.9905 46.84431
tp @s[scores={cutSceneTimer=776}] 5993.124 47 16.98328 205.953 46.89306
tp @s[scores={cutSceneTimer=777}] 5993.136 47 16.98919 205.9155 46.94181
tp @s[scores={cutSceneTimer=778}] 5993.148 47 16.99508 205.878 46.99056
tp @s[scores={cutSceneTimer=779}] 5993.16 47 17.00098 205.8405 47.03931
tp @s[scores={cutSceneTimer=780}] 5993.172 47 17.00686 205.803 47.08807
tp @s[scores={cutSceneTimer=781}] 5993.185 47 17.01274 205.7655 47.13682
tp @s[scores={cutSceneTimer=782}] 5993.197 47 17.01861 205.728 47.18557
tp @s[scores={cutSceneTimer=783}] 5993.209 47 17.02447 205.6905 47.23432
tp @s[scores={cutSceneTimer=784}] 5993.221 47 17.03032 205.653 47.28307
tp @s[scores={cutSceneTimer=785}] 5993.233 47 17.03616 205.6154 47.33183
tp @s[scores={cutSceneTimer=786}] 5993.246 47 17.042 205.5779 47.38058
tp @s[scores={cutSceneTimer=787}] 5993.258 47 17.04783 205.5404 47.42933
tp @s[scores={cutSceneTimer=788}] 5993.27 47 17.05365 205.5029 47.47808
tp @s[scores={cutSceneTimer=789}] 5993.282 47 17.05946 205.4654 47.52683
tp @s[scores={cutSceneTimer=790}] 5993.294 47 17.06527 205.4279 47.57558
tp @s[scores={cutSceneTimer=791}] 5993.307 47 17.07106 205.3904 47.62434
tp @s[scores={cutSceneTimer=792}] 5993.319 47 17.07685 205.3529 47.67309
tp @s[scores={cutSceneTimer=793}] 5993.331 47 17.08263 205.3154 47.72184
tp @s[scores={cutSceneTimer=794}] 5993.343 47 17.08841 205.2779 47.77059
tp @s[scores={cutSceneTimer=795}] 5993.355 47 17.09417 205.2404 47.81934
tp @s[scores={cutSceneTimer=796}] 5993.368 47 17.09993 205.2029 47.8681
tp @s[scores={cutSceneTimer=797}] 5993.38 47 17.10567 205.1654 47.91685
tp @s[scores={cutSceneTimer=798}] 5993.392 47 17.11142 205.1279 47.9656
tp @s[scores={cutSceneTimer=799}] 5993.404 47 17.11715 205.0904 48.01435
tp @s[scores={cutSceneTimer=800}] 5993.417 47 17.12287 205.0529 48.0631
tp @s[scores={cutSceneTimer=801}] 5993.429 47 17.12859 205.0154 48.11185
tp @s[scores={cutSceneTimer=802}] 5993.441 47 17.1343 204.9778 48.16061
tp @s[scores={cutSceneTimer=803}] 5993.453 47 17.14 204.9403 48.20936
tp @s[scores={cutSceneTimer=804}] 5993.465 47 17.14569 204.9028 48.25811
tp @s[scores={cutSceneTimer=805}] 5993.478 47 17.15138 204.8653 48.30686
tp @s[scores={cutSceneTimer=806}] 5993.49 47 17.15705 204.8278 48.35561
tp @s[scores={cutSceneTimer=807}] 5993.502 47 17.16272 204.7903 48.40437
tp @s[scores={cutSceneTimer=808}] 5993.514 47 17.16838 204.7528 48.45312
tp @s[scores={cutSceneTimer=809}] 5993.526 47 17.17404 204.7153 48.50187
tp @s[scores={cutSceneTimer=810}] 5993.539 47 17.17968 204.6778 48.55062
tp @s[scores={cutSceneTimer=811}] 5993.551 47 17.18532 204.6403 48.59937
tp @s[scores={cutSceneTimer=812}] 5993.563 47 17.19094 204.6028 48.64812
tp @s[scores={cutSceneTimer=813}] 5993.575 47 17.19657 204.5653 48.69688
tp @s[scores={cutSceneTimer=814}] 5993.587 47 17.20218 204.5278 48.74563
tp @s[scores={cutSceneTimer=815}] 5993.6 47 17.20778 204.4903 48.79438
tp @s[scores={cutSceneTimer=816}] 5993.612 47 17.21338 204.4528 48.84313
tp @s[scores={cutSceneTimer=817}] 5993.624 47 17.21897 204.4153 48.89188
tp @s[scores={cutSceneTimer=818}] 5993.636 47 17.22455 204.3777 48.94064
tp @s[scores={cutSceneTimer=819}] 5993.648 47 17.23012 204.3402 48.98939
tp @s[scores={cutSceneTimer=820}] 5993.661 47 17.23568 204.3027 49.03814
tp @s[scores={cutSceneTimer=821}] 5993.673 47 17.24124 204.2652 49.08689
tp @s[scores={cutSceneTimer=822}] 5993.685 47 17.24679 204.2277 49.13564
tp @s[scores={cutSceneTimer=823}] 5993.697 47 17.25233 204.1902 49.18439
tp @s[scores={cutSceneTimer=824}] 5993.709 47 17.25786 204.1527 49.23315
tp @s[scores={cutSceneTimer=825}] 5993.722 47 17.26338 204.1152 49.2819
tp @s[scores={cutSceneTimer=826}] 5993.734 47 17.2689 204.0777 49.33065
tp @s[scores={cutSceneTimer=827}] 5993.746 47 17.27441 204.0402 49.3794
tp @s[scores={cutSceneTimer=828}] 5993.758 47 17.27991 204.0027 49.42815
tp @s[scores={cutSceneTimer=829}] 5993.771 47 17.2854 203.9652 49.47691
tp @s[scores={cutSceneTimer=830}] 5993.783 47 17.29088 203.9277 49.52566
tp @s[scores={cutSceneTimer=831}] 5993.795 47 17.29636 203.8902 49.57441
tp @s[scores={cutSceneTimer=832}] 5993.807 47 17.30182 203.8527 49.62316
tp @s[scores={cutSceneTimer=833}] 5993.819 47 17.30728 203.8152 49.67191
tp @s[scores={cutSceneTimer=834}] 5993.832 47 17.31273 203.7776 49.72066
tp @s[scores={cutSceneTimer=835}] 5993.844 47 17.31818 203.7401 49.76942
tp @s[scores={cutSceneTimer=836}] 5993.856 47 17.32361 203.7026 49.81817
tp @s[scores={cutSceneTimer=837}] 5993.868 47 17.32904 203.6651 49.86692
tp @s[scores={cutSceneTimer=838}] 5993.88 47 17.33446 203.6276 49.91567
tp @s[scores={cutSceneTimer=839}] 5993.893 47 17.33987 203.5901 49.96442
tp @s[scores={cutSceneTimer=840}] 5993.905 47 17.34527 203.5526 50.01318
tp @s[scores={cutSceneTimer=841}] 5993.917 47 17.35066 203.5151 50.06193
tp @s[scores={cutSceneTimer=842}] 5993.929 47 17.35605 203.4776 50.11068
tp @s[scores={cutSceneTimer=843}] 5993.941 47 17.36143 203.4401 50.15943
tp @s[scores={cutSceneTimer=844}] 5993.954 47 17.3668 203.4026 50.20818
tp @s[scores={cutSceneTimer=845}] 5993.966 47 17.37216 203.3651 50.25694
tp @s[scores={cutSceneTimer=846}] 5993.978 47 17.37752 203.3276 50.30569
tp @s[scores={cutSceneTimer=847}] 5993.99 47 17.38286 203.2901 50.35444
tp @s[scores={cutSceneTimer=848}] 5994.002 47 17.3882 203.2526 50.40319
tp @s[scores={cutSceneTimer=849}] 5994.015 47 17.39353 203.2151 50.45194
tp @s[scores={cutSceneTimer=850}] 5994.027 47 17.39885 203.1776 50.50069
tp @s[scores={cutSceneTimer=851}] 5994.039 47 17.40416 203.14 50.54945
tp @s[scores={cutSceneTimer=852}] 5994.051 47 17.40947 203.1025 50.5982


# ¤Flitwick:¤ By holding shift and pressing { at the same time you can quickly switch between combat relevant spells.
# ¤Flitwick:¤ Удерживая shift и нажимая 'Q' вы можете быстро переключаться между самыми важными заклинаниями.
execute as @s[scores={cutSceneTimer=630},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 10 1 0
execute as @s[scores={cutSceneTimer=630..740}] run title @s actionbar ["",{"text":""},{"text":"Флитвик;","color":"dark_gray"},{"text":" Удерживая shift и нажимая 'Q' вы можете быстро переключаться между самыми важными заклинаниями."}]

# ¤Flitwick:¤ Best of luck!
execute as @s[scores={cutSceneTimer=741},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 10 1 0
execute as @s[scores={cutSceneTimer=741..862}] run title @s actionbar ["",{"text":""},{"text":"Флитвик;","color":"dark_gray"},{"text":" Желаю Удачи!"}]

# Clear subtitles instantly rather than a slow fade I can't control
execute as @s[scores={cutSceneTimer=863..}] run title @s actionbar ""

execute as @s[scores={cutSceneTimer=831}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=852}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=852}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=852}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=852}] run effect clear @s blindness
execute as @s[scores={cutSceneTimer=852}] run effect clear @s night_vision
execute as @s[scores={cutSceneTimer=852}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=853,playerID=1}] run tp @s 5994.54 30.00 0.50 -90 -5
execute as @s[scores={cutSceneTimer=853,playerID=2}] run tp @s 6000.48 30.00 -5.17 0 -5
execute as @s[scores={cutSceneTimer=853,playerID=3}] run tp @s 6006.33 30.00 0.47 90 -5
execute as @s[scores={cutSceneTimer=853,playerID=4}] run tp @s 6000.44 30.00 5.69 180 -5
execute as @s[scores={cutSceneTimer=873}] run tag @s add dontExitCutSceneSilent
execute as @s[scores={cutSceneTimer=873}] run scoreboard players set playerInBrackiumEmendoSpellChallenge global 1
execute as @s[scores={cutSceneTimer=873}] run function hp:quests/timer/start_pensive_timer
execute as @s[scores={cutSceneTimer=873}] run function hp:cutscenes/exit_cutscene



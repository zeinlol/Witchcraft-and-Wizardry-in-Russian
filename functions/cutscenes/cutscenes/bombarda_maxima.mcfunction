execute as @s[scores={trackQuestState=2}] run scoreboard players set @s questState 3
execute as @s[scores={trackQuestState=2}] run function hp:quests/set_quest

# Reset spell challenge
execute as @s[scores={cutSceneTimer=300},tag=cutsceneLeader] if score playerInBombardaSpellChallenge global matches 0 run function hp:quests/quests/bombarda_maxima/reset_bombarda_maxima_spell_challenge

execute as @s[scores={cutSceneTimer=-19}] run function hp:music/music/silence
execute as @s[scores={cutSceneTimer=-19}] run tag @s remove musicController
execute as @s[scores={cutSceneTimer=-19}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=30}] as @s run function hp:cutscenes/fade_out

execute as @s[scores={cutSceneTimer=..20}] run title @s actionbar ["",{"text":" "}]
execute as @s[scores={cutSceneTimer=22},tag=cutsceneLeader] run tp @e[tag=lupinClassroomBombardaFpEngine,limit=1] 7418 95 7 -180 0
execute as @s[scores={cutSceneTimer=250},tag=cutsceneLeader] run data merge entity @e[tag=lupinClassroomBombardaFpEngine,limit=1] {NoAI:0b}
execute as @s[scores={cutSceneTimer=23},tag=cutsceneLeader] run tag @e[tag=lupinClassroomBombarda,limit=1] add overrideFpRotation
execute as @s[scores={cutSceneTimer=20..250},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] at @s run tp @s ~ ~ ~ -180 0
execute as @s[scores={cutSceneTimer=250},tag=cutsceneLeader] run tag @e[tag=lupinClassroomBombarda,limit=1] remove overrideFpRotation
execute as @s[scores={cutSceneTimer=250},tag=cutsceneLeader] run tag @e[tag=lupinClassroomBombardaFpEngine,limit=1] remove idle
execute as @s[scores={cutSceneTimer=250},tag=cutsceneLeader] run tag @e[tag=lupinClassroomBombardaFpEngine,limit=1] remove stop
execute as @s[scores={cutSceneTimer=250},tag=cutsceneLeader] run tag @e[tag=lupinClassroomBombardaFpEngine,limit=1] remove permStop
execute as @s[scores={cutSceneTimer=250},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run scoreboard players set @s targetPathPoint 0
execute as @s[scores={cutSceneTimer=250},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] store result entity @s ArmorItems[3].tag.targetPathPoint int 1 run scoreboard players get @s targetPathPoint
execute as @s[scores={cutSceneTimer=365},tag=cutsceneLeader] run data merge entity @e[tag=lupinClassroomBombardaFpEngine,limit=1] {NoAI:1b}
execute as @s[scores={cutSceneTimer=365},tag=cutsceneLeader] run tag @e[tag=lupinClassroomBombarda,limit=1] add overrideFpRotation
execute as @s[scores={cutSceneTimer=400},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] at @s run tp @s ~ ~ ~ -180 0
execute as @s[scores={cutSceneTimer=400..495},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] at @s run tp @s ~ ~ ~ -180 0
execute as @s[scores={cutSceneTimer=495},tag=cutsceneLeader] run tag @e[tag=lupinClassroomBombarda,limit=1] remove overrideFpRotation

execute as @s[scores={cutSceneTimer=22},tag=gameLeader] run time set day
execute as @s[scores={cutSceneTimer=22},tag=gameLeader] run gamerule doDaylightCycle false
tp @s[scores={cutSceneTimer=0..22}] 7422.098 98.99856 -13.0904 -346.08 8.31
tp @s[scores={cutSceneTimer=23}] 7422.095 98.99712 -13.08079 -346.08 8.31
tp @s[scores={cutSceneTimer=24}] 7422.093 98.99567 -13.07119 -346.08 8.31
tp @s[scores={cutSceneTimer=25}] 7422.09 98.99423 -13.06158 -346.08 8.31
tp @s[scores={cutSceneTimer=26}] 7422.088 98.99279 -13.05198 -346.08 8.31
tp @s[scores={cutSceneTimer=27}] 7422.085 98.99135 -13.04237 -346.08 8.31
tp @s[scores={cutSceneTimer=28}] 7422.083 98.98991 -13.03277 -346.08 8.31
tp @s[scores={cutSceneTimer=29}] 7422.081 98.98846 -13.02316 -346.08 8.31
tp @s[scores={cutSceneTimer=30}] 7422.078 98.98702 -13.01356 -346.08 8.31
tp @s[scores={cutSceneTimer=31}] 7422.076 98.98558 -13.00396 -346.08 8.31
tp @s[scores={cutSceneTimer=32}] 7422.073 98.98414 -12.99435 -346.08 8.31
tp @s[scores={cutSceneTimer=33}] 7422.071 98.9827 -12.98475 -346.08 8.31
tp @s[scores={cutSceneTimer=34}] 7422.068 98.98125 -12.97514 -346.08 8.31
tp @s[scores={cutSceneTimer=35}] 7422.066 98.97981 -12.96554 -346.08 8.31
tp @s[scores={cutSceneTimer=36}] 7422.063 98.97837 -12.95593 -346.08 8.31
tp @s[scores={cutSceneTimer=37}] 7422.061 98.97693 -12.94633 -346.08 8.31
tp @s[scores={cutSceneTimer=38}] 7422.059 98.97549 -12.93672 -346.08 8.31
tp @s[scores={cutSceneTimer=39}] 7422.056 98.97404 -12.92712 -346.08 8.31
tp @s[scores={cutSceneTimer=40}] 7422.054 98.9726 -12.91752 -346.08 8.31
tp @s[scores={cutSceneTimer=41}] 7422.051 98.97116 -12.90791 -346.08 8.31
tp @s[scores={cutSceneTimer=42}] 7422.049 98.96972 -12.89831 -346.08 8.31
tp @s[scores={cutSceneTimer=43}] 7422.046 98.96828 -12.8887 -346.08 8.31
tp @s[scores={cutSceneTimer=44}] 7422.044 98.96684 -12.8791 -346.08 8.31
tp @s[scores={cutSceneTimer=45}] 7422.042 98.96539 -12.86949 -346.08 8.31
tp @s[scores={cutSceneTimer=46}] 7422.039 98.96395 -12.85989 -346.08 8.31
tp @s[scores={cutSceneTimer=47}] 7422.037 98.96251 -12.85028 -346.08 8.31
tp @s[scores={cutSceneTimer=48}] 7422.034 98.96107 -12.84068 -346.08 8.31
tp @s[scores={cutSceneTimer=49}] 7422.032 98.95963 -12.83108 -346.08 8.31
tp @s[scores={cutSceneTimer=50}] 7422.029 98.95818 -12.82147 -346.08 8.31
tp @s[scores={cutSceneTimer=51}] 7422.027 98.95674 -12.81187 -346.08 8.31
tp @s[scores={cutSceneTimer=52}] 7422.024 98.9553 -12.80226 -346.08 8.31
tp @s[scores={cutSceneTimer=53}] 7422.022 98.95386 -12.79266 -346.08 8.31
tp @s[scores={cutSceneTimer=54}] 7422.02 98.95242 -12.78305 -346.08 8.31
tp @s[scores={cutSceneTimer=55}] 7422.017 98.95097 -12.77345 -346.08 8.31
tp @s[scores={cutSceneTimer=56}] 7422.015 98.94953 -12.76384 -346.08 8.31
tp @s[scores={cutSceneTimer=57}] 7422.012 98.94809 -12.75424 -346.08 8.31
tp @s[scores={cutSceneTimer=58}] 7422.01 98.94665 -12.74464 -346.08 8.31
tp @s[scores={cutSceneTimer=59}] 7422.007 98.94521 -12.73503 -346.08 8.31
tp @s[scores={cutSceneTimer=60}] 7422.005 98.94376 -12.72543 -346.08 8.31
tp @s[scores={cutSceneTimer=61}] 7422.002 98.94232 -12.71582 -346.08 8.31
tp @s[scores={cutSceneTimer=62}] 7422.00 98.94088 -12.70622 -346.08 8.31
tp @s[scores={cutSceneTimer=63}] 7421.998 98.93944 -12.69661 -346.08 8.31
tp @s[scores={cutSceneTimer=64}] 7421.995 98.938 -12.68701 -346.08 8.31
tp @s[scores={cutSceneTimer=65}] 7421.993 98.93655 -12.6774 -346.08 8.31
tp @s[scores={cutSceneTimer=66}] 7421.99 98.93511 -12.6678 -346.08 8.31
tp @s[scores={cutSceneTimer=67}] 7421.988 98.93367 -12.6582 -346.08 8.31
tp @s[scores={cutSceneTimer=68}] 7421.985 98.93223 -12.64859 -346.08 8.31
tp @s[scores={cutSceneTimer=69}] 7421.983 98.93079 -12.63899 -346.08 8.31
tp @s[scores={cutSceneTimer=70}] 7421.98 98.92934 -12.62938 -346.08 8.31
tp @s[scores={cutSceneTimer=71}] 7421.978 98.9279 -12.61978 -346.08 8.31
tp @s[scores={cutSceneTimer=72}] 7421.976 98.92646 -12.61017 -346.08 8.31
tp @s[scores={cutSceneTimer=73}] 7421.973 98.92502 -12.60057 -346.08 8.31
tp @s[scores={cutSceneTimer=74}] 7421.971 98.92358 -12.59096 -346.08 8.31
tp @s[scores={cutSceneTimer=75}] 7421.968 98.92213 -12.58136 -346.08 8.31
tp @s[scores={cutSceneTimer=76}] 7421.966 98.92069 -12.57176 -346.08 8.31
tp @s[scores={cutSceneTimer=77}] 7421.963 98.91925 -12.56215 -346.08 8.31
tp @s[scores={cutSceneTimer=78}] 7421.961 98.91781 -12.55255 -346.08 8.31
tp @s[scores={cutSceneTimer=79}] 7421.958 98.91637 -12.54294 -346.08 8.31
tp @s[scores={cutSceneTimer=80}] 7421.956 98.91492 -12.53334 -346.08 8.31
tp @s[scores={cutSceneTimer=81}] 7421.954 98.91348 -12.52373 -346.08 8.31
tp @s[scores={cutSceneTimer=82}] 7421.951 98.91204 -12.51413 -346.08 8.31
tp @s[scores={cutSceneTimer=83}] 7421.949 98.9106 -12.50452 -346.08 8.31
tp @s[scores={cutSceneTimer=84}] 7421.946 98.90916 -12.49492 -346.08 8.31
tp @s[scores={cutSceneTimer=85}] 7421.944 98.90771 -12.48532 -346.08 8.31
tp @s[scores={cutSceneTimer=86}] 7421.941 98.90627 -12.47571 -346.08 8.31
tp @s[scores={cutSceneTimer=87}] 7421.939 98.90483 -12.46611 -346.08 8.31
tp @s[scores={cutSceneTimer=88}] 7421.937 98.90339 -12.4565 -346.08 8.31
tp @s[scores={cutSceneTimer=89}] 7421.934 98.90195 -12.4469 -346.08 8.31
tp @s[scores={cutSceneTimer=90}] 7421.932 98.90051 -12.43729 -346.08 8.31
tp @s[scores={cutSceneTimer=91}] 7421.929 98.89906 -12.42769 -346.08 8.31
tp @s[scores={cutSceneTimer=92}] 7421.927 98.89762 -12.41808 -346.08 8.31
tp @s[scores={cutSceneTimer=93}] 7421.924 98.89618 -12.40848 -346.08 8.31
tp @s[scores={cutSceneTimer=94}] 7421.922 98.89474 -12.39888 -346.08 8.31
tp @s[scores={cutSceneTimer=95}] 7421.919 98.8933 -12.38927 -346.08 8.31
tp @s[scores={cutSceneTimer=96}] 7421.917 98.89185 -12.37967 -346.08 8.31
tp @s[scores={cutSceneTimer=97}] 7421.915 98.89041 -12.37006 -346.08 8.31
tp @s[scores={cutSceneTimer=98}] 7421.912 98.88897 -12.36046 -346.08 8.31
tp @s[scores={cutSceneTimer=99}] 7421.91 98.88753 -12.35085 -346.08 8.31
tp @s[scores={cutSceneTimer=100}] 7421.907 98.88609 -12.34125 -346.08 8.31
tp @s[scores={cutSceneTimer=101}] 7421.905 98.88464 -12.33164 -346.08 8.31
tp @s[scores={cutSceneTimer=102}] 7421.902 98.8832 -12.32204 -346.08 8.31
tp @s[scores={cutSceneTimer=103}] 7421.9 98.88176 -12.31244 -346.08 8.31
tp @s[scores={cutSceneTimer=104}] 7421.897 98.88032 -12.30283 -346.08 8.31
tp @s[scores={cutSceneTimer=105}] 7421.895 98.87888 -12.29323 -346.08 8.31
tp @s[scores={cutSceneTimer=106}] 7421.893 98.87743 -12.28362 -346.08 8.31
tp @s[scores={cutSceneTimer=107}] 7421.89 98.87599 -12.27402 -346.08 8.31
tp @s[scores={cutSceneTimer=108}] 7421.888 98.87455 -12.26441 -346.08 8.31
tp @s[scores={cutSceneTimer=109}] 7421.885 98.87311 -12.25481 -346.08 8.31
tp @s[scores={cutSceneTimer=110}] 7421.883 98.87167 -12.2452 -346.08 8.31
tp @s[scores={cutSceneTimer=111}] 7421.88 98.87022 -12.2356 -346.08 8.31
tp @s[scores={cutSceneTimer=112}] 7421.878 98.86878 -12.226 -346.08 8.31
tp @s[scores={cutSceneTimer=113}] 7421.875 98.86734 -12.21639 -346.08 8.31
tp @s[scores={cutSceneTimer=114}] 7421.873 98.8659 -12.20679 -346.08 8.31
tp @s[scores={cutSceneTimer=115}] 7421.871 98.86446 -12.19718 -346.08 8.31
tp @s[scores={cutSceneTimer=116}] 7421.868 98.86301 -12.18758 -346.08 8.31
tp @s[scores={cutSceneTimer=117}] 7421.866 98.86157 -12.17797 -346.08 8.31
tp @s[scores={cutSceneTimer=118}] 7421.863 98.86013 -12.16837 -346.08 8.31
tp @s[scores={cutSceneTimer=119}] 7421.861 98.85869 -12.15876 -346.08 8.31
tp @s[scores={cutSceneTimer=120}] 7421.858 98.85725 -12.14916 -346.08 8.31
tp @s[scores={cutSceneTimer=121}] 7421.856 98.8558 -12.13955 -346.08 8.31
tp @s[scores={cutSceneTimer=122}] 7421.854 98.85436 -12.12995 -346.08 8.31
tp @s[scores={cutSceneTimer=123}] 7421.851 98.85292 -12.12035 -346.08 8.31
tp @s[scores={cutSceneTimer=124}] 7421.849 98.85148 -12.11074 -346.08 8.31
tp @s[scores={cutSceneTimer=125}] 7421.846 98.85004 -12.10114 -346.08 8.31
tp @s[scores={cutSceneTimer=126}] 7421.844 98.84859 -12.09153 -346.08 8.31
tp @s[scores={cutSceneTimer=127}] 7421.841 98.84715 -12.08193 -346.08 8.31
tp @s[scores={cutSceneTimer=128}] 7421.839 98.84571 -12.07232 -346.08 8.31
tp @s[scores={cutSceneTimer=129}] 7421.836 98.84427 -12.06272 -346.08 8.31
tp @s[scores={cutSceneTimer=130}] 7421.834 98.84283 -12.05311 -346.08 8.31
tp @s[scores={cutSceneTimer=131}] 7421.832 98.84138 -12.04351 -346.08 8.31
tp @s[scores={cutSceneTimer=132}] 7421.829 98.83994 -12.03391 -346.08 8.31
tp @s[scores={cutSceneTimer=133}] 7421.827 98.8385 -12.0243 -346.08 8.31
tp @s[scores={cutSceneTimer=134}] 7421.824 98.83706 -12.0147 -346.08 8.31
tp @s[scores={cutSceneTimer=135}] 7421.822 98.83562 -12.00509 -346.08 8.31
tp @s[scores={cutSceneTimer=136}] 7421.819 98.83418 -11.99549 -346.08 8.31
tp @s[scores={cutSceneTimer=137}] 7421.817 98.83273 -11.98588 -346.08 8.31
tp @s[scores={cutSceneTimer=138}] 7421.814 98.83129 -11.97628 -346.08 8.31
tp @s[scores={cutSceneTimer=139}] 7421.812 98.82985 -11.96667 -346.08 8.31
tp @s[scores={cutSceneTimer=140}] 7421.81 98.82841 -11.95707 -346.08 8.31
tp @s[scores={cutSceneTimer=141}] 7421.807 98.82697 -11.94747 -346.08 8.31
tp @s[scores={cutSceneTimer=142}] 7421.805 98.82552 -11.93786 -346.08 8.31
tp @s[scores={cutSceneTimer=143}] 7421.802 98.82408 -11.92826 -346.08 8.31
tp @s[scores={cutSceneTimer=144}] 7421.8 98.82264 -11.91865 -346.08 8.31
tp @s[scores={cutSceneTimer=145}] 7421.797 98.8212 -11.90905 -346.08 8.31
tp @s[scores={cutSceneTimer=146}] 7421.795 98.81976 -11.89944 -346.08 8.31
tp @s[scores={cutSceneTimer=147}] 7421.792 98.81831 -11.88984 -346.08 8.31
tp @s[scores={cutSceneTimer=148}] 7421.79 98.81687 -11.88023 -346.08 8.31
tp @s[scores={cutSceneTimer=149}] 7421.788 98.81543 -11.87063 -346.08 8.31
tp @s[scores={cutSceneTimer=150}] 7421.785 98.81399 -11.86103 -346.08 8.31
tp @s[scores={cutSceneTimer=151}] 7421.783 98.81255 -11.85142 -346.08 8.31
tp @s[scores={cutSceneTimer=152}] 7421.78 98.8111 -11.84182 -346.08 8.31
tp @s[scores={cutSceneTimer=153}] 7421.778 98.80966 -11.83221 -346.08 8.31
tp @s[scores={cutSceneTimer=154}] 7421.775 98.80822 -11.82261 -346.08 8.31
tp @s[scores={cutSceneTimer=155}] 7421.773 98.80678 -11.813 -346.08 8.31
tp @s[scores={cutSceneTimer=156}] 7421.771 98.80534 -11.8034 -346.08 8.31
tp @s[scores={cutSceneTimer=157}] 7421.768 98.80389 -11.79379 -346.08 8.31
tp @s[scores={cutSceneTimer=158}] 7421.766 98.80245 -11.78419 -346.08 8.31
tp @s[scores={cutSceneTimer=159}] 7421.763 98.80101 -11.77459 -346.08 8.31
tp @s[scores={cutSceneTimer=160}] 7421.761 98.79957 -11.76498 -346.08 8.31
tp @s[scores={cutSceneTimer=161}] 7421.758 98.79813 -11.75538 -346.08 8.31
tp @s[scores={cutSceneTimer=162}] 7421.756 98.79668 -11.74577 -346.08 8.31
tp @s[scores={cutSceneTimer=163}] 7421.753 98.79524 -11.73617 -346.08 8.31
tp @s[scores={cutSceneTimer=164}] 7421.751 98.7938 -11.72656 -346.08 8.31
tp @s[scores={cutSceneTimer=165}] 7421.749 98.79236 -11.71696 -346.08 8.31
tp @s[scores={cutSceneTimer=166}] 7421.746 98.79092 -11.70735 -346.08 8.31
tp @s[scores={cutSceneTimer=167}] 7421.744 98.78947 -11.69775 -346.08 8.31
tp @s[scores={cutSceneTimer=168}] 7421.741 98.78803 -11.68815 -346.08 8.31
tp @s[scores={cutSceneTimer=169}] 7421.739 98.78659 -11.67854 -346.08 8.31
tp @s[scores={cutSceneTimer=170}] 7421.736 98.78515 -11.66894 -346.08 8.31
tp @s[scores={cutSceneTimer=171}] 7421.734 98.78371 -11.65933 -346.08 8.31
tp @s[scores={cutSceneTimer=172}] 7421.731 98.78226 -11.64973 -346.08 8.31
tp @s[scores={cutSceneTimer=173}] 7421.729 98.78082 -11.64012 -346.08 8.31
tp @s[scores={cutSceneTimer=174}] 7421.727 98.77938 -11.63052 -346.08 8.31
tp @s[scores={cutSceneTimer=175}] 7421.724 98.77794 -11.62091 -346.08 8.31
tp @s[scores={cutSceneTimer=176}] 7421.722 98.7765 -11.61131 -346.08 8.31
tp @s[scores={cutSceneTimer=177}] 7421.719 98.77505 -11.60171 -346.08 8.31
tp @s[scores={cutSceneTimer=178}] 7421.717 98.77361 -11.5921 -346.08 8.31
tp @s[scores={cutSceneTimer=179}] 7421.714 98.77217 -11.5825 -346.08 8.31
tp @s[scores={cutSceneTimer=180}] 7421.712 98.77073 -11.57289 -346.08 8.31
tp @s[scores={cutSceneTimer=181}] 7421.709 98.76929 -11.56329 -346.08 8.31
tp @s[scores={cutSceneTimer=182}] 7421.707 98.76785 -11.55368 -346.08 8.31
tp @s[scores={cutSceneTimer=183}] 7421.705 98.7664 -11.54408 -346.08 8.31
tp @s[scores={cutSceneTimer=184}] 7421.702 98.76496 -11.53447 -346.08 8.31
tp @s[scores={cutSceneTimer=185}] 7421.7 98.76352 -11.52487 -346.08 8.31
tp @s[scores={cutSceneTimer=186}] 7421.697 98.76208 -11.51527 -346.08 8.31
tp @s[scores={cutSceneTimer=187}] 7421.695 98.76064 -11.50566 -346.08 8.31
tp @s[scores={cutSceneTimer=188}] 7421.692 98.75919 -11.49606 -346.08 8.31
tp @s[scores={cutSceneTimer=189}] 7421.69 98.75775 -11.48645 -346.08 8.31
tp @s[scores={cutSceneTimer=190}] 7421.688 98.75631 -11.47685 -346.08 8.31
tp @s[scores={cutSceneTimer=191}] 7421.685 98.75487 -11.46724 -346.08 8.31
tp @s[scores={cutSceneTimer=192}] 7421.683 98.75343 -11.45764 -346.08 8.31
tp @s[scores={cutSceneTimer=193}] 7421.68 98.75198 -11.44803 -346.08 8.31
tp @s[scores={cutSceneTimer=194}] 7421.678 98.75054 -11.43843 -346.08 8.31
tp @s[scores={cutSceneTimer=195}] 7421.675 98.7491 -11.42883 -346.08 8.31
tp @s[scores={cutSceneTimer=196}] 7421.673 98.74766 -11.41922 -346.08 8.31
tp @s[scores={cutSceneTimer=197}] 7421.67 98.74622 -11.40962 -346.08 8.31
tp @s[scores={cutSceneTimer=198}] 7421.668 98.74477 -11.40001 -346.08 8.31
tp @s[scores={cutSceneTimer=199}] 7421.666 98.74333 -11.39041 -346.08 8.31
tp @s[scores={cutSceneTimer=200}] 7421.663 98.74189 -11.3808 -346.08 8.31
tp @s[scores={cutSceneTimer=201}] 7421.661 98.74045 -11.3712 -346.08 8.31
tp @s[scores={cutSceneTimer=202}] 7421.658 98.73901 -11.36159 -346.08 8.31
tp @s[scores={cutSceneTimer=203}] 7421.656 98.73756 -11.35199 -346.08 8.31
tp @s[scores={cutSceneTimer=204}] 7421.653 98.73612 -11.34239 -346.08 8.31
tp @s[scores={cutSceneTimer=205}] 7421.651 98.73468 -11.33278 -346.08 8.31
tp @s[scores={cutSceneTimer=206}] 7421.648 98.73324 -11.32318 -346.08 8.31
tp @s[scores={cutSceneTimer=207}] 7421.646 98.7318 -11.31357 -346.08 8.31
tp @s[scores={cutSceneTimer=208}] 7421.644 98.73035 -11.30397 -346.08 8.31
tp @s[scores={cutSceneTimer=209}] 7421.641 98.72891 -11.29436 -346.08 8.31
tp @s[scores={cutSceneTimer=210}] 7421.639 98.72747 -11.28476 -346.08 8.31
tp @s[scores={cutSceneTimer=211}] 7421.636 98.72603 -11.27515 -346.08 8.31
tp @s[scores={cutSceneTimer=212}] 7421.634 98.72459 -11.26555 -346.08 8.31
tp @s[scores={cutSceneTimer=213}] 7421.631 98.72314 -11.25595 -346.08 8.31
tp @s[scores={cutSceneTimer=214}] 7421.629 98.7217 -11.24634 -346.08 8.31
tp @s[scores={cutSceneTimer=215}] 7421.626 98.72026 -11.23674 -346.08 8.31
tp @s[scores={cutSceneTimer=216}] 7421.624 98.71882 -11.22713 -346.08 8.31
tp @s[scores={cutSceneTimer=217}] 7421.622 98.71738 -11.21753 -346.08 8.31
tp @s[scores={cutSceneTimer=218}] 7421.619 98.71593 -11.20792 -346.08 8.31
tp @s[scores={cutSceneTimer=219}] 7421.617 98.71449 -11.19832 -346.08 8.31
tp @s[scores={cutSceneTimer=220}] 7421.614 98.71305 -11.18871 -346.08 8.31
tp @s[scores={cutSceneTimer=221}] 7421.612 98.71161 -11.17911 -346.08 8.31
tp @s[scores={cutSceneTimer=222}] 7421.609 98.71017 -11.16951 -346.08 8.31
tp @s[scores={cutSceneTimer=223}] 7421.607 98.70872 -11.1599 -346.08 8.31
tp @s[scores={cutSceneTimer=224}] 7421.604 98.70728 -11.1503 -346.08 8.31
tp @s[scores={cutSceneTimer=225}] 7421.602 98.70584 -11.14069 -346.08 8.31
tp @s[scores={cutSceneTimer=226}] 7421.6 98.7044 -11.13109 -346.08 8.31
tp @s[scores={cutSceneTimer=227}] 7421.597 98.70296 -11.12148 -346.08 8.31
tp @s[scores={cutSceneTimer=228}] 7421.595 98.70152 -11.11188 -346.08 8.31
tp @s[scores={cutSceneTimer=229}] 7421.592 98.70007 -11.10227 -346.08 8.31
tp @s[scores={cutSceneTimer=230}] 7421.59 98.69863 -11.09267 -346.08 8.31
tp @s[scores={cutSceneTimer=231}] 7421.587 98.69719 -11.08307 -346.08 8.31
tp @s[scores={cutSceneTimer=232}] 7421.585 98.69575 -11.07346 -346.08 8.31
tp @s[scores={cutSceneTimer=233}] 7421.583 98.69431 -11.06386 -346.08 8.31
tp @s[scores={cutSceneTimer=234}] 7421.58 98.69286 -11.05425 -346.08 8.31
tp @s[scores={cutSceneTimer=235}] 7421.578 98.69142 -11.04465 -346.08 8.31
tp @s[scores={cutSceneTimer=236}] 7421.575 98.68998 -11.03504 -346.08 8.31
tp @s[scores={cutSceneTimer=237}] 7421.573 98.68854 -11.02544 -346.08 8.31
tp @s[scores={cutSceneTimer=238}] 7421.57 98.6871 -11.01583 -346.08 8.31
tp @s[scores={cutSceneTimer=239}] 7421.568 98.68565 -11.00623 -346.08 8.31
tp @s[scores={cutSceneTimer=240}] 7421.565 98.68421 -10.99662 -346.08 8.31
tp @s[scores={cutSceneTimer=241}] 7421.563 98.68277 -10.98702 -346.08 8.31
tp @s[scores={cutSceneTimer=242}] 7421.561 98.68133 -10.97742 -346.08 8.31
tp @s[scores={cutSceneTimer=243}] 7421.558 98.67989 -10.96781 -346.08 8.31
tp @s[scores={cutSceneTimer=244}] 7421.556 98.67844 -10.95821 -346.08 8.31
tp @s[scores={cutSceneTimer=245}] 7421.553 98.677 -10.9486 -346.08 8.31
tp @s[scores={cutSceneTimer=246}] 7421.551 98.67556 -10.939 -346.08 8.31
tp @s[scores={cutSceneTimer=247}] 7421.548 98.67412 -10.92939 -346.08 8.31
tp @s[scores={cutSceneTimer=248}] 7421.546 98.67268 -10.91979 -346.08 8.31
tp @s[scores={cutSceneTimer=249}] 7421.543 98.67123 -10.91018 -346.08 8.31
tp @s[scores={cutSceneTimer=250}] 7421.541 98.66979 -10.90058 -346.08 8.31
tp @s[scores={cutSceneTimer=251}] 7421.539 98.66835 -10.89098 -346.08 8.31
tp @s[scores={cutSceneTimer=252}] 7421.536 98.66691 -10.88137 -346.08 8.31
tp @s[scores={cutSceneTimer=253}] 7421.534 98.66547 -10.87177 -346.08 8.31
tp @s[scores={cutSceneTimer=254}] 7421.531 98.66402 -10.86216 -346.08 8.31
tp @s[scores={cutSceneTimer=255}] 7421.529 98.66258 -10.85256 -346.08 8.31
tp @s[scores={cutSceneTimer=256}] 7421.526 98.66114 -10.84295 -346.08 8.31
tp @s[scores={cutSceneTimer=257}] 7421.524 98.6597 -10.83335 -346.08 8.31
tp @s[scores={cutSceneTimer=258}] 7421.521 98.65826 -10.82374 -346.08 8.31
tp @s[scores={cutSceneTimer=259}] 7421.519 98.65681 -10.81414 -346.08 8.31
tp @s[scores={cutSceneTimer=260}] 7421.517 98.65537 -10.80454 -346.08 8.31
tp @s[scores={cutSceneTimer=261}] 7421.514 98.65393 -10.79493 -346.08 8.31
tp @s[scores={cutSceneTimer=262}] 7421.512 98.65249 -10.78533 -346.08 8.31
tp @s[scores={cutSceneTimer=263}] 7421.509 98.65105 -10.77572 -346.08 8.31
tp @s[scores={cutSceneTimer=264}] 7421.507 98.6496 -10.76612 -346.08 8.31
tp @s[scores={cutSceneTimer=265}] 7421.504 98.64816 -10.75651 -346.08 8.31
tp @s[scores={cutSceneTimer=266}] 7421.502 98.64672 -10.74691 -346.08 8.31
tp @s[scores={cutSceneTimer=267}] 7421.5 98.64528 -10.7373 -346.08 8.31
tp @s[scores={cutSceneTimer=268}] 7421.497 98.64384 -10.7277 -346.08 8.31
tp @s[scores={cutSceneTimer=269}] 7421.495 98.6424 -10.7181 -346.08 8.31
tp @s[scores={cutSceneTimer=270}] 7421.492 98.64095 -10.70849 -346.08 8.31
tp @s[scores={cutSceneTimer=271}] 7421.49 98.63951 -10.69889 -346.08 8.31
tp @s[scores={cutSceneTimer=272}] 7421.487 98.63807 -10.68928 -346.08 8.31
tp @s[scores={cutSceneTimer=273}] 7421.485 98.63663 -10.67968 -346.08 8.31
tp @s[scores={cutSceneTimer=274}] 7421.482 98.63519 -10.67007 -346.08 8.31
tp @s[scores={cutSceneTimer=275}] 7421.48 98.63374 -10.66047 -346.08 8.31
tp @s[scores={cutSceneTimer=276}] 7421.478 98.6323 -10.65086 -346.08 8.31
tp @s[scores={cutSceneTimer=277}] 7421.475 98.63086 -10.64126 -346.08 8.31
tp @s[scores={cutSceneTimer=278}] 7421.473 98.62942 -10.63166 -346.08 8.31
tp @s[scores={cutSceneTimer=279}] 7421.47 98.62798 -10.62205 -346.08 8.31
tp @s[scores={cutSceneTimer=280}] 7421.468 98.62653 -10.61245 -346.08 8.31
tp @s[scores={cutSceneTimer=281}] 7421.465 98.62509 -10.60284 -346.08 8.31
tp @s[scores={cutSceneTimer=282}] 7421.463 98.62365 -10.59324 -346.08 8.31
tp @s[scores={cutSceneTimer=283}] 7421.46 98.62221 -10.58363 -346.08 8.31
tp @s[scores={cutSceneTimer=284}] 7421.458 98.62077 -10.57403 -346.08 8.31
tp @s[scores={cutSceneTimer=285}] 7421.456 98.61932 -10.56442 -346.08 8.31
tp @s[scores={cutSceneTimer=286}] 7421.453 98.61788 -10.55482 -346.08 8.31
tp @s[scores={cutSceneTimer=287}] 7421.451 98.61644 -10.54522 -346.08 8.31
tp @s[scores={cutSceneTimer=288}] 7421.448 98.615 -10.53561 -346.08 8.31
tp @s[scores={cutSceneTimer=289}] 7421.446 98.61356 -10.52601 -346.08 8.31
tp @s[scores={cutSceneTimer=290}] 7421.443 98.61211 -10.5164 -346.08 8.31
tp @s[scores={cutSceneTimer=291}] 7421.441 98.61067 -10.5068 -346.08 8.31
tp @s[scores={cutSceneTimer=292}] 7421.438 98.60923 -10.49719 -346.08 8.31
tp @s[scores={cutSceneTimer=293}] 7421.436 98.60779 -10.48759 -346.08 8.31
tp @s[scores={cutSceneTimer=294}] 7421.434 98.60635 -10.47798 -346.08 8.31
tp @s[scores={cutSceneTimer=295}] 7421.431 98.6049 -10.46838 -346.08 8.31
tp @s[scores={cutSceneTimer=296}] 7421.429 98.60346 -10.45878 -346.08 8.31
tp @s[scores={cutSceneTimer=297}] 7421.426 98.60202 -10.44917 -346.08 8.31
tp @s[scores={cutSceneTimer=298}] 7421.424 98.60058 -10.43957 -346.08 8.31
tp @s[scores={cutSceneTimer=299}] 7421.421 98.59914 -10.42996 -346.08 8.31
tp @s[scores={cutSceneTimer=300}] 7421.419 98.59769 -10.42036 -346.08 8.31
execute as @s[scores={cutSceneTimer=280}] as @s run function hp:cutscenes/fade_in

# ¤Lupin:¤ Hello Students!
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=20..120}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"  "}]
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=27},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=31},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=38},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=49},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=53},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=60},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Lupin:¤ Today we will be learning to use 'Bombarda Maxima';
execute as @s[scores={cutSceneTimer=121},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=121..210}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"         "}]
execute as @s[scores={cutSceneTimer=121},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=128},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=132},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=139},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=143},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=150},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=154},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=161},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Lupin:¤ a strong variation of the exploding charm.
execute as @s[scores={cutSceneTimer=211},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=211..300}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"       "}]
execute as @s[scores={cutSceneTimer=211},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=218},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=222},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=229},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=233},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=240},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=244},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=251},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral


# ¤Lupin:¤ This will allow you to conjure up powerful explosions,
execute as @s[scores={cutSceneTimer=300},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=300..400}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"         "}]
execute as @s[scores={cutSceneTimer=300},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=307},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=311},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=315},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=322},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=329},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=333},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=340},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Lupin:¤ capable of dealing great damage to multiple foes as well as blowing up certain walls and objects.
execute as @s[scores={cutSceneTimer=400},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=400..550}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"                 "}]
execute as @s[scores={cutSceneTimer=400},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=407},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=411},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=415},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=422},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=429},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=433},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=440},tag=cutsceneLeader] as @e[tag=lupinClassroomBombarda,limit=1] run function hp:npc/update_npc_head_neutral


execute as @s[scores={cutSceneTimer=300}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=301}] 7416.69 96.13 -2.353 -370.05 3.52
tp @s[scores={cutSceneTimer=302}] 7416.69 96.13 -2.346 -370.02 3.51
tp @s[scores={cutSceneTimer=303}] 7416.69 96.13 -2.339 -369.99 3.5
tp @s[scores={cutSceneTimer=304}] 7416.69 96.13 -2.332 -369.96 3.49
tp @s[scores={cutSceneTimer=305}] 7416.69 96.13 -2.325 -369.93 3.48
tp @s[scores={cutSceneTimer=306}] 7416.69 96.13 -2.318 -369.9 3.47
tp @s[scores={cutSceneTimer=307}] 7416.69 96.13 -2.311 -369.87 3.46
tp @s[scores={cutSceneTimer=308}] 7416.69 96.13 -2.304 -369.84 3.45
tp @s[scores={cutSceneTimer=309}] 7416.69 96.13 -2.297 -369.81 3.44
tp @s[scores={cutSceneTimer=310}] 7416.69 96.13 -2.29 -369.78 3.43
tp @s[scores={cutSceneTimer=311}] 7416.69 96.13 -2.283 -369.75 3.42
tp @s[scores={cutSceneTimer=312}] 7416.69 96.13 -2.276 -369.72 3.41
tp @s[scores={cutSceneTimer=313}] 7416.69 96.13 -2.269 -369.69 3.4
tp @s[scores={cutSceneTimer=314}] 7416.69 96.13 -2.262 -369.66 3.39
tp @s[scores={cutSceneTimer=315}] 7416.69 96.13 -2.255 -369.63 3.38
tp @s[scores={cutSceneTimer=316}] 7416.69 96.13 -2.248 -369.6 3.37
tp @s[scores={cutSceneTimer=317}] 7416.69 96.13 -2.241 -369.57 3.36
tp @s[scores={cutSceneTimer=318}] 7416.69 96.13 -2.234 -369.54 3.35
tp @s[scores={cutSceneTimer=319}] 7416.69 96.13 -2.227 -369.51 3.34
tp @s[scores={cutSceneTimer=320}] 7416.69 96.13 -2.220001 -369.48 3.33
tp @s[scores={cutSceneTimer=321}] 7416.69 96.13 -2.213001 -369.45 3.32
tp @s[scores={cutSceneTimer=322}] 7416.69 96.13 -2.206001 -369.42 3.31
tp @s[scores={cutSceneTimer=323}] 7416.69 96.13 -2.199001 -369.39 3.3
tp @s[scores={cutSceneTimer=324}] 7416.69 96.13 -2.192001 -369.36 3.29
tp @s[scores={cutSceneTimer=325}] 7416.69 96.13 -2.185001 -369.33 3.28
tp @s[scores={cutSceneTimer=326}] 7416.69 96.13 -2.178001 -369.3 3.27
tp @s[scores={cutSceneTimer=327}] 7416.69 96.13 -2.171001 -369.27 3.26
tp @s[scores={cutSceneTimer=328}] 7416.69 96.13 -2.164001 -369.24 3.25
tp @s[scores={cutSceneTimer=329}] 7416.69 96.13 -2.157001 -369.21 3.24
tp @s[scores={cutSceneTimer=330}] 7416.69 96.13 -2.150001 -369.18 3.23
tp @s[scores={cutSceneTimer=331}] 7416.69 96.13 -2.143001 -369.15 3.22
tp @s[scores={cutSceneTimer=332}] 7416.69 96.13 -2.136001 -369.12 3.21
tp @s[scores={cutSceneTimer=333}] 7416.69 96.13 -2.129001 -369.09 3.2
tp @s[scores={cutSceneTimer=334}] 7416.69 96.13 -2.122001 -369.06 3.19
tp @s[scores={cutSceneTimer=335}] 7416.69 96.13 -2.115001 -369.03 3.18
tp @s[scores={cutSceneTimer=336}] 7416.69 96.13 -2.108001 -369 3.17
tp @s[scores={cutSceneTimer=337}] 7416.69 96.13 -2.101001 -368.97 3.16
tp @s[scores={cutSceneTimer=338}] 7416.69 96.13 -2.094001 -368.94 3.15
tp @s[scores={cutSceneTimer=339}] 7416.69 96.13 -2.087001 -368.91 3.14
tp @s[scores={cutSceneTimer=340}] 7416.69 96.13 -2.080001 -368.88 3.13
tp @s[scores={cutSceneTimer=341}] 7416.69 96.13 -2.073001 -368.85 3.12
tp @s[scores={cutSceneTimer=342}] 7416.69 96.13 -2.066001 -368.82 3.11
tp @s[scores={cutSceneTimer=343}] 7416.69 96.13 -2.059001 -368.79 3.1
tp @s[scores={cutSceneTimer=344}] 7416.69 96.13 -2.052001 -368.76 3.09
tp @s[scores={cutSceneTimer=345}] 7416.69 96.13 -2.045001 -368.73 3.08
tp @s[scores={cutSceneTimer=346}] 7416.69 96.13 -2.038001 -368.7 3.07
tp @s[scores={cutSceneTimer=347}] 7416.69 96.13 -2.031001 -368.67 3.06
tp @s[scores={cutSceneTimer=348}] 7416.69 96.13 -2.024001 -368.64 3.05
tp @s[scores={cutSceneTimer=349}] 7416.69 96.13 -2.017001 -368.61 3.04
tp @s[scores={cutSceneTimer=350}] 7416.69 96.13 -2.010001 -368.58 3.03
tp @s[scores={cutSceneTimer=351}] 7416.69 96.13 -2.003001 -368.55 3.02
tp @s[scores={cutSceneTimer=352}] 7416.69 96.13 -1.996001 -368.5201 3.01
tp @s[scores={cutSceneTimer=353}] 7416.69 96.13 -1.989002 -368.4901 3
tp @s[scores={cutSceneTimer=354}] 7416.69 96.13 -1.982002 -368.4601 2.99
tp @s[scores={cutSceneTimer=355}] 7416.69 96.13 -1.975002 -368.4301 2.98
tp @s[scores={cutSceneTimer=356}] 7416.69 96.13 -1.968002 -368.4001 2.970001
tp @s[scores={cutSceneTimer=357}] 7416.69 96.13 -1.961002 -368.3701 2.960001
tp @s[scores={cutSceneTimer=358}] 7416.69 96.13 -1.954002 -368.3401 2.950001
tp @s[scores={cutSceneTimer=359}] 7416.69 96.13 -1.947002 -368.3101 2.940001
tp @s[scores={cutSceneTimer=360}] 7416.69 96.13 -1.940002 -368.2801 2.930001
tp @s[scores={cutSceneTimer=361}] 7416.69 96.13 -1.933002 -368.2501 2.920001
tp @s[scores={cutSceneTimer=362}] 7416.69 96.13 -1.926002 -368.2201 2.910001
tp @s[scores={cutSceneTimer=363}] 7416.69 96.13 -1.919002 -368.1901 2.900001
tp @s[scores={cutSceneTimer=364}] 7416.69 96.13 -1.912002 -368.1601 2.890001
tp @s[scores={cutSceneTimer=365}] 7416.69 96.13 -1.905002 -368.1301 2.880001
tp @s[scores={cutSceneTimer=366}] 7416.69 96.13 -1.898002 -368.1001 2.870001
tp @s[scores={cutSceneTimer=367}] 7416.69 96.13 -1.891002 -368.0701 2.860001
tp @s[scores={cutSceneTimer=368}] 7416.69 96.13 -1.884002 -368.0401 2.850001
tp @s[scores={cutSceneTimer=369}] 7416.69 96.13 -1.877002 -368.0101 2.840001
tp @s[scores={cutSceneTimer=370}] 7416.69 96.13 -1.870002 -367.9801 2.830001
tp @s[scores={cutSceneTimer=371}] 7416.69 96.13 -1.863002 -367.9501 2.820001
tp @s[scores={cutSceneTimer=372}] 7416.69 96.13 -1.856002 -367.9201 2.810001
tp @s[scores={cutSceneTimer=373}] 7416.69 96.13 -1.849002 -367.8901 2.800001
tp @s[scores={cutSceneTimer=374}] 7416.69 96.13 -1.842002 -367.8601 2.790001
tp @s[scores={cutSceneTimer=375}] 7416.69 96.13 -1.835002 -367.8301 2.780001
tp @s[scores={cutSceneTimer=376}] 7416.69 96.13 -1.828002 -367.8001 2.770001
tp @s[scores={cutSceneTimer=377}] 7416.69 96.13 -1.821002 -367.7701 2.760001
tp @s[scores={cutSceneTimer=378}] 7416.69 96.13 -1.814002 -367.7401 2.750001
tp @s[scores={cutSceneTimer=379}] 7416.69 96.13 -1.807002 -367.7101 2.740001
tp @s[scores={cutSceneTimer=380}] 7416.69 96.13 -1.800002 -367.6801 2.730001
tp @s[scores={cutSceneTimer=381}] 7416.69 96.13 -1.793002 -367.6501 2.720001
tp @s[scores={cutSceneTimer=382}] 7416.69 96.13 -1.786002 -367.6201 2.710001
tp @s[scores={cutSceneTimer=383}] 7416.69 96.13 -1.779002 -367.5901 2.700001
tp @s[scores={cutSceneTimer=384}] 7416.69 96.13 -1.772002 -367.5601 2.690001
tp @s[scores={cutSceneTimer=385}] 7416.69 96.13 -1.765002 -367.5301 2.680001
tp @s[scores={cutSceneTimer=386}] 7416.69 96.13 -1.758003 -367.5001 2.670001
tp @s[scores={cutSceneTimer=387}] 7416.69 96.13 -1.751003 -367.4701 2.660001
tp @s[scores={cutSceneTimer=388}] 7416.69 96.13 -1.744003 -367.4401 2.650001
tp @s[scores={cutSceneTimer=389}] 7416.69 96.13 -1.737003 -367.4101 2.640001
tp @s[scores={cutSceneTimer=390}] 7416.69 96.13 -1.730003 -367.3801 2.630001
tp @s[scores={cutSceneTimer=391}] 7416.69 96.13 -1.723003 -367.3501 2.620001
tp @s[scores={cutSceneTimer=392}] 7416.69 96.13 -1.716003 -367.3201 2.610001
tp @s[scores={cutSceneTimer=393}] 7416.69 96.13 -1.709003 -367.2901 2.600001
tp @s[scores={cutSceneTimer=394}] 7416.69 96.13 -1.702003 -367.2601 2.590001
tp @s[scores={cutSceneTimer=395}] 7416.69 96.13 -1.695003 -367.2301 2.580001
tp @s[scores={cutSceneTimer=396}] 7416.69 96.13 -1.688003 -367.2001 2.570001
tp @s[scores={cutSceneTimer=397}] 7416.69 96.13 -1.681003 -367.1701 2.560001
tp @s[scores={cutSceneTimer=398}] 7416.69 96.13 -1.674003 -367.1401 2.550001
tp @s[scores={cutSceneTimer=399}] 7416.69 96.13 -1.667003 -367.1101 2.540001
tp @s[scores={cutSceneTimer=400}] 7416.69 96.13 -1.660003 -367.0801 2.530001
tp @s[scores={cutSceneTimer=401}] 7416.69 96.13 -1.653003 -367.0501 2.520001
tp @s[scores={cutSceneTimer=402}] 7416.69 96.13 -1.646003 -367.0201 2.510001
tp @s[scores={cutSceneTimer=403}] 7416.69 96.13 -1.639003 -366.9901 2.500001
tp @s[scores={cutSceneTimer=404}] 7416.69 96.13 -1.632003 -366.9601 2.490001
tp @s[scores={cutSceneTimer=405}] 7416.69 96.13 -1.625003 -366.9301 2.480001
tp @s[scores={cutSceneTimer=406}] 7416.69 96.13 -1.618003 -366.9001 2.470001
tp @s[scores={cutSceneTimer=407}] 7416.69 96.13 -1.611003 -366.8701 2.460001
tp @s[scores={cutSceneTimer=408}] 7416.69 96.13 -1.604003 -366.8401 2.450001
tp @s[scores={cutSceneTimer=409}] 7416.69 96.13 -1.597003 -366.8101 2.440001
tp @s[scores={cutSceneTimer=410}] 7416.69 96.13 -1.590003 -366.7801 2.430001
tp @s[scores={cutSceneTimer=411}] 7416.69 96.13 -1.583003 -366.7501 2.420001
tp @s[scores={cutSceneTimer=412}] 7416.69 96.13 -1.576003 -366.7201 2.410001
tp @s[scores={cutSceneTimer=413}] 7416.69 96.13 -1.569003 -366.6901 2.400001
tp @s[scores={cutSceneTimer=414}] 7416.69 96.13 -1.562003 -366.6601 2.390001
tp @s[scores={cutSceneTimer=415}] 7416.69 96.13 -1.555003 -366.6301 2.380001
tp @s[scores={cutSceneTimer=416}] 7416.69 96.13 -1.548003 -366.6001 2.370001
tp @s[scores={cutSceneTimer=417}] 7416.69 96.13 -1.541003 -366.5701 2.360001
tp @s[scores={cutSceneTimer=418}] 7416.69 96.13 -1.534003 -366.5401 2.350001
tp @s[scores={cutSceneTimer=419}] 7416.69 96.13 -1.527004 -366.5101 2.340001
tp @s[scores={cutSceneTimer=420}] 7416.69 96.13 -1.520004 -366.4801 2.330001
tp @s[scores={cutSceneTimer=421}] 7416.69 96.13 -1.513004 -366.4501 2.320001
tp @s[scores={cutSceneTimer=422}] 7416.69 96.13 -1.506004 -366.4201 2.310001
tp @s[scores={cutSceneTimer=423}] 7416.69 96.13 -1.499004 -366.3901 2.300001
tp @s[scores={cutSceneTimer=424}] 7416.69 96.13 -1.492004 -366.3601 2.290001
tp @s[scores={cutSceneTimer=425}] 7416.69 96.13 -1.485004 -366.3301 2.280001
tp @s[scores={cutSceneTimer=426}] 7416.69 96.13 -1.478004 -366.3001 2.270001
tp @s[scores={cutSceneTimer=427}] 7416.69 96.13 -1.471004 -366.2701 2.260001
tp @s[scores={cutSceneTimer=428}] 7416.69 96.13 -1.464004 -366.2401 2.250001
tp @s[scores={cutSceneTimer=429}] 7416.69 96.13 -1.457004 -366.2101 2.240001
tp @s[scores={cutSceneTimer=430}] 7416.69 96.13 -1.450004 -366.1801 2.230001
tp @s[scores={cutSceneTimer=431}] 7416.69 96.13 -1.443004 -366.1501 2.220001
tp @s[scores={cutSceneTimer=432}] 7416.69 96.13 -1.436004 -366.1201 2.210001
tp @s[scores={cutSceneTimer=433}] 7416.69 96.13 -1.429004 -366.0901 2.200001
tp @s[scores={cutSceneTimer=434}] 7416.69 96.13 -1.422004 -366.0602 2.190001
tp @s[scores={cutSceneTimer=435}] 7416.69 96.13 -1.415004 -366.0302 2.180001
tp @s[scores={cutSceneTimer=436}] 7416.69 96.13 -1.408004 -366.0002 2.170001
tp @s[scores={cutSceneTimer=437}] 7416.69 96.13 -1.401004 -365.9702 2.160001
tp @s[scores={cutSceneTimer=438}] 7416.69 96.13 -1.394004 -365.9402 2.150001
tp @s[scores={cutSceneTimer=439}] 7416.69 96.13 -1.387004 -365.9102 2.140001
tp @s[scores={cutSceneTimer=440}] 7416.69 96.13 -1.380004 -365.8802 2.130001
tp @s[scores={cutSceneTimer=441}] 7416.69 96.13 -1.373004 -365.8502 2.120001
tp @s[scores={cutSceneTimer=442}] 7416.69 96.13 -1.366004 -365.8202 2.110001
tp @s[scores={cutSceneTimer=443}] 7416.69 96.13 -1.359004 -365.7902 2.100001
tp @s[scores={cutSceneTimer=444}] 7416.69 96.13 -1.352004 -365.7602 2.090001
tp @s[scores={cutSceneTimer=445}] 7416.69 96.13 -1.345004 -365.7302 2.080001
tp @s[scores={cutSceneTimer=446}] 7416.69 96.13 -1.338004 -365.7002 2.070001
tp @s[scores={cutSceneTimer=447}] 7416.69 96.13 -1.331004 -365.6702 2.060001
tp @s[scores={cutSceneTimer=448}] 7416.69 96.13 -1.324004 -365.6402 2.050001
tp @s[scores={cutSceneTimer=449}] 7416.69 96.13 -1.317004 -365.6102 2.040001
tp @s[scores={cutSceneTimer=450}] 7416.69 96.13 -1.310004 -365.5802 2.030001
tp @s[scores={cutSceneTimer=451}] 7416.69 96.13 -1.303005 -365.5502 2.020001
tp @s[scores={cutSceneTimer=452}] 7416.69 96.13 -1.296005 -365.5202 2.010001
tp @s[scores={cutSceneTimer=453}] 7416.69 96.13 -1.289005 -365.4902 2.000001
tp @s[scores={cutSceneTimer=454}] 7416.69 96.13 -1.282005 -365.4602 1.990001
tp @s[scores={cutSceneTimer=455}] 7416.69 96.13 -1.275005 -365.4302 1.980001
tp @s[scores={cutSceneTimer=456}] 7416.69 96.13 -1.268005 -365.4002 1.970001
tp @s[scores={cutSceneTimer=457}] 7416.69 96.13 -1.261005 -365.3702 1.960001
tp @s[scores={cutSceneTimer=458}] 7416.69 96.13 -1.254005 -365.3402 1.950001
tp @s[scores={cutSceneTimer=459}] 7416.69 96.13 -1.247005 -365.3102 1.940001
tp @s[scores={cutSceneTimer=460}] 7416.69 96.13 -1.240005 -365.2802 1.930001
tp @s[scores={cutSceneTimer=461}] 7416.69 96.13 -1.233005 -365.2502 1.920002
tp @s[scores={cutSceneTimer=462}] 7416.69 96.13 -1.226005 -365.2202 1.910002
tp @s[scores={cutSceneTimer=463}] 7416.69 96.13 -1.219005 -365.1902 1.900002
tp @s[scores={cutSceneTimer=464}] 7416.69 96.13 -1.212005 -365.1602 1.890002
tp @s[scores={cutSceneTimer=465}] 7416.69 96.13 -1.205005 -365.1302 1.880002
tp @s[scores={cutSceneTimer=466}] 7416.69 96.13 -1.198005 -365.1002 1.870002
tp @s[scores={cutSceneTimer=467}] 7416.69 96.13 -1.191005 -365.0702 1.860002
tp @s[scores={cutSceneTimer=468}] 7416.69 96.13 -1.184005 -365.0402 1.850002
tp @s[scores={cutSceneTimer=469}] 7416.69 96.13 -1.177005 -365.0102 1.840002
tp @s[scores={cutSceneTimer=470}] 7416.69 96.13 -1.170005 -364.9802 1.830002
tp @s[scores={cutSceneTimer=471}] 7416.69 96.13 -1.163005 -364.9502 1.820002
tp @s[scores={cutSceneTimer=472}] 7416.69 96.13 -1.156005 -364.9202 1.810002
tp @s[scores={cutSceneTimer=473}] 7416.69 96.13 -1.149005 -364.8902 1.800002
tp @s[scores={cutSceneTimer=474}] 7416.69 96.13 -1.142005 -364.8602 1.790002
tp @s[scores={cutSceneTimer=475}] 7416.69 96.13 -1.135005 -364.8302 1.780002
tp @s[scores={cutSceneTimer=476}] 7416.69 96.13 -1.128005 -364.8002 1.770002
tp @s[scores={cutSceneTimer=477}] 7416.69 96.13 -1.121005 -364.7702 1.760002
tp @s[scores={cutSceneTimer=478}] 7416.69 96.13 -1.114005 -364.7402 1.750002
tp @s[scores={cutSceneTimer=479}] 7416.69 96.13 -1.107005 -364.7102 1.740002
tp @s[scores={cutSceneTimer=480}] 7416.69 96.13 -1.100005 -364.6802 1.730002
tp @s[scores={cutSceneTimer=481}] 7416.69 96.13 -1.093005 -364.6502 1.720002
tp @s[scores={cutSceneTimer=482}] 7416.69 96.13 -1.086005 -364.6202 1.710002
tp @s[scores={cutSceneTimer=483}] 7416.69 96.13 -1.079005 -364.5902 1.700002
tp @s[scores={cutSceneTimer=484}] 7416.69 96.13 -1.072006 -364.5602 1.690002
tp @s[scores={cutSceneTimer=485}] 7416.69 96.13 -1.065006 -364.5302 1.680002
tp @s[scores={cutSceneTimer=486}] 7416.69 96.13 -1.058006 -364.5002 1.670002
tp @s[scores={cutSceneTimer=487}] 7416.69 96.13 -1.051006 -364.4702 1.660002
tp @s[scores={cutSceneTimer=488}] 7416.69 96.13 -1.044006 -364.4402 1.650002
tp @s[scores={cutSceneTimer=489}] 7416.69 96.13 -1.037006 -364.4102 1.640002
tp @s[scores={cutSceneTimer=490}] 7416.69 96.13 -1.030006 -364.3802 1.630002
tp @s[scores={cutSceneTimer=491}] 7416.69 96.13 -1.023006 -364.3502 1.620002
tp @s[scores={cutSceneTimer=492}] 7416.69 96.13 -1.016006 -364.3202 1.610002
tp @s[scores={cutSceneTimer=493}] 7416.69 96.13 -1.009006 -364.2902 1.600002
tp @s[scores={cutSceneTimer=494}] 7416.69 96.13 -1.002006 -364.2602 1.590002
tp @s[scores={cutSceneTimer=495}] 7416.69 96.13 -0.9950058 -364.2302 1.580002
tp @s[scores={cutSceneTimer=496}] 7416.69 96.13 -0.9880058 -364.2002 1.570002
tp @s[scores={cutSceneTimer=497}] 7416.69 96.13 -0.9810057 -364.1702 1.560002
tp @s[scores={cutSceneTimer=498}] 7416.69 96.13 -0.9740057 -364.1402 1.550002
tp @s[scores={cutSceneTimer=499}] 7416.69 96.13 -0.9670057 -364.1102 1.540002
tp @s[scores={cutSceneTimer=500}] 7416.69 96.13 -0.9600056 -364.0802 1.530002
execute as @s[scores={cutSceneTimer=480}] as @s run function hp:cutscenes/fade_in


# ¤Lupin:¤ I have set up an area below the castle where you can practice the spell.
execute as @s[scores={cutSceneTimer=550},tag=cutsceneLeader] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=550..700}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"               "}]

# Add fog effect
execute as @s[scores={cutSceneTimer=500}] as @s run tag @s add fog
execute as @s[scores={cutSceneTimer=500}] as @s run function hp:misc/update_bossbars

execute as @s[scores={cutSceneTimer=701}] run function hp:music/music/eerie
execute as @s[scores={cutSceneTimer=701}] run scoreboard players set @s queuedMusic 0

execute as @s[scores={cutSceneTimer=500}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=501}] 7439.814 50.00138 -41.26191 -52.65 -2.66
tp @s[scores={cutSceneTimer=502}] 7439.838 50.00277 -41.24373 -52.42 -2.68
tp @s[scores={cutSceneTimer=503}] 7439.862 50.00418 -41.22546 -52.19 -2.7
tp @s[scores={cutSceneTimer=504}] 7439.885 50.00559 -41.20708 -51.96 -2.72
tp @s[scores={cutSceneTimer=505}] 7439.909 50.00701 -41.18862 -51.73 -2.74
tp @s[scores={cutSceneTimer=506}] 7439.932 50.00845 -41.17006 -51.5 -2.76
tp @s[scores={cutSceneTimer=507}] 7439.956 50.00989 -41.15141 -51.27 -2.78
tp @s[scores={cutSceneTimer=508}] 7439.979 50.01134 -41.13266 -51.04 -2.8
tp @s[scores={cutSceneTimer=509}] 7440.002 50.01281 -41.11382 -50.81001 -2.82
tp @s[scores={cutSceneTimer=510}] 7440.026 50.01429 -41.09488 -50.58001 -2.84
tp @s[scores={cutSceneTimer=511}] 7440.049 50.01577 -41.07586 -50.35001 -2.86
tp @s[scores={cutSceneTimer=512}] 7440.072 50.01727 -41.05674 -50.12001 -2.88
tp @s[scores={cutSceneTimer=513}] 7440.095 50.01878 -41.03753 -49.89001 -2.9
tp @s[scores={cutSceneTimer=514}] 7440.118 50.02029 -41.01822 -49.66001 -2.92
tp @s[scores={cutSceneTimer=515}] 7440.141 50.02182 -40.99883 -49.43001 -2.94
tp @s[scores={cutSceneTimer=516}] 7440.164 50.02336 -40.97934 -49.20001 -2.96
tp @s[scores={cutSceneTimer=517}] 7440.186 50.02491 -40.95977 -48.97001 -2.98
tp @s[scores={cutSceneTimer=518}] 7440.208 50.02647 -40.9401 -48.74001 -3
tp @s[scores={cutSceneTimer=519}] 7440.231 50.02804 -40.92034 -48.51001 -3.02
tp @s[scores={cutSceneTimer=520}] 7440.253 50.02962 -40.90049 -48.28001 -3.04
tp @s[scores={cutSceneTimer=521}] 7440.276 50.03121 -40.88056 -48.05001 -3.06
tp @s[scores={cutSceneTimer=522}] 7440.298 50.03281 -40.86053 -47.82001 -3.08
tp @s[scores={cutSceneTimer=523}] 7440.32 50.03443 -40.84042 -47.59001 -3.1
tp @s[scores={cutSceneTimer=524}] 7440.342 50.03605 -40.82021 -47.36001 -3.12
tp @s[scores={cutSceneTimer=525}] 7440.364 50.03768 -40.79992 -47.13001 -3.14
tp @s[scores={cutSceneTimer=526}] 7440.386 50.03933 -40.77954 -46.90001 -3.16
tp @s[scores={cutSceneTimer=527}] 7440.408 50.04098 -40.75908 -46.67001 -3.18
tp @s[scores={cutSceneTimer=528}] 7440.43 50.04264 -40.73853 -46.44001 -3.2
tp @s[scores={cutSceneTimer=529}] 7440.452 50.04432 -40.71788 -46.21001 -3.22
tp @s[scores={cutSceneTimer=530}] 7440.473 50.04601 -40.69715 -45.98001 -3.24
tp @s[scores={cutSceneTimer=531}] 7440.495 50.0477 -40.67634 -45.75002 -3.26
tp @s[scores={cutSceneTimer=532}] 7440.516 50.0494 -40.65544 -45.52002 -3.279999
tp @s[scores={cutSceneTimer=533}] 7440.538 50.05112 -40.63446 -45.29002 -3.299999
tp @s[scores={cutSceneTimer=534}] 7440.559 50.05285 -40.61338 -45.06002 -3.319999
tp @s[scores={cutSceneTimer=535}] 7440.58 50.05458 -40.59223 -44.83002 -3.339999
tp @s[scores={cutSceneTimer=536}] 7440.601 50.05633 -40.57099 -44.60002 -3.359999
tp @s[scores={cutSceneTimer=537}] 7440.622 50.05809 -40.54966 -44.37002 -3.379999
tp @s[scores={cutSceneTimer=538}] 7440.643 50.05986 -40.52826 -44.14002 -3.399999
tp @s[scores={cutSceneTimer=539}] 7440.664 50.06164 -40.50676 -43.91002 -3.419999
tp @s[scores={cutSceneTimer=540}] 7440.685 50.06343 -40.48519 -43.68002 -3.439999
tp @s[scores={cutSceneTimer=541}] 7440.706 50.06523 -40.46353 -43.45002 -3.459999
tp @s[scores={cutSceneTimer=542}] 7440.726 50.06704 -40.44179 -43.22002 -3.479999
tp @s[scores={cutSceneTimer=543}] 7440.747 50.06886 -40.41997 -42.99002 -3.499999
tp @s[scores={cutSceneTimer=544}] 7440.767 50.07069 -40.39807 -42.76002 -3.519999
tp @s[scores={cutSceneTimer=545}] 7440.788 50.07253 -40.37608 -42.53002 -3.539999
tp @s[scores={cutSceneTimer=546}] 7440.808 50.07439 -40.35402 -42.30002 -3.559999
tp @s[scores={cutSceneTimer=547}] 7440.828 50.07625 -40.33187 -42.07002 -3.579999
tp @s[scores={cutSceneTimer=548}] 7440.848 50.07812 -40.30965 -41.84002 -3.599999
tp @s[scores={cutSceneTimer=549}] 7440.868 50.08001 -40.28734 -41.61002 -3.619999
tp @s[scores={cutSceneTimer=550}] 7440.888 50.0819 -40.26496 -41.38002 -3.639999
tp @s[scores={cutSceneTimer=551}] 7440.908 50.08381 -40.24249 -41.15002 -3.659999
tp @s[scores={cutSceneTimer=552}] 7440.927 50.08572 -40.21995 -40.92002 -3.679999
tp @s[scores={cutSceneTimer=553}] 7440.947 50.08765 -40.19733 -40.69003 -3.699999
tp @s[scores={cutSceneTimer=554}] 7440.966 50.08958 -40.17463 -40.46003 -3.719999
tp @s[scores={cutSceneTimer=555}] 7440.986 50.09153 -40.15185 -40.23003 -3.739999
tp @s[scores={cutSceneTimer=556}] 7441.005 50.09349 -40.12899 -40.00003 -3.759999
tp @s[scores={cutSceneTimer=557}] 7441.024 50.09546 -40.10606 -39.77003 -3.779999
tp @s[scores={cutSceneTimer=558}] 7441.043 50.09743 -40.08305 -39.54003 -3.799999
tp @s[scores={cutSceneTimer=559}] 7441.063 50.09942 -40.05997 -39.31003 -3.819999
tp @s[scores={cutSceneTimer=560}] 7441.082 50.10142 -40.03681 -39.08003 -3.839999
tp @s[scores={cutSceneTimer=561}] 7441.101 50.10343 -40.01358 -38.85003 -3.859999
tp @s[scores={cutSceneTimer=562}] 7441.119 50.10545 -39.99026 -38.62003 -3.879999
tp @s[scores={cutSceneTimer=563}] 7441.138 50.10748 -39.96688 -38.39003 -3.899999
tp @s[scores={cutSceneTimer=564}] 7441.156 50.10952 -39.94342 -38.16003 -3.919999
tp @s[scores={cutSceneTimer=565}] 7441.175 50.11157 -39.91989 -37.93003 -3.939999
tp @s[scores={cutSceneTimer=566}] 7441.193 50.11363 -39.89628 -37.70003 -3.959999
tp @s[scores={cutSceneTimer=567}] 7441.211 50.1157 -39.8726 -37.47003 -3.979999
tp @s[scores={cutSceneTimer=568}] 7441.229 50.11778 -39.84885 -37.24003 -3.999999
tp @s[scores={cutSceneTimer=569}] 7441.248 50.11988 -39.82502 -37.01003 -4.019999
tp @s[scores={cutSceneTimer=570}] 7441.266 50.12198 -39.80112 -36.78003 -4.039999
tp @s[scores={cutSceneTimer=571}] 7441.284 50.12409 -39.77716 -36.55003 -4.059999
tp @s[scores={cutSceneTimer=572}] 7441.301 50.12622 -39.75312 -36.32003 -4.079999
tp @s[scores={cutSceneTimer=573}] 7441.319 50.12835 -39.72901 -36.09003 -4.099999
tp @s[scores={cutSceneTimer=574}] 7441.336 50.1305 -39.70483 -35.86003 -4.119999
tp @s[scores={cutSceneTimer=575}] 7441.354 50.13265 -39.68058 -35.63004 -4.139999
tp @s[scores={cutSceneTimer=576}] 7441.372 50.13482 -39.65626 -35.40004 -4.159999
tp @s[scores={cutSceneTimer=577}] 7441.389 50.13699 -39.63187 -35.17004 -4.179999
tp @s[scores={cutSceneTimer=578}] 7441.406 50.13918 -39.60741 -34.94004 -4.199999
tp @s[scores={cutSceneTimer=579}] 7441.423 50.14138 -39.58288 -34.71004 -4.219999
tp @s[scores={cutSceneTimer=580}] 7441.44 50.14359 -39.55829 -34.48004 -4.239999
tp @s[scores={cutSceneTimer=581}] 7441.457 50.1458 -39.53363 -34.25004 -4.259999
tp @s[scores={cutSceneTimer=582}] 7441.474 50.14803 -39.5089 -34.02004 -4.279999
tp @s[scores={cutSceneTimer=583}] 7441.49 50.15027 -39.4841 -33.79004 -4.299999
tp @s[scores={cutSceneTimer=584}] 7441.507 50.15252 -39.45924 -33.56004 -4.319999
tp @s[scores={cutSceneTimer=585}] 7441.523 50.15478 -39.43431 -33.33004 -4.339999
tp @s[scores={cutSceneTimer=586}] 7441.54 50.15705 -39.40932 -33.10004 -4.359999
tp @s[scores={cutSceneTimer=587}] 7441.556 50.15933 -39.38426 -32.87004 -4.379999
tp @s[scores={cutSceneTimer=588}] 7441.572 50.16162 -39.35913 -32.64004 -4.399999
tp @s[scores={cutSceneTimer=589}] 7441.588 50.16392 -39.33395 -32.41004 -4.419999
tp @s[scores={cutSceneTimer=590}] 7441.604 50.16623 -39.30869 -32.18004 -4.439999
tp @s[scores={cutSceneTimer=591}] 7441.621 50.16856 -39.28338 -31.95004 -4.459999
tp @s[scores={cutSceneTimer=592}] 7441.636 50.17089 -39.258 -31.72004 -4.479999
tp @s[scores={cutSceneTimer=593}] 7441.652 50.17323 -39.23256 -31.49004 -4.499999
tp @s[scores={cutSceneTimer=594}] 7441.667 50.17559 -39.20706 -31.26004 -4.519999
tp @s[scores={cutSceneTimer=595}] 7441.683 50.17795 -39.18149 -31.03004 -4.539999
tp @s[scores={cutSceneTimer=596}] 7441.699 50.18033 -39.15586 -30.80005 -4.559999
tp @s[scores={cutSceneTimer=597}] 7441.714 50.18271 -39.13018 -30.57005 -4.579998
tp @s[scores={cutSceneTimer=598}] 7441.729 50.18511 -39.10443 -30.34005 -4.599998
tp @s[scores={cutSceneTimer=599}] 7441.744 50.18752 -39.07862 -30.11005 -4.619998
tp @s[scores={cutSceneTimer=600}] 7441.759 50.18993 -39.05275 -29.88005 -4.639998
tp @s[scores={cutSceneTimer=601}] 7441.774 50.19236 -39.02682 -29.65005 -4.659998
tp @s[scores={cutSceneTimer=602}] 7441.789 50.19479 -39.00084 -29.42005 -4.679998
tp @s[scores={cutSceneTimer=603}] 7441.804 50.19724 -38.9748 -29.19005 -4.699998
tp @s[scores={cutSceneTimer=604}] 7441.818 50.1997 -38.94869 -28.96005 -4.719998
tp @s[scores={cutSceneTimer=605}] 7441.833 50.20217 -38.92253 -28.73005 -4.739998
tp @s[scores={cutSceneTimer=606}] 7441.847 50.20465 -38.89631 -28.50005 -4.759998
tp @s[scores={cutSceneTimer=607}] 7441.861 50.20714 -38.87004 -28.27005 -4.779998
tp @s[scores={cutSceneTimer=608}] 7441.875 50.20964 -38.84371 -28.04005 -4.799998
tp @s[scores={cutSceneTimer=609}] 7441.89 50.21215 -38.81733 -27.81005 -4.819998
tp @s[scores={cutSceneTimer=610}] 7441.904 50.21467 -38.79089 -27.58005 -4.839998
tp @s[scores={cutSceneTimer=611}] 7441.917 50.2172 -38.76439 -27.35005 -4.859998
tp @s[scores={cutSceneTimer=612}] 7441.931 50.21974 -38.73784 -27.12005 -4.879998
tp @s[scores={cutSceneTimer=613}] 7441.945 50.22229 -38.71124 -26.89005 -4.899998
tp @s[scores={cutSceneTimer=614}] 7441.958 50.22486 -38.68458 -26.66005 -4.919998
tp @s[scores={cutSceneTimer=615}] 7441.972 50.22743 -38.65787 -26.43005 -4.939998
tp @s[scores={cutSceneTimer=616}] 7441.985 50.23001 -38.6311 -26.20005 -4.959998
tp @s[scores={cutSceneTimer=617}] 7441.998 50.2326 -38.60429 -25.97005 -4.979998
tp @s[scores={cutSceneTimer=618}] 7442.011 50.23521 -38.57742 -25.74006 -4.999998
tp @s[scores={cutSceneTimer=619}] 7442.024 50.23782 -38.5505 -25.51006 -5.019998
tp @s[scores={cutSceneTimer=620}] 7442.037 50.24045 -38.52353 -25.28006 -5.039998
tp @s[scores={cutSceneTimer=621}] 7442.05 50.24308 -38.4965 -25.05006 -5.059998
tp @s[scores={cutSceneTimer=622}] 7442.063 50.24573 -38.46943 -24.82006 -5.079998
tp @s[scores={cutSceneTimer=623}] 7442.075 50.24839 -38.44231 -24.59006 -5.099998
tp @s[scores={cutSceneTimer=624}] 7442.087 50.25105 -38.41513 -24.36006 -5.119998
tp @s[scores={cutSceneTimer=625}] 7442.1 50.25373 -38.38791 -24.13006 -5.139998
tp @s[scores={cutSceneTimer=626}] 7442.112 50.25642 -38.36065 -23.90006 -5.159998
tp @s[scores={cutSceneTimer=627}] 7442.124 50.25912 -38.33333 -23.67006 -5.179998
tp @s[scores={cutSceneTimer=628}] 7442.136 50.26183 -38.30597 -23.44006 -5.199998
tp @s[scores={cutSceneTimer=629}] 7442.148 50.26455 -38.27855 -23.21006 -5.219998
tp @s[scores={cutSceneTimer=630}] 7442.16 50.26727 -38.25109 -22.98006 -5.239998
tp @s[scores={cutSceneTimer=631}] 7442.171 50.27001 -38.22359 -22.75006 -5.259998
tp @s[scores={cutSceneTimer=632}] 7442.183 50.27276 -38.19604 -22.52006 -5.279998
tp @s[scores={cutSceneTimer=633}] 7442.194 50.27552 -38.16845 -22.29006 -5.299998
tp @s[scores={cutSceneTimer=634}] 7442.206 50.27829 -38.1408 -22.06006 -5.319998
tp @s[scores={cutSceneTimer=635}] 7442.217 50.28107 -38.11312 -21.83006 -5.339998
tp @s[scores={cutSceneTimer=636}] 7442.228 50.28387 -38.08539 -21.60006 -5.359998
tp @s[scores={cutSceneTimer=637}] 7442.239 50.28667 -38.05762 -21.37006 -5.379998
tp @s[scores={cutSceneTimer=638}] 7442.25 50.28948 -38.02981 -21.14006 -5.399998
tp @s[scores={cutSceneTimer=639}] 7442.261 50.2923 -38.00195 -20.91006 -5.419998
tp @s[scores={cutSceneTimer=640}] 7442.271 50.29514 -37.97405 -20.68007 -5.439998
tp @s[scores={cutSceneTimer=641}] 7442.282 50.29799 -37.94611 -20.45007 -5.459998
tp @s[scores={cutSceneTimer=642}] 7442.292 50.30084 -37.91813 -20.22007 -5.479998
tp @s[scores={cutSceneTimer=643}] 7442.303 50.3037 -37.89011 -19.99007 -5.499998
tp @s[scores={cutSceneTimer=644}] 7442.313 50.30658 -37.86205 -19.76007 -5.519998
tp @s[scores={cutSceneTimer=645}] 7442.323 50.30946 -37.83394 -19.53007 -5.539998
tp @s[scores={cutSceneTimer=646}] 7442.333 50.31236 -37.8058 -19.30007 -5.559998
tp @s[scores={cutSceneTimer=647}] 7442.343 50.31527 -37.77762 -19.07007 -5.579998
tp @s[scores={cutSceneTimer=648}] 7442.353 50.31818 -37.7494 -18.84007 -5.599998
tp @s[scores={cutSceneTimer=649}] 7442.362 50.32111 -37.72115 -18.61007 -5.619998
tp @s[scores={cutSceneTimer=650}] 7442.372 50.32405 -37.69285 -18.38007 -5.639997
tp @s[scores={cutSceneTimer=651}] 7442.381 50.327 -37.66452 -18.15007 -5.659997
tp @s[scores={cutSceneTimer=652}] 7442.391 50.32996 -37.63615 -17.92007 -5.679997
tp @s[scores={cutSceneTimer=653}] 7442.4 50.33292 -37.60775 -17.69007 -5.699997
tp @s[scores={cutSceneTimer=654}] 7442.409 50.3359 -37.57931 -17.46007 -5.719997
tp @s[scores={cutSceneTimer=655}] 7442.418 50.33889 -37.55083 -17.23007 -5.739997
tp @s[scores={cutSceneTimer=656}] 7442.427 50.3419 -37.52232 -17.00007 -5.759997
tp @s[scores={cutSceneTimer=657}] 7442.436 50.34491 -37.49377 -16.77007 -5.779997
tp @s[scores={cutSceneTimer=658}] 7442.444 50.34793 -37.46519 -16.54007 -5.799997
tp @s[scores={cutSceneTimer=659}] 7442.453 50.35096 -37.43658 -16.31007 -5.819997
tp @s[scores={cutSceneTimer=660}] 7442.461 50.354 -37.40794 -16.08007 -5.839997
tp @s[scores={cutSceneTimer=661}] 7442.469 50.35705 -37.37926 -15.85007 -5.859997
tp @s[scores={cutSceneTimer=662}] 7442.478 50.36012 -37.35056 -15.62008 -5.879997
tp @s[scores={cutSceneTimer=663}] 7442.485 50.36319 -37.32182 -15.39008 -5.899997
tp @s[scores={cutSceneTimer=664}] 7442.493 50.36627 -37.29305 -15.16008 -5.919997
tp @s[scores={cutSceneTimer=665}] 7442.501 50.36937 -37.26424 -14.93008 -5.939997
tp @s[scores={cutSceneTimer=666}] 7442.509 50.37247 -37.23541 -14.70008 -5.959997
tp @s[scores={cutSceneTimer=667}] 7442.517 50.37559 -37.20655 -14.47008 -5.979997
tp @s[scores={cutSceneTimer=668}] 7442.524 50.37871 -37.17766 -14.24008 -5.999997
tp @s[scores={cutSceneTimer=669}] 7442.531 50.38185 -37.14874 -14.01008 -6.019997
tp @s[scores={cutSceneTimer=670}] 7442.539 50.38499 -37.1198 -13.78008 -6.039997
tp @s[scores={cutSceneTimer=671}] 7442.546 50.38815 -37.09082 -13.55008 -6.059997
tp @s[scores={cutSceneTimer=672}] 7442.553 50.39132 -37.06182 -13.32008 -6.079997
tp @s[scores={cutSceneTimer=673}] 7442.56 50.3945 -37.03279 -13.09008 -6.099997
tp @s[scores={cutSceneTimer=674}] 7442.566 50.39769 -37.00373 -12.86008 -6.119997
tp @s[scores={cutSceneTimer=675}] 7442.573 50.40088 -36.97465 -12.63008 -6.139997
tp @s[scores={cutSceneTimer=676}] 7442.58 50.40409 -36.94555 -12.40008 -6.159997
tp @s[scores={cutSceneTimer=677}] 7442.586 50.40731 -36.91641 -12.17008 -6.179997
tp @s[scores={cutSceneTimer=678}] 7442.592 50.41054 -36.88726 -11.94008 -6.199997
tp @s[scores={cutSceneTimer=679}] 7442.599 50.41378 -36.85808 -11.71008 -6.219997
tp @s[scores={cutSceneTimer=680}] 7442.604 50.41703 -36.82888 -11.48008 -6.239997
tp @s[scores={cutSceneTimer=681}] 7442.61 50.42029 -36.79965 -11.25008 -6.259997
tp @s[scores={cutSceneTimer=682}] 7442.616 50.42356 -36.7704 -11.02008 -6.279997
tp @s[scores={cutSceneTimer=683}] 7442.622 50.42685 -36.74113 -10.79008 -6.299997
tp @s[scores={cutSceneTimer=684}] 7442.627 50.43014 -36.71184 -10.56009 -6.319997
tp @s[scores={cutSceneTimer=685}] 7442.633 50.43344 -36.68253 -10.33009 -6.339997
tp @s[scores={cutSceneTimer=686}] 7442.638 50.43675 -36.65319 -10.10009 -6.359997
tp @s[scores={cutSceneTimer=687}] 7442.644 50.44007 -36.62384 -9.870087 -6.379997
tp @s[scores={cutSceneTimer=688}] 7442.648 50.44341 -36.59447 -9.640087 -6.399997
tp @s[scores={cutSceneTimer=689}] 7442.653 50.44675 -36.56507 -9.410088 -6.419997
tp @s[scores={cutSceneTimer=690}] 7442.658 50.45011 -36.53566 -9.180088 -6.439997
tp @s[scores={cutSceneTimer=691}] 7442.663 50.45347 -36.50623 -8.950089 -6.459997
tp @s[scores={cutSceneTimer=692}] 7442.667 50.45685 -36.47679 -8.720089 -6.479997
tp @s[scores={cutSceneTimer=693}] 7442.672 50.46024 -36.44732 -8.490089 -6.499997
tp @s[scores={cutSceneTimer=694}] 7442.676 50.46363 -36.41784 -8.26009 -6.519997
tp @s[scores={cutSceneTimer=695}] 7442.681 50.46704 -36.38835 -8.03009 -6.539997
tp @s[scores={cutSceneTimer=696}] 7442.685 50.47046 -36.35883 -7.80009 -6.559997
tp @s[scores={cutSceneTimer=697}] 7442.689 50.47388 -36.3293 -7.57009 -6.579997
tp @s[scores={cutSceneTimer=698}] 7442.693 50.47732 -36.29976 -7.34009 -6.599997
tp @s[scores={cutSceneTimer=699}] 7442.697 50.48077 -36.27021 -7.11009 -6.619997
tp @s[scores={cutSceneTimer=700}] 7442.701 50.48423 -36.24063 -6.88009 -6.639997
execute as @s[scores={cutSceneTimer=680}] as @s run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=700}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=701}] 7443.27 59.575 4.788 -126.01 18.23
tp @s[scores={cutSceneTimer=702}] 7443.27 59.53 4.796 -126.01 17.91
tp @s[scores={cutSceneTimer=703}] 7443.27 59.485 4.804 -126.01 17.59
tp @s[scores={cutSceneTimer=704}] 7443.27 59.44001 4.812 -126.01 17.27
tp @s[scores={cutSceneTimer=705}] 7443.27 59.39501 4.82 -126.01 16.95
tp @s[scores={cutSceneTimer=706}] 7443.27 59.35001 4.828 -126.01 16.63
tp @s[scores={cutSceneTimer=707}] 7443.27 59.30501 4.835999 -126.01 16.31
tp @s[scores={cutSceneTimer=708}] 7443.27 59.26001 4.843999 -126.01 15.99
tp @s[scores={cutSceneTimer=709}] 7443.27 59.21502 4.851999 -126.01 15.67
tp @s[scores={cutSceneTimer=710}] 7443.27 59.17002 4.859999 -126.01 15.35
tp @s[scores={cutSceneTimer=711}] 7443.27 59.12502 4.867999 -126.01 15.03
tp @s[scores={cutSceneTimer=712}] 7443.27 59.08002 4.875999 -126.01 14.71
tp @s[scores={cutSceneTimer=713}] 7443.27 59.03502 4.883999 -126.01 14.39
tp @s[scores={cutSceneTimer=714}] 7443.27 58.99002 4.891999 -126.01 14.07
tp @s[scores={cutSceneTimer=715}] 7443.27 58.94503 4.899999 -126.01 13.75
tp @s[scores={cutSceneTimer=716}] 7443.27 58.90003 4.907999 -126.01 13.43
tp @s[scores={cutSceneTimer=717}] 7443.27 58.85503 4.915998 -126.01 13.11
tp @s[scores={cutSceneTimer=718}] 7443.27 58.81003 4.923998 -126.01 12.79
tp @s[scores={cutSceneTimer=719}] 7443.27 58.76503 4.931998 -126.01 12.47001
tp @s[scores={cutSceneTimer=720}] 7443.27 58.72004 4.939998 -126.01 12.15001
tp @s[scores={cutSceneTimer=721}] 7443.27 58.67504 4.947998 -126.01 11.83001
tp @s[scores={cutSceneTimer=722}] 7443.27 58.63004 4.955998 -126.01 11.51001
tp @s[scores={cutSceneTimer=723}] 7443.27 58.58504 4.963998 -126.01 11.19001
tp @s[scores={cutSceneTimer=724}] 7443.27 58.54004 4.971998 -126.01 10.87001
tp @s[scores={cutSceneTimer=725}] 7443.27 58.49504 4.979998 -126.01 10.55001
tp @s[scores={cutSceneTimer=726}] 7443.27 58.45005 4.987998 -126.01 10.23001
tp @s[scores={cutSceneTimer=727}] 7443.27 58.40505 4.995997 -126.01 9.910007
tp @s[scores={cutSceneTimer=728}] 7443.27 58.36005 5.003997 -126.01 9.590008
tp @s[scores={cutSceneTimer=729}] 7443.27 58.31505 5.011997 -126.01 9.270008
tp @s[scores={cutSceneTimer=730}] 7443.27 58.27005 5.019997 -126.01 8.950008
tp @s[scores={cutSceneTimer=731}] 7443.27 58.22506 5.027997 -126.01 8.630009
tp @s[scores={cutSceneTimer=732}] 7443.27 58.18006 5.035997 -126.01 8.310009
tp @s[scores={cutSceneTimer=733}] 7443.27 58.13506 5.043997 -126.01 7.990009
tp @s[scores={cutSceneTimer=734}] 7443.27 58.09006 5.051997 -126.01 7.670009
tp @s[scores={cutSceneTimer=735}] 7443.27 58.04506 5.059997 -126.01 7.350008
tp @s[scores={cutSceneTimer=736}] 7443.27 58.00006 5.067997 -126.01 7.030008
tp @s[scores={cutSceneTimer=737}] 7443.27 57.95507 5.075996 -126.01 6.710008
tp @s[scores={cutSceneTimer=738}] 7443.27 57.91007 5.083996 -126.01 6.390008
tp @s[scores={cutSceneTimer=739}] 7443.27 57.86507 5.091996 -126.01 6.070008
tp @s[scores={cutSceneTimer=740}] 7443.27 57.82007 5.099996 -126.01 5.750008
tp @s[scores={cutSceneTimer=741}] 7443.27 57.77507 5.107996 -126.01 5.430007
tp @s[scores={cutSceneTimer=742}] 7443.27 57.73008 5.115996 -126.01 5.110007
tp @s[scores={cutSceneTimer=743}] 7443.27 57.68508 5.123996 -126.01 4.790007
tp @s[scores={cutSceneTimer=744}] 7443.27 57.64008 5.131996 -126.01 4.470007
tp @s[scores={cutSceneTimer=745}] 7443.27 57.59508 5.139996 -126.01 4.150007
tp @s[scores={cutSceneTimer=746}] 7443.27 57.55008 5.147995 -126.01 3.830007
tp @s[scores={cutSceneTimer=747}] 7443.27 57.50508 5.155995 -126.01 3.510007
tp @s[scores={cutSceneTimer=748}] 7443.27 57.46009 5.163995 -126.01 3.190007
tp @s[scores={cutSceneTimer=749}] 7443.27 57.41509 5.171995 -126.01 2.870007
tp @s[scores={cutSceneTimer=750}] 7443.27 57.37009 5.179995 -126.01 2.550007
tp @s[scores={cutSceneTimer=751}] 7443.27 57.32509 5.187995 -126.01 2.230007
tp @s[scores={cutSceneTimer=752}] 7443.27 57.28009 5.195995 -126.01 1.910007
tp @s[scores={cutSceneTimer=753}] 7443.27 57.2351 5.203995 -126.01 1.590007
tp @s[scores={cutSceneTimer=754}] 7443.27 57.1901 5.211995 -126.01 1.270007
tp @s[scores={cutSceneTimer=755}] 7443.27 57.1451 5.219995 -126.01 0.9500074
tp @s[scores={cutSceneTimer=756}] 7443.27 57.1001 5.227994 -126.01 0.6300074
tp @s[scores={cutSceneTimer=757}] 7443.27 57.0551 5.235994 -126.01 0.3100074
tp @s[scores={cutSceneTimer=758}] 7443.27 57.01011 5.243994 -126.01 -0.009992599
tp @s[scores={cutSceneTimer=759}] 7443.27 56.96511 5.251994 -126.01 -0.3299926
tp @s[scores={cutSceneTimer=760}] 7443.27 56.92011 5.259994 -126.01 -0.6499926
tp @s[scores={cutSceneTimer=761}] 7443.27 56.87511 5.267994 -126.01 -0.9699926
tp @s[scores={cutSceneTimer=762}] 7443.27 56.83011 5.275994 -126.01 -1.289993
tp @s[scores={cutSceneTimer=763}] 7443.27 56.78511 5.283994 -126.01 -1.609993
tp @s[scores={cutSceneTimer=764}] 7443.27 56.74012 5.291994 -126.01 -1.929992
tp @s[scores={cutSceneTimer=765}] 7443.27 56.69512 5.299994 -126.01 -2.249992
tp @s[scores={cutSceneTimer=766}] 7443.27 56.65012 5.307993 -126.01 -2.569992
tp @s[scores={cutSceneTimer=767}] 7443.27 56.60512 5.315993 -126.01 -2.889992
tp @s[scores={cutSceneTimer=768}] 7443.27 56.56012 5.323993 -126.01 -3.209992
tp @s[scores={cutSceneTimer=769}] 7443.27 56.51513 5.331993 -126.01 -3.529992
tp @s[scores={cutSceneTimer=770}] 7443.27 56.47013 5.339993 -126.01 -3.849992
tp @s[scores={cutSceneTimer=771}] 7443.27 56.42513 5.347993 -126.01 -4.169992
tp @s[scores={cutSceneTimer=772}] 7443.27 56.38013 5.355993 -126.01 -4.489992
tp @s[scores={cutSceneTimer=773}] 7443.27 56.33513 5.363993 -126.01 -4.809992
tp @s[scores={cutSceneTimer=774}] 7443.27 56.29013 5.371993 -126.01 -5.129992
tp @s[scores={cutSceneTimer=775}] 7443.27 56.24514 5.379992 -126.01 -5.449993
tp @s[scores={cutSceneTimer=776}] 7443.27 56.20014 5.387992 -126.01 -5.769993
tp @s[scores={cutSceneTimer=777}] 7443.27 56.15514 5.395992 -126.01 -6.089993
tp @s[scores={cutSceneTimer=778}] 7443.27 56.11014 5.403992 -126.01 -6.409993
tp @s[scores={cutSceneTimer=779}] 7443.27 56.06514 5.411992 -126.01 -6.729993
tp @s[scores={cutSceneTimer=780}] 7443.27 56.02015 5.419992 -126.01 -7.049994
tp @s[scores={cutSceneTimer=781}] 7443.27 55.97515 5.427992 -126.01 -7.369994
tp @s[scores={cutSceneTimer=782}] 7443.27 55.93015 5.435992 -126.01 -7.689994
tp @s[scores={cutSceneTimer=783}] 7443.27 55.88515 5.443992 -126.01 -8.009994
tp @s[scores={cutSceneTimer=784}] 7443.27 55.84015 5.451992 -126.01 -8.329993
tp @s[scores={cutSceneTimer=785}] 7443.27 55.79515 5.459991 -126.01 -8.649993
tp @s[scores={cutSceneTimer=786}] 7443.27 55.75016 5.467991 -126.01 -8.969993
tp @s[scores={cutSceneTimer=787}] 7443.27 55.70516 5.475991 -126.01 -9.289992
tp @s[scores={cutSceneTimer=788}] 7443.27 55.66016 5.483991 -126.01 -9.609992
tp @s[scores={cutSceneTimer=789}] 7443.27 55.61516 5.491991 -126.01 -9.929992
tp @s[scores={cutSceneTimer=790}] 7443.27 55.57016 5.499991 -126.01 -10.24999
tp @s[scores={cutSceneTimer=791}] 7443.27 55.52517 5.507991 -126.01 -10.56999
tp @s[scores={cutSceneTimer=792}] 7443.27 55.48017 5.515991 -126.01 -10.88999
tp @s[scores={cutSceneTimer=793}] 7443.27 55.43517 5.523991 -126.01 -11.20999
tp @s[scores={cutSceneTimer=794}] 7443.27 55.39017 5.531991 -126.01 -11.52999
tp @s[scores={cutSceneTimer=795}] 7443.27 55.34517 5.53999 -126.01 -11.84999
tp @s[scores={cutSceneTimer=796}] 7443.27 55.30017 5.54799 -126.01 -12.16999
tp @s[scores={cutSceneTimer=797}] 7443.27 55.25518 5.55599 -126.01 -12.48999
tp @s[scores={cutSceneTimer=798}] 7443.27 55.21018 5.56399 -126.01 -12.80999
tp @s[scores={cutSceneTimer=799}] 7443.27 55.16518 5.57199 -126.01 -13.12999
tp @s[scores={cutSceneTimer=800}] 7443.27 55.12018 5.57999 -126.01 -13.44999
tp @s[scores={cutSceneTimer=801}] 7443.27 55.07518 5.58799 -126.01 -13.76999
tp @s[scores={cutSceneTimer=802}] 7443.27 55.03019 5.59599 -126.01 -14.08999
tp @s[scores={cutSceneTimer=803}] 7443.27 54.98519 5.60399 -126.01 -14.40999
tp @s[scores={cutSceneTimer=804}] 7443.27 54.94019 5.611989 -126.01 -14.72999
tp @s[scores={cutSceneTimer=805}] 7443.27 54.89519 5.619989 -126.01 -15.04999
tp @s[scores={cutSceneTimer=806}] 7443.27 54.85019 5.627989 -126.01 -15.36999
tp @s[scores={cutSceneTimer=807}] 7443.27 54.80519 5.635989 -126.01 -15.68999
tp @s[scores={cutSceneTimer=808}] 7443.27 54.7602 5.643989 -126.01 -16.00999
tp @s[scores={cutSceneTimer=809}] 7443.27 54.7152 5.651989 -126.01 -16.32999
tp @s[scores={cutSceneTimer=810}] 7443.27 54.6702 5.659989 -126.01 -16.64999
tp @s[scores={cutSceneTimer=811}] 7443.27 54.6252 5.667989 -126.01 -16.96999
tp @s[scores={cutSceneTimer=812}] 7443.27 54.5802 5.675989 -126.01 -17.28999
tp @s[scores={cutSceneTimer=813}] 7443.27 54.53521 5.683989 -126.01 -17.60999
tp @s[scores={cutSceneTimer=814}] 7443.27 54.49021 5.691988 -126.01 -17.92999
tp @s[scores={cutSceneTimer=815}] 7443.27 54.44521 5.699988 -126.01 -18.24998
tp @s[scores={cutSceneTimer=816}] 7443.27 54.40021 5.707988 -126.01 -18.56998
tp @s[scores={cutSceneTimer=817}] 7443.27 54.35521 5.715988 -126.01 -18.88998
tp @s[scores={cutSceneTimer=818}] 7443.27 54.31021 5.723988 -126.01 -19.20998
tp @s[scores={cutSceneTimer=819}] 7443.27 54.26522 5.731988 -126.01 -19.52998
tp @s[scores={cutSceneTimer=820}] 7443.27 54.22022 5.739988 -126.01 -19.84998
tp @s[scores={cutSceneTimer=821}] 7443.27 54.17522 5.747988 -126.01 -20.16998
tp @s[scores={cutSceneTimer=822}] 7443.27 54.13022 5.755988 -126.01 -20.48998
tp @s[scores={cutSceneTimer=823}] 7443.27 54.08522 5.763988 -126.01 -20.80998
tp @s[scores={cutSceneTimer=824}] 7443.27 54.04023 5.771987 -126.01 -21.12998
tp @s[scores={cutSceneTimer=825}] 7443.27 53.99523 5.779987 -126.01 -21.44998
tp @s[scores={cutSceneTimer=826}] 7443.27 53.95023 5.787987 -126.01 -21.76998
tp @s[scores={cutSceneTimer=827}] 7443.27 53.90523 5.795987 -126.01 -22.08998
tp @s[scores={cutSceneTimer=828}] 7443.27 53.86023 5.803987 -126.01 -22.40998
tp @s[scores={cutSceneTimer=829}] 7443.27 53.81524 5.811987 -126.01 -22.72998
tp @s[scores={cutSceneTimer=830}] 7443.27 53.77024 5.819987 -126.01 -23.04998
tp @s[scores={cutSceneTimer=831}] 7443.27 53.72524 5.827987 -126.01 -23.36998
tp @s[scores={cutSceneTimer=832}] 7443.27 53.68024 5.835987 -126.01 -23.68998
tp @s[scores={cutSceneTimer=833}] 7443.27 53.63524 5.843987 -126.01 -24.00998
tp @s[scores={cutSceneTimer=834}] 7443.27 53.59024 5.851986 -126.01 -24.32998
tp @s[scores={cutSceneTimer=835}] 7443.27 53.54525 5.859986 -126.01 -24.64998
tp @s[scores={cutSceneTimer=836}] 7443.27 53.50025 5.867986 -126.01 -24.96998
tp @s[scores={cutSceneTimer=837}] 7443.27 53.45525 5.875986 -126.01 -25.28998
tp @s[scores={cutSceneTimer=838}] 7443.27 53.41025 5.883986 -126.01 -25.60998
tp @s[scores={cutSceneTimer=839}] 7443.27 53.36525 5.891986 -126.01 -25.92998
tp @s[scores={cutSceneTimer=840}] 7443.27 53.32026 5.899986 -126.01 -26.24998
tp @s[scores={cutSceneTimer=841}] 7443.27 53.27526 5.907986 -126.01 -26.56998
tp @s[scores={cutSceneTimer=842}] 7443.27 53.23026 5.915986 -126.01 -26.88998
tp @s[scores={cutSceneTimer=843}] 7443.27 53.18526 5.923985 -126.01 -27.20998
tp @s[scores={cutSceneTimer=844}] 7443.27 53.14026 5.931985 -126.01 -27.52998
tp @s[scores={cutSceneTimer=845}] 7443.27 53.09526 5.939985 -126.01 -27.84998
tp @s[scores={cutSceneTimer=846}] 7443.27 53.05027 5.947985 -126.01 -28.16998
tp @s[scores={cutSceneTimer=847}] 7443.27 53.00527 5.955985 -126.01 -28.48997
tp @s[scores={cutSceneTimer=848}] 7443.27 52.96027 5.963985 -126.01 -28.80997
tp @s[scores={cutSceneTimer=849}] 7443.27 52.91527 5.971985 -126.01 -29.12997
tp @s[scores={cutSceneTimer=850}] 7443.27 52.87027 5.979985 -126.01 -29.44997
tp @s[scores={cutSceneTimer=851}] 7443.27 52.82528 5.987985 -126.01 -29.76997
tp @s[scores={cutSceneTimer=852}] 7443.27 52.78028 5.995985 -126.01 -30.08997
tp @s[scores={cutSceneTimer=853}] 7443.27 52.73528 6.003984 -126.01 -30.40997
tp @s[scores={cutSceneTimer=854}] 7443.27 52.69028 6.011984 -126.01 -30.72997
tp @s[scores={cutSceneTimer=855}] 7443.27 52.64528 6.019984 -126.01 -31.04997
tp @s[scores={cutSceneTimer=856}] 7443.27 52.60028 6.027984 -126.01 -31.36997
tp @s[scores={cutSceneTimer=857}] 7443.27 52.55529 6.035984 -126.01 -31.68997
tp @s[scores={cutSceneTimer=858}] 7443.27 52.51029 6.043984 -126.01 -32.00997
tp @s[scores={cutSceneTimer=859}] 7443.27 52.46529 6.051984 -126.01 -32.32997
tp @s[scores={cutSceneTimer=860}] 7443.27 52.42029 6.059984 -126.01 -32.64997
tp @s[scores={cutSceneTimer=861}] 7443.27 52.37529 6.067984 -126.01 -32.96997
tp @s[scores={cutSceneTimer=862}] 7443.27 52.3303 6.075984 -126.01 -33.28997
tp @s[scores={cutSceneTimer=863}] 7443.27 52.2853 6.083983 -126.01 -33.60997
tp @s[scores={cutSceneTimer=864}] 7443.27 52.2403 6.091983 -126.01 -33.92997
tp @s[scores={cutSceneTimer=865}] 7443.27 52.1953 6.099983 -126.01 -34.24997
tp @s[scores={cutSceneTimer=866}] 7443.27 52.1503 6.107983 -126.01 -34.56997
tp @s[scores={cutSceneTimer=867}] 7443.27 52.1053 6.115983 -126.01 -34.88997
tp @s[scores={cutSceneTimer=868}] 7443.27 52.06031 6.123983 -126.01 -35.20997
tp @s[scores={cutSceneTimer=869}] 7443.27 52.01531 6.131983 -126.01 -35.52997
tp @s[scores={cutSceneTimer=870}] 7443.27 51.97031 6.139983 -126.01 -35.84997
tp @s[scores={cutSceneTimer=871}] 7443.27 51.92531 6.147983 -126.01 -36.16997
tp @s[scores={cutSceneTimer=872}] 7443.27 51.88031 6.155982 -126.01 -36.48997
tp @s[scores={cutSceneTimer=873}] 7443.27 51.83532 6.163982 -126.01 -36.80997
tp @s[scores={cutSceneTimer=874}] 7443.27 51.79032 6.171982 -126.01 -37.12997
tp @s[scores={cutSceneTimer=875}] 7443.27 51.74532 6.179982 -126.01 -37.44997
tp @s[scores={cutSceneTimer=876}] 7443.27 51.70032 6.187982 -126.01 -37.76997
tp @s[scores={cutSceneTimer=877}] 7443.27 51.65532 6.195982 -126.01 -38.08997
tp @s[scores={cutSceneTimer=878}] 7443.27 51.61032 6.203982 -126.01 -38.40997
tp @s[scores={cutSceneTimer=879}] 7443.27 51.56533 6.211982 -126.01 -38.72997
tp @s[scores={cutSceneTimer=880}] 7443.27 51.52033 6.219982 -126.01 -39.04996
tp @s[scores={cutSceneTimer=881}] 7443.27 51.47533 6.227982 -126.01 -39.36996
tp @s[scores={cutSceneTimer=882}] 7443.27 51.43033 6.235981 -126.01 -39.68996
tp @s[scores={cutSceneTimer=883}] 7443.27 51.38533 6.243981 -126.01 -40.00996
tp @s[scores={cutSceneTimer=884}] 7443.27 51.34034 6.251981 -126.01 -40.32996
tp @s[scores={cutSceneTimer=885}] 7443.27 51.29534 6.259981 -126.01 -40.64996
tp @s[scores={cutSceneTimer=886}] 7443.27 51.25034 6.267981 -126.01 -40.96996
tp @s[scores={cutSceneTimer=887}] 7443.27 51.20534 6.275981 -126.01 -41.28996
tp @s[scores={cutSceneTimer=888}] 7443.27 51.16034 6.283981 -126.01 -41.60996
tp @s[scores={cutSceneTimer=889}] 7443.27 51.11535 6.291981 -126.01 -41.92996
tp @s[scores={cutSceneTimer=890}] 7443.27 51.07035 6.299981 -126.01 -42.24996
tp @s[scores={cutSceneTimer=891}] 7443.27 51.02535 6.307981 -126.01 -42.56996
tp @s[scores={cutSceneTimer=892}] 7443.27 50.98035 6.31598 -126.01 -42.88996
tp @s[scores={cutSceneTimer=893}] 7443.27 50.93535 6.32398 -126.01 -43.20996
tp @s[scores={cutSceneTimer=894}] 7443.27 50.89035 6.33198 -126.01 -43.52996
tp @s[scores={cutSceneTimer=895}] 7443.27 50.84536 6.33998 -126.01 -43.84996
tp @s[scores={cutSceneTimer=896}] 7443.27 50.80036 6.34798 -126.01 -44.16996
tp @s[scores={cutSceneTimer=897}] 7443.27 50.75536 6.35598 -126.01 -44.48996
tp @s[scores={cutSceneTimer=898}] 7443.27 50.71036 6.36398 -126.01 -44.80996
tp @s[scores={cutSceneTimer=899}] 7443.27 50.66536 6.37198 -126.01 -45.12996
tp @s[scores={cutSceneTimer=900}] 7443.27 50.62037 6.37998 -126.01 -45.44996

execute as @s[scores={cutSceneTimer=880}] as @s run function hp:cutscenes/fade_in

# ¤Lupin:¤ The exit is at the top of the main room. See if you can find a way to reach it.
execute as @s[scores={cutSceneTimer=700},tag=cutsceneLeader] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=700..900}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"                    "}]

execute as @s[scores={cutSceneTimer=900}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=900}] 7471.457 59.49937 2.150302 -189.81 1.79
tp @s[scores={cutSceneTimer=901}] 7471.453 59.49875 2.130604 -189.81 1.79
tp @s[scores={cutSceneTimer=902}] 7471.45 59.49812 2.110906 -189.81 1.79
tp @s[scores={cutSceneTimer=903}] 7471.446 59.4975 2.091208 -189.81 1.79
tp @s[scores={cutSceneTimer=904}] 7471.443 59.49687 2.071511 -189.81 1.79
tp @s[scores={cutSceneTimer=905}] 7471.439 59.49625 2.051813 -189.81 1.79
tp @s[scores={cutSceneTimer=906}] 7471.436 59.49562 2.032115 -189.81 1.79
tp @s[scores={cutSceneTimer=907}] 7471.433 59.495 2.012417 -189.81 1.79
tp @s[scores={cutSceneTimer=908}] 7471.429 59.49437 1.992719 -189.81 1.79
tp @s[scores={cutSceneTimer=909}] 7471.426 59.49374 1.973021 -189.81 1.79
tp @s[scores={cutSceneTimer=910}] 7471.422 59.49312 1.953323 -189.81 1.79
tp @s[scores={cutSceneTimer=911}] 7471.419 59.49249 1.933625 -189.81 1.79
tp @s[scores={cutSceneTimer=912}] 7471.416 59.49187 1.913927 -189.81 1.79
tp @s[scores={cutSceneTimer=913}] 7471.412 59.49124 1.894229 -189.81 1.79
tp @s[scores={cutSceneTimer=914}] 7471.409 59.49062 1.874532 -189.81 1.79
tp @s[scores={cutSceneTimer=915}] 7471.405 59.48999 1.854834 -189.81 1.79
tp @s[scores={cutSceneTimer=916}] 7471.402 59.48936 1.835136 -189.81 1.79
tp @s[scores={cutSceneTimer=917}] 7471.398 59.48874 1.815438 -189.81 1.79
tp @s[scores={cutSceneTimer=918}] 7471.395 59.48811 1.79574 -189.81 1.79
tp @s[scores={cutSceneTimer=919}] 7471.392 59.48749 1.776042 -189.81 1.79
tp @s[scores={cutSceneTimer=920}] 7471.388 59.48686 1.756344 -189.81 1.79
tp @s[scores={cutSceneTimer=921}] 7471.385 59.48624 1.736646 -189.81 1.79
tp @s[scores={cutSceneTimer=922}] 7471.381 59.48561 1.716948 -189.81 1.79
tp @s[scores={cutSceneTimer=923}] 7471.378 59.48499 1.69725 -189.81 1.79
tp @s[scores={cutSceneTimer=924}] 7471.375 59.48436 1.677552 -189.81 1.79
tp @s[scores={cutSceneTimer=925}] 7471.371 59.48373 1.657855 -189.81 1.79
tp @s[scores={cutSceneTimer=926}] 7471.368 59.48311 1.638157 -189.81 1.79
tp @s[scores={cutSceneTimer=927}] 7471.364 59.48248 1.618459 -189.81 1.79
tp @s[scores={cutSceneTimer=928}] 7471.361 59.48186 1.598761 -189.81 1.79
tp @s[scores={cutSceneTimer=929}] 7471.357 59.48123 1.579063 -189.81 1.79
tp @s[scores={cutSceneTimer=930}] 7471.354 59.48061 1.559365 -189.81 1.79
tp @s[scores={cutSceneTimer=931}] 7471.351 59.47998 1.539667 -189.81 1.79
tp @s[scores={cutSceneTimer=932}] 7471.347 59.47935 1.519969 -189.81 1.79
tp @s[scores={cutSceneTimer=933}] 7471.344 59.47873 1.500271 -189.81 1.79
tp @s[scores={cutSceneTimer=934}] 7471.34 59.4781 1.480573 -189.81 1.79
tp @s[scores={cutSceneTimer=935}] 7471.337 59.47748 1.460876 -189.81 1.79
tp @s[scores={cutSceneTimer=936}] 7471.333 59.47685 1.441178 -189.81 1.79
tp @s[scores={cutSceneTimer=937}] 7471.33 59.47623 1.42148 -189.81 1.79
tp @s[scores={cutSceneTimer=938}] 7471.327 59.4756 1.401782 -189.81 1.79
tp @s[scores={cutSceneTimer=939}] 7471.323 59.47498 1.382084 -189.81 1.79
tp @s[scores={cutSceneTimer=940}] 7471.32 59.47435 1.362386 -189.81 1.79
tp @s[scores={cutSceneTimer=941}] 7471.316 59.47372 1.342688 -189.81 1.79
tp @s[scores={cutSceneTimer=942}] 7471.313 59.4731 1.32299 -189.81 1.79
tp @s[scores={cutSceneTimer=943}] 7471.31 59.47247 1.303292 -189.81 1.79
tp @s[scores={cutSceneTimer=944}] 7471.306 59.47185 1.283594 -189.81 1.79
tp @s[scores={cutSceneTimer=945}] 7471.303 59.47122 1.263896 -189.81 1.79
tp @s[scores={cutSceneTimer=946}] 7471.299 59.4706 1.244199 -189.81 1.79
tp @s[scores={cutSceneTimer=947}] 7471.296 59.46997 1.224501 -189.81 1.79
tp @s[scores={cutSceneTimer=948}] 7471.292 59.46935 1.204803 -189.81 1.79
tp @s[scores={cutSceneTimer=949}] 7471.289 59.46872 1.185105 -189.81 1.79
tp @s[scores={cutSceneTimer=950}] 7471.286 59.46809 1.165407 -189.81 1.79
tp @s[scores={cutSceneTimer=951}] 7471.282 59.46747 1.145709 -189.81 1.79
tp @s[scores={cutSceneTimer=952}] 7471.279 59.46684 1.126011 -189.81 1.79
tp @s[scores={cutSceneTimer=953}] 7471.275 59.46622 1.106313 -189.81 1.79
tp @s[scores={cutSceneTimer=954}] 7471.272 59.46559 1.086615 -189.81 1.79
tp @s[scores={cutSceneTimer=955}] 7471.269 59.46497 1.066917 -189.81 1.79
tp @s[scores={cutSceneTimer=956}] 7471.265 59.46434 1.04722 -189.81 1.79
tp @s[scores={cutSceneTimer=957}] 7471.262 59.46371 1.027522 -189.81 1.79
tp @s[scores={cutSceneTimer=958}] 7471.258 59.46309 1.007824 -189.81 1.79
tp @s[scores={cutSceneTimer=959}] 7471.255 59.46246 0.9881257 -189.81 1.79
tp @s[scores={cutSceneTimer=960}] 7471.251 59.46184 0.9684278 -189.81 1.79
tp @s[scores={cutSceneTimer=961}] 7471.248 59.46121 0.9487298 -189.81 1.79
tp @s[scores={cutSceneTimer=962}] 7471.245 59.46059 0.9290318 -189.81 1.79
tp @s[scores={cutSceneTimer=963}] 7471.241 59.45996 0.9093339 -189.81 1.79
tp @s[scores={cutSceneTimer=964}] 7471.238 59.45934 0.8896359 -189.81 1.79
tp @s[scores={cutSceneTimer=965}] 7471.234 59.45871 0.869938 -189.81 1.79
tp @s[scores={cutSceneTimer=966}] 7471.231 59.45808 0.85024 -189.81 1.79
tp @s[scores={cutSceneTimer=967}] 7471.228 59.45746 0.830542 -189.81 1.79
tp @s[scores={cutSceneTimer=968}] 7471.224 59.45683 0.8108441 -189.81 1.79
tp @s[scores={cutSceneTimer=969}] 7471.221 59.45621 0.7911461 -189.81 1.79
tp @s[scores={cutSceneTimer=970}] 7471.217 59.45558 0.7714481 -189.81 1.79
tp @s[scores={cutSceneTimer=971}] 7471.214 59.45496 0.7517502 -189.81 1.79
tp @s[scores={cutSceneTimer=972}] 7471.21 59.45433 0.7320522 -189.81 1.79
tp @s[scores={cutSceneTimer=973}] 7471.207 59.4537 0.7123542 -189.81 1.79
tp @s[scores={cutSceneTimer=974}] 7471.204 59.45308 0.6926563 -189.81 1.79
tp @s[scores={cutSceneTimer=975}] 7471.2 59.45245 0.6729583 -189.81 1.79
tp @s[scores={cutSceneTimer=976}] 7471.197 59.45183 0.6532604 -189.81 1.79
tp @s[scores={cutSceneTimer=977}] 7471.193 59.4512 0.6335624 -189.81 1.79
tp @s[scores={cutSceneTimer=978}] 7471.19 59.45058 0.6138644 -189.81 1.79
tp @s[scores={cutSceneTimer=979}] 7471.187 59.44995 0.5941665 -189.81 1.79
tp @s[scores={cutSceneTimer=980}] 7471.183 59.44933 0.5744685 -189.81 1.79
tp @s[scores={cutSceneTimer=981}] 7471.18 59.4487 0.5547705 -189.81 1.79
tp @s[scores={cutSceneTimer=982}] 7471.176 59.44807 0.5350726 -189.81 1.79
tp @s[scores={cutSceneTimer=983}] 7471.173 59.44745 0.5153746 -189.81 1.79
tp @s[scores={cutSceneTimer=984}] 7471.169 59.44682 0.4956767 -189.81 1.79
tp @s[scores={cutSceneTimer=985}] 7471.166 59.4462 0.4759787 -189.81 1.79
tp @s[scores={cutSceneTimer=986}] 7471.163 59.44557 0.4562808 -189.81 1.79
tp @s[scores={cutSceneTimer=987}] 7471.159 59.44495 0.4365829 -189.81 1.79
tp @s[scores={cutSceneTimer=988}] 7471.156 59.44432 0.4168849 -189.81 1.79
tp @s[scores={cutSceneTimer=989}] 7471.152 59.4437 0.397187 -189.81 1.79
tp @s[scores={cutSceneTimer=990}] 7471.149 59.44307 0.3774891 -189.81 1.79
tp @s[scores={cutSceneTimer=991}] 7471.146 59.44244 0.3577911 -189.81 1.79
tp @s[scores={cutSceneTimer=992}] 7471.142 59.44182 0.3380932 -189.81 1.79
tp @s[scores={cutSceneTimer=993}] 7471.139 59.44119 0.3183953 -189.81 1.79
tp @s[scores={cutSceneTimer=994}] 7471.135 59.44057 0.2986973 -189.81 1.79
tp @s[scores={cutSceneTimer=995}] 7471.132 59.43994 0.2789994 -189.81 1.79
tp @s[scores={cutSceneTimer=996}] 7471.128 59.43932 0.2593015 -189.81 1.79
tp @s[scores={cutSceneTimer=997}] 7471.125 59.43869 0.2396035 -189.81 1.79
tp @s[scores={cutSceneTimer=998}] 7471.122 59.43806 0.2199056 -189.81 1.79
tp @s[scores={cutSceneTimer=999}] 7471.118 59.43744 0.2002077 -189.81 1.79
tp @s[scores={cutSceneTimer=1000}] 7471.115 59.43681 0.1805097 -189.81 1.79
tp @s[scores={cutSceneTimer=1001}] 7471.111 59.43619 0.1608118 -189.81 1.79
tp @s[scores={cutSceneTimer=1002}] 7471.108 59.43556 0.1411138 -189.81 1.79
tp @s[scores={cutSceneTimer=1003}] 7471.104 59.43494 0.1214159 -189.81 1.79
tp @s[scores={cutSceneTimer=1004}] 7471.101 59.43431 0.101718 -189.81 1.79
tp @s[scores={cutSceneTimer=1005}] 7471.098 59.43369 0.08202002 -189.81 1.79
tp @s[scores={cutSceneTimer=1006}] 7471.094 59.43306 0.06232208 -189.81 1.79
tp @s[scores={cutSceneTimer=1007}] 7471.091 59.43243 0.04262414 -189.81 1.79
tp @s[scores={cutSceneTimer=1008}] 7471.087 59.43181 0.0229262 -189.81 1.79
tp @s[scores={cutSceneTimer=1009}] 7471.084 59.43118 0.003228255 -189.81 1.79
tp @s[scores={cutSceneTimer=1010}] 7471.081 59.43056 -0.01646969 -189.81 1.79
tp @s[scores={cutSceneTimer=1011}] 7471.077 59.42993 -0.03616763 -189.81 1.79
tp @s[scores={cutSceneTimer=1012}] 7471.074 59.42931 -0.05586557 -189.81 1.79
tp @s[scores={cutSceneTimer=1013}] 7471.07 59.42868 -0.07556351 -189.81 1.79
tp @s[scores={cutSceneTimer=1014}] 7471.067 59.42805 -0.09526145 -189.81 1.79
tp @s[scores={cutSceneTimer=1015}] 7471.063 59.42743 -0.1149594 -189.81 1.79
tp @s[scores={cutSceneTimer=1016}] 7471.06 59.4268 -0.1346573 -189.81 1.79
tp @s[scores={cutSceneTimer=1017}] 7471.057 59.42618 -0.1543553 -189.81 1.79
tp @s[scores={cutSceneTimer=1018}] 7471.053 59.42555 -0.1740532 -189.81 1.79
tp @s[scores={cutSceneTimer=1019}] 7471.05 59.42493 -0.1937512 -189.81 1.79
tp @s[scores={cutSceneTimer=1020}] 7471.046 59.4243 -0.2134491 -189.81 1.79
tp @s[scores={cutSceneTimer=1021}] 7471.043 59.42368 -0.233147 -189.81 1.79
tp @s[scores={cutSceneTimer=1022}] 7471.04 59.42305 -0.252845 -189.81 1.79
tp @s[scores={cutSceneTimer=1023}] 7471.036 59.42242 -0.2725429 -189.81 1.79
tp @s[scores={cutSceneTimer=1024}] 7471.033 59.4218 -0.2922408 -189.81 1.79
tp @s[scores={cutSceneTimer=1025}] 7471.029 59.42117 -0.3119388 -189.81 1.79
tp @s[scores={cutSceneTimer=1026}] 7471.026 59.42055 -0.3316367 -189.81 1.79
tp @s[scores={cutSceneTimer=1027}] 7471.022 59.41992 -0.3513346 -189.81 1.79
tp @s[scores={cutSceneTimer=1028}] 7471.019 59.4193 -0.3710326 -189.81 1.79
tp @s[scores={cutSceneTimer=1029}] 7471.016 59.41867 -0.3907305 -189.81 1.79
tp @s[scores={cutSceneTimer=1030}] 7471.012 59.41805 -0.4104284 -189.81 1.79
tp @s[scores={cutSceneTimer=1031}] 7471.009 59.41742 -0.4301264 -189.81 1.79
tp @s[scores={cutSceneTimer=1032}] 7471.005 59.41679 -0.4498243 -189.81 1.79
tp @s[scores={cutSceneTimer=1033}] 7471.002 59.41617 -0.4695222 -189.81 1.79
tp @s[scores={cutSceneTimer=1034}] 7470.999 59.41554 -0.4892202 -189.81 1.79
tp @s[scores={cutSceneTimer=1035}] 7470.995 59.41492 -0.5089181 -189.81 1.79
tp @s[scores={cutSceneTimer=1036}] 7470.992 59.41429 -0.5286161 -189.81 1.79
tp @s[scores={cutSceneTimer=1037}] 7470.988 59.41367 -0.548314 -189.81 1.79
tp @s[scores={cutSceneTimer=1038}] 7470.985 59.41304 -0.568012 -189.81 1.79
tp @s[scores={cutSceneTimer=1039}] 7470.981 59.41241 -0.58771 -189.81 1.79
tp @s[scores={cutSceneTimer=1040}] 7470.978 59.41179 -0.6074079 -189.81 1.79
tp @s[scores={cutSceneTimer=1041}] 7470.975 59.41116 -0.6271059 -189.81 1.79
tp @s[scores={cutSceneTimer=1042}] 7470.971 59.41054 -0.6468039 -189.81 1.79
tp @s[scores={cutSceneTimer=1043}] 7470.968 59.40991 -0.6665018 -189.81 1.79
tp @s[scores={cutSceneTimer=1044}] 7470.964 59.40929 -0.6861998 -189.81 1.79
tp @s[scores={cutSceneTimer=1045}] 7470.961 59.40866 -0.7058977 -189.81 1.79
tp @s[scores={cutSceneTimer=1046}] 7470.958 59.40804 -0.7255957 -189.81 1.79
tp @s[scores={cutSceneTimer=1047}] 7470.954 59.40741 -0.7452937 -189.81 1.79
tp @s[scores={cutSceneTimer=1048}] 7470.951 59.40678 -0.7649916 -189.81 1.79
tp @s[scores={cutSceneTimer=1049}] 7470.947 59.40616 -0.7846896 -189.81 1.79
tp @s[scores={cutSceneTimer=1050}] 7470.944 59.40553 -0.8043876 -189.81 1.79
tp @s[scores={cutSceneTimer=1051}] 7470.94 59.40491 -0.8240855 -189.81 1.79
tp @s[scores={cutSceneTimer=1052}] 7470.937 59.40428 -0.8437835 -189.81 1.79
tp @s[scores={cutSceneTimer=1053}] 7470.934 59.40366 -0.8634815 -189.81 1.79
tp @s[scores={cutSceneTimer=1054}] 7470.93 59.40303 -0.8831794 -189.81 1.79
tp @s[scores={cutSceneTimer=1055}] 7470.927 59.4024 -0.9028774 -189.81 1.79
tp @s[scores={cutSceneTimer=1056}] 7470.923 59.40178 -0.9225754 -189.81 1.79
tp @s[scores={cutSceneTimer=1057}] 7470.92 59.40115 -0.9422733 -189.81 1.79
tp @s[scores={cutSceneTimer=1058}] 7470.917 59.40053 -0.9619713 -189.81 1.79
tp @s[scores={cutSceneTimer=1059}] 7470.913 59.3999 -0.9816692 -189.81 1.79
tp @s[scores={cutSceneTimer=1060}] 7470.91 59.39928 -1.001367 -189.81 1.79
tp @s[scores={cutSceneTimer=1061}] 7470.906 59.39865 -1.021065 -189.81 1.79
tp @s[scores={cutSceneTimer=1062}] 7470.903 59.39803 -1.040763 -189.81 1.79
tp @s[scores={cutSceneTimer=1063}] 7470.899 59.3974 -1.060461 -189.81 1.79
tp @s[scores={cutSceneTimer=1064}] 7470.896 59.39677 -1.080159 -189.81 1.79
tp @s[scores={cutSceneTimer=1065}] 7470.893 59.39615 -1.099857 -189.81 1.79
tp @s[scores={cutSceneTimer=1066}] 7470.889 59.39552 -1.119555 -189.81 1.79
tp @s[scores={cutSceneTimer=1067}] 7470.886 59.3949 -1.139253 -189.81 1.79
tp @s[scores={cutSceneTimer=1068}] 7470.882 59.39427 -1.15895 -189.81 1.79
tp @s[scores={cutSceneTimer=1069}] 7470.879 59.39365 -1.178648 -189.81 1.79
tp @s[scores={cutSceneTimer=1070}] 7470.875 59.39302 -1.198346 -189.81 1.79
tp @s[scores={cutSceneTimer=1071}] 7470.872 59.3924 -1.218044 -189.81 1.79
tp @s[scores={cutSceneTimer=1072}] 7470.869 59.39177 -1.237742 -189.81 1.79

# ¤Lupin:¤ Oh, and I would hurry if I were you. The smell isn’t exactly pleasant.
execute as @s[scores={cutSceneTimer=900},tag=cutsceneLeader] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=900..1050}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"              "}]

# Clear subtitles instantly rather than a slow fade I can't control
execute as @s[scores={cutSceneTimer=1050..}] run title @s actionbar ""

execute as @s[scores={cutSceneTimer=1051}] as @s run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=1072}] as @s run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=1072}] as @s run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=1072}] as @s run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=1072}] as @s run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=1073,playerID=1}] run tp @s 7428.20 50.00 -45.66 280.12 0.76
execute as @s[scores={cutSceneTimer=1073,playerID=2}] run tp @s 7428.04 50.00 -43.52 268.01 0.05
execute as @s[scores={cutSceneTimer=1073,playerID=3}] run tp @s 7428.33 50.00 -41.17 257.43 1.95
execute as @s[scores={cutSceneTimer=1073,playerID=4}] run tp @s 7429.66 50.00 -39.31 248.30 2.22
execute as @s[scores={cutSceneTimer=1093}] run tag @s add dontExitCutSceneSilent
execute as @s[scores={cutSceneTimer=1093}] run scoreboard players set playerInBombardaSpellChallenge global 1
execute as @s[scores={cutSceneTimer=1093}] run function hp:quests/timer/start_pensive_timer
execute as @s[scores={cutSceneTimer=1093}] as @s run function hp:cutscenes/exit_cutscene



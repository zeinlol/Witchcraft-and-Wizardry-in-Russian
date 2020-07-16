execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=22}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=22}] run function hp:cutscenes/fade_out

execute as @s[scores={cutSceneTimer=1}] run function hp:music/music/silence
execute as @s[scores={cutSceneTimer=1}] run scoreboard players set @s queuedMusic 0

execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run setblock 5499 56 38 minecraft:oak_door[facing=west,half=lower,hinge=right,open=true,powered=false]
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run setblock 5499 57 38 minecraft:oak_door[facing=west,half=upper,hinge=right,open=true,powered=false]
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run clone 5503 84 -2 5505 88 -1 5503 54 -2

execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tp @e[tag=lupinStupefyArenaFpEngine,limit=1] 5500 56 38
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=lupinStupefyArenaFpEngine,limit=1] remove idle
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=lupinStupefyArenaFpEngine,limit=1] remove stop
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=lupinStupefyArenaFpEngine,limit=1] remove permStop
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run scoreboard players set @s targetPathPoint 0
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] store result entity @s ArmorItems[3].tag.targetPathPoint int 1 run scoreboard players get @s targetPathPoint

execute as @s[scores={cutSceneTimer=..20}] run title @s actionbar ["",{"text":" "}]

tp @s[scores={cutSceneTimer=22}] 5507.236 55.79955 28.63441 1816.05 1.72
tp @s[scores={cutSceneTimer=23}] 5507.232 55.7991 28.64882 1816.05 1.72
tp @s[scores={cutSceneTimer=24}] 5507.229 55.79865 28.66323 1816.05 1.72
tp @s[scores={cutSceneTimer=25}] 5507.225 55.7982 28.67763 1816.05 1.72
tp @s[scores={cutSceneTimer=26}] 5507.221 55.79775 28.69204 1816.05 1.72
tp @s[scores={cutSceneTimer=27}] 5507.217 55.7973 28.70645 1816.05 1.72
tp @s[scores={cutSceneTimer=28}] 5507.213 55.79685 28.72086 1816.05 1.72
tp @s[scores={cutSceneTimer=29}] 5507.209 55.7964 28.73527 1816.05 1.72
tp @s[scores={cutSceneTimer=30}] 5507.205 55.79595 28.74967 1816.05 1.72
tp @s[scores={cutSceneTimer=31}] 5507.201 55.7955 28.76408 1816.05 1.72
tp @s[scores={cutSceneTimer=32}] 5507.197 55.79505 28.77849 1816.05 1.72
tp @s[scores={cutSceneTimer=33}] 5507.193 55.7946 28.7929 1816.05 1.72
tp @s[scores={cutSceneTimer=34}] 5507.189 55.79415 28.80731 1816.05 1.72
tp @s[scores={cutSceneTimer=35}] 5507.186 55.7937 28.82171 1816.05 1.72
tp @s[scores={cutSceneTimer=36}] 5507.182 55.79325 28.83612 1816.05 1.72
tp @s[scores={cutSceneTimer=37}] 5507.178 55.7928 28.85053 1816.05 1.72
tp @s[scores={cutSceneTimer=38}] 5507.174 55.79235 28.86494 1816.05 1.72
tp @s[scores={cutSceneTimer=39}] 5507.17 55.7919 28.87935 1816.05 1.72
tp @s[scores={cutSceneTimer=40}] 5507.166 55.79145 28.89375 1816.05 1.72
tp @s[scores={cutSceneTimer=41}] 5507.162 55.791 28.90816 1816.05 1.72
tp @s[scores={cutSceneTimer=42}] 5507.158 55.79055 28.92257 1816.05 1.72
tp @s[scores={cutSceneTimer=43}] 5507.154 55.7901 28.93698 1816.05 1.72
tp @s[scores={cutSceneTimer=44}] 5507.15 55.78965 28.95139 1816.05 1.72
tp @s[scores={cutSceneTimer=45}] 5507.146 55.7892 28.9658 1816.05 1.72
tp @s[scores={cutSceneTimer=46}] 5507.143 55.78875 28.9802 1816.05 1.72
tp @s[scores={cutSceneTimer=47}] 5507.139 55.7883 28.99461 1816.05 1.72
tp @s[scores={cutSceneTimer=48}] 5507.135 55.78785 29.00902 1816.05 1.72
tp @s[scores={cutSceneTimer=49}] 5507.131 55.7874 29.02343 1816.05 1.72
tp @s[scores={cutSceneTimer=50}] 5507.127 55.78695 29.03784 1816.05 1.72
tp @s[scores={cutSceneTimer=51}] 5507.123 55.7865 29.05224 1816.05 1.72
tp @s[scores={cutSceneTimer=52}] 5507.119 55.78605 29.06665 1816.05 1.72
tp @s[scores={cutSceneTimer=53}] 5507.115 55.78559 29.08106 1816.05 1.72
tp @s[scores={cutSceneTimer=54}] 5507.111 55.78514 29.09547 1816.05 1.72
tp @s[scores={cutSceneTimer=55}] 5507.107 55.78469 29.10988 1816.05 1.72
tp @s[scores={cutSceneTimer=56}] 5507.104 55.78424 29.12428 1816.05 1.72
tp @s[scores={cutSceneTimer=57}] 5507.1 55.78379 29.13869 1816.05 1.72
tp @s[scores={cutSceneTimer=58}] 5507.096 55.78334 29.1531 1816.05 1.72
tp @s[scores={cutSceneTimer=59}] 5507.092 55.78289 29.16751 1816.05 1.72
tp @s[scores={cutSceneTimer=60}] 5507.088 55.78244 29.18192 1816.05 1.72
tp @s[scores={cutSceneTimer=61}] 5507.084 55.78199 29.19633 1816.05 1.72
tp @s[scores={cutSceneTimer=62}] 5507.08 55.78154 29.21073 1816.05 1.72
tp @s[scores={cutSceneTimer=63}] 5507.076 55.78109 29.22514 1816.05 1.72
tp @s[scores={cutSceneTimer=64}] 5507.072 55.78064 29.23955 1816.05 1.72
tp @s[scores={cutSceneTimer=65}] 5507.068 55.78019 29.25396 1816.05 1.72
tp @s[scores={cutSceneTimer=66}] 5507.064 55.77974 29.26837 1816.05 1.72
tp @s[scores={cutSceneTimer=67}] 5507.061 55.77929 29.28277 1816.05 1.72
tp @s[scores={cutSceneTimer=68}] 5507.057 55.77884 29.29718 1816.05 1.72
tp @s[scores={cutSceneTimer=69}] 5507.053 55.77839 29.31159 1816.05 1.72
tp @s[scores={cutSceneTimer=70}] 5507.049 55.77794 29.326 1816.05 1.72
tp @s[scores={cutSceneTimer=71}] 5507.045 55.77749 29.34041 1816.05 1.72
tp @s[scores={cutSceneTimer=72}] 5507.041 55.77704 29.35481 1816.05 1.72
tp @s[scores={cutSceneTimer=73}] 5507.037 55.77659 29.36922 1816.05 1.72
tp @s[scores={cutSceneTimer=74}] 5507.033 55.77614 29.38363 1816.05 1.72
tp @s[scores={cutSceneTimer=75}] 5507.029 55.77569 29.39804 1816.05 1.72
tp @s[scores={cutSceneTimer=76}] 5507.025 55.77524 29.41245 1816.05 1.72
tp @s[scores={cutSceneTimer=77}] 5507.021 55.77479 29.42686 1816.05 1.72
tp @s[scores={cutSceneTimer=78}] 5507.018 55.77434 29.44126 1816.05 1.72
tp @s[scores={cutSceneTimer=79}] 5507.014 55.77389 29.45567 1816.05 1.72
tp @s[scores={cutSceneTimer=80}] 5507.01 55.77344 29.47008 1816.05 1.72
tp @s[scores={cutSceneTimer=81}] 5507.006 55.77299 29.48449 1816.05 1.72
tp @s[scores={cutSceneTimer=82}] 5507.002 55.77254 29.4989 1816.05 1.72
tp @s[scores={cutSceneTimer=83}] 5506.998 55.77209 29.5133 1816.05 1.72
tp @s[scores={cutSceneTimer=84}] 5506.994 55.77164 29.52771 1816.05 1.72
tp @s[scores={cutSceneTimer=85}] 5506.99 55.77119 29.54212 1816.05 1.72
tp @s[scores={cutSceneTimer=86}] 5506.986 55.77074 29.55653 1816.05 1.72
tp @s[scores={cutSceneTimer=87}] 5506.982 55.77029 29.57094 1816.05 1.72
tp @s[scores={cutSceneTimer=88}] 5506.979 55.76984 29.58534 1816.05 1.72
tp @s[scores={cutSceneTimer=89}] 5506.975 55.76939 29.59975 1816.05 1.72
tp @s[scores={cutSceneTimer=90}] 5506.971 55.76894 29.61416 1816.05 1.72
tp @s[scores={cutSceneTimer=91}] 5506.967 55.76849 29.62857 1816.05 1.72
tp @s[scores={cutSceneTimer=92}] 5506.963 55.76804 29.64298 1816.05 1.72
tp @s[scores={cutSceneTimer=93}] 5506.959 55.76759 29.65738 1816.05 1.72
tp @s[scores={cutSceneTimer=94}] 5506.955 55.76714 29.67179 1816.05 1.72
tp @s[scores={cutSceneTimer=95}] 5506.951 55.76669 29.6862 1816.05 1.72
tp @s[scores={cutSceneTimer=96}] 5506.947 55.76624 29.70061 1816.05 1.72
tp @s[scores={cutSceneTimer=97}] 5506.943 55.76579 29.71502 1816.05 1.72
tp @s[scores={cutSceneTimer=98}] 5506.939 55.76534 29.72943 1816.05 1.72
tp @s[scores={cutSceneTimer=99}] 5506.936 55.76489 29.74383 1816.05 1.72
tp @s[scores={cutSceneTimer=100}] 5506.932 55.76444 29.75824 1816.05 1.72
tp @s[scores={cutSceneTimer=101}] 5506.928 55.76399 29.77265 1816.05 1.72
tp @s[scores={cutSceneTimer=102}] 5506.924 55.76354 29.78706 1816.05 1.72
tp @s[scores={cutSceneTimer=103}] 5506.92 55.76309 29.80147 1816.05 1.72
tp @s[scores={cutSceneTimer=104}] 5506.916 55.76264 29.81587 1816.05 1.72
tp @s[scores={cutSceneTimer=105}] 5506.912 55.76219 29.83028 1816.05 1.72
tp @s[scores={cutSceneTimer=106}] 5506.908 55.76174 29.84469 1816.05 1.72
tp @s[scores={cutSceneTimer=107}] 5506.904 55.76129 29.8591 1816.05 1.72
tp @s[scores={cutSceneTimer=108}] 5506.9 55.76084 29.87351 1816.05 1.72
tp @s[scores={cutSceneTimer=109}] 5506.896 55.76039 29.88791 1816.05 1.72
tp @s[scores={cutSceneTimer=110}] 5506.893 55.75994 29.90232 1816.05 1.72
tp @s[scores={cutSceneTimer=111}] 5506.889 55.75949 29.91673 1816.05 1.72
tp @s[scores={cutSceneTimer=112}] 5506.885 55.75904 29.93114 1816.05 1.72
tp @s[scores={cutSceneTimer=113}] 5506.881 55.75859 29.94555 1816.05 1.72
tp @s[scores={cutSceneTimer=114}] 5506.877 55.75814 29.95996 1816.05 1.72
tp @s[scores={cutSceneTimer=115}] 5506.873 55.75769 29.97436 1816.05 1.72
tp @s[scores={cutSceneTimer=116}] 5506.869 55.75724 29.98877 1816.05 1.72
tp @s[scores={cutSceneTimer=117}] 5506.865 55.75679 30.00318 1816.05 1.72
tp @s[scores={cutSceneTimer=118}] 5506.861 55.75634 30.01759 1816.05 1.72
tp @s[scores={cutSceneTimer=119}] 5506.857 55.75589 30.032 1816.05 1.72
tp @s[scores={cutSceneTimer=120}] 5506.854 55.75544 30.0464 1816.05 1.72
tp @s[scores={cutSceneTimer=121}] 5506.85 55.75499 30.06081 1816.05 1.72
tp @s[scores={cutSceneTimer=122}] 5506.846 55.75454 30.07522 1816.05 1.72
tp @s[scores={cutSceneTimer=123}] 5506.842 55.75409 30.08963 1816.05 1.72
tp @s[scores={cutSceneTimer=124}] 5506.838 55.75364 30.10404 1816.05 1.72
tp @s[scores={cutSceneTimer=125}] 5506.834 55.75319 30.11844 1816.05 1.72
tp @s[scores={cutSceneTimer=126}] 5506.83 55.75274 30.13285 1816.05 1.72
tp @s[scores={cutSceneTimer=127}] 5506.826 55.75229 30.14726 1816.05 1.72
tp @s[scores={cutSceneTimer=128}] 5506.822 55.75183 30.16167 1816.05 1.72
tp @s[scores={cutSceneTimer=129}] 5506.818 55.75138 30.17608 1816.05 1.72
tp @s[scores={cutSceneTimer=130}] 5506.814 55.75093 30.19049 1816.05 1.72
tp @s[scores={cutSceneTimer=131}] 5506.811 55.75048 30.20489 1816.05 1.72
tp @s[scores={cutSceneTimer=132}] 5506.807 55.75003 30.2193 1816.05 1.72
tp @s[scores={cutSceneTimer=133}] 5506.803 55.74958 30.23371 1816.05 1.72
tp @s[scores={cutSceneTimer=134}] 5506.799 55.74913 30.24812 1816.05 1.72
tp @s[scores={cutSceneTimer=135}] 5506.795 55.74868 30.26253 1816.05 1.72
tp @s[scores={cutSceneTimer=136}] 5506.791 55.74823 30.27693 1816.05 1.72
tp @s[scores={cutSceneTimer=137}] 5506.787 55.74778 30.29134 1816.05 1.72
tp @s[scores={cutSceneTimer=138}] 5506.783 55.74733 30.30575 1816.05 1.72
tp @s[scores={cutSceneTimer=139}] 5506.779 55.74688 30.32016 1816.05 1.72
tp @s[scores={cutSceneTimer=140}] 5506.775 55.74643 30.33457 1816.05 1.72
tp @s[scores={cutSceneTimer=141}] 5506.771 55.74598 30.34897 1816.05 1.72
tp @s[scores={cutSceneTimer=142}] 5506.768 55.74553 30.36338 1816.05 1.72
tp @s[scores={cutSceneTimer=143}] 5506.764 55.74508 30.37779 1816.05 1.72
tp @s[scores={cutSceneTimer=144}] 5506.76 55.74463 30.3922 1816.05 1.72
tp @s[scores={cutSceneTimer=145}] 5506.756 55.74418 30.40661 1816.05 1.72
tp @s[scores={cutSceneTimer=146}] 5506.752 55.74373 30.42101 1816.05 1.72
tp @s[scores={cutSceneTimer=147}] 5506.748 55.74328 30.43542 1816.05 1.72
tp @s[scores={cutSceneTimer=148}] 5506.744 55.74283 30.44983 1816.05 1.72
tp @s[scores={cutSceneTimer=149}] 5506.74 55.74238 30.46424 1816.05 1.72
tp @s[scores={cutSceneTimer=150}] 5506.736 55.74193 30.47865 1816.05 1.72
tp @s[scores={cutSceneTimer=151}] 5506.732 55.74148 30.49306 1816.05 1.72
tp @s[scores={cutSceneTimer=152}] 5506.729 55.74103 30.50746 1816.05 1.72
tp @s[scores={cutSceneTimer=153}] 5506.725 55.74058 30.52187 1816.05 1.72
tp @s[scores={cutSceneTimer=154}] 5506.721 55.74013 30.53628 1816.05 1.72
tp @s[scores={cutSceneTimer=155}] 5506.717 55.73968 30.55069 1816.05 1.72
tp @s[scores={cutSceneTimer=156}] 5506.713 55.73923 30.5651 1816.05 1.72
tp @s[scores={cutSceneTimer=157}] 5506.709 55.73878 30.5795 1816.05 1.72
tp @s[scores={cutSceneTimer=158}] 5506.705 55.73833 30.59391 1816.05 1.72
tp @s[scores={cutSceneTimer=159}] 5506.701 55.73788 30.60832 1816.05 1.72
tp @s[scores={cutSceneTimer=160}] 5506.697 55.73743 30.62273 1816.05 1.72
tp @s[scores={cutSceneTimer=161}] 5506.693 55.73698 30.63714 1816.05 1.72
tp @s[scores={cutSceneTimer=162}] 5506.689 55.73653 30.65154 1816.05 1.72
tp @s[scores={cutSceneTimer=163}] 5506.686 55.73608 30.66595 1816.05 1.72
tp @s[scores={cutSceneTimer=164}] 5506.682 55.73563 30.68036 1816.05 1.72
tp @s[scores={cutSceneTimer=165}] 5506.678 55.73518 30.69477 1816.05 1.72
tp @s[scores={cutSceneTimer=166}] 5506.674 55.73473 30.70918 1816.05 1.72
tp @s[scores={cutSceneTimer=167}] 5506.67 55.73428 30.72359 1816.05 1.72
tp @s[scores={cutSceneTimer=168}] 5506.666 55.73383 30.73799 1816.05 1.72
tp @s[scores={cutSceneTimer=169}] 5506.662 55.73338 30.7524 1816.05 1.72
tp @s[scores={cutSceneTimer=170}] 5506.658 55.73293 30.76681 1816.05 1.72
tp @s[scores={cutSceneTimer=171}] 5506.654 55.73248 30.78122 1816.05 1.72
tp @s[scores={cutSceneTimer=172}] 5506.65 55.73203 30.79563 1816.05 1.72
tp @s[scores={cutSceneTimer=173}] 5506.646 55.73158 30.81003 1816.05 1.72
tp @s[scores={cutSceneTimer=174}] 5506.643 55.73113 30.82444 1816.05 1.72
tp @s[scores={cutSceneTimer=175}] 5506.639 55.73068 30.83885 1816.05 1.72
tp @s[scores={cutSceneTimer=176}] 5506.635 55.73023 30.85326 1816.05 1.72
tp @s[scores={cutSceneTimer=177}] 5506.631 55.72978 30.86767 1816.05 1.72
tp @s[scores={cutSceneTimer=178}] 5506.627 55.72933 30.88207 1816.05 1.72
tp @s[scores={cutSceneTimer=179}] 5506.623 55.72888 30.89648 1816.05 1.72
tp @s[scores={cutSceneTimer=180}] 5506.619 55.72843 30.91089 1816.05 1.72
tp @s[scores={cutSceneTimer=181}] 5506.615 55.72798 30.9253 1816.05 1.72
tp @s[scores={cutSceneTimer=182}] 5506.611 55.72753 30.93971 1816.05 1.72
tp @s[scores={cutSceneTimer=183}] 5506.607 55.72708 30.95411 1816.05 1.72
tp @s[scores={cutSceneTimer=184}] 5506.604 55.72663 30.96852 1816.05 1.72
tp @s[scores={cutSceneTimer=185}] 5506.6 55.72618 30.98293 1816.05 1.72
tp @s[scores={cutSceneTimer=186}] 5506.596 55.72573 30.99734 1816.05 1.72
tp @s[scores={cutSceneTimer=187}] 5506.592 55.72528 31.01175 1816.05 1.72
tp @s[scores={cutSceneTimer=188}] 5506.588 55.72483 31.02616 1816.05 1.72
tp @s[scores={cutSceneTimer=189}] 5506.584 55.72438 31.04056 1816.05 1.72
tp @s[scores={cutSceneTimer=190}] 5506.58 55.72393 31.05497 1816.05 1.72
tp @s[scores={cutSceneTimer=191}] 5506.576 55.72348 31.06938 1816.05 1.72
tp @s[scores={cutSceneTimer=192}] 5506.572 55.72303 31.08379 1816.05 1.72
tp @s[scores={cutSceneTimer=193}] 5506.568 55.72258 31.0982 1816.05 1.72
tp @s[scores={cutSceneTimer=194}] 5506.564 55.72213 31.1126 1816.05 1.72
tp @s[scores={cutSceneTimer=195}] 5506.561 55.72168 31.12701 1816.05 1.72
tp @s[scores={cutSceneTimer=196}] 5506.557 55.72123 31.14142 1816.05 1.72
tp @s[scores={cutSceneTimer=197}] 5506.553 55.72078 31.15583 1816.05 1.72
tp @s[scores={cutSceneTimer=198}] 5506.549 55.72033 31.17024 1816.05 1.72
tp @s[scores={cutSceneTimer=199}] 5506.545 55.71988 31.18464 1816.05 1.72
tp @s[scores={cutSceneTimer=200}] 5506.541 55.71943 31.19905 1816.05 1.72
tp @s[scores={cutSceneTimer=201}] 5506.537 55.71898 31.21346 1816.05 1.72
tp @s[scores={cutSceneTimer=202}] 5506.533 55.71852 31.22787 1816.05 1.72
tp @s[scores={cutSceneTimer=203}] 5506.529 55.71807 31.24228 1816.05 1.72
tp @s[scores={cutSceneTimer=204}] 5506.525 55.71762 31.25669 1816.05 1.72
tp @s[scores={cutSceneTimer=205}] 5506.521 55.71717 31.27109 1816.05 1.72
tp @s[scores={cutSceneTimer=206}] 5506.518 55.71672 31.2855 1816.05 1.72
tp @s[scores={cutSceneTimer=207}] 5506.514 55.71627 31.29991 1816.05 1.72
tp @s[scores={cutSceneTimer=208}] 5506.51 55.71582 31.31432 1816.05 1.72
tp @s[scores={cutSceneTimer=209}] 5506.506 55.71537 31.32873 1816.05 1.72
tp @s[scores={cutSceneTimer=210}] 5506.502 55.71492 31.34313 1816.05 1.72
tp @s[scores={cutSceneTimer=211}] 5506.498 55.71447 31.35754 1816.05 1.72
tp @s[scores={cutSceneTimer=212}] 5506.494 55.71402 31.37195 1816.05 1.72
tp @s[scores={cutSceneTimer=213}] 5506.49 55.71357 31.38636 1816.05 1.72
tp @s[scores={cutSceneTimer=214}] 5506.486 55.71312 31.40077 1816.05 1.72
tp @s[scores={cutSceneTimer=215}] 5506.482 55.71267 31.41517 1816.05 1.72
tp @s[scores={cutSceneTimer=216}] 5506.479 55.71222 31.42958 1816.05 1.72
tp @s[scores={cutSceneTimer=217}] 5506.475 55.71177 31.44399 1816.05 1.72
tp @s[scores={cutSceneTimer=218}] 5506.471 55.71132 31.4584 1816.05 1.72
tp @s[scores={cutSceneTimer=219}] 5506.467 55.71087 31.47281 1816.05 1.72
tp @s[scores={cutSceneTimer=220}] 5506.463 55.71042 31.48722 1816.05 1.72
tp @s[scores={cutSceneTimer=221}] 5506.459 55.70997 31.50162 1816.05 1.72
tp @s[scores={cutSceneTimer=222}] 5506.455 55.70952 31.51603 1816.05 1.72
tp @s[scores={cutSceneTimer=223}] 5506.451 55.70907 31.53044 1816.05 1.72
tp @s[scores={cutSceneTimer=224}] 5506.447 55.70862 31.54485 1816.05 1.72
tp @s[scores={cutSceneTimer=225}] 5506.443 55.70817 31.55926 1816.05 1.72
tp @s[scores={cutSceneTimer=226}] 5506.439 55.70772 31.57366 1816.05 1.72
tp @s[scores={cutSceneTimer=227}] 5506.436 55.70727 31.58807 1816.05 1.72
tp @s[scores={cutSceneTimer=228}] 5506.432 55.70682 31.60248 1816.05 1.72
tp @s[scores={cutSceneTimer=229}] 5506.428 55.70637 31.61689 1816.05 1.72
tp @s[scores={cutSceneTimer=230}] 5506.424 55.70592 31.6313 1816.05 1.72
tp @s[scores={cutSceneTimer=231}] 5506.42 55.70547 31.6457 1816.05 1.72
tp @s[scores={cutSceneTimer=232}] 5506.416 55.70502 31.66011 1816.05 1.72
tp @s[scores={cutSceneTimer=233}] 5506.412 55.70457 31.67452 1816.05 1.72
tp @s[scores={cutSceneTimer=234}] 5506.408 55.70412 31.68893 1816.05 1.72
tp @s[scores={cutSceneTimer=235}] 5506.404 55.70367 31.70334 1816.05 1.72
tp @s[scores={cutSceneTimer=236}] 5506.4 55.70322 31.71774 1816.05 1.72
tp @s[scores={cutSceneTimer=237}] 5506.396 55.70277 31.73215 1816.05 1.72
tp @s[scores={cutSceneTimer=238}] 5506.393 55.70232 31.74656 1816.05 1.72
tp @s[scores={cutSceneTimer=239}] 5506.389 55.70187 31.76097 1816.05 1.72
tp @s[scores={cutSceneTimer=240}] 5506.385 55.70142 31.77538 1816.05 1.72
tp @s[scores={cutSceneTimer=241}] 5506.381 55.70097 31.78979 1816.05 1.72
tp @s[scores={cutSceneTimer=242}] 5506.377 55.70052 31.80419 1816.05 1.72
tp @s[scores={cutSceneTimer=243}] 5506.373 55.70007 31.8186 1816.05 1.72
tp @s[scores={cutSceneTimer=244}] 5506.369 55.69962 31.83301 1816.05 1.72
tp @s[scores={cutSceneTimer=245}] 5506.365 55.69917 31.84742 1816.05 1.72
tp @s[scores={cutSceneTimer=246}] 5506.361 55.69872 31.86183 1816.05 1.72
tp @s[scores={cutSceneTimer=247}] 5506.357 55.69827 31.87623 1816.05 1.72
tp @s[scores={cutSceneTimer=248}] 5506.354 55.69782 31.89064 1816.05 1.72
tp @s[scores={cutSceneTimer=249}] 5506.35 55.69737 31.90505 1816.05 1.72
tp @s[scores={cutSceneTimer=250}] 5506.346 55.69692 31.91946 1816.05 1.72
tp @s[scores={cutSceneTimer=251}] 5506.342 55.69647 31.93387 1816.05 1.72
tp @s[scores={cutSceneTimer=252}] 5506.338 55.69602 31.94827 1816.05 1.72
tp @s[scores={cutSceneTimer=253}] 5506.334 55.69557 31.96268 1816.05 1.72
tp @s[scores={cutSceneTimer=254}] 5506.33 55.69512 31.97709 1816.05 1.72
tp @s[scores={cutSceneTimer=255}] 5506.326 55.69467 31.9915 1816.05 1.72
tp @s[scores={cutSceneTimer=256}] 5506.322 55.69422 32.00591 1816.05 1.72
tp @s[scores={cutSceneTimer=257}] 5506.318 55.69377 32.02032 1816.05 1.72
tp @s[scores={cutSceneTimer=258}] 5506.314 55.69332 32.03473 1816.05 1.72
tp @s[scores={cutSceneTimer=259}] 5506.311 55.69287 32.04913 1816.05 1.72
tp @s[scores={cutSceneTimer=260}] 5506.307 55.69242 32.06354 1816.05 1.72
tp @s[scores={cutSceneTimer=261}] 5506.303 55.69197 32.07795 1816.05 1.72
tp @s[scores={cutSceneTimer=262}] 5506.299 55.69152 32.09236 1816.05 1.72
tp @s[scores={cutSceneTimer=263}] 5506.295 55.69107 32.10677 1816.05 1.72
tp @s[scores={cutSceneTimer=264}] 5506.291 55.69062 32.12117 1816.05 1.72
tp @s[scores={cutSceneTimer=265}] 5506.287 55.69017 32.13558 1816.05 1.72
tp @s[scores={cutSceneTimer=266}] 5506.283 55.68972 32.14999 1816.05 1.72
tp @s[scores={cutSceneTimer=267}] 5506.279 55.68927 32.1644 1816.05 1.72
tp @s[scores={cutSceneTimer=268}] 5506.275 55.68882 32.17881 1816.05 1.72
tp @s[scores={cutSceneTimer=269}] 5506.271 55.68837 32.19321 1816.05 1.72
tp @s[scores={cutSceneTimer=270}] 5506.268 55.68792 32.20762 1816.05 1.72
tp @s[scores={cutSceneTimer=271}] 5506.264 55.68747 32.22203 1816.05 1.72
tp @s[scores={cutSceneTimer=272}] 5506.26 55.68702 32.23644 1816.05 1.72
tp @s[scores={cutSceneTimer=273}] 5506.256 55.68657 32.25085 1816.05 1.72
tp @s[scores={cutSceneTimer=274}] 5506.252 55.68612 32.26525 1816.05 1.72
tp @s[scores={cutSceneTimer=275}] 5506.248 55.68567 32.27966 1816.05 1.72
tp @s[scores={cutSceneTimer=276}] 5506.244 55.68521 32.29407 1816.05 1.72
tp @s[scores={cutSceneTimer=277}] 5506.24 55.68476 32.30848 1816.05 1.72
tp @s[scores={cutSceneTimer=278}] 5506.236 55.68431 32.32289 1816.05 1.72
tp @s[scores={cutSceneTimer=279}] 5506.232 55.68386 32.3373 1816.05 1.72
tp @s[scores={cutSceneTimer=280}] 5506.229 55.68341 32.3517 1816.05 1.72
tp @s[scores={cutSceneTimer=281}] 5506.225 55.68296 32.36611 1816.05 1.72
tp @s[scores={cutSceneTimer=282}] 5506.221 55.68251 32.38052 1816.05 1.72
tp @s[scores={cutSceneTimer=283}] 5506.217 55.68206 32.39493 1816.05 1.72
tp @s[scores={cutSceneTimer=284}] 5506.213 55.68161 32.40934 1816.05 1.72
tp @s[scores={cutSceneTimer=285}] 5506.209 55.68116 32.42374 1816.05 1.72
tp @s[scores={cutSceneTimer=286}] 5506.205 55.68071 32.43815 1816.05 1.72
tp @s[scores={cutSceneTimer=287}] 5506.201 55.68026 32.45256 1816.05 1.72
tp @s[scores={cutSceneTimer=288}] 5506.197 55.67981 32.46697 1816.05 1.72
tp @s[scores={cutSceneTimer=289}] 5506.193 55.67936 32.48138 1816.05 1.72
tp @s[scores={cutSceneTimer=290}] 5506.189 55.67891 32.49578 1816.05 1.72
tp @s[scores={cutSceneTimer=291}] 5506.186 55.67846 32.51019 1816.05 1.72
tp @s[scores={cutSceneTimer=292}] 5506.182 55.67801 32.5246 1816.05 1.72
tp @s[scores={cutSceneTimer=293}] 5506.178 55.67756 32.53901 1816.05 1.72
tp @s[scores={cutSceneTimer=294}] 5506.174 55.67711 32.55342 1816.05 1.72
tp @s[scores={cutSceneTimer=295}] 5506.17 55.67666 32.56783 1816.05 1.72
tp @s[scores={cutSceneTimer=296}] 5506.166 55.67621 32.58223 1816.05 1.72
tp @s[scores={cutSceneTimer=297}] 5506.162 55.67576 32.59664 1816.05 1.72
tp @s[scores={cutSceneTimer=298}] 5506.158 55.67531 32.61105 1816.05 1.72
tp @s[scores={cutSceneTimer=299}] 5506.154 55.67486 32.62546 1816.05 1.72
tp @s[scores={cutSceneTimer=300}] 5506.15 55.67441 32.63987 1816.05 1.72
tp @s[scores={cutSceneTimer=301}] 5506.146 55.67396 32.65427 1816.05 1.72
tp @s[scores={cutSceneTimer=302}] 5506.143 55.67351 32.66868 1816.05 1.72
tp @s[scores={cutSceneTimer=303}] 5506.139 55.67306 32.68309 1816.05 1.72
tp @s[scores={cutSceneTimer=304}] 5506.135 55.67261 32.6975 1816.05 1.72
tp @s[scores={cutSceneTimer=305}] 5506.131 55.67216 32.71191 1816.05 1.72
tp @s[scores={cutSceneTimer=306}] 5506.127 55.67171 32.72631 1816.05 1.72
tp @s[scores={cutSceneTimer=307}] 5506.123 55.67126 32.74072 1816.05 1.72
tp @s[scores={cutSceneTimer=308}] 5506.119 55.67081 32.75513 1816.05 1.72
tp @s[scores={cutSceneTimer=309}] 5506.115 55.67036 32.76954 1816.05 1.72
tp @s[scores={cutSceneTimer=310}] 5506.111 55.66991 32.78395 1816.05 1.72
tp @s[scores={cutSceneTimer=311}] 5506.107 55.66946 32.79836 1816.05 1.72
tp @s[scores={cutSceneTimer=312}] 5506.104 55.66901 32.81276 1816.05 1.72
tp @s[scores={cutSceneTimer=313}] 5506.1 55.66856 32.82717 1816.05 1.72
tp @s[scores={cutSceneTimer=314}] 5506.096 55.66811 32.84158 1816.05 1.72
tp @s[scores={cutSceneTimer=315}] 5506.092 55.66766 32.85599 1816.05 1.72
tp @s[scores={cutSceneTimer=316}] 5506.088 55.66721 32.8704 1816.05 1.72
tp @s[scores={cutSceneTimer=317}] 5506.084 55.66676 32.8848 1816.05 1.72
tp @s[scores={cutSceneTimer=318}] 5506.08 55.66631 32.89921 1816.05 1.72
tp @s[scores={cutSceneTimer=319}] 5506.076 55.66586 32.91362 1816.05 1.72
tp @s[scores={cutSceneTimer=320}] 5506.072 55.66541 32.92803 1816.05 1.72
execute as @s[scores={cutSceneTimer=300}] run function hp:cutscenes/fade_in

# ¤Lupin:¤ Отличная работа!
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=20..160}] run title @s actionbar ["",{"text":""},{"text":"Люпин;","color":"dark_gray"},{"text":" Отличная работа!"}]
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=27},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=31},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=38},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=49},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=53},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=60},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral


# ¤Lupin:¤ You've already learned to aim and shoot the spell. Now for a bit more of a challenge.
# ¤Lupin:¤ Ты научился использовать заклинание. Теперь перейдём к следующему заданию.
execute as @s[scores={cutSceneTimer=161},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=161..311}] run title @s actionbar ["",{"text":""},{"text":"Люпин;","color":"dark_gray"},{"text":" Вы научились использовать заклинание. Теперь перейдём к следующему заданию."}]
execute as @s[scores={cutSceneTimer=161},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=168},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=172},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=179},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=183},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=190},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=194},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=201},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral

execute as @s[scores={cutSceneTimer=320}] run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=321}] 5508.164 55.72377 11.0559 373.75 14.53
tp @s[scores={cutSceneTimer=322}] 5508.167 55.72753 11.04179 373.75 14.53
tp @s[scores={cutSceneTimer=323}] 5508.17 55.7313 11.02769 373.75 14.53
tp @s[scores={cutSceneTimer=324}] 5508.174 55.73506 11.01358 373.75 14.53
tp @s[scores={cutSceneTimer=325}] 5508.177 55.73883 10.99948 373.75 14.53
tp @s[scores={cutSceneTimer=326}] 5508.181 55.74259 10.98538 373.75 14.53
tp @s[scores={cutSceneTimer=327}] 5508.184 55.74636 10.97127 373.75 14.53
tp @s[scores={cutSceneTimer=328}] 5508.188 55.75012 10.95717 373.75 14.53
tp @s[scores={cutSceneTimer=329}] 5508.191 55.75389 10.94306 373.75 14.53
tp @s[scores={cutSceneTimer=330}] 5508.194 55.75765 10.92896 373.75 14.53
tp @s[scores={cutSceneTimer=331}] 5508.198 55.76142 10.91486 373.75 14.53
tp @s[scores={cutSceneTimer=332}] 5508.201 55.76518 10.90075 373.75 14.53
tp @s[scores={cutSceneTimer=333}] 5508.205 55.76895 10.88665 373.75 14.53
tp @s[scores={cutSceneTimer=334}] 5508.208 55.77271 10.87255 373.75 14.53
tp @s[scores={cutSceneTimer=335}] 5508.211 55.77648 10.85844 373.75 14.53
tp @s[scores={cutSceneTimer=336}] 5508.215 55.78024 10.84434 373.75 14.53
tp @s[scores={cutSceneTimer=337}] 5508.218 55.78401 10.83023 373.75 14.53
tp @s[scores={cutSceneTimer=338}] 5508.222 55.78777 10.81613 373.75 14.53
tp @s[scores={cutSceneTimer=339}] 5508.225 55.79154 10.80203 373.75 14.53
tp @s[scores={cutSceneTimer=340}] 5508.229 55.7953 10.78792 373.75 14.53
tp @s[scores={cutSceneTimer=341}] 5508.232 55.79907 10.77382 373.75 14.53
tp @s[scores={cutSceneTimer=342}] 5508.235 55.80283 10.75971 373.75 14.53
tp @s[scores={cutSceneTimer=343}] 5508.239 55.8066 10.74561 373.75 14.53
tp @s[scores={cutSceneTimer=344}] 5508.242 55.81036 10.73151 373.75 14.53
tp @s[scores={cutSceneTimer=345}] 5508.246 55.81413 10.7174 373.75 14.53
tp @s[scores={cutSceneTimer=346}] 5508.249 55.81789 10.7033 373.75 14.53
tp @s[scores={cutSceneTimer=347}] 5508.252 55.82166 10.68919 373.75 14.53
tp @s[scores={cutSceneTimer=348}] 5508.256 55.82542 10.67509 373.75 14.53
tp @s[scores={cutSceneTimer=349}] 5508.259 55.82919 10.66099 373.75 14.53
tp @s[scores={cutSceneTimer=350}] 5508.263 55.83295 10.64688 373.75 14.53
tp @s[scores={cutSceneTimer=351}] 5508.266 55.83672 10.63278 373.75 14.53
tp @s[scores={cutSceneTimer=352}] 5508.27 55.84048 10.61868 373.75 14.53
tp @s[scores={cutSceneTimer=353}] 5508.273 55.84425 10.60457 373.75 14.53
tp @s[scores={cutSceneTimer=354}] 5508.276 55.84801 10.59047 373.75 14.53
tp @s[scores={cutSceneTimer=355}] 5508.28 55.85178 10.57636 373.75 14.53
tp @s[scores={cutSceneTimer=356}] 5508.283 55.85555 10.56226 373.75 14.53
tp @s[scores={cutSceneTimer=357}] 5508.287 55.85931 10.54816 373.75 14.53
tp @s[scores={cutSceneTimer=358}] 5508.29 55.86308 10.53405 373.75 14.53
tp @s[scores={cutSceneTimer=359}] 5508.293 55.86684 10.51995 373.75 14.53
tp @s[scores={cutSceneTimer=360}] 5508.297 55.87061 10.50584 373.75 14.53
tp @s[scores={cutSceneTimer=361}] 5508.3 55.87437 10.49174 373.75 14.53
tp @s[scores={cutSceneTimer=362}] 5508.304 55.87814 10.47764 373.75 14.53
tp @s[scores={cutSceneTimer=363}] 5508.307 55.8819 10.46353 373.75 14.53
tp @s[scores={cutSceneTimer=364}] 5508.311 55.88567 10.44943 373.75 14.53
tp @s[scores={cutSceneTimer=365}] 5508.314 55.88943 10.43532 373.75 14.53
tp @s[scores={cutSceneTimer=366}] 5508.317 55.8932 10.42122 373.75 14.53
tp @s[scores={cutSceneTimer=367}] 5508.321 55.89696 10.40712 373.75 14.53
tp @s[scores={cutSceneTimer=368}] 5508.324 55.90073 10.39301 373.75 14.53
tp @s[scores={cutSceneTimer=369}] 5508.328 55.90449 10.37891 373.75 14.53
tp @s[scores={cutSceneTimer=370}] 5508.331 55.90826 10.36481 373.75 14.53
tp @s[scores={cutSceneTimer=371}] 5508.334 55.91202 10.3507 373.75 14.53
tp @s[scores={cutSceneTimer=372}] 5508.338 55.91579 10.3366 373.75 14.53
tp @s[scores={cutSceneTimer=373}] 5508.341 55.91955 10.32249 373.75 14.53
tp @s[scores={cutSceneTimer=374}] 5508.345 55.92332 10.30839 373.75 14.53
tp @s[scores={cutSceneTimer=375}] 5508.348 55.92708 10.29429 373.75 14.53
tp @s[scores={cutSceneTimer=376}] 5508.352 55.93085 10.28018 373.75 14.53
tp @s[scores={cutSceneTimer=377}] 5508.355 55.93461 10.26608 373.75 14.53
tp @s[scores={cutSceneTimer=378}] 5508.358 55.93838 10.25197 373.75 14.53
tp @s[scores={cutSceneTimer=379}] 5508.362 55.94214 10.23787 373.75 14.53
tp @s[scores={cutSceneTimer=380}] 5508.365 55.94591 10.22377 373.75 14.53
tp @s[scores={cutSceneTimer=381}] 5508.369 55.94967 10.20966 373.75 14.53
tp @s[scores={cutSceneTimer=382}] 5508.372 55.95344 10.19556 373.75 14.53
tp @s[scores={cutSceneTimer=383}] 5508.375 55.9572 10.18145 373.75 14.53
tp @s[scores={cutSceneTimer=384}] 5508.379 55.96097 10.16735 373.75 14.53
tp @s[scores={cutSceneTimer=385}] 5508.382 55.96473 10.15325 373.75 14.53
tp @s[scores={cutSceneTimer=386}] 5508.386 55.9685 10.13914 373.75 14.53
tp @s[scores={cutSceneTimer=387}] 5508.389 55.97226 10.12504 373.75 14.53
tp @s[scores={cutSceneTimer=388}] 5508.393 55.97603 10.11094 373.75 14.53
tp @s[scores={cutSceneTimer=389}] 5508.396 55.97979 10.09683 373.75 14.53
tp @s[scores={cutSceneTimer=390}] 5508.399 55.98356 10.08273 373.75 14.53
tp @s[scores={cutSceneTimer=391}] 5508.403 55.98732 10.06862 373.75 14.53
tp @s[scores={cutSceneTimer=392}] 5508.406 55.99109 10.05452 373.75 14.53
tp @s[scores={cutSceneTimer=393}] 5508.41 55.99485 10.04042 373.75 14.53
tp @s[scores={cutSceneTimer=394}] 5508.413 55.99862 10.02631 373.75 14.53
tp @s[scores={cutSceneTimer=395}] 5508.417 56.00238 10.01221 373.75 14.53
tp @s[scores={cutSceneTimer=396}] 5508.42 56.00615 9.998104 373.75 14.53
tp @s[scores={cutSceneTimer=397}] 5508.423 56.00991 9.984 373.75 14.53
tp @s[scores={cutSceneTimer=398}] 5508.427 56.01368 9.969896 373.75 14.53
tp @s[scores={cutSceneTimer=399}] 5508.43 56.01744 9.955792 373.75 14.53
tp @s[scores={cutSceneTimer=400}] 5508.434 56.02121 9.941689 373.75 14.53
tp @s[scores={cutSceneTimer=401}] 5508.437 56.02497 9.927585 373.75 14.53
tp @s[scores={cutSceneTimer=402}] 5508.44 56.02874 9.913481 373.75 14.53
tp @s[scores={cutSceneTimer=403}] 5508.444 56.03251 9.899377 373.75 14.53
tp @s[scores={cutSceneTimer=404}] 5508.447 56.03627 9.885273 373.75 14.53
tp @s[scores={cutSceneTimer=405}] 5508.451 56.04004 9.871169 373.75 14.53
tp @s[scores={cutSceneTimer=406}] 5508.454 56.0438 9.857065 373.75 14.53
tp @s[scores={cutSceneTimer=407}] 5508.458 56.04757 9.842961 373.75 14.53
tp @s[scores={cutSceneTimer=408}] 5508.461 56.05133 9.828857 373.75 14.53
tp @s[scores={cutSceneTimer=409}] 5508.464 56.0551 9.814754 373.75 14.53
tp @s[scores={cutSceneTimer=410}] 5508.468 56.05886 9.80065 373.75 14.53
tp @s[scores={cutSceneTimer=411}] 5508.471 56.06263 9.786546 373.75 14.53
tp @s[scores={cutSceneTimer=412}] 5508.475 56.06639 9.772442 373.75 14.53
tp @s[scores={cutSceneTimer=413}] 5508.478 56.07016 9.758338 373.75 14.53
tp @s[scores={cutSceneTimer=414}] 5508.481 56.07392 9.744234 373.75 14.53
tp @s[scores={cutSceneTimer=415}] 5508.485 56.07769 9.73013 373.75 14.53
tp @s[scores={cutSceneTimer=416}] 5508.488 56.08145 9.716026 373.75 14.53
tp @s[scores={cutSceneTimer=417}] 5508.492 56.08522 9.701922 373.75 14.53
tp @s[scores={cutSceneTimer=418}] 5508.495 56.08898 9.687819 373.75 14.53
tp @s[scores={cutSceneTimer=419}] 5508.499 56.09275 9.673715 373.75 14.53
tp @s[scores={cutSceneTimer=420}] 5508.502 56.09651 9.659611 373.75 14.53
tp @s[scores={cutSceneTimer=421}] 5508.505 56.10028 9.645507 373.75 14.53
tp @s[scores={cutSceneTimer=422}] 5508.509 56.10404 9.631403 373.75 14.53
tp @s[scores={cutSceneTimer=423}] 5508.512 56.10781 9.617299 373.75 14.53
tp @s[scores={cutSceneTimer=424}] 5508.516 56.11157 9.603195 373.75 14.53
tp @s[scores={cutSceneTimer=425}] 5508.519 56.11534 9.589091 373.75 14.53
tp @s[scores={cutSceneTimer=426}] 5508.522 56.1191 9.574987 373.75 14.53
tp @s[scores={cutSceneTimer=427}] 5508.526 56.12287 9.560884 373.75 14.53
tp @s[scores={cutSceneTimer=428}] 5508.529 56.12663 9.54678 373.75 14.53
tp @s[scores={cutSceneTimer=429}] 5508.533 56.1304 9.532676 373.75 14.53
tp @s[scores={cutSceneTimer=430}] 5508.536 56.13416 9.518572 373.75 14.53
tp @s[scores={cutSceneTimer=431}] 5508.54 56.13793 9.504468 373.75 14.53
tp @s[scores={cutSceneTimer=432}] 5508.543 56.14169 9.490364 373.75 14.53
tp @s[scores={cutSceneTimer=433}] 5508.546 56.14546 9.47626 373.75 14.53
tp @s[scores={cutSceneTimer=434}] 5508.55 56.14922 9.462156 373.75 14.53
tp @s[scores={cutSceneTimer=435}] 5508.553 56.15299 9.448052 373.75 14.53
tp @s[scores={cutSceneTimer=436}] 5508.557 56.15675 9.433949 373.75 14.53
tp @s[scores={cutSceneTimer=437}] 5508.56 56.16052 9.419845 373.75 14.53
tp @s[scores={cutSceneTimer=438}] 5508.563 56.16428 9.405741 373.75 14.53
tp @s[scores={cutSceneTimer=439}] 5508.567 56.16805 9.391637 373.75 14.53
tp @s[scores={cutSceneTimer=440}] 5508.57 56.17181 9.377533 373.75 14.53
tp @s[scores={cutSceneTimer=441}] 5508.574 56.17558 9.363429 373.75 14.53
tp @s[scores={cutSceneTimer=442}] 5508.577 56.17934 9.349325 373.75 14.53
tp @s[scores={cutSceneTimer=443}] 5508.581 56.18311 9.335221 373.75 14.53
tp @s[scores={cutSceneTimer=444}] 5508.584 56.18687 9.321117 373.75 14.53
tp @s[scores={cutSceneTimer=445}] 5508.587 56.19064 9.307014 373.75 14.53
tp @s[scores={cutSceneTimer=446}] 5508.591 56.1944 9.29291 373.75 14.53
tp @s[scores={cutSceneTimer=447}] 5508.594 56.19817 9.278806 373.75 14.53
tp @s[scores={cutSceneTimer=448}] 5508.598 56.20193 9.264702 373.75 14.53
tp @s[scores={cutSceneTimer=449}] 5508.601 56.2057 9.250598 373.75 14.53
tp @s[scores={cutSceneTimer=450}] 5508.604 56.20947 9.236494 373.75 14.53
tp @s[scores={cutSceneTimer=451}] 5508.608 56.21323 9.22239 373.75 14.53
tp @s[scores={cutSceneTimer=452}] 5508.611 56.217 9.208286 373.75 14.53
tp @s[scores={cutSceneTimer=453}] 5508.615 56.22076 9.194182 373.75 14.53
tp @s[scores={cutSceneTimer=454}] 5508.618 56.22453 9.180079 373.75 14.53
tp @s[scores={cutSceneTimer=455}] 5508.622 56.22829 9.165975 373.75 14.53
tp @s[scores={cutSceneTimer=456}] 5508.625 56.23206 9.151871 373.75 14.53
tp @s[scores={cutSceneTimer=457}] 5508.628 56.23582 9.137767 373.75 14.53
tp @s[scores={cutSceneTimer=458}] 5508.632 56.23959 9.123663 373.75 14.53
tp @s[scores={cutSceneTimer=459}] 5508.635 56.24335 9.109559 373.75 14.53
tp @s[scores={cutSceneTimer=460}] 5508.639 56.24712 9.095455 373.75 14.53
tp @s[scores={cutSceneTimer=461}] 5508.642 56.25088 9.081351 373.75 14.53
tp @s[scores={cutSceneTimer=462}] 5508.646 56.25465 9.067247 373.75 14.53
tp @s[scores={cutSceneTimer=463}] 5508.649 56.25841 9.053144 373.75 14.53
tp @s[scores={cutSceneTimer=464}] 5508.652 56.26218 9.03904 373.75 14.53
tp @s[scores={cutSceneTimer=465}] 5508.656 56.26594 9.024936 373.75 14.53
tp @s[scores={cutSceneTimer=466}] 5508.659 56.26971 9.010832 373.75 14.53
tp @s[scores={cutSceneTimer=467}] 5508.663 56.27347 8.996728 373.75 14.53
tp @s[scores={cutSceneTimer=468}] 5508.666 56.27724 8.982624 373.75 14.53
tp @s[scores={cutSceneTimer=469}] 5508.669 56.281 8.96852 373.75 14.53
tp @s[scores={cutSceneTimer=470}] 5508.673 56.28477 8.954416 373.75 14.53
tp @s[scores={cutSceneTimer=471}] 5508.676 56.28853 8.940312 373.75 14.53
tp @s[scores={cutSceneTimer=472}] 5508.68 56.2923 8.926208 373.75 14.53
tp @s[scores={cutSceneTimer=473}] 5508.683 56.29606 8.912105 373.75 14.53
tp @s[scores={cutSceneTimer=474}] 5508.687 56.29983 8.898001 373.75 14.53
tp @s[scores={cutSceneTimer=475}] 5508.69 56.30359 8.883897 373.75 14.53
tp @s[scores={cutSceneTimer=476}] 5508.693 56.30736 8.869793 373.75 14.53
tp @s[scores={cutSceneTimer=477}] 5508.697 56.31112 8.855689 373.75 14.53
tp @s[scores={cutSceneTimer=478}] 5508.7 56.31489 8.841585 373.75 14.53
tp @s[scores={cutSceneTimer=479}] 5508.704 56.31865 8.827481 373.75 14.53
tp @s[scores={cutSceneTimer=480}] 5508.707 56.32242 8.813377 373.75 14.53
tp @s[scores={cutSceneTimer=481}] 5508.71 56.32618 8.799273 373.75 14.53
tp @s[scores={cutSceneTimer=482}] 5508.714 56.32995 8.78517 373.75 14.53
tp @s[scores={cutSceneTimer=483}] 5508.717 56.33371 8.771066 373.75 14.53
tp @s[scores={cutSceneTimer=484}] 5508.721 56.33748 8.756962 373.75 14.53
tp @s[scores={cutSceneTimer=485}] 5508.724 56.34124 8.742858 373.75 14.53
tp @s[scores={cutSceneTimer=486}] 5508.728 56.34501 8.728754 373.75 14.53
tp @s[scores={cutSceneTimer=487}] 5508.731 56.34877 8.71465 373.75 14.53
tp @s[scores={cutSceneTimer=488}] 5508.734 56.35254 8.700546 373.75 14.53
tp @s[scores={cutSceneTimer=489}] 5508.738 56.3563 8.686442 373.75 14.53
tp @s[scores={cutSceneTimer=490}] 5508.741 56.36007 8.672338 373.75 14.53
tp @s[scores={cutSceneTimer=491}] 5508.745 56.36383 8.658235 373.75 14.53
tp @s[scores={cutSceneTimer=492}] 5508.748 56.3676 8.644131 373.75 14.53
tp @s[scores={cutSceneTimer=493}] 5508.751 56.37136 8.630027 373.75 14.53
tp @s[scores={cutSceneTimer=494}] 5508.755 56.37513 8.615923 373.75 14.53
tp @s[scores={cutSceneTimer=495}] 5508.758 56.37889 8.601819 373.75 14.53
tp @s[scores={cutSceneTimer=496}] 5508.762 56.38266 8.587715 373.75 14.53
tp @s[scores={cutSceneTimer=497}] 5508.765 56.38643 8.573611 373.75 14.53
tp @s[scores={cutSceneTimer=498}] 5508.769 56.39019 8.559507 373.75 14.53
tp @s[scores={cutSceneTimer=499}] 5508.772 56.39396 8.545403 373.75 14.53
tp @s[scores={cutSceneTimer=500}] 5508.775 56.39772 8.5313 373.75 14.53
tp @s[scores={cutSceneTimer=501}] 5508.779 56.40149 8.517196 373.75 14.53
tp @s[scores={cutSceneTimer=502}] 5508.782 56.40525 8.503092 373.75 14.53
tp @s[scores={cutSceneTimer=503}] 5508.786 56.40902 8.488988 373.75 14.53
tp @s[scores={cutSceneTimer=504}] 5508.789 56.41278 8.474884 373.75 14.53
tp @s[scores={cutSceneTimer=505}] 5508.792 56.41655 8.46078 373.75 14.53
tp @s[scores={cutSceneTimer=506}] 5508.796 56.42031 8.446676 373.75 14.53
tp @s[scores={cutSceneTimer=507}] 5508.799 56.42408 8.432572 373.75 14.53
tp @s[scores={cutSceneTimer=508}] 5508.803 56.42784 8.418468 373.75 14.53
tp @s[scores={cutSceneTimer=509}] 5508.806 56.43161 8.404365 373.75 14.53
tp @s[scores={cutSceneTimer=510}] 5508.81 56.43537 8.390261 373.75 14.53
tp @s[scores={cutSceneTimer=511}] 5508.813 56.43914 8.376157 373.75 14.53
tp @s[scores={cutSceneTimer=512}] 5508.816 56.4429 8.362053 373.75 14.53
tp @s[scores={cutSceneTimer=513}] 5508.82 56.44667 8.347949 373.75 14.53
tp @s[scores={cutSceneTimer=514}] 5508.823 56.45043 8.333845 373.75 14.53
tp @s[scores={cutSceneTimer=515}] 5508.827 56.4542 8.319741 373.75 14.53
tp @s[scores={cutSceneTimer=516}] 5508.83 56.45796 8.305637 373.75 14.53
tp @s[scores={cutSceneTimer=517}] 5508.833 56.46173 8.291533 373.75 14.53
tp @s[scores={cutSceneTimer=518}] 5508.837 56.46549 8.27743 373.75 14.53
tp @s[scores={cutSceneTimer=519}] 5508.84 56.46926 8.263326 373.75 14.53
tp @s[scores={cutSceneTimer=520}] 5508.844 56.47302 8.249222 373.75 14.53
tp @s[scores={cutSceneTimer=521}] 5508.847 56.47679 8.235118 373.75 14.53
tp @s[scores={cutSceneTimer=522}] 5508.851 56.48055 8.221014 373.75 14.53
tp @s[scores={cutSceneTimer=523}] 5508.854 56.48432 8.20691 373.75 14.53
tp @s[scores={cutSceneTimer=524}] 5508.857 56.48808 8.192806 373.75 14.53
tp @s[scores={cutSceneTimer=525}] 5508.861 56.49185 8.178702 373.75 14.53
tp @s[scores={cutSceneTimer=526}] 5508.864 56.49561 8.164598 373.75 14.53
tp @s[scores={cutSceneTimer=527}] 5508.868 56.49938 8.150495 373.75 14.53
tp @s[scores={cutSceneTimer=528}] 5508.871 56.50314 8.136391 373.75 14.53
tp @s[scores={cutSceneTimer=529}] 5508.875 56.50691 8.122287 373.75 14.53
tp @s[scores={cutSceneTimer=530}] 5508.878 56.51067 8.108183 373.75 14.53
tp @s[scores={cutSceneTimer=531}] 5508.881 56.51444 8.094079 373.75 14.53
tp @s[scores={cutSceneTimer=532}] 5508.885 56.5182 8.079975 373.75 14.53
tp @s[scores={cutSceneTimer=533}] 5508.888 56.52197 8.065871 373.75 14.53
tp @s[scores={cutSceneTimer=534}] 5508.892 56.52573 8.051767 373.75 14.53
tp @s[scores={cutSceneTimer=535}] 5508.895 56.5295 8.037663 373.75 14.53
tp @s[scores={cutSceneTimer=536}] 5508.898 56.53326 8.02356 373.75 14.53
tp @s[scores={cutSceneTimer=537}] 5508.902 56.53703 8.009456 373.75 14.53
tp @s[scores={cutSceneTimer=538}] 5508.905 56.54079 7.995352 373.75 14.53
tp @s[scores={cutSceneTimer=539}] 5508.909 56.54456 7.981248 373.75 14.53
tp @s[scores={cutSceneTimer=540}] 5508.912 56.54832 7.967144 373.75 14.53
tp @s[scores={cutSceneTimer=541}] 5508.916 56.55209 7.95304 373.75 14.53
tp @s[scores={cutSceneTimer=542}] 5508.919 56.55585 7.938936 373.75 14.53
tp @s[scores={cutSceneTimer=543}] 5508.922 56.55962 7.924832 373.75 14.53
tp @s[scores={cutSceneTimer=544}] 5508.926 56.56339 7.910728 373.75 14.53
tp @s[scores={cutSceneTimer=545}] 5508.929 56.56715 7.896625 373.75 14.53
tp @s[scores={cutSceneTimer=546}] 5508.933 56.57092 7.882521 373.75 14.53
tp @s[scores={cutSceneTimer=547}] 5508.936 56.57468 7.868417 373.75 14.53
tp @s[scores={cutSceneTimer=548}] 5508.939 56.57845 7.854313 373.75 14.53
tp @s[scores={cutSceneTimer=549}] 5508.943 56.58221 7.840209 373.75 14.53
tp @s[scores={cutSceneTimer=550}] 5508.946 56.58598 7.826105 373.75 14.53
execute as @s[scores={cutSceneTimer=530}] run function hp:cutscenes/fade_in

# ¤Lupin:¤ Don't be nervous. Не волнуйтесь.
execute as @s[scores={cutSceneTimer=311},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=311..400}] run title @s actionbar ["",{"text":""},{"text":"Люпин;","color":"dark_gray"},{"text":" Не волнуйтесь."}]
execute as @s[scores={cutSceneTimer=311},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=318},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=322},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=329},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=333},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=340},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=344},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=351},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral

execute as @s[scores={cutSceneTimer=550}] run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=551}] 5504.47 48.9 26.9325 361.1 -6.785
tp @s[scores={cutSceneTimer=552}] 5504.47 48.9 26.935 361.1 -6.82
tp @s[scores={cutSceneTimer=553}] 5504.47 48.9 26.9375 361.1 -6.855
tp @s[scores={cutSceneTimer=554}] 5504.47 48.9 26.94 361.1 -6.889999
tp @s[scores={cutSceneTimer=555}] 5504.47 48.9 26.9425 361.1 -6.924999
tp @s[scores={cutSceneTimer=556}] 5504.47 48.9 26.945 361.1 -6.959999
tp @s[scores={cutSceneTimer=557}] 5504.47 48.9 26.9475 361.1 -6.994999
tp @s[scores={cutSceneTimer=558}] 5504.47 48.9 26.95 361.1 -7.029999
tp @s[scores={cutSceneTimer=559}] 5504.47 48.9 26.95251 361.1 -7.064999
tp @s[scores={cutSceneTimer=560}] 5504.47 48.9 26.95501 361.1 -7.099998
tp @s[scores={cutSceneTimer=561}] 5504.47 48.9 26.95751 361.1 -7.134998
tp @s[scores={cutSceneTimer=562}] 5504.47 48.9 26.96001 361.1 -7.169998
tp @s[scores={cutSceneTimer=563}] 5504.47 48.9 26.96251 361.1 -7.204998
tp @s[scores={cutSceneTimer=564}] 5504.47 48.9 26.96501 361.1 -7.239998
tp @s[scores={cutSceneTimer=565}] 5504.47 48.9 26.96751 361.1 -7.274998
tp @s[scores={cutSceneTimer=566}] 5504.47 48.9 26.97001 361.1 -7.309998
tp @s[scores={cutSceneTimer=567}] 5504.47 48.9 26.97251 361.1 -7.344997
tp @s[scores={cutSceneTimer=568}] 5504.47 48.9 26.97501 361.1 -7.379997
tp @s[scores={cutSceneTimer=569}] 5504.47 48.9 26.97751 361.1 -7.414997
tp @s[scores={cutSceneTimer=570}] 5504.47 48.9 26.98001 361.1 -7.449997
tp @s[scores={cutSceneTimer=571}] 5504.47 48.9 26.98251 361.1 -7.484997
tp @s[scores={cutSceneTimer=572}] 5504.47 48.9 26.98501 361.1 -7.519997
tp @s[scores={cutSceneTimer=573}] 5504.47 48.9 26.98751 361.1 -7.554996
tp @s[scores={cutSceneTimer=574}] 5504.47 48.9 26.99001 361.1 -7.589996
tp @s[scores={cutSceneTimer=575}] 5504.47 48.9 26.99251 361.1 -7.624996
tp @s[scores={cutSceneTimer=576}] 5504.47 48.9 26.99501 361.1 -7.659996
tp @s[scores={cutSceneTimer=577}] 5504.47 48.9 26.99751 361.1 -7.694996
tp @s[scores={cutSceneTimer=578}] 5504.47 48.9 27.00002 361.1 -7.729996
tp @s[scores={cutSceneTimer=579}] 5504.47 48.9 27.00252 361.1 -7.764996
tp @s[scores={cutSceneTimer=580}] 5504.47 48.9 27.00502 361.1 -7.799995
tp @s[scores={cutSceneTimer=581}] 5504.47 48.9 27.00752 361.1 -7.834995
tp @s[scores={cutSceneTimer=582}] 5504.47 48.9 27.01002 361.1 -7.869995
tp @s[scores={cutSceneTimer=583}] 5504.47 48.9 27.01252 361.1 -7.904995
tp @s[scores={cutSceneTimer=584}] 5504.47 48.9 27.01502 361.1 -7.939995
tp @s[scores={cutSceneTimer=585}] 5504.47 48.9 27.01752 361.1 -7.974995
tp @s[scores={cutSceneTimer=586}] 5504.47 48.9 27.02002 361.1 -8.009995
tp @s[scores={cutSceneTimer=587}] 5504.47 48.9 27.02252 361.1 -8.044994
tp @s[scores={cutSceneTimer=588}] 5504.47 48.9 27.02502 361.1 -8.079994
tp @s[scores={cutSceneTimer=589}] 5504.47 48.9 27.02752 361.1 -8.114994
tp @s[scores={cutSceneTimer=590}] 5504.47 48.9 27.03002 361.1 -8.149994
tp @s[scores={cutSceneTimer=591}] 5504.47 48.9 27.03252 361.1 -8.184994
tp @s[scores={cutSceneTimer=592}] 5504.47 48.9 27.03502 361.1 -8.219994
tp @s[scores={cutSceneTimer=593}] 5504.47 48.9 27.03752 361.1 -8.254993
tp @s[scores={cutSceneTimer=594}] 5504.47 48.9 27.04002 361.1 -8.289993
tp @s[scores={cutSceneTimer=595}] 5504.47 48.9 27.04252 361.1 -8.324993
tp @s[scores={cutSceneTimer=596}] 5504.47 48.9 27.04502 361.1 -8.359993
tp @s[scores={cutSceneTimer=597}] 5504.47 48.9 27.04753 361.1 -8.394993
tp @s[scores={cutSceneTimer=598}] 5504.47 48.9 27.05003 361.1 -8.429993
tp @s[scores={cutSceneTimer=599}] 5504.47 48.9 27.05253 361.1 -8.464993
tp @s[scores={cutSceneTimer=600}] 5504.47 48.9 27.05503 361.1 -8.499992
tp @s[scores={cutSceneTimer=601}] 5504.47 48.9 27.05753 361.1 -8.534992
tp @s[scores={cutSceneTimer=602}] 5504.47 48.9 27.06003 361.1 -8.569992
tp @s[scores={cutSceneTimer=603}] 5504.47 48.9 27.06253 361.1 -8.604992
tp @s[scores={cutSceneTimer=604}] 5504.47 48.9 27.06503 361.1 -8.639992
tp @s[scores={cutSceneTimer=605}] 5504.47 48.9 27.06753 361.1 -8.674992
tp @s[scores={cutSceneTimer=606}] 5504.47 48.9 27.07003 361.1 -8.709991
tp @s[scores={cutSceneTimer=607}] 5504.47 48.9 27.07253 361.1 -8.744991
tp @s[scores={cutSceneTimer=608}] 5504.47 48.9 27.07503 361.1 -8.779991
tp @s[scores={cutSceneTimer=609}] 5504.47 48.9 27.07753 361.1 -8.814991
tp @s[scores={cutSceneTimer=610}] 5504.47 48.9 27.08003 361.1 -8.849991
tp @s[scores={cutSceneTimer=611}] 5504.47 48.9 27.08253 361.1 -8.884991
tp @s[scores={cutSceneTimer=612}] 5504.47 48.9 27.08503 361.1 -8.919991
tp @s[scores={cutSceneTimer=613}] 5504.47 48.9 27.08753 361.1 -8.95499
tp @s[scores={cutSceneTimer=614}] 5504.47 48.9 27.09003 361.1 -8.98999
tp @s[scores={cutSceneTimer=615}] 5504.47 48.9 27.09254 361.1 -9.02499
tp @s[scores={cutSceneTimer=616}] 5504.47 48.9 27.09504 361.1 -9.05999
tp @s[scores={cutSceneTimer=617}] 5504.47 48.9 27.09754 361.1 -9.09499
tp @s[scores={cutSceneTimer=618}] 5504.47 48.9 27.10004 361.1 -9.12999
tp @s[scores={cutSceneTimer=619}] 5504.47 48.9 27.10254 361.1 -9.164989
tp @s[scores={cutSceneTimer=620}] 5504.47 48.9 27.10504 361.1 -9.199989
tp @s[scores={cutSceneTimer=621}] 5504.47 48.9 27.10754 361.1 -9.234989
tp @s[scores={cutSceneTimer=622}] 5504.47 48.9 27.11004 361.1 -9.269989
tp @s[scores={cutSceneTimer=623}] 5504.47 48.9 27.11254 361.1 -9.304989
tp @s[scores={cutSceneTimer=624}] 5504.47 48.9 27.11504 361.1 -9.339989
tp @s[scores={cutSceneTimer=625}] 5504.47 48.9 27.11754 361.1 -9.374989
tp @s[scores={cutSceneTimer=626}] 5504.47 48.9 27.12004 361.1 -9.409988
tp @s[scores={cutSceneTimer=627}] 5504.47 48.9 27.12254 361.1 -9.444988
tp @s[scores={cutSceneTimer=628}] 5504.47 48.9 27.12504 361.1 -9.479988
tp @s[scores={cutSceneTimer=629}] 5504.47 48.9 27.12754 361.1 -9.514988
tp @s[scores={cutSceneTimer=630}] 5504.47 48.9 27.13004 361.1 -9.549988
tp @s[scores={cutSceneTimer=631}] 5504.47 48.9 27.13254 361.1 -9.584988
tp @s[scores={cutSceneTimer=632}] 5504.47 48.9 27.13504 361.1 -9.619987
tp @s[scores={cutSceneTimer=633}] 5504.47 48.9 27.13754 361.1 -9.654987
tp @s[scores={cutSceneTimer=634}] 5504.47 48.9 27.14005 361.1 -9.689987
tp @s[scores={cutSceneTimer=635}] 5504.47 48.9 27.14255 361.1 -9.724987
tp @s[scores={cutSceneTimer=636}] 5504.47 48.9 27.14505 361.1 -9.759987
tp @s[scores={cutSceneTimer=637}] 5504.47 48.9 27.14755 361.1 -9.794987
tp @s[scores={cutSceneTimer=638}] 5504.47 48.9 27.15005 361.1 -9.829987
tp @s[scores={cutSceneTimer=639}] 5504.47 48.9 27.15255 361.1 -9.864986
tp @s[scores={cutSceneTimer=640}] 5504.47 48.9 27.15505 361.1 -9.899986
tp @s[scores={cutSceneTimer=641}] 5504.47 48.9 27.15755 361.1 -9.934986
tp @s[scores={cutSceneTimer=642}] 5504.47 48.9 27.16005 361.1 -9.969986
tp @s[scores={cutSceneTimer=643}] 5504.47 48.9 27.16255 361.1 -10.00499
tp @s[scores={cutSceneTimer=644}] 5504.47 48.9 27.16505 361.1 -10.03999
tp @s[scores={cutSceneTimer=645}] 5504.47 48.9 27.16755 361.1 -10.07499
tp @s[scores={cutSceneTimer=646}] 5504.47 48.9 27.17005 361.1 -10.10999
tp @s[scores={cutSceneTimer=647}] 5504.47 48.9 27.17255 361.1 -10.14499
tp @s[scores={cutSceneTimer=648}] 5504.47 48.9 27.17505 361.1 -10.17999
tp @s[scores={cutSceneTimer=649}] 5504.47 48.9 27.17755 361.1 -10.21498
tp @s[scores={cutSceneTimer=650}] 5504.47 48.9 27.18005 361.1 -10.24998
tp @s[scores={cutSceneTimer=651}] 5504.47 48.9 27.18255 361.1 -10.28498
tp @s[scores={cutSceneTimer=652}] 5504.47 48.9 27.18505 361.1 -10.31998
tp @s[scores={cutSceneTimer=653}] 5504.47 48.9 27.18756 361.1 -10.35498
tp @s[scores={cutSceneTimer=654}] 5504.47 48.9 27.19006 361.1 -10.38998
tp @s[scores={cutSceneTimer=655}] 5504.47 48.9 27.19256 361.1 -10.42498
tp @s[scores={cutSceneTimer=656}] 5504.47 48.9 27.19506 361.1 -10.45998
tp @s[scores={cutSceneTimer=657}] 5504.47 48.9 27.19756 361.1 -10.49498
tp @s[scores={cutSceneTimer=658}] 5504.47 48.9 27.20006 361.1 -10.52998
tp @s[scores={cutSceneTimer=659}] 5504.47 48.9 27.20256 361.1 -10.56498
tp @s[scores={cutSceneTimer=660}] 5504.47 48.9 27.20506 361.1 -10.59998
tp @s[scores={cutSceneTimer=661}] 5504.47 48.9 27.20756 361.1 -10.63498
tp @s[scores={cutSceneTimer=662}] 5504.47 48.9 27.21006 361.1 -10.66998
tp @s[scores={cutSceneTimer=663}] 5504.47 48.9 27.21256 361.1 -10.70498
tp @s[scores={cutSceneTimer=664}] 5504.47 48.9 27.21506 361.1 -10.73998
tp @s[scores={cutSceneTimer=665}] 5504.47 48.9 27.21756 361.1 -10.77498
tp @s[scores={cutSceneTimer=666}] 5504.47 48.9 27.22006 361.1 -10.80998
tp @s[scores={cutSceneTimer=667}] 5504.47 48.9 27.22256 361.1 -10.84498
tp @s[scores={cutSceneTimer=668}] 5504.47 48.9 27.22506 361.1 -10.87998
tp @s[scores={cutSceneTimer=669}] 5504.47 48.9 27.22756 361.1 -10.91498
tp @s[scores={cutSceneTimer=670}] 5504.47 48.9 27.23006 361.1 -10.94998
tp @s[scores={cutSceneTimer=671}] 5504.47 48.9 27.23256 361.1 -10.98498
tp @s[scores={cutSceneTimer=672}] 5504.47 48.9 27.23507 361.1 -11.01998
tp @s[scores={cutSceneTimer=673}] 5504.47 48.9 27.23757 361.1 -11.05498
tp @s[scores={cutSceneTimer=674}] 5504.47 48.9 27.24007 361.1 -11.08998
tp @s[scores={cutSceneTimer=675}] 5504.47 48.9 27.24257 361.1 -11.12498
tp @s[scores={cutSceneTimer=676}] 5504.47 48.9 27.24507 361.1 -11.15998
tp @s[scores={cutSceneTimer=677}] 5504.47 48.9 27.24757 361.1 -11.19498
tp @s[scores={cutSceneTimer=678}] 5504.47 48.9 27.25007 361.1 -11.22998
tp @s[scores={cutSceneTimer=679}] 5504.47 48.9 27.25257 361.1 -11.26498
tp @s[scores={cutSceneTimer=680}] 5504.47 48.9 27.25507 361.1 -11.29998
tp @s[scores={cutSceneTimer=681}] 5504.47 48.9 27.25757 361.1 -11.33498
tp @s[scores={cutSceneTimer=682}] 5504.47 48.9 27.26007 361.1 -11.36998
tp @s[scores={cutSceneTimer=683}] 5504.47 48.9 27.26257 361.1 -11.40498
tp @s[scores={cutSceneTimer=684}] 5504.47 48.9 27.26507 361.1 -11.43998
tp @s[scores={cutSceneTimer=685}] 5504.47 48.9 27.26757 361.1 -11.47498
tp @s[scores={cutSceneTimer=686}] 5504.47 48.9 27.27007 361.1 -11.50998
tp @s[scores={cutSceneTimer=687}] 5504.47 48.9 27.27257 361.1 -11.54498
tp @s[scores={cutSceneTimer=688}] 5504.47 48.9 27.27507 361.1 -11.57998
tp @s[scores={cutSceneTimer=689}] 5504.47 48.9 27.27757 361.1 -11.61498
tp @s[scores={cutSceneTimer=690}] 5504.47 48.9 27.28008 361.1 -11.64998
tp @s[scores={cutSceneTimer=691}] 5504.47 48.9 27.28258 361.1 -11.68498
tp @s[scores={cutSceneTimer=692}] 5504.47 48.9 27.28508 361.1 -11.71998
tp @s[scores={cutSceneTimer=693}] 5504.47 48.9 27.28758 361.1 -11.75498
tp @s[scores={cutSceneTimer=694}] 5504.47 48.9 27.29008 361.1 -11.78998
tp @s[scores={cutSceneTimer=695}] 5504.47 48.9 27.29258 361.1 -11.82498
tp @s[scores={cutSceneTimer=696}] 5504.47 48.9 27.29508 361.1 -11.85998
tp @s[scores={cutSceneTimer=697}] 5504.47 48.9 27.29758 361.1 -11.89498
tp @s[scores={cutSceneTimer=698}] 5504.47 48.9 27.30008 361.1 -11.92998
tp @s[scores={cutSceneTimer=699}] 5504.47 48.9 27.30258 361.1 -11.96498
tp @s[scores={cutSceneTimer=700}] 5504.47 48.9 27.30508 361.1 -11.99998
execute as @s[scores={cutSceneTimer=680}] run function hp:cutscenes/fade_in


execute as @s[scores={cutSceneTimer=700}] run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=701}] 5504.59 56.0202 30.735 -0.04 2.23
tp @s[scores={cutSceneTimer=702}] 5504.59 56.02039 30.73001 -0.04 2.23
tp @s[scores={cutSceneTimer=703}] 5504.59 56.02058 30.72501 -0.04 2.23
tp @s[scores={cutSceneTimer=704}] 5504.59 56.02078 30.72002 -0.04 2.23
tp @s[scores={cutSceneTimer=705}] 5504.59 56.02097 30.71502 -0.04 2.23
tp @s[scores={cutSceneTimer=706}] 5504.59 56.02117 30.71003 -0.04 2.23
tp @s[scores={cutSceneTimer=707}] 5504.59 56.02136 30.70503 -0.04 2.23
tp @s[scores={cutSceneTimer=708}] 5504.59 56.02156 30.70004 -0.04 2.23
tp @s[scores={cutSceneTimer=709}] 5504.59 56.02175 30.69504 -0.04 2.23
tp @s[scores={cutSceneTimer=710}] 5504.59 56.02195 30.69005 -0.04 2.23
tp @s[scores={cutSceneTimer=711}] 5504.59 56.02214 30.68505 -0.04 2.23
tp @s[scores={cutSceneTimer=712}] 5504.59 56.02234 30.68006 -0.04 2.23
tp @s[scores={cutSceneTimer=713}] 5504.59 56.02253 30.67506 -0.04 2.23
tp @s[scores={cutSceneTimer=714}] 5504.59 56.02272 30.67006 -0.04 2.23
tp @s[scores={cutSceneTimer=715}] 5504.59 56.02292 30.66507 -0.04 2.23
tp @s[scores={cutSceneTimer=716}] 5504.59 56.02311 30.66007 -0.04 2.23
tp @s[scores={cutSceneTimer=717}] 5504.59 56.02331 30.65508 -0.04 2.23
tp @s[scores={cutSceneTimer=718}] 5504.59 56.0235 30.65008 -0.04 2.23
tp @s[scores={cutSceneTimer=719}] 5504.59 56.0237 30.64509 -0.04 2.23
tp @s[scores={cutSceneTimer=720}] 5504.59 56.02389 30.64009 -0.04 2.23
tp @s[scores={cutSceneTimer=721}] 5504.59 56.02409 30.6351 -0.04 2.23
tp @s[scores={cutSceneTimer=722}] 5504.59 56.02428 30.6301 -0.04 2.23
tp @s[scores={cutSceneTimer=723}] 5504.59 56.02448 30.62511 -0.04 2.23
tp @s[scores={cutSceneTimer=724}] 5504.59 56.02467 30.62011 -0.04 2.23
tp @s[scores={cutSceneTimer=725}] 5504.59 56.02486 30.61512 -0.04 2.23
tp @s[scores={cutSceneTimer=726}] 5504.59 56.02506 30.61012 -0.04 2.23
tp @s[scores={cutSceneTimer=727}] 5504.59 56.02525 30.60513 -0.04 2.23
tp @s[scores={cutSceneTimer=728}] 5504.59 56.02545 30.60013 -0.04 2.23
tp @s[scores={cutSceneTimer=729}] 5504.59 56.02564 30.59513 -0.04 2.23
tp @s[scores={cutSceneTimer=730}] 5504.59 56.02584 30.59014 -0.04 2.23
tp @s[scores={cutSceneTimer=731}] 5504.59 56.02603 30.58514 -0.04 2.23
tp @s[scores={cutSceneTimer=732}] 5504.59 56.02623 30.58015 -0.04 2.23
tp @s[scores={cutSceneTimer=733}] 5504.59 56.02642 30.57515 -0.04 2.23
tp @s[scores={cutSceneTimer=734}] 5504.59 56.02662 30.57016 -0.04 2.23
tp @s[scores={cutSceneTimer=735}] 5504.59 56.02681 30.56516 -0.04 2.23
tp @s[scores={cutSceneTimer=736}] 5504.59 56.027 30.56017 -0.04 2.23
tp @s[scores={cutSceneTimer=737}] 5504.59 56.0272 30.55517 -0.04 2.23
tp @s[scores={cutSceneTimer=738}] 5504.59 56.02739 30.55018 -0.04 2.23
tp @s[scores={cutSceneTimer=739}] 5504.59 56.02759 30.54518 -0.04 2.23
tp @s[scores={cutSceneTimer=740}] 5504.59 56.02778 30.54019 -0.04 2.23
tp @s[scores={cutSceneTimer=741}] 5504.59 56.02798 30.53519 -0.04 2.23
tp @s[scores={cutSceneTimer=742}] 5504.59 56.02817 30.5302 -0.04 2.23
tp @s[scores={cutSceneTimer=743}] 5504.59 56.02837 30.5252 -0.04 2.23
tp @s[scores={cutSceneTimer=744}] 5504.59 56.02856 30.5202 -0.04 2.23
tp @s[scores={cutSceneTimer=745}] 5504.59 56.02876 30.51521 -0.04 2.23
tp @s[scores={cutSceneTimer=746}] 5504.59 56.02895 30.51021 -0.04 2.23
tp @s[scores={cutSceneTimer=747}] 5504.59 56.02914 30.50522 -0.04 2.23
tp @s[scores={cutSceneTimer=748}] 5504.59 56.02934 30.50022 -0.04 2.23
tp @s[scores={cutSceneTimer=749}] 5504.59 56.02953 30.49523 -0.04 2.23
tp @s[scores={cutSceneTimer=750}] 5504.59 56.02973 30.49023 -0.04 2.23
tp @s[scores={cutSceneTimer=751}] 5504.59 56.02992 30.48524 -0.04 2.23
tp @s[scores={cutSceneTimer=752}] 5504.59 56.03012 30.48024 -0.04 2.23
tp @s[scores={cutSceneTimer=753}] 5504.59 56.03031 30.47525 -0.04 2.23
tp @s[scores={cutSceneTimer=754}] 5504.59 56.03051 30.47025 -0.04 2.23
tp @s[scores={cutSceneTimer=755}] 5504.59 56.0307 30.46526 -0.04 2.23
tp @s[scores={cutSceneTimer=756}] 5504.59 56.0309 30.46026 -0.04 2.23
tp @s[scores={cutSceneTimer=757}] 5504.59 56.03109 30.45527 -0.04 2.23
tp @s[scores={cutSceneTimer=758}] 5504.59 56.03128 30.45027 -0.04 2.23
tp @s[scores={cutSceneTimer=759}] 5504.59 56.03148 30.44527 -0.04 2.23
tp @s[scores={cutSceneTimer=760}] 5504.59 56.03167 30.44028 -0.04 2.23
tp @s[scores={cutSceneTimer=761}] 5504.59 56.03187 30.43528 -0.04 2.23
tp @s[scores={cutSceneTimer=762}] 5504.59 56.03206 30.43029 -0.04 2.23
tp @s[scores={cutSceneTimer=763}] 5504.59 56.03226 30.42529 -0.04 2.23
tp @s[scores={cutSceneTimer=764}] 5504.59 56.03245 30.4203 -0.04 2.23
tp @s[scores={cutSceneTimer=765}] 5504.59 56.03265 30.4153 -0.04 2.23
tp @s[scores={cutSceneTimer=766}] 5504.59 56.03284 30.41031 -0.04 2.23
tp @s[scores={cutSceneTimer=767}] 5504.59 56.03304 30.40531 -0.04 2.23
tp @s[scores={cutSceneTimer=768}] 5504.59 56.03323 30.40032 -0.04 2.23
tp @s[scores={cutSceneTimer=769}] 5504.59 56.03342 30.39532 -0.04 2.23
tp @s[scores={cutSceneTimer=770}] 5504.59 56.03362 30.39033 -0.04 2.23
tp @s[scores={cutSceneTimer=771}] 5504.59 56.03381 30.38533 -0.04 2.23
tp @s[scores={cutSceneTimer=772}] 5504.59 56.03401 30.38033 -0.04 2.23
tp @s[scores={cutSceneTimer=773}] 5504.59 56.0342 30.37534 -0.04 2.23
tp @s[scores={cutSceneTimer=774}] 5504.59 56.0344 30.37034 -0.04 2.23
tp @s[scores={cutSceneTimer=775}] 5504.59 56.03459 30.36535 -0.04 2.23
tp @s[scores={cutSceneTimer=776}] 5504.59 56.03479 30.36035 -0.04 2.23
tp @s[scores={cutSceneTimer=777}] 5504.59 56.03498 30.35536 -0.04 2.23
tp @s[scores={cutSceneTimer=778}] 5504.59 56.03518 30.35036 -0.04 2.23
tp @s[scores={cutSceneTimer=779}] 5504.59 56.03537 30.34537 -0.04 2.23
tp @s[scores={cutSceneTimer=780}] 5504.59 56.03556 30.34037 -0.04 2.23
tp @s[scores={cutSceneTimer=781}] 5504.59 56.03576 30.33538 -0.04 2.23
tp @s[scores={cutSceneTimer=782}] 5504.59 56.03595 30.33038 -0.04 2.23
tp @s[scores={cutSceneTimer=783}] 5504.59 56.03615 30.32539 -0.04 2.23
tp @s[scores={cutSceneTimer=784}] 5504.59 56.03634 30.32039 -0.04 2.23
tp @s[scores={cutSceneTimer=785}] 5504.59 56.03654 30.3154 -0.04 2.23
tp @s[scores={cutSceneTimer=786}] 5504.59 56.03673 30.3104 -0.04 2.23
tp @s[scores={cutSceneTimer=787}] 5504.59 56.03693 30.3054 -0.04 2.23
tp @s[scores={cutSceneTimer=788}] 5504.59 56.03712 30.30041 -0.04 2.23
tp @s[scores={cutSceneTimer=789}] 5504.59 56.03732 30.29541 -0.04 2.23
tp @s[scores={cutSceneTimer=790}] 5504.59 56.03751 30.29042 -0.04 2.23
tp @s[scores={cutSceneTimer=791}] 5504.59 56.0377 30.28542 -0.04 2.23
tp @s[scores={cutSceneTimer=792}] 5504.59 56.0379 30.28043 -0.04 2.23
tp @s[scores={cutSceneTimer=793}] 5504.59 56.03809 30.27543 -0.04 2.23
tp @s[scores={cutSceneTimer=794}] 5504.59 56.03829 30.27044 -0.04 2.23
tp @s[scores={cutSceneTimer=795}] 5504.59 56.03848 30.26544 -0.04 2.23
tp @s[scores={cutSceneTimer=796}] 5504.59 56.03868 30.26045 -0.04 2.23
tp @s[scores={cutSceneTimer=797}] 5504.59 56.03887 30.25545 -0.04 2.23
tp @s[scores={cutSceneTimer=798}] 5504.59 56.03907 30.25046 -0.04 2.23
tp @s[scores={cutSceneTimer=799}] 5504.59 56.03926 30.24546 -0.04 2.23
tp @s[scores={cutSceneTimer=800}] 5504.59 56.03946 30.24047 -0.04 2.23
tp @s[scores={cutSceneTimer=801}] 5504.59 56.03965 30.23547 -0.04 2.23
tp @s[scores={cutSceneTimer=802}] 5504.59 56.03984 30.23047 -0.04 2.23
tp @s[scores={cutSceneTimer=803}] 5504.59 56.04004 30.22548 -0.04 2.23
tp @s[scores={cutSceneTimer=804}] 5504.59 56.04023 30.22048 -0.04 2.23
tp @s[scores={cutSceneTimer=805}] 5504.59 56.04043 30.21549 -0.04 2.23
tp @s[scores={cutSceneTimer=806}] 5504.59 56.04062 30.21049 -0.04 2.23
tp @s[scores={cutSceneTimer=807}] 5504.59 56.04082 30.2055 -0.04 2.23
tp @s[scores={cutSceneTimer=808}] 5504.59 56.04101 30.2005 -0.04 2.23
tp @s[scores={cutSceneTimer=809}] 5504.59 56.04121 30.19551 -0.04 2.23
tp @s[scores={cutSceneTimer=810}] 5504.59 56.0414 30.19051 -0.04 2.23
tp @s[scores={cutSceneTimer=811}] 5504.59 56.0416 30.18552 -0.04 2.23
tp @s[scores={cutSceneTimer=812}] 5504.59 56.04179 30.18052 -0.04 2.23
tp @s[scores={cutSceneTimer=813}] 5504.59 56.04198 30.17553 -0.04 2.23
tp @s[scores={cutSceneTimer=814}] 5504.59 56.04218 30.17053 -0.04 2.23
tp @s[scores={cutSceneTimer=815}] 5504.59 56.04237 30.16553 -0.04 2.23
tp @s[scores={cutSceneTimer=816}] 5504.59 56.04257 30.16054 -0.04 2.23
tp @s[scores={cutSceneTimer=817}] 5504.59 56.04276 30.15554 -0.04 2.23
tp @s[scores={cutSceneTimer=818}] 5504.59 56.04296 30.15055 -0.04 2.23
tp @s[scores={cutSceneTimer=819}] 5504.59 56.04315 30.14555 -0.04 2.23
tp @s[scores={cutSceneTimer=820}] 5504.59 56.04335 30.14056 -0.04 2.23
tp @s[scores={cutSceneTimer=821}] 5504.59 56.04354 30.13556 -0.04 2.23
tp @s[scores={cutSceneTimer=822}] 5504.59 56.04374 30.13057 -0.04 2.23
tp @s[scores={cutSceneTimer=823}] 5504.59 56.04393 30.12557 -0.04 2.23
tp @s[scores={cutSceneTimer=824}] 5504.59 56.04412 30.12058 -0.04 2.23
tp @s[scores={cutSceneTimer=825}] 5504.59 56.04432 30.11558 -0.04 2.23
tp @s[scores={cutSceneTimer=826}] 5504.59 56.04451 30.11059 -0.04 2.23
tp @s[scores={cutSceneTimer=827}] 5504.59 56.04471 30.10559 -0.04 2.23
tp @s[scores={cutSceneTimer=828}] 5504.59 56.0449 30.1006 -0.04 2.23
tp @s[scores={cutSceneTimer=829}] 5504.59 56.0451 30.0956 -0.04 2.23
tp @s[scores={cutSceneTimer=830}] 5504.59 56.04529 30.0906 -0.04 2.23
tp @s[scores={cutSceneTimer=831}] 5504.59 56.04549 30.08561 -0.04 2.23
tp @s[scores={cutSceneTimer=832}] 5504.59 56.04568 30.08061 -0.04 2.23
tp @s[scores={cutSceneTimer=833}] 5504.59 56.04588 30.07562 -0.04 2.23
tp @s[scores={cutSceneTimer=834}] 5504.59 56.04607 30.07062 -0.04 2.23
tp @s[scores={cutSceneTimer=835}] 5504.59 56.04626 30.06563 -0.04 2.23
tp @s[scores={cutSceneTimer=836}] 5504.59 56.04646 30.06063 -0.04 2.23
tp @s[scores={cutSceneTimer=837}] 5504.59 56.04665 30.05564 -0.04 2.23
tp @s[scores={cutSceneTimer=838}] 5504.59 56.04685 30.05064 -0.04 2.23
tp @s[scores={cutSceneTimer=839}] 5504.59 56.04704 30.04565 -0.04 2.23
tp @s[scores={cutSceneTimer=840}] 5504.59 56.04724 30.04065 -0.04 2.23
tp @s[scores={cutSceneTimer=841}] 5504.59 56.04743 30.03566 -0.04 2.23
tp @s[scores={cutSceneTimer=842}] 5504.59 56.04763 30.03066 -0.04 2.23
tp @s[scores={cutSceneTimer=843}] 5504.59 56.04782 30.02567 -0.04 2.23
tp @s[scores={cutSceneTimer=844}] 5504.59 56.04802 30.02067 -0.04 2.23
tp @s[scores={cutSceneTimer=845}] 5504.59 56.04821 30.01567 -0.04 2.23
tp @s[scores={cutSceneTimer=846}] 5504.59 56.0484 30.01068 -0.04 2.23
tp @s[scores={cutSceneTimer=847}] 5504.59 56.0486 30.00568 -0.04 2.23
tp @s[scores={cutSceneTimer=848}] 5504.59 56.04879 30.00069 -0.04 2.23
tp @s[scores={cutSceneTimer=849}] 5504.59 56.04899 29.99569 -0.04 2.23
tp @s[scores={cutSceneTimer=850}] 5504.59 56.04918 29.9907 -0.04 2.23
tp @s[scores={cutSceneTimer=851}] 5504.59 56.04938 29.9857 -0.04 2.23
tp @s[scores={cutSceneTimer=852}] 5504.59 56.04957 29.98071 -0.04 2.23
tp @s[scores={cutSceneTimer=853}] 5504.59 56.04977 29.97571 -0.04 2.23
tp @s[scores={cutSceneTimer=854}] 5504.59 56.04996 29.97072 -0.04 2.23
tp @s[scores={cutSceneTimer=855}] 5504.59 56.05016 29.96572 -0.04 2.23
tp @s[scores={cutSceneTimer=856}] 5504.59 56.05035 29.96073 -0.04 2.23
tp @s[scores={cutSceneTimer=857}] 5504.59 56.05054 29.95573 -0.04 2.23
tp @s[scores={cutSceneTimer=858}] 5504.59 56.05074 29.95074 -0.04 2.23
tp @s[scores={cutSceneTimer=859}] 5504.59 56.05093 29.94574 -0.04 2.23
tp @s[scores={cutSceneTimer=860}] 5504.59 56.05113 29.94074 -0.04 2.23
tp @s[scores={cutSceneTimer=861}] 5504.59 56.05132 29.93575 -0.04 2.23
tp @s[scores={cutSceneTimer=862}] 5504.59 56.05152 29.93075 -0.04 2.23
tp @s[scores={cutSceneTimer=863}] 5504.59 56.05171 29.92576 -0.04 2.23
tp @s[scores={cutSceneTimer=864}] 5504.59 56.05191 29.92076 -0.04 2.23
tp @s[scores={cutSceneTimer=865}] 5504.59 56.0521 29.91577 -0.04 2.23
tp @s[scores={cutSceneTimer=866}] 5504.59 56.0523 29.91077 -0.04 2.23
tp @s[scores={cutSceneTimer=867}] 5504.59 56.05249 29.90578 -0.04 2.23
tp @s[scores={cutSceneTimer=868}] 5504.59 56.05268 29.90078 -0.04 2.23
tp @s[scores={cutSceneTimer=869}] 5504.59 56.05288 29.89579 -0.04 2.23
tp @s[scores={cutSceneTimer=870}] 5504.59 56.05307 29.89079 -0.04 2.23
tp @s[scores={cutSceneTimer=871}] 5504.59 56.05327 29.8858 -0.04 2.23
tp @s[scores={cutSceneTimer=872}] 5504.59 56.05346 29.8808 -0.04 2.23
tp @s[scores={cutSceneTimer=873}] 5504.59 56.05366 29.8758 -0.04 2.23
tp @s[scores={cutSceneTimer=874}] 5504.59 56.05385 29.87081 -0.04 2.23
tp @s[scores={cutSceneTimer=875}] 5504.59 56.05405 29.86581 -0.04 2.23
tp @s[scores={cutSceneTimer=876}] 5504.59 56.05424 29.86082 -0.04 2.23
tp @s[scores={cutSceneTimer=877}] 5504.59 56.05444 29.85582 -0.04 2.23
tp @s[scores={cutSceneTimer=878}] 5504.59 56.05463 29.85083 -0.04 2.23
tp @s[scores={cutSceneTimer=879}] 5504.59 56.05482 29.84583 -0.04 2.23
tp @s[scores={cutSceneTimer=880}] 5504.59 56.05502 29.84084 -0.04 2.23
tp @s[scores={cutSceneTimer=881}] 5504.59 56.05521 29.83584 -0.04 2.23
tp @s[scores={cutSceneTimer=882}] 5504.59 56.05541 29.83085 -0.04 2.23
tp @s[scores={cutSceneTimer=883}] 5504.59 56.0556 29.82585 -0.04 2.23
tp @s[scores={cutSceneTimer=884}] 5504.59 56.0558 29.82086 -0.04 2.23
tp @s[scores={cutSceneTimer=885}] 5504.59 56.05599 29.81586 -0.04 2.23
tp @s[scores={cutSceneTimer=886}] 5504.59 56.05619 29.81087 -0.04 2.23
tp @s[scores={cutSceneTimer=887}] 5504.59 56.05638 29.80587 -0.04 2.23
tp @s[scores={cutSceneTimer=888}] 5504.59 56.05658 29.80087 -0.04 2.23
tp @s[scores={cutSceneTimer=889}] 5504.59 56.05677 29.79588 -0.04 2.23
tp @s[scores={cutSceneTimer=890}] 5504.59 56.05696 29.79088 -0.04 2.23
tp @s[scores={cutSceneTimer=891}] 5504.59 56.05716 29.78589 -0.04 2.23
tp @s[scores={cutSceneTimer=892}] 5504.59 56.05735 29.78089 -0.04 2.23
tp @s[scores={cutSceneTimer=893}] 5504.59 56.05755 29.7759 -0.04 2.23
tp @s[scores={cutSceneTimer=894}] 5504.59 56.05774 29.7709 -0.04 2.23
tp @s[scores={cutSceneTimer=895}] 5504.59 56.05794 29.76591 -0.04 2.23
tp @s[scores={cutSceneTimer=896}] 5504.59 56.05813 29.76091 -0.04 2.23
tp @s[scores={cutSceneTimer=897}] 5504.59 56.05833 29.75592 -0.04 2.23
tp @s[scores={cutSceneTimer=898}] 5504.59 56.05852 29.75092 -0.04 2.23
tp @s[scores={cutSceneTimer=899}] 5504.59 56.05872 29.74593 -0.04 2.23
tp @s[scores={cutSceneTimer=900}] 5504.59 56.05891 29.74093 -0.04 2.23
tp @s[scores={cutSceneTimer=901}] 5504.59 56.0591 29.73594 -0.04 2.23
tp @s[scores={cutSceneTimer=902}] 5504.59 56.0593 29.73094 -0.04 2.23
tp @s[scores={cutSceneTimer=903}] 5504.59 56.05949 29.72594 -0.04 2.23
tp @s[scores={cutSceneTimer=904}] 5504.59 56.05969 29.72095 -0.04 2.23
tp @s[scores={cutSceneTimer=905}] 5504.59 56.05988 29.71595 -0.04 2.23
tp @s[scores={cutSceneTimer=906}] 5504.59 56.06008 29.71096 -0.04 2.23
tp @s[scores={cutSceneTimer=907}] 5504.59 56.06027 29.70596 -0.04 2.23
tp @s[scores={cutSceneTimer=908}] 5504.59 56.06047 29.70097 -0.04 2.23
tp @s[scores={cutSceneTimer=909}] 5504.59 56.06066 29.69597 -0.04 2.23
tp @s[scores={cutSceneTimer=910}] 5504.59 56.06086 29.69098 -0.04 2.23
tp @s[scores={cutSceneTimer=911}] 5504.59 56.06105 29.68598 -0.04 2.23
tp @s[scores={cutSceneTimer=912}] 5504.59 56.06124 29.68099 -0.04 2.23
tp @s[scores={cutSceneTimer=913}] 5504.59 56.06144 29.67599 -0.04 2.23
tp @s[scores={cutSceneTimer=914}] 5504.59 56.06163 29.671 -0.04 2.23
tp @s[scores={cutSceneTimer=915}] 5504.59 56.06183 29.666 -0.04 2.23
tp @s[scores={cutSceneTimer=916}] 5504.59 56.06202 29.66101 -0.04 2.23
tp @s[scores={cutSceneTimer=917}] 5504.59 56.06222 29.65601 -0.04 2.23
tp @s[scores={cutSceneTimer=918}] 5504.59 56.06241 29.65101 -0.04 2.23
tp @s[scores={cutSceneTimer=919}] 5504.59 56.06261 29.64602 -0.04 2.23
tp @s[scores={cutSceneTimer=920}] 5504.59 56.0628 29.64102 -0.04 2.23
tp @s[scores={cutSceneTimer=921}] 5504.59 56.063 29.63603 -0.04 2.23
tp @s[scores={cutSceneTimer=922}] 5504.59 56.06319 29.63103 -0.04 2.23
tp @s[scores={cutSceneTimer=923}] 5504.59 56.06339 29.62604 -0.04 2.23
tp @s[scores={cutSceneTimer=924}] 5504.59 56.06358 29.62104 -0.04 2.23
tp @s[scores={cutSceneTimer=925}] 5504.59 56.06377 29.61605 -0.04 2.23
tp @s[scores={cutSceneTimer=926}] 5504.59 56.06397 29.61105 -0.04 2.23
tp @s[scores={cutSceneTimer=927}] 5504.59 56.06416 29.60606 -0.04 2.23
tp @s[scores={cutSceneTimer=928}] 5504.59 56.06436 29.60106 -0.04 2.23
tp @s[scores={cutSceneTimer=929}] 5504.59 56.06455 29.59607 -0.04 2.23
tp @s[scores={cutSceneTimer=930}] 5504.59 56.06475 29.59107 -0.04 2.23
tp @s[scores={cutSceneTimer=931}] 5504.59 56.06494 29.58607 -0.04 2.23
tp @s[scores={cutSceneTimer=932}] 5504.59 56.06514 29.58108 -0.04 2.23
tp @s[scores={cutSceneTimer=933}] 5504.59 56.06533 29.57608 -0.04 2.23
tp @s[scores={cutSceneTimer=934}] 5504.59 56.06553 29.57109 -0.04 2.23
tp @s[scores={cutSceneTimer=935}] 5504.59 56.06572 29.56609 -0.04 2.23
tp @s[scores={cutSceneTimer=936}] 5504.59 56.06591 29.5611 -0.04 2.23
tp @s[scores={cutSceneTimer=937}] 5504.59 56.06611 29.5561 -0.04 2.23
tp @s[scores={cutSceneTimer=938}] 5504.59 56.0663 29.55111 -0.04 2.23
tp @s[scores={cutSceneTimer=939}] 5504.59 56.0665 29.54611 -0.04 2.23
tp @s[scores={cutSceneTimer=940}] 5504.59 56.06669 29.54112 -0.04 2.23
tp @s[scores={cutSceneTimer=941}] 5504.59 56.06689 29.53612 -0.04 2.23
tp @s[scores={cutSceneTimer=942}] 5504.59 56.06708 29.53113 -0.04 2.23
tp @s[scores={cutSceneTimer=943}] 5504.59 56.06728 29.52613 -0.04 2.23
tp @s[scores={cutSceneTimer=944}] 5504.59 56.06747 29.52114 -0.04 2.23
tp @s[scores={cutSceneTimer=945}] 5504.59 56.06767 29.51614 -0.04 2.23
tp @s[scores={cutSceneTimer=946}] 5504.59 56.06786 29.51114 -0.04 2.23
tp @s[scores={cutSceneTimer=947}] 5504.59 56.06805 29.50615 -0.04 2.23
tp @s[scores={cutSceneTimer=948}] 5504.59 56.06825 29.50115 -0.04 2.23
tp @s[scores={cutSceneTimer=949}] 5504.59 56.06844 29.49616 -0.04 2.23
tp @s[scores={cutSceneTimer=950}] 5504.59 56.06864 29.49116 -0.04 2.23

# ¤Lupin:¤ In these cabinets there are 'boggarts'.
# ¤Lupin:¤ Тут находятся боггарты.
execute as @s[scores={cutSceneTimer=400},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=400..480}] run title @s actionbar ["",{"text":""},{"text":"Люпин;","color":"dark_gray"},{"text":" Тут находятся боггарты."}]
execute as @s[scores={cutSceneTimer=400},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=407},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=411},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=418},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=422},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=429},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=433},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=440},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Lupin:¤ Shape shifting creatures that dwell in dark places and take on form to scare their target.
# ¤Lupin:¤ Они обитают в темных местах и принимают форму того, что очень сильно пугает вас.
execute as @s[scores={cutSceneTimer=480},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=480..650}] run title @s actionbar ["",{"text":""},{"text":"Люпин;","color":"dark_gray"},{"text":" Они обитают в темных местах и принимают форму того, что очень сильно пугает вас."}]
execute as @s[scores={cutSceneTimer=480},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=487},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=491},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=498},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=502},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=509},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=513},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=520},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Lupin:¤ I want you to fight them with the Stupefy spell, so you can practice your combat abilities.
# ¤Lupin:¤ Я хочу, чтобы ты сражался с ними с помощью заклинания 'Остолбеней' для практики.
execute as @s[scores={cutSceneTimer=650},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=650..800}] run title @s actionbar ["",{"text":""},{"text":"Люпин;","color":"dark_gray"},{"text":" Я хочу, чтобы ты сразился с ними с помощью заклинания 'Остолбеней' для практики."}]
execute as @s[scores={cutSceneTimer=650},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=657},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=661},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=668},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=672},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=679},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=683},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=690},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral


# ¤Lupin:¤ Best of luck!
execute as @s[scores={cutSceneTimer=860},tag=cutsceneLeader] run tag @e[tag=lupinStupefyArenaFpEngine,limit=1] remove cutsceneStop
execute as @s[scores={cutSceneTimer=800},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=800..950}] run title @s actionbar ["",{"text":""},{"text":"Люпин;","color":"dark_gray"},{"text":" Удачи!"}]
execute as @s[scores={cutSceneTimer=800},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=807},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=811},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=818},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=822},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=829},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=833},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=840},tag=cutsceneLeader] as @e[tag=lupinStupefyArena,limit=1] run function hp:npc/update_npc_head_neutral


# Clear subtitles instantly rather than a slow fade I can't control
execute as @s[scores={cutSceneTimer=931..}] run title @s actionbar ""

execute as @s[scores={cutSceneTimer=931}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=952}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=952}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=952}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=952}] run effect clear @s blindness
execute as @s[scores={cutSceneTimer=952}] run effect clear @s night_vision
execute as @s[scores={cutSceneTimer=952}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=953}] run function hp:cutscenes/revert_to_start_position
execute as @s[scores={cutSceneTimer=953},tag=cutsceneLeader] run tp @e[tag=lupinStupefyArenaFpEngine,limit=1] 5498 53 38
execute as @s[scores={cutSceneTimer=953},tag=cutsceneLeader] run tag @e[tag=lupinStupefyArenaFpEngine,limit=1] add stop
execute as @s[scores={cutSceneTimer=973}] run function hp:cutscenes/exit_cutscene



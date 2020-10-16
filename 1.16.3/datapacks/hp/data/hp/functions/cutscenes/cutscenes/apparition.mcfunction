execute as @s[scores={trackQuestState=3}] run scoreboard players set @s questState 4
execute as @s[scores={trackQuestState=3}] run function hp:quests/set_quest

# Reset spell challenge
execute as @s[scores={cutSceneTimer=873},tag=cutsceneLeader] if score playerInApparitionSpellChallenge global matches 0 run function hp:quests/quests/apparition/reset_apparition_spell_challenge

execute as @s[scores={cutSceneTimer=-19}] run function hp:music/music/silence
execute as @s[scores={cutSceneTimer=-19}] run tag @s remove musicController
execute as @s[scores={cutSceneTimer=-19}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=22}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=22}] run function hp:cutscenes/fade_out

execute as @s[scores={cutSceneTimer=..20}] run title @s actionbar ["",{"text":" "}]



execute as @s[scores={cutSceneTimer=22},tag=gameLeader] run time set day
execute as @s[scores={cutSceneTimer=22},tag=gameLeader] run gamerule doDaylightCycle false
tp @s[scores={cutSceneTimer=0..22}] 8903.951 60.29992 19.77808 -164.05 2.14
tp @s[scores={cutSceneTimer=23}] 8903.952 60.29985 19.77616 -164.05 2.14
tp @s[scores={cutSceneTimer=24}] 8903.953 60.29977 19.77423 -164.05 2.14
tp @s[scores={cutSceneTimer=25}] 8903.954 60.29969 19.77231 -164.05 2.14
tp @s[scores={cutSceneTimer=26}] 8903.955 60.29962 19.77039 -164.05 2.14
tp @s[scores={cutSceneTimer=27}] 8903.956 60.29954 19.76847 -164.05 2.14
tp @s[scores={cutSceneTimer=28}] 8903.957 60.29947 19.76654 -164.05 2.14
tp @s[scores={cutSceneTimer=29}] 8903.958 60.29939 19.76462 -164.05 2.14
tp @s[scores={cutSceneTimer=30}] 8903.959 60.29931 19.7627 -164.05 2.14
tp @s[scores={cutSceneTimer=31}] 8903.96 60.29924 19.76077 -164.05 2.14
tp @s[scores={cutSceneTimer=32}] 8903.961 60.29916 19.75885 -164.05 2.14
tp @s[scores={cutSceneTimer=33}] 8903.962 60.29908 19.75693 -164.05 2.14
tp @s[scores={cutSceneTimer=34}] 8903.963 60.29901 19.75501 -164.05 2.14
tp @s[scores={cutSceneTimer=35}] 8903.964 60.29893 19.75308 -164.05 2.14
tp @s[scores={cutSceneTimer=36}] 8903.965 60.29885 19.75116 -164.05 2.14
tp @s[scores={cutSceneTimer=37}] 8903.966 60.29878 19.74924 -164.05 2.14
tp @s[scores={cutSceneTimer=38}] 8903.967 60.2987 19.74732 -164.05 2.14
tp @s[scores={cutSceneTimer=39}] 8903.968 60.29863 19.74539 -164.05 2.14
tp @s[scores={cutSceneTimer=40}] 8903.969 60.29855 19.74347 -164.05 2.14
tp @s[scores={cutSceneTimer=41}] 8903.97 60.29847 19.74155 -164.05 2.14
tp @s[scores={cutSceneTimer=42}] 8903.971 60.2984 19.73963 -164.05 2.14
tp @s[scores={cutSceneTimer=43}] 8903.972 60.29832 19.7377 -164.05 2.14
tp @s[scores={cutSceneTimer=44}] 8903.973 60.29824 19.73578 -164.05 2.14
tp @s[scores={cutSceneTimer=45}] 8903.974 60.29817 19.73386 -164.05 2.14
tp @s[scores={cutSceneTimer=46}] 8903.975 60.29809 19.73194 -164.05 2.14
tp @s[scores={cutSceneTimer=47}] 8903.976 60.29802 19.73001 -164.05 2.14
tp @s[scores={cutSceneTimer=48}] 8903.977 60.29794 19.72809 -164.05 2.14
tp @s[scores={cutSceneTimer=49}] 8903.978 60.29786 19.72617 -164.05 2.14
tp @s[scores={cutSceneTimer=50}] 8903.979 60.29779 19.72425 -164.05 2.14
tp @s[scores={cutSceneTimer=51}] 8903.979 60.29771 19.72232 -164.05 2.14
tp @s[scores={cutSceneTimer=52}] 8903.98 60.29763 19.7204 -164.05 2.14
tp @s[scores={cutSceneTimer=53}] 8903.981 60.29756 19.71848 -164.05 2.14
tp @s[scores={cutSceneTimer=54}] 8903.982 60.29748 19.71655 -164.05 2.14
tp @s[scores={cutSceneTimer=55}] 8903.983 60.29741 19.71463 -164.05 2.14
tp @s[scores={cutSceneTimer=56}] 8903.984 60.29733 19.71271 -164.05 2.14
tp @s[scores={cutSceneTimer=57}] 8903.985 60.29725 19.71079 -164.05 2.14
tp @s[scores={cutSceneTimer=58}] 8903.986 60.29718 19.70886 -164.05 2.14
tp @s[scores={cutSceneTimer=59}] 8903.987 60.2971 19.70694 -164.05 2.14
tp @s[scores={cutSceneTimer=60}] 8903.988 60.29702 19.70502 -164.05 2.14
tp @s[scores={cutSceneTimer=61}] 8903.989 60.29695 19.7031 -164.05 2.14
tp @s[scores={cutSceneTimer=62}] 8903.99 60.29687 19.70117 -164.05 2.14
tp @s[scores={cutSceneTimer=63}] 8903.991 60.29679 19.69925 -164.05 2.14
tp @s[scores={cutSceneTimer=64}] 8903.992 60.29672 19.69733 -164.05 2.14
tp @s[scores={cutSceneTimer=65}] 8903.993 60.29664 19.69541 -164.05 2.14
tp @s[scores={cutSceneTimer=66}] 8903.994 60.29657 19.69348 -164.05 2.14
tp @s[scores={cutSceneTimer=67}] 8903.995 60.29649 19.69156 -164.05 2.14
tp @s[scores={cutSceneTimer=68}] 8903.996 60.29641 19.68964 -164.05 2.14
tp @s[scores={cutSceneTimer=69}] 8903.997 60.29634 19.68772 -164.05 2.14
tp @s[scores={cutSceneTimer=70}] 8903.998 60.29626 19.68579 -164.05 2.14
tp @s[scores={cutSceneTimer=71}] 8903.999 60.29618 19.68387 -164.05 2.14
tp @s[scores={cutSceneTimer=72}] 8904.000 60.29611 19.68195 -164.05 2.14
tp @s[scores={cutSceneTimer=73}] 8904.001 60.29603 19.68003 -164.05 2.14
tp @s[scores={cutSceneTimer=74}] 8904.002 60.29596 19.6781 -164.05 2.14
tp @s[scores={cutSceneTimer=75}] 8904.003 60.29588 19.67618 -164.05 2.14
tp @s[scores={cutSceneTimer=76}] 8904.004 60.2958 19.67426 -164.05 2.14
tp @s[scores={cutSceneTimer=77}] 8904.005 60.29573 19.67233 -164.05 2.14
tp @s[scores={cutSceneTimer=78}] 8904.006 60.29565 19.67041 -164.05 2.14
tp @s[scores={cutSceneTimer=79}] 8904.007 60.29557 19.66849 -164.05 2.14
tp @s[scores={cutSceneTimer=80}] 8904.008 60.2955 19.66657 -164.05 2.14
tp @s[scores={cutSceneTimer=81}] 8904.009 60.29542 19.66464 -164.05 2.14
tp @s[scores={cutSceneTimer=82}] 8904.01 60.29535 19.66272 -164.05 2.14
tp @s[scores={cutSceneTimer=83}] 8904.011 60.29527 19.6608 -164.05 2.14
tp @s[scores={cutSceneTimer=84}] 8904.012 60.29519 19.65888 -164.05 2.14
tp @s[scores={cutSceneTimer=85}] 8904.013 60.29512 19.65695 -164.05 2.14
tp @s[scores={cutSceneTimer=86}] 8904.014 60.29504 19.65503 -164.05 2.14
tp @s[scores={cutSceneTimer=87}] 8904.015 60.29496 19.65311 -164.05 2.14
tp @s[scores={cutSceneTimer=88}] 8904.016 60.29489 19.65119 -164.05 2.14
tp @s[scores={cutSceneTimer=89}] 8904.017 60.29481 19.64926 -164.05 2.14
tp @s[scores={cutSceneTimer=90}] 8904.018 60.29473 19.64734 -164.05 2.14
tp @s[scores={cutSceneTimer=91}] 8904.019 60.29466 19.64542 -164.05 2.14
tp @s[scores={cutSceneTimer=92}] 8904.02 60.29458 19.6435 -164.05 2.14
tp @s[scores={cutSceneTimer=93}] 8904.021 60.29451 19.64157 -164.05 2.14
tp @s[scores={cutSceneTimer=94}] 8904.021 60.29443 19.63965 -164.05 2.14
tp @s[scores={cutSceneTimer=95}] 8904.022 60.29435 19.63773 -164.05 2.14
tp @s[scores={cutSceneTimer=96}] 8904.023 60.29428 19.63581 -164.05 2.14
tp @s[scores={cutSceneTimer=97}] 8904.024 60.2942 19.63388 -164.05 2.14
tp @s[scores={cutSceneTimer=98}] 8904.025 60.29412 19.63196 -164.05 2.14
tp @s[scores={cutSceneTimer=99}] 8904.026 60.29405 19.63004 -164.05 2.14
tp @s[scores={cutSceneTimer=100}] 8904.027 60.29397 19.62811 -164.05 2.14
tp @s[scores={cutSceneTimer=101}] 8904.028 60.2939 19.62619 -164.05 2.14
tp @s[scores={cutSceneTimer=102}] 8904.029 60.29382 19.62427 -164.05 2.14
tp @s[scores={cutSceneTimer=103}] 8904.03 60.29374 19.62235 -164.05 2.14
tp @s[scores={cutSceneTimer=104}] 8904.031 60.29367 19.62042 -164.05 2.14
tp @s[scores={cutSceneTimer=105}] 8904.032 60.29359 19.6185 -164.05 2.14
tp @s[scores={cutSceneTimer=106}] 8904.033 60.29351 19.61658 -164.05 2.14
tp @s[scores={cutSceneTimer=107}] 8904.034 60.29344 19.61466 -164.05 2.14
tp @s[scores={cutSceneTimer=108}] 8904.035 60.29336 19.61273 -164.05 2.14
tp @s[scores={cutSceneTimer=109}] 8904.036 60.29329 19.61081 -164.05 2.14
tp @s[scores={cutSceneTimer=110}] 8904.037 60.29321 19.60889 -164.05 2.14
tp @s[scores={cutSceneTimer=111}] 8904.038 60.29313 19.60697 -164.05 2.14
tp @s[scores={cutSceneTimer=112}] 8904.039 60.29306 19.60504 -164.05 2.14
tp @s[scores={cutSceneTimer=113}] 8904.04 60.29298 19.60312 -164.05 2.14
tp @s[scores={cutSceneTimer=114}] 8904.041 60.2929 19.6012 -164.05 2.14
tp @s[scores={cutSceneTimer=115}] 8904.042 60.29283 19.59928 -164.05 2.14
tp @s[scores={cutSceneTimer=116}] 8904.043 60.29275 19.59735 -164.05 2.14
tp @s[scores={cutSceneTimer=117}] 8904.044 60.29268 19.59543 -164.05 2.14
tp @s[scores={cutSceneTimer=118}] 8904.045 60.2926 19.59351 -164.05 2.14
tp @s[scores={cutSceneTimer=119}] 8904.046 60.29252 19.59159 -164.05 2.14
tp @s[scores={cutSceneTimer=120}] 8904.047 60.29245 19.58966 -164.05 2.14
tp @s[scores={cutSceneTimer=121}] 8904.048 60.29237 19.58774 -164.05 2.14
tp @s[scores={cutSceneTimer=122}] 8904.049 60.29229 19.58582 -164.05 2.14
tp @s[scores={cutSceneTimer=123}] 8904.05 60.29222 19.58389 -164.05 2.14
tp @s[scores={cutSceneTimer=124}] 8904.051 60.29214 19.58197 -164.05 2.14
tp @s[scores={cutSceneTimer=125}] 8904.052 60.29206 19.58005 -164.05 2.14
tp @s[scores={cutSceneTimer=126}] 8904.053 60.29199 19.57813 -164.05 2.14
tp @s[scores={cutSceneTimer=127}] 8904.054 60.29191 19.5762 -164.05 2.14
tp @s[scores={cutSceneTimer=128}] 8904.055 60.29184 19.57428 -164.05 2.14
tp @s[scores={cutSceneTimer=129}] 8904.056 60.29176 19.57236 -164.05 2.14
tp @s[scores={cutSceneTimer=130}] 8904.057 60.29168 19.57044 -164.05 2.14
tp @s[scores={cutSceneTimer=131}] 8904.058 60.29161 19.56851 -164.05 2.14
tp @s[scores={cutSceneTimer=132}] 8904.059 60.29153 19.56659 -164.05 2.14
tp @s[scores={cutSceneTimer=133}] 8904.06 60.29145 19.56467 -164.05 2.14
tp @s[scores={cutSceneTimer=134}] 8904.061 60.29138 19.56275 -164.05 2.14
tp @s[scores={cutSceneTimer=135}] 8904.062 60.2913 19.56082 -164.05 2.14
tp @s[scores={cutSceneTimer=136}] 8904.063 60.29123 19.5589 -164.05 2.14
tp @s[scores={cutSceneTimer=137}] 8904.063 60.29115 19.55698 -164.05 2.14
tp @s[scores={cutSceneTimer=138}] 8904.064 60.29107 19.55506 -164.05 2.14
tp @s[scores={cutSceneTimer=139}] 8904.065 60.291 19.55313 -164.05 2.14
tp @s[scores={cutSceneTimer=140}] 8904.066 60.29092 19.55121 -164.05 2.14
tp @s[scores={cutSceneTimer=141}] 8904.067 60.29084 19.54929 -164.05 2.14
tp @s[scores={cutSceneTimer=142}] 8904.068 60.29077 19.54737 -164.05 2.14
tp @s[scores={cutSceneTimer=143}] 8904.069 60.29069 19.54544 -164.05 2.14
tp @s[scores={cutSceneTimer=144}] 8904.07 60.29062 19.54352 -164.05 2.14
tp @s[scores={cutSceneTimer=145}] 8904.071 60.29054 19.5416 -164.05 2.14
tp @s[scores={cutSceneTimer=146}] 8904.072 60.29046 19.53967 -164.05 2.14
tp @s[scores={cutSceneTimer=147}] 8904.073 60.29039 19.53775 -164.05 2.14
tp @s[scores={cutSceneTimer=148}] 8904.074 60.29031 19.53583 -164.05 2.14
tp @s[scores={cutSceneTimer=149}] 8904.075 60.29023 19.53391 -164.05 2.14
tp @s[scores={cutSceneTimer=150}] 8904.076 60.29016 19.53198 -164.05 2.14
tp @s[scores={cutSceneTimer=151}] 8904.077 60.29008 19.53006 -164.05 2.14
tp @s[scores={cutSceneTimer=152}] 8904.078 60.29 19.52814 -164.05 2.14
tp @s[scores={cutSceneTimer=153}] 8904.079 60.28993 19.52622 -164.05 2.14
tp @s[scores={cutSceneTimer=154}] 8904.08 60.28985 19.52429 -164.05 2.14
tp @s[scores={cutSceneTimer=155}] 8904.081 60.28978 19.52237 -164.05 2.14
tp @s[scores={cutSceneTimer=156}] 8904.082 60.2897 19.52045 -164.05 2.14
tp @s[scores={cutSceneTimer=157}] 8904.083 60.28962 19.51853 -164.05 2.14
tp @s[scores={cutSceneTimer=158}] 8904.084 60.28955 19.5166 -164.05 2.14
tp @s[scores={cutSceneTimer=159}] 8904.085 60.28947 19.51468 -164.05 2.14
tp @s[scores={cutSceneTimer=160}] 8904.086 60.28939 19.51276 -164.05 2.14
tp @s[scores={cutSceneTimer=161}] 8904.087 60.28932 19.51084 -164.05 2.14
tp @s[scores={cutSceneTimer=162}] 8904.088 60.28924 19.50891 -164.05 2.14
tp @s[scores={cutSceneTimer=163}] 8904.089 60.28917 19.50699 -164.05 2.14
tp @s[scores={cutSceneTimer=164}] 8904.09 60.28909 19.50507 -164.05 2.14
tp @s[scores={cutSceneTimer=165}] 8904.091 60.28901 19.50315 -164.05 2.14
tp @s[scores={cutSceneTimer=166}] 8904.092 60.28894 19.50122 -164.05 2.14
tp @s[scores={cutSceneTimer=167}] 8904.093 60.28886 19.4993 -164.05 2.14
tp @s[scores={cutSceneTimer=168}] 8904.094 60.28878 19.49738 -164.05 2.14
tp @s[scores={cutSceneTimer=169}] 8904.095 60.28871 19.49545 -164.05 2.14
tp @s[scores={cutSceneTimer=170}] 8904.096 60.28863 19.49353 -164.05 2.14
tp @s[scores={cutSceneTimer=171}] 8904.097 60.28856 19.49161 -164.05 2.14
tp @s[scores={cutSceneTimer=172}] 8904.098 60.28848 19.48969 -164.05 2.14
tp @s[scores={cutSceneTimer=173}] 8904.099 60.2884 19.48776 -164.05 2.14
tp @s[scores={cutSceneTimer=174}] 8904.1 60.28833 19.48584 -164.05 2.14
tp @s[scores={cutSceneTimer=175}] 8904.101 60.28825 19.48392 -164.05 2.14
tp @s[scores={cutSceneTimer=176}] 8904.102 60.28817 19.482 -164.05 2.14
tp @s[scores={cutSceneTimer=177}] 8904.103 60.2881 19.48007 -164.05 2.14
tp @s[scores={cutSceneTimer=178}] 8904.104 60.28802 19.47815 -164.05 2.14
tp @s[scores={cutSceneTimer=179}] 8904.104 60.28794 19.47623 -164.05 2.14
tp @s[scores={cutSceneTimer=180}] 8904.105 60.28787 19.47431 -164.05 2.14
tp @s[scores={cutSceneTimer=181}] 8904.106 60.28779 19.47238 -164.05 2.14
tp @s[scores={cutSceneTimer=182}] 8904.107 60.28772 19.47046 -164.05 2.14
tp @s[scores={cutSceneTimer=183}] 8904.108 60.28764 19.46854 -164.05 2.14
tp @s[scores={cutSceneTimer=184}] 8904.109 60.28756 19.46662 -164.05 2.14
tp @s[scores={cutSceneTimer=185}] 8904.11 60.28749 19.46469 -164.05 2.14
tp @s[scores={cutSceneTimer=186}] 8904.111 60.28741 19.46277 -164.05 2.14
tp @s[scores={cutSceneTimer=187}] 8904.112 60.28733 19.46085 -164.05 2.14
tp @s[scores={cutSceneTimer=188}] 8904.113 60.28726 19.45893 -164.05 2.14
tp @s[scores={cutSceneTimer=189}] 8904.114 60.28718 19.457 -164.05 2.14
tp @s[scores={cutSceneTimer=190}] 8904.115 60.28711 19.45508 -164.05 2.14
tp @s[scores={cutSceneTimer=191}] 8904.116 60.28703 19.45316 -164.05 2.14
tp @s[scores={cutSceneTimer=192}] 8904.117 60.28695 19.45123 -164.05 2.14
tp @s[scores={cutSceneTimer=193}] 8904.118 60.28688 19.44931 -164.05 2.14
tp @s[scores={cutSceneTimer=194}] 8904.119 60.2868 19.44739 -164.05 2.14
tp @s[scores={cutSceneTimer=195}] 8904.12 60.28672 19.44547 -164.05 2.14
tp @s[scores={cutSceneTimer=196}] 8904.121 60.28665 19.44354 -164.05 2.14
tp @s[scores={cutSceneTimer=197}] 8904.122 60.28657 19.44162 -164.05 2.14
tp @s[scores={cutSceneTimer=198}] 8904.123 60.2865 19.4397 -164.05 2.14
tp @s[scores={cutSceneTimer=199}] 8904.124 60.28642 19.43778 -164.05 2.14
tp @s[scores={cutSceneTimer=200}] 8904.125 60.28634 19.43585 -164.05 2.14
tp @s[scores={cutSceneTimer=201}] 8904.126 60.28627 19.43393 -164.05 2.14
tp @s[scores={cutSceneTimer=202}] 8904.127 60.28619 19.43201 -164.05 2.14
tp @s[scores={cutSceneTimer=203}] 8904.128 60.28611 19.43009 -164.05 2.14
tp @s[scores={cutSceneTimer=204}] 8904.129 60.28604 19.42816 -164.05 2.14
tp @s[scores={cutSceneTimer=205}] 8904.13 60.28596 19.42624 -164.05 2.14
tp @s[scores={cutSceneTimer=206}] 8904.131 60.28588 19.42432 -164.05 2.14
tp @s[scores={cutSceneTimer=207}] 8904.132 60.28581 19.4224 -164.05 2.14
tp @s[scores={cutSceneTimer=208}] 8904.133 60.28573 19.42047 -164.05 2.14
tp @s[scores={cutSceneTimer=209}] 8904.134 60.28566 19.41855 -164.05 2.14
tp @s[scores={cutSceneTimer=210}] 8904.135 60.28558 19.41663 -164.05 2.14
tp @s[scores={cutSceneTimer=211}] 8904.136 60.2855 19.41471 -164.05 2.14
tp @s[scores={cutSceneTimer=212}] 8904.137 60.28543 19.41278 -164.05 2.14
tp @s[scores={cutSceneTimer=213}] 8904.138 60.28535 19.41086 -164.05 2.14
tp @s[scores={cutSceneTimer=214}] 8904.139 60.28527 19.40894 -164.05 2.14
tp @s[scores={cutSceneTimer=215}] 8904.14 60.2852 19.40701 -164.05 2.14
tp @s[scores={cutSceneTimer=216}] 8904.141 60.28512 19.40509 -164.05 2.14
tp @s[scores={cutSceneTimer=217}] 8904.142 60.28505 19.40317 -164.05 2.14
tp @s[scores={cutSceneTimer=218}] 8904.143 60.28497 19.40125 -164.05 2.14
tp @s[scores={cutSceneTimer=219}] 8904.144 60.28489 19.39932 -164.05 2.14
tp @s[scores={cutSceneTimer=220}] 8904.145 60.28482 19.3974 -164.05 2.14
tp @s[scores={cutSceneTimer=221}] 8904.146 60.28474 19.39548 -164.05 2.14
tp @s[scores={cutSceneTimer=222}] 8904.146 60.28466 19.39356 -164.05 2.14
tp @s[scores={cutSceneTimer=223}] 8904.147 60.28459 19.39163 -164.05 2.14
tp @s[scores={cutSceneTimer=224}] 8904.148 60.28451 19.38971 -164.05 2.14
tp @s[scores={cutSceneTimer=225}] 8904.149 60.28444 19.38779 -164.05 2.14
tp @s[scores={cutSceneTimer=226}] 8904.15 60.28436 19.38587 -164.05 2.14
tp @s[scores={cutSceneTimer=227}] 8904.151 60.28428 19.38394 -164.05 2.14
tp @s[scores={cutSceneTimer=228}] 8904.152 60.28421 19.38202 -164.05 2.14
tp @s[scores={cutSceneTimer=229}] 8904.153 60.28413 19.3801 -164.05 2.14
tp @s[scores={cutSceneTimer=230}] 8904.154 60.28405 19.37818 -164.05 2.14
tp @s[scores={cutSceneTimer=231}] 8904.155 60.28398 19.37625 -164.05 2.14
tp @s[scores={cutSceneTimer=232}] 8904.156 60.2839 19.37433 -164.05 2.14
tp @s[scores={cutSceneTimer=233}] 8904.157 60.28382 19.37241 -164.05 2.14
tp @s[scores={cutSceneTimer=234}] 8904.158 60.28375 19.37049 -164.05 2.14
tp @s[scores={cutSceneTimer=235}] 8904.159 60.28367 19.36856 -164.05 2.14
tp @s[scores={cutSceneTimer=236}] 8904.16 60.2836 19.36664 -164.05 2.14
tp @s[scores={cutSceneTimer=237}] 8904.161 60.28352 19.36472 -164.05 2.14
tp @s[scores={cutSceneTimer=238}] 8904.162 60.28344 19.36279 -164.05 2.14
tp @s[scores={cutSceneTimer=239}] 8904.163 60.28337 19.36087 -164.05 2.14
tp @s[scores={cutSceneTimer=240}] 8904.164 60.28329 19.35895 -164.05 2.14
tp @s[scores={cutSceneTimer=241}] 8904.165 60.28321 19.35703 -164.05 2.14
tp @s[scores={cutSceneTimer=242}] 8904.166 60.28314 19.3551 -164.05 2.14
tp @s[scores={cutSceneTimer=243}] 8904.167 60.28306 19.35318 -164.05 2.14
tp @s[scores={cutSceneTimer=244}] 8904.168 60.28299 19.35126 -164.05 2.14
tp @s[scores={cutSceneTimer=245}] 8904.169 60.28291 19.34934 -164.05 2.14
tp @s[scores={cutSceneTimer=246}] 8904.17 60.28283 19.34741 -164.05 2.14
tp @s[scores={cutSceneTimer=247}] 8904.171 60.28276 19.34549 -164.05 2.14
tp @s[scores={cutSceneTimer=248}] 8904.172 60.28268 19.34357 -164.05 2.14
tp @s[scores={cutSceneTimer=249}] 8904.173 60.2826 19.34165 -164.05 2.14
tp @s[scores={cutSceneTimer=250}] 8904.174 60.28253 19.33972 -164.05 2.14
tp @s[scores={cutSceneTimer=251}] 8904.175 60.28245 19.3378 -164.05 2.14
tp @s[scores={cutSceneTimer=252}] 8904.176 60.28238 19.33588 -164.05 2.14
tp @s[scores={cutSceneTimer=253}] 8904.177 60.2823 19.33396 -164.05 2.14
tp @s[scores={cutSceneTimer=254}] 8904.178 60.28222 19.33203 -164.05 2.14
tp @s[scores={cutSceneTimer=255}] 8904.179 60.28215 19.33011 -164.05 2.14
tp @s[scores={cutSceneTimer=256}] 8904.18 60.28207 19.32819 -164.05 2.14
tp @s[scores={cutSceneTimer=257}] 8904.181 60.28199 19.32627 -164.05 2.14
tp @s[scores={cutSceneTimer=258}] 8904.182 60.28192 19.32434 -164.05 2.14
tp @s[scores={cutSceneTimer=259}] 8904.183 60.28184 19.32242 -164.05 2.14
tp @s[scores={cutSceneTimer=260}] 8904.184 60.28176 19.3205 -164.05 2.14
tp @s[scores={cutSceneTimer=261}] 8904.185 60.28169 19.31857 -164.05 2.14
tp @s[scores={cutSceneTimer=262}] 8904.186 60.28161 19.31665 -164.05 2.14
tp @s[scores={cutSceneTimer=263}] 8904.187 60.28154 19.31473 -164.05 2.14
tp @s[scores={cutSceneTimer=264}] 8904.188 60.28146 19.31281 -164.05 2.14
tp @s[scores={cutSceneTimer=265}] 8904.188 60.28138 19.31088 -164.05 2.14
tp @s[scores={cutSceneTimer=266}] 8904.189 60.28131 19.30896 -164.05 2.14
tp @s[scores={cutSceneTimer=267}] 8904.19 60.28123 19.30704 -164.05 2.14
tp @s[scores={cutSceneTimer=268}] 8904.191 60.28115 19.30512 -164.05 2.14
tp @s[scores={cutSceneTimer=269}] 8904.192 60.28108 19.30319 -164.05 2.14
tp @s[scores={cutSceneTimer=270}] 8904.193 60.281 19.30127 -164.05 2.14
tp @s[scores={cutSceneTimer=271}] 8904.194 60.28093 19.29935 -164.05 2.14
tp @s[scores={cutSceneTimer=272}] 8904.195 60.28085 19.29743 -164.05 2.14
tp @s[scores={cutSceneTimer=273}] 8904.196 60.28077 19.2955 -164.05 2.14
tp @s[scores={cutSceneTimer=274}] 8904.197 60.2807 19.29358 -164.05 2.14
tp @s[scores={cutSceneTimer=275}] 8904.198 60.28062 19.29166 -164.05 2.14
tp @s[scores={cutSceneTimer=276}] 8904.199 60.28054 19.28974 -164.05 2.14
tp @s[scores={cutSceneTimer=277}] 8904.2 60.28047 19.28781 -164.05 2.14
tp @s[scores={cutSceneTimer=278}] 8904.201 60.28039 19.28589 -164.05 2.14
tp @s[scores={cutSceneTimer=279}] 8904.202 60.28032 19.28397 -164.05 2.14
tp @s[scores={cutSceneTimer=280}] 8904.203 60.28024 19.28205 -164.05 2.14
tp @s[scores={cutSceneTimer=281}] 8904.204 60.28016 19.28012 -164.05 2.14
tp @s[scores={cutSceneTimer=282}] 8904.205 60.28009 19.2782 -164.05 2.14
tp @s[scores={cutSceneTimer=283}] 8904.206 60.28001 19.27628 -164.05 2.14
tp @s[scores={cutSceneTimer=284}] 8904.207 60.27993 19.27435 -164.05 2.14
tp @s[scores={cutSceneTimer=285}] 8904.208 60.27986 19.27243 -164.05 2.14
tp @s[scores={cutSceneTimer=286}] 8904.209 60.27978 19.27051 -164.05 2.14
tp @s[scores={cutSceneTimer=287}] 8904.21 60.27971 19.26859 -164.05 2.14
tp @s[scores={cutSceneTimer=288}] 8904.211 60.27963 19.26666 -164.05 2.14
tp @s[scores={cutSceneTimer=289}] 8904.212 60.27955 19.26474 -164.05 2.14
tp @s[scores={cutSceneTimer=290}] 8904.213 60.27948 19.26282 -164.05 2.14
tp @s[scores={cutSceneTimer=291}] 8904.214 60.2794 19.2609 -164.05 2.14
tp @s[scores={cutSceneTimer=292}] 8904.215 60.27932 19.25897 -164.05 2.14
tp @s[scores={cutSceneTimer=293}] 8904.216 60.27925 19.25705 -164.05 2.14
tp @s[scores={cutSceneTimer=294}] 8904.217 60.27917 19.25513 -164.05 2.14
tp @s[scores={cutSceneTimer=295}] 8904.218 60.27909 19.25321 -164.05 2.14
tp @s[scores={cutSceneTimer=296}] 8904.219 60.27902 19.25128 -164.05 2.14
tp @s[scores={cutSceneTimer=297}] 8904.22 60.27894 19.24936 -164.05 2.14
tp @s[scores={cutSceneTimer=298}] 8904.221 60.27887 19.24744 -164.05 2.14
tp @s[scores={cutSceneTimer=299}] 8904.222 60.27879 19.24552 -164.05 2.14
tp @s[scores={cutSceneTimer=300}] 8904.223 60.27871 19.24359 -164.05 2.14
tp @s[scores={cutSceneTimer=301}] 8904.224 60.27864 19.24167 -164.05 2.14
tp @s[scores={cutSceneTimer=302}] 8904.225 60.27856 19.23975 -164.05 2.14
tp @s[scores={cutSceneTimer=303}] 8904.226 60.27848 19.23783 -164.05 2.14
tp @s[scores={cutSceneTimer=304}] 8904.227 60.27841 19.2359 -164.05 2.14
tp @s[scores={cutSceneTimer=305}] 8904.228 60.27833 19.23398 -164.05 2.14
tp @s[scores={cutSceneTimer=306}] 8904.229 60.27826 19.23206 -164.05 2.14
tp @s[scores={cutSceneTimer=307}] 8904.229 60.27818 19.23013 -164.05 2.14
tp @s[scores={cutSceneTimer=308}] 8904.23 60.2781 19.22821 -164.05 2.14
tp @s[scores={cutSceneTimer=309}] 8904.231 60.27803 19.22629 -164.05 2.14
tp @s[scores={cutSceneTimer=310}] 8904.232 60.27795 19.22437 -164.05 2.14
tp @s[scores={cutSceneTimer=311}] 8904.233 60.27787 19.22244 -164.05 2.14
tp @s[scores={cutSceneTimer=312}] 8904.234 60.2778 19.22052 -164.05 2.14
tp @s[scores={cutSceneTimer=313}] 8904.235 60.27772 19.2186 -164.05 2.14
tp @s[scores={cutSceneTimer=314}] 8904.236 60.27765 19.21668 -164.05 2.14
tp @s[scores={cutSceneTimer=315}] 8904.237 60.27757 19.21475 -164.05 2.14
tp @s[scores={cutSceneTimer=316}] 8904.238 60.27749 19.21283 -164.05 2.14
tp @s[scores={cutSceneTimer=317}] 8904.239 60.27742 19.21091 -164.05 2.14
tp @s[scores={cutSceneTimer=318}] 8904.24 60.27734 19.20899 -164.05 2.14
tp @s[scores={cutSceneTimer=319}] 8904.241 60.27726 19.20706 -164.05 2.14
tp @s[scores={cutSceneTimer=320}] 8904.242 60.27719 19.20514 -164.05 2.14
tp @s[scores={cutSceneTimer=321}] 8904.243 60.27711 19.20322 -164.05 2.14
tp @s[scores={cutSceneTimer=322}] 8904.244 60.27703 19.2013 -164.05 2.14
tp @s[scores={cutSceneTimer=323}] 8904.245 60.27696 19.19937 -164.05 2.14
tp @s[scores={cutSceneTimer=324}] 8904.246 60.27688 19.19745 -164.05 2.14
tp @s[scores={cutSceneTimer=325}] 8904.247 60.27681 19.19553 -164.05 2.14
tp @s[scores={cutSceneTimer=326}] 8904.248 60.27673 19.19361 -164.05 2.14
tp @s[scores={cutSceneTimer=327}] 8904.249 60.27665 19.19168 -164.05 2.14
tp @s[scores={cutSceneTimer=328}] 8904.25 60.27658 19.18976 -164.05 2.14
tp @s[scores={cutSceneTimer=329}] 8904.251 60.2765 19.18784 -164.05 2.14
tp @s[scores={cutSceneTimer=330}] 8904.252 60.27642 19.18591 -164.05 2.14
tp @s[scores={cutSceneTimer=331}] 8904.253 60.27635 19.18399 -164.05 2.14
tp @s[scores={cutSceneTimer=332}] 8904.254 60.27627 19.18207 -164.05 2.14
tp @s[scores={cutSceneTimer=333}] 8904.255 60.2762 19.18015 -164.05 2.14
tp @s[scores={cutSceneTimer=334}] 8904.256 60.27612 19.17822 -164.05 2.14
tp @s[scores={cutSceneTimer=335}] 8904.257 60.27604 19.1763 -164.05 2.14
tp @s[scores={cutSceneTimer=336}] 8904.258 60.27597 19.17438 -164.05 2.14
tp @s[scores={cutSceneTimer=337}] 8904.259 60.27589 19.17246 -164.05 2.14
tp @s[scores={cutSceneTimer=338}] 8904.26 60.27581 19.17053 -164.05 2.14
tp @s[scores={cutSceneTimer=339}] 8904.261 60.27574 19.16861 -164.05 2.14
tp @s[scores={cutSceneTimer=340}] 8904.262 60.27566 19.16669 -164.05 2.14
tp @s[scores={cutSceneTimer=341}] 8904.263 60.27559 19.16477 -164.05 2.14
tp @s[scores={cutSceneTimer=342}] 8904.264 60.27551 19.16284 -164.05 2.14
tp @s[scores={cutSceneTimer=343}] 8904.265 60.27543 19.16092 -164.05 2.14
tp @s[scores={cutSceneTimer=344}] 8904.266 60.27536 19.159 -164.05 2.14
tp @s[scores={cutSceneTimer=345}] 8904.267 60.27528 19.15708 -164.05 2.14
tp @s[scores={cutSceneTimer=346}] 8904.268 60.2752 19.15515 -164.05 2.14
tp @s[scores={cutSceneTimer=347}] 8904.269 60.27513 19.15323 -164.05 2.14
tp @s[scores={cutSceneTimer=348}] 8904.27 60.27505 19.15131 -164.05 2.14
tp @s[scores={cutSceneTimer=349}] 8904.271 60.27497 19.14939 -164.05 2.14
tp @s[scores={cutSceneTimer=350}] 8904.271 60.2749 19.14746 -164.05 2.14
tp @s[scores={cutSceneTimer=351}] 8904.272 60.27482 19.14554 -164.05 2.14
tp @s[scores={cutSceneTimer=352}] 8904.273 60.27475 19.14362 -164.05 2.14
tp @s[scores={cutSceneTimer=353}] 8904.274 60.27467 19.1417 -164.05 2.14
tp @s[scores={cutSceneTimer=354}] 8904.275 60.27459 19.13977 -164.05 2.14
tp @s[scores={cutSceneTimer=355}] 8904.276 60.27452 19.13785 -164.05 2.14
tp @s[scores={cutSceneTimer=356}] 8904.277 60.27444 19.13593 -164.05 2.14
tp @s[scores={cutSceneTimer=357}] 8904.278 60.27436 19.134 -164.05 2.14
tp @s[scores={cutSceneTimer=358}] 8904.279 60.27429 19.13208 -164.05 2.14
tp @s[scores={cutSceneTimer=359}] 8904.28 60.27421 19.13016 -164.05 2.14
tp @s[scores={cutSceneTimer=360}] 8904.281 60.27414 19.12824 -164.05 2.14
tp @s[scores={cutSceneTimer=361}] 8904.282 60.27406 19.12631 -164.05 2.14
tp @s[scores={cutSceneTimer=362}] 8904.283 60.27398 19.12439 -164.05 2.14
tp @s[scores={cutSceneTimer=363}] 8904.284 60.27391 19.12247 -164.05 2.14
tp @s[scores={cutSceneTimer=364}] 8904.285 60.27383 19.12055 -164.05 2.14
tp @s[scores={cutSceneTimer=365}] 8904.286 60.27375 19.11862 -164.05 2.14
tp @s[scores={cutSceneTimer=366}] 8904.287 60.27368 19.1167 -164.05 2.14
tp @s[scores={cutSceneTimer=367}] 8904.288 60.2736 19.11478 -164.05 2.14
tp @s[scores={cutSceneTimer=368}] 8904.289 60.27353 19.11286 -164.05 2.14
tp @s[scores={cutSceneTimer=369}] 8904.29 60.27345 19.11093 -164.05 2.14
tp @s[scores={cutSceneTimer=370}] 8904.291 60.27337 19.10901 -164.05 2.14
tp @s[scores={cutSceneTimer=371}] 8904.292 60.2733 19.10709 -164.05 2.14
tp @s[scores={cutSceneTimer=372}] 8904.293 60.27322 19.10517 -164.05 2.14
tp @s[scores={cutSceneTimer=373}] 8904.294 60.27314 19.10324 -164.05 2.14
tp @s[scores={cutSceneTimer=374}] 8904.295 60.27307 19.10132 -164.05 2.14
tp @s[scores={cutSceneTimer=375}] 8904.296 60.27299 19.0994 -164.05 2.14
tp @s[scores={cutSceneTimer=376}] 8904.297 60.27291 19.09748 -164.05 2.14
tp @s[scores={cutSceneTimer=377}] 8904.298 60.27284 19.09555 -164.05 2.14
tp @s[scores={cutSceneTimer=378}] 8904.299 60.27276 19.09363 -164.05 2.14
tp @s[scores={cutSceneTimer=379}] 8904.3 60.27269 19.09171 -164.05 2.14
tp @s[scores={cutSceneTimer=380}] 8904.301 60.27261 19.08978 -164.05 2.14
tp @s[scores={cutSceneTimer=381}] 8904.302 60.27253 19.08786 -164.05 2.14
tp @s[scores={cutSceneTimer=382}] 8904.303 60.27246 19.08594 -164.05 2.14
tp @s[scores={cutSceneTimer=383}] 8904.304 60.27238 19.08402 -164.05 2.14
tp @s[scores={cutSceneTimer=384}] 8904.305 60.2723 19.08209 -164.05 2.14
tp @s[scores={cutSceneTimer=385}] 8904.306 60.27223 19.08017 -164.05 2.14
tp @s[scores={cutSceneTimer=386}] 8904.307 60.27215 19.07825 -164.05 2.14
tp @s[scores={cutSceneTimer=387}] 8904.308 60.27208 19.07633 -164.05 2.14
tp @s[scores={cutSceneTimer=388}] 8904.309 60.272 19.0744 -164.05 2.14
tp @s[scores={cutSceneTimer=389}] 8904.31 60.27192 19.07248 -164.05 2.14
tp @s[scores={cutSceneTimer=390}] 8904.311 60.27185 19.07056 -164.05 2.14
tp @s[scores={cutSceneTimer=391}] 8904.312 60.27177 19.06864 -164.05 2.14
tp @s[scores={cutSceneTimer=392}] 8904.313 60.27169 19.06671 -164.05 2.14
tp @s[scores={cutSceneTimer=393}] 8904.313 60.27162 19.06479 -164.05 2.14
tp @s[scores={cutSceneTimer=394}] 8904.314 60.27154 19.06287 -164.05 2.14
tp @s[scores={cutSceneTimer=395}] 8904.315 60.27147 19.06095 -164.05 2.14
tp @s[scores={cutSceneTimer=396}] 8904.316 60.27139 19.05902 -164.05 2.14
tp @s[scores={cutSceneTimer=397}] 8904.317 60.27131 19.0571 -164.05 2.14
tp @s[scores={cutSceneTimer=398}] 8904.318 60.27124 19.05518 -164.05 2.14
tp @s[scores={cutSceneTimer=399}] 8904.319 60.27116 19.05326 -164.05 2.14
tp @s[scores={cutSceneTimer=400}] 8904.32 60.27108 19.05133 -164.05 2.14
tp @s[scores={cutSceneTimer=401}] 8904.321 60.27101 19.04941 -164.05 2.14
tp @s[scores={cutSceneTimer=402}] 8904.322 60.27093 19.04749 -164.05 2.14
tp @s[scores={cutSceneTimer=403}] 8904.323 60.27085 19.04556 -164.05 2.14
tp @s[scores={cutSceneTimer=404}] 8904.324 60.27078 19.04364 -164.05 2.14
tp @s[scores={cutSceneTimer=405}] 8904.325 60.2707 19.04172 -164.05 2.14
tp @s[scores={cutSceneTimer=406}] 8904.326 60.27063 19.0398 -164.05 2.14
tp @s[scores={cutSceneTimer=407}] 8904.327 60.27055 19.03787 -164.05 2.14
tp @s[scores={cutSceneTimer=408}] 8904.328 60.27047 19.03595 -164.05 2.14
tp @s[scores={cutSceneTimer=409}] 8904.329 60.2704 19.03403 -164.05 2.14
tp @s[scores={cutSceneTimer=410}] 8904.33 60.27032 19.03211 -164.05 2.14
tp @s[scores={cutSceneTimer=411}] 8904.331 60.27024 19.03018 -164.05 2.14
tp @s[scores={cutSceneTimer=412}] 8904.332 60.27017 19.02826 -164.05 2.14
tp @s[scores={cutSceneTimer=413}] 8904.333 60.27009 19.02634 -164.05 2.14
tp @s[scores={cutSceneTimer=414}] 8904.334 60.27002 19.02442 -164.05 2.14
tp @s[scores={cutSceneTimer=415}] 8904.335 60.26994 19.02249 -164.05 2.14
tp @s[scores={cutSceneTimer=416}] 8904.336 60.26986 19.02057 -164.05 2.14
tp @s[scores={cutSceneTimer=417}] 8904.337 60.26979 19.01865 -164.05 2.14
tp @s[scores={cutSceneTimer=418}] 8904.338 60.26971 19.01673 -164.05 2.14
tp @s[scores={cutSceneTimer=419}] 8904.339 60.26963 19.0148 -164.05 2.14
tp @s[scores={cutSceneTimer=420}] 8904.34 60.26956 19.01288 -164.05 2.14
tp @s[scores={cutSceneTimer=421}] 8904.341 60.26948 19.01096 -164.05 2.14
tp @s[scores={cutSceneTimer=422}] 8904.342 60.26941 19.00904 -164.05 2.14
tp @s[scores={cutSceneTimer=423}] 8904.343 60.26933 19.00711 -164.05 2.14
tp @s[scores={cutSceneTimer=424}] 8904.344 60.26925 19.00519 -164.05 2.14
tp @s[scores={cutSceneTimer=425}] 8904.345 60.26918 19.00327 -164.05 2.14
tp @s[scores={cutSceneTimer=426}] 8904.346 60.2691 19.00134 -164.05 2.14
tp @s[scores={cutSceneTimer=427}] 8904.347 60.26902 18.99942 -164.05 2.14
tp @s[scores={cutSceneTimer=428}] 8904.348 60.26895 18.9975 -164.05 2.14
tp @s[scores={cutSceneTimer=429}] 8904.349 60.26887 18.99558 -164.05 2.14
tp @s[scores={cutSceneTimer=430}] 8904.35 60.2688 18.99365 -164.05 2.14
tp @s[scores={cutSceneTimer=431}] 8904.351 60.26872 18.99173 -164.05 2.14
tp @s[scores={cutSceneTimer=432}] 8904.352 60.26864 18.98981 -164.05 2.14
tp @s[scores={cutSceneTimer=433}] 8904.353 60.26857 18.98789 -164.05 2.14
tp @s[scores={cutSceneTimer=434}] 8904.354 60.26849 18.98596 -164.05 2.14
tp @s[scores={cutSceneTimer=435}] 8904.354 60.26841 18.98404 -164.05 2.14
tp @s[scores={cutSceneTimer=436}] 8904.355 60.26834 18.98212 -164.05 2.14
tp @s[scores={cutSceneTimer=437}] 8904.356 60.26826 18.9802 -164.05 2.14
tp @s[scores={cutSceneTimer=438}] 8904.357 60.26818 18.97827 -164.05 2.14
tp @s[scores={cutSceneTimer=439}] 8904.358 60.26811 18.97635 -164.05 2.14
tp @s[scores={cutSceneTimer=440}] 8904.359 60.26803 18.97443 -164.05 2.14
tp @s[scores={cutSceneTimer=441}] 8904.36 60.26796 18.97251 -164.05 2.14
tp @s[scores={cutSceneTimer=442}] 8904.361 60.26788 18.97058 -164.05 2.14
tp @s[scores={cutSceneTimer=443}] 8904.362 60.2678 18.96866 -164.05 2.14
tp @s[scores={cutSceneTimer=444}] 8904.363 60.26773 18.96674 -164.05 2.14
tp @s[scores={cutSceneTimer=445}] 8904.364 60.26765 18.96482 -164.05 2.14
tp @s[scores={cutSceneTimer=446}] 8904.365 60.26757 18.96289 -164.05 2.14
tp @s[scores={cutSceneTimer=447}] 8904.366 60.2675 18.96097 -164.05 2.14
tp @s[scores={cutSceneTimer=448}] 8904.367 60.26742 18.95905 -164.05 2.14
tp @s[scores={cutSceneTimer=449}] 8904.368 60.26735 18.95712 -164.05 2.14
tp @s[scores={cutSceneTimer=450}] 8904.369 60.26727 18.9552 -164.05 2.14
tp @s[scores={cutSceneTimer=451}] 8904.37 60.26719 18.95328 -164.05 2.14
tp @s[scores={cutSceneTimer=452}] 8904.371 60.26712 18.95136 -164.05 2.14
tp @s[scores={cutSceneTimer=453}] 8904.372 60.26704 18.94943 -164.05 2.14
tp @s[scores={cutSceneTimer=454}] 8904.373 60.26696 18.94751 -164.05 2.14
tp @s[scores={cutSceneTimer=455}] 8904.374 60.26689 18.94559 -164.05 2.14
tp @s[scores={cutSceneTimer=456}] 8904.375 60.26681 18.94367 -164.05 2.14
tp @s[scores={cutSceneTimer=457}] 8904.376 60.26674 18.94174 -164.05 2.14
tp @s[scores={cutSceneTimer=458}] 8904.377 60.26666 18.93982 -164.05 2.14
tp @s[scores={cutSceneTimer=459}] 8904.378 60.26658 18.9379 -164.05 2.14
tp @s[scores={cutSceneTimer=460}] 8904.379 60.26651 18.93598 -164.05 2.14
tp @s[scores={cutSceneTimer=461}] 8904.38 60.26643 18.93405 -164.05 2.14
tp @s[scores={cutSceneTimer=462}] 8904.381 60.26635 18.93213 -164.05 2.14
tp @s[scores={cutSceneTimer=463}] 8904.382 60.26628 18.93021 -164.05 2.14
tp @s[scores={cutSceneTimer=464}] 8904.383 60.2662 18.92829 -164.05 2.14
tp @s[scores={cutSceneTimer=465}] 8904.384 60.26612 18.92636 -164.05 2.14
tp @s[scores={cutSceneTimer=466}] 8904.385 60.26605 18.92444 -164.05 2.14
tp @s[scores={cutSceneTimer=467}] 8904.386 60.26597 18.92252 -164.05 2.14
tp @s[scores={cutSceneTimer=468}] 8904.387 60.2659 18.9206 -164.05 2.14
tp @s[scores={cutSceneTimer=469}] 8904.388 60.26582 18.91867 -164.05 2.14
tp @s[scores={cutSceneTimer=470}] 8904.389 60.26574 18.91675 -164.05 2.14
tp @s[scores={cutSceneTimer=471}] 8904.39 60.26567 18.91483 -164.05 2.14
tp @s[scores={cutSceneTimer=472}] 8904.391 60.26559 18.9129 -164.05 2.14
tp @s[scores={cutSceneTimer=473}] 8904.392 60.26551 18.91098 -164.05 2.14
tp @s[scores={cutSceneTimer=474}] 8904.393 60.26544 18.90906 -164.05 2.14
tp @s[scores={cutSceneTimer=475}] 8904.394 60.26536 18.90714 -164.05 2.14
tp @s[scores={cutSceneTimer=476}] 8904.395 60.26529 18.90521 -164.05 2.14
tp @s[scores={cutSceneTimer=477}] 8904.396 60.26521 18.90329 -164.05 2.14
tp @s[scores={cutSceneTimer=478}] 8904.396 60.26513 18.90137 -164.05 2.14
tp @s[scores={cutSceneTimer=479}] 8904.397 60.26506 18.89945 -164.05 2.14
tp @s[scores={cutSceneTimer=480}] 8904.398 60.26498 18.89752 -164.05 2.14
tp @s[scores={cutSceneTimer=481}] 8904.399 60.2649 18.8956 -164.05 2.14
tp @s[scores={cutSceneTimer=482}] 8904.4 60.26483 18.89368 -164.05 2.14
tp @s[scores={cutSceneTimer=483}] 8904.401 60.26475 18.89176 -164.05 2.14
tp @s[scores={cutSceneTimer=484}] 8904.402 60.26468 18.88983 -164.05 2.14
tp @s[scores={cutSceneTimer=485}] 8904.403 60.2646 18.88791 -164.05 2.14
tp @s[scores={cutSceneTimer=486}] 8904.404 60.26452 18.88599 -164.05 2.14
tp @s[scores={cutSceneTimer=487}] 8904.405 60.26445 18.88407 -164.05 2.14
tp @s[scores={cutSceneTimer=488}] 8904.406 60.26437 18.88214 -164.05 2.14
tp @s[scores={cutSceneTimer=489}] 8904.407 60.26429 18.88022 -164.05 2.14
tp @s[scores={cutSceneTimer=490}] 8904.408 60.26422 18.8783 -164.05 2.14
tp @s[scores={cutSceneTimer=491}] 8904.409 60.26414 18.87638 -164.05 2.14
tp @s[scores={cutSceneTimer=492}] 8904.41 60.26406 18.87445 -164.05 2.14
tp @s[scores={cutSceneTimer=493}] 8904.411 60.26399 18.87253 -164.05 2.14
tp @s[scores={cutSceneTimer=494}] 8904.412 60.26391 18.87061 -164.05 2.14
tp @s[scores={cutSceneTimer=495}] 8904.413 60.26384 18.86868 -164.05 2.14
tp @s[scores={cutSceneTimer=496}] 8904.414 60.26376 18.86676 -164.05 2.14
tp @s[scores={cutSceneTimer=497}] 8904.415 60.26368 18.86484 -164.05 2.14
tp @s[scores={cutSceneTimer=498}] 8904.416 60.26361 18.86292 -164.05 2.14
tp @s[scores={cutSceneTimer=499}] 8904.417 60.26353 18.86099 -164.05 2.14
tp @s[scores={cutSceneTimer=500}] 8904.418 60.26345 18.85907 -164.05 2.14
tp @s[scores={cutSceneTimer=501}] 8904.419 60.26338 18.85715 -164.05 2.14
tp @s[scores={cutSceneTimer=502}] 8904.42 60.2633 18.85523 -164.05 2.14
tp @s[scores={cutSceneTimer=503}] 8904.421 60.26323 18.8533 -164.05 2.14
tp @s[scores={cutSceneTimer=504}] 8904.422 60.26315 18.85138 -164.05 2.14
tp @s[scores={cutSceneTimer=505}] 8904.423 60.26307 18.84946 -164.05 2.14
tp @s[scores={cutSceneTimer=506}] 8904.424 60.263 18.84754 -164.05 2.14
tp @s[scores={cutSceneTimer=507}] 8904.425 60.26292 18.84561 -164.05 2.14
tp @s[scores={cutSceneTimer=508}] 8904.426 60.26284 18.84369 -164.05 2.14
tp @s[scores={cutSceneTimer=509}] 8904.427 60.26277 18.84177 -164.05 2.14
tp @s[scores={cutSceneTimer=510}] 8904.428 60.26269 18.83985 -164.05 2.14
tp @s[scores={cutSceneTimer=511}] 8904.429 60.26262 18.83792 -164.05 2.14
tp @s[scores={cutSceneTimer=512}] 8904.43 60.26254 18.836 -164.05 2.14
tp @s[scores={cutSceneTimer=513}] 8904.431 60.26246 18.83408 -164.05 2.14
tp @s[scores={cutSceneTimer=514}] 8904.432 60.26239 18.83216 -164.05 2.14
tp @s[scores={cutSceneTimer=515}] 8904.433 60.26231 18.83023 -164.05 2.14
tp @s[scores={cutSceneTimer=516}] 8904.434 60.26223 18.82831 -164.05 2.14
tp @s[scores={cutSceneTimer=517}] 8904.435 60.26216 18.82639 -164.05 2.14
tp @s[scores={cutSceneTimer=518}] 8904.436 60.26208 18.82446 -164.05 2.14
tp @s[scores={cutSceneTimer=519}] 8904.437 60.262 18.82254 -164.05 2.14
tp @s[scores={cutSceneTimer=520}] 8904.438 60.26193 18.82062 -164.05 2.14
tp @s[scores={cutSceneTimer=521}] 8904.438 60.26185 18.8187 -164.05 2.14
tp @s[scores={cutSceneTimer=522}] 8904.439 60.26178 18.81677 -164.05 2.14
tp @s[scores={cutSceneTimer=523}] 8904.44 60.2617 18.81485 -164.05 2.14
tp @s[scores={cutSceneTimer=524}] 8904.441 60.26162 18.81293 -164.05 2.14
tp @s[scores={cutSceneTimer=525}] 8904.442 60.26155 18.81101 -164.05 2.14
tp @s[scores={cutSceneTimer=526}] 8904.443 60.26147 18.80908 -164.05 2.14
tp @s[scores={cutSceneTimer=527}] 8904.444 60.26139 18.80716 -164.05 2.14
tp @s[scores={cutSceneTimer=528}] 8904.445 60.26132 18.80524 -164.05 2.14
tp @s[scores={cutSceneTimer=529}] 8904.446 60.26124 18.80332 -164.05 2.14
tp @s[scores={cutSceneTimer=530}] 8904.447 60.26117 18.80139 -164.05 2.14
tp @s[scores={cutSceneTimer=531}] 8904.448 60.26109 18.79947 -164.05 2.14
tp @s[scores={cutSceneTimer=532}] 8904.449 60.26101 18.79755 -164.05 2.14
tp @s[scores={cutSceneTimer=533}] 8904.45 60.26094 18.79563 -164.05 2.14
tp @s[scores={cutSceneTimer=534}] 8904.451 60.26086 18.7937 -164.05 2.14
tp @s[scores={cutSceneTimer=535}] 8904.452 60.26078 18.79178 -164.05 2.14
tp @s[scores={cutSceneTimer=536}] 8904.453 60.26071 18.78986 -164.05 2.14
tp @s[scores={cutSceneTimer=537}] 8904.454 60.26063 18.78794 -164.05 2.14
tp @s[scores={cutSceneTimer=538}] 8904.455 60.26056 18.78601 -164.05 2.14
tp @s[scores={cutSceneTimer=539}] 8904.456 60.26048 18.78409 -164.05 2.14
tp @s[scores={cutSceneTimer=540}] 8904.457 60.2604 18.78217 -164.05 2.14
tp @s[scores={cutSceneTimer=541}] 8904.458 60.26033 18.78024 -164.05 2.14
tp @s[scores={cutSceneTimer=542}] 8904.459 60.26025 18.77832 -164.05 2.14
tp @s[scores={cutSceneTimer=543}] 8904.46 60.26017 18.7764 -164.05 2.14
tp @s[scores={cutSceneTimer=544}] 8904.461 60.2601 18.77448 -164.05 2.14
tp @s[scores={cutSceneTimer=545}] 8904.462 60.26002 18.77255 -164.05 2.14
tp @s[scores={cutSceneTimer=546}] 8904.463 60.25994 18.77063 -164.05 2.14
tp @s[scores={cutSceneTimer=547}] 8904.464 60.25987 18.76871 -164.05 2.14
tp @s[scores={cutSceneTimer=548}] 8904.465 60.25979 18.76679 -164.05 2.14
tp @s[scores={cutSceneTimer=549}] 8904.466 60.25972 18.76486 -164.05 2.14
tp @s[scores={cutSceneTimer=550}] 8904.467 60.25964 18.76294 -164.05 2.14
tp @s[scores={cutSceneTimer=551}] 8904.468 60.25956 18.76102 -164.05 2.14
tp @s[scores={cutSceneTimer=552}] 8904.469 60.25949 18.7591 -164.05 2.14
tp @s[scores={cutSceneTimer=553}] 8904.47 60.25941 18.75717 -164.05 2.14
tp @s[scores={cutSceneTimer=554}] 8904.471 60.25933 18.75525 -164.05 2.14
tp @s[scores={cutSceneTimer=555}] 8904.472 60.25926 18.75333 -164.05 2.14
tp @s[scores={cutSceneTimer=556}] 8904.473 60.25918 18.75141 -164.05 2.14
tp @s[scores={cutSceneTimer=557}] 8904.474 60.25911 18.74948 -164.05 2.14
tp @s[scores={cutSceneTimer=558}] 8904.475 60.25903 18.74756 -164.05 2.14
tp @s[scores={cutSceneTimer=559}] 8904.476 60.25895 18.74564 -164.05 2.14
tp @s[scores={cutSceneTimer=560}] 8904.477 60.25888 18.74372 -164.05 2.14
tp @s[scores={cutSceneTimer=561}] 8904.478 60.2588 18.74179 -164.05 2.14
tp @s[scores={cutSceneTimer=562}] 8904.479 60.25872 18.73987 -164.05 2.14
tp @s[scores={cutSceneTimer=563}] 8904.479 60.25865 18.73795 -164.05 2.14
tp @s[scores={cutSceneTimer=564}] 8904.48 60.25857 18.73602 -164.05 2.14
tp @s[scores={cutSceneTimer=565}] 8904.481 60.2585 18.7341 -164.05 2.14
tp @s[scores={cutSceneTimer=566}] 8904.482 60.25842 18.73218 -164.05 2.14
tp @s[scores={cutSceneTimer=567}] 8904.483 60.25834 18.73026 -164.05 2.14
tp @s[scores={cutSceneTimer=568}] 8904.484 60.25827 18.72833 -164.05 2.14
tp @s[scores={cutSceneTimer=569}] 8904.485 60.25819 18.72641 -164.05 2.14
tp @s[scores={cutSceneTimer=570}] 8904.486 60.25811 18.72449 -164.05 2.14
tp @s[scores={cutSceneTimer=571}] 8904.487 60.25804 18.72257 -164.05 2.14
tp @s[scores={cutSceneTimer=572}] 8904.488 60.25796 18.72064 -164.05 2.14
tp @s[scores={cutSceneTimer=573}] 8904.489 60.25788 18.71872 -164.05 2.14
tp @s[scores={cutSceneTimer=574}] 8904.49 60.25781 18.7168 -164.05 2.14
tp @s[scores={cutSceneTimer=575}] 8904.491 60.25773 18.71488 -164.05 2.14
tp @s[scores={cutSceneTimer=576}] 8904.492 60.25766 18.71295 -164.05 2.14
tp @s[scores={cutSceneTimer=577}] 8904.493 60.25758 18.71103 -164.05 2.14
tp @s[scores={cutSceneTimer=578}] 8904.494 60.2575 18.70911 -164.05 2.14
tp @s[scores={cutSceneTimer=579}] 8904.495 60.25743 18.70719 -164.05 2.14
tp @s[scores={cutSceneTimer=580}] 8904.496 60.25735 18.70526 -164.05 2.14
tp @s[scores={cutSceneTimer=581}] 8904.497 60.25727 18.70334 -164.05 2.14
tp @s[scores={cutSceneTimer=582}] 8904.498 60.2572 18.70142 -164.05 2.14
tp @s[scores={cutSceneTimer=583}] 8904.499 60.25712 18.6995 -164.05 2.14
tp @s[scores={cutSceneTimer=584}] 8904.5 60.25705 18.69757 -164.05 2.14
tp @s[scores={cutSceneTimer=585}] 8904.501 60.25697 18.69565 -164.05 2.14
tp @s[scores={cutSceneTimer=586}] 8904.502 60.25689 18.69373 -164.05 2.14
tp @s[scores={cutSceneTimer=587}] 8904.503 60.25682 18.6918 -164.05 2.14
tp @s[scores={cutSceneTimer=588}] 8904.504 60.25674 18.68988 -164.05 2.14
tp @s[scores={cutSceneTimer=589}] 8904.505 60.25666 18.68796 -164.05 2.14
tp @s[scores={cutSceneTimer=590}] 8904.506 60.25659 18.68604 -164.05 2.14
tp @s[scores={cutSceneTimer=591}] 8904.507 60.25651 18.68411 -164.05 2.14
tp @s[scores={cutSceneTimer=592}] 8904.508 60.25644 18.68219 -164.05 2.14
tp @s[scores={cutSceneTimer=593}] 8904.509 60.25636 18.68027 -164.05 2.14
tp @s[scores={cutSceneTimer=594}] 8904.51 60.25628 18.67835 -164.05 2.14
tp @s[scores={cutSceneTimer=595}] 8904.511 60.25621 18.67642 -164.05 2.14
tp @s[scores={cutSceneTimer=596}] 8904.512 60.25613 18.6745 -164.05 2.14
tp @s[scores={cutSceneTimer=597}] 8904.513 60.25605 18.67258 -164.05 2.14
tp @s[scores={cutSceneTimer=598}] 8904.514 60.25598 18.67066 -164.05 2.14
tp @s[scores={cutSceneTimer=599}] 8904.515 60.2559 18.66873 -164.05 2.14
tp @s[scores={cutSceneTimer=600}] 8904.516 60.25583 18.66681 -164.05 2.14
tp @s[scores={cutSceneTimer=601}] 8904.517 60.25575 18.66489 -164.05 2.14
tp @s[scores={cutSceneTimer=602}] 8904.518 60.25567 18.66297 -164.05 2.14
tp @s[scores={cutSceneTimer=603}] 8904.519 60.2556 18.66104 -164.05 2.14
tp @s[scores={cutSceneTimer=604}] 8904.52 60.25552 18.65912 -164.05 2.14
tp @s[scores={cutSceneTimer=605}] 8904.521 60.25544 18.6572 -164.05 2.14
tp @s[scores={cutSceneTimer=606}] 8904.521 60.25537 18.65528 -164.05 2.14
tp @s[scores={cutSceneTimer=607}] 8904.522 60.25529 18.65335 -164.05 2.14
tp @s[scores={cutSceneTimer=608}] 8904.523 60.25521 18.65143 -164.05 2.14
tp @s[scores={cutSceneTimer=609}] 8904.524 60.25514 18.64951 -164.05 2.14
tp @s[scores={cutSceneTimer=610}] 8904.525 60.25506 18.64758 -164.05 2.14
tp @s[scores={cutSceneTimer=611}] 8904.526 60.25499 18.64566 -164.05 2.14
tp @s[scores={cutSceneTimer=612}] 8904.527 60.25491 18.64374 -164.05 2.14
tp @s[scores={cutSceneTimer=613}] 8904.528 60.25483 18.64182 -164.05 2.14
tp @s[scores={cutSceneTimer=614}] 8904.529 60.25476 18.63989 -164.05 2.14
tp @s[scores={cutSceneTimer=615}] 8904.53 60.25468 18.63797 -164.05 2.14
tp @s[scores={cutSceneTimer=616}] 8904.531 60.2546 18.63605 -164.05 2.14
tp @s[scores={cutSceneTimer=617}] 8904.532 60.25453 18.63413 -164.05 2.14
tp @s[scores={cutSceneTimer=618}] 8904.533 60.25445 18.6322 -164.05 2.14
tp @s[scores={cutSceneTimer=619}] 8904.534 60.25438 18.63028 -164.05 2.14
tp @s[scores={cutSceneTimer=620}] 8904.535 60.2543 18.62836 -164.05 2.14
tp @s[scores={cutSceneTimer=621}] 8904.536 60.25422 18.62644 -164.05 2.14
tp @s[scores={cutSceneTimer=622}] 8904.537 60.25415 18.62451 -164.05 2.14
tp @s[scores={cutSceneTimer=623}] 8904.538 60.25407 18.62259 -164.05 2.14
tp @s[scores={cutSceneTimer=624}] 8904.539 60.25399 18.62067 -164.05 2.14
tp @s[scores={cutSceneTimer=625}] 8904.54 60.25392 18.61875 -164.05 2.14
tp @s[scores={cutSceneTimer=626}] 8904.541 60.25384 18.61682 -164.05 2.14
tp @s[scores={cutSceneTimer=627}] 8904.542 60.25377 18.6149 -164.05 2.14
tp @s[scores={cutSceneTimer=628}] 8904.543 60.25369 18.61298 -164.05 2.14
tp @s[scores={cutSceneTimer=629}] 8904.544 60.25361 18.61106 -164.05 2.14
tp @s[scores={cutSceneTimer=630}] 8904.545 60.25354 18.60913 -164.05 2.14
tp @s[scores={cutSceneTimer=631}] 8904.546 60.25346 18.60721 -164.05 2.14
tp @s[scores={cutSceneTimer=632}] 8904.547 60.25338 18.60529 -164.05 2.14
tp @s[scores={cutSceneTimer=633}] 8904.548 60.25331 18.60336 -164.05 2.14
tp @s[scores={cutSceneTimer=634}] 8904.549 60.25323 18.60144 -164.05 2.14
tp @s[scores={cutSceneTimer=635}] 8904.55 60.25315 18.59952 -164.05 2.14
tp @s[scores={cutSceneTimer=636}] 8904.551 60.25308 18.5976 -164.05 2.14
tp @s[scores={cutSceneTimer=637}] 8904.552 60.253 18.59567 -164.05 2.14
tp @s[scores={cutSceneTimer=638}] 8904.553 60.25293 18.59375 -164.05 2.14
tp @s[scores={cutSceneTimer=639}] 8904.554 60.25285 18.59183 -164.05 2.14
tp @s[scores={cutSceneTimer=640}] 8904.555 60.25277 18.58991 -164.05 2.14
tp @s[scores={cutSceneTimer=641}] 8904.556 60.2527 18.58798 -164.05 2.14
tp @s[scores={cutSceneTimer=642}] 8904.557 60.25262 18.58606 -164.05 2.14
tp @s[scores={cutSceneTimer=643}] 8904.558 60.25254 18.58414 -164.05 2.14
tp @s[scores={cutSceneTimer=644}] 8904.559 60.25247 18.58222 -164.05 2.14
tp @s[scores={cutSceneTimer=645}] 8904.56 60.25239 18.58029 -164.05 2.14
tp @s[scores={cutSceneTimer=646}] 8904.561 60.25232 18.57837 -164.05 2.14
tp @s[scores={cutSceneTimer=647}] 8904.562 60.25224 18.57645 -164.05 2.14
tp @s[scores={cutSceneTimer=648}] 8904.563 60.25216 18.57453 -164.05 2.14
tp @s[scores={cutSceneTimer=649}] 8904.563 60.25209 18.5726 -164.05 2.14
tp @s[scores={cutSceneTimer=650}] 8904.564 60.25201 18.57068 -164.05 2.14
tp @s[scores={cutSceneTimer=651}] 8904.565 60.25193 18.56876 -164.05 2.14
tp @s[scores={cutSceneTimer=652}] 8904.566 60.25186 18.56684 -164.05 2.14
tp @s[scores={cutSceneTimer=653}] 8904.567 60.25178 18.56491 -164.05 2.14
tp @s[scores={cutSceneTimer=654}] 8904.568 60.25171 18.56299 -164.05 2.14
tp @s[scores={cutSceneTimer=655}] 8904.569 60.25163 18.56107 -164.05 2.14
tp @s[scores={cutSceneTimer=656}] 8904.57 60.25155 18.55914 -164.05 2.14
tp @s[scores={cutSceneTimer=657}] 8904.571 60.25148 18.55722 -164.05 2.14
tp @s[scores={cutSceneTimer=658}] 8904.572 60.2514 18.5553 -164.05 2.14
tp @s[scores={cutSceneTimer=659}] 8904.573 60.25132 18.55338 -164.05 2.14
tp @s[scores={cutSceneTimer=660}] 8904.574 60.25125 18.55145 -164.05 2.14
tp @s[scores={cutSceneTimer=661}] 8904.575 60.25117 18.54953 -164.05 2.14
tp @s[scores={cutSceneTimer=662}] 8904.576 60.25109 18.54761 -164.05 2.14
tp @s[scores={cutSceneTimer=663}] 8904.577 60.25102 18.54569 -164.05 2.14
tp @s[scores={cutSceneTimer=664}] 8904.578 60.25094 18.54376 -164.05 2.14
tp @s[scores={cutSceneTimer=665}] 8904.579 60.25087 18.54184 -164.05 2.14
tp @s[scores={cutSceneTimer=666}] 8904.58 60.25079 18.53992 -164.05 2.14
tp @s[scores={cutSceneTimer=667}] 8904.581 60.25071 18.538 -164.05 2.14
tp @s[scores={cutSceneTimer=668}] 8904.582 60.25064 18.53607 -164.05 2.14
tp @s[scores={cutSceneTimer=669}] 8904.583 60.25056 18.53415 -164.05 2.14
tp @s[scores={cutSceneTimer=670}] 8904.584 60.25048 18.53223 -164.05 2.14
tp @s[scores={cutSceneTimer=671}] 8904.585 60.25041 18.53031 -164.05 2.14
tp @s[scores={cutSceneTimer=672}] 8904.586 60.25033 18.52838 -164.05 2.14
tp @s[scores={cutSceneTimer=673}] 8904.587 60.25026 18.52646 -164.05 2.14
tp @s[scores={cutSceneTimer=674}] 8904.588 60.25018 18.52454 -164.05 2.14
tp @s[scores={cutSceneTimer=675}] 8904.589 60.2501 18.52262 -164.05 2.14
tp @s[scores={cutSceneTimer=676}] 8904.59 60.25003 18.52069 -164.05 2.14
tp @s[scores={cutSceneTimer=677}] 8904.591 60.24995 18.51877 -164.05 2.14
tp @s[scores={cutSceneTimer=678}] 8904.592 60.24987 18.51685 -164.05 2.14
tp @s[scores={cutSceneTimer=679}] 8904.593 60.2498 18.51493 -164.05 2.14
tp @s[scores={cutSceneTimer=680}] 8904.594 60.24972 18.513 -164.05 2.14
tp @s[scores={cutSceneTimer=681}] 8904.595 60.24965 18.51108 -164.05 2.14
tp @s[scores={cutSceneTimer=682}] 8904.596 60.24957 18.50916 -164.05 2.14
tp @s[scores={cutSceneTimer=683}] 8904.597 60.24949 18.50723 -164.05 2.14
tp @s[scores={cutSceneTimer=684}] 8904.598 60.24942 18.50531 -164.05 2.14
tp @s[scores={cutSceneTimer=685}] 8904.599 60.24934 18.50339 -164.05 2.14
tp @s[scores={cutSceneTimer=686}] 8904.6 60.24926 18.50147 -164.05 2.14
tp @s[scores={cutSceneTimer=687}] 8904.601 60.24919 18.49954 -164.05 2.14
tp @s[scores={cutSceneTimer=688}] 8904.602 60.24911 18.49762 -164.05 2.14
tp @s[scores={cutSceneTimer=689}] 8904.603 60.24903 18.4957 -164.05 2.14
tp @s[scores={cutSceneTimer=690}] 8904.604 60.24896 18.49378 -164.05 2.14
tp @s[scores={cutSceneTimer=691}] 8904.604 60.24888 18.49185 -164.05 2.14
tp @s[scores={cutSceneTimer=692}] 8904.605 60.24881 18.48993 -164.05 2.14
tp @s[scores={cutSceneTimer=693}] 8904.606 60.24873 18.48801 -164.05 2.14
tp @s[scores={cutSceneTimer=694}] 8904.607 60.24865 18.48609 -164.05 2.14
tp @s[scores={cutSceneTimer=695}] 8904.608 60.24858 18.48416 -164.05 2.14
tp @s[scores={cutSceneTimer=696}] 8904.609 60.2485 18.48224 -164.05 2.14
tp @s[scores={cutSceneTimer=697}] 8904.61 60.24842 18.48032 -164.05 2.14
tp @s[scores={cutSceneTimer=698}] 8904.611 60.24835 18.4784 -164.05 2.14
tp @s[scores={cutSceneTimer=699}] 8904.612 60.24827 18.47647 -164.05 2.14
tp @s[scores={cutSceneTimer=700}] 8904.613 60.2482 18.47455 -164.05 2.14
tp @s[scores={cutSceneTimer=701}] 8904.614 60.24812 18.47263 -164.05 2.14
tp @s[scores={cutSceneTimer=702}] 8904.615 60.24804 18.47071 -164.05 2.14
tp @s[scores={cutSceneTimer=703}] 8904.616 60.24797 18.46878 -164.05 2.14
tp @s[scores={cutSceneTimer=704}] 8904.617 60.24789 18.46686 -164.05 2.14
tp @s[scores={cutSceneTimer=705}] 8904.618 60.24781 18.46494 -164.05 2.14
tp @s[scores={cutSceneTimer=706}] 8904.619 60.24774 18.46301 -164.05 2.14
tp @s[scores={cutSceneTimer=707}] 8904.62 60.24766 18.46109 -164.05 2.14
tp @s[scores={cutSceneTimer=708}] 8904.621 60.24759 18.45917 -164.05 2.14
tp @s[scores={cutSceneTimer=709}] 8904.622 60.24751 18.45725 -164.05 2.14
tp @s[scores={cutSceneTimer=710}] 8904.623 60.24743 18.45532 -164.05 2.14
tp @s[scores={cutSceneTimer=711}] 8904.624 60.24736 18.4534 -164.05 2.14
tp @s[scores={cutSceneTimer=712}] 8904.625 60.24728 18.45148 -164.05 2.14
tp @s[scores={cutSceneTimer=713}] 8904.626 60.2472 18.44956 -164.05 2.14
tp @s[scores={cutSceneTimer=714}] 8904.627 60.24713 18.44763 -164.05 2.14
tp @s[scores={cutSceneTimer=715}] 8904.628 60.24705 18.44571 -164.05 2.14
tp @s[scores={cutSceneTimer=716}] 8904.629 60.24697 18.44379 -164.05 2.14
tp @s[scores={cutSceneTimer=717}] 8904.63 60.2469 18.44187 -164.05 2.14
tp @s[scores={cutSceneTimer=718}] 8904.631 60.24682 18.43994 -164.05 2.14
tp @s[scores={cutSceneTimer=719}] 8904.632 60.24675 18.43802 -164.05 2.14
tp @s[scores={cutSceneTimer=720}] 8904.633 60.24667 18.4361 -164.05 2.14
tp @s[scores={cutSceneTimer=721}] 8904.634 60.24659 18.43418 -164.05 2.14
tp @s[scores={cutSceneTimer=722}] 8904.635 60.24652 18.43225 -164.05 2.14
tp @s[scores={cutSceneTimer=723}] 8904.636 60.24644 18.43033 -164.05 2.14
tp @s[scores={cutSceneTimer=724}] 8904.637 60.24636 18.42841 -164.05 2.14
tp @s[scores={cutSceneTimer=725}] 8904.638 60.24629 18.42649 -164.05 2.14
tp @s[scores={cutSceneTimer=726}] 8904.639 60.24621 18.42456 -164.05 2.14
tp @s[scores={cutSceneTimer=727}] 8904.64 60.24614 18.42264 -164.05 2.14
tp @s[scores={cutSceneTimer=728}] 8904.641 60.24606 18.42072 -164.05 2.14
tp @s[scores={cutSceneTimer=729}] 8904.642 60.24598 18.41879 -164.05 2.14
tp @s[scores={cutSceneTimer=730}] 8904.643 60.24591 18.41687 -164.05 2.14
tp @s[scores={cutSceneTimer=731}] 8904.644 60.24583 18.41495 -164.05 2.14
tp @s[scores={cutSceneTimer=732}] 8904.645 60.24575 18.41303 -164.05 2.14
tp @s[scores={cutSceneTimer=733}] 8904.646 60.24568 18.4111 -164.05 2.14
tp @s[scores={cutSceneTimer=734}] 8904.646 60.2456 18.40918 -164.05 2.14
tp @s[scores={cutSceneTimer=735}] 8904.647 60.24553 18.40726 -164.05 2.14
tp @s[scores={cutSceneTimer=736}] 8904.648 60.24545 18.40534 -164.05 2.14
tp @s[scores={cutSceneTimer=737}] 8904.649 60.24537 18.40341 -164.05 2.14
tp @s[scores={cutSceneTimer=738}] 8904.65 60.2453 18.40149 -164.05 2.14
tp @s[scores={cutSceneTimer=739}] 8904.651 60.24522 18.39957 -164.05 2.14
tp @s[scores={cutSceneTimer=740}] 8904.652 60.24514 18.39765 -164.05 2.14
tp @s[scores={cutSceneTimer=741}] 8904.653 60.24507 18.39572 -164.05 2.14
tp @s[scores={cutSceneTimer=742}] 8904.654 60.24499 18.3938 -164.05 2.14
tp @s[scores={cutSceneTimer=743}] 8904.655 60.24492 18.39188 -164.05 2.14
tp @s[scores={cutSceneTimer=744}] 8904.656 60.24484 18.38996 -164.05 2.14
tp @s[scores={cutSceneTimer=745}] 8904.657 60.24476 18.38803 -164.05 2.14
tp @s[scores={cutSceneTimer=746}] 8904.658 60.24469 18.38611 -164.05 2.14
tp @s[scores={cutSceneTimer=747}] 8904.659 60.24461 18.38419 -164.05 2.14
tp @s[scores={cutSceneTimer=748}] 8904.66 60.24453 18.38227 -164.05 2.14
tp @s[scores={cutSceneTimer=749}] 8904.661 60.24446 18.38034 -164.05 2.14
tp @s[scores={cutSceneTimer=750}] 8904.662 60.24438 18.37842 -164.05 2.14
tp @s[scores={cutSceneTimer=751}] 8904.663 60.2443 18.3765 -164.05 2.14
tp @s[scores={cutSceneTimer=752}] 8904.664 60.24423 18.37457 -164.05 2.14
tp @s[scores={cutSceneTimer=753}] 8904.665 60.24415 18.37265 -164.05 2.14
tp @s[scores={cutSceneTimer=754}] 8904.666 60.24408 18.37073 -164.05 2.14
tp @s[scores={cutSceneTimer=755}] 8904.667 60.244 18.36881 -164.05 2.14
tp @s[scores={cutSceneTimer=756}] 8904.668 60.24392 18.36688 -164.05 2.14
tp @s[scores={cutSceneTimer=757}] 8904.669 60.24385 18.36496 -164.05 2.14
tp @s[scores={cutSceneTimer=758}] 8904.67 60.24377 18.36304 -164.05 2.14
tp @s[scores={cutSceneTimer=759}] 8904.671 60.24369 18.36112 -164.05 2.14
tp @s[scores={cutSceneTimer=760}] 8904.672 60.24362 18.35919 -164.05 2.14
tp @s[scores={cutSceneTimer=761}] 8904.673 60.24354 18.35727 -164.05 2.14
tp @s[scores={cutSceneTimer=762}] 8904.674 60.24347 18.35535 -164.05 2.14
tp @s[scores={cutSceneTimer=763}] 8904.675 60.24339 18.35343 -164.05 2.14
tp @s[scores={cutSceneTimer=764}] 8904.676 60.24331 18.3515 -164.05 2.14
tp @s[scores={cutSceneTimer=765}] 8904.677 60.24324 18.34958 -164.05 2.14
tp @s[scores={cutSceneTimer=766}] 8904.678 60.24316 18.34766 -164.05 2.14
tp @s[scores={cutSceneTimer=767}] 8904.679 60.24308 18.34574 -164.05 2.14
tp @s[scores={cutSceneTimer=768}] 8904.68 60.24301 18.34381 -164.05 2.14
tp @s[scores={cutSceneTimer=769}] 8904.681 60.24293 18.34189 -164.05 2.14
tp @s[scores={cutSceneTimer=770}] 8904.682 60.24286 18.33997 -164.05 2.14
tp @s[scores={cutSceneTimer=771}] 8904.683 60.24278 18.33805 -164.05 2.14
tp @s[scores={cutSceneTimer=772}] 8904.684 60.2427 18.33612 -164.05 2.14
tp @s[scores={cutSceneTimer=773}] 8904.685 60.24263 18.3342 -164.05 2.14
tp @s[scores={cutSceneTimer=774}] 8904.686 60.24255 18.33228 -164.05 2.14
tp @s[scores={cutSceneTimer=775}] 8904.687 60.24247 18.33035 -164.05 2.14
tp @s[scores={cutSceneTimer=776}] 8904.688 60.2424 18.32843 -164.05 2.14
tp @s[scores={cutSceneTimer=777}] 8904.688 60.24232 18.32651 -164.05 2.14
tp @s[scores={cutSceneTimer=778}] 8904.689 60.24224 18.32459 -164.05 2.14
tp @s[scores={cutSceneTimer=779}] 8904.69 60.24217 18.32266 -164.05 2.14
tp @s[scores={cutSceneTimer=780}] 8904.691 60.24209 18.32074 -164.05 2.14
tp @s[scores={cutSceneTimer=781}] 8904.692 60.24202 18.31882 -164.05 2.14
tp @s[scores={cutSceneTimer=782}] 8904.693 60.24194 18.3169 -164.05 2.14
tp @s[scores={cutSceneTimer=783}] 8904.694 60.24186 18.31497 -164.05 2.14
tp @s[scores={cutSceneTimer=784}] 8904.695 60.24179 18.31305 -164.05 2.14
tp @s[scores={cutSceneTimer=785}] 8904.696 60.24171 18.31113 -164.05 2.14
tp @s[scores={cutSceneTimer=786}] 8904.697 60.24163 18.30921 -164.05 2.14
tp @s[scores={cutSceneTimer=787}] 8904.698 60.24156 18.30728 -164.05 2.14
tp @s[scores={cutSceneTimer=788}] 8904.699 60.24148 18.30536 -164.05 2.14
tp @s[scores={cutSceneTimer=789}] 8904.7 60.24141 18.30344 -164.05 2.14
tp @s[scores={cutSceneTimer=790}] 8904.701 60.24133 18.30152 -164.05 2.14
tp @s[scores={cutSceneTimer=791}] 8904.702 60.24125 18.29959 -164.05 2.14
tp @s[scores={cutSceneTimer=792}] 8904.703 60.24118 18.29767 -164.05 2.14
tp @s[scores={cutSceneTimer=793}] 8904.704 60.2411 18.29575 -164.05 2.14
tp @s[scores={cutSceneTimer=794}] 8904.705 60.24102 18.29383 -164.05 2.14
tp @s[scores={cutSceneTimer=795}] 8904.706 60.24095 18.2919 -164.05 2.14
tp @s[scores={cutSceneTimer=796}] 8904.707 60.24087 18.28998 -164.05 2.14
tp @s[scores={cutSceneTimer=797}] 8904.708 60.2408 18.28806 -164.05 2.14
tp @s[scores={cutSceneTimer=798}] 8904.709 60.24072 18.28613 -164.05 2.14
tp @s[scores={cutSceneTimer=799}] 8904.71 60.24064 18.28421 -164.05 2.14
tp @s[scores={cutSceneTimer=800}] 8904.711 60.24057 18.28229 -164.05 2.14
tp @s[scores={cutSceneTimer=801}] 8904.712 60.24049 18.28037 -164.05 2.14
tp @s[scores={cutSceneTimer=802}] 8904.713 60.24041 18.27844 -164.05 2.14
tp @s[scores={cutSceneTimer=803}] 8904.714 60.24034 18.27652 -164.05 2.14
tp @s[scores={cutSceneTimer=804}] 8904.715 60.24026 18.2746 -164.05 2.14
tp @s[scores={cutSceneTimer=805}] 8904.716 60.24018 18.27268 -164.05 2.14
tp @s[scores={cutSceneTimer=806}] 8904.717 60.24011 18.27075 -164.05 2.14
tp @s[scores={cutSceneTimer=807}] 8904.718 60.24003 18.26883 -164.05 2.14
tp @s[scores={cutSceneTimer=808}] 8904.719 60.23996 18.26691 -164.05 2.14
tp @s[scores={cutSceneTimer=809}] 8904.72 60.23988 18.26499 -164.05 2.14
tp @s[scores={cutSceneTimer=810}] 8904.721 60.2398 18.26306 -164.05 2.14
tp @s[scores={cutSceneTimer=811}] 8904.722 60.23973 18.26114 -164.05 2.14
tp @s[scores={cutSceneTimer=812}] 8904.723 60.23965 18.25922 -164.05 2.14
tp @s[scores={cutSceneTimer=813}] 8904.724 60.23957 18.2573 -164.05 2.14
tp @s[scores={cutSceneTimer=814}] 8904.725 60.2395 18.25537 -164.05 2.14
tp @s[scores={cutSceneTimer=815}] 8904.726 60.23942 18.25345 -164.05 2.14
tp @s[scores={cutSceneTimer=816}] 8904.727 60.23935 18.25153 -164.05 2.14
tp @s[scores={cutSceneTimer=817}] 8904.728 60.23927 18.24961 -164.05 2.14
tp @s[scores={cutSceneTimer=818}] 8904.729 60.23919 18.24768 -164.05 2.14
tp @s[scores={cutSceneTimer=819}] 8904.729 60.23912 18.24576 -164.05 2.14
tp @s[scores={cutSceneTimer=820}] 8904.73 60.23904 18.24384 -164.05 2.14
tp @s[scores={cutSceneTimer=821}] 8904.731 60.23896 18.24191 -164.05 2.14
tp @s[scores={cutSceneTimer=822}] 8904.732 60.23889 18.23999 -164.05 2.14
tp @s[scores={cutSceneTimer=823}] 8904.733 60.23881 18.23807 -164.05 2.14
tp @s[scores={cutSceneTimer=824}] 8904.734 60.23874 18.23615 -164.05 2.14
tp @s[scores={cutSceneTimer=825}] 8904.735 60.23866 18.23422 -164.05 2.14
tp @s[scores={cutSceneTimer=826}] 8904.736 60.23858 18.2323 -164.05 2.14
tp @s[scores={cutSceneTimer=827}] 8904.737 60.23851 18.23038 -164.05 2.14
tp @s[scores={cutSceneTimer=828}] 8904.738 60.23843 18.22846 -164.05 2.14
tp @s[scores={cutSceneTimer=829}] 8904.739 60.23835 18.22653 -164.05 2.14
tp @s[scores={cutSceneTimer=830}] 8904.74 60.23828 18.22461 -164.05 2.14
tp @s[scores={cutSceneTimer=831}] 8904.741 60.2382 18.22269 -164.05 2.14
tp @s[scores={cutSceneTimer=832}] 8904.742 60.23812 18.22077 -164.05 2.14
tp @s[scores={cutSceneTimer=833}] 8904.743 60.23805 18.21884 -164.05 2.14
tp @s[scores={cutSceneTimer=834}] 8904.744 60.23797 18.21692 -164.05 2.14
tp @s[scores={cutSceneTimer=835}] 8904.745 60.2379 18.215 -164.05 2.14
tp @s[scores={cutSceneTimer=836}] 8904.746 60.23782 18.21308 -164.05 2.14
tp @s[scores={cutSceneTimer=837}] 8904.747 60.23774 18.21115 -164.05 2.14
tp @s[scores={cutSceneTimer=838}] 8904.748 60.23767 18.20923 -164.05 2.14
tp @s[scores={cutSceneTimer=839}] 8904.749 60.23759 18.20731 -164.05 2.14
tp @s[scores={cutSceneTimer=840}] 8904.75 60.23751 18.20539 -164.05 2.14
tp @s[scores={cutSceneTimer=841}] 8904.751 60.23744 18.20346 -164.05 2.14
tp @s[scores={cutSceneTimer=842}] 8904.752 60.23736 18.20154 -164.05 2.14
tp @s[scores={cutSceneTimer=843}] 8904.753 60.23729 18.19962 -164.05 2.14
tp @s[scores={cutSceneTimer=844}] 8904.754 60.23721 18.19769 -164.05 2.14
tp @s[scores={cutSceneTimer=845}] 8904.755 60.23713 18.19577 -164.05 2.14
tp @s[scores={cutSceneTimer=846}] 8904.756 60.23706 18.19385 -164.05 2.14
tp @s[scores={cutSceneTimer=847}] 8904.757 60.23698 18.19193 -164.05 2.14
tp @s[scores={cutSceneTimer=848}] 8904.758 60.2369 18.19 -164.05 2.14
tp @s[scores={cutSceneTimer=849}] 8904.759 60.23683 18.18808 -164.05 2.14
tp @s[scores={cutSceneTimer=850}] 8904.76 60.23675 18.18616 -164.05 2.14
tp @s[scores={cutSceneTimer=851}] 8904.761 60.23668 18.18424 -164.05 2.14
tp @s[scores={cutSceneTimer=852}] 8904.762 60.2366 18.18231 -164.05 2.14
tp @s[scores={cutSceneTimer=853}] 8904.763 60.23652 18.18039 -164.05 2.14
tp @s[scores={cutSceneTimer=854}] 8904.764 60.23645 18.17847 -164.05 2.14
tp @s[scores={cutSceneTimer=855}] 8904.765 60.23637 18.17655 -164.05 2.14
tp @s[scores={cutSceneTimer=856}] 8904.766 60.23629 18.17462 -164.05 2.14
tp @s[scores={cutSceneTimer=857}] 8904.767 60.23622 18.1727 -164.05 2.14
tp @s[scores={cutSceneTimer=858}] 8904.768 60.23614 18.17078 -164.05 2.14
tp @s[scores={cutSceneTimer=859}] 8904.769 60.23606 18.16886 -164.05 2.14
tp @s[scores={cutSceneTimer=860}] 8904.77 60.23599 18.16693 -164.05 2.14
tp @s[scores={cutSceneTimer=861}] 8904.771 60.23591 18.16501 -164.05 2.14
tp @s[scores={cutSceneTimer=862}] 8904.771 60.23584 18.16309 -164.05 2.14
tp @s[scores={cutSceneTimer=863}] 8904.772 60.23576 18.16117 -164.05 2.14
tp @s[scores={cutSceneTimer=864}] 8904.773 60.23568 18.15924 -164.05 2.14
tp @s[scores={cutSceneTimer=865}] 8904.774 60.23561 18.15732 -164.05 2.14
tp @s[scores={cutSceneTimer=866}] 8904.775 60.23553 18.1554 -164.05 2.14
tp @s[scores={cutSceneTimer=867}] 8904.776 60.23545 18.15347 -164.05 2.14
tp @s[scores={cutSceneTimer=868}] 8904.777 60.23538 18.15155 -164.05 2.14
tp @s[scores={cutSceneTimer=869}] 8904.778 60.2353 18.14963 -164.05 2.14
tp @s[scores={cutSceneTimer=870}] 8904.779 60.23523 18.14771 -164.05 2.14
execute as @s[scores={cutSceneTimer=850}] run function hp:cutscenes/fade_in

# ¤Twycross:¤ Are we ready to begin? Wonderful.
# ¤Двукрест:¤ Готовы начать? Прекрасно.
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=20..120}] run title @s actionbar ["",{"text":""},{"text":"Двукрест;","color":"dark_gray"},{"text":" Готовы начать? Прекрасно."}]
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=27},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=31},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=38},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=49},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=53},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=60},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Twycross:¤ Now, as you know, apparition is a magical form of transportation,
# ¤Twycross:¤ Как вы знаете, трансгрессия это магическая форма телепортации,
execute as @s[scores={cutSceneTimer=121},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=121..230}] run title @s actionbar ["",{"text":""},{"text":"Двукрест;","color":"dark_gray"},{"text":" Как вы знаете, трансгрессия это магическая форма телепортации,"}]
execute as @s[scores={cutSceneTimer=121},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=128},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=132},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=139},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=143},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=150},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=154},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=161},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Twycross:¤ instantly transporting you from one location to another.
# ¤Twycross:¤ которая мгновенно перемещает вас с одного места в другое.
execute as @s[scores={cutSceneTimer=231},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=231..300}] run title @s actionbar ["",{"text":""},{"text":"Двукрест;","color":"dark_gray"},{"text":" которая мгновенно перемещает вас с одного места в другое."}]
execute as @s[scores={cutSceneTimer=231},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=238},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=242},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=249},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=253},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=260},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=264},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=271},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral



# ¤Twycross:¤ This ability can be very useful
# ¤Twycross:¤ Эта возможность очень полезна
execute as @s[scores={cutSceneTimer=301},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=301..350}] run title @s actionbar ["",{"text":""},{"text":"Двукрест;","color":"dark_gray"},{"text":" Эта возможность очень полезна"}]
execute as @s[scores={cutSceneTimer=301},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=308},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=312},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=319},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=323},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=330},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=334},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=341},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Twycross:¤ and at times necessary in order to reach areas that are otherwise inaccessible.
# ¤Twycross:¤ когда необходимо попасть в недоступные другим способом места.
execute as @s[scores={cutSceneTimer=351},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=351..420}] run title @s actionbar ["",{"text":""},{"text":"Двукрест;","color":"dark_gray"},{"text":" когда необходимо попасть в недоступные другим способом места."}]
execute as @s[scores={cutSceneTimer=351},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=358},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=362},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=369},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=373},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=380},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=384},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=391},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral



# ¤Twycross:¤ Let me demonstrate:
# ¤Twycross:¤ Позвольте продемонстировать:
execute as @s[scores={cutSceneTimer=421},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=421..480}] run title @s actionbar ["",{"text":""},{"text":"Двукрест;","color":"dark_gray"},{"text":" Позвольте продемонстировать:"}]
execute as @s[scores={cutSceneTimer=421},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=428},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=432},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=449},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=443},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=450},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=454},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=461},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral

execute as @s[scores={cutSceneTimer=500},tag=cutsceneLeader] positioned as @e[tag=cutsceneTwycross1] run particle minecraft:poof ~ ~0.75 ~ 0.15 1 0.15 0.05 100 force
execute as @s[scores={cutSceneTimer=500},tag=cutsceneLeader] positioned as @e[tag=cutsceneTwycross1] run playsound minecraft:custom.spell.apparate.depart master @a ~ ~ ~ 3 1
execute as @s[scores={cutSceneTimer=500},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1] at @s run tp @s ~ 57 ~

execute as @s[scores={cutSceneTimer=510},tag=cutsceneLeader] as @e[tag=cutsceneTwycross2] at @s run tp @s ~ 60 ~
execute as @s[scores={cutSceneTimer=510},tag=cutsceneLeader] positioned as @e[tag=cutsceneTwycross2] run playsound minecraft:custom.spell.apparate.arrive master @a ~ ~ ~ 3 1
execute as @s[scores={cutSceneTimer=510},tag=cutsceneLeader] positioned as @e[tag=cutsceneTwycross2] run particle minecraft:poof ~ ~0.75 ~ 0.15 1 0.15 0.05 100 force

execute as @s[scores={cutSceneTimer=530},tag=cutsceneLeader] positioned as @e[tag=cutsceneTwycross2] run particle minecraft:poof ~ ~0.75 ~ 0.15 1 0.15 0.05 100 force
execute as @s[scores={cutSceneTimer=530},tag=cutsceneLeader] positioned as @e[tag=cutsceneTwycross2] run playsound minecraft:custom.spell.apparate.depart master @a ~ ~ ~ 3 1
execute as @s[scores={cutSceneTimer=530},tag=cutsceneLeader] as @e[tag=cutsceneTwycross2] at @s run tp @s ~ 57 ~

execute as @s[scores={cutSceneTimer=540},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1] at @s run tp @s ~ 60 ~
execute as @s[scores={cutSceneTimer=540},tag=cutsceneLeader] positioned as @e[tag=cutsceneTwycross1] run playsound minecraft:custom.spell.apparate.arrive master @a ~ ~ ~ 3 1
execute as @s[scores={cutSceneTimer=540},tag=cutsceneLeader] positioned as @e[tag=cutsceneTwycross1] run particle minecraft:poof ~ ~0.75 ~ 0.15 1 0.15 0.05 100 force

execute as @s[scores={cutSceneTimer=480..550}] run title @s actionbar ""

# ¤Twycross:¤ Like so
execute as @s[scores={cutSceneTimer=551},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=551..610}] run title @s actionbar ["",{"text":""},{"text":"Двукрест;","color":"dark_gray"},{"text":" Вот так"}]
execute as @s[scores={cutSceneTimer=551},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=558},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=562},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=569},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=573},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=580},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=584},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=591},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral

execute as @s[scores={cutSceneTimer=610..650}] run title @s actionbar ""

# ¤Twycross:¤ The important things to remember when apparating are the three D's: "Destination, Determination, Deliberation."
# ¤Twycross:¤ В Трансгрессии очень важно помнить правило трёх 'Н'; 'Нацеленность, Настойчивость, Неспешность'
execute as @s[scores={cutSceneTimer=651},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=651..800}] run title @s actionbar ["",{"text":""},{"text":"Двукрест;","color":"dark_gray"},{"text":" В Трансгрессии очень важно помнить правило трёх 'Н'; 'Нацеленность, Настойчивость, Неспешность'"}]
execute as @s[scores={cutSceneTimer=651},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=658},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=662},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=669},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=673},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=680},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=684},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=691},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Twycross:¤ Now you try.
execute as @s[scores={cutSceneTimer=801},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 100000 1 0
execute as @s[scores={cutSceneTimer=801..870}] run title @s actionbar ["",{"text":""},{"text":"Двукрест;","color":"dark_gray"},{"text":" Ваш Черёд"}]
execute as @s[scores={cutSceneTimer=801},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=808},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=812},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=819},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=823},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=830},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=834},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=841},tag=cutsceneLeader] as @e[tag=cutsceneTwycross1,limit=1] run function hp:npc/update_npc_head_neutral


# Clear subtitles instantly rather than a slow fade I can't control
execute as @s[scores={cutSceneTimer=871..}] run title @s actionbar ""

execute as @s[scores={cutSceneTimer=872}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=872}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=872}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=872}] run effect clear @s blindness
execute as @s[scores={cutSceneTimer=872}] run effect clear @s night_vision
execute as @s[scores={cutSceneTimer=872}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=873}] run tp @s[scores={playerID=1}] 8904.25 60.00 18.98 -179.79 -0.53
execute as @s[scores={cutSceneTimer=873}] run tp @s[scores={playerID=2}] 8905.97 60.00 18.93 -185.06 0.72
execute as @s[scores={cutSceneTimer=873}] run tp @s[scores={playerID=3}] 8902.76 60.00 18.69 -173.55 0.12
execute as @s[scores={cutSceneTimer=873}] run tp @s[scores={playerID=4}] 8903.66 60.00 20.54 -176.64 0.61
execute as @s[scores={cutSceneTimer=893}] run tag @s add dontExitCutSceneSilent
execute as @s[scores={cutSceneTimer=893}] run scoreboard players set playerInApparitionSpellChallenge global 1
execute as @s[scores={cutSceneTimer=893}] run function hp:quests/timer/start_pensive_timer
execute as @s[scores={cutSceneTimer=893}] run function hp:cutscenes/exit_cutscene



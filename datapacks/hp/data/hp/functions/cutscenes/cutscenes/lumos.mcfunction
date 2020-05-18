execute as @s[scores={trackQuestState=2}] run scoreboard players set @s questState 3
execute as @s[scores={trackQuestState=2}] run function hp:quests/set_quest


execute as @s[scores={cutSceneTimer=500},tag=cutsceneLeader] if score playerInLumosSpellChallenge global matches 0 run function hp:quests/quests/lumos/reset_lumos_spell_challenge

execute as @s[scores={cutSceneTimer=-19}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=-19}] run function hp:music/music/silence
execute as @s[scores={cutSceneTimer=-19}] run tag @s remove musicController
execute as @s[scores={cutSceneTimer=22}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=22}] run function hp:cutscenes/fade_out

execute as @s[scores={cutSceneTimer=..20}] run title @s actionbar ["",{"text":" "}]

execute as @s[scores={cutSceneTimer=22},tag=gameLeader] run time set day
execute as @s[scores={cutSceneTimer=22},tag=gameLeader] run gamerule doDaylightCycle false

tp @s[scores={cutSceneTimer=0..22}] 705.5739 64.02986 75.37689 231.58 1.6
tp @s[scores={cutSceneTimer=23}] 705.5778 64.02972 75.37379 231.58 1.6
tp @s[scores={cutSceneTimer=24}] 705.5817 64.02959 75.37068 231.58 1.6
tp @s[scores={cutSceneTimer=25}] 705.5856 64.02945 75.36758 231.58 1.6
tp @s[scores={cutSceneTimer=26}] 705.5895 64.02931 75.36447 231.58 1.6
tp @s[scores={cutSceneTimer=27}] 705.5934 64.02917 75.36137 231.58 1.6
tp @s[scores={cutSceneTimer=28}] 705.5974 64.02904 75.35826 231.58 1.6
tp @s[scores={cutSceneTimer=29}] 705.6013 64.0289 75.35516 231.58 1.6
tp @s[scores={cutSceneTimer=30}] 705.6052 64.02876 75.35205 231.58 1.6
tp @s[scores={cutSceneTimer=31}] 705.6091 64.02863 75.34895 231.58 1.6
tp @s[scores={cutSceneTimer=32}] 705.613 64.02849 75.34584 231.58 1.6
tp @s[scores={cutSceneTimer=33}] 705.6169 64.02835 75.34274 231.58 1.6
tp @s[scores={cutSceneTimer=23}] 5055.531 97.14032 82.96484 -118.92 1.82
tp @s[scores={cutSceneTimer=24}] 5055.527 97.14048 82.96725 -118.92 1.82
tp @s[scores={cutSceneTimer=25}] 5055.522 97.14064 82.96967 -118.92 1.82
tp @s[scores={cutSceneTimer=26}] 5055.518 97.1408 82.97209 -118.92 1.82
tp @s[scores={cutSceneTimer=27}] 5055.514 97.14096 82.97451 -118.92 1.82
tp @s[scores={cutSceneTimer=28}] 5055.509 97.14112 82.97693 -118.92 1.82
tp @s[scores={cutSceneTimer=29}] 5055.505 97.14128 82.97935 -118.92 1.82
tp @s[scores={cutSceneTimer=30}] 5055.5 97.14144 82.98177 -118.92 1.82
tp @s[scores={cutSceneTimer=31}] 5055.496 97.1416 82.98418 -118.92 1.82
tp @s[scores={cutSceneTimer=32}] 5055.492 97.14176 82.9866 -118.92 1.82
tp @s[scores={cutSceneTimer=33}] 5055.487 97.14192 82.98902 -118.92 1.82
tp @s[scores={cutSceneTimer=34}] 5055.483 97.14208 82.99144 -118.92 1.82
tp @s[scores={cutSceneTimer=35}] 5055.479 97.14224 82.99386 -118.92 1.82
tp @s[scores={cutSceneTimer=36}] 5055.474 97.1424 82.99628 -118.92 1.82
tp @s[scores={cutSceneTimer=37}] 5055.47 97.14256 82.9987 -118.92 1.82
tp @s[scores={cutSceneTimer=38}] 5055.465 97.14272 83.00111 -118.92 1.82
tp @s[scores={cutSceneTimer=39}] 5055.461 97.14288 83.00353 -118.92 1.82
tp @s[scores={cutSceneTimer=40}] 5055.457 97.14304 83.00595 -118.92 1.82
tp @s[scores={cutSceneTimer=41}] 5055.452 97.1432 83.00837 -118.92 1.82
tp @s[scores={cutSceneTimer=42}] 5055.448 97.14336 83.01079 -118.92 1.82
tp @s[scores={cutSceneTimer=43}] 5055.443 97.14352 83.01321 -118.92 1.82
tp @s[scores={cutSceneTimer=44}] 5055.439 97.14368 83.01563 -118.92 1.82
tp @s[scores={cutSceneTimer=45}] 5055.435 97.14384 83.01804 -118.92 1.82
tp @s[scores={cutSceneTimer=46}] 5055.43 97.144 83.02046 -118.92 1.82
tp @s[scores={cutSceneTimer=47}] 5055.426 97.14417 83.02288 -118.92 1.82
tp @s[scores={cutSceneTimer=48}] 5055.421 97.14433 83.0253 -118.92 1.82
tp @s[scores={cutSceneTimer=49}] 5055.417 97.14449 83.02772 -118.92 1.82
tp @s[scores={cutSceneTimer=50}] 5055.413 97.14465 83.03014 -118.92 1.82
tp @s[scores={cutSceneTimer=51}] 5055.408 97.14481 83.03255 -118.92 1.82
tp @s[scores={cutSceneTimer=52}] 5055.404 97.14497 83.03497 -118.92 1.82
tp @s[scores={cutSceneTimer=53}] 5055.399 97.14513 83.03739 -118.92 1.82
tp @s[scores={cutSceneTimer=54}] 5055.395 97.14529 83.03981 -118.92 1.82
tp @s[scores={cutSceneTimer=55}] 5055.391 97.14545 83.04223 -118.92 1.82
tp @s[scores={cutSceneTimer=56}] 5055.386 97.14561 83.04465 -118.92 1.82
tp @s[scores={cutSceneTimer=57}] 5055.382 97.14577 83.04707 -118.92 1.82
tp @s[scores={cutSceneTimer=58}] 5055.377 97.14593 83.04948 -118.92 1.82
tp @s[scores={cutSceneTimer=59}] 5055.373 97.14609 83.0519 -118.92 1.82
tp @s[scores={cutSceneTimer=60}] 5055.369 97.14625 83.05432 -118.92 1.82
tp @s[scores={cutSceneTimer=61}] 5055.364 97.14641 83.05674 -118.92 1.82
tp @s[scores={cutSceneTimer=62}] 5055.36 97.14657 83.05916 -118.92 1.82
tp @s[scores={cutSceneTimer=63}] 5055.355 97.14673 83.06158 -118.92 1.82
tp @s[scores={cutSceneTimer=64}] 5055.351 97.14689 83.064 -118.92 1.82
tp @s[scores={cutSceneTimer=65}] 5055.347 97.14705 83.06641 -118.92 1.82
tp @s[scores={cutSceneTimer=66}] 5055.342 97.14721 83.06883 -118.92 1.82
tp @s[scores={cutSceneTimer=67}] 5055.338 97.14737 83.07125 -118.92 1.82
tp @s[scores={cutSceneTimer=68}] 5055.333 97.14753 83.07367 -118.92 1.82
tp @s[scores={cutSceneTimer=69}] 5055.329 97.14769 83.07609 -118.92 1.82
tp @s[scores={cutSceneTimer=70}] 5055.325 97.14785 83.07851 -118.92 1.82
tp @s[scores={cutSceneTimer=71}] 5055.32 97.14801 83.08092 -118.92 1.82
tp @s[scores={cutSceneTimer=72}] 5055.316 97.14817 83.08334 -118.92 1.82
tp @s[scores={cutSceneTimer=73}] 5055.312 97.14833 83.08576 -118.92 1.82
tp @s[scores={cutSceneTimer=74}] 5055.307 97.14849 83.08818 -118.92 1.82
tp @s[scores={cutSceneTimer=75}] 5055.303 97.14865 83.0906 -118.92 1.82
tp @s[scores={cutSceneTimer=76}] 5055.298 97.14881 83.09302 -118.92 1.82
tp @s[scores={cutSceneTimer=77}] 5055.294 97.14897 83.09544 -118.92 1.82
tp @s[scores={cutSceneTimer=78}] 5055.29 97.14913 83.09785 -118.92 1.82
tp @s[scores={cutSceneTimer=79}] 5055.285 97.14929 83.10027 -118.92 1.82
tp @s[scores={cutSceneTimer=80}] 5055.281 97.14945 83.10269 -118.92 1.82
tp @s[scores={cutSceneTimer=81}] 5055.276 97.14961 83.10511 -118.92 1.82
tp @s[scores={cutSceneTimer=82}] 5055.272 97.14977 83.10753 -118.92 1.82
tp @s[scores={cutSceneTimer=83}] 5055.268 97.14993 83.10995 -118.92 1.82
tp @s[scores={cutSceneTimer=84}] 5055.263 97.15009 83.11237 -118.92 1.82
tp @s[scores={cutSceneTimer=85}] 5055.259 97.15025 83.11478 -118.92 1.82
tp @s[scores={cutSceneTimer=86}] 5055.254 97.15041 83.1172 -118.92 1.82
tp @s[scores={cutSceneTimer=87}] 5055.25 97.15057 83.11962 -118.92 1.82
tp @s[scores={cutSceneTimer=88}] 5055.246 97.15073 83.12204 -118.92 1.82
tp @s[scores={cutSceneTimer=89}] 5055.241 97.15089 83.12446 -118.92 1.82
tp @s[scores={cutSceneTimer=90}] 5055.237 97.15105 83.12688 -118.92 1.82
tp @s[scores={cutSceneTimer=91}] 5055.232 97.15121 83.1293 -118.92 1.82
tp @s[scores={cutSceneTimer=92}] 5055.228 97.15137 83.13171 -118.92 1.82
tp @s[scores={cutSceneTimer=93}] 5055.224 97.15154 83.13413 -118.92 1.82
tp @s[scores={cutSceneTimer=94}] 5055.219 97.1517 83.13655 -118.92 1.82
tp @s[scores={cutSceneTimer=95}] 5055.215 97.15186 83.13897 -118.92 1.82
tp @s[scores={cutSceneTimer=96}] 5055.21 97.15202 83.14139 -118.92 1.82
tp @s[scores={cutSceneTimer=97}] 5055.206 97.15218 83.14381 -118.92 1.82
tp @s[scores={cutSceneTimer=98}] 5055.202 97.15234 83.14622 -118.92 1.82
tp @s[scores={cutSceneTimer=99}] 5055.197 97.1525 83.14864 -118.92 1.82
tp @s[scores={cutSceneTimer=100}] 5055.193 97.15266 83.15106 -118.92 1.82
tp @s[scores={cutSceneTimer=101}] 5055.188 97.15282 83.15348 -118.92 1.82
tp @s[scores={cutSceneTimer=102}] 5055.184 97.15298 83.1559 -118.92 1.82
tp @s[scores={cutSceneTimer=103}] 5055.18 97.15314 83.15832 -118.92 1.82
tp @s[scores={cutSceneTimer=104}] 5055.175 97.1533 83.16074 -118.92 1.82
tp @s[scores={cutSceneTimer=105}] 5055.171 97.15346 83.16315 -118.92 1.82
tp @s[scores={cutSceneTimer=106}] 5055.167 97.15362 83.16557 -118.92 1.82
tp @s[scores={cutSceneTimer=107}] 5055.162 97.15378 83.16799 -118.92 1.82
tp @s[scores={cutSceneTimer=108}] 5055.158 97.15394 83.17041 -118.92 1.82
tp @s[scores={cutSceneTimer=109}] 5055.153 97.1541 83.17283 -118.92 1.82
tp @s[scores={cutSceneTimer=110}] 5055.149 97.15426 83.17525 -118.92 1.82
tp @s[scores={cutSceneTimer=111}] 5055.145 97.15442 83.17767 -118.92 1.82
tp @s[scores={cutSceneTimer=112}] 5055.14 97.15458 83.18008 -118.92 1.82
tp @s[scores={cutSceneTimer=113}] 5055.136 97.15474 83.1825 -118.92 1.82
tp @s[scores={cutSceneTimer=114}] 5055.131 97.1549 83.18492 -118.92 1.82
tp @s[scores={cutSceneTimer=115}] 5055.127 97.15506 83.18734 -118.92 1.82
tp @s[scores={cutSceneTimer=116}] 5055.123 97.15522 83.18976 -118.92 1.82
tp @s[scores={cutSceneTimer=117}] 5055.118 97.15538 83.19218 -118.92 1.82
tp @s[scores={cutSceneTimer=118}] 5055.114 97.15554 83.1946 -118.92 1.82
tp @s[scores={cutSceneTimer=119}] 5055.109 97.1557 83.19701 -118.92 1.82
tp @s[scores={cutSceneTimer=120}] 5055.105 97.15586 83.19943 -118.92 1.82
tp @s[scores={cutSceneTimer=121}] 5055.101 97.15602 83.20185 -118.92 1.82
tp @s[scores={cutSceneTimer=122}] 5055.096 97.15618 83.20427 -118.92 1.82
tp @s[scores={cutSceneTimer=123}] 5055.092 97.15634 83.20669 -118.92 1.82
tp @s[scores={cutSceneTimer=124}] 5055.087 97.1565 83.20911 -118.92 1.82
tp @s[scores={cutSceneTimer=125}] 5055.083 97.15666 83.21152 -118.92 1.82
tp @s[scores={cutSceneTimer=126}] 5055.079 97.15682 83.21394 -118.92 1.82
tp @s[scores={cutSceneTimer=127}] 5055.074 97.15698 83.21636 -118.92 1.82
tp @s[scores={cutSceneTimer=128}] 5055.07 97.15714 83.21878 -118.92 1.82
tp @s[scores={cutSceneTimer=129}] 5055.065 97.1573 83.2212 -118.92 1.82
tp @s[scores={cutSceneTimer=130}] 5055.061 97.15746 83.22362 -118.92 1.82
tp @s[scores={cutSceneTimer=131}] 5055.057 97.15762 83.22604 -118.92 1.82
tp @s[scores={cutSceneTimer=132}] 5055.052 97.15778 83.22845 -118.92 1.82
tp @s[scores={cutSceneTimer=133}] 5055.048 97.15794 83.23087 -118.92 1.82
tp @s[scores={cutSceneTimer=134}] 5055.043 97.1581 83.23329 -118.92 1.82
tp @s[scores={cutSceneTimer=135}] 5055.039 97.15826 83.23571 -118.92 1.82
tp @s[scores={cutSceneTimer=136}] 5055.035 97.15842 83.23813 -118.92 1.82
tp @s[scores={cutSceneTimer=137}] 5055.03 97.15858 83.24055 -118.92 1.82
tp @s[scores={cutSceneTimer=138}] 5055.026 97.15874 83.24297 -118.92 1.82
tp @s[scores={cutSceneTimer=139}] 5055.021 97.15891 83.24538 -118.92 1.82
tp @s[scores={cutSceneTimer=140}] 5055.017 97.15907 83.2478 -118.92 1.82
tp @s[scores={cutSceneTimer=141}] 5055.013 97.15923 83.25022 -118.92 1.82
tp @s[scores={cutSceneTimer=142}] 5055.008 97.15939 83.25264 -118.92 1.82
tp @s[scores={cutSceneTimer=143}] 5055.004 97.15955 83.25506 -118.92 1.82
tp @s[scores={cutSceneTimer=144}] 5055.000 97.15971 83.25748 -118.92 1.82
tp @s[scores={cutSceneTimer=145}] 5054.995 97.15987 83.2599 -118.92 1.82
tp @s[scores={cutSceneTimer=146}] 5054.991 97.16003 83.26231 -118.92 1.82
tp @s[scores={cutSceneTimer=147}] 5054.986 97.16019 83.26473 -118.92 1.82
tp @s[scores={cutSceneTimer=148}] 5054.982 97.16035 83.26715 -118.92 1.82
tp @s[scores={cutSceneTimer=149}] 5054.978 97.16051 83.26957 -118.92 1.82
tp @s[scores={cutSceneTimer=150}] 5054.973 97.16067 83.27199 -118.92 1.82
tp @s[scores={cutSceneTimer=151}] 5054.969 97.16083 83.27441 -118.92 1.82
tp @s[scores={cutSceneTimer=152}] 5054.964 97.16099 83.27682 -118.92 1.82
tp @s[scores={cutSceneTimer=153}] 5054.96 97.16115 83.27924 -118.92 1.82
tp @s[scores={cutSceneTimer=154}] 5054.956 97.16131 83.28166 -118.92 1.82
tp @s[scores={cutSceneTimer=155}] 5054.951 97.16147 83.28408 -118.92 1.82
tp @s[scores={cutSceneTimer=156}] 5054.947 97.16163 83.2865 -118.92 1.82
tp @s[scores={cutSceneTimer=157}] 5054.942 97.16179 83.28892 -118.92 1.82
tp @s[scores={cutSceneTimer=158}] 5054.938 97.16195 83.29134 -118.92 1.82
tp @s[scores={cutSceneTimer=159}] 5054.934 97.16211 83.29375 -118.92 1.82
tp @s[scores={cutSceneTimer=160}] 5054.929 97.16227 83.29617 -118.92 1.82
tp @s[scores={cutSceneTimer=161}] 5054.925 97.16243 83.29859 -118.92 1.82
tp @s[scores={cutSceneTimer=162}] 5054.92 97.16259 83.30101 -118.92 1.82
tp @s[scores={cutSceneTimer=163}] 5054.916 97.16275 83.30343 -118.92 1.82
tp @s[scores={cutSceneTimer=164}] 5054.912 97.16291 83.30585 -118.92 1.82
tp @s[scores={cutSceneTimer=165}] 5054.907 97.16307 83.30827 -118.92 1.82
tp @s[scores={cutSceneTimer=166}] 5054.903 97.16323 83.31068 -118.92 1.82
tp @s[scores={cutSceneTimer=167}] 5054.898 97.16339 83.3131 -118.92 1.82
tp @s[scores={cutSceneTimer=168}] 5054.894 97.16355 83.31552 -118.92 1.82
tp @s[scores={cutSceneTimer=169}] 5054.89 97.16371 83.31794 -118.92 1.82
tp @s[scores={cutSceneTimer=170}] 5054.885 97.16387 83.32036 -118.92 1.82
tp @s[scores={cutSceneTimer=171}] 5054.881 97.16403 83.32278 -118.92 1.82
tp @s[scores={cutSceneTimer=172}] 5054.876 97.16419 83.3252 -118.92 1.82
tp @s[scores={cutSceneTimer=173}] 5054.872 97.16435 83.32761 -118.92 1.82
tp @s[scores={cutSceneTimer=174}] 5054.868 97.16451 83.33003 -118.92 1.82
tp @s[scores={cutSceneTimer=175}] 5054.863 97.16467 83.33245 -118.92 1.82
tp @s[scores={cutSceneTimer=176}] 5054.859 97.16483 83.33487 -118.92 1.82
tp @s[scores={cutSceneTimer=177}] 5054.854 97.16499 83.33729 -118.92 1.82
tp @s[scores={cutSceneTimer=178}] 5054.85 97.16515 83.33971 -118.92 1.82
tp @s[scores={cutSceneTimer=179}] 5054.846 97.16531 83.34212 -118.92 1.82
tp @s[scores={cutSceneTimer=180}] 5054.841 97.16547 83.34454 -118.92 1.82
tp @s[scores={cutSceneTimer=181}] 5054.837 97.16563 83.34696 -118.92 1.82
tp @s[scores={cutSceneTimer=182}] 5054.833 97.16579 83.34938 -118.92 1.82
tp @s[scores={cutSceneTimer=183}] 5054.828 97.16595 83.3518 -118.92 1.82
tp @s[scores={cutSceneTimer=184}] 5054.824 97.16611 83.35422 -118.92 1.82
tp @s[scores={cutSceneTimer=185}] 5054.819 97.16628 83.35664 -118.92 1.82
tp @s[scores={cutSceneTimer=186}] 5054.815 97.16644 83.35905 -118.92 1.82
tp @s[scores={cutSceneTimer=187}] 5054.811 97.1666 83.36147 -118.92 1.82
tp @s[scores={cutSceneTimer=188}] 5054.806 97.16676 83.36389 -118.92 1.82
tp @s[scores={cutSceneTimer=189}] 5054.802 97.16692 83.36631 -118.92 1.82
tp @s[scores={cutSceneTimer=190}] 5054.797 97.16708 83.36873 -118.92 1.82
tp @s[scores={cutSceneTimer=191}] 5054.793 97.16724 83.37115 -118.92 1.82
tp @s[scores={cutSceneTimer=192}] 5054.789 97.1674 83.37357 -118.92 1.82
tp @s[scores={cutSceneTimer=193}] 5054.784 97.16756 83.37598 -118.92 1.82
tp @s[scores={cutSceneTimer=194}] 5054.78 97.16772 83.3784 -118.92 1.82
tp @s[scores={cutSceneTimer=195}] 5054.775 97.16788 83.38082 -118.92 1.82
tp @s[scores={cutSceneTimer=196}] 5054.771 97.16804 83.38324 -118.92 1.82
tp @s[scores={cutSceneTimer=197}] 5054.767 97.1682 83.38566 -118.92 1.82
tp @s[scores={cutSceneTimer=198}] 5054.762 97.16836 83.38808 -118.92 1.82
tp @s[scores={cutSceneTimer=199}] 5054.758 97.16852 83.3905 -118.92 1.82
tp @s[scores={cutSceneTimer=200}] 5054.753 97.16868 83.39291 -118.92 1.82
tp @s[scores={cutSceneTimer=201}] 5054.749 97.16884 83.39533 -118.92 1.82
tp @s[scores={cutSceneTimer=202}] 5054.745 97.169 83.39775 -118.92 1.82
tp @s[scores={cutSceneTimer=203}] 5054.74 97.16916 83.40017 -118.92 1.82
tp @s[scores={cutSceneTimer=204}] 5054.736 97.16932 83.40259 -118.92 1.82
tp @s[scores={cutSceneTimer=205}] 5054.731 97.16948 83.40501 -118.92 1.82
tp @s[scores={cutSceneTimer=206}] 5054.727 97.16964 83.40742 -118.92 1.82
tp @s[scores={cutSceneTimer=207}] 5054.723 97.1698 83.40984 -118.92 1.82
tp @s[scores={cutSceneTimer=208}] 5054.718 97.16996 83.41226 -118.92 1.82
tp @s[scores={cutSceneTimer=209}] 5054.714 97.17012 83.41468 -118.92 1.82
tp @s[scores={cutSceneTimer=210}] 5054.709 97.17028 83.4171 -118.92 1.82
tp @s[scores={cutSceneTimer=211}] 5054.705 97.17044 83.41952 -118.92 1.82
tp @s[scores={cutSceneTimer=212}] 5054.701 97.1706 83.42194 -118.92 1.82
tp @s[scores={cutSceneTimer=213}] 5054.696 97.17076 83.42435 -118.92 1.82
tp @s[scores={cutSceneTimer=214}] 5054.692 97.17092 83.42677 -118.92 1.82
tp @s[scores={cutSceneTimer=215}] 5054.688 97.17108 83.42919 -118.92 1.82
tp @s[scores={cutSceneTimer=216}] 5054.683 97.17124 83.43161 -118.92 1.82
tp @s[scores={cutSceneTimer=217}] 5054.679 97.1714 83.43403 -118.92 1.82
tp @s[scores={cutSceneTimer=218}] 5054.674 97.17156 83.43645 -118.92 1.82
tp @s[scores={cutSceneTimer=219}] 5054.67 97.17172 83.43887 -118.92 1.82
tp @s[scores={cutSceneTimer=220}] 5054.666 97.17188 83.44128 -118.92 1.82
tp @s[scores={cutSceneTimer=221}] 5054.661 97.17204 83.4437 -118.92 1.82
tp @s[scores={cutSceneTimer=222}] 5054.657 97.1722 83.44612 -118.92 1.82
tp @s[scores={cutSceneTimer=223}] 5054.652 97.17236 83.44854 -118.92 1.82
tp @s[scores={cutSceneTimer=224}] 5054.648 97.17252 83.45096 -118.92 1.82
tp @s[scores={cutSceneTimer=225}] 5054.644 97.17268 83.45338 -118.92 1.82
tp @s[scores={cutSceneTimer=226}] 5054.639 97.17284 83.4558 -118.92 1.82
tp @s[scores={cutSceneTimer=227}] 5054.635 97.173 83.45821 -118.92 1.82
tp @s[scores={cutSceneTimer=228}] 5054.63 97.17316 83.46063 -118.92 1.82
tp @s[scores={cutSceneTimer=229}] 5054.626 97.17332 83.46305 -118.92 1.82
tp @s[scores={cutSceneTimer=230}] 5054.622 97.17348 83.46547 -118.92 1.82
tp @s[scores={cutSceneTimer=231}] 5054.617 97.17365 83.46789 -118.92 1.82
tp @s[scores={cutSceneTimer=232}] 5054.613 97.17381 83.47031 -118.92 1.82
tp @s[scores={cutSceneTimer=233}] 5054.608 97.17397 83.47272 -118.92 1.82
tp @s[scores={cutSceneTimer=234}] 5054.604 97.17413 83.47514 -118.92 1.82
tp @s[scores={cutSceneTimer=235}] 5054.6 97.17429 83.47756 -118.92 1.82
tp @s[scores={cutSceneTimer=236}] 5054.595 97.17445 83.47998 -118.92 1.82
tp @s[scores={cutSceneTimer=237}] 5054.591 97.17461 83.4824 -118.92 1.82
tp @s[scores={cutSceneTimer=238}] 5054.586 97.17477 83.48482 -118.92 1.82
tp @s[scores={cutSceneTimer=239}] 5054.582 97.17493 83.48724 -118.92 1.82
tp @s[scores={cutSceneTimer=240}] 5054.578 97.17509 83.48965 -118.92 1.82
tp @s[scores={cutSceneTimer=241}] 5054.573 97.17525 83.49207 -118.92 1.82
tp @s[scores={cutSceneTimer=242}] 5054.569 97.17541 83.49449 -118.92 1.82
tp @s[scores={cutSceneTimer=243}] 5054.564 97.17557 83.49691 -118.92 1.82
tp @s[scores={cutSceneTimer=244}] 5054.56 97.17573 83.49933 -118.92 1.82
tp @s[scores={cutSceneTimer=245}] 5054.556 97.17589 83.50175 -118.92 1.82
tp @s[scores={cutSceneTimer=246}] 5054.551 97.17605 83.50417 -118.92 1.82
tp @s[scores={cutSceneTimer=247}] 5054.547 97.17621 83.50658 -118.92 1.82
tp @s[scores={cutSceneTimer=248}] 5054.542 97.17637 83.509 -118.92 1.82
tp @s[scores={cutSceneTimer=249}] 5054.538 97.17653 83.51142 -118.92 1.82
tp @s[scores={cutSceneTimer=250}] 5054.534 97.17669 83.51384 -118.92 1.82
tp @s[scores={cutSceneTimer=251}] 5054.529 97.17685 83.51626 -118.92 1.82
tp @s[scores={cutSceneTimer=252}] 5054.525 97.17701 83.51868 -118.92 1.82
tp @s[scores={cutSceneTimer=253}] 5054.521 97.17717 83.5211 -118.92 1.82
tp @s[scores={cutSceneTimer=254}] 5054.516 97.17733 83.52351 -118.92 1.82
tp @s[scores={cutSceneTimer=255}] 5054.512 97.17749 83.52593 -118.92 1.82
tp @s[scores={cutSceneTimer=256}] 5054.507 97.17765 83.52835 -118.92 1.82
tp @s[scores={cutSceneTimer=257}] 5054.503 97.17781 83.53077 -118.92 1.82
tp @s[scores={cutSceneTimer=258}] 5054.499 97.17797 83.53319 -118.92 1.82
tp @s[scores={cutSceneTimer=259}] 5054.494 97.17813 83.53561 -118.92 1.82
tp @s[scores={cutSceneTimer=260}] 5054.49 97.17829 83.53802 -118.92 1.82
tp @s[scores={cutSceneTimer=261}] 5054.485 97.17845 83.54044 -118.92 1.82
tp @s[scores={cutSceneTimer=262}] 5054.481 97.17861 83.54286 -118.92 1.82
tp @s[scores={cutSceneTimer=263}] 5054.477 97.17877 83.54528 -118.92 1.82
tp @s[scores={cutSceneTimer=264}] 5054.472 97.17893 83.5477 -118.92 1.82
tp @s[scores={cutSceneTimer=265}] 5054.468 97.17909 83.55012 -118.92 1.82
tp @s[scores={cutSceneTimer=266}] 5054.463 97.17925 83.55254 -118.92 1.82
tp @s[scores={cutSceneTimer=267}] 5054.459 97.17941 83.55495 -118.92 1.82
tp @s[scores={cutSceneTimer=268}] 5054.455 97.17957 83.55737 -118.92 1.82
tp @s[scores={cutSceneTimer=269}] 5054.45 97.17973 83.55979 -118.92 1.82
tp @s[scores={cutSceneTimer=270}] 5054.446 97.17989 83.56221 -118.92 1.82
tp @s[scores={cutSceneTimer=271}] 5054.441 97.18005 83.56463 -118.92 1.82
tp @s[scores={cutSceneTimer=272}] 5054.437 97.18021 83.56705 -118.92 1.82
tp @s[scores={cutSceneTimer=273}] 5054.433 97.18037 83.56947 -118.92 1.82
tp @s[scores={cutSceneTimer=274}] 5054.428 97.18053 83.57188 -118.92 1.82
tp @s[scores={cutSceneTimer=275}] 5054.424 97.18069 83.5743 -118.92 1.82
tp @s[scores={cutSceneTimer=276}] 5054.419 97.18085 83.57672 -118.92 1.82
tp @s[scores={cutSceneTimer=277}] 5054.415 97.18102 83.57914 -118.92 1.82
tp @s[scores={cutSceneTimer=278}] 5054.411 97.18118 83.58156 -118.92 1.82
tp @s[scores={cutSceneTimer=279}] 5054.406 97.18134 83.58398 -118.92 1.82
tp @s[scores={cutSceneTimer=280}] 5054.402 97.1815 83.5864 -118.92 1.82
tp @s[scores={cutSceneTimer=281}] 5054.397 97.18166 83.58881 -118.92 1.82
tp @s[scores={cutSceneTimer=282}] 5054.393 97.18182 83.59123 -118.92 1.82
tp @s[scores={cutSceneTimer=283}] 5054.389 97.18198 83.59365 -118.92 1.82
tp @s[scores={cutSceneTimer=284}] 5054.384 97.18214 83.59607 -118.92 1.82
tp @s[scores={cutSceneTimer=285}] 5054.38 97.1823 83.59849 -118.92 1.82
tp @s[scores={cutSceneTimer=286}] 5054.375 97.18246 83.60091 -118.92 1.82
tp @s[scores={cutSceneTimer=287}] 5054.371 97.18262 83.60332 -118.92 1.82
tp @s[scores={cutSceneTimer=288}] 5054.367 97.18278 83.60574 -118.92 1.82
tp @s[scores={cutSceneTimer=289}] 5054.362 97.18294 83.60816 -118.92 1.82
tp @s[scores={cutSceneTimer=290}] 5054.358 97.1831 83.61058 -118.92 1.82
tp @s[scores={cutSceneTimer=291}] 5054.354 97.18326 83.613 -118.92 1.82
tp @s[scores={cutSceneTimer=292}] 5054.349 97.18342 83.61542 -118.92 1.82
tp @s[scores={cutSceneTimer=293}] 5054.345 97.18358 83.61784 -118.92 1.82
tp @s[scores={cutSceneTimer=294}] 5054.34 97.18374 83.62025 -118.92 1.82
tp @s[scores={cutSceneTimer=295}] 5054.336 97.1839 83.62267 -118.92 1.82
tp @s[scores={cutSceneTimer=296}] 5054.332 97.18406 83.62509 -118.92 1.82
tp @s[scores={cutSceneTimer=297}] 5054.327 97.18422 83.62751 -118.92 1.82
tp @s[scores={cutSceneTimer=298}] 5054.323 97.18438 83.62993 -118.92 1.82
tp @s[scores={cutSceneTimer=299}] 5054.318 97.18454 83.63235 -118.92 1.82
tp @s[scores={cutSceneTimer=300}] 5054.314 97.1847 83.63477 -118.92 1.82
tp @s[scores={cutSceneTimer=301}] 5054.31 97.18486 83.63718 -118.92 1.82
tp @s[scores={cutSceneTimer=302}] 5054.305 97.18502 83.6396 -118.92 1.82
tp @s[scores={cutSceneTimer=303}] 5054.301 97.18518 83.64202 -118.92 1.82
tp @s[scores={cutSceneTimer=304}] 5054.296 97.18534 83.64444 -118.92 1.82
tp @s[scores={cutSceneTimer=305}] 5054.292 97.1855 83.64686 -118.92 1.82
tp @s[scores={cutSceneTimer=306}] 5054.288 97.18566 83.64928 -118.92 1.82
tp @s[scores={cutSceneTimer=307}] 5054.283 97.18582 83.6517 -118.92 1.82
tp @s[scores={cutSceneTimer=308}] 5054.279 97.18598 83.65411 -118.92 1.82
tp @s[scores={cutSceneTimer=309}] 5054.274 97.18614 83.65653 -118.92 1.82
tp @s[scores={cutSceneTimer=310}] 5054.27 97.1863 83.65895 -118.92 1.82
tp @s[scores={cutSceneTimer=311}] 5054.266 97.18646 83.66137 -118.92 1.82
tp @s[scores={cutSceneTimer=312}] 5054.261 97.18662 83.66379 -118.92 1.82
tp @s[scores={cutSceneTimer=313}] 5054.257 97.18678 83.66621 -118.92 1.82
tp @s[scores={cutSceneTimer=314}] 5054.252 97.18694 83.66862 -118.92 1.82
tp @s[scores={cutSceneTimer=315}] 5054.248 97.1871 83.67104 -118.92 1.82
tp @s[scores={cutSceneTimer=316}] 5054.244 97.18726 83.67346 -118.92 1.82
tp @s[scores={cutSceneTimer=317}] 5054.239 97.18742 83.67588 -118.92 1.82
tp @s[scores={cutSceneTimer=318}] 5054.235 97.18758 83.6783 -118.92 1.82
tp @s[scores={cutSceneTimer=319}] 5054.23 97.18774 83.68072 -118.92 1.82
tp @s[scores={cutSceneTimer=320}] 5054.226 97.1879 83.68314 -118.92 1.82
execute as @s[scores={cutSceneTimer=300}] run function hp:cutscenes/fade_in

# ¤Flitwick:¤ Welcome students. My name is Professor Flitwick and I teach charms here at Hogwarts.
execute as @s[scores={cutSceneTimer=30},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 20 1 0
execute as @s[scores={cutSceneTimer=25..160}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"              "}]
execute as @s[scores={cutSceneTimer=33},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=37},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=41},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=48},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=52},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=59},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=63},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=70},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Flitwick:¤ For this first class we will be learning a simple spell, 'Lumos'
execute as @s[scores={cutSceneTimer=161},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 20 1 0
execute as @s[scores={cutSceneTimer=161..230}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"            "}]
execute as @s[scores={cutSceneTimer=161},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=168},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=172},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=179},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=183},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=190},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=194},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=201},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Flitwick:¤ which will allow you to cast light from the tip of your wand to illuminate dark places.
execute as @s[scores={cutSceneTimer=231},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 20 1 0
execute as @s[scores={cutSceneTimer=231..350}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"                 "}]
execute as @s[scores={cutSceneTimer=231},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=238},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=242},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=249},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=253},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=260},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=264},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=271},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral


execute as @s[scores={cutSceneTimer=320}] run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=321}] 5033.08 103.26 86.55 -104.92 16.15
tp @s[scores={cutSceneTimer=322}] 5033.082 103.26 86.54276 -104.92 16.15
tp @s[scores={cutSceneTimer=323}] 5033.084 103.26 86.53551 -104.92 16.15
tp @s[scores={cutSceneTimer=324}] 5033.086 103.26 86.52826 -104.92 16.15
tp @s[scores={cutSceneTimer=325}] 5033.088 103.26 86.52101 -104.92 16.15
tp @s[scores={cutSceneTimer=326}] 5033.09 103.26 86.51376 -104.92 16.15
tp @s[scores={cutSceneTimer=327}] 5033.092 103.26 86.50652 -104.92 16.15
tp @s[scores={cutSceneTimer=328}] 5033.094 103.26 86.49927 -104.92 16.15
tp @s[scores={cutSceneTimer=329}] 5033.096 103.26 86.49202 -104.92 16.15
tp @s[scores={cutSceneTimer=330}] 5033.098 103.26 86.48477 -104.92 16.15
tp @s[scores={cutSceneTimer=331}] 5033.1 103.26 86.47752 -104.92 16.15
tp @s[scores={cutSceneTimer=332}] 5033.102 103.26 86.47028 -104.92 16.15
tp @s[scores={cutSceneTimer=333}] 5033.104 103.26 86.46303 -104.92 16.15
tp @s[scores={cutSceneTimer=334}] 5033.105 103.26 86.45578 -104.92 16.15
tp @s[scores={cutSceneTimer=335}] 5033.107 103.26 86.44853 -104.92 16.15
tp @s[scores={cutSceneTimer=336}] 5033.109 103.26 86.44128 -104.92 16.15
tp @s[scores={cutSceneTimer=337}] 5033.111 103.26 86.43404 -104.92 16.15
tp @s[scores={cutSceneTimer=338}] 5033.113 103.26 86.42679 -104.92 16.15
tp @s[scores={cutSceneTimer=339}] 5033.115 103.26 86.41954 -104.92 16.15
tp @s[scores={cutSceneTimer=340}] 5033.117 103.26 86.41229 -104.92 16.15
tp @s[scores={cutSceneTimer=341}] 5033.119 103.26 86.40504 -104.92 16.15
tp @s[scores={cutSceneTimer=342}] 5033.121 103.26 86.3978 -104.92 16.15
tp @s[scores={cutSceneTimer=343}] 5033.123 103.26 86.39055 -104.92 16.15
tp @s[scores={cutSceneTimer=344}] 5033.125 103.26 86.3833 -104.92 16.15
tp @s[scores={cutSceneTimer=345}] 5033.127 103.26 86.37605 -104.92 16.15
tp @s[scores={cutSceneTimer=346}] 5033.129 103.26 86.3688 -104.92 16.15
tp @s[scores={cutSceneTimer=347}] 5033.131 103.26 86.36156 -104.92 16.15
tp @s[scores={cutSceneTimer=348}] 5033.133 103.26 86.35431 -104.92 16.15
tp @s[scores={cutSceneTimer=349}] 5033.135 103.26 86.34706 -104.92 16.15
tp @s[scores={cutSceneTimer=350}] 5033.137 103.26 86.33981 -104.92 16.15
tp @s[scores={cutSceneTimer=351}] 5033.139 103.26 86.33257 -104.92 16.15
tp @s[scores={cutSceneTimer=352}] 5033.141 103.26 86.32532 -104.92 16.15
tp @s[scores={cutSceneTimer=353}] 5033.143 103.26 86.31807 -104.92 16.15
tp @s[scores={cutSceneTimer=354}] 5033.145 103.26 86.31082 -104.92 16.15
tp @s[scores={cutSceneTimer=355}] 5033.146 103.26 86.30357 -104.92 16.15
tp @s[scores={cutSceneTimer=356}] 5033.148 103.26 86.29633 -104.92 16.15
tp @s[scores={cutSceneTimer=357}] 5033.15 103.26 86.28908 -104.92 16.15
tp @s[scores={cutSceneTimer=358}] 5033.152 103.26 86.28183 -104.92 16.15
tp @s[scores={cutSceneTimer=359}] 5033.154 103.26 86.27458 -104.92 16.15
tp @s[scores={cutSceneTimer=360}] 5033.156 103.26 86.26733 -104.92 16.15
tp @s[scores={cutSceneTimer=361}] 5033.158 103.26 86.26009 -104.92 16.15
tp @s[scores={cutSceneTimer=362}] 5033.16 103.26 86.25284 -104.92 16.15
tp @s[scores={cutSceneTimer=363}] 5033.162 103.26 86.24559 -104.92 16.15
tp @s[scores={cutSceneTimer=364}] 5033.164 103.26 86.23834 -104.92 16.15
tp @s[scores={cutSceneTimer=365}] 5033.166 103.26 86.23109 -104.92 16.15
tp @s[scores={cutSceneTimer=366}] 5033.168 103.26 86.22385 -104.92 16.15
tp @s[scores={cutSceneTimer=367}] 5033.17 103.26 86.2166 -104.92 16.15
tp @s[scores={cutSceneTimer=368}] 5033.172 103.26 86.20935 -104.92 16.15
tp @s[scores={cutSceneTimer=369}] 5033.174 103.26 86.2021 -104.92 16.15
tp @s[scores={cutSceneTimer=370}] 5033.176 103.26 86.19485 -104.92 16.15
tp @s[scores={cutSceneTimer=371}] 5033.178 103.26 86.18761 -104.92 16.15
tp @s[scores={cutSceneTimer=372}] 5033.18 103.26 86.18036 -104.92 16.15
tp @s[scores={cutSceneTimer=373}] 5033.182 103.26 86.17311 -104.92 16.15
tp @s[scores={cutSceneTimer=374}] 5033.184 103.26 86.16586 -104.92 16.15
tp @s[scores={cutSceneTimer=375}] 5033.186 103.26 86.15862 -104.92 16.15
tp @s[scores={cutSceneTimer=376}] 5033.188 103.26 86.15137 -104.92 16.15
tp @s[scores={cutSceneTimer=377}] 5033.189 103.26 86.14412 -104.92 16.15
tp @s[scores={cutSceneTimer=378}] 5033.191 103.26 86.13687 -104.92 16.15
tp @s[scores={cutSceneTimer=379}] 5033.193 103.26 86.12962 -104.92 16.15
tp @s[scores={cutSceneTimer=380}] 5033.195 103.26 86.12238 -104.92 16.15
tp @s[scores={cutSceneTimer=381}] 5033.197 103.26 86.11513 -104.92 16.15
tp @s[scores={cutSceneTimer=382}] 5033.199 103.26 86.10788 -104.92 16.15
tp @s[scores={cutSceneTimer=383}] 5033.201 103.26 86.10063 -104.92 16.15
tp @s[scores={cutSceneTimer=384}] 5033.203 103.26 86.09338 -104.92 16.15
tp @s[scores={cutSceneTimer=385}] 5033.205 103.26 86.08614 -104.92 16.15
tp @s[scores={cutSceneTimer=386}] 5033.207 103.26 86.07889 -104.92 16.15
tp @s[scores={cutSceneTimer=387}] 5033.209 103.26 86.07164 -104.92 16.15
tp @s[scores={cutSceneTimer=388}] 5033.211 103.26 86.06439 -104.92 16.15
tp @s[scores={cutSceneTimer=389}] 5033.213 103.26 86.05714 -104.92 16.15
tp @s[scores={cutSceneTimer=390}] 5033.215 103.26 86.0499 -104.92 16.15
tp @s[scores={cutSceneTimer=391}] 5033.217 103.26 86.04265 -104.92 16.15
tp @s[scores={cutSceneTimer=392}] 5033.219 103.26 86.0354 -104.92 16.15
tp @s[scores={cutSceneTimer=393}] 5033.221 103.26 86.02815 -104.92 16.15
tp @s[scores={cutSceneTimer=394}] 5033.223 103.26 86.0209 -104.92 16.15
tp @s[scores={cutSceneTimer=395}] 5033.225 103.26 86.01366 -104.92 16.15
tp @s[scores={cutSceneTimer=396}] 5033.227 103.26 86.00641 -104.92 16.15
tp @s[scores={cutSceneTimer=397}] 5033.229 103.26 85.99916 -104.92 16.15
tp @s[scores={cutSceneTimer=398}] 5033.23 103.26 85.99191 -104.92 16.15
tp @s[scores={cutSceneTimer=399}] 5033.232 103.26 85.98466 -104.92 16.15
tp @s[scores={cutSceneTimer=400}] 5033.234 103.26 85.97742 -104.92 16.15
tp @s[scores={cutSceneTimer=401}] 5033.236 103.26 85.97017 -104.92 16.15
tp @s[scores={cutSceneTimer=402}] 5033.238 103.26 85.96292 -104.92 16.15
tp @s[scores={cutSceneTimer=403}] 5033.24 103.26 85.95567 -104.92 16.15
tp @s[scores={cutSceneTimer=404}] 5033.242 103.26 85.94843 -104.92 16.15
tp @s[scores={cutSceneTimer=405}] 5033.244 103.26 85.94118 -104.92 16.15
tp @s[scores={cutSceneTimer=406}] 5033.246 103.26 85.93393 -104.92 16.15
tp @s[scores={cutSceneTimer=407}] 5033.248 103.26 85.92668 -104.92 16.15
tp @s[scores={cutSceneTimer=408}] 5033.25 103.26 85.91943 -104.92 16.15
tp @s[scores={cutSceneTimer=409}] 5033.252 103.26 85.91219 -104.92 16.15
tp @s[scores={cutSceneTimer=410}] 5033.254 103.26 85.90494 -104.92 16.15
tp @s[scores={cutSceneTimer=411}] 5033.256 103.26 85.89769 -104.92 16.15
tp @s[scores={cutSceneTimer=412}] 5033.258 103.26 85.89044 -104.92 16.15
tp @s[scores={cutSceneTimer=413}] 5033.26 103.26 85.88319 -104.92 16.15
tp @s[scores={cutSceneTimer=414}] 5033.262 103.26 85.87595 -104.92 16.15
tp @s[scores={cutSceneTimer=415}] 5033.264 103.26 85.8687 -104.92 16.15
tp @s[scores={cutSceneTimer=416}] 5033.266 103.26 85.86145 -104.92 16.15
tp @s[scores={cutSceneTimer=417}] 5033.268 103.26 85.8542 -104.92 16.15
tp @s[scores={cutSceneTimer=418}] 5033.27 103.26 85.84695 -104.92 16.15
tp @s[scores={cutSceneTimer=419}] 5033.271 103.26 85.83971 -104.92 16.15
tp @s[scores={cutSceneTimer=420}] 5033.273 103.26 85.83246 -104.92 16.15
tp @s[scores={cutSceneTimer=421}] 5033.275 103.26 85.82521 -104.92 16.15
tp @s[scores={cutSceneTimer=422}] 5033.277 103.26 85.81796 -104.92 16.15
tp @s[scores={cutSceneTimer=423}] 5033.279 103.26 85.81071 -104.92 16.15
tp @s[scores={cutSceneTimer=424}] 5033.281 103.26 85.80347 -104.92 16.15
tp @s[scores={cutSceneTimer=425}] 5033.283 103.26 85.79622 -104.92 16.15
tp @s[scores={cutSceneTimer=426}] 5033.285 103.26 85.78897 -104.92 16.15
tp @s[scores={cutSceneTimer=427}] 5033.287 103.26 85.78172 -104.92 16.15
tp @s[scores={cutSceneTimer=428}] 5033.289 103.26 85.77448 -104.92 16.15
tp @s[scores={cutSceneTimer=429}] 5033.291 103.26 85.76723 -104.92 16.15
tp @s[scores={cutSceneTimer=430}] 5033.293 103.26 85.75998 -104.92 16.15
tp @s[scores={cutSceneTimer=431}] 5033.295 103.26 85.75273 -104.92 16.15
tp @s[scores={cutSceneTimer=432}] 5033.297 103.26 85.74548 -104.92 16.15
tp @s[scores={cutSceneTimer=433}] 5033.299 103.26 85.73824 -104.92 16.15
tp @s[scores={cutSceneTimer=434}] 5033.301 103.26 85.73099 -104.92 16.15
tp @s[scores={cutSceneTimer=435}] 5033.303 103.26 85.72374 -104.92 16.15
tp @s[scores={cutSceneTimer=436}] 5033.305 103.26 85.71649 -104.92 16.15
tp @s[scores={cutSceneTimer=437}] 5033.307 103.26 85.70924 -104.92 16.15
tp @s[scores={cutSceneTimer=438}] 5033.309 103.26 85.702 -104.92 16.15
tp @s[scores={cutSceneTimer=439}] 5033.311 103.26 85.69475 -104.92 16.15
tp @s[scores={cutSceneTimer=440}] 5033.313 103.26 85.6875 -104.92 16.15
tp @s[scores={cutSceneTimer=441}] 5033.314 103.26 85.68025 -104.92 16.15
tp @s[scores={cutSceneTimer=442}] 5033.316 103.26 85.673 -104.92 16.15
tp @s[scores={cutSceneTimer=443}] 5033.318 103.26 85.66576 -104.92 16.15
tp @s[scores={cutSceneTimer=444}] 5033.32 103.26 85.65851 -104.92 16.15
tp @s[scores={cutSceneTimer=445}] 5033.322 103.26 85.65126 -104.92 16.15
tp @s[scores={cutSceneTimer=446}] 5033.324 103.26 85.64401 -104.92 16.15
tp @s[scores={cutSceneTimer=447}] 5033.326 103.26 85.63676 -104.92 16.15
tp @s[scores={cutSceneTimer=448}] 5033.328 103.26 85.62952 -104.92 16.15
tp @s[scores={cutSceneTimer=449}] 5033.33 103.26 85.62227 -104.92 16.15
tp @s[scores={cutSceneTimer=450}] 5033.332 103.26 85.61502 -104.92 16.15
tp @s[scores={cutSceneTimer=451}] 5033.334 103.26 85.60777 -104.92 16.15
tp @s[scores={cutSceneTimer=452}] 5033.336 103.26 85.60052 -104.92 16.15
tp @s[scores={cutSceneTimer=453}] 5033.338 103.26 85.59328 -104.92 16.15
tp @s[scores={cutSceneTimer=454}] 5033.34 103.26 85.58603 -104.92 16.15
tp @s[scores={cutSceneTimer=455}] 5033.342 103.26 85.57878 -104.92 16.15
tp @s[scores={cutSceneTimer=456}] 5033.344 103.26 85.57153 -104.92 16.15
tp @s[scores={cutSceneTimer=457}] 5033.346 103.26 85.56429 -104.92 16.15
tp @s[scores={cutSceneTimer=458}] 5033.348 103.26 85.55704 -104.92 16.15
tp @s[scores={cutSceneTimer=459}] 5033.35 103.26 85.54979 -104.92 16.15
tp @s[scores={cutSceneTimer=460}] 5033.352 103.26 85.54254 -104.92 16.15
tp @s[scores={cutSceneTimer=461}] 5033.354 103.26 85.53529 -104.92 16.15
tp @s[scores={cutSceneTimer=462}] 5033.355 103.26 85.52805 -104.92 16.15
tp @s[scores={cutSceneTimer=463}] 5033.357 103.26 85.5208 -104.92 16.15
tp @s[scores={cutSceneTimer=464}] 5033.359 103.26 85.51355 -104.92 16.15
tp @s[scores={cutSceneTimer=465}] 5033.361 103.26 85.5063 -104.92 16.15
tp @s[scores={cutSceneTimer=466}] 5033.363 103.26 85.49905 -104.92 16.15
tp @s[scores={cutSceneTimer=467}] 5033.365 103.26 85.49181 -104.92 16.15
tp @s[scores={cutSceneTimer=468}] 5033.367 103.26 85.48456 -104.92 16.15
tp @s[scores={cutSceneTimer=469}] 5033.369 103.26 85.47731 -104.92 16.15
tp @s[scores={cutSceneTimer=470}] 5033.371 103.26 85.47006 -104.92 16.15
tp @s[scores={cutSceneTimer=471}] 5033.373 103.26 85.46281 -104.92 16.15
tp @s[scores={cutSceneTimer=472}] 5033.375 103.26 85.45557 -104.92 16.15
tp @s[scores={cutSceneTimer=473}] 5033.377 103.26 85.44832 -104.92 16.15
tp @s[scores={cutSceneTimer=474}] 5033.379 103.26 85.44107 -104.92 16.15
tp @s[scores={cutSceneTimer=475}] 5033.381 103.26 85.43382 -104.92 16.15
tp @s[scores={cutSceneTimer=476}] 5033.383 103.26 85.42657 -104.92 16.15
tp @s[scores={cutSceneTimer=477}] 5033.385 103.26 85.41933 -104.92 16.15
tp @s[scores={cutSceneTimer=478}] 5033.387 103.26 85.41208 -104.92 16.15
tp @s[scores={cutSceneTimer=479}] 5033.389 103.26 85.40483 -104.92 16.15
tp @s[scores={cutSceneTimer=480}] 5033.391 103.26 85.39758 -104.92 16.15
tp @s[scores={cutSceneTimer=481}] 5033.393 103.26 85.39034 -104.92 16.15
tp @s[scores={cutSceneTimer=482}] 5033.395 103.26 85.38309 -104.92 16.15
tp @s[scores={cutSceneTimer=483}] 5033.396 103.26 85.37584 -104.92 16.15
tp @s[scores={cutSceneTimer=484}] 5033.398 103.26 85.36859 -104.92 16.15
tp @s[scores={cutSceneTimer=485}] 5033.4 103.26 85.36134 -104.92 16.15
tp @s[scores={cutSceneTimer=486}] 5033.402 103.26 85.3541 -104.92 16.15
tp @s[scores={cutSceneTimer=487}] 5033.404 103.26 85.34685 -104.92 16.15
tp @s[scores={cutSceneTimer=488}] 5033.406 103.26 85.3396 -104.92 16.15
tp @s[scores={cutSceneTimer=489}] 5033.408 103.26 85.33235 -104.92 16.15
tp @s[scores={cutSceneTimer=490}] 5033.41 103.26 85.3251 -104.92 16.15
tp @s[scores={cutSceneTimer=491}] 5033.412 103.26 85.31786 -104.92 16.15
tp @s[scores={cutSceneTimer=492}] 5033.414 103.26 85.31061 -104.92 16.15
tp @s[scores={cutSceneTimer=493}] 5033.416 103.26 85.30336 -104.92 16.15
tp @s[scores={cutSceneTimer=494}] 5033.418 103.26 85.29611 -104.92 16.15
tp @s[scores={cutSceneTimer=495}] 5033.42 103.26 85.28886 -104.92 16.15
tp @s[scores={cutSceneTimer=496}] 5033.422 103.26 85.28162 -104.92 16.15
tp @s[scores={cutSceneTimer=497}] 5033.424 103.26 85.27437 -104.92 16.15
tp @s[scores={cutSceneTimer=498}] 5033.426 103.26 85.26712 -104.92 16.15
tp @s[scores={cutSceneTimer=499}] 5033.428 103.26 85.25987 -104.92 16.15
tp @s[scores={cutSceneTimer=500}] 5033.43 103.26 85.25262 -104.92 16.15
tp @s[scores={cutSceneTimer=501}] 5033.432 103.26 85.24538 -104.92 16.15
tp @s[scores={cutSceneTimer=502}] 5033.434 103.26 85.23813 -104.92 16.15
tp @s[scores={cutSceneTimer=503}] 5033.436 103.26 85.23088 -104.92 16.15
tp @s[scores={cutSceneTimer=504}] 5033.438 103.26 85.22363 -104.92 16.15
tp @s[scores={cutSceneTimer=505}] 5033.439 103.26 85.21638 -104.92 16.15
tp @s[scores={cutSceneTimer=506}] 5033.441 103.26 85.20914 -104.92 16.15
tp @s[scores={cutSceneTimer=507}] 5033.443 103.26 85.20189 -104.92 16.15
tp @s[scores={cutSceneTimer=508}] 5033.445 103.26 85.19464 -104.92 16.15
tp @s[scores={cutSceneTimer=509}] 5033.447 103.26 85.18739 -104.92 16.15
tp @s[scores={cutSceneTimer=510}] 5033.449 103.26 85.18015 -104.92 16.15
tp @s[scores={cutSceneTimer=511}] 5033.451 103.26 85.1729 -104.92 16.15
tp @s[scores={cutSceneTimer=512}] 5033.453 103.26 85.16565 -104.92 16.15
tp @s[scores={cutSceneTimer=513}] 5033.455 103.26 85.1584 -104.92 16.15
tp @s[scores={cutSceneTimer=514}] 5033.457 103.26 85.15115 -104.92 16.15
tp @s[scores={cutSceneTimer=515}] 5033.459 103.26 85.14391 -104.92 16.15
tp @s[scores={cutSceneTimer=516}] 5033.461 103.26 85.13666 -104.92 16.15
tp @s[scores={cutSceneTimer=517}] 5033.463 103.26 85.12941 -104.92 16.15
tp @s[scores={cutSceneTimer=518}] 5033.465 103.26 85.12216 -104.92 16.15
tp @s[scores={cutSceneTimer=519}] 5033.467 103.26 85.11491 -104.92 16.15
tp @s[scores={cutSceneTimer=520}] 5033.469 103.26 85.10767 -104.92 16.15
tp @s[scores={cutSceneTimer=521}] 5033.471 103.26 85.10042 -104.92 16.15
tp @s[scores={cutSceneTimer=522}] 5033.473 103.26 85.09317 -104.92 16.15
tp @s[scores={cutSceneTimer=523}] 5033.475 103.26 85.08592 -104.92 16.15
tp @s[scores={cutSceneTimer=524}] 5033.477 103.26 85.07867 -104.92 16.15
tp @s[scores={cutSceneTimer=525}] 5033.479 103.26 85.07143 -104.92 16.15
tp @s[scores={cutSceneTimer=526}] 5033.48 103.26 85.06418 -104.92 16.15
tp @s[scores={cutSceneTimer=527}] 5033.482 103.26 85.05693 -104.92 16.15
tp @s[scores={cutSceneTimer=528}] 5033.484 103.26 85.04968 -104.92 16.15
tp @s[scores={cutSceneTimer=529}] 5033.486 103.26 85.04243 -104.92 16.15
tp @s[scores={cutSceneTimer=530}] 5033.488 103.26 85.03519 -104.92 16.15
tp @s[scores={cutSceneTimer=531}] 5033.49 103.26 85.02794 -104.92 16.15
tp @s[scores={cutSceneTimer=532}] 5033.492 103.26 85.02069 -104.92 16.15
tp @s[scores={cutSceneTimer=533}] 5033.494 103.26 85.01344 -104.92 16.15
tp @s[scores={cutSceneTimer=534}] 5033.496 103.26 85.0062 -104.92 16.15
tp @s[scores={cutSceneTimer=535}] 5033.498 103.26 84.99895 -104.92 16.15
tp @s[scores={cutSceneTimer=536}] 5033.5 103.26 84.9917 -104.92 16.15
tp @s[scores={cutSceneTimer=537}] 5033.502 103.26 84.98445 -104.92 16.15
tp @s[scores={cutSceneTimer=538}] 5033.504 103.26 84.9772 -104.92 16.15
tp @s[scores={cutSceneTimer=539}] 5033.506 103.26 84.96996 -104.92 16.15
tp @s[scores={cutSceneTimer=540}] 5033.508 103.26 84.96271 -104.92 16.15
tp @s[scores={cutSceneTimer=541}] 5033.51 103.26 84.95546 -104.92 16.15
tp @s[scores={cutSceneTimer=542}] 5033.512 103.26 84.94821 -104.92 16.15
tp @s[scores={cutSceneTimer=543}] 5033.514 103.26 84.94096 -104.92 16.15
tp @s[scores={cutSceneTimer=544}] 5033.516 103.26 84.93372 -104.92 16.15
tp @s[scores={cutSceneTimer=545}] 5033.518 103.26 84.92647 -104.92 16.15
tp @s[scores={cutSceneTimer=546}] 5033.52 103.26 84.91922 -104.92 16.15
tp @s[scores={cutSceneTimer=547}] 5033.521 103.26 84.91197 -104.92 16.15
tp @s[scores={cutSceneTimer=548}] 5033.523 103.26 84.90472 -104.92 16.15
tp @s[scores={cutSceneTimer=549}] 5033.525 103.26 84.89748 -104.92 16.15
tp @s[scores={cutSceneTimer=550}] 5033.527 103.26 84.89023 -104.92 16.15
tp @s[scores={cutSceneTimer=551}] 5033.529 103.26 84.88298 -104.92 16.15
tp @s[scores={cutSceneTimer=552}] 5033.531 103.26 84.87573 -104.92 16.15
tp @s[scores={cutSceneTimer=553}] 5033.533 103.26 84.86848 -104.92 16.15
tp @s[scores={cutSceneTimer=554}] 5033.535 103.26 84.86124 -104.92 16.15
tp @s[scores={cutSceneTimer=555}] 5033.537 103.26 84.85399 -104.92 16.15
tp @s[scores={cutSceneTimer=556}] 5033.539 103.26 84.84674 -104.92 16.15
tp @s[scores={cutSceneTimer=557}] 5033.541 103.26 84.83949 -104.92 16.15
tp @s[scores={cutSceneTimer=558}] 5033.543 103.26 84.83224 -104.92 16.15
tp @s[scores={cutSceneTimer=559}] 5033.545 103.26 84.825 -104.92 16.15
tp @s[scores={cutSceneTimer=560}] 5033.547 103.26 84.81775 -104.92 16.15
tp @s[scores={cutSceneTimer=561}] 5033.549 103.26 84.8105 -104.92 16.15
tp @s[scores={cutSceneTimer=562}] 5033.551 103.26 84.80325 -104.92 16.15
tp @s[scores={cutSceneTimer=563}] 5033.553 103.26 84.79601 -104.92 16.15
tp @s[scores={cutSceneTimer=564}] 5033.555 103.26 84.78876 -104.92 16.15
tp @s[scores={cutSceneTimer=565}] 5033.557 103.26 84.78151 -104.92 16.15
tp @s[scores={cutSceneTimer=566}] 5033.559 103.26 84.77426 -104.92 16.15
tp @s[scores={cutSceneTimer=567}] 5033.561 103.26 84.76701 -104.92 16.15
tp @s[scores={cutSceneTimer=568}] 5033.563 103.26 84.75977 -104.92 16.15
tp @s[scores={cutSceneTimer=569}] 5033.564 103.26 84.75252 -104.92 16.15
tp @s[scores={cutSceneTimer=570}] 5033.566 103.26 84.74527 -104.92 16.15
tp @s[scores={cutSceneTimer=571}] 5033.568 103.26 84.73802 -104.92 16.15
tp @s[scores={cutSceneTimer=572}] 5033.57 103.26 84.73077 -104.92 16.15
tp @s[scores={cutSceneTimer=573}] 5033.572 103.26 84.72353 -104.92 16.15
tp @s[scores={cutSceneTimer=574}] 5033.574 103.26 84.71628 -104.92 16.15
tp @s[scores={cutSceneTimer=575}] 5033.576 103.26 84.70903 -104.92 16.15
tp @s[scores={cutSceneTimer=576}] 5033.578 103.26 84.70178 -104.92 16.15
tp @s[scores={cutSceneTimer=577}] 5033.58 103.26 84.69453 -104.92 16.15
tp @s[scores={cutSceneTimer=578}] 5033.582 103.26 84.68729 -104.92 16.15
tp @s[scores={cutSceneTimer=579}] 5033.584 103.26 84.68004 -104.92 16.15
tp @s[scores={cutSceneTimer=580}] 5033.586 103.26 84.67279 -104.92 16.15
tp @s[scores={cutSceneTimer=581}] 5033.588 103.26 84.66554 -104.92 16.15
tp @s[scores={cutSceneTimer=582}] 5033.59 103.26 84.65829 -104.92 16.15
tp @s[scores={cutSceneTimer=583}] 5033.592 103.26 84.65105 -104.92 16.15
tp @s[scores={cutSceneTimer=584}] 5033.594 103.26 84.6438 -104.92 16.15
tp @s[scores={cutSceneTimer=585}] 5033.596 103.26 84.63655 -104.92 16.15
tp @s[scores={cutSceneTimer=586}] 5033.598 103.26 84.6293 -104.92 16.15
tp @s[scores={cutSceneTimer=587}] 5033.6 103.26 84.62206 -104.92 16.15
tp @s[scores={cutSceneTimer=588}] 5033.602 103.26 84.61481 -104.92 16.15
tp @s[scores={cutSceneTimer=589}] 5033.604 103.26 84.60756 -104.92 16.15
tp @s[scores={cutSceneTimer=590}] 5033.605 103.26 84.60031 -104.92 16.15
execute as @s[scores={cutSceneTimer=570}] run function hp:cutscenes/fade_in


# ¤Flitwick:¤ When you're in a room that is too dark for you to see anything,
execute as @s[scores={cutSceneTimer=351},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 20 1 0
execute as @s[scores={cutSceneTimer=351..490}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"              "}]
execute as @s[scores={cutSceneTimer=351},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=358},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=362},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=369},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=373},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=380},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=384},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=391},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Flitwick:¤ you can cast the Lumos spell by double clicking ⌠.
execute as @s[scores={cutSceneTimer=491},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 20 1 0
execute as @s[scores={cutSceneTimer=491..590}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"          "}]
execute as @s[scores={cutSceneTimer=491},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=498},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=502},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=509},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=513},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=520},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=524},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=531},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral


execute as @s[scores={cutSceneTimer=590}] run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=591}] 5033.38 95.57137 82.13918 -91.58 -2.63
tp @s[scores={cutSceneTimer=592}] 5033.41 95.57275 82.13835 -91.58 -2.63
tp @s[scores={cutSceneTimer=593}] 5033.439 95.57412 82.13753 -91.58 -2.63
tp @s[scores={cutSceneTimer=594}] 5033.469 95.57549 82.1367 -91.58 -2.63
tp @s[scores={cutSceneTimer=595}] 5033.499 95.57687 82.13588 -91.58 -2.63
tp @s[scores={cutSceneTimer=596}] 5033.529 95.57824 82.13506 -91.58 -2.63
tp @s[scores={cutSceneTimer=597}] 5033.559 95.57961 82.13423 -91.58 -2.63
tp @s[scores={cutSceneTimer=598}] 5033.588 95.58099 82.13341 -91.58 -2.63
tp @s[scores={cutSceneTimer=599}] 5033.618 95.58236 82.13258 -91.58 -2.63
tp @s[scores={cutSceneTimer=600}] 5033.648 95.58373 82.13176 -91.58 -2.63
tp @s[scores={cutSceneTimer=601}] 5033.678 95.58511 82.13094 -91.58 -2.63
tp @s[scores={cutSceneTimer=602}] 5033.708 95.58648 82.13011 -91.58 -2.63
tp @s[scores={cutSceneTimer=603}] 5033.737 95.58785 82.12929 -91.58 -2.63
tp @s[scores={cutSceneTimer=604}] 5033.767 95.58923 82.12846 -91.58 -2.63
tp @s[scores={cutSceneTimer=605}] 5033.797 95.5906 82.12764 -91.58 -2.63
tp @s[scores={cutSceneTimer=606}] 5033.827 95.59197 82.12682 -91.58 -2.63
tp @s[scores={cutSceneTimer=607}] 5033.856 95.59335 82.12599 -91.58 -2.63
tp @s[scores={cutSceneTimer=608}] 5033.886 95.59472 82.12517 -91.58 -2.63
tp @s[scores={cutSceneTimer=609}] 5033.916 95.59609 82.12434 -91.58 -2.63
tp @s[scores={cutSceneTimer=610}] 5033.946 95.59747 82.12352 -91.58 -2.63
tp @s[scores={cutSceneTimer=611}] 5033.976 95.59884 82.1227 -91.58 -2.63
tp @s[scores={cutSceneTimer=612}] 5034.005 95.60021 82.12187 -91.58 -2.63
tp @s[scores={cutSceneTimer=613}] 5034.035 95.60159 82.12105 -91.58 -2.63
tp @s[scores={cutSceneTimer=614}] 5034.065 95.60296 82.12022 -91.58 -2.63
tp @s[scores={cutSceneTimer=615}] 5034.095 95.60433 82.1194 -91.58 -2.63
tp @s[scores={cutSceneTimer=616}] 5034.125 95.60571 82.11858 -91.58 -2.63
tp @s[scores={cutSceneTimer=617}] 5034.154 95.60708 82.11775 -91.58 -2.63
tp @s[scores={cutSceneTimer=618}] 5034.184 95.60845 82.11693 -91.58 -2.63
tp @s[scores={cutSceneTimer=619}] 5034.214 95.60983 82.1161 -91.58 -2.63
tp @s[scores={cutSceneTimer=620}] 5034.244 95.6112 82.11528 -91.58 -2.63
tp @s[scores={cutSceneTimer=621}] 5034.273 95.61257 82.11446 -91.58 -2.63
tp @s[scores={cutSceneTimer=622}] 5034.303 95.61395 82.11363 -91.58 -2.63
tp @s[scores={cutSceneTimer=623}] 5034.333 95.61532 82.11281 -91.58 -2.63
tp @s[scores={cutSceneTimer=624}] 5034.363 95.61669 82.11198 -91.58 -2.63
tp @s[scores={cutSceneTimer=625}] 5034.393 95.61806 82.11116 -91.58 -2.63
tp @s[scores={cutSceneTimer=626}] 5034.422 95.61944 82.11034 -91.58 -2.63
tp @s[scores={cutSceneTimer=627}] 5034.452 95.62081 82.10951 -91.58 -2.63
tp @s[scores={cutSceneTimer=628}] 5034.482 95.62218 82.10869 -91.58 -2.63
tp @s[scores={cutSceneTimer=629}] 5034.512 95.62356 82.10786 -91.58 -2.63
tp @s[scores={cutSceneTimer=630}] 5034.542 95.62493 82.10704 -91.58 -2.63
tp @s[scores={cutSceneTimer=631}] 5034.571 95.6263 82.10622 -91.58 -2.63
tp @s[scores={cutSceneTimer=632}] 5034.601 95.62768 82.10539 -91.58 -2.63
tp @s[scores={cutSceneTimer=633}] 5034.631 95.62905 82.10457 -91.58 -2.63
tp @s[scores={cutSceneTimer=634}] 5034.661 95.63042 82.10374 -91.58 -2.63
tp @s[scores={cutSceneTimer=635}] 5034.69 95.6318 82.10292 -91.58 -2.63
tp @s[scores={cutSceneTimer=636}] 5034.72 95.63317 82.1021 -91.58 -2.63
tp @s[scores={cutSceneTimer=637}] 5034.75 95.63454 82.10127 -91.58 -2.63
tp @s[scores={cutSceneTimer=638}] 5034.78 95.63592 82.10045 -91.58 -2.63
tp @s[scores={cutSceneTimer=639}] 5034.81 95.63729 82.09962 -91.58 -2.63
tp @s[scores={cutSceneTimer=640}] 5034.839 95.63866 82.0988 -91.58 -2.63
tp @s[scores={cutSceneTimer=641}] 5034.869 95.64004 82.09798 -91.58 -2.63
tp @s[scores={cutSceneTimer=642}] 5034.899 95.64141 82.09715 -91.58 -2.63
tp @s[scores={cutSceneTimer=643}] 5034.929 95.64278 82.09633 -91.58 -2.63
tp @s[scores={cutSceneTimer=644}] 5034.958 95.64416 82.0955 -91.58 -2.63
tp @s[scores={cutSceneTimer=645}] 5034.988 95.64553 82.09468 -91.58 -2.63
tp @s[scores={cutSceneTimer=646}] 5035.018 95.6469 82.09386 -91.58 -2.63
tp @s[scores={cutSceneTimer=647}] 5035.048 95.64828 82.09303 -91.58 -2.63
tp @s[scores={cutSceneTimer=648}] 5035.078 95.64965 82.09221 -91.58 -2.63
tp @s[scores={cutSceneTimer=649}] 5035.107 95.65102 82.09138 -91.58 -2.63
tp @s[scores={cutSceneTimer=650}] 5035.137 95.6524 82.09056 -91.58 -2.63
tp @s[scores={cutSceneTimer=651}] 5035.167 95.65377 82.08974 -91.58 -2.63
tp @s[scores={cutSceneTimer=652}] 5035.197 95.65514 82.08891 -91.58 -2.63
tp @s[scores={cutSceneTimer=653}] 5035.227 95.65652 82.08809 -91.58 -2.63
tp @s[scores={cutSceneTimer=654}] 5035.256 95.65789 82.08727 -91.58 -2.63
tp @s[scores={cutSceneTimer=655}] 5035.286 95.65926 82.08644 -91.58 -2.63
tp @s[scores={cutSceneTimer=656}] 5035.316 95.66064 82.08562 -91.58 -2.63
tp @s[scores={cutSceneTimer=657}] 5035.346 95.66201 82.08479 -91.58 -2.63
tp @s[scores={cutSceneTimer=658}] 5035.375 95.66338 82.08397 -91.58 -2.63
tp @s[scores={cutSceneTimer=659}] 5035.405 95.66476 82.08315 -91.58 -2.63
tp @s[scores={cutSceneTimer=660}] 5035.435 95.66613 82.08232 -91.58 -2.63
tp @s[scores={cutSceneTimer=661}] 5035.465 95.6675 82.0815 -91.58 -2.63
tp @s[scores={cutSceneTimer=662}] 5035.495 95.66888 82.08067 -91.58 -2.63
tp @s[scores={cutSceneTimer=663}] 5035.524 95.67025 82.07985 -91.58 -2.63
tp @s[scores={cutSceneTimer=664}] 5035.554 95.67162 82.07903 -91.58 -2.63
tp @s[scores={cutSceneTimer=665}] 5035.584 95.673 82.0782 -91.58 -2.63
tp @s[scores={cutSceneTimer=666}] 5035.614 95.67437 82.07738 -91.58 -2.63
tp @s[scores={cutSceneTimer=667}] 5035.644 95.67574 82.07655 -91.58 -2.63
tp @s[scores={cutSceneTimer=668}] 5035.673 95.67712 82.07573 -91.58 -2.63
tp @s[scores={cutSceneTimer=669}] 5035.703 95.67849 82.07491 -91.58 -2.63
tp @s[scores={cutSceneTimer=670}] 5035.733 95.67986 82.07408 -91.58 -2.63
tp @s[scores={cutSceneTimer=671}] 5035.763 95.68124 82.07326 -91.58 -2.63
tp @s[scores={cutSceneTimer=672}] 5035.792 95.68261 82.07243 -91.58 -2.63
tp @s[scores={cutSceneTimer=673}] 5035.822 95.68398 82.07161 -91.58 -2.63
tp @s[scores={cutSceneTimer=674}] 5035.852 95.68536 82.07079 -91.58 -2.63
tp @s[scores={cutSceneTimer=675}] 5035.882 95.68673 82.06996 -91.58 -2.63
tp @s[scores={cutSceneTimer=676}] 5035.912 95.6881 82.06914 -91.58 -2.63
tp @s[scores={cutSceneTimer=677}] 5035.941 95.68948 82.06831 -91.58 -2.63
tp @s[scores={cutSceneTimer=678}] 5035.971 95.69085 82.06749 -91.58 -2.63
tp @s[scores={cutSceneTimer=679}] 5036.001 95.69222 82.06667 -91.58 -2.63
tp @s[scores={cutSceneTimer=680}] 5036.031 95.6936 82.06584 -91.58 -2.63
tp @s[scores={cutSceneTimer=681}] 5036.061 95.69497 82.06502 -91.58 -2.63
tp @s[scores={cutSceneTimer=682}] 5036.09 95.69634 82.06419 -91.58 -2.63
tp @s[scores={cutSceneTimer=683}] 5036.12 95.69772 82.06337 -91.58 -2.63
tp @s[scores={cutSceneTimer=684}] 5036.15 95.69909 82.06255 -91.58 -2.63
tp @s[scores={cutSceneTimer=685}] 5036.18 95.70046 82.06172 -91.58 -2.63
tp @s[scores={cutSceneTimer=686}] 5036.209 95.70184 82.0609 -91.58 -2.63
tp @s[scores={cutSceneTimer=687}] 5036.239 95.70321 82.06007 -91.58 -2.63
tp @s[scores={cutSceneTimer=688}] 5036.269 95.70458 82.05925 -91.58 -2.63
tp @s[scores={cutSceneTimer=689}] 5036.299 95.70596 82.05843 -91.58 -2.63
tp @s[scores={cutSceneTimer=690}] 5036.329 95.70733 82.0576 -91.58 -2.63
tp @s[scores={cutSceneTimer=691}] 5036.358 95.7087 82.05678 -91.58 -2.63
tp @s[scores={cutSceneTimer=692}] 5036.388 95.71008 82.05595 -91.58 -2.63
tp @s[scores={cutSceneTimer=693}] 5036.418 95.71145 82.05513 -91.58 -2.63
tp @s[scores={cutSceneTimer=694}] 5036.448 95.71282 82.05431 -91.58 -2.63
tp @s[scores={cutSceneTimer=695}] 5036.478 95.7142 82.05348 -91.58 -2.63
tp @s[scores={cutSceneTimer=696}] 5036.507 95.71557 82.05266 -91.58 -2.63
tp @s[scores={cutSceneTimer=697}] 5036.537 95.71694 82.05183 -91.58 -2.63
tp @s[scores={cutSceneTimer=698}] 5036.567 95.71832 82.05101 -91.58 -2.63
tp @s[scores={cutSceneTimer=699}] 5036.597 95.71969 82.05019 -91.58 -2.63
tp @s[scores={cutSceneTimer=700}] 5036.626 95.72106 82.04936 -91.58 -2.63
tp @s[scores={cutSceneTimer=701}] 5036.656 95.72243 82.04854 -91.58 -2.63
tp @s[scores={cutSceneTimer=702}] 5036.686 95.72381 82.04771 -91.58 -2.63
tp @s[scores={cutSceneTimer=703}] 5036.716 95.72518 82.04689 -91.58 -2.63
tp @s[scores={cutSceneTimer=704}] 5036.746 95.72655 82.04607 -91.58 -2.63
tp @s[scores={cutSceneTimer=705}] 5036.775 95.72793 82.04524 -91.58 -2.63
tp @s[scores={cutSceneTimer=706}] 5036.805 95.7293 82.04442 -91.58 -2.63
tp @s[scores={cutSceneTimer=707}] 5036.835 95.73067 82.04359 -91.58 -2.63
tp @s[scores={cutSceneTimer=708}] 5036.865 95.73205 82.04277 -91.58 -2.63
tp @s[scores={cutSceneTimer=709}] 5036.895 95.73342 82.04195 -91.58 -2.63
tp @s[scores={cutSceneTimer=710}] 5036.924 95.73479 82.04112 -91.58 -2.63
tp @s[scores={cutSceneTimer=711}] 5036.954 95.73617 82.0403 -91.58 -2.63
tp @s[scores={cutSceneTimer=712}] 5036.984 95.73754 82.03947 -91.58 -2.63
tp @s[scores={cutSceneTimer=713}] 5037.014 95.73891 82.03865 -91.58 -2.63
tp @s[scores={cutSceneTimer=714}] 5037.043 95.74029 82.03783 -91.58 -2.63
tp @s[scores={cutSceneTimer=715}] 5037.073 95.74166 82.037 -91.58 -2.63
tp @s[scores={cutSceneTimer=716}] 5037.103 95.74303 82.03618 -91.58 -2.63
tp @s[scores={cutSceneTimer=717}] 5037.133 95.74441 82.03535 -91.58 -2.63
tp @s[scores={cutSceneTimer=718}] 5037.163 95.74578 82.03453 -91.58 -2.63
tp @s[scores={cutSceneTimer=719}] 5037.192 95.74715 82.03371 -91.58 -2.63
tp @s[scores={cutSceneTimer=720}] 5037.222 95.74853 82.03288 -91.58 -2.63
tp @s[scores={cutSceneTimer=721}] 5037.252 95.7499 82.03206 -91.58 -2.63
tp @s[scores={cutSceneTimer=722}] 5037.282 95.75127 82.03123 -91.58 -2.63
tp @s[scores={cutSceneTimer=723}] 5037.312 95.75265 82.03041 -91.58 -2.63
tp @s[scores={cutSceneTimer=724}] 5037.341 95.75402 82.02959 -91.58 -2.63
tp @s[scores={cutSceneTimer=725}] 5037.371 95.75539 82.02876 -91.58 -2.63
tp @s[scores={cutSceneTimer=726}] 5037.401 95.75677 82.02794 -91.58 -2.63
tp @s[scores={cutSceneTimer=727}] 5037.431 95.75814 82.02711 -91.58 -2.63
tp @s[scores={cutSceneTimer=728}] 5037.46 95.75951 82.02629 -91.58 -2.63
tp @s[scores={cutSceneTimer=729}] 5037.49 95.76089 82.02547 -91.58 -2.63
tp @s[scores={cutSceneTimer=730}] 5037.52 95.76226 82.02464 -91.58 -2.63
tp @s[scores={cutSceneTimer=731}] 5037.55 95.76363 82.02382 -91.58 -2.63
tp @s[scores={cutSceneTimer=732}] 5037.58 95.76501 82.02299 -91.58 -2.63
tp @s[scores={cutSceneTimer=733}] 5037.609 95.76638 82.02217 -91.58 -2.63
tp @s[scores={cutSceneTimer=734}] 5037.639 95.76775 82.02135 -91.58 -2.63
tp @s[scores={cutSceneTimer=735}] 5037.669 95.76913 82.02052 -91.58 -2.63
tp @s[scores={cutSceneTimer=736}] 5037.699 95.7705 82.0197 -91.58 -2.63
tp @s[scores={cutSceneTimer=737}] 5037.729 95.77187 82.01888 -91.58 -2.63
tp @s[scores={cutSceneTimer=738}] 5037.758 95.77325 82.01805 -91.58 -2.63
tp @s[scores={cutSceneTimer=739}] 5037.788 95.77462 82.01723 -91.58 -2.63
tp @s[scores={cutSceneTimer=740}] 5037.818 95.77599 82.0164 -91.58 -2.63
tp @s[scores={cutSceneTimer=741}] 5037.848 95.77737 82.01558 -91.58 -2.63
tp @s[scores={cutSceneTimer=742}] 5037.877 95.77874 82.01476 -91.58 -2.63
tp @s[scores={cutSceneTimer=743}] 5037.907 95.78011 82.01393 -91.58 -2.63
tp @s[scores={cutSceneTimer=744}] 5037.937 95.78149 82.01311 -91.58 -2.63
tp @s[scores={cutSceneTimer=745}] 5037.967 95.78286 82.01228 -91.58 -2.63
tp @s[scores={cutSceneTimer=746}] 5037.997 95.78423 82.01146 -91.58 -2.63
tp @s[scores={cutSceneTimer=747}] 5038.026 95.78561 82.01064 -91.58 -2.63
tp @s[scores={cutSceneTimer=748}] 5038.056 95.78698 82.00981 -91.58 -2.63
tp @s[scores={cutSceneTimer=749}] 5038.086 95.78835 82.00899 -91.58 -2.63
tp @s[scores={cutSceneTimer=750}] 5038.116 95.78973 82.00816 -91.58 -2.63
tp @s[scores={cutSceneTimer=751}] 5038.146 95.7911 82.00734 -91.58 -2.63
tp @s[scores={cutSceneTimer=752}] 5038.175 95.79247 82.00652 -91.58 -2.63
tp @s[scores={cutSceneTimer=753}] 5038.205 95.79385 82.00569 -91.58 -2.63
tp @s[scores={cutSceneTimer=754}] 5038.235 95.79522 82.00487 -91.58 -2.63
tp @s[scores={cutSceneTimer=755}] 5038.265 95.79659 82.00404 -91.58 -2.63
tp @s[scores={cutSceneTimer=756}] 5038.294 95.79797 82.00322 -91.58 -2.63
tp @s[scores={cutSceneTimer=757}] 5038.324 95.79934 82.0024 -91.58 -2.63
tp @s[scores={cutSceneTimer=758}] 5038.354 95.80071 82.00157 -91.58 -2.63
tp @s[scores={cutSceneTimer=759}] 5038.384 95.80209 82.00075 -91.58 -2.63
tp @s[scores={cutSceneTimer=760}] 5038.414 95.80346 81.99992 -91.58 -2.63
tp @s[scores={cutSceneTimer=761}] 5038.443 95.80483 81.9991 -91.58 -2.63
tp @s[scores={cutSceneTimer=762}] 5038.473 95.80621 81.99828 -91.58 -2.63
tp @s[scores={cutSceneTimer=763}] 5038.503 95.80758 81.99745 -91.58 -2.63
tp @s[scores={cutSceneTimer=764}] 5038.533 95.80895 81.99663 -91.58 -2.63
tp @s[scores={cutSceneTimer=765}] 5038.563 95.81033 81.9958 -91.58 -2.63
tp @s[scores={cutSceneTimer=766}] 5038.592 95.8117 81.99498 -91.58 -2.63
tp @s[scores={cutSceneTimer=767}] 5038.622 95.81307 81.99416 -91.58 -2.63
tp @s[scores={cutSceneTimer=768}] 5038.652 95.81445 81.99333 -91.58 -2.63
tp @s[scores={cutSceneTimer=769}] 5038.682 95.81582 81.99251 -91.58 -2.63
tp @s[scores={cutSceneTimer=770}] 5038.711 95.81719 81.99168 -91.58 -2.63
tp @s[scores={cutSceneTimer=771}] 5038.741 95.81857 81.99086 -91.58 -2.63
tp @s[scores={cutSceneTimer=772}] 5038.771 95.81994 81.99004 -91.58 -2.63
tp @s[scores={cutSceneTimer=773}] 5038.801 95.82131 81.98921 -91.58 -2.63
tp @s[scores={cutSceneTimer=774}] 5038.831 95.82269 81.98839 -91.58 -2.63
tp @s[scores={cutSceneTimer=775}] 5038.86 95.82406 81.98756 -91.58 -2.63
tp @s[scores={cutSceneTimer=776}] 5038.89 95.82543 81.98674 -91.58 -2.63
tp @s[scores={cutSceneTimer=777}] 5038.92 95.82681 81.98592 -91.58 -2.63
tp @s[scores={cutSceneTimer=778}] 5038.95 95.82818 81.98509 -91.58 -2.63
tp @s[scores={cutSceneTimer=779}] 5038.979 95.82955 81.98427 -91.58 -2.63
tp @s[scores={cutSceneTimer=780}] 5039.009 95.83092 81.98344 -91.58 -2.63

execute as @s[scores={cutSceneTimer=760}] run function hp:cutscenes/fade_in

# ¤Flitwick:¤ To practice Lumos, I have arranged a special task for you that you must complete.
execute as @s[scores={cutSceneTimer=590},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 20 1 0
execute as @s[scores={cutSceneTimer=590..700}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"               "}]
execute as @s[scores={cutSceneTimer=590},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=597},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=601},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=608},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=612},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=619},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=623},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=630},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Flitwick:¤ The task is simple:
execute as @s[scores={cutSceneTimer=701},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 20 1 0
execute as @s[scores={cutSceneTimer=701..780}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"    "}]
execute as @s[scores={cutSceneTimer=701},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=708},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=712},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=719},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=723},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=730},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=734},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=741},tag=cutsceneLeader] as @e[tag=flitwickClassroom,limit=1] run function hp:npc/update_npc_head_neutral


execute as @s[scores={cutSceneTimer=780}] run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=781}] 5097.41 93.99 42.785 180.04 -16.33
tp @s[scores={cutSceneTimer=782}] 5097.41 93.99 42.77 180.04 -16.23
tp @s[scores={cutSceneTimer=783}] 5097.41 93.99 42.755 180.04 -16.13
tp @s[scores={cutSceneTimer=784}] 5097.41 93.99 42.74 180.04 -16.03
tp @s[scores={cutSceneTimer=785}] 5097.41 93.99 42.725 180.04 -15.93
tp @s[scores={cutSceneTimer=786}] 5097.41 93.99 42.71 180.04 -15.83
tp @s[scores={cutSceneTimer=787}] 5097.41 93.99 42.695 180.04 -15.73
tp @s[scores={cutSceneTimer=788}] 5097.41 93.99 42.68 180.04 -15.63
tp @s[scores={cutSceneTimer=789}] 5097.41 93.99 42.665 180.04 -15.53
tp @s[scores={cutSceneTimer=790}] 5097.41 93.99 42.65001 180.04 -15.43
tp @s[scores={cutSceneTimer=791}] 5097.41 93.99 42.63501 180.04 -15.33
tp @s[scores={cutSceneTimer=792}] 5097.41 93.99 42.62001 180.04 -15.23
tp @s[scores={cutSceneTimer=793}] 5097.41 93.99 42.60501 180.04 -15.13
tp @s[scores={cutSceneTimer=794}] 5097.41 93.99 42.59001 180.04 -15.02999
tp @s[scores={cutSceneTimer=795}] 5097.41 93.99 42.57501 180.04 -14.92999
tp @s[scores={cutSceneTimer=796}] 5097.41 93.99 42.56001 180.04 -14.82999
tp @s[scores={cutSceneTimer=797}] 5097.41 93.99 42.54501 180.04 -14.72999
tp @s[scores={cutSceneTimer=798}] 5097.41 93.99 42.53001 180.04 -14.62999
tp @s[scores={cutSceneTimer=799}] 5097.41 93.99 42.51501 180.04 -14.52999
tp @s[scores={cutSceneTimer=800}] 5097.41 93.99 42.50001 180.04 -14.42999
tp @s[scores={cutSceneTimer=801}] 5097.41 93.99 42.48501 180.04 -14.32999
tp @s[scores={cutSceneTimer=802}] 5097.41 93.99 42.47001 180.04 -14.22999
tp @s[scores={cutSceneTimer=803}] 5097.41 93.99 42.45501 180.04 -14.12999
tp @s[scores={cutSceneTimer=804}] 5097.41 93.99 42.44001 180.04 -14.02999
tp @s[scores={cutSceneTimer=805}] 5097.41 93.99 42.42501 180.04 -13.92999
tp @s[scores={cutSceneTimer=806}] 5097.41 93.99 42.41002 180.04 -13.82999
tp @s[scores={cutSceneTimer=807}] 5097.41 93.99 42.39502 180.04 -13.72999
tp @s[scores={cutSceneTimer=808}] 5097.41 93.99 42.38002 180.04 -13.62999
tp @s[scores={cutSceneTimer=809}] 5097.41 93.99 42.36502 180.04 -13.52999
tp @s[scores={cutSceneTimer=810}] 5097.41 93.99 42.35002 180.04 -13.42999
tp @s[scores={cutSceneTimer=811}] 5097.41 93.99 42.33502 180.04 -13.32999
tp @s[scores={cutSceneTimer=812}] 5097.41 93.99 42.32002 180.04 -13.22999
tp @s[scores={cutSceneTimer=813}] 5097.41 93.99 42.30502 180.04 -13.12999
tp @s[scores={cutSceneTimer=814}] 5097.41 93.99 42.29002 180.04 -13.02999
tp @s[scores={cutSceneTimer=815}] 5097.41 93.99 42.27502 180.04 -12.92999
tp @s[scores={cutSceneTimer=816}] 5097.41 93.99 42.26002 180.04 -12.82999
tp @s[scores={cutSceneTimer=817}] 5097.41 93.99 42.24502 180.04 -12.72999
tp @s[scores={cutSceneTimer=818}] 5097.41 93.99 42.23002 180.04 -12.62999
tp @s[scores={cutSceneTimer=819}] 5097.41 93.99 42.21502 180.04 -12.52999
tp @s[scores={cutSceneTimer=820}] 5097.41 93.99 42.20002 180.04 -12.42999
tp @s[scores={cutSceneTimer=821}] 5097.41 93.99 42.18502 180.04 -12.32998
tp @s[scores={cutSceneTimer=822}] 5097.41 93.99 42.17002 180.04 -12.22998
tp @s[scores={cutSceneTimer=823}] 5097.41 93.99 42.15503 180.04 -12.12998
tp @s[scores={cutSceneTimer=824}] 5097.41 93.99 42.14003 180.04 -12.02998
tp @s[scores={cutSceneTimer=825}] 5097.41 93.99 42.12503 180.04 -11.92998
tp @s[scores={cutSceneTimer=826}] 5097.41 93.99 42.11003 180.04 -11.82998
tp @s[scores={cutSceneTimer=827}] 5097.41 93.99 42.09503 180.04 -11.72998
tp @s[scores={cutSceneTimer=828}] 5097.41 93.99 42.08003 180.04 -11.62998
tp @s[scores={cutSceneTimer=829}] 5097.41 93.99 42.06503 180.04 -11.52998
tp @s[scores={cutSceneTimer=830}] 5097.41 93.99 42.05003 180.04 -11.42998
tp @s[scores={cutSceneTimer=831}] 5097.41 93.99 42.03503 180.04 -11.32998
tp @s[scores={cutSceneTimer=832}] 5097.41 93.99 42.02003 180.04 -11.22998
tp @s[scores={cutSceneTimer=833}] 5097.41 93.99 42.00503 180.04 -11.12998
tp @s[scores={cutSceneTimer=834}] 5097.41 93.99 41.99003 180.04 -11.02998
tp @s[scores={cutSceneTimer=835}] 5097.41 93.99 41.97503 180.04 -10.92998
tp @s[scores={cutSceneTimer=836}] 5097.41 93.99 41.96003 180.04 -10.82998
tp @s[scores={cutSceneTimer=837}] 5097.41 93.99 41.94503 180.04 -10.72998
tp @s[scores={cutSceneTimer=838}] 5097.41 93.99 41.93003 180.04 -10.62998
tp @s[scores={cutSceneTimer=839}] 5097.41 93.99 41.91504 180.04 -10.52998
tp @s[scores={cutSceneTimer=840}] 5097.41 93.99 41.90004 180.04 -10.42998
tp @s[scores={cutSceneTimer=841}] 5097.41 93.99 41.88504 180.04 -10.32998
tp @s[scores={cutSceneTimer=842}] 5097.41 93.99 41.87004 180.04 -10.22998
tp @s[scores={cutSceneTimer=843}] 5097.41 93.99 41.85504 180.04 -10.12998
tp @s[scores={cutSceneTimer=844}] 5097.41 93.99 41.84004 180.04 -10.02998
tp @s[scores={cutSceneTimer=845}] 5097.41 93.99 41.82504 180.04 -9.929976
tp @s[scores={cutSceneTimer=846}] 5097.41 93.99 41.81004 180.04 -9.829975
tp @s[scores={cutSceneTimer=847}] 5097.41 93.99 41.79504 180.04 -9.729975
tp @s[scores={cutSceneTimer=848}] 5097.41 93.99 41.78004 180.04 -9.629974
tp @s[scores={cutSceneTimer=849}] 5097.41 93.99 41.76504 180.04 -9.529974
tp @s[scores={cutSceneTimer=850}] 5097.41 93.99 41.75004 180.04 -9.429974
tp @s[scores={cutSceneTimer=851}] 5097.41 93.99 41.73504 180.04 -9.329973
tp @s[scores={cutSceneTimer=852}] 5097.41 93.99 41.72004 180.04 -9.229973
tp @s[scores={cutSceneTimer=853}] 5097.41 93.99 41.70504 180.04 -9.129972
tp @s[scores={cutSceneTimer=854}] 5097.41 93.99 41.69004 180.04 -9.029972
tp @s[scores={cutSceneTimer=855}] 5097.41 93.99 41.67505 180.04 -8.929972
tp @s[scores={cutSceneTimer=856}] 5097.41 93.99 41.66005 180.04 -8.829971
tp @s[scores={cutSceneTimer=857}] 5097.41 93.99 41.64505 180.04 -8.729971
tp @s[scores={cutSceneTimer=858}] 5097.41 93.99 41.63005 180.04 -8.629971
tp @s[scores={cutSceneTimer=859}] 5097.41 93.99 41.61505 180.04 -8.52997
tp @s[scores={cutSceneTimer=860}] 5097.41 93.99 41.60005 180.04 -8.42997
tp @s[scores={cutSceneTimer=861}] 5097.41 93.99 41.58505 180.04 -8.329969
tp @s[scores={cutSceneTimer=862}] 5097.41 93.99 41.57005 180.04 -8.229969
tp @s[scores={cutSceneTimer=863}] 5097.41 93.99 41.55505 180.04 -8.129969
tp @s[scores={cutSceneTimer=864}] 5097.41 93.99 41.54005 180.04 -8.029968
tp @s[scores={cutSceneTimer=865}] 5097.41 93.99 41.52505 180.04 -7.929968
tp @s[scores={cutSceneTimer=866}] 5097.41 93.99 41.51005 180.04 -7.829968
tp @s[scores={cutSceneTimer=867}] 5097.41 93.99 41.49505 180.04 -7.729969
tp @s[scores={cutSceneTimer=868}] 5097.41 93.99 41.48005 180.04 -7.629969
tp @s[scores={cutSceneTimer=869}] 5097.41 93.99 41.46505 180.04 -7.529969
tp @s[scores={cutSceneTimer=870}] 5097.41 93.99 41.45005 180.04 -7.429969
tp @s[scores={cutSceneTimer=871}] 5097.41 93.99 41.43505 180.04 -7.329969
tp @s[scores={cutSceneTimer=872}] 5097.41 93.99 41.42006 180.04 -7.229969
tp @s[scores={cutSceneTimer=873}] 5097.41 93.99 41.40506 180.04 -7.129969
tp @s[scores={cutSceneTimer=874}] 5097.41 93.99 41.39006 180.04 -7.029969
tp @s[scores={cutSceneTimer=875}] 5097.41 93.99 41.37506 180.04 -6.929969
tp @s[scores={cutSceneTimer=876}] 5097.41 93.99 41.36006 180.04 -6.829969
tp @s[scores={cutSceneTimer=877}] 5097.41 93.99 41.34506 180.04 -6.72997
tp @s[scores={cutSceneTimer=878}] 5097.41 93.99 41.33006 180.04 -6.62997
tp @s[scores={cutSceneTimer=879}] 5097.41 93.99 41.31506 180.04 -6.52997
tp @s[scores={cutSceneTimer=880}] 5097.41 93.99 41.30006 180.04 -6.42997
tp @s[scores={cutSceneTimer=881}] 5097.41 93.99 41.28506 180.04 -6.32997
tp @s[scores={cutSceneTimer=882}] 5097.41 93.99 41.27006 180.04 -6.22997
tp @s[scores={cutSceneTimer=883}] 5097.41 93.99 41.25506 180.04 -6.12997
tp @s[scores={cutSceneTimer=884}] 5097.41 93.99 41.24006 180.04 -6.02997
tp @s[scores={cutSceneTimer=885}] 5097.41 93.99 41.22506 180.04 -5.92997
tp @s[scores={cutSceneTimer=886}] 5097.41 93.99 41.21006 180.04 -5.82997
tp @s[scores={cutSceneTimer=887}] 5097.41 93.99 41.19506 180.04 -5.72997
tp @s[scores={cutSceneTimer=888}] 5097.41 93.99 41.18007 180.04 -5.629971
tp @s[scores={cutSceneTimer=889}] 5097.41 93.99 41.16507 180.04 -5.529971
tp @s[scores={cutSceneTimer=890}] 5097.41 93.99 41.15007 180.04 -5.429971
tp @s[scores={cutSceneTimer=891}] 5097.41 93.99 41.13507 180.04 -5.329971
tp @s[scores={cutSceneTimer=892}] 5097.41 93.99 41.12007 180.04 -5.229971
tp @s[scores={cutSceneTimer=893}] 5097.41 93.99 41.10507 180.04 -5.129971
tp @s[scores={cutSceneTimer=894}] 5097.41 93.99 41.09007 180.04 -5.029971
tp @s[scores={cutSceneTimer=895}] 5097.41 93.99 41.07507 180.04 -4.929971
tp @s[scores={cutSceneTimer=896}] 5097.41 93.99 41.06007 180.04 -4.829971
tp @s[scores={cutSceneTimer=897}] 5097.41 93.99 41.04507 180.04 -4.729971
tp @s[scores={cutSceneTimer=898}] 5097.41 93.99 41.03007 180.04 -4.629972
tp @s[scores={cutSceneTimer=899}] 5097.41 93.99 41.01507 180.04 -4.529972
tp @s[scores={cutSceneTimer=900}] 5097.41 93.99 41.00007 180.04 -4.429972
tp @s[scores={cutSceneTimer=901}] 5097.41 93.99 40.98507 180.04 -4.329972
tp @s[scores={cutSceneTimer=902}] 5097.41 93.99 40.97007 180.04 -4.229972
tp @s[scores={cutSceneTimer=903}] 5097.41 93.99 40.95507 180.04 -4.129972
tp @s[scores={cutSceneTimer=904}] 5097.41 93.99 40.94007 180.04 -4.029972
tp @s[scores={cutSceneTimer=905}] 5097.41 93.99 40.92508 180.04 -3.929972
tp @s[scores={cutSceneTimer=906}] 5097.41 93.99 40.91008 180.04 -3.829972
tp @s[scores={cutSceneTimer=907}] 5097.41 93.99 40.89508 180.04 -3.729972
tp @s[scores={cutSceneTimer=908}] 5097.41 93.99 40.88008 180.04 -3.629972
tp @s[scores={cutSceneTimer=909}] 5097.41 93.99 40.86508 180.04 -3.529973
tp @s[scores={cutSceneTimer=910}] 5097.41 93.99 40.85008 180.04 -3.429973
tp @s[scores={cutSceneTimer=911}] 5097.41 93.99 40.83508 180.04 -3.329973
tp @s[scores={cutSceneTimer=912}] 5097.41 93.99 40.82008 180.04 -3.229973
tp @s[scores={cutSceneTimer=913}] 5097.41 93.99 40.80508 180.04 -3.129973
tp @s[scores={cutSceneTimer=914}] 5097.41 93.99 40.79008 180.04 -3.029973
tp @s[scores={cutSceneTimer=915}] 5097.41 93.99 40.77508 180.04 -2.929973
tp @s[scores={cutSceneTimer=916}] 5097.41 93.99 40.76008 180.04 -2.829973
tp @s[scores={cutSceneTimer=917}] 5097.41 93.99 40.74508 180.04 -2.729973
tp @s[scores={cutSceneTimer=918}] 5097.41 93.99 40.73008 180.04 -2.629973
tp @s[scores={cutSceneTimer=919}] 5097.41 93.99 40.71508 180.04 -2.529974
tp @s[scores={cutSceneTimer=920}] 5097.41 93.99 40.70008 180.04 -2.429974
tp @s[scores={cutSceneTimer=921}] 5097.41 93.99 40.68509 180.04 -2.329974
tp @s[scores={cutSceneTimer=922}] 5097.41 93.99 40.67009 180.04 -2.229974
tp @s[scores={cutSceneTimer=923}] 5097.41 93.99 40.65509 180.04 -2.129974
tp @s[scores={cutSceneTimer=924}] 5097.41 93.99 40.64009 180.04 -2.029974
tp @s[scores={cutSceneTimer=925}] 5097.41 93.99 40.62509 180.04 -1.929974
tp @s[scores={cutSceneTimer=926}] 5097.41 93.99 40.61009 180.04 -1.829974
tp @s[scores={cutSceneTimer=927}] 5097.41 93.99 40.59509 180.04 -1.729974
tp @s[scores={cutSceneTimer=928}] 5097.41 93.99 40.58009 180.04 -1.629974
tp @s[scores={cutSceneTimer=929}] 5097.41 93.99 40.56509 180.04 -1.529974
tp @s[scores={cutSceneTimer=930}] 5097.41 93.99 40.55009 180.04 -1.429974
tp @s[scores={cutSceneTimer=931}] 5097.41 93.99 40.53509 180.04 -1.329974
tp @s[scores={cutSceneTimer=932}] 5097.41 93.99 40.52009 180.04 -1.229974
tp @s[scores={cutSceneTimer=933}] 5097.41 93.99 40.50509 180.04 -1.129974
tp @s[scores={cutSceneTimer=934}] 5097.41 93.99 40.49009 180.04 -1.029974
tp @s[scores={cutSceneTimer=935}] 5097.41 93.99 40.47509 180.04 -0.9299737
tp @s[scores={cutSceneTimer=936}] 5097.41 93.99 40.46009 180.04 -0.8299737
tp @s[scores={cutSceneTimer=937}] 5097.41 93.99 40.4451 180.04 -0.7299737
tp @s[scores={cutSceneTimer=938}] 5097.41 93.99 40.4301 180.04 -0.6299736
tp @s[scores={cutSceneTimer=939}] 5097.41 93.99 40.4151 180.04 -0.5299736
tp @s[scores={cutSceneTimer=940}] 5097.41 93.99 40.4001 180.04 -0.4299736
execute as @s[scores={cutSceneTimer=920}] run function hp:cutscenes/fade_in



# ¤Flitwick:¤ Collect the five stars scattered throughout this maze of corridors, and return to me to complete the lesson.
execute as @s[scores={cutSceneTimer=781},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 20 1 0
execute as @s[scores={cutSceneTimer=781..940}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"                  "}]
execute as @s[scores={cutSceneTimer=781},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=788},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=792},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=799},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=803},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=810},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=814},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=821},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_neutral


execute as @s[scores={cutSceneTimer=940..1100}] run effect give @s minecraft:night_vision 100 1 true
execute as @s[scores={cutSceneTimer=940..1100}] run effect give @s minecraft:blindness 100 1 true
execute as @s[scores={cutSceneTimer=940}] run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=940}] 5031.49 93.72883 13.31497 -360.54 2.69
tp @s[scores={cutSceneTimer=941}] 5031.49 93.72765 13.33994 -360.54 2.69
tp @s[scores={cutSceneTimer=942}] 5031.49 93.72648 13.36491 -360.54 2.69
tp @s[scores={cutSceneTimer=943}] 5031.49 93.7253 13.38988 -360.54 2.69
tp @s[scores={cutSceneTimer=944}] 5031.49 93.72413 13.41486 -360.54 2.69
tp @s[scores={cutSceneTimer=945}] 5031.49 93.72295 13.43983 -360.54 2.69
tp @s[scores={cutSceneTimer=946}] 5031.49 93.72178 13.4648 -360.54 2.69
tp @s[scores={cutSceneTimer=947}] 5031.49 93.7206 13.48977 -360.54 2.69
tp @s[scores={cutSceneTimer=948}] 5031.49 93.71943 13.51474 -360.54 2.69
tp @s[scores={cutSceneTimer=949}] 5031.49 93.71825 13.53971 -360.54 2.69
tp @s[scores={cutSceneTimer=950}] 5031.49 93.71708 13.56468 -360.54 2.69
tp @s[scores={cutSceneTimer=951}] 5031.49 93.7159 13.58965 -360.54 2.69
tp @s[scores={cutSceneTimer=952}] 5031.49 93.71473 13.61462 -360.54 2.69
tp @s[scores={cutSceneTimer=953}] 5031.49 93.71355 13.63959 -360.54 2.69
tp @s[scores={cutSceneTimer=954}] 5031.49 93.71238 13.66457 -360.54 2.69
tp @s[scores={cutSceneTimer=955}] 5031.49 93.7112 13.68954 -360.54 2.69
tp @s[scores={cutSceneTimer=956}] 5031.49 93.71003 13.71451 -360.54 2.69
tp @s[scores={cutSceneTimer=957}] 5031.49 93.70885 13.73948 -360.54 2.69
tp @s[scores={cutSceneTimer=958}] 5031.49 93.70768 13.76445 -360.54 2.69
tp @s[scores={cutSceneTimer=959}] 5031.49 93.7065 13.78942 -360.54 2.69
tp @s[scores={cutSceneTimer=960}] 5031.49 93.70533 13.81439 -360.54 2.69
tp @s[scores={cutSceneTimer=961}] 5031.49 93.70415 13.83936 -360.54 2.69
tp @s[scores={cutSceneTimer=962}] 5031.49 93.70298 13.86433 -360.54 2.69
tp @s[scores={cutSceneTimer=963}] 5031.49 93.70181 13.8893 -360.54 2.69
tp @s[scores={cutSceneTimer=964}] 5031.49 93.70063 13.91428 -360.54 2.69
tp @s[scores={cutSceneTimer=965}] 5031.49 93.69946 13.93925 -360.54 2.69
tp @s[scores={cutSceneTimer=966}] 5031.49 93.69828 13.96422 -360.54 2.69
tp @s[scores={cutSceneTimer=967}] 5031.49 93.69711 13.98919 -360.54 2.69
tp @s[scores={cutSceneTimer=968}] 5031.49 93.69593 14.01416 -360.54 2.69
tp @s[scores={cutSceneTimer=969}] 5031.49 93.69476 14.03913 -360.54 2.69
tp @s[scores={cutSceneTimer=970}] 5031.49 93.69358 14.0641 -360.54 2.69
tp @s[scores={cutSceneTimer=971}] 5031.49 93.69241 14.08907 -360.54 2.69
tp @s[scores={cutSceneTimer=972}] 5031.49 93.69123 14.11404 -360.54 2.69
tp @s[scores={cutSceneTimer=973}] 5031.49 93.69006 14.13901 -360.54 2.69
tp @s[scores={cutSceneTimer=974}] 5031.49 93.68888 14.16399 -360.54 2.69
tp @s[scores={cutSceneTimer=975}] 5031.49 93.68771 14.18896 -360.54 2.69
tp @s[scores={cutSceneTimer=976}] 5031.49 93.68653 14.21393 -360.54 2.69
tp @s[scores={cutSceneTimer=977}] 5031.49 93.68536 14.2389 -360.54 2.69
tp @s[scores={cutSceneTimer=978}] 5031.49 93.68418 14.26387 -360.54 2.69
tp @s[scores={cutSceneTimer=979}] 5031.49 93.68301 14.28884 -360.54 2.69
tp @s[scores={cutSceneTimer=980}] 5031.49 93.68183 14.31381 -360.54 2.69
tp @s[scores={cutSceneTimer=981}] 5031.49 93.68066 14.33878 -360.54 2.69
tp @s[scores={cutSceneTimer=982}] 5031.49 93.67948 14.36375 -360.54 2.69
tp @s[scores={cutSceneTimer=983}] 5031.49 93.67831 14.38872 -360.54 2.69
tp @s[scores={cutSceneTimer=984}] 5031.49 93.67713 14.4137 -360.54 2.69
tp @s[scores={cutSceneTimer=985}] 5031.49 93.67596 14.43867 -360.54 2.69
tp @s[scores={cutSceneTimer=986}] 5031.49 93.67478 14.46364 -360.54 2.69
tp @s[scores={cutSceneTimer=987}] 5031.49 93.67361 14.48861 -360.54 2.69
tp @s[scores={cutSceneTimer=988}] 5031.49 93.67243 14.51358 -360.54 2.69
tp @s[scores={cutSceneTimer=989}] 5031.49 93.67126 14.53855 -360.54 2.69
tp @s[scores={cutSceneTimer=990}] 5031.49 93.67008 14.56352 -360.54 2.69
tp @s[scores={cutSceneTimer=991}] 5031.49 93.66891 14.58849 -360.54 2.69
tp @s[scores={cutSceneTimer=992}] 5031.49 93.66773 14.61346 -360.54 2.69
tp @s[scores={cutSceneTimer=993}] 5031.49 93.66656 14.63843 -360.54 2.69
tp @s[scores={cutSceneTimer=994}] 5031.49 93.66538 14.66341 -360.54 2.69
tp @s[scores={cutSceneTimer=995}] 5031.49 93.66421 14.68838 -360.54 2.69
tp @s[scores={cutSceneTimer=996}] 5031.49 93.66303 14.71335 -360.54 2.69
tp @s[scores={cutSceneTimer=997}] 5031.49 93.66186 14.73832 -360.54 2.69
tp @s[scores={cutSceneTimer=998}] 5031.49 93.66068 14.76329 -360.54 2.69
tp @s[scores={cutSceneTimer=999}] 5031.49 93.65951 14.78826 -360.54 2.69
tp @s[scores={cutSceneTimer=1000}] 5031.49 93.65833 14.81323 -360.54 2.69
tp @s[scores={cutSceneTimer=1001}] 5031.49 93.65716 14.8382 -360.54 2.69
tp @s[scores={cutSceneTimer=1002}] 5031.49 93.65598 14.86317 -360.54 2.69
tp @s[scores={cutSceneTimer=1003}] 5031.49 93.65481 14.88814 -360.54 2.69
tp @s[scores={cutSceneTimer=1004}] 5031.49 93.65363 14.91312 -360.54 2.69
tp @s[scores={cutSceneTimer=1005}] 5031.49 93.65246 14.93809 -360.54 2.69
tp @s[scores={cutSceneTimer=1006}] 5031.49 93.65128 14.96306 -360.54 2.69
tp @s[scores={cutSceneTimer=1007}] 5031.49 93.65011 14.98803 -360.54 2.69
tp @s[scores={cutSceneTimer=1008}] 5031.49 93.64893 15.013 -360.54 2.69
tp @s[scores={cutSceneTimer=1009}] 5031.49 93.64776 15.03797 -360.54 2.69
tp @s[scores={cutSceneTimer=1010}] 5031.49 93.64658 15.06294 -360.54 2.69
tp @s[scores={cutSceneTimer=1011}] 5031.49 93.64541 15.08791 -360.54 2.69
tp @s[scores={cutSceneTimer=1012}] 5031.49 93.64423 15.11288 -360.54 2.69
tp @s[scores={cutSceneTimer=1013}] 5031.49 93.64306 15.13785 -360.54 2.69
tp @s[scores={cutSceneTimer=1014}] 5031.49 93.64188 15.16283 -360.54 2.69
tp @s[scores={cutSceneTimer=1015}] 5031.49 93.64071 15.1878 -360.54 2.69
tp @s[scores={cutSceneTimer=1016}] 5031.49 93.63953 15.21277 -360.54 2.69
tp @s[scores={cutSceneTimer=1017}] 5031.49 93.63836 15.23774 -360.54 2.69
tp @s[scores={cutSceneTimer=1018}] 5031.49 93.63718 15.26271 -360.54 2.69
tp @s[scores={cutSceneTimer=1019}] 5031.49 93.63601 15.28768 -360.54 2.69
tp @s[scores={cutSceneTimer=1020}] 5031.49 93.63483 15.31265 -360.54 2.69
tp @s[scores={cutSceneTimer=1021}] 5031.49 93.63366 15.33762 -360.54 2.69
tp @s[scores={cutSceneTimer=1022}] 5031.49 93.63248 15.36259 -360.54 2.69
tp @s[scores={cutSceneTimer=1023}] 5031.49 93.63131 15.38756 -360.54 2.69
tp @s[scores={cutSceneTimer=1024}] 5031.49 93.63013 15.41254 -360.54 2.69
tp @s[scores={cutSceneTimer=1025}] 5031.49 93.62896 15.43751 -360.54 2.69
tp @s[scores={cutSceneTimer=1026}] 5031.49 93.62778 15.46248 -360.54 2.69
tp @s[scores={cutSceneTimer=1027}] 5031.49 93.62661 15.48745 -360.54 2.69
tp @s[scores={cutSceneTimer=1028}] 5031.49 93.62543 15.51242 -360.54 2.69
tp @s[scores={cutSceneTimer=1029}] 5031.49 93.62426 15.53739 -360.54 2.69
tp @s[scores={cutSceneTimer=1030}] 5031.49 93.62309 15.56236 -360.54 2.69
tp @s[scores={cutSceneTimer=1031}] 5031.49 93.62191 15.58733 -360.54 2.69
tp @s[scores={cutSceneTimer=1032}] 5031.49 93.62074 15.6123 -360.54 2.69
tp @s[scores={cutSceneTimer=1033}] 5031.49 93.61956 15.63727 -360.54 2.69
tp @s[scores={cutSceneTimer=1034}] 5031.49 93.61839 15.66225 -360.54 2.69
tp @s[scores={cutSceneTimer=1035}] 5031.49 93.61721 15.68722 -360.54 2.69
tp @s[scores={cutSceneTimer=1036}] 5031.49 93.61604 15.71219 -360.54 2.69
tp @s[scores={cutSceneTimer=1037}] 5031.49 93.61486 15.73716 -360.54 2.69
tp @s[scores={cutSceneTimer=1038}] 5031.49 93.61369 15.76213 -360.54 2.69
tp @s[scores={cutSceneTimer=1039}] 5031.49 93.61251 15.7871 -360.54 2.69
tp @s[scores={cutSceneTimer=1040}] 5031.49 93.61134 15.81207 -360.54 2.69
tp @s[scores={cutSceneTimer=1041}] 5031.49 93.61016 15.83704 -360.54 2.69
tp @s[scores={cutSceneTimer=1042}] 5031.49 93.60899 15.86201 -360.54 2.69
tp @s[scores={cutSceneTimer=1043}] 5031.49 93.60781 15.88698 -360.54 2.69
tp @s[scores={cutSceneTimer=1044}] 5031.49 93.60664 15.91196 -360.54 2.69
tp @s[scores={cutSceneTimer=1045}] 5031.49 93.60546 15.93693 -360.54 2.69
tp @s[scores={cutSceneTimer=1046}] 5031.49 93.60429 15.9619 -360.54 2.69
tp @s[scores={cutSceneTimer=1047}] 5031.49 93.60311 15.98687 -360.54 2.69
tp @s[scores={cutSceneTimer=1048}] 5031.49 93.60194 16.01184 -360.54 2.69
tp @s[scores={cutSceneTimer=1049}] 5031.49 93.60076 16.03681 -360.54 2.69
tp @s[scores={cutSceneTimer=1050}] 5031.49 93.59959 16.06178 -360.54 2.69
tp @s[scores={cutSceneTimer=1051}] 5031.49 93.59841 16.08675 -360.54 2.69
tp @s[scores={cutSceneTimer=1052}] 5031.49 93.59724 16.11172 -360.54 2.69
tp @s[scores={cutSceneTimer=1053}] 5031.49 93.59606 16.1367 -360.54 2.69
tp @s[scores={cutSceneTimer=1054}] 5031.49 93.59489 16.16167 -360.54 2.69
tp @s[scores={cutSceneTimer=1055}] 5031.49 93.59371 16.18664 -360.54 2.69
tp @s[scores={cutSceneTimer=1056}] 5031.49 93.59254 16.21161 -360.54 2.69
tp @s[scores={cutSceneTimer=1057}] 5031.49 93.59136 16.23658 -360.54 2.69
tp @s[scores={cutSceneTimer=1058}] 5031.49 93.59019 16.26155 -360.54 2.69
tp @s[scores={cutSceneTimer=1059}] 5031.49 93.58901 16.28652 -360.54 2.69
tp @s[scores={cutSceneTimer=1060}] 5031.49 93.58784 16.31149 -360.54 2.69
tp @s[scores={cutSceneTimer=1061}] 5031.49 93.58666 16.33646 -360.54 2.69
tp @s[scores={cutSceneTimer=1062}] 5031.49 93.58549 16.36143 -360.54 2.69
tp @s[scores={cutSceneTimer=1063}] 5031.49 93.58431 16.38641 -360.54 2.69
tp @s[scores={cutSceneTimer=1064}] 5031.49 93.58314 16.41138 -360.54 2.69
tp @s[scores={cutSceneTimer=1065}] 5031.49 93.58196 16.43635 -360.54 2.69
tp @s[scores={cutSceneTimer=1066}] 5031.49 93.58079 16.46132 -360.54 2.69
tp @s[scores={cutSceneTimer=1067}] 5031.49 93.57961 16.48629 -360.54 2.69
tp @s[scores={cutSceneTimer=1068}] 5031.49 93.57844 16.51126 -360.54 2.69
tp @s[scores={cutSceneTimer=1069}] 5031.49 93.57726 16.53623 -360.54 2.69
tp @s[scores={cutSceneTimer=1070}] 5031.49 93.57609 16.5612 -360.54 2.69
tp @s[scores={cutSceneTimer=1071}] 5031.49 93.57491 16.58617 -360.54 2.69
tp @s[scores={cutSceneTimer=1072}] 5031.49 93.57374 16.61115 -360.54 2.69
tp @s[scores={cutSceneTimer=1073}] 5031.49 93.57256 16.63612 -360.54 2.69
tp @s[scores={cutSceneTimer=1074}] 5031.49 93.57139 16.66109 -360.54 2.69
tp @s[scores={cutSceneTimer=1075}] 5031.49 93.57021 16.68606 -360.54 2.69
tp @s[scores={cutSceneTimer=1076}] 5031.49 93.56904 16.71103 -360.54 2.69
tp @s[scores={cutSceneTimer=1077}] 5031.49 93.56786 16.736 -360.54 2.69
tp @s[scores={cutSceneTimer=1078}] 5031.49 93.56669 16.76097 -360.54 2.69
tp @s[scores={cutSceneTimer=1079}] 5031.49 93.56551 16.78594 -360.54 2.69
tp @s[scores={cutSceneTimer=1080}] 5031.49 93.56434 16.81091 -360.54 2.69
tp @s[scores={cutSceneTimer=1081}] 5031.49 93.56316 16.83588 -360.54 2.69
tp @s[scores={cutSceneTimer=1082}] 5031.49 93.56199 16.86086 -360.54 2.69
tp @s[scores={cutSceneTimer=1083}] 5031.49 93.56081 16.88583 -360.54 2.69
tp @s[scores={cutSceneTimer=1084}] 5031.49 93.55964 16.9108 -360.54 2.69
tp @s[scores={cutSceneTimer=1085}] 5031.49 93.55846 16.93577 -360.54 2.69
tp @s[scores={cutSceneTimer=1086}] 5031.49 93.55729 16.96074 -360.54 2.69
tp @s[scores={cutSceneTimer=1087}] 5031.49 93.55611 16.98571 -360.54 2.69
tp @s[scores={cutSceneTimer=1088}] 5031.49 93.55494 17.01068 -360.54 2.69
tp @s[scores={cutSceneTimer=1089}] 5031.49 93.55376 17.03565 -360.54 2.69
tp @s[scores={cutSceneTimer=1090}] 5031.49 93.55259 17.06062 -360.54 2.69
tp @s[scores={cutSceneTimer=1091}] 5031.49 93.55141 17.08559 -360.54 2.69
tp @s[scores={cutSceneTimer=1092}] 5031.49 93.55024 17.11057 -360.54 2.69
tp @s[scores={cutSceneTimer=1093}] 5031.49 93.54906 17.13554 -360.54 2.69
tp @s[scores={cutSceneTimer=1094}] 5031.49 93.54789 17.16051 -360.54 2.69
tp @s[scores={cutSceneTimer=1095}] 5031.49 93.54671 17.18548 -360.54 2.69
tp @s[scores={cutSceneTimer=1096}] 5031.49 93.54554 17.21045 -360.54 2.69
tp @s[scores={cutSceneTimer=1097}] 5031.49 93.54436 17.23542 -360.54 2.69
tp @s[scores={cutSceneTimer=1098}] 5031.49 93.54319 17.26039 -360.54 2.69
tp @s[scores={cutSceneTimer=1099}] 5031.49 93.54202 17.28536 -360.54 2.69
tp @s[scores={cutSceneTimer=1100}] 5031.49 93.54084 17.31033 -360.54 2.69
execute as @s[scores={cutSceneTimer=1080}] run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=1100}] run effect clear @s blindness
execute as @s[scores={cutSceneTimer=1100}] run effect clear @s night_vision
execute as @s[scores={cutSceneTimer=1100}] run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=1101}] 5096.928 94.10072 39.11569 124.78 4.1
tp @s[scores={cutSceneTimer=1102}] 5096.937 94.10143 39.12138 124.78 4.1
tp @s[scores={cutSceneTimer=1103}] 5096.945 94.10215 39.12708 124.78 4.1
tp @s[scores={cutSceneTimer=1104}] 5096.953 94.10287 39.13277 124.78 4.1
tp @s[scores={cutSceneTimer=1105}] 5096.961 94.10358 39.13846 124.78 4.1
tp @s[scores={cutSceneTimer=1106}] 5096.97 94.1043 39.14415 124.78 4.1
tp @s[scores={cutSceneTimer=1107}] 5096.978 94.10502 39.14984 124.78 4.1
tp @s[scores={cutSceneTimer=1108}] 5096.986 94.10574 39.15553 124.78 4.1
tp @s[scores={cutSceneTimer=1109}] 5096.995 94.10645 39.16122 124.78 4.1
tp @s[scores={cutSceneTimer=1110}] 5097.003 94.10717 39.16692 124.78 4.1
tp @s[scores={cutSceneTimer=1111}] 5097.011 94.10789 39.17261 124.78 4.1
tp @s[scores={cutSceneTimer=1112}] 5097.02 94.1086 39.1783 124.78 4.1
tp @s[scores={cutSceneTimer=1113}] 5097.028 94.10932 39.18399 124.78 4.1
tp @s[scores={cutSceneTimer=1114}] 5097.036 94.11004 39.18968 124.78 4.1
tp @s[scores={cutSceneTimer=1115}] 5097.044 94.11076 39.19537 124.78 4.1
tp @s[scores={cutSceneTimer=1116}] 5097.053 94.11147 39.20107 124.78 4.1
tp @s[scores={cutSceneTimer=1117}] 5097.061 94.11219 39.20676 124.78 4.1
tp @s[scores={cutSceneTimer=1118}] 5097.069 94.11291 39.21245 124.78 4.1
tp @s[scores={cutSceneTimer=1119}] 5097.078 94.11362 39.21814 124.78 4.1
tp @s[scores={cutSceneTimer=1120}] 5097.086 94.11434 39.22383 124.78 4.1
tp @s[scores={cutSceneTimer=1121}] 5097.094 94.11506 39.22952 124.78 4.1
tp @s[scores={cutSceneTimer=1122}] 5097.103 94.11578 39.23521 124.78 4.1
tp @s[scores={cutSceneTimer=1123}] 5097.111 94.11649 39.24091 124.78 4.1
tp @s[scores={cutSceneTimer=1124}] 5097.119 94.11721 39.2466 124.78 4.1
tp @s[scores={cutSceneTimer=1125}] 5097.127 94.11793 39.25229 124.78 4.1
tp @s[scores={cutSceneTimer=1126}] 5097.136 94.11864 39.25798 124.78 4.1
tp @s[scores={cutSceneTimer=1127}] 5097.144 94.11936 39.26367 124.78 4.1
tp @s[scores={cutSceneTimer=1128}] 5097.152 94.12008 39.26936 124.78 4.1
tp @s[scores={cutSceneTimer=1129}] 5097.161 94.1208 39.27505 124.78 4.1
tp @s[scores={cutSceneTimer=1130}] 5097.169 94.12151 39.28075 124.78 4.1
tp @s[scores={cutSceneTimer=1131}] 5097.177 94.12223 39.28644 124.78 4.1
tp @s[scores={cutSceneTimer=1132}] 5097.186 94.12295 39.29213 124.78 4.1
tp @s[scores={cutSceneTimer=1133}] 5097.194 94.12366 39.29782 124.78 4.1
tp @s[scores={cutSceneTimer=1134}] 5097.202 94.12438 39.30351 124.78 4.1
tp @s[scores={cutSceneTimer=1135}] 5097.21 94.1251 39.3092 124.78 4.1
tp @s[scores={cutSceneTimer=1136}] 5097.219 94.12582 39.3149 124.78 4.1
tp @s[scores={cutSceneTimer=1137}] 5097.227 94.12653 39.32059 124.78 4.1
tp @s[scores={cutSceneTimer=1138}] 5097.235 94.12725 39.32628 124.78 4.1
tp @s[scores={cutSceneTimer=1139}] 5097.244 94.12797 39.33197 124.78 4.1
tp @s[scores={cutSceneTimer=1140}] 5097.252 94.12868 39.33766 124.78 4.1
tp @s[scores={cutSceneTimer=1141}] 5097.26 94.1294 39.34335 124.78 4.1
tp @s[scores={cutSceneTimer=1142}] 5097.269 94.13012 39.34904 124.78 4.1
tp @s[scores={cutSceneTimer=1143}] 5097.277 94.13084 39.35474 124.78 4.1
tp @s[scores={cutSceneTimer=1144}] 5097.285 94.13155 39.36043 124.78 4.1
tp @s[scores={cutSceneTimer=1145}] 5097.293 94.13227 39.36612 124.78 4.1
tp @s[scores={cutSceneTimer=1146}] 5097.302 94.13299 39.37181 124.78 4.1
tp @s[scores={cutSceneTimer=1147}] 5097.31 94.13371 39.3775 124.78 4.1
tp @s[scores={cutSceneTimer=1148}] 5097.318 94.13442 39.38319 124.78 4.1
tp @s[scores={cutSceneTimer=1149}] 5097.327 94.13514 39.38889 124.78 4.1
tp @s[scores={cutSceneTimer=1150}] 5097.335 94.13586 39.39458 124.78 4.1
tp @s[scores={cutSceneTimer=1151}] 5097.343 94.13657 39.40027 124.78 4.1
tp @s[scores={cutSceneTimer=1152}] 5097.352 94.13729 39.40596 124.78 4.1
tp @s[scores={cutSceneTimer=1153}] 5097.36 94.13801 39.41165 124.78 4.1
tp @s[scores={cutSceneTimer=1154}] 5097.368 94.13873 39.41734 124.78 4.1
tp @s[scores={cutSceneTimer=1155}] 5097.376 94.13944 39.42303 124.78 4.1
tp @s[scores={cutSceneTimer=1156}] 5097.385 94.14016 39.42873 124.78 4.1
tp @s[scores={cutSceneTimer=1157}] 5097.393 94.14088 39.43442 124.78 4.1
tp @s[scores={cutSceneTimer=1158}] 5097.401 94.14159 39.44011 124.78 4.1
tp @s[scores={cutSceneTimer=1159}] 5097.41 94.14231 39.4458 124.78 4.1
tp @s[scores={cutSceneTimer=1160}] 5097.418 94.14303 39.45149 124.78 4.1
tp @s[scores={cutSceneTimer=1161}] 5097.426 94.14375 39.45718 124.78 4.1
tp @s[scores={cutSceneTimer=1162}] 5097.435 94.14446 39.46288 124.78 4.1
tp @s[scores={cutSceneTimer=1163}] 5097.443 94.14518 39.46857 124.78 4.1
tp @s[scores={cutSceneTimer=1164}] 5097.451 94.1459 39.47426 124.78 4.1
tp @s[scores={cutSceneTimer=1165}] 5097.459 94.14661 39.47995 124.78 4.1
tp @s[scores={cutSceneTimer=1166}] 5097.468 94.14733 39.48564 124.78 4.1
tp @s[scores={cutSceneTimer=1167}] 5097.476 94.14805 39.49133 124.78 4.1
tp @s[scores={cutSceneTimer=1168}] 5097.484 94.14877 39.49702 124.78 4.1
tp @s[scores={cutSceneTimer=1169}] 5097.493 94.14948 39.50272 124.78 4.1
tp @s[scores={cutSceneTimer=1170}] 5097.501 94.1502 39.50841 124.78 4.1
tp @s[scores={cutSceneTimer=1171}] 5097.509 94.15092 39.5141 124.78 4.1
tp @s[scores={cutSceneTimer=1172}] 5097.518 94.15163 39.51979 124.78 4.1
tp @s[scores={cutSceneTimer=1173}] 5097.526 94.15235 39.52548 124.78 4.1
tp @s[scores={cutSceneTimer=1174}] 5097.534 94.15307 39.53117 124.78 4.1
tp @s[scores={cutSceneTimer=1175}] 5097.542 94.15379 39.53687 124.78 4.1
tp @s[scores={cutSceneTimer=1176}] 5097.551 94.1545 39.54256 124.78 4.1
tp @s[scores={cutSceneTimer=1177}] 5097.559 94.15522 39.54825 124.78 4.1
tp @s[scores={cutSceneTimer=1178}] 5097.567 94.15594 39.55394 124.78 4.1
tp @s[scores={cutSceneTimer=1179}] 5097.576 94.15665 39.55963 124.78 4.1
tp @s[scores={cutSceneTimer=1180}] 5097.584 94.15737 39.56532 124.78 4.1
tp @s[scores={cutSceneTimer=1181}] 5097.592 94.15809 39.57101 124.78 4.1
tp @s[scores={cutSceneTimer=1182}] 5097.601 94.15881 39.57671 124.78 4.1
tp @s[scores={cutSceneTimer=1183}] 5097.609 94.15952 39.5824 124.78 4.1
tp @s[scores={cutSceneTimer=1184}] 5097.617 94.16024 39.58809 124.78 4.1
tp @s[scores={cutSceneTimer=1185}] 5097.625 94.16096 39.59378 124.78 4.1
tp @s[scores={cutSceneTimer=1186}] 5097.634 94.16167 39.59947 124.78 4.1
tp @s[scores={cutSceneTimer=1187}] 5097.642 94.16239 39.60516 124.78 4.1
tp @s[scores={cutSceneTimer=1188}] 5097.65 94.16311 39.61086 124.78 4.1
tp @s[scores={cutSceneTimer=1189}] 5097.659 94.16383 39.61655 124.78 4.1
tp @s[scores={cutSceneTimer=1190}] 5097.667 94.16454 39.62224 124.78 4.1
tp @s[scores={cutSceneTimer=1191}] 5097.675 94.16526 39.62793 124.78 4.1
tp @s[scores={cutSceneTimer=1192}] 5097.684 94.16598 39.63362 124.78 4.1
tp @s[scores={cutSceneTimer=1193}] 5097.692 94.16669 39.63931 124.78 4.1
tp @s[scores={cutSceneTimer=1194}] 5097.7 94.16741 39.645 124.78 4.1
tp @s[scores={cutSceneTimer=1195}] 5097.708 94.16813 39.6507 124.78 4.1
tp @s[scores={cutSceneTimer=1196}] 5097.717 94.16885 39.65639 124.78 4.1
tp @s[scores={cutSceneTimer=1197}] 5097.725 94.16956 39.66208 124.78 4.1
tp @s[scores={cutSceneTimer=1198}] 5097.733 94.17028 39.66777 124.78 4.1
tp @s[scores={cutSceneTimer=1199}] 5097.742 94.171 39.67346 124.78 4.1
tp @s[scores={cutSceneTimer=1200}] 5097.75 94.17171 39.67915 124.78 4.1
tp @s[scores={cutSceneTimer=1201}] 5097.758 94.17243 39.68484 124.78 4.1
tp @s[scores={cutSceneTimer=1202}] 5097.767 94.17315 39.69054 124.78 4.1
tp @s[scores={cutSceneTimer=1203}] 5097.775 94.17387 39.69623 124.78 4.1
tp @s[scores={cutSceneTimer=1204}] 5097.783 94.17458 39.70192 124.78 4.1
tp @s[scores={cutSceneTimer=1205}] 5097.792 94.1753 39.70761 124.78 4.1
tp @s[scores={cutSceneTimer=1206}] 5097.8 94.17602 39.7133 124.78 4.1
tp @s[scores={cutSceneTimer=1207}] 5097.808 94.17673 39.71899 124.78 4.1
tp @s[scores={cutSceneTimer=1208}] 5097.816 94.17745 39.72469 124.78 4.1
tp @s[scores={cutSceneTimer=1209}] 5097.825 94.17817 39.73038 124.78 4.1
tp @s[scores={cutSceneTimer=1210}] 5097.833 94.17889 39.73607 124.78 4.1
tp @s[scores={cutSceneTimer=1211}] 5097.841 94.1796 39.74176 124.78 4.1
tp @s[scores={cutSceneTimer=1212}] 5097.85 94.18032 39.74745 124.78 4.1
tp @s[scores={cutSceneTimer=1213}] 5097.858 94.18104 39.75314 124.78 4.1
tp @s[scores={cutSceneTimer=1214}] 5097.866 94.18176 39.75883 124.78 4.1
tp @s[scores={cutSceneTimer=1215}] 5097.875 94.18247 39.76453 124.78 4.1
tp @s[scores={cutSceneTimer=1216}] 5097.883 94.18319 39.77022 124.78 4.1
tp @s[scores={cutSceneTimer=1217}] 5097.891 94.18391 39.77591 124.78 4.1
tp @s[scores={cutSceneTimer=1218}] 5097.899 94.18462 39.7816 124.78 4.1
tp @s[scores={cutSceneTimer=1219}] 5097.908 94.18534 39.78729 124.78 4.1
tp @s[scores={cutSceneTimer=1220}] 5097.916 94.18606 39.79298 124.78 4.1
tp @s[scores={cutSceneTimer=1221}] 5097.924 94.18678 39.79868 124.78 4.1
tp @s[scores={cutSceneTimer=1222}] 5097.933 94.18749 39.80437 124.78 4.1


# ¤Flitwick:¤ Only this maze is completely dark. You will need to use your wand to find your way.
execute as @s[scores={cutSceneTimer=941},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 20 1 0
execute as @s[scores={cutSceneTimer=941..1100}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"                 "}]
execute as @s[scores={cutSceneTimer=941},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=948},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=952},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=959},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=963},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=970},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=974},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=981},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_neutral



# ¤Flitwick:¤ Best of luck!
execute as @s[scores={cutSceneTimer=1101},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 20 1 0
execute as @s[scores={cutSceneTimer=1101..1180}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"   "}]
execute as @s[scores={cutSceneTimer=1101},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=1108},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=1112},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=1119},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=1123},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=1130},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=1134},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=1141},tag=cutsceneLeader] as @e[tag=flitwickClassroom2,limit=1] run function hp:npc/update_npc_head_neutral


execute as @s[scores={cutSceneTimer=981}] run function hp:music/music/swish_and_flick
execute as @s[scores={cutSceneTimer=981}] run scoreboard players set @s queuedMusic 0


# Clear subtitles instantly rather than a slow fade I can't control
execute as @s[scores={cutSceneTimer=1181..}] run title @s actionbar ""

execute as @s[scores={cutSceneTimer=1201}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=1222}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=1222}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=1222}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=1222}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=1223}] run tp @s[scores={playerID=1}] 5098.57 94.00 37.39 534.33 -0.13
execute as @s[scores={cutSceneTimer=1223}] run tp @s[scores={playerID=2}] 5096.20 94.00 37.44 549.15 0.63
execute as @s[scores={cutSceneTimer=1223}] run tp @s[scores={playerID=3}] 5098.92 94.00 39.89 531.07 2.64
execute as @s[scores={cutSceneTimer=1223}] run tp @s[scores={playerID=4}] 5095.91 94.00 39.80 551.10 2.47
execute as @s[scores={cutSceneTimer=1243}] run tag @s add dontExitCutSceneSilent
execute as @s[scores={cutSceneTimer=1243}] run scoreboard players set playerInLumosSpellChallenge global 1
execute as @s[scores={cutSceneTimer=1243}] run function hp:quests/timer/start_pensive_timer
execute as @s[scores={cutSceneTimer=1243}] run function hp:cutscenes/exit_cutscene



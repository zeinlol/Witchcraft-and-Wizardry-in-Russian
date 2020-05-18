execute as @s[scores={trackQuestState=3}] run scoreboard players set @s questState 4
execute as @s[scores={trackQuestState=3}] run function hp:quests/set_quest

# Reset spell challenge
execute as @s[scores={cutSceneTimer=300},tag=cutsceneLeader] if score playerInPatronusSpellChallenge global matches 0 run function hp:quests/quests/expecto_patronum/reset_expecto_patronum_spell_challenge

execute as @s[scores={cutSceneTimer=-19}] run function hp:music/music/silence
execute as @s[scores={cutSceneTimer=-19}] run tag @s remove musicController
execute as @s[scores={cutSceneTimer=-19}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] as @s run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=39}] as @s run function hp:cutscenes/fade_out

execute as @s[scores={cutSceneTimer=..20}] run title @s actionbar ["",{"text":" "}]

execute as @s[scores={cutSceneTimer=22},tag=gameLeader] run time set day
execute as @s[scores={cutSceneTimer=22},tag=gameLeader] run gamerule doDaylightCycle false
tp @s[scores={cutSceneTimer=0..39}] 8012.367 142.0148 -10.31244 496.3782 24.81918
execute as @s[scores={cutSceneTimer=24}] run tp @s 8012.236 141.9375 -10.46646 496.7393 24.83314
execute as @s[scores={cutSceneTimer=24},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.031 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=24},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=40}] run tp @s 8012.218 141.9266 -10.48815 496.7893 24.83502
execute as @s[scores={cutSceneTimer=41}] run tp @s 8012.199 141.9156 -10.50977 496.8389 24.83689
execute as @s[scores={cutSceneTimer=42}] run tp @s 8012.181 141.9046 -10.5314 496.8884 24.83874
execute as @s[scores={cutSceneTimer=43}] run tp @s 8012.162 141.8937 -10.55277 496.937 24.84055
execute as @s[scores={cutSceneTimer=44}] run tp @s 8012.143 141.8825 -10.57448 496.9861 24.84237
execute as @s[scores={cutSceneTimer=45}] run tp @s 8012.125 141.8715 -10.596 497.0346 24.84415
execute as @s[scores={cutSceneTimer=46}] run tp @s 8012.106 141.8606 -10.61717 497.0822 24.84591
execute as @s[scores={cutSceneTimer=47}] run tp @s 8012.087 141.8495 -10.63884 497.1306 24.84764
execute as @s[scores={cutSceneTimer=48}] run tp @s 8012.075 141.8421 -10.65315 497.1624 24.84881
execute as @s[scores={cutSceneTimer=49}] run tp @s 8012.056 141.8311 -10.6743 497.2093 24.85049
execute as @s[scores={cutSceneTimer=50}] run tp @s 8012.038 141.8202 -10.6954 497.2559 24.85216
execute as @s[scores={cutSceneTimer=51}] run tp @s 8012.02 141.8092 -10.71641 497.302 24.8538
execute as @s[scores={cutSceneTimer=52}] run tp @s 8012.001 141.7982 -10.73752 497.3482 24.85543
execute as @s[scores={cutSceneTimer=53}] run tp @s 8011.982 141.7874 -10.7583 497.3934 24.85702
execute as @s[scores={cutSceneTimer=54}] run tp @s 8011.964 141.7764 -10.77913 497.4385 24.85859
execute as @s[scores={cutSceneTimer=55}] run tp @s 8011.946 141.7655 -10.79992 497.4833 24.86014
execute as @s[scores={cutSceneTimer=56}] run tp @s 8011.927 141.7545 -10.82077 497.528 24.86168
execute as @s[scores={cutSceneTimer=57}] run tp @s 8011.909 141.7437 -10.84131 497.5718 24.86318
execute as @s[scores={cutSceneTimer=58}] run tp @s 8011.891 141.7329 -10.86179 497.6153 24.86465
execute as @s[scores={cutSceneTimer=59}] run tp @s 8011.872 141.7219 -10.88247 497.659 24.86612
execute as @s[scores={cutSceneTimer=60}] run tp @s 8011.854 141.7111 -10.90283 497.7018 24.86755
execute as @s[scores={cutSceneTimer=61}] run tp @s 8011.835 141.7002 -10.92325 497.7445 24.86897
execute as @s[scores={cutSceneTimer=62}] run tp @s 8011.817 141.6893 -10.94363 497.7869 24.87037
execute as @s[scores={cutSceneTimer=63}] run tp @s 8011.799 141.6783 -10.96408 497.8293 24.87174
execute as @s[scores={cutSceneTimer=64}] run tp @s 8011.781 141.6674 -10.98447 497.8712 24.8731
execute as @s[scores={cutSceneTimer=65}] run tp @s 8011.762 141.6566 -11.00455 497.9124 24.87442
execute as @s[scores={cutSceneTimer=66}] run tp @s 8011.744 141.6457 -11.02469 497.9534 24.87573
execute as @s[scores={cutSceneTimer=67}] run tp @s 8011.726 141.6347 -11.04504 497.9947 24.87704
execute as @s[scores={cutSceneTimer=68}] run tp @s 8011.708 141.6238 -11.06507 498.0351 24.87831
execute as @s[scores={cutSceneTimer=69}] run tp @s 8011.689 141.6129 -11.08517 498.0754 24.87955
execute as @s[scores={cutSceneTimer=70}] run tp @s 8011.671 141.6019 -11.10535 498.1156 24.88079
execute as @s[scores={cutSceneTimer=71}] run tp @s 8011.652 141.5909 -11.12547 498.1555 24.88201
execute as @s[scores={cutSceneTimer=72}] run tp @s 8011.634 141.5801 -11.14515 498.1943 24.88318
execute as @s[scores={cutSceneTimer=73}] run tp @s 8011.616 141.5694 -11.16478 498.2328 24.88432
execute as @s[scores={cutSceneTimer=74}] run tp @s 8011.598 141.5586 -11.18435 498.271 24.88545
execute as @s[scores={cutSceneTimer=75}] run tp @s 8011.58 141.5478 -11.20388 498.3089 24.88656
execute as @s[scores={cutSceneTimer=76}] run tp @s 8011.562 141.5369 -11.22358 498.3469 24.88766
execute as @s[scores={cutSceneTimer=77}] run tp @s 8011.543 141.5259 -11.24337 498.3848 24.88876
execute as @s[scores={cutSceneTimer=78}] run tp @s 8011.525 141.515 -11.26311 498.4224 24.88981
execute as @s[scores={cutSceneTimer=79}] run tp @s 8011.507 141.5041 -11.28265 498.4594 24.89086
execute as @s[scores={cutSceneTimer=80}] run tp @s 8011.489 141.4931 -11.3024 498.4966 24.89189
execute as @s[scores={cutSceneTimer=81}] run tp @s 8011.471 141.4822 -11.32172 498.5328 24.89287
execute as @s[scores={cutSceneTimer=82}] run tp @s 8011.453 141.4714 -11.34098 498.5686 24.89385
execute as @s[scores={cutSceneTimer=83}] run tp @s 8011.435 141.4606 -11.36018 498.6041 24.8948
execute as @s[scores={cutSceneTimer=84}] run tp @s 8011.417 141.4498 -11.37946 498.6396 24.89574
execute as @s[scores={cutSceneTimer=85}] run tp @s 8011.399 141.439 -11.39844 498.6742 24.89664
execute as @s[scores={cutSceneTimer=86}] run tp @s 8011.381 141.4283 -11.41737 498.7086 24.89753
execute as @s[scores={cutSceneTimer=87}] run tp @s 8011.369 141.421 -11.43019 498.7318 24.89812
execute as @s[scores={cutSceneTimer=88}] run tp @s 8011.351 141.41 -11.44953 498.7664 24.89898
execute as @s[scores={cutSceneTimer=89}] run tp @s 8011.333 141.3991 -11.46869 498.8007 24.89984
execute as @s[scores={cutSceneTimer=90}] run tp @s 8011.314 141.3884 -11.48742 498.8339 24.90065
execute as @s[scores={cutSceneTimer=91}] run tp @s 8011.297 141.3775 -11.50635 498.8672 24.90145
execute as @s[scores={cutSceneTimer=92}] run tp @s 8011.279 141.3667 -11.52509 498.9 24.90223
execute as @s[scores={cutSceneTimer=93}] run tp @s 8011.261 141.356 -11.54367 498.9323 24.90298
execute as @s[scores={cutSceneTimer=94}] run tp @s 8011.244 141.3453 -11.56221 498.9643 24.90372
execute as @s[scores={cutSceneTimer=95}] run tp @s 8011.226 141.3346 -11.58081 498.9962 24.90444
execute as @s[scores={cutSceneTimer=96}] run tp @s 8011.208 141.3239 -11.59925 499.0276 24.90514
execute as @s[scores={cutSceneTimer=97}] run tp @s 8011.19 141.313 -11.61785 499.0591 24.90581
execute as @s[scores={cutSceneTimer=98}] run tp @s 8011.172 141.3023 -11.63631 499.0901 24.90648
execute as @s[scores={cutSceneTimer=99}] run tp @s 8011.155 141.2916 -11.65459 499.1206 24.90712
execute as @s[scores={cutSceneTimer=100}] run tp @s 8011.137 141.2808 -11.67306 499.1512 24.90776
execute as @s[scores={cutSceneTimer=101}] run tp @s 8011.119 141.2701 -11.69125 499.1811 24.90836
execute as @s[scores={cutSceneTimer=102}] run tp @s 8011.102 141.2592 -11.70973 499.2113 24.90895
execute as @s[scores={cutSceneTimer=103}] run tp @s 8011.084 141.2486 -11.72782 499.2407 24.90952
execute as @s[scores={cutSceneTimer=104}] run tp @s 8011.066 141.2377 -11.74611 499.2701 24.91008
execute as @s[scores={cutSceneTimer=105}] run tp @s 8011.048 141.2271 -11.7641 499.2988 24.9106
execute as @s[scores={cutSceneTimer=106}] run tp @s 8011.031 141.2161 -11.78251 499.328 24.91113
execute as @s[scores={cutSceneTimer=107}] run tp @s 8011.013 141.2053 -11.80076 499.3568 24.91163
execute as @s[scores={cutSceneTimer=108}] run tp @s 8010.995 141.1945 -11.81873 499.3848 24.9121
execute as @s[scores={cutSceneTimer=109}] run tp @s 8010.978 141.1837 -11.83677 499.4127 24.91256
execute as @s[scores={cutSceneTimer=110}] run tp @s 8010.966 141.1766 -11.84873 499.4312 24.91286
execute as @s[scores={cutSceneTimer=111}] run tp @s 8010.945 141.1637 -11.8701 499.4638 24.91337
execute as @s[scores={cutSceneTimer=112}] run tp @s 8010.927 141.1528 -11.88812 499.4911 24.91379
execute as @s[scores={cutSceneTimer=113}] run tp @s 8010.91 141.1422 -11.90575 499.5176 24.91417
execute as @s[scores={cutSceneTimer=114}] run tp @s 8010.892 141.1316 -11.92333 499.5438 24.91454
execute as @s[scores={cutSceneTimer=115}] run tp @s 8010.875 141.1207 -11.9412 499.5703 24.9149
execute as @s[scores={cutSceneTimer=116}] run tp @s 8010.857 141.1101 -11.95869 499.5959 24.91523
execute as @s[scores={cutSceneTimer=117}] run tp @s 8010.84 141.0994 -11.97624 499.6214 24.91555
execute as @s[scores={cutSceneTimer=118}] run tp @s 8010.823 141.0887 -11.99364 499.6465 24.91585
execute as @s[scores={cutSceneTimer=119}] run tp @s 8010.805 141.0781 -12.011 499.6714 24.91614
execute as @s[scores={cutSceneTimer=120}] run tp @s 8010.788 141.0674 -12.02838 499.696 24.9164
execute as @s[scores={cutSceneTimer=121}] run tp @s 8010.771 141.0568 -12.04565 499.7203 24.91665
execute as @s[scores={cutSceneTimer=122}] run tp @s 8010.753 141.046 -12.06321 499.7448 24.91689
execute as @s[scores={cutSceneTimer=123}] run tp @s 8010.736 141.0351 -12.08073 499.769 24.91711
execute as @s[scores={cutSceneTimer=124}] run tp @s 8010.719 141.0245 -12.09787 499.7924 24.91731
execute as @s[scores={cutSceneTimer=125}] run tp @s 8010.701 141.0137 -12.11529 499.8161 24.91749
execute as @s[scores={cutSceneTimer=126}] run tp @s 8010.684 141.0029 -12.13256 499.8393 24.91766
execute as @s[scores={cutSceneTimer=127}] run tp @s 8010.667 140.9922 -12.14967 499.8621 24.91781
execute as @s[scores={cutSceneTimer=128}] run tp @s 8010.649 140.9816 -12.16676 499.8846 24.91794
execute as @s[scores={cutSceneTimer=129}] run tp @s 8010.632 140.9709 -12.18378 499.9069 24.91805
execute as @s[scores={cutSceneTimer=130}] run tp @s 8010.615 140.9603 -12.20066 499.9288 24.91815
execute as @s[scores={cutSceneTimer=131}] run tp @s 8010.598 140.9495 -12.21772 499.9507 24.91824
execute as @s[scores={cutSceneTimer=132}] run tp @s 8010.581 140.9389 -12.23451 499.972 24.91831
execute as @s[scores={cutSceneTimer=133}] run tp @s 8010.563 140.9282 -12.25148 499.9933 24.91837
execute as @s[scores={cutSceneTimer=134}] run tp @s 8010.546 140.9174 -12.26852 500.0146 24.9184
execute as @s[scores={cutSceneTimer=135}] run tp @s 8010.529 140.9068 -12.2852 500.0352 24.91842
execute as @s[scores={cutSceneTimer=136}] run tp @s 8010.512 140.8962 -12.30183 500.0555 24.91842
execute as @s[scores={cutSceneTimer=137}] run tp @s 8010.495 140.8854 -12.31874 500.0759 24.91841
execute as @s[scores={cutSceneTimer=138}] run tp @s 8010.478 140.8746 -12.33561 500.0961 24.91838
execute as @s[scores={cutSceneTimer=139}] run tp @s 8010.46 140.8638 -12.35234 500.1158 24.91835
execute as @s[scores={cutSceneTimer=140}] run tp @s 8010.449 140.8566 -12.36365 500.1291 24.9183
execute as @s[scores={cutSceneTimer=141}] run tp @s 8010.432 140.8458 -12.38031 500.1485 24.91823
execute as @s[scores={cutSceneTimer=142}] run tp @s 8010.415 140.8352 -12.39672 500.1674 24.91815
execute as @s[scores={cutSceneTimer=143}] run tp @s 8010.398 140.8246 -12.41319 500.1861 24.91804
execute as @s[scores={cutSceneTimer=144}] run tp @s 8010.381 140.8138 -12.42984 500.2048 24.91792
execute as @s[scores={cutSceneTimer=145}] run tp @s 8010.364 140.8031 -12.44634 500.2231 24.9178
execute as @s[scores={cutSceneTimer=146}] run tp @s 8010.347 140.7925 -12.46259 500.241 24.91765
execute as @s[scores={cutSceneTimer=147}] run tp @s 8010.331 140.7819 -12.4788 500.2586 24.9175
execute as @s[scores={cutSceneTimer=148}] run tp @s 8010.313 140.771 -12.49539 500.2764 24.91731
execute as @s[scores={cutSceneTimer=149}] run tp @s 8010.297 140.7605 -12.51153 500.2936 24.91714
execute as @s[scores={cutSceneTimer=150}] run tp @s 8010.28 140.7497 -12.52783 500.3107 24.91693
execute as @s[scores={cutSceneTimer=151}] run tp @s 8010.263 140.7392 -12.5439 500.3273 24.9167
execute as @s[scores={cutSceneTimer=152}] run tp @s 8010.247 140.7285 -12.56013 500.3439 24.91648
execute as @s[scores={cutSceneTimer=153}] run tp @s 8010.229 140.7177 -12.57633 500.3603 24.91622
execute as @s[scores={cutSceneTimer=154}] run tp @s 8010.213 140.707 -12.59259 500.3766 24.91595
execute as @s[scores={cutSceneTimer=155}] run tp @s 8010.196 140.6962 -12.60882 500.3925 24.91567
execute as @s[scores={cutSceneTimer=156}] run tp @s 8010.179 140.6854 -12.62502 500.4083 24.91538
execute as @s[scores={cutSceneTimer=157}] run tp @s 8010.163 140.6748 -12.64086 500.4235 24.91508
execute as @s[scores={cutSceneTimer=158}] run tp @s 8010.146 140.6642 -12.65683 500.4387 24.91476
execute as @s[scores={cutSceneTimer=159}] run tp @s 8010.129 140.6535 -12.6727 500.4535 24.91442
execute as @s[scores={cutSceneTimer=160}] run tp @s 8010.112 140.6428 -12.68865 500.4682 24.91408
execute as @s[scores={cutSceneTimer=161}] run tp @s 8010.096 140.6322 -12.70435 500.4825 24.91371
execute as @s[scores={cutSceneTimer=162}] run tp @s 8010.08 140.6217 -12.72001 500.4965 24.91335
execute as @s[scores={cutSceneTimer=163}] run tp @s 8010.063 140.6109 -12.73594 500.5106 24.91296
execute as @s[scores={cutSceneTimer=164}] run tp @s 8010.046 140.6002 -12.75175 500.5244 24.91255
execute as @s[scores={cutSceneTimer=165}] run tp @s 8010.03 140.5896 -12.76731 500.5378 24.91213
execute as @s[scores={cutSceneTimer=166}] run tp @s 8010.014 140.579 -12.78294 500.551 24.91171
execute as @s[scores={cutSceneTimer=167}] run tp @s 8009.997 140.5683 -12.79874 500.5642 24.91126
execute as @s[scores={cutSceneTimer=168}] run tp @s 8009.98 140.5577 -12.8142 500.5769 24.91082
execute as @s[scores={cutSceneTimer=169}] run tp @s 8009.964 140.5471 -12.82974 500.5895 24.91034
execute as @s[scores={cutSceneTimer=170}] run tp @s 8009.948 140.5364 -12.84533 500.6019 24.90986
execute as @s[scores={cutSceneTimer=171}] run tp @s 8009.931 140.5256 -12.861 500.6141 24.90935
execute as @s[scores={cutSceneTimer=172}] run tp @s 8009.915 140.515 -12.87634 500.626 24.90886
execute as @s[scores={cutSceneTimer=173}] run tp @s 8009.899 140.5045 -12.89164 500.6376 24.90834
execute as @s[scores={cutSceneTimer=174}] run tp @s 8009.882 140.4937 -12.9072 500.6492 24.9078
execute as @s[scores={cutSceneTimer=175}] run tp @s 8009.872 140.4865 -12.91757 500.6568 24.90744
execute as @s[scores={cutSceneTimer=176}] run tp @s 8009.855 140.4759 -12.93288 500.6679 24.90689
execute as @s[scores={cutSceneTimer=177}] run tp @s 8009.839 140.4652 -12.94827 500.6789 24.9063
execute as @s[scores={cutSceneTimer=178}] run tp @s 8009.823 140.4547 -12.96342 500.6895 24.90574
execute as @s[scores={cutSceneTimer=179}] run tp @s 8009.806 140.4439 -12.97884 500.7001 24.90515
execute as @s[scores={cutSceneTimer=180}] run tp @s 8009.79 140.4331 -12.99423 500.7104 24.90453
execute as @s[scores={cutSceneTimer=181}] run tp @s 8009.774 140.4224 -13.00959 500.7206 24.9039
execute as @s[scores={cutSceneTimer=182}] run tp @s 8009.757 140.4116 -13.02492 500.7306 24.90328
execute as @s[scores={cutSceneTimer=183}] run tp @s 8009.741 140.4008 -13.04022 500.7403 24.90263
execute as @s[scores={cutSceneTimer=184}] run tp @s 8009.725 140.3902 -13.05528 500.7497 24.90198
execute as @s[scores={cutSceneTimer=185}] run tp @s 8009.709 140.3797 -13.07023 500.7588 24.90132
execute as @s[scores={cutSceneTimer=186}] run tp @s 8009.693 140.369 -13.08532 500.7679 24.90064
execute as @s[scores={cutSceneTimer=187}] run tp @s 8009.677 140.3584 -13.10021 500.7766 24.89997
execute as @s[scores={cutSceneTimer=188}] run tp @s 8009.661 140.3478 -13.11516 500.7852 24.89927
execute as @s[scores={cutSceneTimer=189}] run tp @s 8009.645 140.3371 -13.13019 500.7936 24.89855
execute as @s[scores={cutSceneTimer=190}] run tp @s 8009.629 140.3264 -13.14518 500.8018 24.89782
execute as @s[scores={cutSceneTimer=191}] run tp @s 8009.613 140.3156 -13.16024 500.8099 24.89709
execute as @s[scores={cutSceneTimer=192}] run tp @s 8009.597 140.3049 -13.17518 500.8177 24.89634
execute as @s[scores={cutSceneTimer=193}] run tp @s 8009.581 140.2943 -13.19009 500.8254 24.89558
execute as @s[scores={cutSceneTimer=194}] run tp @s 8009.565 140.2836 -13.20488 500.8328 24.89482
execute as @s[scores={cutSceneTimer=195}] run tp @s 8009.55 140.2731 -13.21954 500.8399 24.89405
execute as @s[scores={cutSceneTimer=196}] run tp @s 8009.534 140.2623 -13.23446 500.847 24.89326
execute as @s[scores={cutSceneTimer=197}] run tp @s 8009.518 140.2517 -13.24907 500.8538 24.89246
execute as @s[scores={cutSceneTimer=198}] run tp @s 8009.502 140.2411 -13.26373 500.8604 24.89165
execute as @s[scores={cutSceneTimer=199}] run tp @s 8009.486 140.2304 -13.27858 500.8669 24.89083
execute as @s[scores={cutSceneTimer=200}] run tp @s 8009.471 140.2197 -13.29321 500.8731 24.89
execute as @s[scores={cutSceneTimer=201}] run tp @s 8009.455 140.209 -13.3079 500.8792 24.88916
execute as @s[scores={cutSceneTimer=202}] run tp @s 8009.439 140.1982 -13.32275 500.8852 24.88829
execute as @s[scores={cutSceneTimer=203}] run tp @s 8009.423 140.1874 -13.33749 500.8909 24.88742
execute as @s[scores={cutSceneTimer=204}] run tp @s 8009.413 140.1803 -13.3473 500.8947 24.88683
execute as @s[scores={cutSceneTimer=205}] run tp @s 8009.397 140.1695 -13.362 500.9 24.88594
execute as @s[scores={cutSceneTimer=206}] run tp @s 8009.382 140.1589 -13.37639 500.9052 24.88507
execute as @s[scores={cutSceneTimer=207}] run tp @s 8009.366 140.1482 -13.39103 500.9102 24.88416
execute as @s[scores={cutSceneTimer=208}] run tp @s 8009.351 140.1374 -13.40565 500.9151 24.88324
execute as @s[scores={cutSceneTimer=209}] run tp @s 8009.335 140.1266 -13.42025 500.9198 24.88232
execute as @s[scores={cutSceneTimer=210}] run tp @s 8009.319 140.116 -13.43463 500.9242 24.8814
execute as @s[scores={cutSceneTimer=211}] run tp @s 8009.304 140.1053 -13.44909 500.9285 24.88046
execute as @s[scores={cutSceneTimer=212}] run tp @s 8009.289 140.0947 -13.46334 500.9326 24.87951
execute as @s[scores={cutSceneTimer=213}] run tp @s 8009.273 140.0839 -13.47783 500.9365 24.87854
execute as @s[scores={cutSceneTimer=214}] run tp @s 8009.258 140.0734 -13.49203 500.9402 24.87759
execute as @s[scores={cutSceneTimer=215}] run tp @s 8009.242 140.0626 -13.50648 500.9438 24.8766
execute as @s[scores={cutSceneTimer=216}] run tp @s 8009.227 140.0518 -13.52092 500.9473 24.8756
execute as @s[scores={cutSceneTimer=217}] run tp @s 8009.211 140.0412 -13.53505 500.9505 24.87463
execute as @s[scores={cutSceneTimer=218}] run tp @s 8009.196 140.0305 -13.54935 500.9536 24.87362
execute as @s[scores={cutSceneTimer=219}] run tp @s 8009.181 140.0197 -13.56371 500.9565 24.87259
execute as @s[scores={cutSceneTimer=220}] run tp @s 8009.166 140.0091 -13.57787 500.9592 24.87158
execute as @s[scores={cutSceneTimer=221}] run tp @s 8009.15 139.9983 -13.59219 500.9617 24.87054
execute as @s[scores={cutSceneTimer=222}] run tp @s 8009.135 139.9876 -13.60641 500.9641 24.8695
execute as @s[scores={cutSceneTimer=223}] run tp @s 8009.12 139.977 -13.6205 500.9663 24.86845
execute as @s[scores={cutSceneTimer=224}] run tp @s 8009.105 139.9662 -13.63476 500.9684 24.86738
execute as @s[scores={cutSceneTimer=225}] run tp @s 8009.09 139.9554 -13.649 500.9703 24.86631
execute as @s[scores={cutSceneTimer=226}] run tp @s 8009.075 139.9447 -13.66314 500.972 24.86524
execute as @s[scores={cutSceneTimer=227}] run tp @s 8009.06 139.9339 -13.67734 500.9736 24.86414
execute as @s[scores={cutSceneTimer=228}] run tp @s 8009.044 139.9232 -13.69133 500.975 24.86306
execute as @s[scores={cutSceneTimer=229}] run tp @s 8009.029 139.9126 -13.70531 500.9763 24.86197
execute as @s[scores={cutSceneTimer=230}] run tp @s 8009.015 139.902 -13.71918 500.9773 24.86087
execute as @s[scores={cutSceneTimer=231}] run tp @s 8009.005 139.8949 -13.72849 500.9779 24.86013
execute as @s[scores={cutSceneTimer=232}] run tp @s 8008.99 139.8841 -13.74251 500.9788 24.85901
execute as @s[scores={cutSceneTimer=233}] run tp @s 8008.975 139.8735 -13.75642 500.9794 24.85789
execute as @s[scores={cutSceneTimer=234}] run tp @s 8008.96 139.8629 -13.77023 500.9799 24.85676
execute as @s[scores={cutSceneTimer=235}] run tp @s 8008.945 139.8521 -13.78429 500.9803 24.85561
execute as @s[scores={cutSceneTimer=236}] run tp @s 8008.93 139.8413 -13.79832 500.9805 24.85446
execute as @s[scores={cutSceneTimer=237}] run tp @s 8008.916 139.8307 -13.81207 500.9806 24.85331
execute as @s[scores={cutSceneTimer=238}] run tp @s 8008.901 139.8201 -13.8258 500.9805 24.85216
execute as @s[scores={cutSceneTimer=239}] run tp @s 8008.886 139.8094 -13.83959 500.9802 24.85099
execute as @s[scores={cutSceneTimer=240}] run tp @s 8008.872 139.7987 -13.85338 500.9799 24.84982
execute as @s[scores={cutSceneTimer=241}] run tp @s 8008.857 139.7881 -13.86715 500.9793 24.84864
execute as @s[scores={cutSceneTimer=242}] run tp @s 8008.843 139.7775 -13.88081 500.9787 24.84746
execute as @s[scores={cutSceneTimer=243}] run tp @s 8008.828 139.7668 -13.89455 500.9778 24.84627
execute as @s[scores={cutSceneTimer=244}] run tp @s 8008.813 139.7561 -13.90827 500.9769 24.84507
execute as @s[scores={cutSceneTimer=245}] run tp @s 8008.799 139.7452 -13.92224 500.9758 24.84383
execute as @s[scores={cutSceneTimer=246}] run tp @s 8008.784 139.7346 -13.93585 500.9745 24.84262
execute as @s[scores={cutSceneTimer=247}] run tp @s 8008.77 139.7239 -13.94953 500.9731 24.84139
execute as @s[scores={cutSceneTimer=248}] run tp @s 8008.755 139.7133 -13.9631 500.9717 24.84018
execute as @s[scores={cutSceneTimer=249}] run tp @s 8008.741 139.7025 -13.97683 500.97 24.83894
execute as @s[scores={cutSceneTimer=250}] run tp @s 8008.727 139.6918 -13.99047 500.9682 24.8377
execute as @s[scores={cutSceneTimer=251}] run tp @s 8008.712 139.6811 -14.00417 500.9663 24.83645
execute as @s[scores={cutSceneTimer=252}] run tp @s 8008.698 139.6704 -14.01777 500.9642 24.8352
execute as @s[scores={cutSceneTimer=253}] run tp @s 8008.684 139.6596 -14.03146 500.962 24.83393
execute as @s[scores={cutSceneTimer=254}] run tp @s 8008.669 139.6488 -14.04513 500.9597 24.83265
execute as @s[scores={cutSceneTimer=255}] run tp @s 8008.655 139.6381 -14.05876 500.9572 24.83138
execute as @s[scores={cutSceneTimer=256}] run tp @s 8008.641 139.6274 -14.07223 500.9547 24.83011
execute as @s[scores={cutSceneTimer=257}] run tp @s 8008.626 139.6167 -14.08585 500.9519 24.82882
execute as @s[scores={cutSceneTimer=258}] run tp @s 8008.612 139.6059 -14.09937 500.9491 24.82754
execute as @s[scores={cutSceneTimer=259}] run tp @s 8008.598 139.5952 -14.11288 500.9462 24.82624
execute as @s[scores={cutSceneTimer=260}] run tp @s 8008.584 139.5845 -14.12639 500.9431 24.82494
execute as @s[scores={cutSceneTimer=261}] run tp @s 8008.57 139.5739 -14.13979 500.9399 24.82365
execute as @s[scores={cutSceneTimer=262}] run tp @s 8008.556 139.5631 -14.15335 500.9365 24.82233
execute as @s[scores={cutSceneTimer=263}] run tp @s 8008.542 139.5522 -14.167 500.933 24.821
execute as @s[scores={cutSceneTimer=264}] run tp @s 8008.528 139.5414 -14.18054 500.9294 24.81966
execute as @s[scores={cutSceneTimer=265}] run tp @s 8008.514 139.5308 -14.1939 500.9258 24.81835
execute as @s[scores={cutSceneTimer=266}] run tp @s 8008.5 139.5201 -14.20725 500.922 24.81703
execute as @s[scores={cutSceneTimer=267}] run tp @s 8008.486 139.5092 -14.22085 500.918 24.81569
execute as @s[scores={cutSceneTimer=268}] run tp @s 8008.472 139.4985 -14.23426 500.9139 24.81434
execute as @s[scores={cutSceneTimer=269}] run tp @s 8008.458 139.4876 -14.24784 500.9097 24.81299
execute as @s[scores={cutSceneTimer=270}] run tp @s 8008.444 139.4769 -14.26124 500.9055 24.81164
execute as @s[scores={cutSceneTimer=271}] run tp @s 8008.431 139.4662 -14.27454 500.9011 24.8103
execute as @s[scores={cutSceneTimer=272}] run tp @s 8008.417 139.4555 -14.28783 500.8966 24.80895
execute as @s[scores={cutSceneTimer=273}] run tp @s 8008.408 139.4483 -14.29676 500.8936 24.80803
execute as @s[scores={cutSceneTimer=274}] run tp @s 8008.394 139.4374 -14.3103 500.8888 24.80665
execute as @s[scores={cutSceneTimer=275}] run tp @s 8008.38 139.4267 -14.32356 500.8841 24.80529
execute as @s[scores={cutSceneTimer=276}] run tp @s 8008.366 139.4158 -14.3371 500.8791 24.8039
execute as @s[scores={cutSceneTimer=277}] run tp @s 8008.353 139.4049 -14.3506 500.874 24.8025
execute as @s[scores={cutSceneTimer=278}] run tp @s 8008.339 139.3942 -14.36384 500.869 24.80114
execute as @s[scores={cutSceneTimer=279}] run tp @s 8008.325 139.3833 -14.37733 500.8636 24.79974
execute as @s[scores={cutSceneTimer=280}] run tp @s 8008.312 139.3724 -14.39083 500.8583 24.79833
execute as @s[scores={cutSceneTimer=281}] run tp @s 8008.298 139.3616 -14.40413 500.8528 24.79693
execute as @s[scores={cutSceneTimer=282}] run tp @s 8008.285 139.3507 -14.41758 500.8473 24.79552
execute as @s[scores={cutSceneTimer=283}] run tp @s 8008.271 139.3399 -14.43089 500.8416 24.79412
execute as @s[scores={cutSceneTimer=284}] run tp @s 8008.257 139.3289 -14.44444 500.8358 24.79269
execute as @s[scores={cutSceneTimer=285}] run tp @s 8008.244 139.3182 -14.45764 500.83 24.7913
execute as @s[scores={cutSceneTimer=286}] run tp @s 8008.23 139.3073 -14.47108 500.824 24.78986
execute as @s[scores={cutSceneTimer=287}] run tp @s 8008.217 139.2966 -14.48426 500.8181 24.78846
execute as @s[scores={cutSceneTimer=288}] run tp @s 8008.204 139.2856 -14.4977 500.8118 24.78702
execute as @s[scores={cutSceneTimer=289}] run tp @s 8008.191 139.2748 -14.51096 500.8057 24.78562
execute as @s[scores={cutSceneTimer=290}] run tp @s 8008.178 139.2641 -14.52413 500.7994 24.7842
execute as @s[scores={cutSceneTimer=291}] run tp @s 8008.165 139.2533 -14.53734 500.793 24.78279
execute as @s[scores={cutSceneTimer=292}] run tp @s 8008.151 139.2425 -14.55058 500.7866 24.78136
execute as @s[scores={cutSceneTimer=293}] run tp @s 8008.138 139.2317 -14.56382 500.78 24.77992
execute as @s[scores={cutSceneTimer=294}] run tp @s 8008.125 139.2207 -14.57723 500.7733 24.77847
execute as @s[scores={cutSceneTimer=295}] run tp @s 8008.112 139.2097 -14.59063 500.7664 24.77702
execute as @s[scores={cutSceneTimer=296}] run tp @s 8008.099 139.1988 -14.60404 500.7595 24.77557
execute as @s[scores={cutSceneTimer=297}] run tp @s 8008.086 139.188 -14.61718 500.7526 24.77414
execute as @s[scores={cutSceneTimer=298}] run tp @s 8008.073 139.177 -14.63056 500.7455 24.77268
execute as @s[scores={cutSceneTimer=299}] run tp @s 8008.061 139.166 -14.64396 500.7384 24.77121
execute as @s[scores={cutSceneTimer=300}] run tp @s 8008.048 139.1552 -14.65717 500.7312 24.76977
execute as @s[scores={cutSceneTimer=301}] run tp @s 8008.036 139.1443 -14.67039 500.7239 24.76831
execute as @s[scores={cutSceneTimer=302}] run tp @s 8008.028 139.1372 -14.67914 500.7191 24.76736
execute as @s[scores={cutSceneTimer=303}] run tp @s 8008.016 139.1262 -14.69252 500.7117 24.76589
execute as @s[scores={cutSceneTimer=304}] run tp @s 8008.004 139.1152 -14.70581 500.7042 24.76443
execute as @s[scores={cutSceneTimer=305}] run tp @s 8007.993 139.1043 -14.71915 500.6965 24.76296
execute as @s[scores={cutSceneTimer=306}] run tp @s 8007.982 139.0933 -14.73253 500.6889 24.76147
execute as @s[scores={cutSceneTimer=307}] run tp @s 8007.971 139.0825 -14.74565 500.6812 24.76003
execute as @s[scores={cutSceneTimer=308}] run tp @s 8007.959 139.0714 -14.75902 500.6734 24.75854
execute as @s[scores={cutSceneTimer=309}] run tp @s 8007.949 139.0605 -14.77231 500.6655 24.75709
execute as @s[scores={cutSceneTimer=310}] run tp @s 8007.938 139.0494 -14.78577 500.6574 24.7556
execute as @s[scores={cutSceneTimer=311}] run tp @s 8007.928 139.0385 -14.79898 500.6495 24.75413
execute as @s[scores={cutSceneTimer=312}] run tp @s 8007.917 139.0277 -14.8121 500.6415 24.75268
execute as @s[scores={cutSceneTimer=313}] run tp @s 8007.908 139.0168 -14.82522 500.6334 24.75122
execute as @s[scores={cutSceneTimer=314}] run tp @s 8007.897 139.006 -14.8384 500.6253 24.74976
execute as @s[scores={cutSceneTimer=315}] run tp @s 8007.888 138.9951 -14.8516 500.6171 24.74829
execute as @s[scores={cutSceneTimer=316}] run tp @s 8007.878 138.984 -14.86498 500.6086 24.7468
execute as @s[scores={cutSceneTimer=317}] run tp @s 8007.869 138.9731 -14.87818 500.6003 24.74533
execute as @s[scores={cutSceneTimer=318}] run tp @s 8007.859 138.9621 -14.89148 500.5918 24.74386
execute as @s[scores={cutSceneTimer=319}] run tp @s 8007.85 138.951 -14.90486 500.5832 24.74237
execute as @s[scores={cutSceneTimer=320}] run tp @s 8007.841 138.94 -14.91824 500.5746 24.74088
execute as @s[scores={cutSceneTimer=321}] run tp @s 8007.832 138.9289 -14.93164 500.5659 24.73939
execute as @s[scores={cutSceneTimer=322}] run tp @s 8007.823 138.9179 -14.94485 500.5572 24.73793
execute as @s[scores={cutSceneTimer=323}] run tp @s 8007.814 138.907 -14.95806 500.5485 24.73645
execute as @s[scores={cutSceneTimer=324}] run tp @s 8007.806 138.8959 -14.97146 500.5396 24.73496
execute as @s[scores={cutSceneTimer=325}] run tp @s 8007.797 138.885 -14.98468 500.5308 24.73349
execute as @s[scores={cutSceneTimer=326}] run tp @s 8007.789 138.8739 -14.998 500.5218 24.73202
execute as @s[scores={cutSceneTimer=327}] run tp @s 8007.781 138.863 -15.01123 500.5129 24.73055
execute as @s[scores={cutSceneTimer=328}] run tp @s 8007.773 138.8519 -15.02463 500.5038 24.72906
execute as @s[scores={cutSceneTimer=329}] run tp @s 8007.768 138.8445 -15.03349 500.4977 24.72807
execute as @s[scores={cutSceneTimer=330}] run tp @s 8007.76 138.8333 -15.04699 500.4885 24.72658
execute as @s[scores={cutSceneTimer=331}] run tp @s 8007.752 138.8224 -15.06016 500.4794 24.72512
execute as @s[scores={cutSceneTimer=332}] run tp @s 8007.745 138.8113 -15.07358 500.4702 24.72363
execute as @s[scores={cutSceneTimer=333}] run tp @s 8007.737 138.8002 -15.087 500.4608 24.72214
execute as @s[scores={cutSceneTimer=334}] run tp @s 8007.729 138.7892 -15.10027 500.4516 24.72068
execute as @s[scores={cutSceneTimer=335}] run tp @s 8007.722 138.7782 -15.11354 500.4423 24.71921
execute as @s[scores={cutSceneTimer=336}] run tp @s 8007.715 138.7671 -15.12687 500.4329 24.71774
execute as @s[scores={cutSceneTimer=337}] run tp @s 8007.708 138.7562 -15.14006 500.4236 24.71628
execute as @s[scores={cutSceneTimer=338}] run tp @s 8007.701 138.745 -15.15352 500.414 24.7148
execute as @s[scores={cutSceneTimer=339}] run tp @s 8007.694 138.7341 -15.16672 500.4046 24.71335
execute as @s[scores={cutSceneTimer=340}] run tp @s 8007.688 138.7231 -15.17994 500.3952 24.7119
execute as @s[scores={cutSceneTimer=341}] run tp @s 8007.681 138.7122 -15.19316 500.3857 24.71045
execute as @s[scores={cutSceneTimer=342}] run tp @s 8007.675 138.701 -15.20662 500.376 24.70897
execute as @s[scores={cutSceneTimer=343}] run tp @s 8007.668 138.69 -15.21994 500.3664 24.70752
execute as @s[scores={cutSceneTimer=344}] run tp @s 8007.662 138.679 -15.23318 500.3569 24.70607
execute as @s[scores={cutSceneTimer=345}] run tp @s 8007.656 138.6679 -15.2466 500.3471 24.70461
execute as @s[scores={cutSceneTimer=346}] run tp @s 8007.649 138.6568 -15.25994 500.3374 24.70317
execute as @s[scores={cutSceneTimer=347}] run tp @s 8007.644 138.6458 -15.27321 500.3277 24.70172
execute as @s[scores={cutSceneTimer=348}] run tp @s 8007.637 138.6347 -15.28665 500.3179 24.70027
execute as @s[scores={cutSceneTimer=349}] run tp @s 8007.631 138.6234 -15.30019 500.308 24.6988
execute as @s[scores={cutSceneTimer=350}] run tp @s 8007.625 138.6123 -15.31367 500.2981 24.69735
execute as @s[scores={cutSceneTimer=351}] run tp @s 8007.62 138.6011 -15.32724 500.2881 24.69589
execute as @s[scores={cutSceneTimer=352}] run tp @s 8007.614 138.59 -15.34054 500.2783 24.69446
execute as @s[scores={cutSceneTimer=353}] run tp @s 8007.608 138.5788 -15.35412 500.2682 24.693
execute as @s[scores={cutSceneTimer=354}] run tp @s 8007.603 138.5676 -15.36763 500.2583 24.69156
execute as @s[scores={cutSceneTimer=355}] run tp @s 8007.597 138.5565 -15.38105 500.2483 24.69013
execute as @s[scores={cutSceneTimer=356}] run tp @s 8007.591 138.5455 -15.3944 500.2384 24.68871
execute as @s[scores={cutSceneTimer=357}] run tp @s 8007.586 138.5343 -15.40784 500.2285 24.68729
execute as @s[scores={cutSceneTimer=358}] run tp @s 8007.581 138.5231 -15.42138 500.2184 24.68585
execute as @s[scores={cutSceneTimer=359}] run tp @s 8007.575 138.5121 -15.43476 500.2084 24.68444
execute as @s[scores={cutSceneTimer=360}] run tp @s 8007.57 138.501 -15.44815 500.1984 24.68304
execute as @s[scores={cutSceneTimer=361}] run tp @s 8007.565 138.4898 -15.46172 500.1884 24.68161
execute as @s[scores={cutSceneTimer=362}] run tp @s 8007.56 138.4787 -15.47523 500.1783 24.6802
execute as @s[scores={cutSceneTimer=363}] run tp @s 8007.555 138.4675 -15.48874 500.1682 24.67879
execute as @s[scores={cutSceneTimer=364}] run tp @s 8007.55 138.4563 -15.50226 500.1581 24.6774
execute as @s[scores={cutSceneTimer=365}] run tp @s 8007.544 138.445 -15.51607 500.1478 24.67596
execute as @s[scores={cutSceneTimer=366}] run tp @s 8007.541 138.4375 -15.52514 500.141 24.67503
execute as @s[scores={cutSceneTimer=367}] run tp @s 8007.536 138.4264 -15.53861 500.131 24.67364
execute as @s[scores={cutSceneTimer=368}] run tp @s 8007.531 138.415 -15.55245 500.1206 24.67222
execute as @s[scores={cutSceneTimer=369}] run tp @s 8007.526 138.4036 -15.56621 500.1104 24.67081
execute as @s[scores={cutSceneTimer=370}] run tp @s 8007.521 138.3923 -15.57999 500.1001 24.66942
execute as @s[scores={cutSceneTimer=371}] run tp @s 8007.517 138.381 -15.59377 500.0898 24.66802
execute as @s[scores={cutSceneTimer=372}] run tp @s 8007.512 138.3697 -15.60741 500.0797 24.66663
execute as @s[scores={cutSceneTimer=373}] run tp @s 8007.507 138.3584 -15.62114 500.0695 24.66525
execute as @s[scores={cutSceneTimer=374}] run tp @s 8007.502 138.3471 -15.63497 500.0592 24.66388
execute as @s[scores={cutSceneTimer=375}] run tp @s 8007.497 138.3359 -15.64856 500.0491 24.66252
execute as @s[scores={cutSceneTimer=376}] run tp @s 8007.493 138.3248 -15.66216 500.039 24.66116
execute as @s[scores={cutSceneTimer=377}] run tp @s 8007.488 138.3135 -15.67585 500.0289 24.65981
execute as @s[scores={cutSceneTimer=378}] run tp @s 8007.483 138.3022 -15.68966 500.0186 24.65845
execute as @s[scores={cutSceneTimer=379}] run tp @s 8007.479 138.2908 -15.70358 500.0084 24.65708
execute as @s[scores={cutSceneTimer=380}] run tp @s 8007.474 138.2794 -15.71751 499.9981 24.65572
execute as @s[scores={cutSceneTimer=381}] run tp @s 8007.469 138.2682 -15.73119 499.988 24.65441
execute as @s[scores={cutSceneTimer=382}] run tp @s 8007.464 138.257 -15.74488 499.978 24.65307
execute as @s[scores={cutSceneTimer=383}] run tp @s 8007.459 138.2456 -15.75884 499.9677 24.65173
execute as @s[scores={cutSceneTimer=384}] run tp @s 8007.455 138.2341 -15.77284 499.9575 24.6504
execute as @s[scores={cutSceneTimer=385}] run tp @s 8007.45 138.2227 -15.78678 499.9473 24.64907
execute as @s[scores={cutSceneTimer=386}] run tp @s 8007.445 138.2115 -15.80062 499.9372 24.64776
execute as @s[scores={cutSceneTimer=387}] run tp @s 8007.44 138.2 -15.81467 499.927 24.64643
execute as @s[scores={cutSceneTimer=388}] run tp @s 8007.436 138.1885 -15.82874 499.9169 24.64511
execute as @s[scores={cutSceneTimer=389}] run tp @s 8007.431 138.1773 -15.84255 499.9069 24.64383
execute as @s[scores={cutSceneTimer=390}] run tp @s 8007.426 138.166 -15.85639 499.8969 24.64254
execute as @s[scores={cutSceneTimer=391}] run tp @s 8007.422 138.1548 -15.87024 499.887 24.64127
execute as @s[scores={cutSceneTimer=392}] run tp @s 8007.417 138.1433 -15.88437 499.8768 24.63998
execute as @s[scores={cutSceneTimer=393}] run tp @s 8007.412 138.1319 -15.89844 499.8668 24.6387
execute as @s[scores={cutSceneTimer=394}] run tp @s 8007.407 138.1204 -15.91253 499.8568 24.63742
execute as @s[scores={cutSceneTimer=395}] run tp @s 8007.404 138.1129 -15.92182 499.8502 24.63659
execute as @s[scores={cutSceneTimer=396}] run tp @s 8007.399 138.1013 -15.93612 499.8401 24.63529
execute as @s[scores={cutSceneTimer=397}] run tp @s 8007.394 138.0898 -15.95036 499.8301 24.63403
execute as @s[scores={cutSceneTimer=398}] run tp @s 8007.389 138.0783 -15.96451 499.8201 24.63277
execute as @s[scores={cutSceneTimer=399}] run tp @s 8007.384 138.0668 -15.97877 499.8102 24.63152
execute as @s[scores={cutSceneTimer=400}] run tp @s 8007.379 138.0552 -15.99306 499.8003 24.63028
execute as @s[scores={cutSceneTimer=401}] run tp @s 8007.374 138.0437 -16.00738 499.7903 24.62903
execute as @s[scores={cutSceneTimer=402}] run tp @s 8007.369 138.0323 -16.02144 499.7806 24.62783
execute as @s[scores={cutSceneTimer=403}] run tp @s 8007.363 138.0208 -16.0358 499.7708 24.62659
execute as @s[scores={cutSceneTimer=404}] run tp @s 8007.358 138.0094 -16.04991 499.7612 24.62539
execute as @s[scores={cutSceneTimer=405}] run tp @s 8007.353 137.998 -16.06403 499.7515 24.6242
execute as @s[scores={cutSceneTimer=406}] run tp @s 8007.348 137.9865 -16.07836 499.7419 24.623
execute as @s[scores={cutSceneTimer=407}] run tp @s 8007.342 137.9751 -16.09262 499.7322 24.62182
execute as @s[scores={cutSceneTimer=408}] run tp @s 8007.337 137.9635 -16.1071 499.7226 24.62062
execute as @s[scores={cutSceneTimer=409}] run tp @s 8007.332 137.9519 -16.12159 499.7129 24.61944
execute as @s[scores={cutSceneTimer=410}] run tp @s 8007.326 137.9405 -16.13583 499.7035 24.61828
execute as @s[scores={cutSceneTimer=411}] run tp @s 8007.32 137.929 -16.15009 499.6941 24.61712
execute as @s[scores={cutSceneTimer=412}] run tp @s 8007.315 137.9176 -16.16438 499.6848 24.61599
execute as @s[scores={cutSceneTimer=413}] run tp @s 8007.309 137.906 -16.17896 499.6753 24.61483
execute as @s[scores={cutSceneTimer=414}] run tp @s 8007.303 137.8943 -16.19357 499.6658 24.61368
execute as @s[scores={cutSceneTimer=415}] run tp @s 8007.297 137.8829 -16.20793 499.6566 24.61255
execute as @s[scores={cutSceneTimer=416}] run tp @s 8007.292 137.8713 -16.22249 499.6473 24.61143
execute as @s[scores={cutSceneTimer=417}] run tp @s 8007.285 137.8595 -16.23728 499.6379 24.61028
execute as @s[scores={cutSceneTimer=418}] run tp @s 8007.279 137.8479 -16.25199 499.6287 24.60917
execute as @s[scores={cutSceneTimer=419}] run tp @s 8007.273 137.8362 -16.26673 499.6194 24.60807
execute as @s[scores={cutSceneTimer=420}] run tp @s 8007.267 137.8244 -16.2815 499.6103 24.60696
execute as @s[scores={cutSceneTimer=421}] run tp @s 8007.262 137.8167 -16.29135 499.6042 24.60623
execute as @s[scores={cutSceneTimer=422}] run tp @s 8007.256 137.805 -16.30607 499.5952 24.60515
execute as @s[scores={cutSceneTimer=423}] run tp @s 8007.249 137.7935 -16.32062 499.5863 24.60409
execute as @s[scores={cutSceneTimer=424}] run tp @s 8007.243 137.7819 -16.33529 499.5775 24.60302
execute as @s[scores={cutSceneTimer=425}] run tp @s 8007.236 137.7703 -16.34999 499.5686 24.60197
execute as @s[scores={cutSceneTimer=426}] run tp @s 8007.229 137.7587 -16.3648 499.5598 24.60093
execute as @s[scores={cutSceneTimer=427}] run tp @s 8007.222 137.747 -16.37955 499.5511 24.5999
execute as @s[scores={cutSceneTimer=428}] run tp @s 8007.215 137.7353 -16.39443 499.5424 24.59886
execute as @s[scores={cutSceneTimer=429}] run tp @s 8007.208 137.7236 -16.40933 499.5338 24.59784
execute as @s[scores={cutSceneTimer=430}] run tp @s 8007.201 137.712 -16.42416 499.5253 24.59684
execute as @s[scores={cutSceneTimer=431}] run tp @s 8007.199 137.708 -16.42925 499.5223 24.5965
execute as @s[scores={cutSceneTimer=432}] run tp @s 8007.187 137.6887 -16.4539 499.5084 24.59484
execute as @s[scores={cutSceneTimer=433}] run tp @s 8007.179 137.6766 -16.46939 499.4998 24.59384
execute as @s[scores={cutSceneTimer=434}] run tp @s 8007.171 137.6649 -16.48445 499.4914 24.59285
execute as @s[scores={cutSceneTimer=435}] run tp @s 8007.163 137.653 -16.49962 499.4831 24.59189
execute as @s[scores={cutSceneTimer=436}] run tp @s 8007.155 137.6414 -16.51453 499.475 24.59094
execute as @s[scores={cutSceneTimer=437}] run tp @s 8007.147 137.6296 -16.52975 499.4668 24.58998
execute as @s[scores={cutSceneTimer=438}] run tp @s 8007.139 137.6177 -16.54502 499.4587 24.58904
execute as @s[scores={cutSceneTimer=439}] run tp @s 8007.13 137.6059 -16.56021 499.4507 24.58811
execute as @s[scores={cutSceneTimer=440}] run tp @s 8007.122 137.594 -16.57563 499.4427 24.58718
execute as @s[scores={cutSceneTimer=441}] run tp @s 8007.113 137.5821 -16.59098 499.4348 24.58627
execute as @s[scores={cutSceneTimer=442}] run tp @s 8007.105 137.5704 -16.60607 499.4271 24.58537
execute as @s[scores={cutSceneTimer=443}] run tp @s 8007.096 137.5588 -16.62118 499.4195 24.5845
execute as @s[scores={cutSceneTimer=444}] run tp @s 8007.087 137.5469 -16.63652 499.4119 24.58362
execute as @s[scores={cutSceneTimer=445}] run tp @s 8007.078 137.5352 -16.65179 499.4044 24.58276
execute as @s[scores={cutSceneTimer=446}] run tp @s 8007.069 137.5235 -16.66701 499.397 24.58191
execute as @s[scores={cutSceneTimer=447}] run tp @s 8007.06 137.5116 -16.68254 499.3896 24.58105
execute as @s[scores={cutSceneTimer=448}] run tp @s 8007.05 137.4998 -16.69791 499.3823 24.58023
execute as @s[scores={cutSceneTimer=449}] run tp @s 8007.041 137.488 -16.71331 499.3751 24.5794
execute as @s[scores={cutSceneTimer=450}] run tp @s 8007.031 137.4762 -16.72874 499.368 24.57858
execute as @s[scores={cutSceneTimer=451}] run tp @s 8007.021 137.4643 -16.74422 499.361 24.57779
execute as @s[scores={cutSceneTimer=452}] run tp @s 8007.014 137.4564 -16.75457 499.3564 24.57725
execute as @s[scores={cutSceneTimer=453}] run tp @s 8007.004 137.4447 -16.77 499.3495 24.57648
execute as @s[scores={cutSceneTimer=454}] run tp @s 8006.994 137.4327 -16.78575 499.3427 24.5757
execute as @s[scores={cutSceneTimer=455}] run tp @s 8006.983 137.4207 -16.80145 499.3359 24.57492
execute as @s[scores={cutSceneTimer=456}] run tp @s 8006.972 137.4089 -16.81706 499.3293 24.57418
execute as @s[scores={cutSceneTimer=457}] run tp @s 8006.961 137.3971 -16.83262 499.3228 24.57344
execute as @s[scores={cutSceneTimer=458}] run tp @s 8006.95 137.3851 -16.84841 499.3163 24.5727
execute as @s[scores={cutSceneTimer=459}] run tp @s 8006.939 137.3732 -16.86413 499.3099 24.57199
execute as @s[scores={cutSceneTimer=460}] run tp @s 8006.928 137.3613 -16.87999 499.3036 24.57129
execute as @s[scores={cutSceneTimer=461}] run tp @s 8006.917 137.3494 -16.89568 499.2975 24.57059
execute as @s[scores={cutSceneTimer=462}] run tp @s 8006.905 137.3375 -16.9115 499.2914 24.56992
execute as @s[scores={cutSceneTimer=463}] run tp @s 8006.893 137.3257 -16.92726 499.2855 24.56925
execute as @s[scores={cutSceneTimer=464}] run tp @s 8006.881 137.3138 -16.94306 499.2796 24.56858
execute as @s[scores={cutSceneTimer=465}] run tp @s 8006.869 137.302 -16.95889 499.2739 24.56795
execute as @s[scores={cutSceneTimer=466}] run tp @s 8006.856 137.29 -16.97486 499.2681 24.56731
execute as @s[scores={cutSceneTimer=467}] run tp @s 8006.844 137.278 -16.99096 499.2625 24.56668
execute as @s[scores={cutSceneTimer=468}] run tp @s 8006.831 137.2661 -17.0069 499.257 24.56607
execute as @s[scores={cutSceneTimer=469}] run tp @s 8006.818 137.254 -17.02307 499.2516 24.56547
execute as @s[scores={cutSceneTimer=470}] run tp @s 8006.805 137.242 -17.03928 499.2463 24.56487
execute as @s[scores={cutSceneTimer=471}] run tp @s 8006.792 137.23 -17.05533 499.2411 24.5643
execute as @s[scores={cutSceneTimer=472}] run tp @s 8006.778 137.218 -17.07152 499.236 24.56374
execute as @s[scores={cutSceneTimer=473}] run tp @s 8006.764 137.2059 -17.08785 499.231 24.56318
execute as @s[scores={cutSceneTimer=474}] run tp @s 8006.75 137.194 -17.10401 499.2262 24.56264
execute as @s[scores={cutSceneTimer=475}] run tp @s 8006.736 137.182 -17.12021 499.2215 24.56213
execute as @s[scores={cutSceneTimer=476}] run tp @s 8006.721 137.1698 -17.13675 499.2167 24.56161
execute as @s[scores={cutSceneTimer=477}] run tp @s 8006.707 137.1578 -17.15303 499.2122 24.56111
execute as @s[scores={cutSceneTimer=478}] run tp @s 8006.692 137.1456 -17.16966 499.2077 24.56061
execute as @s[scores={cutSceneTimer=479}] run tp @s 8006.677 137.1335 -17.18612 499.2034 24.56014
execute as @s[scores={cutSceneTimer=480}] run tp @s 8006.662 137.1215 -17.20251 499.1992 24.55968
execute as @s[scores={cutSceneTimer=481}] run tp @s 8006.646 137.1094 -17.21904 499.1951 24.55923
execute as @s[scores={cutSceneTimer=482}] run tp @s 8006.63 137.097 -17.23594 499.1911 24.55879
execute as @s[scores={cutSceneTimer=483}] run tp @s 8006.614 137.0848 -17.25278 499.1872 24.55836
execute as @s[scores={cutSceneTimer=484}] run tp @s 8006.598 137.0725 -17.26965 499.1833 24.55794
execute as @s[scores={cutSceneTimer=485}] run tp @s 8006.581 137.0602 -17.28658 499.1797 24.55754
execute as @s[scores={cutSceneTimer=486}] run tp @s 8006.564 137.0481 -17.30321 499.1762 24.55717
execute as @s[scores={cutSceneTimer=487}] run tp @s 8006.547 137.0358 -17.3202 499.1728 24.55679
execute as @s[scores={cutSceneTimer=488}] run tp @s 8006.53 137.0236 -17.33702 499.1695 24.55644
execute as @s[scores={cutSceneTimer=489}] run tp @s 8006.513 137.0114 -17.35388 499.1664 24.5561
execute as @s[scores={cutSceneTimer=490}] run tp @s 8006.496 136.9993 -17.37075 499.1634 24.55577
execute as @s[scores={cutSceneTimer=491}] run tp @s 8006.478 136.987 -17.38769 499.1605 24.55545
execute as @s[scores={cutSceneTimer=492}] run tp @s 8006.466 136.9787 -17.39928 499.1586 24.55526
execute as @s[scores={cutSceneTimer=493}] run tp @s 8006.448 136.9663 -17.41651 499.1559 24.55496
execute as @s[scores={cutSceneTimer=494}] run tp @s 8006.431 136.9541 -17.43358 499.1534 24.55469
execute as @s[scores={cutSceneTimer=495}] run tp @s 8006.413 136.9418 -17.45079 499.1509 24.55442
execute as @s[scores={cutSceneTimer=496}] run tp @s 8006.395 136.9294 -17.46816 499.1486 24.55417
execute as @s[scores={cutSceneTimer=497}] run tp @s 8006.373 136.914 -17.48973 499.1459 24.55388
execute as @s[scores={cutSceneTimer=498}] run tp @s 8006.361 136.9057 -17.50132 499.1446 24.55373
execute as @s[scores={cutSceneTimer=499}] run tp @s 8006.344 136.8933 -17.51882 499.1426 24.55354
execute as @s[scores={cutSceneTimer=500}] run tp @s 8006.326 136.8808 -17.53636 499.1409 24.55334
execute as @s[scores={cutSceneTimer=501}] run tp @s 8006.309 136.8683 -17.55395 499.1393 24.55317
execute as @s[scores={cutSceneTimer=502}] run tp @s 8006.291 136.8561 -17.57125 499.1378 24.553
execute as @s[scores={cutSceneTimer=503}] run tp @s 8006.273 136.8436 -17.58893 499.1364 24.55287
execute as @s[scores={cutSceneTimer=504}] run tp @s 8006.256 136.8314 -17.60631 499.1352 24.55273
execute as @s[scores={cutSceneTimer=505}] run tp @s 8006.239 136.8188 -17.62408 499.1342 24.55262
execute as @s[scores={cutSceneTimer=506}] run tp @s 8006.221 136.8063 -17.6419 499.1332 24.55252
execute as @s[scores={cutSceneTimer=507}] run tp @s 8006.204 136.794 -17.65953 499.1324 24.55244
execute as @s[scores={cutSceneTimer=508}] run tp @s 8006.187 136.7815 -17.67732 499.1318 24.55237
execute as @s[scores={cutSceneTimer=509}] run tp @s 8006.169 136.769 -17.69516 499.1313 24.55231
execute as @s[scores={cutSceneTimer=510}] run tp @s 8006.152 136.7567 -17.71281 499.131 24.55228
execute as @s[scores={cutSceneTimer=511}] run tp @s 8006.135 136.7443 -17.73062 499.1308 24.55227
execute as @s[scores={cutSceneTimer=512}] run tp @s 8006.118 136.7317 -17.74873 499.1342 24.55197
execute as @s[scores={cutSceneTimer=513}] run tp @s 8006.1 136.7192 -17.76668 499.1539 24.55035
execute as @s[scores={cutSceneTimer=514}] run tp @s 8006.083 136.7069 -17.78436 499.1729 24.54864
execute as @s[scores={cutSceneTimer=515}] run tp @s 8006.066 136.6945 -17.8021 499.192 24.54681
execute as @s[scores={cutSceneTimer=516}] run tp @s 8006.049 136.6822 -17.81967 499.2108 24.54488
execute as @s[scores={cutSceneTimer=517}] run tp @s 8006.032 136.6697 -17.83754 499.2299 24.54278
execute as @s[scores={cutSceneTimer=518}] run tp @s 8006.015 136.6574 -17.85501 499.2485 24.54063
execute as @s[scores={cutSceneTimer=519}] run tp @s 8005.998 136.645 -17.87277 499.2673 24.53831
execute as @s[scores={cutSceneTimer=520}] run tp @s 8005.98 136.6326 -17.89036 499.2859 24.53589
execute as @s[scores={cutSceneTimer=521}] run tp @s 8005.963 136.6203 -17.90779 499.3043 24.53338
execute as @s[scores={cutSceneTimer=522}] run tp @s 8005.946 136.6082 -17.92506 499.3224 24.53078
execute as @s[scores={cutSceneTimer=523}] run tp @s 8005.929 136.596 -17.94229 499.3405 24.52808
execute as @s[scores={cutSceneTimer=524}] run tp @s 8005.913 136.5837 -17.95964 499.3586 24.52523
execute as @s[scores={cutSceneTimer=525}] run tp @s 8005.895 136.5714 -17.9771 499.3768 24.52226
execute as @s[scores={cutSceneTimer=526}] run tp @s 8005.878 136.5593 -17.99417 499.3946 24.51922
execute as @s[scores={cutSceneTimer=527}] run tp @s 8005.861 136.547 -18.01153 499.4125 24.51605
execute as @s[scores={cutSceneTimer=528}] run tp @s 8005.844 136.5349 -18.02851 499.4302 24.5128
execute as @s[scores={cutSceneTimer=529}] run tp @s 8005.827 136.5227 -18.04565 499.4478 24.50943
execute as @s[scores={cutSceneTimer=530}] run tp @s 8005.811 136.5107 -18.06253 499.4654 24.50597
execute as @s[scores={cutSceneTimer=531}] run tp @s 8005.794 136.4986 -18.07936 499.4828 24.5024
execute as @s[scores={cutSceneTimer=532}] run tp @s 8005.777 136.4866 -18.09624 499.5002 24.49873
execute as @s[scores={cutSceneTimer=533}] run tp @s 8005.76 136.4746 -18.11298 499.5176 24.49494
execute as @s[scores={cutSceneTimer=534}] run tp @s 8005.744 136.4626 -18.12978 499.535 24.49106
execute as @s[scores={cutSceneTimer=535}] run tp @s 8005.727 136.4506 -18.14642 499.5522 24.48709
execute as @s[scores={cutSceneTimer=536}] run tp @s 8005.716 136.4427 -18.15749 499.5638 24.48437
execute as @s[scores={cutSceneTimer=537}] run tp @s 8005.699 136.4305 -18.17448 499.5811 24.48019
execute as @s[scores={cutSceneTimer=538}] run tp @s 8005.682 136.4184 -18.19132 499.5984 24.47589
execute as @s[scores={cutSceneTimer=539}] run tp @s 8005.665 136.4063 -18.20812 499.616 24.47145
execute as @s[scores={cutSceneTimer=540}] run tp @s 8005.648 136.3943 -18.22465 499.6332 24.46696
execute as @s[scores={cutSceneTimer=541}] run tp @s 8005.631 136.3824 -18.24115 499.6505 24.46236
execute as @s[scores={cutSceneTimer=542}] run tp @s 8005.614 136.3703 -18.2578 499.668 24.45758
execute as @s[scores={cutSceneTimer=543}] run tp @s 8005.598 136.3586 -18.27409 499.6852 24.45281
execute as @s[scores={cutSceneTimer=544}] run tp @s 8005.581 136.3468 -18.29034 499.7023 24.44794
execute as @s[scores={cutSceneTimer=545}] run tp @s 8005.564 136.3347 -18.30694 499.72 24.4428
execute as @s[scores={cutSceneTimer=546}] run tp @s 8005.547 136.3227 -18.32341 499.7376 24.43759
execute as @s[scores={cutSceneTimer=547}] run tp @s 8005.531 136.3109 -18.33969 499.7551 24.43233
execute as @s[scores={cutSceneTimer=548}] run tp @s 8005.514 136.2991 -18.35591 499.7725 24.42698
execute as @s[scores={cutSceneTimer=549}] run tp @s 8005.497 136.2872 -18.37213 499.79 24.4215
execute as @s[scores={cutSceneTimer=550}] run tp @s 8005.48 136.2753 -18.38843 499.8078 24.41586
execute as @s[scores={cutSceneTimer=551}] run tp @s 8005.464 136.2636 -18.40446 499.8252 24.41024
execute as @s[scores={cutSceneTimer=552}] run tp @s 8005.447 136.2517 -18.42067 499.843 24.40441
execute as @s[scores={cutSceneTimer=553}] run tp @s 8005.43 136.2395 -18.43735 499.8614 24.39828
execute as @s[scores={cutSceneTimer=554}] run tp @s 8005.413 136.2277 -18.45347 499.8791 24.39232
execute as @s[scores={cutSceneTimer=555}] run tp @s 8005.402 136.2199 -18.46399 499.8907 24.38835
execute as @s[scores={cutSceneTimer=556}] run tp @s 8005.381 136.2051 -18.48416 499.9131 24.38057
execute as @s[scores={cutSceneTimer=557}] run tp @s 8005.365 136.1935 -18.49988 499.9308 24.37441
execute as @s[scores={cutSceneTimer=558}] run tp @s 8005.348 136.1818 -18.51572 499.9486 24.36806
execute as @s[scores={cutSceneTimer=559}] run tp @s 8005.332 136.1701 -18.53162 499.9666 24.36161
execute as @s[scores={cutSceneTimer=560}] run tp @s 8005.315 136.1584 -18.54748 499.9846 24.35507
execute as @s[scores={cutSceneTimer=561}] run tp @s 8005.298 136.1467 -18.5633 500.0026 24.34848
execute as @s[scores={cutSceneTimer=562}] run tp @s 8005.282 136.1351 -18.57888 500.0206 24.34184
execute as @s[scores={cutSceneTimer=563}] run tp @s 8005.271 136.1274 -18.58925 500.0325 24.33737
execute as @s[scores={cutSceneTimer=564}] run tp @s 8005.254 136.1158 -18.60498 500.0506 24.33058
execute as @s[scores={cutSceneTimer=565}] run tp @s 8005.238 136.1041 -18.62063 500.0689 24.32365
execute as @s[scores={cutSceneTimer=566}] run tp @s 8005.221 136.0926 -18.63616 500.0873 24.31661
execute as @s[scores={cutSceneTimer=567}] run tp @s 8005.205 136.0809 -18.65184 500.1061 24.3094
execute as @s[scores={cutSceneTimer=568}] run tp @s 8005.188 136.0693 -18.66738 500.125 24.30208
execute as @s[scores={cutSceneTimer=569}] run tp @s 8005.171 136.0578 -18.68288 500.144 24.29467
execute as @s[scores={cutSceneTimer=570}] run tp @s 8005.155 136.0464 -18.69805 500.1627 24.28734
execute as @s[scores={cutSceneTimer=571}] run tp @s 8005.139 136.0351 -18.71317 500.1815 24.27991
execute as @s[scores={cutSceneTimer=572}] run tp @s 8005.123 136.0238 -18.72834 500.2006 24.27234
execute as @s[scores={cutSceneTimer=573}] run tp @s 8005.106 136.0123 -18.74364 500.2201 24.26458
execute as @s[scores={cutSceneTimer=574}] run tp @s 8005.09 136.0011 -18.75865 500.2393 24.25688
execute as @s[scores={cutSceneTimer=575}] run tp @s 8005.074 135.9898 -18.7737 500.2588 24.24904
execute as @s[scores={cutSceneTimer=576}] run tp @s 8005.058 135.9783 -18.78893 500.2788 24.24095
execute as @s[scores={cutSceneTimer=577}] run tp @s 8005.042 135.9671 -18.80383 500.2984 24.23301
execute as @s[scores={cutSceneTimer=578}] run tp @s 8005.025 135.9557 -18.81897 500.3187 24.22474
execute as @s[scores={cutSceneTimer=579}] run tp @s 8005.009 135.9445 -18.83378 500.3387 24.21662
execute as @s[scores={cutSceneTimer=580}] run tp @s 8004.992 135.9332 -18.84884 500.3593 24.20818
execute as @s[scores={cutSceneTimer=581}] run tp @s 8004.976 135.922 -18.86369 500.3798 24.19981
execute as @s[scores={cutSceneTimer=582}] run tp @s 8004.96 135.9109 -18.8784 500.4001 24.19142
execute as @s[scores={cutSceneTimer=583}] run tp @s 8004.944 135.8998 -18.89307 500.4207 24.18297
execute as @s[scores={cutSceneTimer=584}] run tp @s 8004.928 135.8887 -18.90771 500.4415 24.17442
execute as @s[scores={cutSceneTimer=585}] run tp @s 8004.912 135.8775 -18.92248 500.4627 24.16565
execute as @s[scores={cutSceneTimer=586}] run tp @s 8004.896 135.8663 -18.93724 500.4843 24.15679
execute as @s[scores={cutSceneTimer=587}] run tp @s 8004.879 135.8553 -18.95177 500.5056 24.14799
execute as @s[scores={cutSceneTimer=588}] run tp @s 8004.863 135.8442 -18.96635 500.5272 24.13904
execute as @s[scores={cutSceneTimer=589}] run tp @s 8004.847 135.833 -18.98109 500.5494 24.12989
execute as @s[scores={cutSceneTimer=590}] run tp @s 8004.831 135.822 -18.99551 500.5714 24.12085
execute as @s[scores={cutSceneTimer=591}] run tp @s 8004.815 135.8109 -19.01018 500.5939 24.11157
execute as @s[scores={cutSceneTimer=592}] run tp @s 8004.799 135.7997 -19.02482 500.6165 24.10223
execute as @s[scores={cutSceneTimer=593}] run tp @s 8004.783 135.7888 -19.03914 500.6391 24.09295
execute as @s[scores={cutSceneTimer=593},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.03 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=593},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=594}] run tp @s 8004.767 135.7777 -19.05371 500.6621 24.0835
execute as @s[scores={cutSceneTimer=595}] run tp @s 8004.75 135.7666 -19.06815 500.6851 24.07404
execute as @s[scores={cutSceneTimer=596}] run tp @s 8004.74 135.7593 -19.07778 500.7006 24.0677
execute as @s[scores={cutSceneTimer=597}] run tp @s 8004.724 135.7483 -19.09217 500.7241 24.05809
execute as @s[scores={cutSceneTimer=598}] run tp @s 8004.707 135.7372 -19.10671 500.748 24.0483
execute as @s[scores={cutSceneTimer=599}] run tp @s 8004.691 135.7261 -19.12112 500.7723 24.03841
execute as @s[scores={cutSceneTimer=600}] run tp @s 8004.675 135.7152 -19.1353 500.7966 24.02854
execute as @s[scores={cutSceneTimer=601}] run tp @s 8004.659 135.7043 -19.14955 500.8212 24.01851
execute as @s[scores={cutSceneTimer=602}] run tp @s 8004.643 135.6935 -19.16358 500.8459 24.00856
execute as @s[scores={cutSceneTimer=603}] run tp @s 8004.627 135.6826 -19.17777 500.8712 23.99836
execute as @s[scores={cutSceneTimer=604}] run tp @s 8004.611 135.6718 -19.19193 500.8968 23.98807
execute as @s[scores={cutSceneTimer=605}] run tp @s 8004.595 135.6609 -19.20604 500.9227 23.97771
execute as @s[scores={cutSceneTimer=606}] run tp @s 8004.579 135.6502 -19.21995 500.9484 23.96744
execute as @s[scores={cutSceneTimer=607}] run tp @s 8004.563 135.6395 -19.23392 500.9746 23.95701
execute as @s[scores={cutSceneTimer=608}] run tp @s 8004.547 135.6288 -19.24777 501.0009 23.94659
execute as @s[scores={cutSceneTimer=609}] run tp @s 8004.532 135.6181 -19.26158 501.0274 23.93611
execute as @s[scores={cutSceneTimer=610}] run tp @s 8004.516 135.6074 -19.27553 501.0547 23.92537
execute as @s[scores={cutSceneTimer=611}] run tp @s 8004.5 135.5968 -19.28929 501.0818 23.91474
execute as @s[scores={cutSceneTimer=612}] run tp @s 8004.484 135.5862 -19.30301 501.1093 23.90404
execute as @s[scores={cutSceneTimer=613}] run tp @s 8004.468 135.5754 -19.31697 501.1378 23.89294
execute as @s[scores={cutSceneTimer=614}] run tp @s 8004.452 135.5648 -19.33065 501.1658 23.88211
execute as @s[scores={cutSceneTimer=615}] run tp @s 8004.437 135.5541 -19.34445 501.1947 23.87099
execute as @s[scores={cutSceneTimer=616}] run tp @s 8004.42 135.5435 -19.35815 501.2237 23.85988
execute as @s[scores={cutSceneTimer=617}] run tp @s 8004.404 135.5328 -19.372 501.2535 23.84851
execute as @s[scores={cutSceneTimer=618}] run tp @s 8004.389 135.5223 -19.38556 501.2829 23.83737
execute as @s[scores={cutSceneTimer=619}] run tp @s 8004.373 135.5118 -19.39908 501.3126 23.82617
execute as @s[scores={cutSceneTimer=620}] run tp @s 8004.357 135.5011 -19.41283 501.3433 23.81463
execute as @s[scores={cutSceneTimer=621}] run tp @s 8004.341 135.4905 -19.42657 501.3745 23.803
execute as @s[scores={cutSceneTimer=622}] run tp @s 8004.325 135.4798 -19.44027 501.4058 23.79134
execute as @s[scores={cutSceneTimer=623}] run tp @s 8004.309 135.4693 -19.45386 501.4373 23.77971
execute as @s[scores={cutSceneTimer=624}] run tp @s 8004.293 135.4587 -19.46751 501.4692 23.768
execute as @s[scores={cutSceneTimer=625}] run tp @s 8004.277 135.4482 -19.48096 501.5011 23.75634
execute as @s[scores={cutSceneTimer=626}] run tp @s 8004.261 135.4377 -19.49455 501.5335 23.74458
execute as @s[scores={cutSceneTimer=627}] run tp @s 8004.251 135.4306 -19.5036 501.5552 23.73673
execute as @s[scores={cutSceneTimer=628}] run tp @s 8004.235 135.4201 -19.51714 501.5881 23.72491
execute as @s[scores={cutSceneTimer=629}] run tp @s 8004.219 135.4097 -19.53049 501.6213 23.71303
execute as @s[scores={cutSceneTimer=630}] run tp @s 8004.204 135.3994 -19.54373 501.6547 23.70113
execute as @s[scores={cutSceneTimer=631}] run tp @s 8004.188 135.389 -19.5571 501.6888 23.68908
execute as @s[scores={cutSceneTimer=632}] run tp @s 8004.172 135.3786 -19.57047 501.7234 23.67692
execute as @s[scores={cutSceneTimer=633}] run tp @s 8004.156 135.3683 -19.58372 501.7583 23.66475
execute as @s[scores={cutSceneTimer=634}] run tp @s 8004.14 135.3579 -19.59702 501.7938 23.65242
execute as @s[scores={cutSceneTimer=635}] run tp @s 8004.125 135.3477 -19.61013 501.8293 23.6402
execute as @s[scores={cutSceneTimer=636}] run tp @s 8004.109 135.3375 -19.62322 501.8651 23.62791
execute as @s[scores={cutSceneTimer=637}] run tp @s 8004.093 135.3271 -19.6365 501.902 23.61534
execute as @s[scores={cutSceneTimer=638}] run tp @s 8004.078 135.3169 -19.64962 501.939 23.60283
execute as @s[scores={cutSceneTimer=639}] run tp @s 8004.062 135.3067 -19.66272 501.9764 23.59026
execute as @s[scores={cutSceneTimer=640}] run tp @s 8004.046 135.2965 -19.67571 502.0139 23.57773
execute as @s[scores={cutSceneTimer=641}] run tp @s 8004.031 135.2864 -19.68875 502.0522 23.56503
execute as @s[scores={cutSceneTimer=642}] run tp @s 8004.015 135.2762 -19.70179 502.0909 23.55226
execute as @s[scores={cutSceneTimer=643}] run tp @s 8004.00 135.266 -19.71479 502.1301 23.53943
execute as @s[scores={cutSceneTimer=644}] run tp @s 8003.983 135.2558 -19.72794 502.1704 23.5263
execute as @s[scores={cutSceneTimer=645}] run tp @s 8003.968 135.2457 -19.7409 502.2106 23.51335
execute as @s[scores={cutSceneTimer=646}] run tp @s 8003.952 135.2356 -19.75375 502.2507 23.50045
execute as @s[scores={cutSceneTimer=647}] run tp @s 8003.937 135.2255 -19.76667 502.2917 23.48739
execute as @s[scores={cutSceneTimer=648}] run tp @s 8003.921 135.2154 -19.77964 502.3336 23.47413
execute as @s[scores={cutSceneTimer=649}] run tp @s 8003.905 135.2054 -19.79243 502.3752 23.46107
execute as @s[scores={cutSceneTimer=650}] run tp @s 8003.89 135.1953 -19.80544 502.4184 23.44757
execute as @s[scores={cutSceneTimer=651}] run tp @s 8003.874 135.1853 -19.81819 502.4609 23.4344
execute as @s[scores={cutSceneTimer=652}] run tp @s 8003.858 135.1752 -19.83108 502.5047 23.42092
execute as @s[scores={cutSceneTimer=653}] run tp @s 8003.843 135.1653 -19.84386 502.5486 23.40751
execute as @s[scores={cutSceneTimer=654}] run tp @s 8003.827 135.1551 -19.8568 502.5938 23.3938
execute as @s[scores={cutSceneTimer=655}] run tp @s 8003.811 135.1451 -19.86963 502.639 23.38017
execute as @s[scores={cutSceneTimer=656}] run tp @s 8003.796 135.1352 -19.88236 502.6843 23.36661
execute as @s[scores={cutSceneTimer=657}] run tp @s 8003.78 135.1251 -19.89523 502.7307 23.35281
execute as @s[scores={cutSceneTimer=658}] run tp @s 8003.764 135.1152 -19.90792 502.777 23.33917
execute as @s[scores={cutSceneTimer=659}] run tp @s 8003.749 135.1053 -19.92067 502.824 23.3254
execute as @s[scores={cutSceneTimer=660}] run tp @s 8003.733 135.0953 -19.93348 502.8716 23.31155
execute as @s[scores={cutSceneTimer=661}] run tp @s 8003.717 135.0855 -19.94604 502.9192 23.29784
execute as @s[scores={cutSceneTimer=662}] run tp @s 8003.702 135.0757 -19.95856 502.9672 23.28407
execute as @s[scores={cutSceneTimer=663}] run tp @s 8003.687 135.066 -19.97108 503.0157 23.27025
execute as @s[scores={cutSceneTimer=664}] run tp @s 8003.671 135.056 -19.9838 503.0652 23.25628
execute as @s[scores={cutSceneTimer=665}] run tp @s 8003.66 135.0494 -19.99228 503.0983 23.24698
execute as @s[scores={cutSceneTimer=666}] run tp @s 8003.645 135.0396 -20.00491 503.1483 23.23302
execute as @s[scores={cutSceneTimer=667}] run tp @s 8003.629 135.0297 -20.01761 503.1992 23.21893
execute as @s[scores={cutSceneTimer=668}] run tp @s 8003.613 135.0199 -20.03012 503.2504 23.20483
execute as @s[scores={cutSceneTimer=669}] run tp @s 8003.598 135.0102 -20.0426 503.3022 23.19068
execute as @s[scores={cutSceneTimer=670}] run tp @s 8003.582 135.0004 -20.05516 503.3549 23.1764
execute as @s[scores={cutSceneTimer=671}] run tp @s 8003.566 134.9906 -20.06779 503.4087 23.16194
execute as @s[scores={cutSceneTimer=672}] run tp @s 8003.55 134.9808 -20.08039 503.4632 23.14738
execute as @s[scores={cutSceneTimer=673}] run tp @s 8003.535 134.9711 -20.0929 503.5179 23.13286
execute as @s[scores={cutSceneTimer=674}] run tp @s 8003.519 134.9613 -20.10545 503.5737 23.11819
execute as @s[scores={cutSceneTimer=675}] run tp @s 8003.503 134.9516 -20.118 503.6304 23.10339
execute as @s[scores={cutSceneTimer=676}] run tp @s 8003.488 134.942 -20.13038 503.6865 23.08882
execute as @s[scores={cutSceneTimer=677}] run tp @s 8003.472 134.9324 -20.14274 503.7432 23.07423
execute as @s[scores={cutSceneTimer=678}] run tp @s 8003.457 134.9229 -20.15501 503.8 23.05972
execute as @s[scores={cutSceneTimer=679}] run tp @s 8003.441 134.9133 -20.16726 503.8575 23.04515
execute as @s[scores={cutSceneTimer=680}] run tp @s 8003.426 134.9039 -20.1795 503.9155 23.03056
execute as @s[scores={cutSceneTimer=681}] run tp @s 8003.416 134.8975 -20.18765 503.9545 23.0208
execute as @s[scores={cutSceneTimer=682}] run tp @s 8003.396 134.8852 -20.20354 504.0305 23.00191
execute as @s[scores={cutSceneTimer=683}] run tp @s 8003.38 134.8758 -20.21574 504.0903 22.9872
execute as @s[scores={cutSceneTimer=684}] run tp @s 8003.364 134.8657 -20.2288 504.1572 22.97086
execute as @s[scores={cutSceneTimer=684},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.03 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=684},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=685}] run tp @s 8003.348 134.8563 -20.24097 504.2183 22.95604
execute as @s[scores={cutSceneTimer=686}] run tp @s 8003.333 134.8466 -20.25354 504.2828 22.9405
execute as @s[scores={cutSceneTimer=687}] run tp @s 8003.317 134.837 -20.26592 504.3466 22.92526
execute as @s[scores={cutSceneTimer=688}] run tp @s 8003.303 134.8289 -20.27636 504.3973 22.91325
execute as @s[scores={cutSceneTimer=689}] run tp @s 8003.288 134.8195 -20.28855 504.4613 22.89815
execute as @s[scores={cutSceneTimer=690}] run tp @s 8003.272 134.8102 -20.30067 504.5256 22.88313
execute as @s[scores={cutSceneTimer=691}] run tp @s 8003.257 134.8007 -20.31303 504.5924 22.8676
execute as @s[scores={cutSceneTimer=692}] run tp @s 8003.241 134.7913 -20.32522 504.6588 22.85232
execute as @s[scores={cutSceneTimer=693}] run tp @s 8003.226 134.782 -20.33737 504.7256 22.83704
execute as @s[scores={cutSceneTimer=694}] run tp @s 8003.21 134.7726 -20.34959 504.7937 22.82158
execute as @s[scores={cutSceneTimer=695}] run tp @s 8003.194 134.7631 -20.36188 504.8632 22.80593
execute as @s[scores={cutSceneTimer=696}] run tp @s 8003.179 134.7537 -20.37415 504.9333 22.79027
execute as @s[scores={cutSceneTimer=697}] run tp @s 8003.163 134.7443 -20.38642 505.004 22.77457
execute as @s[scores={cutSceneTimer=698}] run tp @s 8003.147 134.7351 -20.39843 505.0735 22.75927
execute as @s[scores={cutSceneTimer=699}] run tp @s 8003.132 134.7258 -20.41067 505.1454 22.74355
execute as @s[scores={cutSceneTimer=700}] run tp @s 8003.116 134.7166 -20.42267 505.2163 22.72816
execute as @s[scores={cutSceneTimer=701}] run tp @s 8003.101 134.7072 -20.43488 505.2895 22.71243
execute as @s[scores={cutSceneTimer=702}] run tp @s 8003.085 134.6979 -20.44711 505.363 22.69672
execute as @s[scores={cutSceneTimer=703}] run tp @s 8003.07 134.6888 -20.45907 505.4361 22.68123
execute as @s[scores={cutSceneTimer=704}] run tp @s 8003.054 134.6796 -20.47118 505.5104 22.66558
execute as @s[scores={cutSceneTimer=705}] run tp @s 8003.04 134.6711 -20.48231 505.58 22.65105
execute as @s[scores={cutSceneTimer=706}] run tp @s 8003.027 134.6639 -20.49178 505.636 22.63941
execute as @s[scores={cutSceneTimer=707}] run tp @s 8003.01 134.6535 -20.50541 505.7238 22.62131
execute as @s[scores={cutSceneTimer=708}] run tp @s 8002.994 134.6443 -20.51755 505.8023 22.60525
execute as @s[scores={cutSceneTimer=709}] run tp @s 8002.979 134.6352 -20.52954 505.8803 22.58942
execute as @s[scores={cutSceneTimer=710}] run tp @s 8002.963 134.6262 -20.54145 505.9583 22.57371
execute as @s[scores={cutSceneTimer=711}] run tp @s 8002.948 134.6172 -20.55342 506.0377 22.55783
execute as @s[scores={cutSceneTimer=712}] run tp @s 8002.932 134.6082 -20.56532 506.1171 22.54206
execute as @s[scores={cutSceneTimer=713}] run tp @s 8002.917 134.5991 -20.57736 506.1988 22.52596
execute as @s[scores={cutSceneTimer=714}] run tp @s 8002.901 134.5901 -20.58924 506.2797 22.51014
execute as @s[scores={cutSceneTimer=715}] run tp @s 8002.886 134.5811 -20.60119 506.3621 22.49415
execute as @s[scores={cutSceneTimer=716}] run tp @s 8002.875 134.5752 -20.6091 506.417 22.48357
execute as @s[scores={cutSceneTimer=716},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.031 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=716},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=717}] run tp @s 8002.857 134.5648 -20.62287 506.5092 22.46588
execute as @s[scores={cutSceneTimer=718}] run tp @s 8002.842 134.5559 -20.63476 506.5932 22.44992
execute as @s[scores={cutSceneTimer=719}] run tp @s 8002.827 134.547 -20.64668 506.6782 22.43388
execute as @s[scores={cutSceneTimer=720}] run tp @s 8002.811 134.5381 -20.65853 506.7635 22.41788
execute as @s[scores={cutSceneTimer=721}] run tp @s 8002.795 134.5291 -20.6706 506.8511 22.40159
execute as @s[scores={cutSceneTimer=722}] run tp @s 8002.78 134.5202 -20.68244 506.938 22.38556
execute as @s[scores={cutSceneTimer=723}] run tp @s 8002.764 134.5112 -20.69449 507.0276 22.36915
execute as @s[scores={cutSceneTimer=724}] run tp @s 8002.749 134.5024 -20.70632 507.1161 22.35306
execute as @s[scores={cutSceneTimer=725}] run tp @s 8002.733 134.4937 -20.71814 507.2054 22.33693
execute as @s[scores={cutSceneTimer=726}] run tp @s 8002.718 134.4847 -20.73018 507.2977 22.3204
execute as @s[scores={cutSceneTimer=727}] run tp @s 8002.702 134.4759 -20.74208 507.3895 22.30409
execute as @s[scores={cutSceneTimer=728}] run tp @s 8002.687 134.4671 -20.75396 507.4819 22.28777
execute as @s[scores={cutSceneTimer=729}] run tp @s 8002.67 134.4581 -20.7661 507.5782 22.2709
execute as @s[scores={cutSceneTimer=730}] run tp @s 8002.655 134.4493 -20.77803 507.6732 22.2544
execute as @s[scores={cutSceneTimer=731}] run tp @s 8002.639 134.4404 -20.79006 507.7703 22.23765
execute as @s[scores={cutSceneTimer=732}] run tp @s 8002.624 134.4317 -20.80193 507.8662 22.22122
execute as @s[scores={cutSceneTimer=733}] run tp @s 8002.608 134.4229 -20.81395 507.9648 22.20445
execute as @s[scores={cutSceneTimer=734}] run tp @s 8002.592 134.414 -20.82599 508.0643 22.18766
execute as @s[scores={cutSceneTimer=735}] run tp @s 8002.576 134.4053 -20.83792 508.1635 22.17106
execute as @s[scores={cutSceneTimer=735},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.032 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=735},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=736}] run tp @s 8002.561 134.3966 -20.84979 508.2628 22.15456
execute as @s[scores={cutSceneTimer=737}] run tp @s 8002.545 134.388 -20.86158 508.3622 22.13818
execute as @s[scores={cutSceneTimer=738}] run tp @s 8002.529 134.3789 -20.87406 508.4674 22.12094
execute as @s[scores={cutSceneTimer=739}] run tp @s 8002.513 134.3701 -20.88607 508.5692 22.10441
execute as @s[scores={cutSceneTimer=740}] run tp @s 8002.498 134.3616 -20.89785 508.6711 22.08797
execute as @s[scores={cutSceneTimer=741}] run tp @s 8002.485 134.3548 -20.90719 508.7494 22.07543
execute as @s[scores={cutSceneTimer=742}] run tp @s 8002.47 134.3462 -20.91905 508.8538 22.05881
execute as @s[scores={cutSceneTimer=743}] run tp @s 8002.454 134.3375 -20.93106 508.9611 22.04186
execute as @s[scores={cutSceneTimer=744}] run tp @s 8002.438 134.3284 -20.94367 509.0774 22.02363
execute as @s[scores={cutSceneTimer=745}] run tp @s 8002.422 134.3199 -20.95555 509.1849 22.0069
execute as @s[scores={cutSceneTimer=746}] run tp @s 8002.406 134.3114 -20.96733 509.292 21.99037
execute as @s[scores={cutSceneTimer=747}] run tp @s 8002.391 134.3029 -20.97911 509.4 21.9738
execute as @s[scores={cutSceneTimer=748}] run tp @s 8002.375 134.2943 -20.99112 509.5116 21.95683
execute as @s[scores={cutSceneTimer=749}] run tp @s 8002.359 134.2858 -21.00305 509.623 21.94
execute as @s[scores={cutSceneTimer=750}] run tp @s 8002.344 134.2774 -21.01484 509.7339 21.92339
execute as @s[scores={cutSceneTimer=750},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.033 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=750},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=751}] run tp @s 8002.328 134.2689 -21.02677 509.847 21.90657
execute as @s[scores={cutSceneTimer=752}] run tp @s 8002.312 134.2604 -21.03871 509.9608 21.88975
execute as @s[scores={cutSceneTimer=753}] run tp @s 8002.296 134.252 -21.0505 510.0744 21.8731
execute as @s[scores={cutSceneTimer=754}] run tp @s 8002.281 134.2435 -21.06252 510.1903 21.85622
execute as @s[scores={cutSceneTimer=755}] run tp @s 8002.265 134.2352 -21.07431 510.3057 21.83956
execute as @s[scores={cutSceneTimer=756}] run tp @s 8002.25 134.2268 -21.08617 510.4223 21.82283
execute as @s[scores={cutSceneTimer=757}] run tp @s 8002.234 134.2184 -21.09805 510.5399 21.80609
execute as @s[scores={cutSceneTimer=758}] run tp @s 8002.223 134.2128 -21.10615 510.6191 21.79489
execute as @s[scores={cutSceneTimer=759}] run tp @s 8002.208 134.2044 -21.11802 510.7379 21.77819
execute as @s[scores={cutSceneTimer=760}] run tp @s 8002.191 134.1958 -21.13031 510.8596 21.76119
execute as @s[scores={cutSceneTimer=761}] run tp @s 8002.175 134.1875 -21.14226 510.9816 21.7443
execute as @s[scores={cutSceneTimer=762}] run tp @s 8002.159 134.1791 -21.15431 511.1056 21.72724
execute as @s[scores={cutSceneTimer=763}] run tp @s 8002.144 134.1707 -21.16636 511.231 21.71012
execute as @s[scores={cutSceneTimer=763},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.034 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=763},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=764}] run tp @s 8002.127 134.1624 -21.17833 511.3568 21.69309
execute as @s[scores={cutSceneTimer=765}] run tp @s 8002.112 134.1542 -21.19016 511.4814 21.67632
execute as @s[scores={cutSceneTimer=766}] run tp @s 8002.096 134.1459 -21.20206 511.608 21.65942
execute as @s[scores={cutSceneTimer=767}] run tp @s 8002.081 134.1377 -21.21398 511.7358 21.64249
execute as @s[scores={cutSceneTimer=768}] run tp @s 8002.064 134.1295 -21.22597 511.8657 21.62539
execute as @s[scores={cutSceneTimer=769}] run tp @s 8002.049 134.1213 -21.23782 511.9944 21.60861
execute as @s[scores={cutSceneTimer=770}] run tp @s 8002.033 134.1132 -21.24974 512.125 21.59167
execute as @s[scores={cutSceneTimer=771}] run tp @s 8002.018 134.105 -21.26167 512.2568 21.57471
execute as @s[scores={cutSceneTimer=772}] run tp @s 8002.002 134.0969 -21.27354 512.3884 21.5579
execute as @s[scores={cutSceneTimer=773}] run tp @s 8001.986 134.0888 -21.28541 512.521 21.54108
execute as @s[scores={cutSceneTimer=773},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.035 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=773},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=774}] run tp @s 8001.97 134.0806 -21.29751 512.6584 21.52379
execute as @s[scores={cutSceneTimer=775}] run tp @s 8001.954 134.0722 -21.30996 512.8024 21.50583
execute as @s[scores={cutSceneTimer=776}] run tp @s 8001.938 134.0641 -21.32191 512.9392 21.48887
execute as @s[scores={cutSceneTimer=777}] run tp @s 8001.922 134.056 -21.33396 513.0782 21.47176
execute as @s[scores={cutSceneTimer=778}] run tp @s 8001.906 134.0479 -21.34603 513.2183 21.45466
execute as @s[scores={cutSceneTimer=779}] run tp @s 8001.89 134.0397 -21.35825 513.361 21.43736
execute as @s[scores={cutSceneTimer=780}] run tp @s 8001.874 134.0317 -21.37018 513.501 21.42053
execute as @s[scores={cutSceneTimer=781}] run tp @s 8001.858 134.0237 -21.38225 513.6434 21.40351
execute as @s[scores={cutSceneTimer=782}] run tp @s 8001.842 134.0157 -21.39419 513.7854 21.38668
execute as @s[scores={cutSceneTimer=783}] run tp @s 8001.827 134.0078 -21.40614 513.9285 21.36985
execute as @s[scores={cutSceneTimer=783},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.036 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=783},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=784}] run tp @s 8001.821 134.0051 -21.41013 513.9764 21.36422
execute as @s[scores={cutSceneTimer=785}] run tp @s 8001.799 133.9937 -21.42737 514.1761 21.34098
execute as @s[scores={cutSceneTimer=786}] run tp @s 8001.783 133.9857 -21.43964 514.3258 21.32373
execute as @s[scores={cutSceneTimer=787}] run tp @s 8001.767 133.9778 -21.45164 514.4731 21.30687
execute as @s[scores={cutSceneTimer=788}] run tp @s 8001.751 133.9699 -21.46369 514.6219 21.28995
execute as @s[scores={cutSceneTimer=789}] run tp @s 8001.735 133.962 -21.47569 514.7712 21.27186
execute as @s[scores={cutSceneTimer=790}] run tp @s 8001.718 133.9536 -21.48857 514.9381 21.24884
execute as @s[scores={cutSceneTimer=791}] run tp @s 8001.702 133.9458 -21.50067 515.0934 21.22641
execute as @s[scores={cutSceneTimer=791},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.037 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=791},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=792}] run tp @s 8001.686 133.9379 -21.51286 515.252 21.20251
execute as @s[scores={cutSceneTimer=793}] run tp @s 8001.67 133.93 -21.52506 515.4124 21.17727
execute as @s[scores={cutSceneTimer=794}] run tp @s 8001.654 133.9221 -21.53727 515.574 21.15074
execute as @s[scores={cutSceneTimer=795}] run tp @s 8001.638 133.9143 -21.54941 515.7354 21.12316
execute as @s[scores={cutSceneTimer=796}] run tp @s 8001.622 133.9065 -21.56156 515.8978 21.09425
execute as @s[scores={cutSceneTimer=797}] run tp @s 8001.606 133.8987 -21.57373 516.0615 21.06399
execute as @s[scores={cutSceneTimer=798}] run tp @s 8001.59 133.8909 -21.58598 516.2273 21.03214
execute as @s[scores={cutSceneTimer=799}] run tp @s 8001.574 133.8831 -21.59825 516.3939 20.99891
execute as @s[scores={cutSceneTimer=799},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.038 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=799},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=800}] run tp @s 8001.558 133.8754 -21.61045 516.56 20.96455
execute as @s[scores={cutSceneTimer=801}] run tp @s 8001.542 133.8677 -21.62259 516.7259 20.92903
execute as @s[scores={cutSceneTimer=802}] run tp @s 8001.526 133.8599 -21.63489 516.8945 20.89164
execute as @s[scores={cutSceneTimer=803}] run tp @s 8001.51 133.8522 -21.64714 517.0627 20.85304
execute as @s[scores={cutSceneTimer=804}] run tp @s 8001.494 133.8445 -21.65947 517.2324 20.81282
execute as @s[scores={cutSceneTimer=805}] run tp @s 8001.478 133.8368 -21.67182 517.4023 20.77119
execute as @s[scores={cutSceneTimer=806}] run tp @s 8001.461 133.829 -21.68434 517.5729 20.72807
execute as @s[scores={cutSceneTimer=807}] run tp @s 8001.445 133.8214 -21.69656 517.7428 20.68374
execute as @s[scores={cutSceneTimer=807},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.039 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=807},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=808}] run tp @s 8001.429 133.8138 -21.7088 517.9133 20.63791
execute as @s[scores={cutSceneTimer=809}] run tp @s 8001.418 133.8087 -21.71711 518.0274 20.60644
execute as @s[scores={cutSceneTimer=810}] run tp @s 8001.402 133.8011 -21.72937 518.1989 20.55801
execute as @s[scores={cutSceneTimer=811}] run tp @s 8001.386 133.7935 -21.74172 518.3712 20.50792
execute as @s[scores={cutSceneTimer=812}] run tp @s 8001.37 133.7859 -21.75416 518.5446 20.45606
execute as @s[scores={cutSceneTimer=813}] run tp @s 8001.354 133.7784 -21.76654 518.7184 20.40262
execute as @s[scores={cutSceneTimer=814}] run tp @s 8001.336 133.7702 -21.77995 518.9084 20.34256
execute as @s[scores={cutSceneTimer=814},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.04 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=814},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=815}] run tp @s 8001.32 133.7627 -21.79228 519.0829 20.28582
execute as @s[scores={cutSceneTimer=816}] run tp @s 8001.304 133.7551 -21.80492 519.2641 20.2254
execute as @s[scores={cutSceneTimer=817}] run tp @s 8001.288 133.7476 -21.81737 519.4418 20.1646
execute as @s[scores={cutSceneTimer=818}] run tp @s 8001.271 133.7402 -21.82975 519.6185 20.10266
execute as @s[scores={cutSceneTimer=819}] run tp @s 8001.255 133.7327 -21.84223 519.7979 20.03837
execute as @s[scores={cutSceneTimer=820}] run tp @s 8001.239 133.7252 -21.85472 519.9786 19.97222
execute as @s[scores={cutSceneTimer=820},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.041 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=820},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=821}] run tp @s 8001.225 133.719 -21.86516 520.1298 19.91605
execute as @s[scores={cutSceneTimer=822}] run tp @s 8001.209 133.7116 -21.87761 520.3138 19.84716
execute as @s[scores={cutSceneTimer=823}] run tp @s 8001.192 133.7041 -21.89032 520.5079 19.77603
execute as @s[scores={cutSceneTimer=824}] run tp @s 8001.174 133.6957 -21.90457 520.7458 19.6915
execute as @s[scores={cutSceneTimer=825}] run tp @s 8001.158 133.6883 -21.91729 520.968 19.61465
execute as @s[scores={cutSceneTimer=826}] run tp @s 8001.142 133.6809 -21.92981 521.1954 19.53774
execute as @s[scores={cutSceneTimer=826},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.042 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=826},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=827}] run tp @s 8001.125 133.6736 -21.94235 521.4332 19.45887
execute as @s[scores={cutSceneTimer=828}] run tp @s 8001.109 133.6662 -21.95507 521.6862 19.37645
execute as @s[scores={cutSceneTimer=829}] run tp @s 8001.093 133.6589 -21.96765 521.9449 19.29349
execute as @s[scores={cutSceneTimer=830}] run tp @s 8001.074 133.6507 -21.98191 522.2472 19.1979
execute as @s[scores={cutSceneTimer=831}] run tp @s 8001.063 133.6458 -21.99041 522.4329 19.13985
execute as @s[scores={cutSceneTimer=832}] run tp @s 8001.047 133.6385 -22.00312 522.7197 19.051
execute as @s[scores={cutSceneTimer=832},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.043 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=832},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=833}] run tp @s 8001.03 133.6312 -22.01593 523.0171 18.95976
execute as @s[scores={cutSceneTimer=834}] run tp @s 8001.014 133.6239 -22.02877 523.3251 18.86606
execute as @s[scores={cutSceneTimer=835}] run tp @s 8000.998 133.6166 -22.04155 523.6422 18.77029
execute as @s[scores={cutSceneTimer=836}] run tp @s 8000.981 133.6094 -22.05426 523.9675 18.67267
execute as @s[scores={cutSceneTimer=837}] run tp @s 8000.964 133.6022 -22.06712 524.3047 18.57202
execute as @s[scores={cutSceneTimer=838}] run tp @s 8000.948 133.595 -22.07996 524.6504 18.46925
execute as @s[scores={cutSceneTimer=838},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.044 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=838},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=839}] run tp @s 8000.932 133.5878 -22.09273 525.0035 18.36466
execute as @s[scores={cutSceneTimer=840}] run tp @s 8000.915 133.5806 -22.10568 525.3697 18.25648
execute as @s[scores={cutSceneTimer=841}] run tp @s 8000.898 133.5733 -22.11875 525.7488 18.1447
execute as @s[scores={cutSceneTimer=842}] run tp @s 8000.882 133.5662 -22.13159 526.1289 18.03277
execute as @s[scores={cutSceneTimer=843}] run tp @s 8000.865 133.559 -22.1447 526.5271 17.91556
execute as @s[scores={cutSceneTimer=843},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.045 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=843},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=844}] run tp @s 8000.849 133.5519 -22.15759 526.9246 17.79853
execute as @s[scores={cutSceneTimer=845}] run tp @s 8000.833 133.5448 -22.1705 527.3303 17.67902
execute as @s[scores={cutSceneTimer=846}] run tp @s 8000.815 133.5376 -22.18367 527.7554 17.55367
execute as @s[scores={cutSceneTimer=847}] run tp @s 8000.799 133.5305 -22.19679 528.1859 17.42648
execute as @s[scores={cutSceneTimer=848}] run tp @s 8000.782 133.5234 -22.20985 528.6203 17.29782
execute as @s[scores={cutSceneTimer=848},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.046 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=848},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=849}] run tp @s 8000.766 133.5164 -22.22285 529.059 17.16762
execute as @s[scores={cutSceneTimer=850}] run tp @s 8000.749 133.5094 -22.23587 529.5052 17.0347
execute as @s[scores={cutSceneTimer=851}] run tp @s 8000.732 133.5023 -22.24917 529.9728 16.89499
execute as @s[scores={cutSceneTimer=852}] run tp @s 8000.715 133.4952 -22.26249 530.4481 16.75239
execute as @s[scores={cutSceneTimer=853}] run tp @s 8000.698 133.4881 -22.27584 530.9311 16.60687
execute as @s[scores={cutSceneTimer=853},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.047 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=853},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=854}] run tp @s 8000.682 133.481 -22.28913 531.4169 16.45984
execute as @s[scores={cutSceneTimer=855}] run tp @s 8000.665 133.4741 -22.30235 531.9051 16.31137
execute as @s[scores={cutSceneTimer=856}] run tp @s 8000.648 133.4671 -22.31552 532.3967 16.16111
execute as @s[scores={cutSceneTimer=857}] run tp @s 8000.631 133.4601 -22.32897 532.9075 16.00418
execute as @s[scores={cutSceneTimer=857},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.048 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=857},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=858}] run tp @s 8000.614 133.4531 -22.34246 533.424 15.84456
execute as @s[scores={cutSceneTimer=859}] run tp @s 8000.597 133.4461 -22.35596 533.9452 15.68258
execute as @s[scores={cutSceneTimer=860}] run tp @s 8000.581 133.4391 -22.3695 534.4706 15.51827
execute as @s[scores={cutSceneTimer=861}] run tp @s 8000.563 133.4321 -22.38305 534.9998 15.35188
execute as @s[scores={cutSceneTimer=862}] run tp @s 8000.552 133.4274 -22.39211 535.3543 15.23979
execute as @s[scores={cutSceneTimer=862},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.049 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=862},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=863}] run tp @s 8000.535 133.4206 -22.40545 535.8906 15.06939
execute as @s[scores={cutSceneTimer=864}] run tp @s 8000.518 133.4137 -22.41907 536.4354 14.89521
execute as @s[scores={cutSceneTimer=865}] run tp @s 8000.501 133.4068 -22.43247 536.9839 14.71871
execute as @s[scores={cutSceneTimer=866}] run tp @s 8000.485 133.4001 -22.44589 537.5385 14.53916
execute as @s[scores={cutSceneTimer=866},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.05 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=866},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=867}] run tp @s 8000.467 133.3929 -22.46015 538.1251 14.34802
execute as @s[scores={cutSceneTimer=868}] run tp @s 8000.45 133.3861 -22.47363 538.6915 14.1623
execute as @s[scores={cutSceneTimer=869}] run tp @s 8000.433 133.3793 -22.48729 539.2711 13.97106
execute as @s[scores={cutSceneTimer=870}] run tp @s 8000.416 133.3725 -22.50082 539.8486 13.77938
execute as @s[scores={cutSceneTimer=871}] run tp @s 8000.399 133.3658 -22.51439 180.4316 13.58477
execute as @s[scores={cutSceneTimer=871},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.051 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=871},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=872}] run tp @s 8000.382 133.3591 -22.52805 181.0234 13.38606
execute as @s[scores={cutSceneTimer=873}] run tp @s 8000.365 133.3522 -22.54196 181.6335 13.18012
execute as @s[scores={cutSceneTimer=874}] run tp @s 8000.348 133.3455 -22.55577 182.2417 12.97374
execute as @s[scores={cutSceneTimer=875}] run tp @s 8000.331 133.3387 -22.56954 182.8506 12.76614
execute as @s[scores={cutSceneTimer=875},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.052 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=875},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=876}] run tp @s 8000.313 133.3316 -22.58429 183.527 12.53448
execute as @s[scores={cutSceneTimer=877}] run tp @s 8000.296 133.3249 -22.59803 184.1402 12.32361
execute as @s[scores={cutSceneTimer=878}] run tp @s 8000.279 133.3183 -22.61188 184.7631 12.10869
execute as @s[scores={cutSceneTimer=879}] run tp @s 8000.261 133.3116 -22.62585 185.3955 11.88993
execute as @s[scores={cutSceneTimer=879},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.053 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=879},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=880}] run tp @s 8000.244 133.3049 -22.63977 186.027 11.67101
execute as @s[scores={cutSceneTimer=881}] run tp @s 8000.227 133.2982 -22.65381 186.6671 11.44886
execute as @s[scores={cutSceneTimer=882}] run tp @s 8000.21 133.2916 -22.66779 187.3061 11.22697
execute as @s[scores={cutSceneTimer=882},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.054 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=882},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=883}] run tp @s 8000.192 133.285 -22.68189 187.953 11.00243
execute as @s[scores={cutSceneTimer=884}] run tp @s 8000.175 133.2783 -22.69603 188.6025 10.77735
execute as @s[scores={cutSceneTimer=885}] run tp @s 8000.158 133.2717 -22.7102 189.2544 10.55202
execute as @s[scores={cutSceneTimer=886}] run tp @s 8000.141 133.2651 -22.72439 189.9081 10.32691
execute as @s[scores={cutSceneTimer=886},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.055 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=886},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=887}] run tp @s 8000.123 133.2585 -22.73853 190.5629 10.10261
execute as @s[scores={cutSceneTimer=888}] run tp @s 8000.106 133.252 -22.75279 191.2209 9.878652
execute as @s[scores={cutSceneTimer=889}] run tp @s 8000.094 133.2476 -22.76229 191.6606 9.729961
execute as @s[scores={cutSceneTimer=890}] run tp @s 8000.078 133.2411 -22.77643 192.3226 9.507842
execute as @s[scores={cutSceneTimer=890},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.056 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=890},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=891}] run tp @s 8000.062 133.2345 -22.79096 192.9926 9.285487
execute as @s[scores={cutSceneTimer=892}] run tp @s 8000.046 133.228 -22.80525 193.6628 9.065911
execute as @s[scores={cutSceneTimer=893}] run tp @s 8000.032 133.2215 -22.81958 194.3363 8.848511
execute as @s[scores={cutSceneTimer=894}] run tp @s 8000.018 133.2147 -22.83467 195.0489 8.622508
execute as @s[scores={cutSceneTimer=894},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.057 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=894},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=895}] run tp @s 8000.005 133.2083 -22.84899 195.7257 8.412084
execute as @s[scores={cutSceneTimer=896}] run tp @s 7999.992 133.2018 -22.86325 196.4101 8.203935
execute as @s[scores={cutSceneTimer=897}] run tp @s 7999.98 133.1953 -22.87711 197.1043 7.998037
execute as @s[scores={cutSceneTimer=897},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.058 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=897},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=898}] run tp @s 7999.969 133.1889 -22.89048 197.8049 7.79599
execute as @s[scores={cutSceneTimer=899}] run tp @s 7999.958 133.1828 -22.90319 198.4967 7.602602
execute as @s[scores={cutSceneTimer=900}] run tp @s 7999.952 133.1788 -22.91133 198.9546 7.478159
execute as @s[scores={cutSceneTimer=901}] run tp @s 7999.939 133.1714 -22.92649 199.8334 7.247716
execute as @s[scores={cutSceneTimer=901},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.059 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=901},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=902}] run tp @s 7999.931 133.166 -22.93773 200.53 7.07335
execute as @s[scores={cutSceneTimer=903}] run tp @s 7999.922 133.1608 -22.94849 201.228 6.906365
execute as @s[scores={cutSceneTimer=904}] run tp @s 7999.915 133.156 -22.95871 201.9218 6.748415
execute as @s[scores={cutSceneTimer=904},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.06 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=904},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=905}] run tp @s 7999.908 133.1515 -22.96852 202.6227 6.59729
execute as @s[scores={cutSceneTimer=906}] run tp @s 7999.901 133.1472 -22.97801 203.3387 6.451913
execute as @s[scores={cutSceneTimer=907}] run tp @s 7999.895 133.1434 -22.98702 204.058 6.315616
execute as @s[scores={cutSceneTimer=907},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.061 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=907},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=908}] run tp @s 7999.889 133.14 -22.99559 204.7906 6.188597
execute as @s[scores={cutSceneTimer=909}] run tp @s 7999.883 133.137 -23.00364 205.5285 6.072565
execute as @s[scores={cutSceneTimer=910}] run tp @s 7999.878 133.1344 -23.01138 206.2944 5.964257
execute as @s[scores={cutSceneTimer=910},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.062 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=910},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=911}] run tp @s 7999.874 133.1323 -23.01861 207.0625 5.867504
execute as @s[scores={cutSceneTimer=912}] run tp @s 7999.87 133.1308 -23.02534 207.8317 5.781994
execute as @s[scores={cutSceneTimer=913}] run tp @s 7999.867 133.1297 -23.03162 208.6068 5.706872
execute as @s[scores={cutSceneTimer=914}] run tp @s 7999.863 133.1292 -23.03757 209.4032 5.640644
execute as @s[scores={cutSceneTimer=914},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.063 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=914},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=915}] run tp @s 7999.86 133.1292 -23.04314 210.2116 5.584295
execute as @s[scores={cutSceneTimer=916}] run tp @s 7999.858 133.1298 -23.04832 211.0294 5.537883
execute as @s[scores={cutSceneTimer=917}] run tp @s 7999.856 133.1311 -23.05312 211.8561 5.501276
execute as @s[scores={cutSceneTimer=917},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.063 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=917},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=918}] run tp @s 7999.854 133.1329 -23.05748 212.6869 5.474442
execute as @s[scores={cutSceneTimer=919}] run tp @s 7999.853 133.1354 -23.06157 213.5339 5.456805
execute as @s[scores={cutSceneTimer=920}] run tp @s 7999.852 133.1385 -23.06522 214.3848 5.448512
execute as @s[scores={cutSceneTimer=920},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.064 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=920},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=921}] run tp @s 7999.851 133.1423 -23.06856 215.2463 5.44922
execute as @s[scores={cutSceneTimer=922}] run tp @s 7999.85 133.1467 -23.07153 216.1162 5.458757
execute as @s[scores={cutSceneTimer=923}] run tp @s 7999.85 133.1502 -23.07335 216.7014 5.469948
execute as @s[scores={cutSceneTimer=923},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.065 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=923},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=924}] run tp @s 7999.85 133.1559 -23.07578 217.5861 5.493787
execute as @s[scores={cutSceneTimer=925}] run tp @s 7999.85 133.1634 -23.07821 218.6187 5.531777
execute as @s[scores={cutSceneTimer=926}] run tp @s 7999.85 133.1709 -23.08 219.5483 5.574639
execute as @s[scores={cutSceneTimer=926},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.066 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=926},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=927}] run tp @s 7999.851 133.1792 -23.08149 220.4858 5.625783
execute as @s[scores={cutSceneTimer=928}] run tp @s 7999.852 133.1883 -23.08265 221.4125 5.683773
execute as @s[scores={cutSceneTimer=929}] run tp @s 7999.853 133.1982 -23.08353 222.3478 5.749401
execute as @s[scores={cutSceneTimer=929},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.067 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=929},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=930}] run tp @s 7999.854 133.2089 -23.08413 223.2811 5.821628
execute as @s[scores={cutSceneTimer=931}] run tp @s 7999.854 133.2208 -23.08447 224.2531 5.903639
execute as @s[scores={cutSceneTimer=931},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.068 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=931},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=932}] run tp @s 7999.856 133.2333 -23.08452 225.1996 5.989845
execute as @s[scores={cutSceneTimer=933}] run tp @s 7999.857 133.2469 -23.08433 226.1592 6.083304
execute as @s[scores={cutSceneTimer=934}] run tp @s 7999.859 133.2617 -23.08387 227.1462 6.185475
execute as @s[scores={cutSceneTimer=934},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.069 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=934},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=935}] run tp @s 7999.86 133.2774 -23.08317 228.1244 6.292537
execute as @s[scores={cutSceneTimer=936}] run tp @s 7999.862 133.2939 -23.08224 229.0942 6.404085
execute as @s[scores={cutSceneTimer=937}] run tp @s 7999.864 133.312 -23.08105 230.0842 6.523271
execute as @s[scores={cutSceneTimer=937},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.07 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=937},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=938}] run tp @s 7999.865 133.3245 -23.08014 230.7374 6.604736
execute as @s[scores={cutSceneTimer=939}] run tp @s 7999.867 133.3439 -23.07861 231.7211 6.731475
execute as @s[scores={cutSceneTimer=940}] run tp @s 7999.868 133.3643 -23.07688 232.7097 6.863601
execute as @s[scores={cutSceneTimer=940},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.071 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=940},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=941}] run tp @s 7999.87 133.3859 -23.07495 233.6963 6.999996
execute as @s[scores={cutSceneTimer=942}] run tp @s 7999.872 133.4093 -23.0727 234.7081 7.157926
execute as @s[scores={cutSceneTimer=943}] run tp @s 7999.875 133.4343 -23.07011 235.7166 7.345272
execute as @s[scores={cutSceneTimer=943},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.072 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=943},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=944}] run tp @s 7999.877 133.4607 -23.0672 236.7172 7.559002
execute as @s[scores={cutSceneTimer=945}] run tp @s 7999.88 133.4887 -23.06396 237.7205 7.799585
execute as @s[scores={cutSceneTimer=945},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.073 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=945},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=946}] run tp @s 7999.884 133.519 -23.0603 238.7518 8.072721
execute as @s[scores={cutSceneTimer=947}] run tp @s 7999.888 133.5507 -23.05632 239.7846 8.370734
execute as @s[scores={cutSceneTimer=948}] run tp @s 7999.893 133.5839 -23.052 240.8222 8.693221
execute as @s[scores={cutSceneTimer=948},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.074 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=948},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=949}] run tp @s 7999.898 133.6212 -23.04701 241.9769 9.077271
execute as @s[scores={cutSceneTimer=950}] run tp @s 7999.903 133.6566 -23.04214 242.9909 9.434895
execute as @s[scores={cutSceneTimer=950},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.075 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=950},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=951}] run tp @s 7999.909 133.6935 -23.03694 244.0143 9.813567
execute as @s[scores={cutSceneTimer=952}] run tp @s 7999.912 133.719 -23.03328 244.7028 10.07767
execute as @s[scores={cutSceneTimer=953}] run tp @s 7999.919 133.7647 -23.02659 245.8395 10.52885
execute as @s[scores={cutSceneTimer=953},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.076 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=953},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=954}] run tp @s 7999.926 133.8045 -23.02063 246.8544 10.9463
execute as @s[scores={cutSceneTimer=954},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.083 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=954},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=955}] run tp @s 7999.932 133.8456 -23.01437 247.8751 11.37861
execute as @s[scores={cutSceneTimer=955},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.103 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=955},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=956}] run tp @s 7999.939 133.8916 -23.00722 249.0323 11.88232
execute as @s[scores={cutSceneTimer=956},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.137 133 -26.223 291.7 0
execute as @s[scores={cutSceneTimer=956},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=957}] run tp @s 7999.947 133.9344 -23.00045 250.0457 12.33365
execute as @s[scores={cutSceneTimer=957},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.179 133 -26.2227 291.7 0
execute as @s[scores={cutSceneTimer=957},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=958}] run tp @s 7999.954 133.9789 -22.9933 251.0859 12.80548
execute as @s[scores={cutSceneTimer=958},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.232 133 -26.21132 291.7 0
execute as @s[scores={cutSceneTimer=958},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=959}] run tp @s 7999.96 134.0139 -22.98759 251.8615 13.16209
execute as @s[scores={cutSceneTimer=959},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.28 133 -26.19153 291.7 0
execute as @s[scores={cutSceneTimer=959},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=960}] run tp @s 7999.968 134.0591 -22.98013 252.8712 13.63157
execute as @s[scores={cutSceneTimer=960},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.349 133 -26.15323 291.7 0
execute as @s[scores={cutSceneTimer=960},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.5000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=961}] run tp @s 7999.976 134.1059 -22.97225 253.8872 14.10859
execute as @s[scores={cutSceneTimer=961},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.428 132.9979 -26.09952 291.7 0
execute as @s[scores={cutSceneTimer=961},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.4746f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=962}] run tp @s 7999.984 134.153 -22.96421 254.9048 14.58975
execute as @s[scores={cutSceneTimer=962},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.514 132.9922 -26.03254 291.7 0
execute as @s[scores={cutSceneTimer=962},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.4024f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=963}] run tp @s 7999.993 134.2008 -22.95594 255.9255 15.07435
execute as @s[scores={cutSceneTimer=963},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.609 132.9831 -25.95263 291.7 0
execute as @s[scores={cutSceneTimer=963},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.2869f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=964}] run tp @s 8000.002 134.2484 -22.94757 256.9324 15.55311
execute as @s[scores={cutSceneTimer=964},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.708 132.9713 -25.86193 291.7 0
execute as @s[scores={cutSceneTimer=964},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[14.1344f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=965}] run tp @s 8000.011 134.2961 -22.93906 257.9295 16.0265
execute as @s[scores={cutSceneTimer=965},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.814 132.9571 -25.76097 291.7 0
execute as @s[scores={cutSceneTimer=965},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[13.9486f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=966}] run tp @s 8000.02 134.3447 -22.93025 258.9373 16.50292
execute as @s[scores={cutSceneTimer=966},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.927 132.9408 -25.64849 291.722 0
execute as @s[scores={cutSceneTimer=966},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[13.7293f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=967}] run tp @s 8000.029 134.393 -22.92136 259.9275 16.96764
execute as @s[scores={cutSceneTimer=967},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8006.043 132.9231 -25.52805 291.8181 0
execute as @s[scores={cutSceneTimer=967},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[13.4857f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=968}] run tp @s 8000.038 134.4425 -22.91212 260.937 17.43658
execute as @s[scores={cutSceneTimer=968},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8006.167 132.9038 -25.39659 291.9933 0
execute as @s[scores={cutSceneTimer=968},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[13.2136f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=969}] run tp @s 8000.047 134.4922 -22.9027 261.9454 17.89868
execute as @s[scores={cutSceneTimer=969},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8006.294 132.8836 -25.25696 292.2455 0
execute as @s[scores={cutSceneTimer=969},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[12.9210f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=970}] run tp @s 8000.057 134.542 -22.89311 262.9503 18.35138
execute as @s[scores={cutSceneTimer=970},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8006.425 132.8631 -25.11012 292.5729 0
execute as @s[scores={cutSceneTimer=970},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[12.6119f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=971}] run tp @s 8000.066 134.5909 -22.88355 263.9226 18.78046
execute as @s[scores={cutSceneTimer=971},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8006.556 132.843 -24.95984 292.9661 0
execute as @s[scores={cutSceneTimer=971},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[12.2964f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=972}] run tp @s 8000.076 134.6404 -22.87372 264.9081 19.20487
execute as @s[scores={cutSceneTimer=972},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8006.691 132.823 -24.80212 293.4355 0
execute as @s[scores={cutSceneTimer=972},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[11.9682f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=973}] run tp @s 8000.086 134.6905 -22.86362 265.9066 19.62258
execute as @s[scores={cutSceneTimer=973},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8006.831 132.8036 -24.63752 293.9829 0
execute as @s[scores={cutSceneTimer=973},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[11.6307f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=974}] run tp @s 8000.096 134.7401 -22.85343 266.8893 20.01987
execute as @s[scores={cutSceneTimer=974},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8006.97 132.7857 -24.46976 294.5972 0
execute as @s[scores={cutSceneTimer=974},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[11.2940f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=975}] run tp @s 8000.106 134.7885 -22.84332 267.8387 20.38902
execute as @s[scores={cutSceneTimer=975},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.107 132.7697 -24.29872 295.2664 0
execute as @s[scores={cutSceneTimer=975},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[10.9664f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=976}] run tp @s 8000.116 134.8367 -22.83308 268.7818 20.73985
execute as @s[scores={cutSceneTimer=976},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.264 132.7557 -24.12012 296.0005 0
execute as @s[scores={cutSceneTimer=976},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[10.6448f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=977}] run tp @s 8000.126 134.8855 -22.82253 269.7427 21.0793
execute as @s[scores={cutSceneTimer=977},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.448 132.7435 -23.93085 296.814 0
execute as @s[scores={cutSceneTimer=977},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[10.3156f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=978}] run tp @s 8000.136 134.933 -22.81208 270.672 21.38849
execute as @s[scores={cutSceneTimer=978},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.648 132.7322 -23.73848 297.675 0
execute as @s[scores={cutSceneTimer=978},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.9412f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=979}] run tp @s 8000.146 134.9804 -22.80146 271.6016 21.67725
execute as @s[scores={cutSceneTimer=979},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.865 132.7213 -23.53869 298.6031 0
execute as @s[scores={cutSceneTimer=979},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.5160f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=980}] run tp @s 8000.156 135.0272 -22.79074 272.5235 21.94139
execute as @s[scores={cutSceneTimer=980},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.095 132.7107 -23.33315 299.5916 0
execute as @s[scores={cutSceneTimer=980},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.0526f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=981}] run tp @s 8000.166 135.0732 -22.78001 273.4305 22.17773
execute as @s[scores={cutSceneTimer=981},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.331 132.7007 -23.12365 300.6328 0
execute as @s[scores={cutSceneTimer=981},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.5648f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=982}] run tp @s 8000.176 135.1197 -22.76892 274.3549 22.39262
execute as @s[scores={cutSceneTimer=982},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.578 132.6908 -22.90385 301.7599 0
execute as @s[scores={cutSceneTimer=982},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.0474f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=983}] run tp @s 8000.186 135.1662 -22.75759 275.2724 22.58986
execute as @s[scores={cutSceneTimer=983},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.829 132.6813 -22.676 302.965 0
execute as @s[scores={cutSceneTimer=983},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.5155f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=984}] run tp @s 8000.196 135.2109 -22.74644 276.1586 22.77753
execute as @s[scores={cutSceneTimer=984},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.069 132.6725 -22.44945 304.1994 0
execute as @s[scores={cutSceneTimer=984},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.0011f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=985}] run tp @s 8000.203 135.2402 -22.73897 276.742 22.89962
execute as @s[scores={cutSceneTimer=985},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.227 132.6669 -22.29625 305.0542 0
execute as @s[scores={cutSceneTimer=985},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[6.6661f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=986}] run tp @s 8000.213 135.2833 -22.72779 277.6102 23.07923
execute as @s[scores={cutSceneTimer=986},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.451 132.659 -22.06519 306.3743 0
execute as @s[scores={cutSceneTimer=986},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[6.1868f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=987}] run tp @s 8000.223 135.326 -22.7164 278.4783 23.25632
execute as @s[scores={cutSceneTimer=987},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.664 132.6514 -21.82832 307.7658 0
execute as @s[scores={cutSceneTimer=987},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[5.7360f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=988}] run tp @s 8000.232 135.3673 -22.70507 279.3377 23.4292
execute as @s[scores={cutSceneTimer=988},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.856 132.6445 -21.59129 309.1958 0
execute as @s[scores={cutSceneTimer=988},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[5.3349f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=989}] run tp @s 8000.242 135.4075 -22.6937 280.1909 23.59845
execute as @s[scores={cutSceneTimer=989},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.025 132.6381 -21.3524 310.6588 0
execute as @s[scores={cutSceneTimer=989},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.9904f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=990}] run tp @s 8000.251 135.4467 -22.6823 281.0364 23.76386
execute as @s[scores={cutSceneTimer=990},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.17 132.6322 -21.11229 312.1529 0
execute as @s[scores={cutSceneTimer=990},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.7138f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=991}] run tp @s 8000.261 135.4844 -22.67096 281.8663 23.92399
execute as @s[scores={cutSceneTimer=991},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.306 132.6269 -20.87289 313.6727 0
execute as @s[scores={cutSceneTimer=991},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.5173f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=992}] run tp @s 8000.27 135.5211 -22.65954 282.6925 24.08121
execute as @s[scores={cutSceneTimer=992},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.438 132.6222 -20.63193 315.2396 0
execute as @s[scores={cutSceneTimer=992},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.4096f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=993}] run tp @s 8000.279 135.558 -22.64759 283.5624 24.24439
execute as @s[scores={cutSceneTimer=993},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.573 132.6177 -20.38026 316.9236 0
execute as @s[scores={cutSceneTimer=993},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.3695f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=994}] run tp @s 8000.288 135.5915 -22.63633 284.3497 24.39001
execute as @s[scores={cutSceneTimer=994},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.694 132.6138 -20.1435 318.5598 0
execute as @s[scores={cutSceneTimer=994},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.3402f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=995}] run tp @s 8000.296 135.6235 -22.62507 285.1245 24.5314
execute as @s[scores={cutSceneTimer=995},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.811 132.6102 -19.90806 320.2443 0
execute as @s[scores={cutSceneTimer=995},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.3167f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=996}] run tp @s 8000.305 135.6541 -22.61384 285.8871 24.66873
execute as @s[scores={cutSceneTimer=996},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.921 132.6068 -19.66806 321.982 0
execute as @s[scores={cutSceneTimer=996},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.2980f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=997}] run tp @s 8000.313 135.6829 -22.6027 286.6306 24.80087
execute as @s[scores={cutSceneTimer=997},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.025 132.6037 -19.41639 323.7645 0
execute as @s[scores={cutSceneTimer=997},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.2831f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=998}] run tp @s 8000.321 135.7107 -22.59138 287.3798 24.93222
execute as @s[scores={cutSceneTimer=998},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.124 132.6009 -19.1473 325.6429 0
execute as @s[scores={cutSceneTimer=998},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.2707f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=999}] run tp @s 8000.33 135.7376 -22.57974 288.1334 25.06261
execute as @s[scores={cutSceneTimer=999},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.218 132.5983 -18.85752 327.6512 0
execute as @s[scores={cutSceneTimer=999},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.2599f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1000}] run tp @s 8000.338 135.7614 -22.56869 288.8386 25.183
execute as @s[scores={cutSceneTimer=1000},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.3 132.596 -18.5711 329.6347 0
execute as @s[scores={cutSceneTimer=1000},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.2504f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1001}] run tp @s 8000.346 135.7836 -22.55766 289.5312 25.29973
execute as @s[scores={cutSceneTimer=1001},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.374 132.5941 -18.27501 331.6958 0
execute as @s[scores={cutSceneTimer=1001},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.2407f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1002}] run tp @s 8000.354 135.8042 -22.54655 290.212 25.41301
execute as @s[scores={cutSceneTimer=1002},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.439 132.5924 -17.96735 333.8598 0
execute as @s[scores={cutSceneTimer=1002},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.2297f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1003}] run tp @s 8000.363 135.8237 -22.53566 290.8745 25.52184
execute as @s[scores={cutSceneTimer=1003},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.495 132.5911 -17.65715 336.0752 0
execute as @s[scores={cutSceneTimer=1003},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.2167f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1004}] run tp @s 8000.368 135.8365 -22.52842 291.3079 25.59229
execute as @s[scores={cutSceneTimer=1004},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.526 132.5903 -17.44667 337.6025 0
execute as @s[scores={cutSceneTimer=1004},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.2063f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1005}] run tp @s 8000.376 135.8557 -22.51739 291.9514 25.69578
execute as @s[scores={cutSceneTimer=1005},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.566 132.5895 -17.11989 340.0201 0
execute as @s[scores={cutSceneTimer=1005},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.1870f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1006}] run tp @s 8000.385 135.874 -22.50664 292.5792 25.79551
execute as @s[scores={cutSceneTimer=1006},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.594 132.5889 -16.79562 342.4845 0
execute as @s[scores={cutSceneTimer=1006},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.1632f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1007}] run tp @s 8000.393 135.8918 -22.49607 293.1894 25.89123
execute as @s[scores={cutSceneTimer=1007},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.611 132.5887 -16.47132 345.025 0
execute as @s[scores={cutSceneTimer=1007},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.1338f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1008}] run tp @s 8000.401 135.9089 -22.48567 293.781 25.98292
execute as @s[scores={cutSceneTimer=1008},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.617 132.5885 -16.14802 347.6446 0
execute as @s[scores={cutSceneTimer=1008},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.0979f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1009}] run tp @s 8000.409 135.9257 -22.47532 294.3597 26.07154
execute as @s[scores={cutSceneTimer=1009},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.609 132.5877 -15.82282 350.3797 0
execute as @s[scores={cutSceneTimer=1009},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.0546f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1010}] run tp @s 8000.417 135.9419 -22.46514 294.904 26.15388
execute as @s[scores={cutSceneTimer=1010},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.588 132.5864 -15.50074 353.2013 0
execute as @s[scores={cutSceneTimer=1010},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.0038f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1011}] run tp @s 8000.425 135.9578 -22.45503 294.9137 26.15392
execute as @s[scores={cutSceneTimer=1011},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.554 132.5848 -15.17909 356.1466 0
execute as @s[scores={cutSceneTimer=1011},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[3.9441f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1012}] run tp @s 8000.434 135.9731 -22.44511 294.9403 26.15399
execute as @s[scores={cutSceneTimer=1012},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.507 132.5832 -14.86279 359.1846 0
execute as @s[scores={cutSceneTimer=1012},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[3.8753f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1013}] run tp @s 8000.442 135.9882 -22.43514 294.9844 26.15407
execute as @s[scores={cutSceneTimer=1013},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.445 132.5816 -14.54516 2.397057 0
execute as @s[scores={cutSceneTimer=1013},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[3.7948f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1014}] run tp @s 8000.45 136.0029 -22.42531 295.0454 26.15416
execute as @s[scores={cutSceneTimer=1014},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.37 132.5804 -14.2333 5.737312 0
execute as @s[scores={cutSceneTimer=1014},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[3.7028f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1015}] run tp @s 8000.458 136.0171 -22.41564 295.123 26.15423
execute as @s[scores={cutSceneTimer=1015},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.282 132.5797 -13.92837 9.214066 0
execute as @s[scores={cutSceneTimer=1015},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[3.5983f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1016}] run tp @s 8000.466 136.0308 -22.40612 295.2167 26.15429
execute as @s[scores={cutSceneTimer=1016},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.181 132.5796 -13.632 12.81512 0
execute as @s[scores={cutSceneTimer=1016},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[3.4806f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1017}] run tp @s 8000.474 136.044 -22.39659 295.3255 26.15429
execute as @s[scores={cutSceneTimer=1017},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.068 132.5805 -13.34679 16.51315 0
execute as @s[scores={cutSceneTimer=1017},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[3.3497f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1018}] run tp @s 8000.482 136.0566 -22.3871 295.4479 26.15424
execute as @s[scores={cutSceneTimer=1018},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.944 132.5825 -13.07564 20.27119 0
execute as @s[scores={cutSceneTimer=1018},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[3.2059f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1019}] run tp @s 8000.49 136.0688 -22.37748 295.5857 26.1541
execute as @s[scores={cutSceneTimer=1019},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.807 132.5858 -12.81435 24.15313 0
execute as @s[scores={cutSceneTimer=1019},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[3.0458f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1020}] run tp @s 8000.499 136.0807 -22.36764 295.74 26.15388
execute as @s[scores={cutSceneTimer=1020},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.656 132.5906 -12.56262 28.18101 0
execute as @s[scores={cutSceneTimer=1020},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[2.8670f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1021}] run tp @s 8000.506 136.0921 -22.35779 295.9077 26.15353
execute as @s[scores={cutSceneTimer=1021},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.494 132.597 -12.32645 32.27277 0
execute as @s[scores={cutSceneTimer=1021},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[2.6717f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1022}] run tp @s 8000.515 136.103 -22.34799 296.0869 26.15309
execute as @s[scores={cutSceneTimer=1022},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.322 132.6053 -12.10827 36.38982 0
execute as @s[scores={cutSceneTimer=1022},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[2.4611f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1023}] run tp @s 8000.522 136.1134 -22.33807 296.2803 26.15248
execute as @s[scores={cutSceneTimer=1023},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.138 132.6156 -11.90498 40.60011 0
execute as @s[scores={cutSceneTimer=1023},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[2.2291f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1024}] run tp @s 8000.531 136.1235 -22.32801 296.4885 26.15172
execute as @s[scores={cutSceneTimer=1024},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.94 132.6284 -11.71753 44.9087 0
execute as @s[scores={cutSceneTimer=1024},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[1.9297f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1025}] run tp @s 8000.539 136.1332 -22.31782 296.7109 26.15077
execute as @s[scores={cutSceneTimer=1025},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.717 132.6439 -11.54783 49.30079 0
execute as @s[scores={cutSceneTimer=1025},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[1.5511f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1026}] run tp @s 8000.547 136.1429 -22.30713 296.9564 26.14957
execute as @s[scores={cutSceneTimer=1026},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.444 132.6635 -11.3923 53.93493 0
execute as @s[scores={cutSceneTimer=1026},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[1.0885f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1027}] run tp @s 8000.556 136.1517 -22.29686 297.2034 26.14821
execute as @s[scores={cutSceneTimer=1027},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.15 132.6851 -11.2655 58.40156 0
execute as @s[scores={cutSceneTimer=1027},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[0.5967f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1028}] run tp @s 8000.563 136.16 -22.2867 297.4582 26.14665
execute as @s[scores={cutSceneTimer=1028},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.834 132.709 -11.16247 62.83448 0
execute as @s[scores={cutSceneTimer=1028},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[0.0781f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1029}] run tp @s 8000.571 136.1678 -22.27649 297.7243 26.14486
execute as @s[scores={cutSceneTimer=1029},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.498 132.7351 -11.08226 67.29281 0
execute as @s[scores={cutSceneTimer=1029},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[359.5388f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1030}] run tp @s 8000.577 136.173 -22.26946 297.9129 26.14348
execute as @s[scores={cutSceneTimer=1030},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.259 132.7541 -11.04105 70.35945 0
execute as @s[scores={cutSceneTimer=1030},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[359.1640f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1031}] run tp @s 8000.585 136.1801 -22.25918 298.1971 26.14125
execute as @s[scores={cutSceneTimer=1031},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.902 132.7835 -11.00187 74.84401 0
execute as @s[scores={cutSceneTimer=1031},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[358.6195f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1032}] run tp @s 8000.593 136.187 -22.24866 298.4973 26.13869
execute as @s[scores={cutSceneTimer=1032},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.534 132.815 -10.98855 79.42021 0
execute as @s[scores={cutSceneTimer=1032},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[358.0799f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1033}] run tp @s 8000.601 136.1934 -22.23829 298.802 26.13588
execute as @s[scores={cutSceneTimer=1033},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.173 132.8474 -10.99979 83.90833 0
execute as @s[scores={cutSceneTimer=1033},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[357.5787f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1034}] run tp @s 8000.609 136.1993 -22.2279 299.1163 26.13276
execute as @s[scores={cutSceneTimer=1034},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8006.819 132.8808 -11.03219 88.38829 0
execute as @s[scores={cutSceneTimer=1034},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[357.1187f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1035}] run tp @s 8000.617 136.205 -22.21734 299.4443 26.12926
execute as @s[scores={cutSceneTimer=1035},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8006.474 132.9155 -11.08574 92.90949 0
execute as @s[scores={cutSceneTimer=1035},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[356.7084f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1036}] run tp @s 8000.625 136.2102 -22.20672 299.7826 26.1254
execute as @s[scores={cutSceneTimer=1036},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8006.145 132.951 -11.15957 97.42128 0
execute as @s[scores={cutSceneTimer=1036},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[356.3667f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1037}] run tp @s 8000.634 136.2151 -22.19604 300.1308 26.12115
execute as @s[scores={cutSceneTimer=1037},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.841 132.9869 -11.25297 101.9133 0
execute as @s[scores={cutSceneTimer=1037},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[356.1083f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1038}] run tp @s 8000.642 136.2195 -22.18535 300.4877 26.11652
execute as @s[scores={cutSceneTimer=1038},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.567 133.023 -11.3649 106.3658 0
execute as @s[scores={cutSceneTimer=1038},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[355.9483f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1039}] run tp @s 8000.65 136.2236 -22.17464 300.8529 26.11148
execute as @s[scores={cutSceneTimer=1039},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.33 133.0589 -11.49447 110.7698 0
execute as @s[scores={cutSceneTimer=1039},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[355.9001f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1040}] run tp @s 8000.658 136.2272 -22.16398 301.2236 26.10604
execute as @s[scores={cutSceneTimer=1040},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.115 133.0941 -11.63981 115.0899 0
execute as @s[scores={cutSceneTimer=1040},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[355.9128f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1041}] run tp @s 8000.667 136.2305 -22.15339 301.5991 26.10022
execute as @s[scores={cutSceneTimer=1041},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8004.91 133.1284 -11.79965 119.3171 0
execute as @s[scores={cutSceneTimer=1041},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[355.9463f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1042}] run tp @s 8000.674 136.2333 -22.14286 301.9793 26.09399
execute as @s[scores={cutSceneTimer=1042},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8004.715 133.1615 -11.97303 123.4501 0
execute as @s[scores={cutSceneTimer=1042},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[356.0003f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1043}] run tp @s 8000.683 136.2358 -22.13233 302.3662 26.08731
execute as @s[scores={cutSceneTimer=1043},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8004.53 133.1936 -12.16007 127.5073 0
execute as @s[scores={cutSceneTimer=1043},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[356.0752f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1044}] run tp @s 8000.691 136.2379 -22.1216 302.7668 26.08002
execute as @s[scores={cutSceneTimer=1044},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8004.353 133.2247 -12.36377 131.5545 0
execute as @s[scores={cutSceneTimer=1044},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[356.1732f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1045}] run tp @s 8000.699 136.2397 -22.11107 303.166 26.07236
execute as @s[scores={cutSceneTimer=1045},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8004.191 133.2536 -12.57582 135.4543 0
execute as @s[scores={cutSceneTimer=1045},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[356.2909f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1046}] run tp @s 8000.707 136.241 -22.10055 303.5709 26.06421
execute as @s[scores={cutSceneTimer=1046},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8004.042 133.2807 -12.79901 139.3163 0
execute as @s[scores={cutSceneTimer=1046},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[356.4301f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1047}] run tp @s 8000.715 136.2421 -22.08984 303.9889 26.05536
execute as @s[scores={cutSceneTimer=1047},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8003.904 133.306 -13.03704 143.2162 0
execute as @s[scores={cutSceneTimer=1047},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[356.5941f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1048}] run tp @s 8000.724 136.2427 -22.07905 304.4158 26.04588
execute as @s[scores={cutSceneTimer=1048},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8003.78 133.3289 -13.28719 147.1168 0
execute as @s[scores={cutSceneTimer=1048},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[356.7826f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1049}] run tp @s 8000.732 136.243 -22.06846 304.8405 26.03599
execute as @s[scores={cutSceneTimer=1049},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8003.675 133.3488 -13.54208 150.9213 0
execute as @s[scores={cutSceneTimer=1049},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[356.9907f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1050}] run tp @s 8000.74 136.2429 -22.05801 305.2648 26.02563
execute as @s[scores={cutSceneTimer=1050},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8003.586 133.3655 -13.80206 154.6558 0
execute as @s[scores={cutSceneTimer=1050},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[357.2188f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1051}] run tp @s 8000.749 136.2425 -22.04745 305.6987 26.01454
execute as @s[scores={cutSceneTimer=1051},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8003.515 133.3792 -14.07247 158.4113 0
execute as @s[scores={cutSceneTimer=1051},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[357.4727f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1052}] run tp @s 8000.757 136.2417 -22.0369 306.1366 26.00283
execute as @s[scores={cutSceneTimer=1052},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8003.462 133.3895 -14.34946 162.1456 0
execute as @s[scores={cutSceneTimer=1052},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[357.7500f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1053}] run tp @s 8000.766 136.2406 -22.02641 306.5772 25.9905
execute as @s[scores={cutSceneTimer=1053},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8003.429 133.3959 -14.63143 165.8508 0
execute as @s[scores={cutSceneTimer=1053},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[358.0502f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1054}] run tp @s 8000.773 136.2391 -22.01608 307.0155 25.97769
execute as @s[scores={cutSceneTimer=1054},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8003.417 133.3983 -14.91453 169.4911 0
execute as @s[scores={cutSceneTimer=1054},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[358.3699f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1055}] run tp @s 8000.782 136.2373 -22.00571 307.4593 25.96415
execute as @s[scores={cutSceneTimer=1055},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8003.427 133.3965 -15.20311 173.1365 0
execute as @s[scores={cutSceneTimer=1055},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[358.8015f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1056}] run tp @s 8000.791 136.2351 -21.99533 307.9081 25.94983
execute as @s[scores={cutSceneTimer=1056},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8003.462 133.3903 -15.49633 176.7874 0
execute as @s[scores={cutSceneTimer=1056},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[359.4464f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1057}] run tp @s 8000.799 136.2326 -21.98505 308.3564 25.93491
execute as @s[scores={cutSceneTimer=1057},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8003.52 133.3801 -15.78995 180.4038 0
execute as @s[scores={cutSceneTimer=1057},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[0.2618f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1058}] run tp @s 8000.807 136.2298 -21.97476 308.8089 25.91919
execute as @s[scores={cutSceneTimer=1058},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8003.599 133.3659 -16.08642 184.0284 0
execute as @s[scores={cutSceneTimer=1058},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[1.2196f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1059}] run tp @s 8000.815 136.2266 -21.96459 309.2598 25.90286
execute as @s[scores={cutSceneTimer=1059},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8003.696 133.348 -16.38129 187.6193 0
execute as @s[scores={cutSceneTimer=1059},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[2.2714f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1060}] run tp @s 8000.824 136.2231 -21.95441 309.7147 25.88568
execute as @s[scores={cutSceneTimer=1060},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8003.812 133.3266 -16.67762 191.2262 0
execute as @s[scores={cutSceneTimer=1060},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[3.3942f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1061}] run tp @s 8000.833 136.2192 -21.94423 310.1732 25.86761
execute as @s[scores={cutSceneTimer=1061},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8003.944 133.3016 -16.97443 194.8498 0
execute as @s[scores={cutSceneTimer=1061},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[4.5512f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1062}] run tp @s 8000.841 136.2151 -21.93423 310.6263 25.84898
execute as @s[scores={cutSceneTimer=1062},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8004.089 133.2738 -17.26542 198.4254 0
execute as @s[scores={cutSceneTimer=1062},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[5.6837f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1063}] run tp @s 8000.847 136.2121 -21.92759 310.929 25.83611
execute as @s[scores={cutSceneTimer=1063},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8004.193 133.2537 -17.45812 200.8124 0
execute as @s[scores={cutSceneTimer=1063},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[6.4162f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1064}] run tp @s 8000.855 136.2075 -21.91777 311.3788 25.81631
execute as @s[scores={cutSceneTimer=1064},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8004.356 133.2215 -17.74156 204.361 0
execute as @s[scores={cutSceneTimer=1064},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.4431f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1065}] run tp @s 8000.864 136.2025 -21.90789 311.8336 25.79544
execute as @s[scores={cutSceneTimer=1065},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8004.531 133.1863 -18.02415 207.9566 0
execute as @s[scores={cutSceneTimer=1065},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.3745f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1066}] run tp @s 8000.873 136.1972 -21.89822 312.2819 25.774
execute as @s[scores={cutSceneTimer=1066},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8004.711 133.1493 -18.29792 211.5106 0
execute as @s[scores={cutSceneTimer=1066},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.1509f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1067}] run tp @s 8000.881 136.1915 -21.88838 312.7403 25.75115
execute as @s[scores={cutSceneTimer=1067},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8004.901 133.1091 -18.57244 215.1619 0
execute as @s[scores={cutSceneTimer=1067},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.7615f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1068}] run tp @s 8000.89 136.1855 -21.87874 313.1914 25.72771
execute as @s[scores={cutSceneTimer=1068},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.094 133.0675 -18.8364 218.7752 0
execute as @s[scores={cutSceneTimer=1068},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[10.1423f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1069}] run tp @s 8000.898 136.1793 -21.86925 313.6375 25.70354
execute as @s[scores={cutSceneTimer=1069},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.288 133.0244 -19.09077 222.3746 0
execute as @s[scores={cutSceneTimer=1069},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[10.2657f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1070}] run tp @s 8000.907 136.1728 -21.85981 314.0835 25.67835
execute as @s[scores={cutSceneTimer=1070},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.483 132.9796 -19.33763 226.0034 0
execute as @s[scores={cutSceneTimer=1070},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[10.2597f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1071}] run tp @s 8000.916 136.166 -21.85056 314.5219 25.65254
execute as @s[scores={cutSceneTimer=1071},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.676 132.934 -19.5723 229.6059 0
execute as @s[scores={cutSceneTimer=1071},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[10.2438f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1072}] run tp @s 8000.924 136.1589 -21.84135 314.9599 25.62565
execute as @s[scores={cutSceneTimer=1072},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8005.867 132.887 -19.79806 233.2455 0
execute as @s[scores={cutSceneTimer=1072},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[10.2181f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1073}] run tp @s 8000.934 136.1514 -21.83218 315.3976 25.59764
execute as @s[scores={cutSceneTimer=1073},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8006.054 132.8388 -20.01407 236.9286 0
execute as @s[scores={cutSceneTimer=1073},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[10.1830f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1074}] run tp @s 8000.942 136.1436 -21.82305 315.8344 25.56846
execute as @s[scores={cutSceneTimer=1074},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8006.253 132.7896 -20.21916 240.6545 0
execute as @s[scores={cutSceneTimer=1074},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[10.1391f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1075}] run tp @s 8000.951 136.1357 -21.8142 316.2589 25.53885
execute as @s[scores={cutSceneTimer=1075},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8006.467 132.7408 -20.4075 244.325 0
execute as @s[scores={cutSceneTimer=1075},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[10.0880f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1076}] run tp @s 8000.96 136.1275 -21.8054 316.6821 25.50806
execute as @s[scores={cutSceneTimer=1076},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8006.697 132.6913 -20.58346 248.0351 0
execute as @s[scores={cutSceneTimer=1076},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[10.0291f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1077}] run tp @s 8000.97 136.1172 -21.79506 317.18 25.47008
execute as @s[scores={cutSceneTimer=1077},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8006.988 132.6324 -20.77396 252.4709 0
execute as @s[scores={cutSceneTimer=1077},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.9501f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1078}] run tp @s 8000.974 136.1142 -21.7921 317.3228 25.45879
execute as @s[scores={cutSceneTimer=1078},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.075 132.6153 -20.82504 253.758 0
execute as @s[scores={cutSceneTimer=1078},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.9255f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1079}] run tp @s 8000.987 136.1 -21.77876 317.9667 25.4058
execute as @s[scores={cutSceneTimer=1079},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.482 132.538 -21.03369 259.6469 0
execute as @s[scores={cutSceneTimer=1079},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8046f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1080}] run tp @s 8000.997 136.0906 -21.77049 318.3657 25.37101
execute as @s[scores={cutSceneTimer=1080},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.745 132.4896 -21.14361 263.373 0
execute as @s[scores={cutSceneTimer=1080},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.7217f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1081}] run tp @s 8001.005 136.0807 -21.76214 318.7693 25.33417
execute as @s[scores={cutSceneTimer=1081},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.015 132.4344 -21.238 267.2071 0
execute as @s[scores={cutSceneTimer=1081},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.6317f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1082}] run tp @s 8001.015 136.0708 -21.75404 319.1603 25.29679
execute as @s[scores={cutSceneTimer=1082},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.279 132.3729 -21.31172 270.987 0
execute as @s[scores={cutSceneTimer=1082},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.5390f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1083}] run tp @s 8001.024 136.0604 -21.74601 319.5477 25.25797
execute as @s[scores={cutSceneTimer=1083},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.54 132.3049 -21.3659 274.8027 0
execute as @s[scores={cutSceneTimer=1083},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.4419f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1084}] run tp @s 8001.033 136.0499 -21.73817 319.9257 25.2182
execute as @s[scores={cutSceneTimer=1084},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.792 132.2322 -21.39883 278.5993 0
execute as @s[scores={cutSceneTimer=1084},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.3424f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1085}] run tp @s 8001.039 136.0426 -21.73295 320.1768 25.19071
execute as @s[scores={cutSceneTimer=1085},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.955 132.1807 -21.40881 281.1641 0
execute as @s[scores={cutSceneTimer=1085},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.2738f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1086}] run tp @s 8001.048 136.0316 -21.72535 320.5414 25.14906
execute as @s[scores={cutSceneTimer=1086},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.186 132.1018 -21.40613 284.9556 0
execute as @s[scores={cutSceneTimer=1086},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.1708f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1087}] run tp @s 8001.058 136.0205 -21.71793 320.8958 25.10652
execute as @s[scores={cutSceneTimer=1087},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.399 132.0211 -21.38661 288.7202 0
execute as @s[scores={cutSceneTimer=1087},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.0669f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1088}] run tp @s 8001.068 136.0078 -21.70976 321.2802 25.05779
execute as @s[scores={cutSceneTimer=1088},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.622 131.9296 -21.34623 292.9049 0
execute as @s[scores={cutSceneTimer=1088},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.9470f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1089}] run tp @s 8001.077 135.9962 -21.70253 321.6144 25.01304
execute as @s[scores={cutSceneTimer=1089},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.814 131.8475 -21.29419 296.6367 0
execute as @s[scores={cutSceneTimer=1089},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.8152f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1090}] run tp @s 8001.086 135.9844 -21.69536 321.9398 24.96708
execute as @s[scores={cutSceneTimer=1090},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.999 131.7661 -21.22771 300.3622 0
execute as @s[scores={cutSceneTimer=1090},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.6597f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1091}] run tp @s 8001.097 135.9708 -21.68742 322.2928 24.91419
execute as @s[scores={cutSceneTimer=1091},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.196 131.6768 -21.13693 304.5216 0
execute as @s[scores={cutSceneTimer=1091},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.4638f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1092}] run tp @s 8001.106 135.9583 -21.68025 322.6041 24.86466
execute as @s[scores={cutSceneTimer=1092},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.369 131.5983 -21.03981 308.3016 0
execute as @s[scores={cutSceneTimer=1092},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.2706f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1093}] run tp @s 8001.115 135.9456 -21.67323 322.9013 24.81449
execute as @s[scores={cutSceneTimer=1093},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.531 131.5245 -20.9311 312.0222 0
execute as @s[scores={cutSceneTimer=1093},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.0715f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1094}] run tp @s 8001.123 135.9354 -21.66773 323.1288 24.77391
execute as @s[scores={cutSceneTimer=1094},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.654 131.4693 -20.83653 314.9545 0
execute as @s[scores={cutSceneTimer=1094},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.9115f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1095}] run tp @s 8001.132 135.9224 -21.66085 323.4062 24.72161
execute as @s[scores={cutSceneTimer=1095},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.802 131.4045 -20.70698 318.6392 0
execute as @s[scores={cutSceneTimer=1095},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.7107f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1096}] run tp @s 8001.142 135.909 -21.65397 323.675 24.6675
execute as @s[scores={cutSceneTimer=1096},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.943 131.3456 -20.56507 322.3431 0
execute as @s[scores={cutSceneTimer=1096},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.5137f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1097}] run tp @s 8001.151 135.8956 -21.64724 323.9292 24.61274
execute as @s[scores={cutSceneTimer=1097},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.076 131.2946 -20.41459 325.9836 0
execute as @s[scores={cutSceneTimer=1097},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.3298f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1098}] run tp @s 8001.161 135.8819 -21.64056 324.1718 24.55665
execute as @s[scores={cutSceneTimer=1098},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.2 131.2517 -20.25442 329.6061 0
execute as @s[scores={cutSceneTimer=1098},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.1614f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1099}] run tp @s 8001.17 135.868 -21.63391 324.404 24.49888
execute as @s[scores={cutSceneTimer=1099},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.317 131.2178 -20.08405 333.2317 0
execute as @s[scores={cutSceneTimer=1099},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.0125f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1100}] run tp @s 8001.18 135.8539 -21.62735 324.6224 24.44008
execute as @s[scores={cutSceneTimer=1100},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.425 131.1942 -19.9062 336.8141 0
execute as @s[scores={cutSceneTimer=1100},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[6.8900f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1101}] run tp @s 8001.19 135.8394 -21.62078 324.8308 24.37916
execute as @s[scores={cutSceneTimer=1101},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.526 131.1814 -19.71808 340.4182 0
execute as @s[scores={cutSceneTimer=1101},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[6.7968f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1102}] run tp @s 8001.2 135.8248 -21.6143 325.0249 24.31719
execute as @s[scores={cutSceneTimer=1102},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.619 131.1796 -19.52368 343.9765 0
execute as @s[scores={cutSceneTimer=1102},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[6.7400f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1103}] run tp @s 8001.211 135.8075 -21.6068 325.2348 24.24296
execute as @s[scores={cutSceneTimer=1103},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.716 131.1796 -19.28786 348.1035 0
execute as @s[scores={cutSceneTimer=1103},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[6.7243f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1104}] run tp @s 8001.222 135.7924 -21.60045 325.3995 24.17783
execute as @s[scores={cutSceneTimer=1104},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.791 131.1796 -19.07936 351.6069 0
execute as @s[scores={cutSceneTimer=1104},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[6.7385f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1105}] run tp @s 8001.232 135.7769 -21.5942 325.5497 24.11177
execute as @s[scores={cutSceneTimer=1105},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.856 131.1796 -18.8669 355.057 0
execute as @s[scores={cutSceneTimer=1105},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[6.7682f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1106}] run tp @s 8001.243 135.7605 -21.58788 325.6973 24.04378
execute as @s[scores={cutSceneTimer=1106},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.914 131.1796 -18.64542 358.5571 0
execute as @s[scores={cutSceneTimer=1106},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[6.8124f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1107}] run tp @s 8001.254 135.7439 -21.58174 325.8397 23.97666
execute as @s[scores={cutSceneTimer=1107},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.962 131.1796 -18.42386 2.147186 0
execute as @s[scores={cutSceneTimer=1107},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[6.8673f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1108}] run tp @s 8001.261 135.7325 -21.57764 325.9341 23.93126
execute as @s[scores={cutSceneTimer=1108},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.99 131.1796 -18.27273 4.656143 0
execute as @s[scores={cutSceneTimer=1108},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[6.9095f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1109}] run tp @s 8001.272 135.715 -21.57156 326.0732 23.86305
execute as @s[scores={cutSceneTimer=1109},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8012.024 131.1796 -18.04407 8.503334 0
execute as @s[scores={cutSceneTimer=1109},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[6.9791f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1110}] run tp @s 8001.283 135.6966 -21.56538 326.2135 23.79263
execute as @s[scores={cutSceneTimer=1110},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8012.05 131.1796 -17.80659 12.51382 0
execute as @s[scores={cutSceneTimer=1110},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.0565f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1111}] run tp @s 8001.294 135.6782 -21.55941 326.3478 23.72364
execute as @s[scores={cutSceneTimer=1111},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8012.066 131.1796 -17.57317 16.41774 0
execute as @s[scores={cutSceneTimer=1111},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.1355f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1112}] run tp @s 8001.306 135.6594 -21.55349 326.4797 23.65427
execute as @s[scores={cutSceneTimer=1112},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8012.073 131.1796 -17.33834 20.25647 0
execute as @s[scores={cutSceneTimer=1112},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.2159f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1113}] run tp @s 8001.317 135.64 -21.54759 326.6101 23.58413
execute as @s[scores={cutSceneTimer=1113},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8012.066 131.1796 -17.1013 23.98989 0
execute as @s[scores={cutSceneTimer=1113},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.2960f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1114}] run tp @s 8001.329 135.6205 -21.54182 326.7367 23.51449
execute as @s[scores={cutSceneTimer=1114},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8012.032 131.1796 -16.867 27.48981 0
execute as @s[scores={cutSceneTimer=1114},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.3722f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1115}] run tp @s 8001.341 135.6005 -21.53607 326.8618 23.44407
execute as @s[scores={cutSceneTimer=1115},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.973 131.1796 -16.63162 30.76313 0
execute as @s[scores={cutSceneTimer=1115},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.4439f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1116}] run tp @s 8001.353 135.5796 -21.53022 326.9879 23.37148
execute as @s[scores={cutSceneTimer=1116},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.888 131.1796 -16.39122 33.79674 0
execute as @s[scores={cutSceneTimer=1116},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.5098f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1117}] run tp @s 8001.365 135.5586 -21.5245 327.1101 23.29946
execute as @s[scores={cutSceneTimer=1117},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.784 131.1796 -16.15545 36.40573 0
execute as @s[scores={cutSceneTimer=1117},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.5651f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1118}] run tp @s 8001.376 135.5376 -21.5189 327.2286 23.22804
execute as @s[scores={cutSceneTimer=1118},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.662 131.1796 -15.91711 38.54175 0
execute as @s[scores={cutSceneTimer=1118},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.6101f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1119}] run tp @s 8001.389 135.5163 -21.51336 327.345 23.15634
execute as @s[scores={cutSceneTimer=1119},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.523 131.1796 -15.66892 40.17889 0
execute as @s[scores={cutSceneTimer=1119},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.6493f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1120}] run tp @s 8001.401 135.4948 -21.5079 327.4587 23.08477
execute as @s[scores={cutSceneTimer=1120},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.371 131.1796 -15.413 41.2519 0
execute as @s[scores={cutSceneTimer=1120},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.6837f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1121}] run tp @s 8001.413 135.4726 -21.50236 327.5733 23.01105
execute as @s[scores={cutSceneTimer=1121},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.203 131.1796 -15.14158 41.71492 0
execute as @s[scores={cutSceneTimer=1121},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.7150f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1122}] run tp @s 8001.425 135.4503 -21.49693 327.6843 22.93798
execute as @s[scores={cutSceneTimer=1122},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8011.026 131.1796 -14.86546 41.58063 0
execute as @s[scores={cutSceneTimer=1122},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.7429f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1123}] run tp @s 8001.438 135.428 -21.49159 327.7927 22.8651
execute as @s[scores={cutSceneTimer=1123},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.844 131.1796 -14.58361 41.0547 0
execute as @s[scores={cutSceneTimer=1123},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.7686f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1124}] run tp @s 8001.45 135.4056 -21.48634 327.8986 22.79242
execute as @s[scores={cutSceneTimer=1124},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.657 131.1796 -14.2968 40.19078 0
execute as @s[scores={cutSceneTimer=1124},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.7930f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1125}] run tp @s 8001.462 135.3825 -21.48102 328.0047 22.71801
execute as @s[scores={cutSceneTimer=1125},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.463 131.1796 -13.99799 39.00319 0
execute as @s[scores={cutSceneTimer=1125},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.8176f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1126}] run tp @s 8001.475 135.3593 -21.47576 328.1088 22.64337
execute as @s[scores={cutSceneTimer=1126},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.268 131.1796 -13.69351 37.55067 0
execute as @s[scores={cutSceneTimer=1126},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.8428f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1127}] run tp @s 8001.487 135.3364 -21.47065 328.2092 22.56991
execute as @s[scores={cutSceneTimer=1127},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8010.078 131.1796 -13.39 35.91208 0
execute as @s[scores={cutSceneTimer=1127},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.8691f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1128}] run tp @s 8001.5 135.3131 -21.46552 328.3091 22.49535
execute as @s[scores={cutSceneTimer=1128},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.888 131.1796 -13.07849 34.08126 0
execute as @s[scores={cutSceneTimer=1128},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.8980f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1129}] run tp @s 8001.512 135.2899 -21.46051 328.406 22.42143
execute as @s[scores={cutSceneTimer=1129},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.707 131.1796 -12.76705 32.14463 0
execute as @s[scores={cutSceneTimer=1129},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.9299f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1130}] run tp @s 8001.525 135.2665 -21.45551 328.5018 22.34686
execute as @s[scores={cutSceneTimer=1130},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.532 131.1796 -12.45065 30.11091 0
execute as @s[scores={cutSceneTimer=1130},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[7.9662f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1131}] run tp @s 8001.538 135.2427 -21.45048 328.5973 22.27106
execute as @s[scores={cutSceneTimer=1131},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.364 131.1796 -12.12751 28.00659 0
execute as @s[scores={cutSceneTimer=1131},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.0081f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1132}] run tp @s 8001.55 135.219 -21.44554 328.6905 22.19552
execute as @s[scores={cutSceneTimer=1132},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.21 131.1796 -11.80452 25.91619 0
execute as @s[scores={cutSceneTimer=1132},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.0557f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1133}] run tp @s 8001.563 135.1949 -21.44058 328.7833 22.11883
execute as @s[scores={cutSceneTimer=1133},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8009.069 131.1796 -11.47614 23.8448 0
execute as @s[scores={cutSceneTimer=1133},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.1111f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1134}] run tp @s 8001.576 135.171 -21.43569 328.874 22.04243
execute as @s[scores={cutSceneTimer=1134},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.945 131.1796 -11.14929 21.87738 0
execute as @s[scores={cutSceneTimer=1134},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.1741f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1135}] run tp @s 8001.588 135.1474 -21.43092 328.9619 21.96683
execute as @s[scores={cutSceneTimer=1135},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.833 131.1796 -10.82675 20.06799 0
execute as @s[scores={cutSceneTimer=1135},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.2496f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1136}] run tp @s 8001.601 135.1237 -21.42619 329.0485 21.89108
execute as @s[scores={cutSceneTimer=1136},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.723 131.1796 -10.5049 18.43343 0
execute as @s[scores={cutSceneTimer=1136},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.3418f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1137}] run tp @s 8001.609 135.1078 -21.42301 329.1062 21.83971
execute as @s[scores={cutSceneTimer=1137},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.65 131.1796 -10.28779 17.44822 0
execute as @s[scores={cutSceneTimer=1137},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.4123f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1138}] run tp @s 8001.622 135.0842 -21.41836 329.1902 21.76377
execute as @s[scores={cutSceneTimer=1138},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.544 131.1796 -9.968877 16.20467 0
execute as @s[scores={cutSceneTimer=1138},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.5260f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1139}] run tp @s 8001.634 135.0606 -21.41371 329.2736 21.68709
execute as @s[scores={cutSceneTimer=1139},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.441 131.1796 -9.649774 15.08153 0
execute as @s[scores={cutSceneTimer=1139},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.6497f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1140}] run tp @s 8001.646 135.0371 -21.40912 329.3553 21.61053
execute as @s[scores={cutSceneTimer=1140},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.343 131.1796 -9.334825 13.96101 0
execute as @s[scores={cutSceneTimer=1140},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.7794f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1141}] run tp @s 8001.659 135.0137 -21.40459 329.4355 21.53407
execute as @s[scores={cutSceneTimer=1141},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.25 131.1796 -9.024432 12.84838 0
execute as @s[scores={cutSceneTimer=1141},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[8.9120f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1142}] run tp @s 8001.671 134.9904 -21.40007 329.515 21.45703
execute as @s[scores={cutSceneTimer=1142},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.163 131.1796 -8.716397 11.73962 0
execute as @s[scores={cutSceneTimer=1142},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.0460f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1143}] run tp @s 8001.683 134.9674 -21.39565 329.5922 21.38082
execute as @s[scores={cutSceneTimer=1143},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.082 131.1796 -8.417028 10.6612 0
execute as @s[scores={cutSceneTimer=1143},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.1760f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1144}] run tp @s 8001.695 134.9446 -21.39127 329.6683 21.30453
execute as @s[scores={cutSceneTimer=1144},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8008.009 131.1796 -8.123075 9.605225 0
execute as @s[scores={cutSceneTimer=1144},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.3010f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1145}] run tp @s 8001.707 134.922 -21.38692 329.7433 21.22814
execute as @s[scores={cutSceneTimer=1145},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.943 131.1796 -7.835127 8.577484 0
execute as @s[scores={cutSceneTimer=1145},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.4181f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1146}] run tp @s 8001.72 134.8968 -21.38209 329.8262 21.14221
execute as @s[scores={cutSceneTimer=1146},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.879 131.1796 -7.519595 7.46405 0
execute as @s[scores={cutSceneTimer=1146},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.5368f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1147}] run tp @s 8001.732 134.8746 -21.37783 329.899 21.06553
execute as @s[scores={cutSceneTimer=1147},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.832 131.1796 -7.245983 6.51442 0
execute as @s[scores={cutSceneTimer=1147},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.6281f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1148}] run tp @s 8001.744 134.8526 -21.37361 329.9707 20.98889
execute as @s[scores={cutSceneTimer=1148},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.794 131.1796 -6.980762 5.613197 0
execute as @s[scores={cutSceneTimer=1148},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.7028f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1149}] run tp @s 8001.755 134.8305 -21.36937 330.0424 20.91119
execute as @s[scores={cutSceneTimer=1149},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.768 131.1796 -6.720748 4.753815 0
execute as @s[scores={cutSceneTimer=1149},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.7586f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1150}] run tp @s 8001.767 134.809 -21.36522 330.1122 20.83442
execute as @s[scores={cutSceneTimer=1150},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.752 131.1796 -6.473253 3.964348 0
execute as @s[scores={cutSceneTimer=1150},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.7915f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1151}] run tp @s 8001.779 134.7877 -21.36109 330.1814 20.75721
execute as @s[scores={cutSceneTimer=1151},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -6.233966 3.235771 0
execute as @s[scores={cutSceneTimer=1151},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1152}] run tp @s 8001.79 134.7665 -21.35696 330.2504 20.67934
execute as @s[scores={cutSceneTimer=1152},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -5.992888 2.573547 0
execute as @s[scores={cutSceneTimer=1152},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1153}] run tp @s 8001.801 134.7458 -21.3529 330.318 20.60196
execute as @s[scores={cutSceneTimer=1153},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -5.749195 1.993286 0
execute as @s[scores={cutSceneTimer=1153},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1154}] run tp @s 8001.813 134.7255 -21.3489 330.3844 20.52505
execute as @s[scores={cutSceneTimer=1154},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -5.50348 1.499588 0
execute as @s[scores={cutSceneTimer=1154},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1155}] run tp @s 8001.823 134.7056 -21.34493 330.4501 20.44814
execute as @s[scores={cutSceneTimer=1155},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -5.25456 1.094215 0
execute as @s[scores={cutSceneTimer=1155},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1156}] run tp @s 8001.834 134.6858 -21.34095 330.5158 20.37029
execute as @s[scores={cutSceneTimer=1156},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -4.999831 0.7797699 0
execute as @s[scores={cutSceneTimer=1156},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1157}] run tp @s 8001.845 134.6665 -21.33703 330.5804 20.29292
execute as @s[scores={cutSceneTimer=1157},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -4.744414 0.5690155 0
execute as @s[scores={cutSceneTimer=1157},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1158}] run tp @s 8001.855 134.6475 -21.33311 330.6449 20.21498
execute as @s[scores={cutSceneTimer=1158},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -4.48524 0.4652481 0
execute as @s[scores={cutSceneTimer=1158},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1159}] run tp @s 8001.866 134.629 -21.32926 330.7083 20.13761
execute as @s[scores={cutSceneTimer=1159},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -4.226591 0.4556351 0
execute as @s[scores={cutSceneTimer=1159},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1160}] run tp @s 8001.876 134.6109 -21.32543 330.7712 20.06021
execute as @s[scores={cutSceneTimer=1160},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -3.966879 0.4556351 0
execute as @s[scores={cutSceneTimer=1160},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1161}] run tp @s 8001.886 134.5934 -21.32164 330.8334 19.98293
execute as @s[scores={cutSceneTimer=1161},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -3.707109 0.4556351 0
execute as @s[scores={cutSceneTimer=1161},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1162}] run tp @s 8001.894 134.5807 -21.31886 330.8793 19.92563
execute as @s[scores={cutSceneTimer=1162},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -3.51443 0.4556351 0
execute as @s[scores={cutSceneTimer=1162},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1163}] run tp @s 8001.903 134.5641 -21.31514 330.9403 19.84888
execute as @s[scores={cutSceneTimer=1163},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -3.256659 0.4556351 0
execute as @s[scores={cutSceneTimer=1163},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1164}] run tp @s 8001.913 134.5477 -21.31142 331.0018 19.77122
execute as @s[scores={cutSceneTimer=1164},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -2.99652 0.4556351 0
execute as @s[scores={cutSceneTimer=1164},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1165}] run tp @s 8001.922 134.5317 -21.30765 331.0639 19.69217
execute as @s[scores={cutSceneTimer=1165},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -2.73301 0.4556351 0
execute as @s[scores={cutSceneTimer=1165},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1166}] run tp @s 8001.932 134.5165 -21.30401 331.1242 19.61502
execute as @s[scores={cutSceneTimer=1166},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -2.477516 0.4556351 0
execute as @s[scores={cutSceneTimer=1166},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1167}] run tp @s 8001.941 134.502 -21.3004 331.1841 19.53808
execute as @s[scores={cutSceneTimer=1167},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -2.224763 0.4556351 0
execute as @s[scores={cutSceneTimer=1167},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1168}] run tp @s 8001.95 134.4867 -21.29648 331.2494 19.45403
execute as @s[scores={cutSceneTimer=1168},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -1.9516 0.4556351 0
execute as @s[scores={cutSceneTimer=1168},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1169}] run tp @s 8001.959 134.4734 -21.29294 331.3087 19.37735
execute as @s[scores={cutSceneTimer=1169},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -1.705571 0.4556351 0
execute as @s[scores={cutSceneTimer=1169},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1170}] run tp @s 8001.967 134.4608 -21.28944 331.3675 19.30117
execute as @s[scores={cutSceneTimer=1170},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -1.464633 0.4556351 0
execute as @s[scores={cutSceneTimer=1170},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1171}] run tp @s 8001.976 134.4487 -21.28595 331.4264 19.22469
execute as @s[scores={cutSceneTimer=1171},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -1.226614 0.4556351 0
execute as @s[scores={cutSceneTimer=1171},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1172}] run tp @s 8001.983 134.4371 -21.28243 331.4861 19.14722
execute as @s[scores={cutSceneTimer=1172},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -0.9900198 0.4556351 0
execute as @s[scores={cutSceneTimer=1172},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1173}] run tp @s 8001.991 134.4263 -21.27895 331.5456 19.06998
execute as @s[scores={cutSceneTimer=1173},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -0.7591367 0.4556351 0
execute as @s[scores={cutSceneTimer=1173},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1174}] run tp @s 8001.999 134.4161 -21.27547 331.6055 18.99228
execute as @s[scores={cutSceneTimer=1174},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -0.5324097 0.4556351 0
execute as @s[scores={cutSceneTimer=1174},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1175}] run tp @s 8002.006 134.4068 -21.27209 331.664 18.91653
execute as @s[scores={cutSceneTimer=1175},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -0.3172069 0.4556351 0
execute as @s[scores={cutSceneTimer=1175},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1176}] run tp @s 8002.013 134.3982 -21.26874 331.7227 18.84074
execute as @s[scores={cutSceneTimer=1176},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 -0.1081306 0.4556351 0
execute as @s[scores={cutSceneTimer=1176},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1177}] run tp @s 8002.019 134.3903 -21.2654 331.7816 18.76505
execute as @s[scores={cutSceneTimer=1177},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 0.09394211 0.4556351 0
execute as @s[scores={cutSceneTimer=1177},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1178}] run tp @s 8002.025 134.383 -21.26212 331.841 18.68963
execute as @s[scores={cutSceneTimer=1178},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 0.2880682 0.4556351 0
execute as @s[scores={cutSceneTimer=1178},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1179}] run tp @s 8002.032 134.3761 -21.25893 331.9009 18.61433
execute as @s[scores={cutSceneTimer=1179},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 0.4742625 0.4556351 0
execute as @s[scores={cutSceneTimer=1179},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1180}] run tp @s 8002.038 134.3699 -21.25582 331.9613 18.53906
execute as @s[scores={cutSceneTimer=1180},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 0.6519439 0.4556351 0
execute as @s[scores={cutSceneTimer=1180},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1181}] run tp @s 8002.044 134.3641 -21.25278 332.0225 18.46343
execute as @s[scores={cutSceneTimer=1181},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 0.8212774 0.4556351 0
execute as @s[scores={cutSceneTimer=1181},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1182}] run tp @s 8002.049 134.3589 -21.24983 332.0838 18.38815
execute as @s[scores={cutSceneTimer=1182},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 0.9801917 0.4556351 0
execute as @s[scores={cutSceneTimer=1182},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1183}] run tp @s 8002.055 134.3541 -21.24695 332.1459 18.31242
execute as @s[scores={cutSceneTimer=1183},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 1.129855 0.4556351 0
execute as @s[scores={cutSceneTimer=1183},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1184}] run tp @s 8002.059 134.3512 -21.24508 332.1873 18.2621
execute as @s[scores={cutSceneTimer=1184},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 1.223415 0.4556351 0
execute as @s[scores={cutSceneTimer=1184},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1185}] run tp @s 8002.064 134.3473 -21.24233 332.2502 18.18627
execute as @s[scores={cutSceneTimer=1185},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 1.355185 0.4556351 0
execute as @s[scores={cutSceneTimer=1185},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1186}] run tp @s 8002.069 134.3439 -21.23968 332.313 18.11097
execute as @s[scores={cutSceneTimer=1186},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 1.474649 0.4556351 0
execute as @s[scores={cutSceneTimer=1186},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1187}] run tp @s 8002.074 134.3409 -21.2371 332.3763 18.03562
execute as @s[scores={cutSceneTimer=1187},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 1.582363 0.4556351 0
execute as @s[scores={cutSceneTimer=1187},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1188}] run tp @s 8002.078 134.3384 -21.2346 332.4395 17.96077
execute as @s[scores={cutSceneTimer=1188},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 1.677188 0.4556351 0
execute as @s[scores={cutSceneTimer=1188},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1189}] run tp @s 8002.083 134.3363 -21.23213 332.5043 17.88443
execute as @s[scores={cutSceneTimer=1189},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 1.760932 0.4556351 0
execute as @s[scores={cutSceneTimer=1189},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1190}] run tp @s 8002.087 134.3347 -21.22978 332.5683 17.80951
execute as @s[scores={cutSceneTimer=1190},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 1.829916 0.4556351 0
execute as @s[scores={cutSceneTimer=1190},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1191}] run tp @s 8002.091 134.3335 -21.22746 332.6335 17.73358
execute as @s[scores={cutSceneTimer=1191},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 1.886012 0.4556351 0
execute as @s[scores={cutSceneTimer=1191},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1192}] run tp @s 8002.095 134.3327 -21.22523 332.6986 17.65822
execute as @s[scores={cutSceneTimer=1192},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 1.927487 0.4556351 0
execute as @s[scores={cutSceneTimer=1192},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1193}] run tp @s 8002.099 134.3322 -21.22302 332.7649 17.58177
execute as @s[scores={cutSceneTimer=1193},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 1.954599 0.4556351 0
execute as @s[scores={cutSceneTimer=1193},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1194}] run tp @s 8002.103 134.3322 -21.22093 332.8303 17.50678
execute as @s[scores={cutSceneTimer=1194},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 1.966104 0.4556351 0
execute as @s[scores={cutSceneTimer=1194},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1195}] run tp @s 8002.106 134.3326 -21.21888 332.8965 17.43129
execute as @s[scores={cutSceneTimer=1195},tag=cutsceneLeader] run tp @e[tag=cutscenePatronus,limit=1] 8007.748 131.1796 1.966591 0.4556351 0
execute as @s[scores={cutSceneTimer=1195},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {Pose:{Head:[9.8000f,0f,0.0000f]}}
execute as @s[scores={cutSceneTimer=1196}] run tp @s 8002.11 134.3333 -21.21687 332.9634 17.35532
execute as @s[scores={cutSceneTimer=1197}] run tp @s 8002.113 134.3344 -21.21494 333.0302 17.27981
execute as @s[scores={cutSceneTimer=1198}] run tp @s 8002.116 134.3359 -21.21305 333.0977 17.20379
execute as @s[scores={cutSceneTimer=1199}] run tp @s 8002.12 134.3377 -21.21121 333.1655 17.12774
execute as @s[scores={cutSceneTimer=1200}] run tp @s 8002.123 134.3398 -21.20944 333.2332 17.05222
execute as @s[scores={cutSceneTimer=1201}] run tp @s 8002.125 134.3422 -21.20772 333.3011 16.9766
execute as @s[scores={cutSceneTimer=1202}] run tp @s 8002.128 134.3449 -21.20605 333.3693 16.90105
execute as @s[scores={cutSceneTimer=1203}] run tp @s 8002.13 134.3479 -21.20443 333.4373 16.82593
execute as @s[scores={cutSceneTimer=1204}] run tp @s 8002.133 134.3512 -21.20286 333.5056 16.7508
execute as @s[scores={cutSceneTimer=1205}] run tp @s 8002.135 134.3547 -21.20133 333.5741 16.67567
execute as @s[scores={cutSceneTimer=1206}] run tp @s 8002.138 134.3586 -21.19984 333.6432 16.60014
execute as @s[scores={cutSceneTimer=1207}] run tp @s 8002.14 134.3627 -21.19836 333.7135 16.52347
execute as @s[scores={cutSceneTimer=1208}] run tp @s 8002.142 134.3671 -21.19693 333.784 16.44688
execute as @s[scores={cutSceneTimer=1209}] run tp @s 8002.144 134.3716 -21.19555 333.8538 16.37115
execute as @s[scores={cutSceneTimer=1210}] run tp @s 8002.146 134.3764 -21.1942 333.924 16.29527
execute as @s[scores={cutSceneTimer=1211}] run tp @s 8002.147 134.3814 -21.19288 333.9947 16.21908
execute as @s[scores={cutSceneTimer=1212}] run tp @s 8002.149 134.3867 -21.19159 334.0656 16.14277
execute as @s[scores={cutSceneTimer=1213}] run tp @s 8002.151 134.392 -21.19034 334.1361 16.06707
execute as @s[scores={cutSceneTimer=1214}] run tp @s 8002.153 134.3976 -21.18912 334.2068 15.99138
execute as @s[scores={cutSceneTimer=1215}] run tp @s 8002.154 134.4032 -21.18793 334.2771 15.91614
execute as @s[scores={cutSceneTimer=1216}] run tp @s 8002.156 134.4091 -21.18677 334.3476 15.8409
execute as @s[scores={cutSceneTimer=1217}] run tp @s 8002.157 134.4151 -21.18562 334.4191 15.76475
execute as @s[scores={cutSceneTimer=1218}] run tp @s 8002.159 134.4213 -21.18449 334.4907 15.68852
execute as @s[scores={cutSceneTimer=1219}] run tp @s 8002.16 134.4276 -21.18339 334.562 15.61279
execute as @s[scores={cutSceneTimer=1220}] run tp @s 8002.162 134.434 -21.18229 334.6343 15.53607
execute as @s[scores={cutSceneTimer=1221}] run tp @s 8002.163 134.4405 -21.18121 334.7063 15.45983
execute as @s[scores={cutSceneTimer=1222}] run tp @s 8002.164 134.4471 -21.18016 334.7778 15.38411
execute as @s[scores={cutSceneTimer=1223}] run tp @s 8002.165 134.4516 -21.17946 334.8262 15.33294
execute as @s[scores={cutSceneTimer=1224}] run tp @s 8002.166 134.4584 -21.17841 334.8988 15.25619
execute as @s[scores={cutSceneTimer=1225}] run tp @s 8002.167 134.4652 -21.17738 334.9715 15.17944
execute as @s[scores={cutSceneTimer=1226}] run tp @s 8002.168 134.4724 -21.1763 335.0476 15.09912
execute as @s[scores={cutSceneTimer=1227}] run tp @s 8002.169 134.4793 -21.17529 335.1198 15.02292
execute as @s[scores={cutSceneTimer=1228}] run tp @s 8002.171 134.4862 -21.1743 335.1912 14.94762
execute as @s[scores={cutSceneTimer=1229}] run tp @s 8002.172 134.493 -21.17331 335.2626 14.87234
execute as @s[scores={cutSceneTimer=1230}] run tp @s 8002.173 134.4999 -21.17232 335.334 14.79705
execute as @s[scores={cutSceneTimer=1231}] run tp @s 8002.174 134.5069 -21.17131 335.4067 14.72035
execute as @s[scores={cutSceneTimer=1232}] run tp @s 8002.175 134.5138 -21.17032 335.4785 14.64457
execute as @s[scores={cutSceneTimer=1233}] run tp @s 8002.176 134.5206 -21.16932 335.5499 14.56929
execute as @s[scores={cutSceneTimer=1234}] run tp @s 8002.177 134.5275 -21.16831 335.6222 14.49307
execute as @s[scores={cutSceneTimer=1235}] run tp @s 8002.179 134.5343 -21.1673 335.6944 14.41677
execute as @s[scores={cutSceneTimer=1236}] run tp @s 8002.18 134.5411 -21.16628 335.7661 14.34099
execute as @s[scores={cutSceneTimer=1237}] run tp @s 8002.181 134.5477 -21.16525 335.8378 14.26525
execute as @s[scores={cutSceneTimer=1238}] run tp @s 8002.182 134.5544 -21.1642 335.9097 14.18907
execute as @s[scores={cutSceneTimer=1239}] run tp @s 8002.184 134.561 -21.16313 335.9822 14.11232
execute as @s[scores={cutSceneTimer=1240}] run tp @s 8002.185 134.5673 -21.16207 336.0531 14.03705
execute as @s[scores={cutSceneTimer=1241}] run tp @s 8002.186 134.5737 -21.16097 336.1254 13.9603
execute as @s[scores={cutSceneTimer=1242}] run tp @s 8002.188 134.58 -21.15985 336.1975 13.88357
execute as @s[scores={cutSceneTimer=1243}] run tp @s 8002.189 134.5861 -21.15871 336.2696 13.80681
execute as @s[scores={cutSceneTimer=1244}] run tp @s 8002.19 134.5919 -21.15757 336.3401 13.73158
execute as @s[scores={cutSceneTimer=1245}] run tp @s 8002.192 134.5977 -21.1564 336.4105 13.65635
execute as @s[scores={cutSceneTimer=1246}] run tp @s 8002.194 134.6032 -21.15522 336.4807 13.58112
execute as @s[scores={cutSceneTimer=1247}] run tp @s 8002.195 134.6086 -21.154 336.5511 13.50565
execute as @s[scores={cutSceneTimer=1248}] run tp @s 8002.197 134.6138 -21.15275 336.6215 13.42993
execute as @s[scores={cutSceneTimer=1249}] run tp @s 8002.199 134.6189 -21.15146 336.6921 13.35377
execute as @s[scores={cutSceneTimer=1250}] run tp @s 8002.201 134.6238 -21.15013 336.7631 13.27711
execute as @s[scores={cutSceneTimer=1251}] run tp @s 8002.202 134.6269 -21.14922 336.8102 13.22599
execute as @s[scores={cutSceneTimer=1232}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=1253}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=1253}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=1253}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=1253}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=1253,playerID=1}] run tp @s 7998.65 133.00 -22.90 591.68 3.83
execute as @s[scores={cutSceneTimer=1253,playerID=2}] run tp @s 7997.60 133.00 -24.51 610.08 3.29
execute as @s[scores={cutSceneTimer=1253,playerID=3}] run tp @s 8000.97 133.00 -21.70 563.28 4.59
execute as @s[scores={cutSceneTimer=1253,playerID=4}] run tp @s 8002.88 133.00 -22.03 543.51 4.38
execute as @s[scores={cutSceneTimer=1279}] run tag @s add dontExitCutSceneSilent
execute as @s[scores={cutSceneTimer=1279}] run scoreboard players set playerInPatronusSpellChallenge global 1
execute as @s[scores={cutSceneTimer=1279}] run function hp:quests/timer/start_pensive_timer
execute as @s[scores={cutSceneTimer=1279}] run function hp:cutscenes/exit_cutscene

# Unhide the patronus after it has been cast
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[scores={cutSceneTimer=955},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:55}}]}
execute as @s[scores={cutSceneTimer=1250},tag=cutsceneLeader] run data merge entity @e[tag=cutscenePatronus,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}


execute as @s[scores={cutSceneTimer=955}] run effect give @s minecraft:night_vision 100 10 true
execute as @s[scores={cutSceneTimer=955}] run effect give @s minecraft:blindness 1 1 true
execute as @s[scores={cutSceneTimer=966}] run effect clear @s minecraft:blindness
execute as @s[scores={cutSceneTimer=976}] run effect clear @s minecraft:night_vision

execute as @s[scores={cutSceneTimer=955},tag=cutsceneLeader] at @s run summon minecraft:lightning_bolt ~ ~300 ~  
execute as @s[scores={cutSceneTimer=955},tag=cutsceneLeader] at @e[tag=lupinPatronusClassroom,limit=1] run particle minecraft:cloud ^ ^1 ^1 1 1 1 0.1 300 normal
execute as @s[scores={cutSceneTimer=955},tag=cutsceneLeader] at @e[tag=lupinPatronusClassroom,limit=1] run playsound minecraft:custom.spell.patronus.cast master @s ~ ~ ~


# Wand animation
execute as @s[scores={cutSceneTimer=1}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 95
execute as @s[scores={cutSceneTimer=950}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 20
execute as @s[scores={cutSceneTimer=951}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 19
execute as @s[scores={cutSceneTimer=952}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 18
execute as @s[scores={cutSceneTimer=953}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 17
execute as @s[scores={cutSceneTimer=954}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 16
execute as @s[scores={cutSceneTimer=955}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 15
execute as @s[scores={cutSceneTimer=956}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 14
execute as @s[scores={cutSceneTimer=957}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 13
execute as @s[scores={cutSceneTimer=958}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 12
execute as @s[scores={cutSceneTimer=959}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 11
execute as @s[scores={cutSceneTimer=960}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 10
execute as @s[scores={cutSceneTimer=961}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 9
execute as @s[scores={cutSceneTimer=962}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 8
execute as @s[scores={cutSceneTimer=963}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 7
execute as @s[scores={cutSceneTimer=964}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 6
execute as @s[scores={cutSceneTimer=965}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 5
execute as @s[scores={cutSceneTimer=966}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 4
execute as @s[scores={cutSceneTimer=967}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 3
execute as @s[scores={cutSceneTimer=968}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 2
execute as @s[scores={cutSceneTimer=969}] as @e[tag=lupinPatronusClassroom,limit=1] store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players set @s tmp 1


# Lupin move
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 7999.9 133 -26.00011 330.8551 0
execute as @s[scores={cutSceneTimer=861},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 7999.906 133 -26.00092 329.6723 0
execute as @s[scores={cutSceneTimer=862},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 7999.915 133 -26.00249 327.4129 0
execute as @s[scores={cutSceneTimer=863},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 7999.929 133 -26.00479 324.2686 0
execute as @s[scores={cutSceneTimer=864},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 7999.948 133 -26.00782 320.3466 0
execute as @s[scores={cutSceneTimer=865},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 7999.971 133 -26.01152 315.8698 0
execute as @s[scores={cutSceneTimer=866},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 7999.998 133 -26.01584 311.0152 0
execute as @s[scores={cutSceneTimer=867},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.029 133 -26.02089 305.816 0
execute as @s[scores={cutSceneTimer=868},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.063 133 -26.02651 300.5619 0
execute as @s[scores={cutSceneTimer=869},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.102 133 -26.03269 295.4174 0
execute as @s[scores={cutSceneTimer=870},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.144 133 -26.03951 290.4572 0
execute as @s[scores={cutSceneTimer=871},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.188 133 -26.04682 285.9422 0
execute as @s[scores={cutSceneTimer=872},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.223 133 -26.05237 283.0507 0
execute as @s[scores={cutSceneTimer=873},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.273 133 -26.06048 279.652 0
execute as @s[scores={cutSceneTimer=874},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.326 133 -26.06905 277.1074 0
execute as @s[scores={cutSceneTimer=875},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.381 133 -26.07804 275.5771 0
execute as @s[scores={cutSceneTimer=876},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.439 133 -26.08745 275.1277 0
execute as @s[scores={cutSceneTimer=877},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.499 133 -26.09717 274.9182 0
execute as @s[scores={cutSceneTimer=878},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.562 133 -26.10736 274.716 0
execute as @s[scores={cutSceneTimer=879},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.626 133 -26.11775 274.5256 0
execute as @s[scores={cutSceneTimer=880},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.692 133 -26.12844 274.3442 0
execute as @s[scores={cutSceneTimer=881},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.759 133 -26.1394 274.1718 0
execute as @s[scores={cutSceneTimer=882},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.83 133 -26.15083 274.0049 0
execute as @s[scores={cutSceneTimer=883},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.901 133 -26.16241 273.8477 0
execute as @s[scores={cutSceneTimer=884},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8000.973 133 -26.17405 273.7008 0
execute as @s[scores={cutSceneTimer=885},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8001.044 133 -26.18559 273.5648 0
execute as @s[scores={cutSceneTimer=886},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8001.119 133 -26.19767 273.4321 0
execute as @s[scores={cutSceneTimer=887},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8001.198 133 -26.21045 273.3014 0
execute as @s[scores={cutSceneTimer=888},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8001.273 133 -26.22271 273.1845 0
execute as @s[scores={cutSceneTimer=889},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8001.35 133 -26.23518 273.0735 0
execute as @s[scores={cutSceneTimer=890},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8001.43 133 -26.2482 272.9658 0
execute as @s[scores={cutSceneTimer=891},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8001.506 133 -26.26049 272.8709 0
execute as @s[scores={cutSceneTimer=892},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8001.583 133 -26.27302 272.7808 0
execute as @s[scores={cutSceneTimer=893},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8001.648 133 -26.28348 272.7102 0
execute as @s[scores={cutSceneTimer=894},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8001.721 133 -26.29525 272.6357 0
execute as @s[scores={cutSceneTimer=895},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8001.795 133 -26.30743 272.5639 0
execute as @s[scores={cutSceneTimer=896},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8001.882 133 -26.32153 272.4869 0
execute as @s[scores={cutSceneTimer=897},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8001.956 133 -26.33338 272.4271 0
execute as @s[scores={cutSceneTimer=898},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.028 133 -26.34508 272.3724 0
execute as @s[scores={cutSceneTimer=899},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.076 133 -26.35284 272.3384 0
execute as @s[scores={cutSceneTimer=900},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.151 133 -26.36509 272.2881 0
execute as @s[scores={cutSceneTimer=901},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.22 133 -26.37627 272.2459 0
execute as @s[scores={cutSceneTimer=902},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.288 133 -26.38719 272.2081 0
execute as @s[scores={cutSceneTimer=903},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.363 133 -26.39948 272.1692 0
execute as @s[scores={cutSceneTimer=904},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.426 133 -26.40969 272.14 0
execute as @s[scores={cutSceneTimer=905},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.487 133 -26.41961 272.1141 0
execute as @s[scores={cutSceneTimer=906},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.542 133 -26.42843 272.0932 0
execute as @s[scores={cutSceneTimer=907},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.602 133 -26.43821 272.0724 0
execute as @s[scores={cutSceneTimer=908},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.656 133 -26.44697 272.0558 0
execute as @s[scores={cutSceneTimer=909},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.711 133 -26.45597 272.0407 0
execute as @s[scores={cutSceneTimer=910},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.76 133 -26.46385 272.0293 0
execute as @s[scores={cutSceneTimer=911},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.791 133 -26.46887 272.0229 0
execute as @s[scores={cutSceneTimer=912},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.841 133 -26.47696 272.014 0
execute as @s[scores={cutSceneTimer=913},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.879 133 -26.48322 272.0084 0
execute as @s[scores={cutSceneTimer=914},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.915 133 -26.48896 272.0043 0
execute as @s[scores={cutSceneTimer=915},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.942 133 -26.49335 272.0019 0
execute as @s[scores={cutSceneTimer=916},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.97 133 -26.49791 272.0001 0
execute as @s[scores={cutSceneTimer=917},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8002.994 133 -26.50183 271.9992 0
execute as @s[scores={cutSceneTimer=918},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8003.018 133 -26.50562 271.9989 0
execute as @s[scores={cutSceneTimer=919},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8003.033 133 -26.50813 271.9991 0
execute as @s[scores={cutSceneTimer=920},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8003.043 133 -26.50983 271.9995 0
execute as @s[scores={cutSceneTimer=1250},tag=cutsceneLeader] run tp @e[tag=lupinPatronusClassroom,limit=1] 8003.043 133 -26.50983 45 0


# ¤Lupin:¤ Now, before we begin, I must tell you: This is very advanced magic, well beyond the normal wizarding level.
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=20..190}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"                   "}]
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=27},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=31},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=38},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=49},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=53},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=60},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral


# ¤Lupin:¤ The spell I'm going to try to teach you is called a Patronus charm.
execute as @s[scores={cutSceneTimer=190},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=190..290}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"              "}]
execute as @s[scores={cutSceneTimer=190},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=197},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=201},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=208},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=212},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=219},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=223},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=230},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral


# ¤Lupin:¤ A Patronus is a kind of positive force, which can protect you against dementors.
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=290..410}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"              "}]
execute as @s[scores={cutSceneTimer=290},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=297},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=301},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=308},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=312},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=319},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=323},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=330},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral


# ¤Lupin:¤ A dementor cannot be killed.
execute as @s[scores={cutSceneTimer=410},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=410..490}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"     "}]
execute as @s[scores={cutSceneTimer=410},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=417},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=421},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=428},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=432},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=439},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=443},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=450},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Lupin:¤ But with the Patronus charm you can force it to keep its distance, if only for a little while.
execute as @s[scores={cutSceneTimer=490},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=490..610}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"                   "}]
execute as @s[scores={cutSceneTimer=490},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=497},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=501},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=508},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=512},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=519},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=523},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=530},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Lupin:¤ The aim is to produce a silvery-white guardian or protector,
execute as @s[scores={cutSceneTimer=610},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=610..710}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"          "}]
execute as @s[scores={cutSceneTimer=610},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=617},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=621},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=628},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=632},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=639},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=643},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=650},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Lupin:¤ which takes the form of an animal, and which will force the dementors to retreat.
execute as @s[scores={cutSceneTimer=710},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=710..820}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"               "}]
execute as @s[scores={cutSceneTimer=710},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=717},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=721},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=728},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=732},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=739},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=743},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=750},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Lupin:¤ Let me demonstrate:
execute as @s[scores={cutSceneTimer=820},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=820..900}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"   "}]
execute as @s[scores={cutSceneTimer=820},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=827},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=831},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=838},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=842},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=849},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=853},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=860},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral


execute as @s[scores={cutSceneTimer=900..960}] run title @s actionbar ""


# ¤Lupin:¤ Expecto Patronum!
execute as @s[scores={cutSceneTimer=960},tag=cutsceneLeader] run tag @e[tag=lupinPatronusClassroomFpEngine,limit=1] remove cutsceneStop
execute as @s[scores={cutSceneTimer=960},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=960..1020}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"  "}]
execute as @s[scores={cutSceneTimer=960},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=967},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=971},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=978},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=982},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=989},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=993},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=1000},tag=cutsceneLeader] as @e[tag=lupinPatronusClassroom,limit=1] run function hp:npc/update_npc_head_neutral

execute as @s[scores={cutSceneTimer=1020..}] run title @s actionbar ""


# Wolf running animation
execute as @s[tag=cutsceneLeader] as @e[tag=cutscenePatronus,limit=1] run data merge entity @s {Fire:2000}
execute as @s[tag=cutsceneLeader] as @e[tag=cutscenePatronus,limit=1] run scoreboard players remove @s animTest 1
execute as @s[tag=cutsceneLeader] as @e[tag=cutscenePatronus,limit=1] run scoreboard players set @s[scores={animTest=..43}] animTest 55

execute as @s[tag=cutsceneLeader] as @e[tag=cutscenePatronus,limit=1] run execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get @s animTest
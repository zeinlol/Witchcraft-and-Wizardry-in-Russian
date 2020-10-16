execute as @s[scores={trackQuestState=2}] run scoreboard players set @s questState 3
execute as @s[scores={trackQuestState=2}] run function hp:quests/set_quest

execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=22}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=22}] run function hp:cutscenes/fade_out

execute as @s[scores={cutSceneTimer=..20}] run title @s actionbar ["",{"text":" "}]
execute as @s[scores={cutSceneTimer=23}] run tp @s 713.8901 75.37994 36.41004 331.0035 36.9975
execute as @s[scores={cutSceneTimer=24}] run tp @s 713.8901 75.37994 36.41004 331.0035 36.9975
execute as @s[scores={cutSceneTimer=25}] run tp @s 713.8901 75.37994 36.41004 331.0035 36.9975
execute as @s[scores={cutSceneTimer=26}] run tp @s 713.8901 75.37994 36.41004 331.0035 36.9975
execute as @s[scores={cutSceneTimer=27}] run tp @s 713.8901 75.37994 36.41004 331.0035 36.9975
execute as @s[scores={cutSceneTimer=28}] run tp @s 713.8901 75.37994 36.41004 331.0035 36.9975
execute as @s[scores={cutSceneTimer=29}] run tp @s 713.8901 75.37994 36.41004 331.0035 36.9975
execute as @s[scores={cutSceneTimer=30}] run tp @s 713.8901 75.37994 36.41004 331.0035 36.9975
execute as @s[scores={cutSceneTimer=31}] run tp @s 713.9216 75.35855 36.4268 331.0973 36.94676
execute as @s[scores={cutSceneTimer=32}] run tp @s 713.9302 75.35269 36.43143 331.1134 36.93982
execute as @s[scores={cutSceneTimer=33}] run tp @s 713.9397 75.34625 36.43653 331.1298 36.93303
execute as @s[scores={cutSceneTimer=34}] run tp @s 713.9502 75.3391 36.44221 331.1472 36.92618
execute as @s[scores={cutSceneTimer=35}] run tp @s 713.9619 75.33115 36.44853 331.1657 36.91922
execute as @s[scores={cutSceneTimer=36}] run tp @s 713.9744 75.32253 36.45541 331.1849 36.91225
execute as @s[scores={cutSceneTimer=37}] run tp @s 713.9879 75.3133 36.4628 331.2048 36.90535
execute as @s[scores={cutSceneTimer=38}] run tp @s 714.0023 75.30346 36.47069 331.2253 36.89851
execute as @s[scores={cutSceneTimer=39}] run tp @s 714.0178 75.29282 36.47924 331.2469 36.8916
execute as @s[scores={cutSceneTimer=40}] run tp @s 714.0339 75.28175 36.48818 331.2689 36.88481
execute as @s[scores={cutSceneTimer=41}] run tp @s 714.0509 75.27003 36.49765 331.2917 36.87801
execute as @s[scores={cutSceneTimer=42}] run tp @s 714.0688 75.25768 36.50766 331.3152 36.87122
execute as @s[scores={cutSceneTimer=43}] run tp @s 714.088 75.24445 36.51842 331.34 36.86434
execute as @s[scores={cutSceneTimer=44}] run tp @s 714.1076 75.23083 36.52952 331.3652 36.85754
execute as @s[scores={cutSceneTimer=45}] run tp @s 714.1282 75.21659 36.54115 331.3913 36.85074
execute as @s[scores={cutSceneTimer=46}] run tp @s 714.15 75.20146 36.55355 331.4184 36.84389
execute as @s[scores={cutSceneTimer=47}] run tp @s 714.1723 75.18597 36.56627 331.4462 36.83709
execute as @s[scores={cutSceneTimer=48}] run tp @s 714.1879 75.17511 36.57523 331.4652 36.83255
execute as @s[scores={cutSceneTimer=49}] run tp @s 714.212 75.15839 36.58902 331.4944 36.82575
execute as @s[scores={cutSceneTimer=50}] run tp @s 714.2368 75.14106 36.60337 331.5246 36.81892
execute as @s[scores={cutSceneTimer=51}] run tp @s 714.2623 75.12326 36.61814 331.5555 36.81213
execute as @s[scores={cutSceneTimer=52}] run tp @s 714.2885 75.10495 36.63338 331.5872 36.80532
execute as @s[scores={cutSceneTimer=53}] run tp @s 714.3156 75.08594 36.64925 331.62 36.79849
execute as @s[scores={cutSceneTimer=54}] run tp @s 714.3436 75.06633 36.66565 331.6536 36.79167
execute as @s[scores={cutSceneTimer=55}] run tp @s 714.3724 75.04612 36.68261 331.6881 36.78485
execute as @s[scores={cutSceneTimer=56}] run tp @s 714.4019 75.02534 36.7001 331.7236 36.77801
execute as @s[scores={cutSceneTimer=57}] run tp @s 714.4324 75.00383 36.71825 331.7603 36.77114
execute as @s[scores={cutSceneTimer=58}] run tp @s 714.4639 74.98161 36.73706 331.7982 36.76421
execute as @s[scores={cutSceneTimer=59}] run tp @s 714.496 74.95893 36.7563 331.8368 36.75731
execute as @s[scores={cutSceneTimer=60}] run tp @s 714.5288 74.93568 36.77608 331.8764 36.75041
execute as @s[scores={cutSceneTimer=61}] run tp @s 714.5624 74.91187 36.79641 331.917 36.74349
execute as @s[scores={cutSceneTimer=62}] run tp @s 714.5963 74.88781 36.81701 331.9579 36.7367
execute as @s[scores={cutSceneTimer=63}] run tp @s 714.6316 74.86271 36.83855 332.0009 36.72973
execute as @s[scores={cutSceneTimer=64}] run tp @s 714.6676 74.83704 36.86065 332.0449 36.72273
execute as @s[scores={cutSceneTimer=65}] run tp @s 714.7036 74.81133 36.88285 332.0887 36.71593
execute as @s[scores={cutSceneTimer=66}] run tp @s 714.7405 74.78491 36.90573 332.1339 36.70908
execute as @s[scores={cutSceneTimer=67}] run tp @s 714.7782 74.75795 36.92915 332.18 36.70223
execute as @s[scores={cutSceneTimer=68}] run tp @s 714.8173 74.72991 36.95357 332.2284 36.69518
execute as @s[scores={cutSceneTimer=69}] run tp @s 714.8565 74.70171 36.9782 332.2769 36.68827
execute as @s[scores={cutSceneTimer=70}] run tp @s 714.8962 74.67314 37.00323 332.326 36.68143
execute as @s[scores={cutSceneTimer=71}] run tp @s 714.9363 74.64425 37.02862 332.3756 36.67465
execute as @s[scores={cutSceneTimer=72}] run tp @s 714.9772 74.61467 37.05469 332.4267 36.66781
execute as @s[scores={cutSceneTimer=73}] run tp @s 715.0191 74.58437 37.08147 332.4792 36.66092
execute as @s[scores={cutSceneTimer=74}] run tp @s 715.061 74.55396 37.10844 332.5318 36.65417
execute as @s[scores={cutSceneTimer=75}] run tp @s 715.1036 74.52305 37.13593 332.5855 36.6474
execute as @s[scores={cutSceneTimer=76}] run tp @s 715.1473 74.49124 37.1643 332.641 36.64053
execute as @s[scores={cutSceneTimer=77}] run tp @s 715.1913 74.45914 37.19302 332.697 36.63371
execute as @s[scores={cutSceneTimer=78}] run tp @s 715.2366 74.42611 37.22267 332.7549 36.62683
execute as @s[scores={cutSceneTimer=79}] run tp @s 715.2819 74.39301 37.25246 332.813 36.62005
execute as @s[scores={cutSceneTimer=80}] run tp @s 715.3276 74.35944 37.28278 332.8721 36.61326
execute as @s[scores={cutSceneTimer=81}] run tp @s 715.3737 74.3256 37.31342 332.932 36.60652
execute as @s[scores={cutSceneTimer=82}] run tp @s 715.4215 74.29042 37.34539 332.9937 36.59969
execute as @s[scores={cutSceneTimer=83}] run tp @s 715.4693 74.25517 37.37751 333.0558 36.59293
execute as @s[scores={cutSceneTimer=84}] run tp @s 715.517 74.21993 37.40973 333.1189 36.5862
execute as @s[scores={cutSceneTimer=85}] run tp @s 715.5501 74.19547 37.43215 333.1616 36.5817
execute as @s[scores={cutSceneTimer=86}] run tp @s 715.5989 74.15926 37.46543 333.2266 36.57496
execute as @s[scores={cutSceneTimer=87}] run tp @s 715.6484 74.12256 37.49926 333.2927 36.56823
execute as @s[scores={cutSceneTimer=88}] run tp @s 715.698 74.08565 37.53339 333.3596 36.5615
execute as @s[scores={cutSceneTimer=89}] run tp @s 715.7494 74.04733 37.56895 333.4289 36.5547
execute as @s[scores={cutSceneTimer=90}] run tp @s 715.801 74.00879 37.60482 333.4993 36.54787
execute as @s[scores={cutSceneTimer=91}] run tp @s 715.8524 73.97031 37.64075 333.5701 36.54112
execute as @s[scores={cutSceneTimer=92}] run tp @s 715.9045 73.93114 37.67744 333.6425 36.53434
execute as @s[scores={cutSceneTimer=93}] run tp @s 715.9575 73.89127 37.71491 333.7168 36.52748
execute as @s[scores={cutSceneTimer=94}] run tp @s 716.01 73.85175 37.75217 333.7904 36.52082
execute as @s[scores={cutSceneTimer=95}] run tp @s 716.0629 73.81181 37.78995 333.8651 36.51416
execute as @s[scores={cutSceneTimer=96}] run tp @s 716.1172 73.77067 37.829 333.9429 36.50731
execute as @s[scores={cutSceneTimer=97}] run tp @s 716.171 73.7299 37.86782 334.0198 36.50067
execute as @s[scores={cutSceneTimer=98}] run tp @s 716.2255 73.68847 37.90739 334.0986 36.49398
execute as @s[scores={cutSceneTimer=99}] run tp @s 716.28 73.6469 37.94724 334.1777 36.48737
execute as @s[scores={cutSceneTimer=100}] run tp @s 716.3357 73.6044 37.98811 334.2595 36.48062
execute as @s[scores={cutSceneTimer=101}] run tp @s 716.3913 73.56184 38.02917 334.3413 36.47398
execute as @s[scores={cutSceneTimer=102}] run tp @s 716.447 73.5191 38.07055 334.4238 36.46739
execute as @s[scores={cutSceneTimer=103}] run tp @s 716.5034 73.47575 38.11265 334.508 36.46078
execute as @s[scores={cutSceneTimer=104}] run tp @s 716.5599 73.43225 38.15505 334.5927 36.45422
execute as @s[scores={cutSceneTimer=105}] run tp @s 716.6166 73.38837 38.19795 334.6786 36.44767
execute as @s[scores={cutSceneTimer=106}] run tp @s 716.6749 73.34328 38.2422 334.7679 36.44094
execute as @s[scores={cutSceneTimer=107}] run tp @s 716.7332 73.29807 38.28671 334.8576 36.43431
execute as @s[scores={cutSceneTimer=108}] run tp @s 716.7913 73.25283 38.33141 334.9474 36.42777
execute as @s[scores={cutSceneTimer=109}] run tp @s 716.8506 73.20657 38.37727 335.0403 36.4211
execute as @s[scores={cutSceneTimer=110}] run tp @s 716.9102 73.15997 38.42363 335.1339 36.41449
execute as @s[scores={cutSceneTimer=111}] run tp @s 716.9689 73.11392 38.46961 335.2263 36.40804
execute as @s[scores={cutSceneTimer=112}] run tp @s 717.0279 73.06752 38.5161 335.3199 36.40162
execute as @s[scores={cutSceneTimer=113}] run tp @s 717.0872 73.02078 38.56309 335.4144 36.39524
execute as @s[scores={cutSceneTimer=114}] run tp @s 717.1468 72.97371 38.61058 335.5101 36.38886
execute as @s[scores={cutSceneTimer=115}] run tp @s 717.2069 72.92605 38.65883 335.6075 36.38247
execute as @s[scores={cutSceneTimer=116}] run tp @s 717.2674 72.87803 38.70762 335.7059 36.37609
execute as @s[scores={cutSceneTimer=117}] run tp @s 717.3281 72.82965 38.75696 335.8055 36.36977
execute as @s[scores={cutSceneTimer=118}] run tp @s 717.3899 72.78033 38.80743 335.9072 36.36337
execute as @s[scores={cutSceneTimer=119}] run tp @s 717.4519 72.73064 38.85847 336.0095 36.35705
execute as @s[scores={cutSceneTimer=120}] run tp @s 717.5129 72.68162 38.909 336.1115 36.35083
execute as @s[scores={cutSceneTimer=121}] run tp @s 717.5754 72.63136 38.96101 336.2153 36.34461
execute as @s[scores={cutSceneTimer=122}] run tp @s 717.6171 72.59764 38.996 336.2847 36.34049
execute as @s[scores={cutSceneTimer=123}] run tp @s 717.6799 72.54681 39.04892 336.3896 36.33436
execute as @s[scores={cutSceneTimer=124}] run tp @s 717.7417 72.49666 39.10133 336.4951 36.32827
execute as @s[scores={cutSceneTimer=125}] run tp @s 717.8049 72.44527 39.15522 336.6026 36.32217
execute as @s[scores={cutSceneTimer=126}] run tp @s 717.867 72.39455 39.20862 336.7101 36.31618
execute as @s[scores={cutSceneTimer=127}] run tp @s 717.9301 72.3429 39.2632 336.8194 36.31016
execute as @s[scores={cutSceneTimer=128}] run tp @s 717.9941 72.29024 39.31905 336.9313 36.30409
execute as @s[scores={cutSceneTimer=129}] run tp @s 718.0571 72.23832 39.37433 337.0424 36.29817
execute as @s[scores={cutSceneTimer=130}] run tp @s 718.1199 72.18648 39.42974 337.1535 36.29235
execute as @s[scores={cutSceneTimer=131}] run tp @s 718.1835 72.13375 39.48631 337.2669 36.2865
execute as @s[scores={cutSceneTimer=132}] run tp @s 718.2469 72.08102 39.54309 337.3806 36.28072
execute as @s[scores={cutSceneTimer=133}] run tp @s 718.3104 72.02805 39.60036 337.4951 36.27502
execute as @s[scores={cutSceneTimer=134}] run tp @s 718.3739 71.97485 39.65811 337.6103 36.26937
execute as @s[scores={cutSceneTimer=135}] run tp @s 718.4371 71.92171 39.716 337.7254 36.26384
execute as @s[scores={cutSceneTimer=136}] run tp @s 718.5017 71.86729 39.77552 337.8443 36.25821
execute as @s[scores={cutSceneTimer=137}] run tp @s 718.5659 71.813 39.83513 337.9629 36.2527
execute as @s[scores={cutSceneTimer=138}] run tp @s 718.6302 71.75839 39.89534 338.0824 36.24726
execute as @s[scores={cutSceneTimer=139}] run tp @s 718.6939 71.70419 39.95534 338.2006 36.24199
execute as @s[scores={cutSceneTimer=140}] run tp @s 718.7592 71.64839 40.01734 338.3237 36.2366
execute as @s[scores={cutSceneTimer=141}] run tp @s 718.8237 71.59309 40.07906 338.445 36.23139
execute as @s[scores={cutSceneTimer=142}] run tp @s 718.8874 71.5383 40.14043 338.5645 36.22639
execute as @s[scores={cutSceneTimer=143}] run tp @s 718.9514 71.48299 40.20264 338.6855 36.22141
execute as @s[scores={cutSceneTimer=144}] run tp @s 719.0164 71.42667 40.26625 338.8093 36.21646
execute as @s[scores={cutSceneTimer=145}] run tp @s 719.0813 71.37015 40.33036 338.9331 36.21161
execute as @s[scores={cutSceneTimer=146}] run tp @s 719.1454 71.31413 40.39414 339.0553 36.20693
execute as @s[scores={cutSceneTimer=147}] run tp @s 719.21 71.25748 40.45892 339.1788 36.20232
execute as @s[scores={cutSceneTimer=148}] run tp @s 719.2737 71.20145 40.52327 339.3007 36.19789
execute as @s[scores={cutSceneTimer=149}] run tp @s 719.3385 71.14414 40.58934 339.4248 36.19349
execute as @s[scores={cutSceneTimer=150}] run tp @s 719.4021 71.08772 40.65467 339.5471 36.18929
execute as @s[scores={cutSceneTimer=151}] run tp @s 719.4656 71.03112 40.72048 339.6697 36.1852
execute as @s[scores={cutSceneTimer=152}] run tp @s 719.5298 70.97364 40.7876 339.7933 36.1812
execute as @s[scores={cutSceneTimer=153}] run tp @s 719.5937 70.91632 40.85481 339.9164 36.17733
execute as @s[scores={cutSceneTimer=154}] run tp @s 719.6574 70.85883 40.92252 340.0395 36.1736
execute as @s[scores={cutSceneTimer=155}] run tp @s 719.7206 70.80154 40.99028 340.1621 36.16999
execute as @s[scores={cutSceneTimer=156}] run tp @s 719.7843 70.74361 41.05909 340.285 36.16651
execute as @s[scores={cutSceneTimer=157}] run tp @s 719.8477 70.68566 41.12822 340.4077 36.16316
execute as @s[scores={cutSceneTimer=158}] run tp @s 719.9106 70.62789 41.19744 340.5299 36.15996
execute as @s[scores={cutSceneTimer=159}] run tp @s 719.9534 70.58855 41.24475 340.6115 36.15789
execute as @s[scores={cutSceneTimer=160}] run tp @s 720.0161 70.53053 41.31478 340.7333 36.1549
execute as @s[scores={cutSceneTimer=161}] run tp @s 720.0787 70.47229 41.38538 340.8549 36.15205
execute as @s[scores={cutSceneTimer=162}] run tp @s 720.1424 70.41284 41.45778 340.9768 36.1493
execute as @s[scores={cutSceneTimer=163}] run tp @s 720.2056 70.3536 41.53024 341.0984 36.14671
execute as @s[scores={cutSceneTimer=164}] run tp @s 720.2681 70.29467 41.60266 341.2191 36.14423
execute as @s[scores={cutSceneTimer=165}] run tp @s 720.3309 70.2352 41.67607 341.3402 36.14189
execute as @s[scores={cutSceneTimer=166}] run tp @s 720.3926 70.17639 41.749 341.4593 36.13971
execute as @s[scores={cutSceneTimer=167}] run tp @s 720.4547 70.1171 41.82286 341.5785 36.13762
execute as @s[scores={cutSceneTimer=168}] run tp @s 720.5161 70.05804 41.89675 341.6962 36.13569
execute as @s[scores={cutSceneTimer=169}] run tp @s 720.5784 69.99778 41.97252 341.8156 36.13383
execute as @s[scores={cutSceneTimer=170}] run tp @s 720.6393 69.93851 42.04737 341.9318 36.13214
execute as @s[scores={cutSceneTimer=171}] run tp @s 720.7013 69.87799 42.12418 342.0498 36.13052
execute as @s[scores={cutSceneTimer=172}] run tp @s 720.7622 69.81816 42.20046 342.1652 36.12903
execute as @s[scores={cutSceneTimer=173}] run tp @s 720.8233 69.75781 42.27777 342.2807 36.12766
execute as @s[scores={cutSceneTimer=174}] run tp @s 720.8833 69.69817 42.35454 342.3931 36.12639
execute as @s[scores={cutSceneTimer=175}] run tp @s 720.9442 69.63731 42.43327 342.5074 36.1252
execute as @s[scores={cutSceneTimer=176}] run tp @s 721.0049 69.57631 42.51254 342.6208 36.12412
execute as @s[scores={cutSceneTimer=177}] run tp @s 721.0641 69.51643 42.59075 342.7297 36.12314
execute as @s[scores={cutSceneTimer=178}] run tp @s 721.1234 69.45609 42.66993 342.8384 36.12225
execute as @s[scores={cutSceneTimer=179}] run tp @s 721.1821 69.39607 42.74909 342.9449 36.12144
execute as @s[scores={cutSceneTimer=180}] run tp @s 721.2408 69.33566 42.82915 343.0508 36.12071
execute as @s[scores={cutSceneTimer=181}] run tp @s 721.2996 69.27463 42.91043 343.1568 36.12003
execute as @s[scores={cutSceneTimer=182}] run tp @s 721.3581 69.21363 42.99208 343.261 36.11942
execute as @s[scores={cutSceneTimer=183}] run tp @s 721.4158 69.15303 43.07361 343.3626 36.11889
execute as @s[scores={cutSceneTimer=184}] run tp @s 721.4736 69.09194 43.15622 343.4637 36.1184
execute as @s[scores={cutSceneTimer=185}] run tp @s 721.5314 69.0304 43.23986 343.5638 36.11797
execute as @s[scores={cutSceneTimer=186}] run tp @s 721.5881 68.96964 43.32287 343.6606 36.1176
execute as @s[scores={cutSceneTimer=187}] run tp @s 721.6441 68.90922 43.40582 343.7549 36.11726
execute as @s[scores={cutSceneTimer=188}] run tp @s 721.7001 68.84843 43.48972 343.8483 36.11698
execute as @s[scores={cutSceneTimer=189}] run tp @s 721.7553 68.78796 43.57361 343.9394 36.11673
execute as @s[scores={cutSceneTimer=190}] run tp @s 721.8108 68.72672 43.65902 344.0299 36.11651
execute as @s[scores={cutSceneTimer=191}] run tp @s 721.8656 68.66579 43.74445 344.118 36.11633
execute as @s[scores={cutSceneTimer=192}] run tp @s 721.9203 68.60452 43.83081 344.2046 36.11618
execute as @s[scores={cutSceneTimer=193}] run tp @s 721.9739 68.54399 43.91658 344.2884 36.11606
execute as @s[scores={cutSceneTimer=194}] run tp @s 722.0278 68.48266 44.00395 344.3712 36.11594
execute as @s[scores={cutSceneTimer=195}] run tp @s 722.081 68.42165 44.09134 344.4516 36.11586
execute as @s[scores={cutSceneTimer=196}] run tp @s 722.1343 68.35989 44.18027 344.5303 36.1158
execute as @s[scores={cutSceneTimer=197}] run tp @s 722.1696 68.31879 44.23975 344.5815 36.11575
execute as @s[scores={cutSceneTimer=198}] run tp @s 722.2215 68.25786 44.32831 344.6565 36.1157
execute as @s[scores={cutSceneTimer=199}] run tp @s 722.2732 68.19659 44.41787 344.7298 36.11568
execute as @s[scores={cutSceneTimer=200}] run tp @s 722.3238 68.13611 44.50677 344.8009 36.11568
execute as @s[scores={cutSceneTimer=201}] run tp @s 722.374 68.07561 44.59618 344.87 36.11566
execute as @s[scores={cutSceneTimer=202}] run tp @s 722.4246 68.01399 44.68777 344.9378 36.11565
execute as @s[scores={cutSceneTimer=203}] run tp @s 722.4746 67.9524 44.77985 345.0038 36.11565
execute as @s[scores={cutSceneTimer=204}] run tp @s 722.5235 67.89166 44.87117 345.0672 36.11566
execute as @s[scores={cutSceneTimer=205}] run tp @s 722.5718 67.83113 44.96271 345.1283 36.11567
execute as @s[scores={cutSceneTimer=206}] run tp @s 722.6193 67.77084 45.05439 345.1871 36.11568
execute as @s[scores={cutSceneTimer=207}] run tp @s 722.6664 67.71059 45.14657 345.2438 36.11569
execute as @s[scores={cutSceneTimer=208}] run tp @s 722.7134 67.64967 45.24033 345.2993 36.11568
execute as @s[scores={cutSceneTimer=209}] run tp @s 722.7596 67.58919 45.33394 345.3522 36.1157
execute as @s[scores={cutSceneTimer=210}] run tp @s 722.8058 67.52796 45.42928 345.404 36.1157
execute as @s[scores={cutSceneTimer=211}] run tp @s 722.8515 67.46677 45.52515 345.4536 36.1157
execute as @s[scores={cutSceneTimer=212}] run tp @s 722.8965 67.40567 45.62148 345.5012 36.11577
execute as @s[scores={cutSceneTimer=213}] run tp @s 722.9407 67.34504 45.71763 345.5461 36.11601
execute as @s[scores={cutSceneTimer=214}] run tp @s 722.9837 67.28527 45.813 345.5881 36.11642
execute as @s[scores={cutSceneTimer=215}] run tp @s 723.0267 67.22481 45.91008 345.6287 36.11703
execute as @s[scores={cutSceneTimer=216}] run tp @s 723.069 67.16447 46.00758 345.6671 36.11788
execute as @s[scores={cutSceneTimer=217}] run tp @s 723.1104 67.10456 46.10498 345.7032 36.11891
execute as @s[scores={cutSceneTimer=218}] run tp @s 723.1514 67.0444 46.20341 345.7372 36.12021
execute as @s[scores={cutSceneTimer=219}] run tp @s 723.1912 66.98509 46.30106 345.7688 36.1217
execute as @s[scores={cutSceneTimer=220}] run tp @s 723.2304 66.92589 46.39918 345.7982 36.12344
execute as @s[scores={cutSceneTimer=221}] run tp @s 723.2697 66.86564 46.49966 345.8262 36.12547
execute as @s[scores={cutSceneTimer=222}] run tp @s 723.3083 66.8055 46.60061 345.8521 36.12778
execute as @s[scores={cutSceneTimer=223}] run tp @s 723.3455 66.74663 46.7001 345.8753 36.13033
execute as @s[scores={cutSceneTimer=224}] run tp @s 723.3823 66.6875 46.80069 345.8965 36.13315
execute as @s[scores={cutSceneTimer=225}] run tp @s 723.418 66.62887 46.90108 345.9157 36.13627
execute as @s[scores={cutSceneTimer=226}] run tp @s 723.4536 66.56976 47.00296 345.9331 36.13971
execute as @s[scores={cutSceneTimer=227}] run tp @s 723.4879 66.51139 47.10426 345.9482 36.14344
execute as @s[scores={cutSceneTimer=228}] run tp @s 723.5218 66.4528 47.20663 345.9615 36.1475
execute as @s[scores={cutSceneTimer=229}] run tp @s 723.5549 66.39436 47.30943 345.9727 36.1519
execute as @s[scores={cutSceneTimer=230}] run tp @s 723.5872 66.33642 47.41207 345.982 36.15662
execute as @s[scores={cutSceneTimer=231}] run tp @s 723.6187 66.27862 47.51516 345.9894 36.16167
execute as @s[scores={cutSceneTimer=232}] run tp @s 723.6496 66.2205 47.61954 345.9948 36.16713
execute as @s[scores={cutSceneTimer=233}] run tp @s 723.6804 66.16129 47.72666 345.9983 36.17303
execute as @s[scores={cutSceneTimer=234}] run tp @s 723.7015 66.12 47.8018 345.9995 36.17717
execute as @s[scores={cutSceneTimer=235}] run tp @s 723.7303 66.06226 47.90742 345.9999 36.1814
execute as @s[scores={cutSceneTimer=236}] run tp @s 723.7584 66.00487 48.01173 345.9992 36.18194
execute as @s[scores={cutSceneTimer=237}] run tp @s 723.7861 65.94722 48.11546 345.9977 36.18314
execute as @s[scores={cutSceneTimer=238}] run tp @s 723.8139 65.88898 48.21923 345.9954 36.18499
execute as @s[scores={cutSceneTimer=239}] run tp @s 723.8415 65.83052 48.32241 345.9922 36.18748
execute as @s[scores={cutSceneTimer=240}] run tp @s 723.8689 65.77187 48.42496 345.9882 36.19064
execute as @s[scores={cutSceneTimer=241}] run tp @s 723.8964 65.7126 48.52758 345.9833 36.1945
execute as @s[scores={cutSceneTimer=242}] run tp @s 723.9235 65.6535 48.62897 345.9776 36.19901
execute as @s[scores={cutSceneTimer=243}] run tp @s 723.9504 65.5942 48.72976 345.9709 36.2042
execute as @s[scores={cutSceneTimer=244}] run tp @s 723.9773 65.53436 48.83056 345.9635 36.21012
execute as @s[scores={cutSceneTimer=245}] run tp @s 724.0042 65.47392 48.93143 345.955 36.2168
execute as @s[scores={cutSceneTimer=246}] run tp @s 724.031 65.41328 49.03174 345.9456 36.22419
execute as @s[scores={cutSceneTimer=247}] run tp @s 724.0574 65.3529 49.13072 345.9352 36.23226
execute as @s[scores={cutSceneTimer=248}] run tp @s 724.0835 65.29272 49.22851 345.9241 36.24099
execute as @s[scores={cutSceneTimer=249}] run tp @s 724.1094 65.23241 49.32568 345.9121 36.25045
execute as @s[scores={cutSceneTimer=250}] run tp @s 724.1354 65.17158 49.42286 345.899 36.26069
execute as @s[scores={cutSceneTimer=251}] run tp @s 724.1612 65.11057 49.51949 345.8849 36.27168
execute as @s[scores={cutSceneTimer=252}] run tp @s 724.1865 65.05023 49.61427 345.8701 36.28328
execute as @s[scores={cutSceneTimer=253}] run tp @s 724.2117 64.98943 49.70899 345.8543 36.29569
execute as @s[scores={cutSceneTimer=254}] run tp @s 724.2369 64.92844 49.80323 345.8374 36.30886
execute as @s[scores={cutSceneTimer=255}] run tp @s 724.2621 64.86664 49.89798 345.8194 36.32297
execute as @s[scores={cutSceneTimer=256}] run tp @s 724.2871 64.80508 49.99158 345.8004 36.33777
execute as @s[scores={cutSceneTimer=257}] run tp @s 724.3118 64.74383 50.08398 345.7806 36.35324
execute as @s[scores={cutSceneTimer=258}] run tp @s 724.3365 64.68206 50.17642 345.7596 36.36963
execute as @s[scores={cutSceneTimer=259}] run tp @s 724.3609 64.62048 50.26789 345.7377 36.38673
execute as @s[scores={cutSceneTimer=260}] run tp @s 724.3854 64.55817 50.35972 345.7145 36.40483
execute as @s[scores={cutSceneTimer=261}] run tp @s 724.4094 64.497 50.44919 345.6907 36.42338
execute as @s[scores={cutSceneTimer=262}] run tp @s 724.4331 64.43578 50.53807 345.6658 36.44273
execute as @s[scores={cutSceneTimer=263}] run tp @s 724.457 64.37373 50.6275 345.6396 36.46315
execute as @s[scores={cutSceneTimer=264}] run tp @s 724.4805 64.31242 50.71522 345.6127 36.48411
execute as @s[scores={cutSceneTimer=265}] run tp @s 724.5039 64.25087 50.80264 345.5846 36.50597
execute as @s[scores={cutSceneTimer=266}] run tp @s 724.5274 64.1887 50.89032 345.5551 36.52887
execute as @s[scores={cutSceneTimer=267}] run tp @s 724.5505 64.12695 50.9768 345.5247 36.55249
execute as @s[scores={cutSceneTimer=268}] run tp @s 724.5735 64.06555 51.06218 345.4934 36.57677
execute as @s[scores={cutSceneTimer=269}] run tp @s 724.5889 64.02382 51.11988 345.4715 36.59376
execute as @s[scores={cutSceneTimer=270}] run tp @s 724.6116 63.96241 51.20429 345.4384 36.61948
execute as @s[scores={cutSceneTimer=271}] run tp @s 724.6342 63.90079 51.28843 345.4041 36.64614
execute as @s[scores={cutSceneTimer=272}] run tp @s 724.657 63.83823 51.37329 345.368 36.67411
execute as @s[scores={cutSceneTimer=273}] run tp @s 724.6817 63.77023 51.46487 345.3274 36.70556
execute as @s[scores={cutSceneTimer=274}] run tp @s 724.7071 63.69963 51.55926 345.2838 36.73934
execute as @s[scores={cutSceneTimer=275}] run tp @s 724.7291 63.63836 51.64062 345.2447 36.76964
execute as @s[scores={cutSceneTimer=276}] run tp @s 724.7509 63.57713 51.72141 345.2043 36.80083
execute as @s[scores={cutSceneTimer=277}] run tp @s 724.7729 63.51479 51.80313 345.1621 36.83352
execute as @s[scores={cutSceneTimer=278}] run tp @s 724.7946 63.45328 51.88326 345.1192 36.86674
execute as @s[scores={cutSceneTimer=279}] run tp @s 724.816 63.39223 51.96231 345.0753 36.90067
execute as @s[scores={cutSceneTimer=280}] run tp @s 724.8376 63.33036 52.04193 345.0296 36.936
execute as @s[scores={cutSceneTimer=281}] run tp @s 724.8521 63.28897 52.09493 344.9983 36.9602
execute as @s[scores={cutSceneTimer=282}] run tp @s 724.8731 63.22815 52.17243 344.9511 36.99658
execute as @s[scores={cutSceneTimer=283}] run tp @s 724.8942 63.16703 52.24984 344.9025 37.03414
execute as @s[scores={cutSceneTimer=284}] run tp @s 724.915 63.1064 52.32619 344.8529 37.0724
execute as @s[scores={cutSceneTimer=285}] run tp @s 724.9357 63.04588 52.40196 344.8021 37.1116
execute as @s[scores={cutSceneTimer=286}] run tp @s 724.9562 62.98535 52.47733 344.7499 37.15184
execute as @s[scores={cutSceneTimer=287}] run tp @s 724.9769 62.9245 52.55267 344.6961 37.19336
execute as @s[scores={cutSceneTimer=288}] run tp @s 724.9974 62.86396 52.6272 344.6411 37.23573
execute as @s[scores={cutSceneTimer=289}] run tp @s 725.0177 62.80354 52.70119 344.5847 37.27908
execute as @s[scores={cutSceneTimer=290}] run tp @s 725.0379 62.7433 52.77455 344.5272 37.32342
execute as @s[scores={cutSceneTimer=291}] run tp @s 725.0581 62.68282 52.84782 344.4679 37.36903
execute as @s[scores={cutSceneTimer=292}] run tp @s 725.0779 62.62327 52.91957 344.4081 37.41508
execute as @s[scores={cutSceneTimer=293}] run tp @s 725.098 62.56276 52.99212 344.3458 37.46302
execute as @s[scores={cutSceneTimer=294}] run tp @s 725.1179 62.50278 53.06366 344.2824 37.51172
execute as @s[scores={cutSceneTimer=295}] run tp @s 725.1375 62.44342 53.1341 344.2182 37.56108
execute as @s[scores={cutSceneTimer=296}] run tp @s 725.1572 62.38343 53.20493 344.1517 37.61218
execute as @s[scores={cutSceneTimer=297}] run tp @s 725.1765 62.3248 53.27382 344.0851 37.66332
execute as @s[scores={cutSceneTimer=298}] run tp @s 725.1959 62.26563 53.34301 344.0163 37.71616
execute as @s[scores={cutSceneTimer=299}] run tp @s 725.215 62.20707 53.41117 343.9465 37.76971
execute as @s[scores={cutSceneTimer=300}] run tp @s 725.2341 62.1487 53.47878 343.8753 37.82433
execute as @s[scores={cutSceneTimer=301}] run tp @s 725.253 62.09057 53.54581 343.8027 37.88002
execute as @s[scores={cutSceneTimer=302}] run tp @s 725.2719 62.03269 53.61226 343.7287 37.93676
execute as @s[scores={cutSceneTimer=303}] run tp @s 725.2904 61.9754 53.67773 343.6538 37.99421
execute as @s[scores={cutSceneTimer=304}] run tp @s 725.3089 61.91837 53.74263 343.5774 38.0527
execute as @s[scores={cutSceneTimer=305}] run tp @s 725.3276 61.8605 53.80819 343.4981 38.11344
execute as @s[scores={cutSceneTimer=306}] run tp @s 725.3463 61.80287 53.87321 343.4173 38.17535
execute as @s[scores={cutSceneTimer=307}] run tp @s 725.3648 61.74555 53.93762 343.335 38.23834
execute as @s[scores={cutSceneTimer=308}] run tp @s 725.3829 61.68959 54.00024 343.2527 38.30125
execute as @s[scores={cutSceneTimer=309}] run tp @s 725.4009 61.63356 54.0627 343.1685 38.36569
execute as @s[scores={cutSceneTimer=310}] run tp @s 725.4191 61.57747 54.12498 343.0823 38.43165
execute as @s[scores={cutSceneTimer=311}] run tp @s 725.437 61.52202 54.18631 342.9951 38.49835
execute as @s[scores={cutSceneTimer=312}] run tp @s 725.4546 61.46725 54.24667 342.9069 38.56573
execute as @s[scores={cutSceneTimer=313}] run tp @s 725.4724 61.41211 54.30721 342.8161 38.63509
execute as @s[scores={cutSceneTimer=314}] run tp @s 725.4902 61.35692 54.3676 342.7231 38.70611
execute as @s[scores={cutSceneTimer=315}] run tp @s 725.5078 61.30239 54.42705 342.6292 38.7779
execute as @s[scores={cutSceneTimer=316}] run tp @s 725.5252 61.2486 54.48551 342.5342 38.85032
execute as @s[scores={cutSceneTimer=317}] run tp @s 725.5426 61.19478 54.54381 342.4372 38.92442
execute as @s[scores={cutSceneTimer=318}] run tp @s 725.5598 61.1417 54.60112 342.3391 38.99919
execute as @s[scores={cutSceneTimer=319}] run tp @s 725.5771 61.08826 54.65864 342.2382 39.07618
execute as @s[scores={cutSceneTimer=320}] run tp @s 725.5885 61.0532 54.69629 342.1707 39.12764
execute as @s[scores={cutSceneTimer=321}] run tp @s 725.6055 61.00107 54.75212 342.0684 39.20562
execute as @s[scores={cutSceneTimer=322}] run tp @s 725.6223 60.94936 54.80735 341.9646 39.28475
execute as @s[scores={cutSceneTimer=323}] run tp @s 725.6392 60.89768 54.8624 341.8584 39.36563
execute as @s[scores={cutSceneTimer=324}] run tp @s 725.6561 60.84605 54.91725 341.7499 39.44833
execute as @s[scores={cutSceneTimer=325}] run tp @s 725.6729 60.79517 54.97118 341.6404 39.53172
execute as @s[scores={cutSceneTimer=326}] run tp @s 725.6897 60.74406 55.0252 341.5278 39.61742
execute as @s[scores={cutSceneTimer=327}] run tp @s 725.7064 60.69372 55.07831 341.4142 39.70386
execute as @s[scores={cutSceneTimer=328}] run tp @s 725.7228 60.64412 55.1305 341.2997 39.79099
execute as @s[scores={cutSceneTimer=329}] run tp @s 725.7391 60.59495 55.18215 341.1834 39.87941
execute as @s[scores={cutSceneTimer=330}] run tp @s 725.7554 60.54624 55.23321 341.0655 39.96908
execute as @s[scores={cutSceneTimer=331}] run tp @s 725.7715 60.49829 55.28338 340.9466 40.05943
execute as @s[scores={cutSceneTimer=332}] run tp @s 725.7875 60.45084 55.33295 340.8262 40.15096
execute as @s[scores={cutSceneTimer=333}] run tp @s 725.8035 60.40381 55.382 340.7039 40.24383
execute as @s[scores={cutSceneTimer=334}] run tp @s 725.8195 60.35666 55.43111 340.5784 40.3392
execute as @s[scores={cutSceneTimer=335}] run tp @s 725.8352 60.31088 55.47874 340.4535 40.43405
execute as @s[scores={cutSceneTimer=336}] run tp @s 725.851 60.265 55.52641 340.3252 40.53142
execute as @s[scores={cutSceneTimer=337}] run tp @s 725.8666 60.22018 55.57293 340.1969 40.62882
execute as @s[scores={cutSceneTimer=338}] run tp @s 725.8822 60.1754 55.61938 340.0655 40.72856
execute as @s[scores={cutSceneTimer=339}] run tp @s 725.8977 60.13132 55.66507 339.9328 40.82919
execute as @s[scores={cutSceneTimer=340}] run tp @s 725.913 60.08802 55.70993 339.7993 40.9305
execute as @s[scores={cutSceneTimer=341}] run tp @s 725.9283 60.04499 55.75449 339.6631 41.03372
execute as @s[scores={cutSceneTimer=342}] run tp @s 725.9436 60.00244 55.79855 339.5251 41.13837
execute as @s[scores={cutSceneTimer=343}] run tp @s 725.9588 59.96045 55.84204 339.3853 41.24432
execute as @s[scores={cutSceneTimer=344}] run tp @s 725.9739 59.91926 55.8847 339.2446 41.35091
execute as @s[scores={cutSceneTimer=345}] run tp @s 725.989 59.87811 55.92733 339.1003 41.46021
execute as @s[scores={cutSceneTimer=346}] run tp @s 726.0042 59.83709 55.97004 338.9532 41.57051
execute as @s[scores={cutSceneTimer=347}] run tp @s 726.0192 59.79684 56.01239 338.8061 41.67806
execute as @s[scores={cutSceneTimer=348}] run tp @s 726.0342 59.75705 56.05467 338.658 41.78363
execute as @s[scores={cutSceneTimer=349}] run tp @s 726.0492 59.71726 56.09736 338.5074 41.8884
execute as @s[scores={cutSceneTimer=350}] run tp @s 726.0641 59.67791 56.13998 338.3557 41.99128
execute as @s[scores={cutSceneTimer=351}] run tp @s 726.079 59.63877 56.18276 338.2022 42.09277
execute as @s[scores={cutSceneTimer=352}] run tp @s 726.0941 59.59949 56.22609 338.0452 42.19384
execute as @s[scores={cutSceneTimer=353}] run tp @s 726.1092 59.56028 56.2697 337.8823 42.29383
execute as @s[scores={cutSceneTimer=354}] run tp @s 726.1243 59.52153 56.31316 337.7138 42.39183
execute as @s[scores={cutSceneTimer=355}] run tp @s 726.1392 59.48325 56.35644 337.5403 42.48774
execute as @s[scores={cutSceneTimer=356}] run tp @s 726.1543 59.44495 56.40008 337.3595 42.5828
execute as @s[scores={cutSceneTimer=357}] run tp @s 726.1693 59.407 56.44362 337.1733 42.67605
execute as @s[scores={cutSceneTimer=358}] run tp @s 726.1844 59.36913 56.4874 336.9803 42.76821
execute as @s[scores={cutSceneTimer=359}] run tp @s 726.1995 59.33144 56.53125 336.7813 42.85891
execute as @s[scores={cutSceneTimer=360}] run tp @s 726.2098 59.3061 56.56091 336.6434 42.91938
execute as @s[scores={cutSceneTimer=361}] run tp @s 726.225 59.26866 56.60496 336.4339 43.00785
execute as @s[scores={cutSceneTimer=362}] run tp @s 726.2401 59.23177 56.64862 336.2207 43.09403
execute as @s[scores={cutSceneTimer=363}] run tp @s 726.2554 59.19465 56.69281 335.9992 43.17968
execute as @s[scores={cutSceneTimer=364}] run tp @s 726.2706 59.15816 56.73648 335.7747 43.26281
execute as @s[scores={cutSceneTimer=365}] run tp @s 726.286 59.12141 56.7807 335.5419 43.34546
execute as @s[scores={cutSceneTimer=366}] run tp @s 726.3014 59.08511 56.8246 335.3051 43.42601
execute as @s[scores={cutSceneTimer=367}] run tp @s 726.317 59.04853 56.86905 335.0597 43.50604
execute as @s[scores={cutSceneTimer=368}] run tp @s 726.3325 59.01238 56.91316 334.8106 43.58396
execute as @s[scores={cutSceneTimer=369}] run tp @s 726.348 58.97668 56.9569 334.5581 43.65974
execute as @s[scores={cutSceneTimer=370}] run tp @s 726.3636 58.94117 57.00058 334.3003 43.73395
execute as @s[scores={cutSceneTimer=371}] run tp @s 726.3791 58.90609 57.04388 334.0394 43.80606
execute as @s[scores={cutSceneTimer=372}] run tp @s 726.3948 58.87077 57.08761 333.7702 43.87741
execute as @s[scores={cutSceneTimer=373}] run tp @s 726.4108 58.83539 57.13155 333.4943 43.94761
execute as @s[scores={cutSceneTimer=374}] run tp @s 726.4265 58.8009 57.1745 333.2189 44.0148
execute as @s[scores={cutSceneTimer=375}] run tp @s 726.4423 58.76659 57.21731 332.9391 44.08035
execute as @s[scores={cutSceneTimer=376}] run tp @s 726.4581 58.73236 57.26012 332.6537 44.14446
execute as @s[scores={cutSceneTimer=377}] run tp @s 726.4743 58.69778 57.30344 332.3593 44.20786
execute as @s[scores={cutSceneTimer=378}] run tp @s 726.4905 58.66362 57.34629 332.0623 44.2691
execute as @s[scores={cutSceneTimer=379}] run tp @s 726.5066 58.62988 57.38867 331.763 44.32822
execute as @s[scores={cutSceneTimer=380}] run tp @s 726.5228 58.5963 57.43087 331.4594 44.38567
execute as @s[scores={cutSceneTimer=381}] run tp @s 726.5391 58.56301 57.47272 331.1525 44.44118
execute as @s[scores={cutSceneTimer=382}] run tp @s 726.5555 58.52973 57.51459 330.8399 44.49526
execute as @s[scores={cutSceneTimer=383}] run tp @s 726.5718 58.49693 57.55582 330.5263 44.54707
execute as @s[scores={cutSceneTimer=384}] run tp @s 726.5884 58.46411 57.59706 330.2068 44.59745
execute as @s[scores={cutSceneTimer=385}] run tp @s 726.6049 58.43169 57.63778 329.8857 44.64573
execute as @s[scores={cutSceneTimer=386}] run tp @s 726.6218 58.39904 57.67871 329.5569 44.6928
execute as @s[scores={cutSceneTimer=387}] run tp @s 726.6389 58.36635 57.71964 329.2221 44.73833
execute as @s[scores={cutSceneTimer=388}] run tp @s 726.6558 58.33427 57.75972 328.8881 44.78144
execute as @s[scores={cutSceneTimer=389}] run tp @s 726.6727 58.30257 57.79924 328.5529 44.82244
execute as @s[scores={cutSceneTimer=390}] run tp @s 726.6899 58.27065 57.83893 328.21 44.8621
execute as @s[scores={cutSceneTimer=391}] run tp @s 726.7073 58.2389 57.87827 327.8638 44.89987
execute as @s[scores={cutSceneTimer=392}] run tp @s 726.7245 58.20774 57.91676 327.5189 44.9353
execute as @s[scores={cutSceneTimer=393}] run tp @s 726.7419 58.17668 57.95496 327.1703 44.96893
execute as @s[scores={cutSceneTimer=394}] run tp @s 726.7594 58.14586 57.99271 326.8194 45.0006
execute as @s[scores={cutSceneTimer=395}] run tp @s 726.777 58.11522 58.03007 326.4656 45.03036
execute as @s[scores={cutSceneTimer=396}] run tp @s 726.7952 58.08386 58.0681 326.0987 45.05903
execute as @s[scores={cutSceneTimer=397}] run tp @s 726.8131 58.05336 58.10486 325.7371 45.0851
execute as @s[scores={cutSceneTimer=398}] run tp @s 726.8311 58.02323 58.14096 325.3752 45.10907
execute as @s[scores={cutSceneTimer=399}] run tp @s 726.8491 57.99327 58.17662 325.0108 45.13108
execute as @s[scores={cutSceneTimer=400}] run tp @s 726.8674 57.96332 58.21203 324.6419 45.15126
execute as @s[scores={cutSceneTimer=401}] run tp @s 726.8858 57.93369 58.24677 324.2727 45.16933
execute as @s[scores={cutSceneTimer=402}] run tp @s 726.9047 57.90348 58.28191 323.8918 45.18582
execute as @s[scores={cutSceneTimer=403}] run tp @s 726.9174 57.88354 58.30493 323.6378 45.19561
execute as @s[scores={cutSceneTimer=404}] run tp @s 726.9365 57.8538 58.33901 323.2553 45.20855
execute as @s[scores={cutSceneTimer=405}] run tp @s 726.9557 57.8242 58.37258 322.8705 45.21939
execute as @s[scores={cutSceneTimer=406}] run tp @s 726.9749 57.79499 58.40536 322.4865 45.22807
execute as @s[scores={cutSceneTimer=407}] run tp @s 726.9943 57.76593 58.43759 322.1006 45.23466
execute as @s[scores={cutSceneTimer=408}] run tp @s 727.0139 57.73705 58.46926 321.7129 45.23916
execute as @s[scores={cutSceneTimer=409}] run tp @s 727.0334 57.7085 58.50018 321.3257 45.24153
execute as @s[scores={cutSceneTimer=410}] run tp @s 727.0532 57.67995 58.53068 320.9349 45.24179
execute as @s[scores={cutSceneTimer=411}] run tp @s 727.073 57.65192 58.56021 320.5473 45.23996
execute as @s[scores={cutSceneTimer=412}] run tp @s 727.0932 57.62366 58.58953 320.153 45.23595
execute as @s[scores={cutSceneTimer=413}] run tp @s 727.1133 57.59594 58.61786 319.7626 45.22987
execute as @s[scores={cutSceneTimer=414}] run tp @s 727.1335 57.56837 58.64574 319.3709 45.22167
execute as @s[scores={cutSceneTimer=415}] run tp @s 727.1539 57.54096 58.67329 318.9782 45.21134
execute as @s[scores={cutSceneTimer=416}] run tp @s 727.175 57.51302 58.70119 318.5745 45.19851
execute as @s[scores={cutSceneTimer=417}] run tp @s 727.1962 57.48538 58.72861 318.1718 45.18351
execute as @s[scores={cutSceneTimer=418}] run tp @s 727.2171 57.45843 58.75517 317.776 45.1666
execute as @s[scores={cutSceneTimer=419}] run tp @s 727.2383 57.43147 58.78157 317.3771 45.14739
execute as @s[scores={cutSceneTimer=420}] run tp @s 727.2598 57.40464 58.80767 316.9771 45.12594
execute as @s[scores={cutSceneTimer=421}] run tp @s 727.2812 57.37814 58.83327 316.5791 45.1024
execute as @s[scores={cutSceneTimer=422}] run tp @s 727.3032 57.35143 58.8589 316.1751 45.07631
execute as @s[scores={cutSceneTimer=423}] run tp @s 727.325 57.32522 58.88388 315.776 45.04828
execute as @s[scores={cutSceneTimer=424}] run tp @s 727.347 57.29916 58.90854 315.3766 45.01804
execute as @s[scores={cutSceneTimer=425}] run tp @s 727.3697 57.27273 58.93337 314.9689 44.98485
execute as @s[scores={cutSceneTimer=426}] run tp @s 727.3923 57.24679 58.95757 314.5663 44.94979
execute as @s[scores={cutSceneTimer=427}] run tp @s 727.4152 57.22083 58.9816 314.1611 44.91217
execute as @s[scores={cutSceneTimer=428}] run tp @s 727.4383 57.195 59.00534 313.7555 44.87217
execute as @s[scores={cutSceneTimer=429}] run tp @s 727.4615 57.1695 59.0286 313.3529 44.83012
execute as @s[scores={cutSceneTimer=430}] run tp @s 727.4852 57.1438 59.05187 312.9449 44.78511
execute as @s[scores={cutSceneTimer=431}] run tp @s 727.5086 57.11873 59.07438 312.5451 44.73861
execute as @s[scores={cutSceneTimer=432}] run tp @s 727.5323 57.0938 59.0966 312.1455 44.68977
execute as @s[scores={cutSceneTimer=433}] run tp @s 727.5565 57.06871 59.11879 311.7415 44.63793
execute as @s[scores={cutSceneTimer=434}] run tp @s 727.5805 57.04406 59.14041 311.3428 44.58432
execute as @s[scores={cutSceneTimer=435}] run tp @s 727.6055 57.01887 59.16233 310.9337 44.52677
execute as @s[scores={cutSceneTimer=436}] run tp @s 727.6304 56.99417 59.18364 310.5311 44.46757
execute as @s[scores={cutSceneTimer=437}] run tp @s 727.6551 56.96992 59.20439 310.1343 44.40669
execute as @s[scores={cutSceneTimer=438}] run tp @s 727.6722 56.95336 59.21846 309.8626 44.36353
execute as @s[scores={cutSceneTimer=439}] run tp @s 727.6974 56.92933 59.23873 309.4673 44.29856
execute as @s[scores={cutSceneTimer=440}] run tp @s 727.7231 56.90513 59.25896 309.0679 44.23029
execute as @s[scores={cutSceneTimer=441}] run tp @s 727.749 56.88101 59.27896 308.6686 44.15934
execute as @s[scores={cutSceneTimer=442}] run tp @s 727.7749 56.85737 59.29838 308.2763 44.08696
execute as @s[scores={cutSceneTimer=443}] run tp @s 727.8013 56.83357 59.31776 307.8805 44.01115
execute as @s[scores={cutSceneTimer=444}] run tp @s 727.8282 56.80973 59.33699 307.4831 43.93223
execute as @s[scores={cutSceneTimer=445}] run tp @s 727.855 56.78618 59.35581 307.0899 43.85127
execute as @s[scores={cutSceneTimer=446}] run tp @s 727.8826 56.76244 59.3746 306.693 43.7666
execute as @s[scores={cutSceneTimer=447}] run tp @s 727.9102 56.73899 59.39298 306.3003 43.67987
execute as @s[scores={cutSceneTimer=448}] run tp @s 727.9381 56.71566 59.41109 305.9091 43.59044
execute as @s[scores={cutSceneTimer=449}] run tp @s 727.9662 56.69247 59.42891 305.52 43.49842
execute as @s[scores={cutSceneTimer=450}] run tp @s 727.9946 56.66939 59.44647 305.1326 43.4037
execute as @s[scores={cutSceneTimer=451}] run tp @s 728.0228 56.64688 59.46342 304.7546 43.30822
execute as @s[scores={cutSceneTimer=452}] run tp @s 728.0513 56.62435 59.48022 304.3763 43.20952
execute as @s[scores={cutSceneTimer=453}] run tp @s 728.08 56.60207 59.49665 304.0023 43.10883
execute as @s[scores={cutSceneTimer=454}] run tp @s 728.109 56.5798 59.51291 303.6285 43.00495
execute as @s[scores={cutSceneTimer=455}] run tp @s 728.1382 56.55776 59.52883 303.259 42.89901
execute as @s[scores={cutSceneTimer=456}] run tp @s 728.1682 56.53541 59.5448 302.8848 42.78831
execute as @s[scores={cutSceneTimer=457}] run tp @s 728.1979 56.5136 59.56021 302.52 42.67701
execute as @s[scores={cutSceneTimer=458}] run tp @s 728.2285 56.49149 59.57565 302.151 42.56091
execute as @s[scores={cutSceneTimer=459}] run tp @s 728.259 56.46976 59.59066 301.7891 42.44349
execute as @s[scores={cutSceneTimer=460}] run tp @s 728.2902 56.44788 59.6056 301.4253 42.32175
execute as @s[scores={cutSceneTimer=461}] run tp @s 728.321 56.42651 59.62001 301.0712 42.19965
execute as @s[scores={cutSceneTimer=462}] run tp @s 728.3526 56.40499 59.63436 300.7155 42.07322
execute as @s[scores={cutSceneTimer=463}] run tp @s 728.3843 56.38372 59.64838 300.3651 41.94484
execute as @s[scores={cutSceneTimer=464}] run tp @s 728.4162 56.36254 59.66215 300.0176 41.81363
execute as @s[scores={cutSceneTimer=465}] run tp @s 728.4484 56.34149 59.67568 299.6734 41.67972
execute as @s[scores={cutSceneTimer=466}] run tp @s 728.481 56.32053 59.68898 299.3323 41.54296
execute as @s[scores={cutSceneTimer=467}] run tp @s 728.514 56.29955 59.70212 298.9925 41.40252
execute as @s[scores={cutSceneTimer=468}] run tp @s 728.5472 56.2788 59.71494 298.6581 41.26013
execute as @s[scores={cutSceneTimer=469}] run tp @s 728.5695 56.26499 59.72338 298.4366 41.16335
execute as @s[scores={cutSceneTimer=470}] run tp @s 728.6036 56.24415 59.73598 298.1038 41.01426
execute as @s[scores={cutSceneTimer=471}] run tp @s 728.6375 56.22381 59.74812 297.7811 40.8652
execute as @s[scores={cutSceneTimer=472}] run tp @s 728.6715 56.20357 59.76002 297.4621 40.71334
execute as @s[scores={cutSceneTimer=473}] run tp @s 728.7059 56.18343 59.7717 297.1468 40.55862
execute as @s[scores={cutSceneTimer=474}] run tp @s 728.7408 56.16328 59.78322 296.8338 40.4002
execute as @s[scores={cutSceneTimer=475}] run tp @s 728.7766 56.14293 59.79468 296.5202 40.23656
execute as @s[scores={cutSceneTimer=476}] run tp @s 728.8121 56.12296 59.80577 296.2149 40.07212
execute as @s[scores={cutSceneTimer=477}] run tp @s 728.8478 56.1032 59.81657 295.9156 39.90581
execute as @s[scores={cutSceneTimer=478}] run tp @s 728.8839 56.08354 59.82716 295.6205 39.73662
execute as @s[scores={cutSceneTimer=479}] run tp @s 728.9204 56.06387 59.83759 295.328 39.56356
execute as @s[scores={cutSceneTimer=480}] run tp @s 728.9573 56.04426 59.84782 295.0378 39.38732
execute as @s[scores={cutSceneTimer=481}] run tp @s 728.9944 56.02488 59.85778 294.7516 39.2093
execute as @s[scores={cutSceneTimer=482}] run tp @s 729.0322 56.00534 59.86765 294.4642 39.02602
execute as @s[scores={cutSceneTimer=483}] run tp @s 729.0699 55.98613 59.8772 294.1826 38.84206
execute as @s[scores={cutSceneTimer=484}] run tp @s 729.1089 55.96652 59.88678 293.8959 38.65018
execute as @s[scores={cutSceneTimer=485}] run tp @s 729.1476 55.94737 59.89597 293.6169 38.45796
execute as @s[scores={cutSceneTimer=486}] run tp @s 729.1868 55.92832 59.90495 293.3404 38.25953
execute as @s[scores={cutSceneTimer=487}] run tp @s 729.2271 55.90897 59.91392 293.0606 38.05065
execute as @s[scores={cutSceneTimer=488}] run tp @s 729.2676 55.88985 59.92271 292.7839 37.83616
execute as @s[scores={cutSceneTimer=489}] run tp @s 729.3079 55.87125 59.93122 292.5139 37.61923
execute as @s[scores={cutSceneTimer=490}] run tp @s 729.3484 55.85296 59.93955 292.2478 37.398
execute as @s[scores={cutSceneTimer=491}] run tp @s 729.3896 55.83467 59.94783 291.9809 37.16872
execute as @s[scores={cutSceneTimer=492}] run tp @s 729.4313 55.81657 59.956 291.7158 36.93373
execute as @s[scores={cutSceneTimer=493}] run tp @s 729.4739 55.79844 59.96413 291.4498 36.69058
execute as @s[scores={cutSceneTimer=494}] run tp @s 729.5157 55.78097 59.97192 291.1927 36.44862
execute as @s[scores={cutSceneTimer=495}] run tp @s 729.5585 55.76347 59.97969 290.9344 36.19868
execute as @s[scores={cutSceneTimer=496}] run tp @s 729.6014 55.74622 59.98731 290.6792 35.94495
execute as @s[scores={cutSceneTimer=497}] run tp @s 729.6442 55.72934 59.99473 290.4286 35.68936
execute as @s[scores={cutSceneTimer=498}] run tp @s 729.6876 55.71255 60.00207 290.179 35.42823
execute as @s[scores={cutSceneTimer=499}] run tp @s 729.7319 55.69573 60.00939 289.928 35.15931
execute as @s[scores={cutSceneTimer=500}] run tp @s 729.7759 55.67931 60.01649 289.6826 34.89009
execute as @s[scores={cutSceneTimer=501}] run tp @s 729.8203 55.66309 60.02347 289.4393 34.61718
execute as @s[scores={cutSceneTimer=502}] run tp @s 729.8652 55.64694 60.03038 289.1967 34.33903
execute as @s[scores={cutSceneTimer=503}] run tp @s 729.9103 55.63098 60.03716 288.9562 34.05758
execute as @s[scores={cutSceneTimer=504}] run tp @s 729.9558 55.61521 60.04384 288.718 33.77294
execute as @s[scores={cutSceneTimer=505}] run tp @s 730.0012 55.59972 60.05035 288.4836 33.48742
execute as @s[scores={cutSceneTimer=506}] run tp @s 730.0469 55.58442 60.05676 288.2514 33.19908
execute as @s[scores={cutSceneTimer=507}] run tp @s 730.0926 55.56938 60.06301 288.0228 32.91011
execute as @s[scores={cutSceneTimer=508}] run tp @s 730.1387 55.55444 60.06919 287.7952 32.6172
execute as @s[scores={cutSceneTimer=509}] run tp @s 730.1703 55.54435 60.07335 287.641 32.416
execute as @s[scores={cutSceneTimer=510}] run tp @s 730.217 55.52968 60.07935 287.4167 32.11917
execute as @s[scores={cutSceneTimer=511}] run tp @s 730.2635 55.51528 60.08521 287.1962 31.82257
execute as @s[scores={cutSceneTimer=512}] run tp @s 730.3107 55.50088 60.09104 286.975 31.52064
execute as @s[scores={cutSceneTimer=513}] run tp @s 730.3586 55.48655 60.09681 286.7546 31.21503
execute as @s[scores={cutSceneTimer=514}] run tp @s 730.406 55.47257 60.1024 286.5391 30.912
execute as @s[scores={cutSceneTimer=515}] run tp @s 730.4533 55.45885 60.10785 286.3272 30.60991
execute as @s[scores={cutSceneTimer=516}] run tp @s 730.5014 55.44513 60.11327 286.115 30.30323
execute as @s[scores={cutSceneTimer=517}] run tp @s 730.5494 55.43164 60.11857 285.9061 29.99757
execute as @s[scores={cutSceneTimer=518}] run tp @s 730.5972 55.41841 60.12373 285.7007 29.69329
execute as @s[scores={cutSceneTimer=519}] run tp @s 730.6452 55.40533 60.1288 285.4974 29.38868
execute as @s[scores={cutSceneTimer=520}] run tp @s 730.6937 55.39233 60.13381 285.2952 29.08213
execute as @s[scores={cutSceneTimer=521}] run tp @s 730.7422 55.37949 60.13873 285.095 28.7755
execute as @s[scores={cutSceneTimer=522}] run tp @s 730.7916 55.36663 60.14363 284.8944 28.46494
execute as @s[scores={cutSceneTimer=523}] run tp @s 730.8402 55.35416 60.14834 284.6998 28.16071
execute as @s[scores={cutSceneTimer=524}] run tp @s 730.8889 55.34186 60.15296 284.5073 27.85707
execute as @s[scores={cutSceneTimer=525}] run tp @s 730.9387 55.32946 60.15759 284.3133 27.54828
execute as @s[scores={cutSceneTimer=526}] run tp @s 730.9886 55.31721 60.16213 284.1214 27.24038
execute as @s[scores={cutSceneTimer=527}] run tp @s 731.0386 55.30512 60.16659 283.9318 26.93365
execute as @s[scores={cutSceneTimer=528}] run tp @s 731.0877 55.2934 60.17088 283.7479 26.63413
execute as @s[scores={cutSceneTimer=529}] run tp @s 731.1371 55.28179 60.1751 283.5656 26.33512
execute as @s[scores={cutSceneTimer=530}] run tp @s 731.1866 55.2703 60.17926 283.3852 26.03729
execute as @s[scores={cutSceneTimer=531}] run tp @s 731.236 55.259 60.18331 283.2077 25.74275
execute as @s[scores={cutSceneTimer=532}] run tp @s 731.2864 55.24762 60.18737 283.029 25.44451
execute as @s[scores={cutSceneTimer=533}] run tp @s 731.3365 55.23646 60.19133 282.8535 25.15046
execute as @s[scores={cutSceneTimer=534}] run tp @s 731.3861 55.22557 60.19516 282.6825 24.86259
execute as @s[scores={cutSceneTimer=535}] run tp @s 731.4367 55.21461 60.19899 282.5104 24.57187
execute as @s[scores={cutSceneTimer=536}] run tp @s 731.4869 55.20386 60.20274 282.3415 24.28571
execute as @s[scores={cutSceneTimer=537}] run tp @s 731.5366 55.19337 60.20636 282.1768 24.00618
execute as @s[scores={cutSceneTimer=538}] run tp @s 731.587 55.18287 60.20996 282.0122 23.72626
execute as @s[scores={cutSceneTimer=539}] run tp @s 731.6376 55.17244 60.21352 281.8488 23.448
execute as @s[scores={cutSceneTimer=540}] run tp @s 731.6884 55.16213 60.21701 281.6874 23.17318
execute as @s[scores={cutSceneTimer=541}] run tp @s 731.739 55.15196 60.22044 281.5284 22.90238
execute as @s[scores={cutSceneTimer=542}] run tp @s 731.7887 55.1421 60.22374 281.3744 22.64053
execute as @s[scores={cutSceneTimer=543}] run tp @s 731.8057 55.13875 60.22485 281.3222 22.55186
execute as @s[scores={cutSceneTimer=544}] run tp @s 731.8801 55.12428 60.22965 281.0967 22.16964
execute as @s[scores={cutSceneTimer=545}] run tp @s 731.9301 55.11469 60.23281 280.9478 21.91816
execute as @s[scores={cutSceneTimer=546}] run tp @s 731.9803 55.10516 60.23593 280.8 21.66976
execute as @s[scores={cutSceneTimer=547}] run tp @s 732.0309 55.09568 60.23901 280.6534 21.42451
execute as @s[scores={cutSceneTimer=548}] run tp @s 732.0807 55.08644 60.242 280.5109 21.18755
execute as @s[scores={cutSceneTimer=549}] run tp @s 732.1301 55.07737 60.24492 280.3713 20.95717
execute as @s[scores={cutSceneTimer=550}] run tp @s 732.1802 55.06829 60.24783 280.2321 20.7293
execute as @s[scores={cutSceneTimer=551}] run tp @s 732.2295 55.05944 60.25064 280.0968 20.50974
execute as @s[scores={cutSceneTimer=552}] run tp @s 732.2791 55.05064 60.25343 279.9627 20.2946
execute as @s[scores={cutSceneTimer=553}] run tp @s 732.3288 55.04189 60.25619 279.83 20.08409
execute as @s[scores={cutSceneTimer=554}] run tp @s 732.3779 55.03335 60.25887 279.7009 19.88218
execute as @s[scores={cutSceneTimer=555}] run tp @s 732.4278 55.02475 60.26157 279.5715 19.6827
execute as @s[scores={cutSceneTimer=556}] run tp @s 732.4767 55.01641 60.26416 279.4466 19.4935
execute as @s[scores={cutSceneTimer=557}] run tp @s 732.5261 55.00805 60.26675 279.3221 19.30839
execute as @s[scores={cutSceneTimer=558}] run tp @s 732.5753 54.99981 60.2693 279.2 19.13048
execute as @s[scores={cutSceneTimer=559}] run tp @s 732.6241 54.9917 60.2718 279.0804 18.96045
execute as @s[scores={cutSceneTimer=560}] run tp @s 732.6734 54.9836 60.27428 278.9618 18.79589
execute as @s[scores={cutSceneTimer=561}] run tp @s 732.7225 54.97558 60.27674 278.8452 18.63881
execute as @s[scores={cutSceneTimer=562}] run tp @s 732.7709 54.96776 60.27913 278.7321 18.49132
execute as @s[scores={cutSceneTimer=563}] run tp @s 732.8031 54.96258 60.28071 278.6577 18.39704
execute as @s[scores={cutSceneTimer=564}] run tp @s 732.8509 54.95496 60.28303 278.5489 18.26348
execute as @s[scores={cutSceneTimer=565}] run tp @s 732.8985 54.94741 60.28532 278.4421 18.1379
execute as @s[scores={cutSceneTimer=566}] run tp @s 732.9459 54.93996 60.28758 278.3373 18.02047
execute as @s[scores={cutSceneTimer=567}] run tp @s 732.994 54.93245 60.28986 278.2328 17.90945
execute as @s[scores={cutSceneTimer=568}] run tp @s 733.0416 54.92506 60.2921 278.131 17.80777
execute as @s[scores={cutSceneTimer=569}] run tp @s 733.0885 54.91785 60.29428 278.0324 17.71615
execute as @s[scores={cutSceneTimer=570}] run tp @s 733.136 54.91058 60.29649 277.9341 17.6319
execute as @s[scores={cutSceneTimer=571}] run tp @s 733.1824 54.90352 60.29863 277.8398 17.55777
execute as @s[scores={cutSceneTimer=572}] run tp @s 733.2286 54.89653 60.30076 277.7474 17.48595
execute as @s[scores={cutSceneTimer=573}] run tp @s 733.2748 54.88958 60.30288 277.6566 17.41446
execute as @s[scores={cutSceneTimer=574}] run tp @s 733.3214 54.88261 60.305 277.5667 17.34269
execute as @s[scores={cutSceneTimer=575}] run tp @s 733.3672 54.8758 60.30709 277.48 17.27258
execute as @s[scores={cutSceneTimer=576}] run tp @s 733.4127 54.86905 60.30916 277.3954 17.2032
execute as @s[scores={cutSceneTimer=577}] run tp @s 733.4576 54.86242 60.3112 277.3134 17.13496
execute as @s[scores={cutSceneTimer=578}] run tp @s 733.5023 54.85585 60.31324 277.2333 17.06741
execute as @s[scores={cutSceneTimer=579}] run tp @s 733.5469 54.8493 60.31527 277.155 17.0002
execute as @s[scores={cutSceneTimer=580}] run tp @s 733.5915 54.8428 60.31731 277.0783 16.93344
execute as @s[scores={cutSceneTimer=581}] run tp @s 733.6362 54.83628 60.31935 277.003 16.8667
execute as @s[scores={cutSceneTimer=582}] run tp @s 733.6806 54.82983 60.32139 276.9298 16.8007
execute as @s[scores={cutSceneTimer=583}] run tp @s 733.7247 54.82344 60.32343 276.8587 16.7354
execute as @s[scores={cutSceneTimer=584}] run tp @s 733.7678 54.81719 60.32544 276.7906 16.67165
execute as @s[scores={cutSceneTimer=585}] run tp @s 733.811 54.81095 60.32745 276.7241 16.60817
execute as @s[scores={cutSceneTimer=586}] run tp @s 733.8535 54.8048 60.32946 276.66 16.54578
execute as @s[scores={cutSceneTimer=587}] run tp @s 733.8957 54.79871 60.33147 276.5981 16.48409
execute as @s[scores={cutSceneTimer=588}] run tp @s 733.9376 54.79266 60.33348 276.5382 16.42308
execute as @s[scores={cutSceneTimer=589}] run tp @s 733.9796 54.78659 60.33552 276.4796 16.36196
execute as @s[scores={cutSceneTimer=590}] run tp @s 734.0213 54.78056 60.33756 276.423 16.30151
execute as @s[scores={cutSceneTimer=591}] run tp @s 734.0618 54.77469 60.33957 276.3696 16.2429
execute as @s[scores={cutSceneTimer=592}] run tp @s 734.1024 54.76878 60.34162 276.3175 16.18419
execute as @s[scores={cutSceneTimer=593}] run tp @s 734.1432 54.76285 60.34371 276.2669 16.1254
execute as @s[scores={cutSceneTimer=594}] run tp @s 734.1826 54.7571 60.34575 276.2195 16.06877
execute as @s[scores={cutSceneTimer=595}] run tp @s 734.222 54.75132 60.34783 276.1737 16.01208
execute as @s[scores={cutSceneTimer=596}] run tp @s 734.2606 54.74564 60.3499 276.1304 15.95675
execute as @s[scores={cutSceneTimer=597}] run tp @s 734.299 54.73997 60.35199 276.0889 15.90173
execute as @s[scores={cutSceneTimer=598}] run tp @s 734.3372 54.73429 60.35412 276.049 15.84697
execute as @s[scores={cutSceneTimer=599}] run tp @s 734.3497 54.73243 60.35483 276.0364 15.82907
execute as @s[scores={cutSceneTimer=600}] run tp @s 734.4095 54.72347 60.35826 275.9784 15.7436
execute as @s[scores={cutSceneTimer=601}] run tp @s 734.4476 54.7177 60.36052 275.9435 15.68908
execute as @s[scores={cutSceneTimer=602}] run tp @s 734.4841 54.71214 60.36273 275.9118 15.63683
execute as @s[scores={cutSceneTimer=603}] run tp @s 734.5201 54.7066 60.36497 275.8821 15.58525
execute as @s[scores={cutSceneTimer=604}] run tp @s 734.5552 54.70115 60.3672 275.8549 15.53497
execute as @s[scores={cutSceneTimer=605}] run tp @s 734.5899 54.69573 60.36945 275.8296 15.4853
execute as @s[scores={cutSceneTimer=606}] run tp @s 734.6241 54.69033 60.37174 275.8062 15.43624
execute as @s[scores={cutSceneTimer=607}] run tp @s 734.6465 54.68674 60.37328 275.7918 15.40386
execute as @s[scores={cutSceneTimer=608}] run tp @s 734.6804 54.6813 60.37564 275.7715 15.35525
execute as @s[scores={cutSceneTimer=609}] run tp @s 734.7141 54.6758 60.37807 275.7531 15.30658
execute as @s[scores={cutSceneTimer=610}] run tp @s 734.7468 54.67039 60.3805 275.7369 15.25915
execute as @s[scores={cutSceneTimer=611}] run tp @s 734.7789 54.66503 60.38295 275.7229 15.21262
execute as @s[scores={cutSceneTimer=612}] run tp @s 734.8109 54.6596 60.38547 275.7107 15.1661
execute as @s[scores={cutSceneTimer=613}] run tp @s 734.8422 54.65419 60.38803 275.7005 15.12018
execute as @s[scores={cutSceneTimer=614}] run tp @s 734.8729 54.64882 60.39061 275.6924 15.0752
execute as @s[scores={cutSceneTimer=615}] run tp @s 734.9034 54.64339 60.39326 275.6863 15.03022
execute as @s[scores={cutSceneTimer=616}] run tp @s 734.9326 54.63809 60.39589 275.6823 14.98695
execute as @s[scores={cutSceneTimer=617}] run tp @s 734.9617 54.6327 60.39862 275.6802 14.94347
execute as @s[scores={cutSceneTimer=618}] run tp @s 734.9904 54.62731 60.40139 275.68 14.90055
execute as @s[scores={cutSceneTimer=619}] run tp @s 735.0184 54.62194 60.40417 275.68 14.85825
execute as @s[scores={cutSceneTimer=620}] run tp @s 735.0456 54.61661 60.40694 275.6801 14.81679
execute as @s[scores={cutSceneTimer=621}] run tp @s 735.0719 54.61137 60.40968 275.6802 14.77643
execute as @s[scores={cutSceneTimer=622}] run tp @s 735.0978 54.60611 60.41245 275.6805 14.73641
execute as @s[scores={cutSceneTimer=623}] run tp @s 735.1232 54.60082 60.41525 275.6807 14.69667
execute as @s[scores={cutSceneTimer=624}] run tp @s 735.1479 54.59558 60.41804 275.681 14.65774
execute as @s[scores={cutSceneTimer=625}] run tp @s 735.1718 54.5904 60.42081 275.6813 14.61962
execute as @s[scores={cutSceneTimer=626}] run tp @s 735.1954 54.58516 60.42364 275.6817 14.58156
execute as @s[scores={cutSceneTimer=627}] run tp @s 735.2181 54.57997 60.42645 275.6821 14.54431
execute as @s[scores={cutSceneTimer=628}] run tp @s 735.2406 54.57476 60.42928 275.6825 14.50735
execute as @s[scores={cutSceneTimer=629}] run tp @s 735.2632 54.5695 60.43216 275.683 14.47048
execute as @s[scores={cutSceneTimer=630}] run tp @s 735.2851 54.56438 60.43498 275.6836 14.43509
execute as @s[scores={cutSceneTimer=631}] run tp @s 735.3074 54.55919 60.43785 275.6841 14.39956
execute as @s[scores={cutSceneTimer=632}] run tp @s 735.3297 54.554 60.44074 275.6848 14.36458
execute as @s[scores={cutSceneTimer=633}] run tp @s 735.3514 54.54893 60.44357 275.6854 14.3308
execute as @s[scores={cutSceneTimer=634}] run tp @s 735.3732 54.54388 60.44641 275.6862 14.29753
execute as @s[scores={cutSceneTimer=635}] run tp @s 735.3877 54.54048 60.44833 275.6866 14.27543
execute as @s[scores={cutSceneTimer=636}] run tp @s 735.4095 54.53542 60.4512 275.6874 14.2428
execute as @s[scores={cutSceneTimer=637}] run tp @s 735.4313 54.53034 60.4541 275.6882 14.21051
execute as @s[scores={cutSceneTimer=638}] run tp @s 735.4529 54.52531 60.45698 275.6891 14.17893
execute as @s[scores={cutSceneTimer=639}] run tp @s 735.4744 54.52032 60.45985 275.69 14.14803
execute as @s[scores={cutSceneTimer=640}] run tp @s 735.4958 54.51532 60.46274 275.6909 14.11752
execute as @s[scores={cutSceneTimer=641}] run tp @s 735.5171 54.51037 60.46562 275.6919 14.08766
execute as @s[scores={cutSceneTimer=642}] run tp @s 735.5384 54.50541 60.46852 275.6929 14.05813
execute as @s[scores={cutSceneTimer=643}] run tp @s 735.5596 54.50048 60.47142 275.6939 14.02925
execute as @s[scores={cutSceneTimer=644}] run tp @s 735.5807 54.49557 60.47431 275.695 14.00088
execute as @s[scores={cutSceneTimer=645}] run tp @s 735.6021 54.49059 60.47727 275.6961 13.97247
execute as @s[scores={cutSceneTimer=646}] run tp @s 735.623 54.48571 60.48018 275.6973 13.94506
execute as @s[scores={cutSceneTimer=647}] run tp @s 735.6441 54.48082 60.4831 275.6985 13.918
execute as @s[scores={cutSceneTimer=648}] run tp @s 735.6652 54.47591 60.48605 275.6997 13.89121
execute as @s[scores={cutSceneTimer=649}] run tp @s 735.6861 54.47105 60.48899 275.701 13.8651
execute as @s[scores={cutSceneTimer=650}] run tp @s 735.7069 54.46621 60.49193 275.7023 13.83945
execute as @s[scores={cutSceneTimer=651}] run tp @s 735.7278 54.46135 60.4949 275.7036 13.81411
execute as @s[scores={cutSceneTimer=652}] run tp @s 735.7484 54.45657 60.49783 275.705 13.78957
execute as @s[scores={cutSceneTimer=653}] run tp @s 735.7692 54.45174 60.5008 275.7064 13.76517
execute as @s[scores={cutSceneTimer=654}] run tp @s 735.7897 54.44696 60.50375 275.7079 13.74141
execute as @s[scores={cutSceneTimer=655}] run tp @s 735.8101 54.44223 60.50669 275.7093 13.71824
execute as @s[scores={cutSceneTimer=656}] run tp @s 735.8306 54.43745 60.50967 275.7108 13.69524
execute as @s[scores={cutSceneTimer=657}] run tp @s 735.8513 54.43266 60.51268 275.7124 13.67255
execute as @s[scores={cutSceneTimer=658}] run tp @s 735.8718 54.42788 60.51568 275.714 13.65032
execute as @s[scores={cutSceneTimer=659}] run tp @s 735.8919 54.42321 60.51863 275.7156 13.62897
execute as @s[scores={cutSceneTimer=660}] run tp @s 735.9122 54.4185 60.52163 275.7172 13.60777
execute as @s[scores={cutSceneTimer=661}] run tp @s 735.9321 54.41386 60.52458 275.7189 13.58729
execute as @s[scores={cutSceneTimer=662}] run tp @s 735.9521 54.40922 60.52756 275.7206 13.56713
execute as @s[scores={cutSceneTimer=663}] run tp @s 735.9721 54.40458 60.53054 275.7223 13.54737
execute as @s[scores={cutSceneTimer=664}] run tp @s 735.9918 54.4 60.5335 275.7241 13.52818
execute as @s[scores={cutSceneTimer=665}] run tp @s 736.0116 54.3954 60.53648 275.7258 13.50932
execute as @s[scores={cutSceneTimer=666}] run tp @s 736.0313 54.39085 60.53944 275.7277 13.49096
execute as @s[scores={cutSceneTimer=667}] run tp @s 736.0509 54.38629 60.54243 275.7295 13.47293
execute as @s[scores={cutSceneTimer=668}] run tp @s 736.0704 54.38177 60.54539 275.7314 13.45541
execute as @s[scores={cutSceneTimer=669}] run tp @s 736.0897 54.37726 60.54836 275.7332 13.4383
execute as @s[scores={cutSceneTimer=670}] run tp @s 736.1094 54.37269 60.55139 275.7352 13.42127
execute as @s[scores={cutSceneTimer=671}] run tp @s 736.1287 54.36822 60.55436 275.7371 13.40497
execute as @s[scores={cutSceneTimer=672}] run tp @s 736.1479 54.36377 60.55733 275.7391 13.38908
execute as @s[scores={cutSceneTimer=673}] run tp @s 736.167 54.35933 60.5603 275.7411 13.37358
execute as @s[scores={cutSceneTimer=674}] run tp @s 736.1862 54.35487 60.56331 275.7432 13.3583
execute as @s[scores={cutSceneTimer=675}] run tp @s 736.2054 54.35041 60.56632 275.7452 13.34339
execute as @s[scores={cutSceneTimer=676}] run tp @s 736.2245 54.34598 60.56932 275.7473 13.32892
execute as @s[scores={cutSceneTimer=677}] run tp @s 736.2436 54.34156 60.57233 275.7494 13.31482
execute as @s[scores={cutSceneTimer=678}] run tp @s 736.2624 54.3372 60.57531 275.7516 13.30122
execute as @s[scores={cutSceneTimer=679}] run tp @s 736.2813 54.33281 60.57832 275.7538 13.28788
execute as @s[scores={cutSceneTimer=680}] run tp @s 736.3002 54.32843 60.58133 275.7559 13.27492
execute as @s[scores={cutSceneTimer=681}] run tp @s 736.3191 54.32405 60.58435 275.7582 13.26226
execute as @s[scores={cutSceneTimer=682}] run tp @s 736.3375 54.31978 60.58732 275.7604 13.25021
execute as @s[scores={cutSceneTimer=683}] run tp @s 736.3559 54.31552 60.59029 275.7626 13.23853
execute as @s[scores={cutSceneTimer=684}] run tp @s 736.3682 54.31266 60.59228 275.7642 13.23088
execute as @s[scores={cutSceneTimer=685}] run tp @s 736.3866 54.30841 60.59526 275.7664 13.21973
execute as @s[scores={cutSceneTimer=686}] run tp @s 736.405 54.30414 60.59827 275.7688 13.20886
execute as @s[scores={cutSceneTimer=687}] run tp @s 736.4235 54.29986 60.60128 275.7712 13.19829
execute as @s[scores={cutSceneTimer=688}] run tp @s 736.4417 54.29563 60.60428 275.7736 13.18815
execute as @s[scores={cutSceneTimer=689}] run tp @s 736.4597 54.29144 60.60725 275.7759 13.17843
execute as @s[scores={cutSceneTimer=690}] run tp @s 736.478 54.28722 60.61026 275.7783 13.16894
execute as @s[scores={cutSceneTimer=691}] run tp @s 736.4958 54.28307 60.61324 275.7808 13.15991
execute as @s[scores={cutSceneTimer=692}] run tp @s 736.5138 54.27892 60.61622 275.7832 13.15116
execute as @s[scores={cutSceneTimer=693}] run tp @s 736.5316 54.27481 60.61919 275.7857 13.14281
execute as @s[scores={cutSceneTimer=694}] run tp @s 736.5491 54.27074 60.62213 275.7881 13.13484
execute as @s[scores={cutSceneTimer=695}] run tp @s 736.5668 54.26664 60.62511 275.7907 13.12711
execute as @s[scores={cutSceneTimer=696}] run tp @s 736.5845 54.26253 60.6281 275.7932 13.11965
execute as @s[scores={cutSceneTimer=697}] run tp @s 736.6022 54.25844 60.63109 275.7957 13.11253
execute as @s[scores={cutSceneTimer=698}] run tp @s 736.6196 54.25442 60.63404 275.7983 13.10582
execute as @s[scores={cutSceneTimer=699}] run tp @s 736.637 54.2504 60.637 275.8009 13.09938
execute as @s[scores={cutSceneTimer=700}] run tp @s 736.6544 54.24636 60.63998 275.8035 13.09324
execute as @s[scores={cutSceneTimer=701}] run tp @s 736.6714 54.2424 60.64292 275.8061 13.08746
execute as @s[scores={cutSceneTimer=702}] run tp @s 736.6884 54.23848 60.64583 275.8087 13.08205
execute as @s[scores={cutSceneTimer=703}] run tp @s 736.7053 54.23458 60.64874 275.8113 13.07693
execute as @s[scores={cutSceneTimer=704}] run tp @s 736.722 54.2307 60.65164 275.814 13.0721
execute as @s[scores={cutSceneTimer=705}] run tp @s 736.7387 54.22684 60.65454 275.8166 13.06756
execute as @s[scores={cutSceneTimer=706}] run tp @s 736.7555 54.22295 60.65747 275.8193 13.06328
execute as @s[scores={cutSceneTimer=707}] run tp @s 736.7722 54.21908 60.6604 275.822 13.05928
execute as @s[scores={cutSceneTimer=708}] run tp @s 736.7888 54.21526 60.6633 275.8247 13.05559
execute as @s[scores={cutSceneTimer=709}] run tp @s 736.8054 54.21142 60.66622 275.8275 13.05217
execute as @s[scores={cutSceneTimer=710}] run tp @s 736.8216 54.20765 60.66909 275.8301 13.04907
execute as @s[scores={cutSceneTimer=711}] run tp @s 736.8378 54.20391 60.67196 275.8329 13.04623
execute as @s[scores={cutSceneTimer=712}] run tp @s 736.854 54.20016 60.67484 275.8356 13.04367
execute as @s[scores={cutSceneTimer=713}] run tp @s 736.8701 54.19643 60.67772 275.8383 13.04136
execute as @s[scores={cutSceneTimer=714}] run tp @s 736.8861 54.19274 60.68056 275.8412 13.03934
execute as @s[scores={cutSceneTimer=715}] run tp @s 736.9022 54.18902 60.68344 275.8439 13.03755
execute as @s[scores={cutSceneTimer=716}] run tp @s 736.918 54.18535 60.6863 275.8467 13.03605
execute as @s[scores={cutSceneTimer=717}] run tp @s 736.9337 54.18172 60.68913 275.8495 13.03481
execute as @s[scores={cutSceneTimer=718}] run tp @s 736.9495 54.17809 60.69197 275.8524 13.03381
execute as @s[scores={cutSceneTimer=719}] run tp @s 736.9651 54.17447 60.69481 275.8552 13.03306
execute as @s[scores={cutSceneTimer=720}] run tp @s 736.9805 54.1709 60.69762 275.858 13.03257
execute as @s[scores={cutSceneTimer=721}] run tp @s 736.9959 54.16735 60.70042 275.8608 13.03231
execute as @s[scores={cutSceneTimer=722}] run tp @s 737.0112 54.16382 60.70322 275.8636 13.0323
execute as @s[scores={cutSceneTimer=723}] run tp @s 737.0264 54.16031 60.70601 275.8665 13.03251
execute as @s[scores={cutSceneTimer=724}] run tp @s 737.0416 54.1568 60.70881 275.8693 13.03296
execute as @s[scores={cutSceneTimer=725}] run tp @s 737.0568 54.15328 60.71161 275.8722 13.03366
execute as @s[scores={cutSceneTimer=726}] run tp @s 737.0717 54.14983 60.71438 275.8751 13.03456
execute as @s[scores={cutSceneTimer=727}] run tp @s 737.0865 54.1464 60.71714 275.878 13.0357
execute as @s[scores={cutSceneTimer=728}] run tp @s 737.1016 54.14292 60.71994 275.8809 13.03707
execute as @s[scores={cutSceneTimer=729}] run tp @s 737.1116 54.14061 60.7218 275.8829 13.03812
execute as @s[scores={cutSceneTimer=730}] run tp @s 737.1263 54.1372 60.72456 275.8857 13.03985
execute as @s[scores={cutSceneTimer=731}] run tp @s 737.1409 54.13384 60.72729 275.8886 13.04178
execute as @s[scores={cutSceneTimer=732}] run tp @s 737.1553 54.13051 60.73001 275.8915 13.04391
execute as @s[scores={cutSceneTimer=733}] run tp @s 737.17 54.12713 60.73277 275.8945 13.04631
execute as @s[scores={cutSceneTimer=734}] run tp @s 737.1844 54.12379 60.7355 275.8974 13.04888
execute as @s[scores={cutSceneTimer=735}] run tp @s 737.1988 54.12047 60.73822 275.9004 13.05167
execute as @s[scores={cutSceneTimer=736}] run tp @s 737.2131 54.11718 60.74094 275.9034 13.05465
execute as @s[scores={cutSceneTimer=737}] run tp @s 737.2272 54.11392 60.74362 275.9063 13.0578
execute as @s[scores={cutSceneTimer=738}] run tp @s 737.2413 54.11067 60.74632 275.9092 13.06117
execute as @s[scores={cutSceneTimer=739}] run tp @s 737.2551 54.10748 60.74897 275.9121 13.06468
execute as @s[scores={cutSceneTimer=740}] run tp @s 737.2689 54.10429 60.75162 275.9151 13.0684
execute as @s[scores={cutSceneTimer=741}] run tp @s 737.2825 54.10114 60.75425 275.918 13.07227
execute as @s[scores={cutSceneTimer=742}] run tp @s 737.2961 54.09801 60.75687 275.9209 13.07631
execute as @s[scores={cutSceneTimer=743}] run tp @s 737.3096 54.09491 60.75948 275.9238 13.08053
execute as @s[scores={cutSceneTimer=744}] run tp @s 737.3231 54.09178 60.76211 275.9268 13.08498
execute as @s[scores={cutSceneTimer=745}] run tp @s 737.3366 54.08865 60.76474 275.9298 13.08962
execute as @s[scores={cutSceneTimer=746}] run tp @s 737.3501 54.08555 60.76737 275.9327 13.09443
execute as @s[scores={cutSceneTimer=747}] run tp @s 737.3633 54.08251 60.76995 275.9357 13.09934
execute as @s[scores={cutSceneTimer=748}] run tp @s 737.3763 54.07951 60.7725 275.9386 13.10438
execute as @s[scores={cutSceneTimer=749}] run tp @s 737.3893 54.07649 60.77507 275.9415 13.10963
execute as @s[scores={cutSceneTimer=750}] run tp @s 737.4022 54.07354 60.7776 275.9445 13.11497
execute as @s[scores={cutSceneTimer=751}] run tp @s 737.4151 54.07056 60.78015 275.9474 13.12053
execute as @s[scores={cutSceneTimer=752}] run tp @s 737.4277 54.06765 60.78266 275.9503 13.12616
execute as @s[scores={cutSceneTimer=753}] run tp @s 737.4402 54.06475 60.78515 275.9532 13.13194
execute as @s[scores={cutSceneTimer=754}] run tp @s 737.4527 54.06188 60.78763 275.9561 13.13783
execute as @s[scores={cutSceneTimer=755}] run tp @s 737.4651 54.05903 60.7901 275.959 13.14388
execute as @s[scores={cutSceneTimer=756}] run tp @s 737.4774 54.05619 60.79257 275.9619 13.15008
execute as @s[scores={cutSceneTimer=757}] run tp @s 737.4896 54.05338 60.79501 275.9648 13.15637
execute as @s[scores={cutSceneTimer=758}] run tp @s 737.5018 54.05058 60.79745 275.9677 13.16284
execute as @s[scores={cutSceneTimer=759}] run tp @s 737.514 54.04776 60.79992 275.9706 13.16951
execute as @s[scores={cutSceneTimer=760}] run tp @s 737.5259 54.045 60.80234 275.9736 13.17621
execute as @s[scores={cutSceneTimer=761}] run tp @s 737.5378 54.04226 60.80474 275.9764 13.18302
execute as @s[scores={cutSceneTimer=762}] run tp @s 737.5496 54.03955 60.80713 275.9793 13.18995
execute as @s[scores={cutSceneTimer=763}] run tp @s 737.5612 54.03688 60.80949 275.9822 13.19694
execute as @s[scores={cutSceneTimer=764}] run tp @s 737.5728 54.03421 60.81186 275.985 13.20409
execute as @s[scores={cutSceneTimer=765}] run tp @s 737.5842 54.03158 60.81419 275.9879 13.21127
execute as @s[scores={cutSceneTimer=766}] run tp @s 737.5955 54.02897 60.81651 275.9907 13.21857
execute as @s[scores={cutSceneTimer=767}] run tp @s 737.6069 54.02635 60.81884 275.9935 13.22605
execute as @s[scores={cutSceneTimer=768}] run tp @s 737.6181 54.02376 60.82116 275.9964 13.23363
execute as @s[scores={cutSceneTimer=769}] run tp @s 737.6292 54.0212 60.82346 275.9992 13.24125
execute as @s[scores={cutSceneTimer=770}] run tp @s 737.6402 54.01867 60.82573 276.002 13.24896
execute as @s[scores={cutSceneTimer=771}] run tp @s 737.6512 54.01614 60.82801 276.0048 13.25679
execute as @s[scores={cutSceneTimer=772}] run tp @s 737.6619 54.01367 60.83023 276.0076 13.26461
execute as @s[scores={cutSceneTimer=773}] run tp @s 737.6727 54.01119 60.83248 276.0104 13.27259
execute as @s[scores={cutSceneTimer=774}] run tp @s 737.6833 54.00875 60.83469 276.0132 13.2806
execute as @s[scores={cutSceneTimer=775}] run tp @s 737.6904 54.00711 60.83618 276.0151 13.28605
execute as @s[scores={cutSceneTimer=776}] run tp @s 737.7009 54.00469 60.83838 276.0178 13.29424
execute as @s[scores={cutSceneTimer=777}] run tp @s 737.7114 54.00227 60.84059 276.0206 13.3026
execute as @s[scores={cutSceneTimer=778}] run tp @s 737.7218 53.99988 60.84277 276.0234 13.31096
execute as @s[scores={cutSceneTimer=779}] run tp @s 737.7319 53.99756 60.8449 276.0261 13.31921
execute as @s[scores={cutSceneTimer=780}] run tp @s 737.742 53.99522 60.84705 276.0288 13.32768
execute as @s[scores={cutSceneTimer=781}] run tp @s 737.752 53.99292 60.84916 276.0315 13.33616
execute as @s[scores={cutSceneTimer=782}] run tp @s 737.7618 53.99066 60.85125 276.0341 13.34461
execute as @s[scores={cutSceneTimer=783}] run tp @s 737.7717 53.9884 60.85333 276.0368 13.35319
execute as @s[scores={cutSceneTimer=784}] run tp @s 737.7813 53.98618 60.8554 276.0395 13.36179
execute as @s[scores={cutSceneTimer=785}] run tp @s 737.7909 53.98397 60.85745 276.0421 13.37043
execute as @s[scores={cutSceneTimer=786}] run tp @s 737.8003 53.98182 60.85945 276.0447 13.379
execute as @s[scores={cutSceneTimer=787}] run tp @s 737.8095 53.97969 60.86144 276.0473 13.38759
execute as @s[scores={cutSceneTimer=788}] run tp @s 737.8188 53.97756 60.86343 276.0499 13.39629
execute as @s[scores={cutSceneTimer=789}] run tp @s 737.8279 53.97546 60.86539 276.0524 13.40499
execute as @s[scores={cutSceneTimer=790}] run tp @s 737.837 53.97338 60.86735 276.055 13.41377
execute as @s[scores={cutSceneTimer=791}] run tp @s 737.8458 53.97134 60.86927 276.0576 13.42246
execute as @s[scores={cutSceneTimer=792}] run tp @s 737.8548 53.96928 60.87121 276.0601 13.43139
execute as @s[scores={cutSceneTimer=793}] run tp @s 737.8635 53.96726 60.87312 276.0626 13.44022
execute as @s[scores={cutSceneTimer=794}] run tp @s 737.8723 53.96526 60.87501 276.0651 13.44911
execute as @s[scores={cutSceneTimer=795}] run tp @s 737.8807 53.96331 60.87686 276.0676 13.45789
execute as @s[scores={cutSceneTimer=796}] run tp @s 737.8892 53.96135 60.87873 276.07 13.46681
execute as @s[scores={cutSceneTimer=797}] run tp @s 737.8976 53.95942 60.88056 276.0724 13.47571
execute as @s[scores={cutSceneTimer=798}] run tp @s 737.9058 53.95754 60.88235 276.0749 13.48447
execute as @s[scores={cutSceneTimer=799}] run tp @s 737.9138 53.9557 60.88412 276.0772 13.49319
execute as @s[scores={cutSceneTimer=800}] run tp @s 737.9218 53.95387 60.88587 276.0796 13.50193
execute as @s[scores={cutSceneTimer=801}] run tp @s 737.9296 53.95207 60.8876 276.0819 13.51067
execute as @s[scores={cutSceneTimer=802}] run tp @s 737.9373 53.9503 60.88931 276.0842 13.51934
execute as @s[scores={cutSceneTimer=803}] run tp @s 737.945 53.94853 60.89101 276.0865 13.52809
execute as @s[scores={cutSceneTimer=804}] run tp @s 737.9525 53.9468 60.89269 276.0887 13.53677
execute as @s[scores={cutSceneTimer=805}] run tp @s 737.96 53.94509 60.89435 276.091 13.54545
execute as @s[scores={cutSceneTimer=806}] run tp @s 737.9673 53.94341 60.89598 276.0933 13.55407
execute as @s[scores={cutSceneTimer=807}] run tp @s 737.9721 53.9423 60.89705 276.0947 13.55976
execute as @s[scores={cutSceneTimer=808}] run tp @s 737.9794 53.94063 60.89868 276.0969 13.56847
execute as @s[scores={cutSceneTimer=809}] run tp @s 737.9865 53.939 60.90028 276.0991 13.5771
execute as @s[scores={cutSceneTimer=810}] run tp @s 737.9933 53.93742 60.90182 276.1012 13.58551
execute as @s[scores={cutSceneTimer=811}] run tp @s 738.0001 53.93586 60.90334 276.1033 13.59388
execute as @s[scores={cutSceneTimer=812}] run tp @s 738.0068 53.93433 60.90484 276.1053 13.60219
execute as @s[scores={cutSceneTimer=813}] run tp @s 738.0134 53.93281 60.90634 276.1074 13.61056
execute as @s[scores={cutSceneTimer=814}] run tp @s 738.0198 53.93134 60.9078 276.1094 13.61877
execute as @s[scores={cutSceneTimer=815}] run tp @s 738.0263 53.92985 60.90926 276.1115 13.62707
execute as @s[scores={cutSceneTimer=816}] run tp @s 738.0326 53.92841 60.91069 276.1134 13.6352
execute as @s[scores={cutSceneTimer=817}] run tp @s 738.0387 53.927 60.91209 276.1154 13.64327
execute as @s[scores={cutSceneTimer=818}] run tp @s 738.0447 53.92562 60.91345 276.1173 13.65122
execute as @s[scores={cutSceneTimer=819}] run tp @s 738.0506 53.92427 60.9148 276.1192 13.65909
execute as @s[scores={cutSceneTimer=820}] run tp @s 738.0565 53.92293 60.91614 276.1211 13.66699
execute as @s[scores={cutSceneTimer=821}] run tp @s 738.0622 53.92161 60.91746 276.1229 13.67482
execute as @s[scores={cutSceneTimer=822}] run tp @s 738.0678 53.92032 60.91874 276.1247 13.68251
execute as @s[scores={cutSceneTimer=823}] run tp @s 738.0732 53.91907 60.92 276.1265 13.69006
execute as @s[scores={cutSceneTimer=824}] run tp @s 738.0786 53.91784 60.92124 276.1282 13.69757
execute as @s[scores={cutSceneTimer=825}] run tp @s 738.0839 53.91663 60.92245 276.1299 13.70498
execute as @s[scores={cutSceneTimer=826}] run tp @s 738.089 53.91546 60.92363 276.1317 13.71226
execute as @s[scores={cutSceneTimer=827}] run tp @s 738.0941 53.91428 60.92482 276.1333 13.71963
execute as @s[scores={cutSceneTimer=828}] run tp @s 738.0991 53.91314 60.92598 276.135 13.72684
execute as @s[scores={cutSceneTimer=829}] run tp @s 738.1039 53.91203 60.9271 276.1365 13.7339
execute as @s[scores={cutSceneTimer=830}] run tp @s 738.1087 53.91094 60.92822 276.1382 13.74089
execute as @s[scores={cutSceneTimer=831}] run tp @s 738.1133 53.90989 60.92928 276.1397 13.74767
execute as @s[scores={cutSceneTimer=832}] run tp @s 738.1177 53.90887 60.93032 276.1411 13.75436
execute as @s[scores={cutSceneTimer=833}] run tp @s 738.1221 53.90788 60.93134 276.1426 13.76087
execute as @s[scores={cutSceneTimer=834}] run tp @s 738.1262 53.90691 60.93232 276.144 13.76727
execute as @s[scores={cutSceneTimer=835}] run tp @s 738.1304 53.90597 60.93329 276.1454 13.77356
execute as @s[scores={cutSceneTimer=836}] run tp @s 738.1343 53.90505 60.93423 276.1468 13.77974
execute as @s[scores={cutSceneTimer=837}] run tp @s 738.1382 53.90416 60.93515 276.1481 13.78575
execute as @s[scores={cutSceneTimer=838}] run tp @s 738.142 53.90329 60.93604 276.1494 13.7917
execute as @s[scores={cutSceneTimer=839}] run tp @s 738.1457 53.90245 60.93691 276.1506 13.79748
execute as @s[scores={cutSceneTimer=840}] run tp @s 738.1492 53.90164 60.93775 276.1519 13.80315
execute as @s[scores={cutSceneTimer=841}] run tp @s 738.1526 53.90085 60.93856 276.1531 13.80864
execute as @s[scores={cutSceneTimer=842}] run tp @s 738.1559 53.9001 60.93935 276.1542 13.81394
execute as @s[scores={cutSceneTimer=843}] run tp @s 738.1592 53.89936 60.94011 276.1553 13.81916
execute as @s[scores={cutSceneTimer=844}] run tp @s 738.1622 53.89867 60.94084 276.1564 13.82416
execute as @s[scores={cutSceneTimer=845}] run tp @s 738.1652 53.89799 60.94154 276.1574 13.829
execute as @s[scores={cutSceneTimer=846}] run tp @s 738.168 53.89735 60.94221 276.1584 13.83369
execute as @s[scores={cutSceneTimer=847}] run tp @s 738.1707 53.89672 60.94287 276.1594 13.83829
execute as @s[scores={cutSceneTimer=848}] run tp @s 738.1733 53.89613 60.9435 276.1603 13.84263
execute as @s[scores={cutSceneTimer=849}] run tp @s 738.1758 53.89555 60.9441 276.1612 13.84687
execute as @s[scores={cutSceneTimer=850}] run tp @s 738.1782 53.89501 60.94467 276.162 13.85091
execute as @s[scores={cutSceneTimer=851}] run tp @s 738.1804 53.8945 60.94521 276.1628 13.85476
execute as @s[scores={cutSceneTimer=852}] run tp @s 738.1818 53.89417 60.94555 276.1633 13.85723
execute as @s[scores={cutSceneTimer=853}] run tp @s 738.1839 53.8937 60.94606 276.1641 13.86083
execute as @s[scores={cutSceneTimer=854}] run tp @s 738.1858 53.89326 60.94652 276.1648 13.86419
execute as @s[scores={cutSceneTimer=855}] run tp @s 738.1876 53.89285 60.94696 276.1654 13.86736
execute as @s[scores={cutSceneTimer=856}] run tp @s 738.1893 53.89246 60.94736 276.166 13.87032
execute as @s[scores={cutSceneTimer=857}] run tp @s 738.1908 53.89211 60.94774 276.1666 13.87311
execute as @s[scores={cutSceneTimer=858}] run tp @s 738.1923 53.89178 60.94809 276.1671 13.87568
execute as @s[scores={cutSceneTimer=859}] run tp @s 738.1935 53.89148 60.94841 276.1676 13.87806
execute as @s[scores={cutSceneTimer=860}] run tp @s 738.1948 53.8912 60.94871 276.168 13.88022
execute as @s[scores={cutSceneTimer=840}] run function hp:cutscenes/fade_in


# ¤Sprout:¤ Welcome everyone! Добро пожаловать в  Greenhouse 1.
# ¤Стебель;¤ Здравствуйте! Добро пожаловать в  теплицу номер 1.
execute as @s[scores={cutSceneTimer=70},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=70..200}] run title @s actionbar ["",{"text":""},{"text":"Стебель;","color":"dark_gray"},{"text":" Добро пожаловать в  теплицу номер 1."}]
execute as @s[scores={cutSceneTimer=70},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=77},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=81},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=88},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=92},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=99},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=103},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=110},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Sprout:¤ Now gather around everyone, today we are going to learn how to handle mandrakes.
# ¤Sprout:¤ И так, подходите, сегодня мы научимся обращаться с Мандрагорами.
execute as @s[scores={cutSceneTimer=200},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=200..360}] run title @s actionbar ["",{"text":""},{"text":"Стебель;","color":"dark_gray"},{"text":" И так, подходите, сегодня мы научимся обращаться с Мандрагорами."}]
execute as @s[scores={cutSceneTimer=200},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=207},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=211},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=218},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=222},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=229},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=233},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=240},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Sprout:¤ The Mandrake, or mandragora is quite a dangerous plant!
# ¤Sprout:¤ Мандрагора, или Мандрагорум, очень опасное растение!
execute as @s[scores={cutSceneTimer=360},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=360..480}] run title @s actionbar ["",{"text":""},{"text":"Стебель;","color":"dark_gray"},{"text":" Мандрагора, или Мандрагорум, очень опасное растение!"}]
execute as @s[scores={cutSceneTimer=360},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=367},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=371},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=378},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=382},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=389},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=393},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=400},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Sprout:¤ Its cry is fatal to anyone who hears it,
# ¤Sprout :¤ Её плачь смертелен для любого, кто его услышит,
execute as @s[scores={cutSceneTimer=480},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=480..570}] run title @s actionbar ["",{"text":""},{"text":"Стебель;","color":"dark_gray"},{"text":" Её плачь смертелен для любого, кто его услышит,"}]
execute as @s[scores={cutSceneTimer=480},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=487},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=491},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=498},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=502},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=509},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=513},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=520},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Sprout:¤ which is why you should use ear-muffs for auditory protection!
# ¤Sprou t:¤ так что вы должны использовать наушники для защиты!
execute as @s[scores={cutSceneTimer=570},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=570..670}] run title @s actionbar ["",{"text":""},{"text":"Стебель;","color":"dark_gray"},{"text":" так что вы должны использовать наушники для защиты!"}]
execute as @s[scores={cutSceneTimer=570},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=577},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=581},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=588},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=592},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=599},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=603},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=610},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Sprout:¤ Our mandrakes are still only seedlings, so their cries probably won't kill you just yet,
# ¤Sprout:¤ Наши Мандрагоры ещё очень молоды, так что их крик, вероятно, не убьёт вас,
execute as @s[scores={cutSceneTimer=670},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=670..760}] run title @s actionbar ["",{"text":""},{"text":"Стебель;","color":"dark_gray"},{"text":" Наши Мандрагоры ещё очень молоды, так что их крик, вероятно, не убьёт вас,"}]
execute as @s[scores={cutSceneTimer=670},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=677},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=681},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=688},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=692},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=699},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=703},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=710},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Sprout:¤ but be careful, they could certainly knock you out for several hours.
# ¤Sprout:¤ но будьте осторожны, они могут оглушить вас на несколько часов.
execute as @s[scores={cutSceneTimer=760},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=760..860}] run title @s actionbar ["",{"text":""},{"text":"Стебель;","color":"dark_gray"},{"text":" но будьте осторожны, они могут оглушить вас на несколько часов."}]
execute as @s[scores={cutSceneTimer=760},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=767},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=771},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=778},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=782},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=789},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=793},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=800},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] run function hp:npc/update_npc_head_neutral

execute as @s[scores={cutSceneTimer=860}] run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=861}] 739.9329 53.56916 44.45006 271.23 16.23
tp @s[scores={cutSceneTimer=862}] 739.9357 53.56832 44.45012 271.23 16.23
tp @s[scores={cutSceneTimer=863}] 739.9386 53.56748 44.45018 271.23 16.23
tp @s[scores={cutSceneTimer=864}] 739.9415 53.56664 44.45024 271.23 16.23
tp @s[scores={cutSceneTimer=865}] 739.9443 53.5658 44.45031 271.23 16.23
tp @s[scores={cutSceneTimer=866}] 739.9472 53.56496 44.45037 271.23 16.23
tp @s[scores={cutSceneTimer=867}] 739.9501 53.56413 44.45043 271.23 16.23
tp @s[scores={cutSceneTimer=868}] 739.9529 53.56329 44.45049 271.23 16.23
tp @s[scores={cutSceneTimer=869}] 739.9558 53.56245 44.45055 271.23 16.23
tp @s[scores={cutSceneTimer=870}] 739.9587 53.56161 44.45061 271.23 16.23
tp @s[scores={cutSceneTimer=871}] 739.9615 53.56077 44.45067 271.23 16.23
tp @s[scores={cutSceneTimer=872}] 739.9644 53.55993 44.45073 271.23 16.23
tp @s[scores={cutSceneTimer=873}] 739.9673 53.55909 44.45079 271.23 16.23
tp @s[scores={cutSceneTimer=874}] 739.9702 53.55825 44.45086 271.23 16.23
tp @s[scores={cutSceneTimer=875}] 739.973 53.55741 44.45092 271.23 16.23
tp @s[scores={cutSceneTimer=876}] 739.9759 53.55657 44.45098 271.23 16.23
tp @s[scores={cutSceneTimer=877}] 739.9788 53.55573 44.45104 271.23 16.23
tp @s[scores={cutSceneTimer=878}] 739.9816 53.55489 44.4511 271.23 16.23
tp @s[scores={cutSceneTimer=879}] 739.9845 53.55405 44.45116 271.23 16.23
tp @s[scores={cutSceneTimer=880}] 739.9874 53.55322 44.45122 271.23 16.23
tp @s[scores={cutSceneTimer=881}] 739.9902 53.55238 44.45128 271.23 16.23
tp @s[scores={cutSceneTimer=882}] 739.9931 53.55154 44.45134 271.23 16.23
tp @s[scores={cutSceneTimer=883}] 739.996 53.5507 44.4514 271.23 16.23
tp @s[scores={cutSceneTimer=884}] 739.9988 53.54986 44.45147 271.23 16.23
tp @s[scores={cutSceneTimer=885}] 740.0017 53.54902 44.45153 271.23 16.23
tp @s[scores={cutSceneTimer=886}] 740.0046 53.54818 44.45159 271.23 16.23
tp @s[scores={cutSceneTimer=887}] 740.0074 53.54734 44.45165 271.23 16.23
tp @s[scores={cutSceneTimer=888}] 740.0103 53.5465 44.45171 271.23 16.23
tp @s[scores={cutSceneTimer=889}] 740.0132 53.54566 44.45177 271.23 16.23
tp @s[scores={cutSceneTimer=890}] 740.0161 53.54482 44.45183 271.23 16.23
tp @s[scores={cutSceneTimer=891}] 740.0189 53.54398 44.45189 271.23 16.23
tp @s[scores={cutSceneTimer=892}] 740.0218 53.54314 44.45195 271.23 16.23
tp @s[scores={cutSceneTimer=893}] 740.0247 53.5423 44.45201 271.23 16.23
tp @s[scores={cutSceneTimer=894}] 740.0275 53.54147 44.45208 271.23 16.23
tp @s[scores={cutSceneTimer=895}] 740.0304 53.54063 44.45214 271.23 16.23
tp @s[scores={cutSceneTimer=896}] 740.0333 53.53979 44.4522 271.23 16.23
tp @s[scores={cutSceneTimer=897}] 740.0361 53.53895 44.45226 271.23 16.23
tp @s[scores={cutSceneTimer=898}] 740.039 53.53811 44.45232 271.23 16.23
tp @s[scores={cutSceneTimer=899}] 740.0419 53.53727 44.45238 271.23 16.23
tp @s[scores={cutSceneTimer=900}] 740.0447 53.53643 44.45244 271.23 16.23
tp @s[scores={cutSceneTimer=901}] 740.0476 53.53559 44.4525 271.23 16.23
tp @s[scores={cutSceneTimer=902}] 740.0505 53.53475 44.45256 271.23 16.23
tp @s[scores={cutSceneTimer=903}] 740.0533 53.53391 44.45263 271.23 16.23
tp @s[scores={cutSceneTimer=904}] 740.0562 53.53307 44.45269 271.23 16.23
tp @s[scores={cutSceneTimer=905}] 740.0591 53.53223 44.45275 271.23 16.23
tp @s[scores={cutSceneTimer=906}] 740.062 53.53139 44.45281 271.23 16.23
tp @s[scores={cutSceneTimer=907}] 740.0648 53.53056 44.45287 271.23 16.23
tp @s[scores={cutSceneTimer=908}] 740.0677 53.52972 44.45293 271.23 16.23
tp @s[scores={cutSceneTimer=909}] 740.0706 53.52888 44.45299 271.23 16.23
tp @s[scores={cutSceneTimer=910}] 740.0734 53.52804 44.45305 271.23 16.23
tp @s[scores={cutSceneTimer=911}] 740.0763 53.5272 44.45311 271.23 16.23
tp @s[scores={cutSceneTimer=912}] 740.0792 53.52636 44.45317 271.23 16.23
tp @s[scores={cutSceneTimer=913}] 740.082 53.52552 44.45324 271.23 16.23
tp @s[scores={cutSceneTimer=914}] 740.0849 53.52468 44.4533 271.23 16.23
tp @s[scores={cutSceneTimer=915}] 740.0878 53.52384 44.45336 271.23 16.23
tp @s[scores={cutSceneTimer=916}] 740.0906 53.523 44.45342 271.23 16.23
tp @s[scores={cutSceneTimer=917}] 740.0935 53.52216 44.45348 271.23 16.23
tp @s[scores={cutSceneTimer=918}] 740.0964 53.52132 44.45354 271.23 16.23
tp @s[scores={cutSceneTimer=919}] 740.0992 53.52048 44.4536 271.23 16.23
tp @s[scores={cutSceneTimer=920}] 740.1021 53.51965 44.45366 271.23 16.23
tp @s[scores={cutSceneTimer=921}] 740.105 53.51881 44.45372 271.23 16.23
tp @s[scores={cutSceneTimer=922}] 740.1078 53.51797 44.45378 271.23 16.23
tp @s[scores={cutSceneTimer=923}] 740.1107 53.51713 44.45385 271.23 16.23
tp @s[scores={cutSceneTimer=924}] 740.1136 53.51629 44.45391 271.23 16.23
tp @s[scores={cutSceneTimer=925}] 740.1165 53.51545 44.45397 271.23 16.23
tp @s[scores={cutSceneTimer=926}] 740.1193 53.51461 44.45403 271.23 16.23
tp @s[scores={cutSceneTimer=927}] 740.1222 53.51377 44.45409 271.23 16.23
tp @s[scores={cutSceneTimer=928}] 740.1251 53.51293 44.45415 271.23 16.23
tp @s[scores={cutSceneTimer=929}] 740.1279 53.51209 44.45421 271.23 16.23
tp @s[scores={cutSceneTimer=930}] 740.1308 53.51125 44.45427 271.23 16.23
tp @s[scores={cutSceneTimer=931}] 740.1337 53.51041 44.45433 271.23 16.23
tp @s[scores={cutSceneTimer=932}] 740.1365 53.50957 44.4544 271.23 16.23
tp @s[scores={cutSceneTimer=933}] 740.1394 53.50874 44.45446 271.23 16.23
tp @s[scores={cutSceneTimer=934}] 740.1423 53.5079 44.45452 271.23 16.23
tp @s[scores={cutSceneTimer=935}] 740.1451 53.50706 44.45458 271.23 16.23
tp @s[scores={cutSceneTimer=936}] 740.148 53.50622 44.45464 271.23 16.23
tp @s[scores={cutSceneTimer=937}] 740.1509 53.50538 44.4547 271.23 16.23
tp @s[scores={cutSceneTimer=938}] 740.1537 53.50454 44.45476 271.23 16.23
tp @s[scores={cutSceneTimer=939}] 740.1566 53.5037 44.45482 271.23 16.23
tp @s[scores={cutSceneTimer=940}] 740.1595 53.50286 44.45488 271.23 16.23
tp @s[scores={cutSceneTimer=941}] 740.1624 53.50202 44.45494 271.23 16.23
tp @s[scores={cutSceneTimer=942}] 740.1652 53.50118 44.45501 271.23 16.23
tp @s[scores={cutSceneTimer=943}] 740.1681 53.50034 44.45507 271.23 16.23
tp @s[scores={cutSceneTimer=944}] 740.171 53.4995 44.45513 271.23 16.23
tp @s[scores={cutSceneTimer=945}] 740.1738 53.49866 44.45519 271.23 16.23
tp @s[scores={cutSceneTimer=946}] 740.1767 53.49783 44.45525 271.23 16.23
tp @s[scores={cutSceneTimer=947}] 740.1796 53.49699 44.45531 271.23 16.23
tp @s[scores={cutSceneTimer=948}] 740.1824 53.49615 44.45537 271.23 16.23
tp @s[scores={cutSceneTimer=949}] 740.1853 53.49531 44.45543 271.23 16.23
tp @s[scores={cutSceneTimer=950}] 740.1882 53.49447 44.45549 271.23 16.23
tp @s[scores={cutSceneTimer=951}] 740.191 53.49363 44.45555 271.23 16.23
tp @s[scores={cutSceneTimer=952}] 740.1939 53.49279 44.45562 271.23 16.23
tp @s[scores={cutSceneTimer=953}] 740.1968 53.49195 44.45568 271.23 16.23
tp @s[scores={cutSceneTimer=954}] 740.1996 53.49111 44.45574 271.23 16.23
tp @s[scores={cutSceneTimer=955}] 740.2025 53.49027 44.4558 271.23 16.23
tp @s[scores={cutSceneTimer=956}] 740.2054 53.48943 44.45586 271.23 16.23
tp @s[scores={cutSceneTimer=957}] 740.2083 53.48859 44.45592 271.23 16.23
tp @s[scores={cutSceneTimer=958}] 740.2111 53.48775 44.45598 271.23 16.23
tp @s[scores={cutSceneTimer=959}] 740.214 53.48692 44.45604 271.23 16.23
tp @s[scores={cutSceneTimer=960}] 740.2169 53.48608 44.4561 271.23 16.23
tp @s[scores={cutSceneTimer=961}] 740.2197 53.48524 44.45617 271.23 16.23
tp @s[scores={cutSceneTimer=962}] 740.2226 53.4844 44.45623 271.23 16.23
tp @s[scores={cutSceneTimer=963}] 740.2255 53.48356 44.45629 271.23 16.23
tp @s[scores={cutSceneTimer=964}] 740.2283 53.48272 44.45635 271.23 16.23
tp @s[scores={cutSceneTimer=965}] 740.2312 53.48188 44.45641 271.23 16.23
tp @s[scores={cutSceneTimer=966}] 740.2341 53.48104 44.45647 271.23 16.23
tp @s[scores={cutSceneTimer=967}] 740.2369 53.4802 44.45653 271.23 16.23
tp @s[scores={cutSceneTimer=968}] 740.2398 53.47936 44.45659 271.23 16.23
tp @s[scores={cutSceneTimer=969}] 740.2427 53.47852 44.45665 271.23 16.23
tp @s[scores={cutSceneTimer=970}] 740.2455 53.47768 44.45671 271.23 16.23
tp @s[scores={cutSceneTimer=971}] 740.2484 53.47684 44.45678 271.23 16.23
tp @s[scores={cutSceneTimer=972}] 740.2513 53.47601 44.45684 271.23 16.23
tp @s[scores={cutSceneTimer=973}] 740.2542 53.47517 44.4569 271.23 16.23
tp @s[scores={cutSceneTimer=974}] 740.257 53.47433 44.45696 271.23 16.23
tp @s[scores={cutSceneTimer=975}] 740.2599 53.47349 44.45702 271.23 16.23
tp @s[scores={cutSceneTimer=976}] 740.2628 53.47265 44.45708 271.23 16.23
tp @s[scores={cutSceneTimer=977}] 740.2656 53.47181 44.45714 271.23 16.23
tp @s[scores={cutSceneTimer=978}] 740.2685 53.47097 44.4572 271.23 16.23
tp @s[scores={cutSceneTimer=979}] 740.2714 53.47013 44.45726 271.23 16.23
tp @s[scores={cutSceneTimer=980}] 740.2742 53.46929 44.45732 271.23 16.23
tp @s[scores={cutSceneTimer=981}] 740.2771 53.46845 44.45739 271.23 16.23
tp @s[scores={cutSceneTimer=982}] 740.28 53.46761 44.45745 271.23 16.23
tp @s[scores={cutSceneTimer=983}] 740.2828 53.46677 44.45751 271.23 16.23
tp @s[scores={cutSceneTimer=984}] 740.2857 53.46593 44.45757 271.23 16.23
tp @s[scores={cutSceneTimer=985}] 740.2886 53.4651 44.45763 271.23 16.23
tp @s[scores={cutSceneTimer=986}] 740.2914 53.46426 44.45769 271.23 16.23
tp @s[scores={cutSceneTimer=987}] 740.2943 53.46342 44.45775 271.23 16.23
tp @s[scores={cutSceneTimer=988}] 740.2972 53.46258 44.45781 271.23 16.23
tp @s[scores={cutSceneTimer=989}] 740.3 53.46174 44.45787 271.23 16.23
tp @s[scores={cutSceneTimer=990}] 740.3029 53.4609 44.45794 271.23 16.23
tp @s[scores={cutSceneTimer=991}] 740.3058 53.46006 44.458 271.23 16.23
tp @s[scores={cutSceneTimer=992}] 740.3087 53.45922 44.45806 271.23 16.23
tp @s[scores={cutSceneTimer=993}] 740.3115 53.45838 44.45812 271.23 16.23
tp @s[scores={cutSceneTimer=994}] 740.3144 53.45754 44.45818 271.23 16.23
tp @s[scores={cutSceneTimer=995}] 740.3173 53.4567 44.45824 271.23 16.23
tp @s[scores={cutSceneTimer=996}] 740.3201 53.45586 44.4583 271.23 16.23
tp @s[scores={cutSceneTimer=997}] 740.323 53.45502 44.45836 271.23 16.23
tp @s[scores={cutSceneTimer=998}] 740.3259 53.45419 44.45842 271.23 16.23
tp @s[scores={cutSceneTimer=999}] 740.3287 53.45335 44.45848 271.23 16.23
tp @s[scores={cutSceneTimer=1000}] 740.3316 53.45251 44.45855 271.23 16.23
tp @s[scores={cutSceneTimer=1001}] 740.3345 53.45167 44.45861 271.23 16.23
tp @s[scores={cutSceneTimer=1002}] 740.3373 53.45083 44.45867 271.23 16.23
tp @s[scores={cutSceneTimer=1003}] 740.3402 53.44999 44.45873 271.23 16.23
tp @s[scores={cutSceneTimer=1004}] 740.3431 53.44915 44.45879 271.23 16.23
tp @s[scores={cutSceneTimer=1005}] 740.3459 53.44831 44.45885 271.23 16.23
tp @s[scores={cutSceneTimer=1006}] 740.3488 53.44747 44.45891 271.23 16.23
tp @s[scores={cutSceneTimer=1007}] 740.3517 53.44663 44.45897 271.23 16.23
tp @s[scores={cutSceneTimer=1008}] 740.3546 53.44579 44.45903 271.23 16.23
tp @s[scores={cutSceneTimer=1009}] 740.3574 53.44495 44.4591 271.23 16.23
tp @s[scores={cutSceneTimer=1010}] 740.3603 53.44411 44.45916 271.23 16.23
tp @s[scores={cutSceneTimer=1011}] 740.3632 53.44328 44.45922 271.23 16.23
tp @s[scores={cutSceneTimer=1012}] 740.366 53.44244 44.45928 271.23 16.23
tp @s[scores={cutSceneTimer=1013}] 740.3689 53.4416 44.45934 271.23 16.23
tp @s[scores={cutSceneTimer=1014}] 740.3718 53.44076 44.4594 271.23 16.23
tp @s[scores={cutSceneTimer=1015}] 740.3746 53.43992 44.45946 271.23 16.23
tp @s[scores={cutSceneTimer=1016}] 740.3775 53.43908 44.45952 271.23 16.23
tp @s[scores={cutSceneTimer=1017}] 740.3804 53.43824 44.45958 271.23 16.23
tp @s[scores={cutSceneTimer=1018}] 740.3832 53.4374 44.45964 271.23 16.23
tp @s[scores={cutSceneTimer=1019}] 740.3861 53.43656 44.45971 271.23 16.23
tp @s[scores={cutSceneTimer=1020}] 740.389 53.43572 44.45977 271.23 16.23
tp @s[scores={cutSceneTimer=1021}] 740.3918 53.43488 44.45983 271.23 16.23
tp @s[scores={cutSceneTimer=1022}] 740.3947 53.43404 44.45989 271.23 16.23
tp @s[scores={cutSceneTimer=1023}] 740.3976 53.4332 44.45995 271.23 16.23
tp @s[scores={cutSceneTimer=1024}] 740.4005 53.43237 44.46001 271.23 16.23
tp @s[scores={cutSceneTimer=1025}] 740.4033 53.43153 44.46007 271.23 16.23
tp @s[scores={cutSceneTimer=1026}] 740.4062 53.43069 44.46013 271.23 16.23
tp @s[scores={cutSceneTimer=1027}] 740.4091 53.42985 44.46019 271.23 16.23
tp @s[scores={cutSceneTimer=1028}] 740.4119 53.42901 44.46025 271.23 16.23
tp @s[scores={cutSceneTimer=1029}] 740.4148 53.42817 44.46032 271.23 16.23
tp @s[scores={cutSceneTimer=1030}] 740.4177 53.42733 44.46038 271.23 16.23
tp @s[scores={cutSceneTimer=1031}] 740.4205 53.42649 44.46044 271.23 16.23
tp @s[scores={cutSceneTimer=1032}] 740.4234 53.42565 44.4605 271.23 16.23
tp @s[scores={cutSceneTimer=1033}] 740.4263 53.42481 44.46056 271.23 16.23
tp @s[scores={cutSceneTimer=1034}] 740.4291 53.42397 44.46062 271.23 16.23
tp @s[scores={cutSceneTimer=1035}] 740.432 53.42313 44.46068 271.23 16.23
tp @s[scores={cutSceneTimer=1036}] 740.4349 53.42229 44.46074 271.23 16.23
tp @s[scores={cutSceneTimer=1037}] 740.4377 53.42146 44.4608 271.23 16.23
tp @s[scores={cutSceneTimer=1038}] 740.4406 53.42062 44.46087 271.23 16.23
tp @s[scores={cutSceneTimer=1039}] 740.4435 53.41978 44.46093 271.23 16.23
tp @s[scores={cutSceneTimer=1040}] 740.4464 53.41894 44.46099 271.23 16.23
tp @s[scores={cutSceneTimer=1041}] 740.4492 53.4181 44.46105 271.23 16.23
tp @s[scores={cutSceneTimer=1042}] 740.4521 53.41726 44.46111 271.23 16.23
tp @s[scores={cutSceneTimer=1043}] 740.455 53.41642 44.46117 271.23 16.23
tp @s[scores={cutSceneTimer=1044}] 740.4578 53.41558 44.46123 271.23 16.23
tp @s[scores={cutSceneTimer=1045}] 740.4607 53.41474 44.46129 271.23 16.23
tp @s[scores={cutSceneTimer=1046}] 740.4636 53.4139 44.46135 271.23 16.23
tp @s[scores={cutSceneTimer=1047}] 740.4664 53.41306 44.46141 271.23 16.23
tp @s[scores={cutSceneTimer=1048}] 740.4693 53.41222 44.46148 271.23 16.23
tp @s[scores={cutSceneTimer=1049}] 740.4722 53.41138 44.46154 271.23 16.23
tp @s[scores={cutSceneTimer=1050}] 740.475 53.41055 44.4616 271.23 16.23
tp @s[scores={cutSceneTimer=1051}] 740.4779 53.40971 44.46166 271.23 16.23
tp @s[scores={cutSceneTimer=1052}] 740.4808 53.40887 44.46172 271.23 16.23
tp @s[scores={cutSceneTimer=1053}] 740.4836 53.40803 44.46178 271.23 16.23
tp @s[scores={cutSceneTimer=1054}] 740.4865 53.40719 44.46184 271.23 16.23
tp @s[scores={cutSceneTimer=1055}] 740.4894 53.40635 44.4619 271.23 16.23
tp @s[scores={cutSceneTimer=1056}] 740.4922 53.40551 44.46196 271.23 16.23
tp @s[scores={cutSceneTimer=1057}] 740.4951 53.40467 44.46202 271.23 16.23
tp @s[scores={cutSceneTimer=1058}] 740.498 53.40383 44.46209 271.23 16.23
tp @s[scores={cutSceneTimer=1059}] 740.5009 53.40299 44.46215 271.23 16.23
tp @s[scores={cutSceneTimer=1060}] 740.5037 53.40215 44.46221 271.23 16.23
tp @s[scores={cutSceneTimer=1061}] 740.5066 53.40131 44.46227 271.23 16.23
tp @s[scores={cutSceneTimer=1062}] 740.5095 53.40047 44.46233 271.23 16.23
tp @s[scores={cutSceneTimer=1063}] 740.5123 53.39964 44.46239 271.23 16.23
tp @s[scores={cutSceneTimer=1064}] 740.5152 53.3988 44.46245 271.23 16.23
tp @s[scores={cutSceneTimer=1065}] 740.5181 53.39796 44.46251 271.23 16.23
tp @s[scores={cutSceneTimer=1066}] 740.5209 53.39712 44.46257 271.23 16.23
tp @s[scores={cutSceneTimer=1067}] 740.5238 53.39628 44.46264 271.23 16.23
tp @s[scores={cutSceneTimer=1068}] 740.5267 53.39544 44.4627 271.23 16.23
tp @s[scores={cutSceneTimer=1069}] 740.5295 53.3946 44.46276 271.23 16.23
tp @s[scores={cutSceneTimer=1070}] 740.5324 53.39376 44.46282 271.23 16.23
tp @s[scores={cutSceneTimer=1071}] 740.5353 53.39292 44.46288 271.23 16.23
tp @s[scores={cutSceneTimer=1072}] 740.5381 53.39208 44.46294 271.23 16.23
tp @s[scores={cutSceneTimer=1073}] 740.541 53.39124 44.463 271.23 16.23
tp @s[scores={cutSceneTimer=1074}] 740.5439 53.3904 44.46306 271.23 16.23
tp @s[scores={cutSceneTimer=1075}] 740.5468 53.38956 44.46312 271.23 16.23
tp @s[scores={cutSceneTimer=1076}] 740.5496 53.38873 44.46318 271.23 16.23
tp @s[scores={cutSceneTimer=1077}] 740.5525 53.38789 44.46325 271.23 16.23
tp @s[scores={cutSceneTimer=1078}] 740.5554 53.38705 44.46331 271.23 16.23
tp @s[scores={cutSceneTimer=1079}] 740.5582 53.38621 44.46337 271.23 16.23
tp @s[scores={cutSceneTimer=1080}] 740.5611 53.38537 44.46343 271.23 16.23
tp @s[scores={cutSceneTimer=1081}] 740.564 53.38453 44.46349 271.23 16.23
tp @s[scores={cutSceneTimer=1082}] 740.5668 53.38369 44.46355 271.23 16.23
tp @s[scores={cutSceneTimer=1083}] 740.5697 53.38285 44.46361 271.23 16.23
tp @s[scores={cutSceneTimer=1084}] 740.5726 53.38201 44.46367 271.23 16.23
tp @s[scores={cutSceneTimer=1085}] 740.5754 53.38117 44.46373 271.23 16.23
tp @s[scores={cutSceneTimer=1086}] 740.5783 53.38033 44.46379 271.23 16.23
tp @s[scores={cutSceneTimer=1087}] 740.5812 53.37949 44.46386 271.23 16.23
tp @s[scores={cutSceneTimer=1088}] 740.584 53.37865 44.46392 271.23 16.23
tp @s[scores={cutSceneTimer=1089}] 740.5869 53.37782 44.46398 271.23 16.23
tp @s[scores={cutSceneTimer=1090}] 740.5898 53.37698 44.46404 271.23 16.23
tp @s[scores={cutSceneTimer=1091}] 740.5927 53.37614 44.4641 271.23 16.23
tp @s[scores={cutSceneTimer=1092}] 740.5955 53.3753 44.46416 271.23 16.23
tp @s[scores={cutSceneTimer=1093}] 740.5984 53.37446 44.46422 271.23 16.23
tp @s[scores={cutSceneTimer=1094}] 740.6013 53.37362 44.46428 271.23 16.23
tp @s[scores={cutSceneTimer=1095}] 740.6041 53.37278 44.46434 271.23 16.23
tp @s[scores={cutSceneTimer=1096}] 740.607 53.37194 44.46441 271.23 16.23
tp @s[scores={cutSceneTimer=1097}] 740.6099 53.3711 44.46447 271.23 16.23
tp @s[scores={cutSceneTimer=1098}] 740.6127 53.37026 44.46453 271.23 16.23
tp @s[scores={cutSceneTimer=1099}] 740.6156 53.36942 44.46459 271.23 16.23
tp @s[scores={cutSceneTimer=1100}] 740.6185 53.36858 44.46465 271.23 16.23
tp @s[scores={cutSceneTimer=1101}] 740.6213 53.36774 44.46471 271.23 16.23
tp @s[scores={cutSceneTimer=1102}] 740.6242 53.36691 44.46477 271.23 16.23
tp @s[scores={cutSceneTimer=1103}] 740.6271 53.36607 44.46483 271.23 16.23
tp @s[scores={cutSceneTimer=1104}] 740.6299 53.36523 44.46489 271.23 16.23
tp @s[scores={cutSceneTimer=1105}] 740.6328 53.36439 44.46495 271.23 16.23
tp @s[scores={cutSceneTimer=1106}] 740.6357 53.36355 44.46502 271.23 16.23
tp @s[scores={cutSceneTimer=1107}] 740.6385 53.36271 44.46508 271.23 16.23
tp @s[scores={cutSceneTimer=1108}] 740.6414 53.36187 44.46514 271.23 16.23
tp @s[scores={cutSceneTimer=1109}] 740.6443 53.36103 44.4652 271.23 16.23
tp @s[scores={cutSceneTimer=1110}] 740.6472 53.36019 44.46526 271.23 16.23
tp @s[scores={cutSceneTimer=1111}] 740.65 53.35935 44.46532 271.23 16.23
tp @s[scores={cutSceneTimer=1112}] 740.6529 53.35851 44.46538 271.23 16.23
tp @s[scores={cutSceneTimer=1113}] 740.6558 53.35767 44.46544 271.23 16.23
tp @s[scores={cutSceneTimer=1114}] 740.6586 53.35683 44.4655 271.23 16.23
tp @s[scores={cutSceneTimer=1115}] 740.6615 53.356 44.46556 271.23 16.23
tp @s[scores={cutSceneTimer=1116}] 740.6644 53.35516 44.46563 271.23 16.23
tp @s[scores={cutSceneTimer=1117}] 740.6672 53.35432 44.46569 271.23 16.23
tp @s[scores={cutSceneTimer=1118}] 740.6701 53.35348 44.46575 271.23 16.23
tp @s[scores={cutSceneTimer=1119}] 740.673 53.35264 44.46581 271.23 16.23
tp @s[scores={cutSceneTimer=1120}] 740.6758 53.3518 44.46587 271.23 16.23
tp @s[scores={cutSceneTimer=1121}] 740.6787 53.35096 44.46593 271.23 16.23
tp @s[scores={cutSceneTimer=1122}] 740.6816 53.35012 44.46599 271.23 16.23
tp @s[scores={cutSceneTimer=1123}] 740.6844 53.34928 44.46605 271.23 16.23
tp @s[scores={cutSceneTimer=1124}] 740.6873 53.34844 44.46611 271.23 16.23
tp @s[scores={cutSceneTimer=1125}] 740.6902 53.3476 44.46618 271.23 16.23
tp @s[scores={cutSceneTimer=1126}] 740.6931 53.34676 44.46624 271.23 16.23
tp @s[scores={cutSceneTimer=1127}] 740.6959 53.34592 44.4663 271.23 16.23
tp @s[scores={cutSceneTimer=1128}] 740.6988 53.34509 44.46636 271.23 16.23
tp @s[scores={cutSceneTimer=1129}] 740.7017 53.34425 44.46642 271.23 16.23
tp @s[scores={cutSceneTimer=1130}] 740.7045 53.34341 44.46648 271.23 16.23
tp @s[scores={cutSceneTimer=1131}] 740.7074 53.34257 44.46654 271.23 16.23
tp @s[scores={cutSceneTimer=1132}] 740.7103 53.34173 44.4666 271.23 16.23
tp @s[scores={cutSceneTimer=1133}] 740.7131 53.34089 44.46666 271.23 16.23
tp @s[scores={cutSceneTimer=1134}] 740.716 53.34005 44.46672 271.23 16.23
tp @s[scores={cutSceneTimer=1135}] 740.7189 53.33921 44.46679 271.23 16.23
tp @s[scores={cutSceneTimer=1136}] 740.7217 53.33837 44.46685 271.23 16.23
tp @s[scores={cutSceneTimer=1137}] 740.7246 53.33753 44.46691 271.23 16.23
tp @s[scores={cutSceneTimer=1138}] 740.7275 53.33669 44.46697 271.23 16.23
tp @s[scores={cutSceneTimer=1139}] 740.7303 53.33585 44.46703 271.23 16.23
tp @s[scores={cutSceneTimer=1140}] 740.7332 53.33501 44.46709 271.23 16.23
tp @s[scores={cutSceneTimer=1141}] 740.7361 53.33418 44.46715 271.23 16.23
tp @s[scores={cutSceneTimer=1142}] 740.739 53.33334 44.46721 271.23 16.23
tp @s[scores={cutSceneTimer=1143}] 740.7418 53.3325 44.46727 271.23 16.23
tp @s[scores={cutSceneTimer=1144}] 740.7447 53.33166 44.46733 271.23 16.23
tp @s[scores={cutSceneTimer=1145}] 740.7476 53.33082 44.4674 271.23 16.23
tp @s[scores={cutSceneTimer=1146}] 740.7504 53.32998 44.46746 271.23 16.23
tp @s[scores={cutSceneTimer=1147}] 740.7533 53.32914 44.46752 271.23 16.23
tp @s[scores={cutSceneTimer=1148}] 740.7562 53.3283 44.46758 271.23 16.23
tp @s[scores={cutSceneTimer=1149}] 740.759 53.32746 44.46764 271.23 16.23
tp @s[scores={cutSceneTimer=1150}] 740.7619 53.32662 44.4677 271.23 16.23
tp @s[scores={cutSceneTimer=1151}] 740.7648 53.32578 44.46776 271.23 16.23
tp @s[scores={cutSceneTimer=1152}] 740.7676 53.32494 44.46782 271.23 16.23
tp @s[scores={cutSceneTimer=1153}] 740.7705 53.3241 44.46788 271.23 16.23
tp @s[scores={cutSceneTimer=1154}] 740.7734 53.32327 44.46795 271.23 16.23
tp @s[scores={cutSceneTimer=1155}] 740.7762 53.32243 44.46801 271.23 16.23
tp @s[scores={cutSceneTimer=1156}] 740.7791 53.32159 44.46807 271.23 16.23
tp @s[scores={cutSceneTimer=1157}] 740.782 53.32075 44.46813 271.23 16.23
tp @s[scores={cutSceneTimer=1158}] 740.7849 53.31991 44.46819 271.23 16.23
tp @s[scores={cutSceneTimer=1159}] 740.7877 53.31907 44.46825 271.23 16.23
tp @s[scores={cutSceneTimer=1160}] 740.7906 53.31823 44.46831 271.23 16.23
tp @s[scores={cutSceneTimer=1161}] 740.7935 53.31739 44.46837 271.23 16.23
tp @s[scores={cutSceneTimer=1162}] 740.7963 53.31655 44.46843 271.23 16.23
tp @s[scores={cutSceneTimer=1163}] 740.7992 53.31571 44.46849 271.23 16.23
tp @s[scores={cutSceneTimer=1164}] 740.8021 53.31487 44.46856 271.23 16.23
tp @s[scores={cutSceneTimer=1165}] 740.8049 53.31403 44.46862 271.23 16.23
tp @s[scores={cutSceneTimer=1166}] 740.8078 53.31319 44.46868 271.23 16.23
tp @s[scores={cutSceneTimer=1167}] 740.8107 53.31236 44.46874 271.23 16.23
tp @s[scores={cutSceneTimer=1168}] 740.8135 53.31152 44.4688 271.23 16.23
tp @s[scores={cutSceneTimer=1169}] 740.8164 53.31068 44.46886 271.23 16.23
tp @s[scores={cutSceneTimer=1170}] 740.8193 53.30984 44.46892 271.23 16.23
tp @s[scores={cutSceneTimer=1171}] 740.8221 53.309 44.46898 271.23 16.23
tp @s[scores={cutSceneTimer=1172}] 740.825 53.30816 44.46904 271.23 16.23
tp @s[scores={cutSceneTimer=1173}] 740.8279 53.30732 44.4691 271.23 16.23
tp @s[scores={cutSceneTimer=1174}] 740.8307 53.30648 44.46917 271.23 16.23
tp @s[scores={cutSceneTimer=1175}] 740.8336 53.30564 44.46923 271.23 16.23
tp @s[scores={cutSceneTimer=1176}] 740.8365 53.3048 44.46929 271.23 16.23
tp @s[scores={cutSceneTimer=1177}] 740.8394 53.30396 44.46935 271.23 16.23
tp @s[scores={cutSceneTimer=1178}] 740.8422 53.30312 44.46941 271.23 16.23
tp @s[scores={cutSceneTimer=1179}] 740.8451 53.30228 44.46947 271.23 16.23
tp @s[scores={cutSceneTimer=1180}] 740.848 53.30145 44.46953 271.23 16.23
tp @s[scores={cutSceneTimer=1181}] 740.8508 53.30061 44.46959 271.23 16.23
tp @s[scores={cutSceneTimer=1182}] 740.8537 53.29977 44.46965 271.23 16.23
tp @s[scores={cutSceneTimer=1183}] 740.8566 53.29893 44.46972 271.23 16.23
tp @s[scores={cutSceneTimer=1184}] 740.8594 53.29809 44.46978 271.23 16.23
tp @s[scores={cutSceneTimer=1185}] 740.8623 53.29725 44.46984 271.23 16.23
tp @s[scores={cutSceneTimer=1186}] 740.8652 53.29641 44.4699 271.23 16.23
tp @s[scores={cutSceneTimer=1187}] 740.868 53.29557 44.46996 271.23 16.23
tp @s[scores={cutSceneTimer=1188}] 740.8709 53.29473 44.47002 271.23 16.23
tp @s[scores={cutSceneTimer=1189}] 740.8738 53.29389 44.47008 271.23 16.23
tp @s[scores={cutSceneTimer=1190}] 740.8766 53.29305 44.47014 271.23 16.23
tp @s[scores={cutSceneTimer=1191}] 740.8795 53.29221 44.4702 271.23 16.23
tp @s[scores={cutSceneTimer=1192}] 740.8824 53.29137 44.47026 271.23 16.23
tp @s[scores={cutSceneTimer=1193}] 740.8853 53.29053 44.47033 271.23 16.23
tp @s[scores={cutSceneTimer=1194}] 740.8881 53.2897 44.47039 271.23 16.23
tp @s[scores={cutSceneTimer=1195}] 740.891 53.28886 44.47045 271.23 16.23
tp @s[scores={cutSceneTimer=1196}] 740.8939 53.28802 44.47051 271.23 16.23
tp @s[scores={cutSceneTimer=1197}] 740.8967 53.28718 44.47057 271.23 16.23
tp @s[scores={cutSceneTimer=1198}] 740.8996 53.28634 44.47063 271.23 16.23
tp @s[scores={cutSceneTimer=1199}] 740.9025 53.2855 44.47069 271.23 16.23
tp @s[scores={cutSceneTimer=1200}] 740.9053 53.28466 44.47075 271.23 16.23
tp @s[scores={cutSceneTimer=1201}] 740.9082 53.28382 44.47081 271.23 16.23
tp @s[scores={cutSceneTimer=1202}] 740.9111 53.28298 44.47087 271.23 16.23
tp @s[scores={cutSceneTimer=1203}] 740.9139 53.28214 44.47094 271.23 16.23
tp @s[scores={cutSceneTimer=1204}] 740.9168 53.2813 44.471 271.23 16.23
tp @s[scores={cutSceneTimer=1205}] 740.9197 53.28046 44.47106 271.23 16.23
tp @s[scores={cutSceneTimer=1206}] 740.9225 53.27962 44.47112 271.23 16.23
tp @s[scores={cutSceneTimer=1207}] 740.9254 53.27879 44.47118 271.23 16.23
tp @s[scores={cutSceneTimer=1208}] 740.9283 53.27795 44.47124 271.23 16.23
tp @s[scores={cutSceneTimer=1209}] 740.9312 53.27711 44.4713 271.23 16.23
tp @s[scores={cutSceneTimer=1210}] 740.934 53.27627 44.47136 271.23 16.23
tp @s[scores={cutSceneTimer=1211}] 740.9369 53.27543 44.47142 271.23 16.23
tp @s[scores={cutSceneTimer=1212}] 740.9398 53.27459 44.47149 271.23 16.23
tp @s[scores={cutSceneTimer=1213}] 740.9426 53.27375 44.47155 271.23 16.23
tp @s[scores={cutSceneTimer=1214}] 740.9455 53.27291 44.47161 271.23 16.23
tp @s[scores={cutSceneTimer=1215}] 740.9484 53.27207 44.47167 271.23 16.23
tp @s[scores={cutSceneTimer=1216}] 740.9512 53.27123 44.47173 271.23 16.23
tp @s[scores={cutSceneTimer=1217}] 740.9541 53.27039 44.47179 271.23 16.23
tp @s[scores={cutSceneTimer=1218}] 740.957 53.26955 44.47185 271.23 16.23
tp @s[scores={cutSceneTimer=1219}] 740.9598 53.26871 44.47191 271.23 16.23
tp @s[scores={cutSceneTimer=1220}] 740.9627 53.26788 44.47197 271.23 16.23
tp @s[scores={cutSceneTimer=1221}] 740.9656 53.26704 44.47203 271.23 16.23
tp @s[scores={cutSceneTimer=1222}] 740.9684 53.2662 44.4721 271.23 16.23
tp @s[scores={cutSceneTimer=1223}] 740.9713 53.26536 44.47216 271.23 16.23
tp @s[scores={cutSceneTimer=1224}] 740.9742 53.26452 44.47222 271.23 16.23
tp @s[scores={cutSceneTimer=1225}] 740.9771 53.26368 44.47228 271.23 16.23
tp @s[scores={cutSceneTimer=1226}] 740.9799 53.26284 44.47234 271.23 16.23
tp @s[scores={cutSceneTimer=1227}] 740.9828 53.262 44.4724 271.23 16.23
tp @s[scores={cutSceneTimer=1228}] 740.9857 53.26116 44.47246 271.23 16.23
tp @s[scores={cutSceneTimer=1229}] 740.9885 53.26032 44.47252 271.23 16.23
tp @s[scores={cutSceneTimer=1230}] 740.9914 53.25948 44.47258 271.23 16.23
tp @s[scores={cutSceneTimer=1231}] 740.9943 53.25864 44.47264 271.23 16.23
tp @s[scores={cutSceneTimer=1232}] 740.9971 53.2578 44.47271 271.23 16.23
tp @s[scores={cutSceneTimer=1233}] 741.000 53.25697 44.47277 271.23 16.23
tp @s[scores={cutSceneTimer=1234}] 741.0029 53.25613 44.47283 271.23 16.23
tp @s[scores={cutSceneTimer=1235}] 741.0057 53.25529 44.47289 271.23 16.23
tp @s[scores={cutSceneTimer=1236}] 741.0086 53.25445 44.47295 271.23 16.23
tp @s[scores={cutSceneTimer=1237}] 741.0115 53.25361 44.47301 271.23 16.23
tp @s[scores={cutSceneTimer=1238}] 741.0143 53.25277 44.47307 271.23 16.23
tp @s[scores={cutSceneTimer=1239}] 741.0172 53.25193 44.47313 271.23 16.23
tp @s[scores={cutSceneTimer=1240}] 741.0201 53.25109 44.47319 271.23 16.23
tp @s[scores={cutSceneTimer=1241}] 741.0229 53.25025 44.47326 271.23 16.23
tp @s[scores={cutSceneTimer=1242}] 741.0258 53.24941 44.47332 271.23 16.23
tp @s[scores={cutSceneTimer=1243}] 741.0287 53.24857 44.47338 271.23 16.23
tp @s[scores={cutSceneTimer=1244}] 741.0316 53.24773 44.47344 271.23 16.23
tp @s[scores={cutSceneTimer=1245}] 741.0344 53.24689 44.4735 271.23 16.23
tp @s[scores={cutSceneTimer=1246}] 741.0373 53.24606 44.47356 271.23 16.23
tp @s[scores={cutSceneTimer=1247}] 741.0402 53.24522 44.47362 271.23 16.23
tp @s[scores={cutSceneTimer=1248}] 741.043 53.24438 44.47368 271.23 16.23
tp @s[scores={cutSceneTimer=1249}] 741.0459 53.24354 44.47374 271.23 16.23
tp @s[scores={cutSceneTimer=1250}] 741.0488 53.2427 44.4738 271.23 16.23
tp @s[scores={cutSceneTimer=1251}] 741.0516 53.24186 44.47387 271.23 16.23
tp @s[scores={cutSceneTimer=1252}] 741.0545 53.24102 44.47393 271.23 16.23
tp @s[scores={cutSceneTimer=1253}] 741.0574 53.24018 44.47399 271.23 16.23
tp @s[scores={cutSceneTimer=1254}] 741.0602 53.23934 44.47405 271.23 16.23
tp @s[scores={cutSceneTimer=1255}] 741.0631 53.2385 44.47411 271.23 16.23
tp @s[scores={cutSceneTimer=1256}] 741.066 53.23766 44.47417 271.23 16.23
tp @s[scores={cutSceneTimer=1257}] 741.0688 53.23682 44.47423 271.23 16.23
tp @s[scores={cutSceneTimer=1258}] 741.0717 53.23598 44.47429 271.23 16.23
tp @s[scores={cutSceneTimer=1259}] 741.0746 53.23515 44.47435 271.23 16.23
tp @s[scores={cutSceneTimer=1260}] 741.0775 53.23431 44.47441 271.23 16.23
tp @s[scores={cutSceneTimer=1261}] 741.0803 53.23347 44.47448 271.23 16.23
tp @s[scores={cutSceneTimer=1262}] 741.0832 53.23263 44.47454 271.23 16.23
tp @s[scores={cutSceneTimer=1263}] 741.0861 53.23179 44.4746 271.23 16.23
tp @s[scores={cutSceneTimer=1264}] 741.0889 53.23095 44.47466 271.23 16.23
tp @s[scores={cutSceneTimer=1265}] 741.0918 53.23011 44.47472 271.23 16.23
tp @s[scores={cutSceneTimer=1266}] 741.0947 53.22927 44.47478 271.23 16.23
tp @s[scores={cutSceneTimer=1267}] 741.0975 53.22843 44.47484 271.23 16.23
tp @s[scores={cutSceneTimer=1268}] 741.1004 53.22759 44.4749 271.23 16.23
tp @s[scores={cutSceneTimer=1269}] 741.1033 53.22675 44.47496 271.23 16.23
tp @s[scores={cutSceneTimer=1270}] 741.1061 53.22591 44.47503 271.23 16.23
tp @s[scores={cutSceneTimer=1271}] 741.109 53.22507 44.47509 271.23 16.23
tp @s[scores={cutSceneTimer=1272}] 741.1119 53.22424 44.47515 271.23 16.23
tp @s[scores={cutSceneTimer=1273}] 741.1147 53.2234 44.47521 271.23 16.23
tp @s[scores={cutSceneTimer=1274}] 741.1176 53.22256 44.47527 271.23 16.23
tp @s[scores={cutSceneTimer=1275}] 741.1205 53.22172 44.47533 271.23 16.23
tp @s[scores={cutSceneTimer=1276}] 741.1234 53.22088 44.47539 271.23 16.23
tp @s[scores={cutSceneTimer=1277}] 741.1262 53.22004 44.47545 271.23 16.23
tp @s[scores={cutSceneTimer=1278}] 741.1291 53.2192 44.47551 271.23 16.23
tp @s[scores={cutSceneTimer=1279}] 741.132 53.21836 44.47557 271.23 16.23
tp @s[scores={cutSceneTimer=1280}] 741.1348 53.21752 44.47564 271.23 16.23
tp @s[scores={cutSceneTimer=1281}] 741.1377 53.21668 44.4757 271.23 16.23
tp @s[scores={cutSceneTimer=1282}] 741.1406 53.21584 44.47576 271.23 16.23
tp @s[scores={cutSceneTimer=1283}] 741.1434 53.215 44.47582 271.23 16.23
tp @s[scores={cutSceneTimer=1284}] 741.1463 53.21416 44.47588 271.23 16.23
tp @s[scores={cutSceneTimer=1285}] 741.1492 53.21333 44.47594 271.23 16.23
tp @s[scores={cutSceneTimer=1286}] 741.152 53.21249 44.476 271.23 16.23
tp @s[scores={cutSceneTimer=1287}] 741.1549 53.21165 44.47606 271.23 16.23
tp @s[scores={cutSceneTimer=1288}] 741.1578 53.21081 44.47612 271.23 16.23
tp @s[scores={cutSceneTimer=1289}] 741.1606 53.20997 44.47618 271.23 16.23
tp @s[scores={cutSceneTimer=1290}] 741.1635 53.20913 44.47625 271.23 16.23
tp @s[scores={cutSceneTimer=1291}] 741.1664 53.20829 44.47631 271.23 16.23
tp @s[scores={cutSceneTimer=1292}] 741.1693 53.20745 44.47637 271.23 16.23
tp @s[scores={cutSceneTimer=1293}] 741.1721 53.20661 44.47643 271.23 16.23
tp @s[scores={cutSceneTimer=1294}] 741.175 53.20577 44.47649 271.23 16.23
tp @s[scores={cutSceneTimer=1295}] 741.1779 53.20493 44.47655 271.23 16.23
tp @s[scores={cutSceneTimer=1296}] 741.1807 53.20409 44.47661 271.23 16.23
tp @s[scores={cutSceneTimer=1297}] 741.1836 53.20325 44.47667 271.23 16.23
tp @s[scores={cutSceneTimer=1298}] 741.1865 53.20242 44.47673 271.23 16.23
tp @s[scores={cutSceneTimer=1299}] 741.1893 53.20158 44.4768 271.23 16.23
tp @s[scores={cutSceneTimer=1300}] 741.1922 53.20074 44.47686 271.23 16.23
tp @s[scores={cutSceneTimer=1301}] 741.1951 53.1999 44.47692 271.23 16.23
tp @s[scores={cutSceneTimer=1302}] 741.1979 53.19906 44.47698 271.23 16.23
tp @s[scores={cutSceneTimer=1303}] 741.2008 53.19822 44.47704 271.23 16.23
tp @s[scores={cutSceneTimer=1304}] 741.2037 53.19738 44.4771 271.23 16.23
tp @s[scores={cutSceneTimer=1305}] 741.2065 53.19654 44.47716 271.23 16.23
tp @s[scores={cutSceneTimer=1306}] 741.2094 53.1957 44.47722 271.23 16.23
tp @s[scores={cutSceneTimer=1307}] 741.2123 53.19486 44.47728 271.23 16.23
tp @s[scores={cutSceneTimer=1308}] 741.2151 53.19402 44.47734 271.23 16.23
tp @s[scores={cutSceneTimer=1309}] 741.218 53.19318 44.47741 271.23 16.23
tp @s[scores={cutSceneTimer=1310}] 741.2209 53.19234 44.47747 271.23 16.23
tp @s[scores={cutSceneTimer=1311}] 741.2238 53.19151 44.47753 271.23 16.23
tp @s[scores={cutSceneTimer=1312}] 741.2266 53.19067 44.47759 271.23 16.23
tp @s[scores={cutSceneTimer=1313}] 741.2295 53.18983 44.47765 271.23 16.23
tp @s[scores={cutSceneTimer=1314}] 741.2324 53.18899 44.47771 271.23 16.23
tp @s[scores={cutSceneTimer=1315}] 741.2352 53.18815 44.47777 271.23 16.23
tp @s[scores={cutSceneTimer=1316}] 741.2381 53.18731 44.47783 271.23 16.23
tp @s[scores={cutSceneTimer=1317}] 741.241 53.18647 44.47789 271.23 16.23
tp @s[scores={cutSceneTimer=1318}] 741.2438 53.18563 44.47795 271.23 16.23
tp @s[scores={cutSceneTimer=1319}] 741.2467 53.18479 44.47802 271.23 16.23
tp @s[scores={cutSceneTimer=1320}] 741.2496 53.18395 44.47808 271.23 16.23
tp @s[scores={cutSceneTimer=1321}] 741.2524 53.18311 44.47814 271.23 16.23
tp @s[scores={cutSceneTimer=1322}] 741.2553 53.18227 44.4782 271.23 16.23
tp @s[scores={cutSceneTimer=1323}] 741.2582 53.18143 44.47826 271.23 16.23
tp @s[scores={cutSceneTimer=1324}] 741.261 53.1806 44.47832 271.23 16.23
tp @s[scores={cutSceneTimer=1325}] 741.2639 53.17976 44.47838 271.23 16.23
tp @s[scores={cutSceneTimer=1326}] 741.2668 53.17892 44.47844 271.23 16.23
tp @s[scores={cutSceneTimer=1327}] 741.2697 53.17808 44.4785 271.23 16.23
tp @s[scores={cutSceneTimer=1328}] 741.2725 53.17724 44.47857 271.23 16.23
tp @s[scores={cutSceneTimer=1329}] 741.2754 53.1764 44.47863 271.23 16.23
tp @s[scores={cutSceneTimer=1330}] 741.2783 53.17556 44.47869 271.23 16.23
tp @s[scores={cutSceneTimer=1331}] 741.2811 53.17472 44.47875 271.23 16.23
tp @s[scores={cutSceneTimer=1332}] 741.284 53.17388 44.47881 271.23 16.23
tp @s[scores={cutSceneTimer=1333}] 741.2869 53.17304 44.47887 271.23 16.23
tp @s[scores={cutSceneTimer=1334}] 741.2897 53.1722 44.47893 271.23 16.23
tp @s[scores={cutSceneTimer=1335}] 741.2926 53.17136 44.47899 271.23 16.23
tp @s[scores={cutSceneTimer=1336}] 741.2955 53.17052 44.47905 271.23 16.23
tp @s[scores={cutSceneTimer=1337}] 741.2983 53.16969 44.47911 271.23 16.23
tp @s[scores={cutSceneTimer=1338}] 741.3012 53.16885 44.47918 271.23 16.23
tp @s[scores={cutSceneTimer=1339}] 741.3041 53.16801 44.47924 271.23 16.23
tp @s[scores={cutSceneTimer=1340}] 741.3069 53.16717 44.4793 271.23 16.23
tp @s[scores={cutSceneTimer=1341}] 741.3098 53.16633 44.47936 271.23 16.23
tp @s[scores={cutSceneTimer=1342}] 741.3127 53.16549 44.47942 271.23 16.23
tp @s[scores={cutSceneTimer=1343}] 741.3156 53.16465 44.47948 271.23 16.23
tp @s[scores={cutSceneTimer=1344}] 741.3184 53.16381 44.47954 271.23 16.23
tp @s[scores={cutSceneTimer=1345}] 741.3213 53.16297 44.4796 271.23 16.23
tp @s[scores={cutSceneTimer=1346}] 741.3242 53.16213 44.47966 271.23 16.23
tp @s[scores={cutSceneTimer=1347}] 741.327 53.16129 44.47972 271.23 16.23
tp @s[scores={cutSceneTimer=1348}] 741.3299 53.16045 44.47979 271.23 16.23
tp @s[scores={cutSceneTimer=1349}] 741.3328 53.15961 44.47985 271.23 16.23
tp @s[scores={cutSceneTimer=1350}] 741.3356 53.15878 44.47991 271.23 16.23
tp @s[scores={cutSceneTimer=1351}] 741.3385 53.15794 44.47997 271.23 16.23
tp @s[scores={cutSceneTimer=1352}] 741.3414 53.1571 44.48003 271.23 16.23
tp @s[scores={cutSceneTimer=1353}] 741.3442 53.15626 44.48009 271.23 16.23
tp @s[scores={cutSceneTimer=1354}] 741.3471 53.15542 44.48015 271.23 16.23
tp @s[scores={cutSceneTimer=1355}] 741.35 53.15458 44.48021 271.23 16.23
tp @s[scores={cutSceneTimer=1356}] 741.3528 53.15374 44.48027 271.23 16.23
tp @s[scores={cutSceneTimer=1357}] 741.3557 53.1529 44.48034 271.23 16.23
tp @s[scores={cutSceneTimer=1358}] 741.3586 53.15206 44.4804 271.23 16.23
tp @s[scores={cutSceneTimer=1359}] 741.3615 53.15122 44.48046 271.23 16.23
tp @s[scores={cutSceneTimer=1360}] 741.3643 53.15038 44.48052 271.23 16.23
tp @s[scores={cutSceneTimer=1361}] 741.3672 53.14954 44.48058 271.23 16.23
tp @s[scores={cutSceneTimer=1362}] 741.3701 53.1487 44.48064 271.23 16.23
tp @s[scores={cutSceneTimer=1363}] 741.3729 53.14787 44.4807 271.23 16.23
tp @s[scores={cutSceneTimer=1364}] 741.3758 53.14703 44.48076 271.23 16.23
tp @s[scores={cutSceneTimer=1365}] 741.3787 53.14619 44.48082 271.23 16.23
tp @s[scores={cutSceneTimer=1366}] 741.3815 53.14535 44.48088 271.23 16.23
tp @s[scores={cutSceneTimer=1367}] 741.3844 53.14451 44.48095 271.23 16.23
tp @s[scores={cutSceneTimer=1368}] 741.3873 53.14367 44.48101 271.23 16.23
tp @s[scores={cutSceneTimer=1369}] 741.3901 53.14283 44.48107 271.23 16.23
tp @s[scores={cutSceneTimer=1370}] 741.393 53.14199 44.48113 271.23 16.23
execute as @s[scores={cutSceneTimer=1350}] run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=1370}] run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=1371}] 739.392 53.26086 45.42787 402.19 16.61
tp @s[scores={cutSceneTimer=1372}] 739.3939 53.26171 45.42574 402.19 16.61
tp @s[scores={cutSceneTimer=1373}] 739.3959 53.26257 45.42361 402.19 16.61
tp @s[scores={cutSceneTimer=1374}] 739.3978 53.26343 45.42149 402.19 16.61
tp @s[scores={cutSceneTimer=1375}] 739.3998 53.26429 45.41936 402.19 16.61
tp @s[scores={cutSceneTimer=1376}] 739.4017 53.26515 45.41723 402.19 16.61
tp @s[scores={cutSceneTimer=1377}] 739.4037 53.26601 45.4151 402.19 16.61
tp @s[scores={cutSceneTimer=1378}] 739.4056 53.26686 45.41297 402.19 16.61
tp @s[scores={cutSceneTimer=1379}] 739.4076 53.26772 45.41084 402.19 16.61
tp @s[scores={cutSceneTimer=1380}] 739.4095 53.26858 45.40871 402.19 16.61
tp @s[scores={cutSceneTimer=1381}] 739.4115 53.26944 45.40659 402.19 16.61
tp @s[scores={cutSceneTimer=1382}] 739.4135 53.2703 45.40446 402.19 16.61
tp @s[scores={cutSceneTimer=1383}] 739.4154 53.27116 45.40233 402.19 16.61
tp @s[scores={cutSceneTimer=1384}] 739.4174 53.27201 45.4002 402.19 16.61
tp @s[scores={cutSceneTimer=1385}] 739.4193 53.27287 45.39807 402.19 16.61
tp @s[scores={cutSceneTimer=1386}] 739.4213 53.27373 45.39594 402.19 16.61
tp @s[scores={cutSceneTimer=1387}] 739.4232 53.27459 45.39381 402.19 16.61
tp @s[scores={cutSceneTimer=1388}] 739.4252 53.27545 45.39169 402.19 16.61
tp @s[scores={cutSceneTimer=1389}] 739.4271 53.27631 45.38956 402.19 16.61
tp @s[scores={cutSceneTimer=1390}] 739.4291 53.27716 45.38743 402.19 16.61
tp @s[scores={cutSceneTimer=1391}] 739.431 53.27802 45.3853 402.19 16.61
tp @s[scores={cutSceneTimer=1392}] 739.433 53.27888 45.38317 402.19 16.61
tp @s[scores={cutSceneTimer=1393}] 739.4349 53.27974 45.38104 402.19 16.61
tp @s[scores={cutSceneTimer=1394}] 739.4369 53.2806 45.37891 402.19 16.61
tp @s[scores={cutSceneTimer=1395}] 739.4388 53.28146 45.37679 402.19 16.61
tp @s[scores={cutSceneTimer=1396}] 739.4408 53.28231 45.37466 402.19 16.61
tp @s[scores={cutSceneTimer=1397}] 739.4427 53.28317 45.37253 402.19 16.61
tp @s[scores={cutSceneTimer=1398}] 739.4447 53.28403 45.3704 402.19 16.61
tp @s[scores={cutSceneTimer=1399}] 739.4467 53.28489 45.36827 402.19 16.61
tp @s[scores={cutSceneTimer=1400}] 739.4486 53.28575 45.36614 402.19 16.61
tp @s[scores={cutSceneTimer=1401}] 739.4506 53.28661 45.36401 402.19 16.61
tp @s[scores={cutSceneTimer=1402}] 739.4525 53.28746 45.36189 402.19 16.61
tp @s[scores={cutSceneTimer=1403}] 739.4545 53.28832 45.35976 402.19 16.61
tp @s[scores={cutSceneTimer=1404}] 739.4564 53.28918 45.35763 402.19 16.61
tp @s[scores={cutSceneTimer=1405}] 739.4584 53.29004 45.3555 402.19 16.61
tp @s[scores={cutSceneTimer=1406}] 739.4603 53.2909 45.35337 402.19 16.61
tp @s[scores={cutSceneTimer=1407}] 739.4623 53.29176 45.35124 402.19 16.61
tp @s[scores={cutSceneTimer=1408}] 739.4642 53.29261 45.34911 402.19 16.61
tp @s[scores={cutSceneTimer=1409}] 739.4662 53.29347 45.34698 402.19 16.61
tp @s[scores={cutSceneTimer=1410}] 739.4681 53.29433 45.34486 402.19 16.61
tp @s[scores={cutSceneTimer=1411}] 739.4701 53.29519 45.34273 402.19 16.61
tp @s[scores={cutSceneTimer=1412}] 739.472 53.29605 45.3406 402.19 16.61
tp @s[scores={cutSceneTimer=1413}] 739.474 53.29691 45.33847 402.19 16.61
tp @s[scores={cutSceneTimer=1414}] 739.476 53.29776 45.33634 402.19 16.61
tp @s[scores={cutSceneTimer=1415}] 739.4779 53.29862 45.33421 402.19 16.61
tp @s[scores={cutSceneTimer=1416}] 739.4799 53.29948 45.33208 402.19 16.61
tp @s[scores={cutSceneTimer=1417}] 739.4818 53.30034 45.32996 402.19 16.61
tp @s[scores={cutSceneTimer=1418}] 739.4838 53.3012 45.32783 402.19 16.61
tp @s[scores={cutSceneTimer=1419}] 739.4857 53.30206 45.3257 402.19 16.61
tp @s[scores={cutSceneTimer=1420}] 739.4877 53.30291 45.32357 402.19 16.61
tp @s[scores={cutSceneTimer=1421}] 739.4896 53.30377 45.32144 402.19 16.61
tp @s[scores={cutSceneTimer=1422}] 739.4916 53.30463 45.31931 402.19 16.61
tp @s[scores={cutSceneTimer=1423}] 739.4935 53.30549 45.31718 402.19 16.61
tp @s[scores={cutSceneTimer=1424}] 739.4955 53.30635 45.31506 402.19 16.61
tp @s[scores={cutSceneTimer=1425}] 739.4974 53.30721 45.31293 402.19 16.61
tp @s[scores={cutSceneTimer=1426}] 739.4994 53.30806 45.3108 402.19 16.61
tp @s[scores={cutSceneTimer=1427}] 739.5013 53.30892 45.30867 402.19 16.61
tp @s[scores={cutSceneTimer=1428}] 739.5033 53.30978 45.30654 402.19 16.61
tp @s[scores={cutSceneTimer=1429}] 739.5052 53.31064 45.30441 402.19 16.61
tp @s[scores={cutSceneTimer=1430}] 739.5072 53.3115 45.30228 402.19 16.61
tp @s[scores={cutSceneTimer=1431}] 739.5092 53.31236 45.30016 402.19 16.61
tp @s[scores={cutSceneTimer=1432}] 739.5111 53.31321 45.29803 402.19 16.61
tp @s[scores={cutSceneTimer=1433}] 739.5131 53.31407 45.2959 402.19 16.61
tp @s[scores={cutSceneTimer=1434}] 739.515 53.31493 45.29377 402.19 16.61
tp @s[scores={cutSceneTimer=1435}] 739.517 53.31579 45.29164 402.19 16.61
tp @s[scores={cutSceneTimer=1436}] 739.5189 53.31665 45.28951 402.19 16.61
tp @s[scores={cutSceneTimer=1437}] 739.5209 53.3175 45.28738 402.19 16.61
tp @s[scores={cutSceneTimer=1438}] 739.5228 53.31836 45.28526 402.19 16.61
tp @s[scores={cutSceneTimer=1439}] 739.5248 53.31922 45.28313 402.19 16.61
tp @s[scores={cutSceneTimer=1440}] 739.5267 53.32008 45.281 402.19 16.61
tp @s[scores={cutSceneTimer=1441}] 739.5287 53.32094 45.27887 402.19 16.61
tp @s[scores={cutSceneTimer=1442}] 739.5306 53.3218 45.27674 402.19 16.61
tp @s[scores={cutSceneTimer=1443}] 739.5326 53.32265 45.27461 402.19 16.61
tp @s[scores={cutSceneTimer=1444}] 739.5345 53.32351 45.27248 402.19 16.61
tp @s[scores={cutSceneTimer=1445}] 739.5365 53.32437 45.27036 402.19 16.61
tp @s[scores={cutSceneTimer=1446}] 739.5385 53.32523 45.26823 402.19 16.61
tp @s[scores={cutSceneTimer=1447}] 739.5404 53.32609 45.2661 402.19 16.61
tp @s[scores={cutSceneTimer=1448}] 739.5424 53.32695 45.26397 402.19 16.61
tp @s[scores={cutSceneTimer=1449}] 739.5443 53.3278 45.26184 402.19 16.61
tp @s[scores={cutSceneTimer=1450}] 739.5463 53.32866 45.25971 402.19 16.61
tp @s[scores={cutSceneTimer=1451}] 739.5482 53.32952 45.25758 402.19 16.61
tp @s[scores={cutSceneTimer=1452}] 739.5502 53.33038 45.25546 402.19 16.61
tp @s[scores={cutSceneTimer=1453}] 739.5521 53.33124 45.25333 402.19 16.61
tp @s[scores={cutSceneTimer=1454}] 739.5541 53.3321 45.2512 402.19 16.61
tp @s[scores={cutSceneTimer=1455}] 739.556 53.33295 45.24907 402.19 16.61
tp @s[scores={cutSceneTimer=1456}] 739.558 53.33381 45.24694 402.19 16.61
tp @s[scores={cutSceneTimer=1457}] 739.5599 53.33467 45.24481 402.19 16.61
tp @s[scores={cutSceneTimer=1458}] 739.5619 53.33553 45.24268 402.19 16.61
tp @s[scores={cutSceneTimer=1459}] 739.5638 53.33639 45.24055 402.19 16.61
tp @s[scores={cutSceneTimer=1460}] 739.5658 53.33725 45.23843 402.19 16.61
tp @s[scores={cutSceneTimer=1461}] 739.5677 53.3381 45.2363 402.19 16.61
tp @s[scores={cutSceneTimer=1462}] 739.5697 53.33896 45.23417 402.19 16.61
tp @s[scores={cutSceneTimer=1463}] 739.5717 53.33982 45.23204 402.19 16.61
tp @s[scores={cutSceneTimer=1464}] 739.5736 53.34068 45.22991 402.19 16.61
tp @s[scores={cutSceneTimer=1465}] 739.5756 53.34154 45.22778 402.19 16.61
tp @s[scores={cutSceneTimer=1466}] 739.5775 53.3424 45.22565 402.19 16.61
tp @s[scores={cutSceneTimer=1467}] 739.5795 53.34325 45.22353 402.19 16.61
tp @s[scores={cutSceneTimer=1468}] 739.5814 53.34411 45.2214 402.19 16.61
tp @s[scores={cutSceneTimer=1469}] 739.5834 53.34497 45.21927 402.19 16.61
tp @s[scores={cutSceneTimer=1470}] 739.5853 53.34583 45.21714 402.19 16.61
tp @s[scores={cutSceneTimer=1471}] 739.5873 53.34669 45.21501 402.19 16.61
tp @s[scores={cutSceneTimer=1472}] 739.5892 53.34755 45.21288 402.19 16.61
tp @s[scores={cutSceneTimer=1473}] 739.5912 53.3484 45.21075 402.19 16.61
tp @s[scores={cutSceneTimer=1474}] 739.5931 53.34926 45.20863 402.19 16.61
tp @s[scores={cutSceneTimer=1475}] 739.5951 53.35012 45.2065 402.19 16.61
tp @s[scores={cutSceneTimer=1476}] 739.597 53.35098 45.20437 402.19 16.61
tp @s[scores={cutSceneTimer=1477}] 739.599 53.35184 45.20224 402.19 16.61
tp @s[scores={cutSceneTimer=1478}] 739.601 53.3527 45.20011 402.19 16.61
tp @s[scores={cutSceneTimer=1479}] 739.6029 53.35355 45.19798 402.19 16.61
tp @s[scores={cutSceneTimer=1480}] 739.6049 53.35441 45.19585 402.19 16.61
tp @s[scores={cutSceneTimer=1481}] 739.6068 53.35527 45.19373 402.19 16.61
tp @s[scores={cutSceneTimer=1482}] 739.6088 53.35613 45.1916 402.19 16.61
tp @s[scores={cutSceneTimer=1483}] 739.6107 53.35699 45.18947 402.19 16.61
tp @s[scores={cutSceneTimer=1484}] 739.6127 53.35785 45.18734 402.19 16.61
tp @s[scores={cutSceneTimer=1485}] 739.6146 53.3587 45.18521 402.19 16.61
tp @s[scores={cutSceneTimer=1486}] 739.6166 53.35956 45.18308 402.19 16.61
tp @s[scores={cutSceneTimer=1487}] 739.6185 53.36042 45.18095 402.19 16.61
tp @s[scores={cutSceneTimer=1488}] 739.6205 53.36128 45.17883 402.19 16.61
tp @s[scores={cutSceneTimer=1489}] 739.6224 53.36214 45.1767 402.19 16.61
tp @s[scores={cutSceneTimer=1490}] 739.6244 53.363 45.17457 402.19 16.61
tp @s[scores={cutSceneTimer=1491}] 739.6263 53.36385 45.17244 402.19 16.61
tp @s[scores={cutSceneTimer=1492}] 739.6283 53.36471 45.17031 402.19 16.61
tp @s[scores={cutSceneTimer=1493}] 739.6302 53.36557 45.16818 402.19 16.61
tp @s[scores={cutSceneTimer=1494}] 739.6322 53.36643 45.16605 402.19 16.61
tp @s[scores={cutSceneTimer=1495}] 739.6342 53.36729 45.16393 402.19 16.61
tp @s[scores={cutSceneTimer=1496}] 739.6361 53.36814 45.1618 402.19 16.61
tp @s[scores={cutSceneTimer=1497}] 739.6381 53.369 45.15967 402.19 16.61
tp @s[scores={cutSceneTimer=1498}] 739.64 53.36986 45.15754 402.19 16.61
tp @s[scores={cutSceneTimer=1499}] 739.642 53.37072 45.15541 402.19 16.61
tp @s[scores={cutSceneTimer=1500}] 739.6439 53.37158 45.15328 402.19 16.61
tp @s[scores={cutSceneTimer=1501}] 739.6459 53.37244 45.15115 402.19 16.61
tp @s[scores={cutSceneTimer=1502}] 739.6478 53.37329 45.14902 402.19 16.61
tp @s[scores={cutSceneTimer=1503}] 739.6498 53.37415 45.1469 402.19 16.61
tp @s[scores={cutSceneTimer=1504}] 739.6517 53.37501 45.14477 402.19 16.61
tp @s[scores={cutSceneTimer=1505}] 739.6537 53.37587 45.14264 402.19 16.61
tp @s[scores={cutSceneTimer=1506}] 739.6556 53.37673 45.14051 402.19 16.61
tp @s[scores={cutSceneTimer=1507}] 739.6576 53.37759 45.13838 402.19 16.61
tp @s[scores={cutSceneTimer=1508}] 739.6595 53.37844 45.13625 402.19 16.61
tp @s[scores={cutSceneTimer=1509}] 739.6615 53.3793 45.13412 402.19 16.61
tp @s[scores={cutSceneTimer=1510}] 739.6635 53.38016 45.132 402.19 16.61
execute as @s[scores={cutSceneTimer=1490}] as @s run function hp:cutscenes/fade_in

# ¤Sprout:¤ If you ever stumble upon one in the wild, be careful!
# ¤Sprou t:¤ Если встретитесь с ней в дикой природе, будьте осторожны!
execute as @s[scores={cutSceneTimer=860},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=860..1000}] run title @s actionbar ["",{"text":""},{"text":"Стебель;","color":"dark_gray"},{"text":" Если встретитесь с ней в дикой природе, будьте осторожны!"}]

# ¤Sprout:¤ Keep out of range and try to avoid disturbing it if you can.
# ¤Sprout:¤ Держитесь подальше и постарайтесь не беспокоить её, если сможете.
execute as @s[scores={cutSceneTimer=1001},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=1001..1100}] run title @s actionbar ["",{"text":""},{"text":"Стебель;","color":"dark_gray"},{"text":" Держитесь подальше и постарайтесь не беспокоить её, если сможете."}]

# ¤Sprout:¤ If you must go near it make sure you have some ear-muffs equipped.
# ¤Sprout:¤ Если вам нужно подойти к ней, убедитесь, что у вас есть наушники.
execute as @s[scores={cutSceneTimer=1101},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=1101..1200}] run title @s actionbar ["",{"text":""},{"text":"Стебель;","color":"dark_gray"},{"text":" Если вам нужно подойти к ней, убедитесь, что у вас есть наушники."}]

# ¤Sprout:¤ When wearing earmuffs you can push the mandrakes into the soil beneath them.
# ¤Sprout:¤ Когда вы носите наушники, вы можете вернуть Мандрагору в почву.
execute as @s[scores={cutSceneTimer=1201},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=1201..1300}] run title @s actionbar ["",{"text":""},{"text":"Стебель;","color":"dark_gray"},{"text":" Когда вы носите наушники, вы можете вернуть Мандрагору в почву."}]

# ¤Sprout:¤ That'll make them quiet down for a while.
# ¤Sprout :¤ Это ненадолго остановит их плач.
execute as @s[scores={cutSceneTimer=1301},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=1301..1370}] run title @s actionbar ["",{"text":""},{"text":"Стебель;","color":"dark_gray"},{"text":" Это ненадолго остановит их плач."}]

# ¤Sprout:¤ Be careful not to drop the earmuffs though! You'll have to move around gently.
# ¤Sprout:¤ Будьте осторожны, не уроните наушники! Вам придется передвигаться аккуратно.
execute as @s[scores={cutSceneTimer=1371},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=1371..1510}] run title @s actionbar ["",{"text":""},{"text":"Стебель;","color":"dark_gray"},{"text":" Будьте осторожны, не уроните наушники! Вам придется передвигаться аккуратно."}]

# ¤Sprout:¤ To practice you will have to enter the four greenhouses outside to collect four stars and then return to me.
# ¤Sprout:¤ Чтобы попрактиковаться, вам нужно зайти в теплицы и собрать четыре звезды и затем вернуться ко мне.
execute as @s[scores={cutSceneTimer=1511},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=1511..1700}] run title @s actionbar ["",{"text":""},{"text":"Стебель;","color":"dark_gray"},{"text":" Чтобы попрактиковаться, вам нужно зайти в теплицы и собрать четыре звезды и затем вернуться ко мне."}]

execute as @s[scores={cutSceneTimer=1510}] as @s run function hp:cutscenes/fade_out
tp @s[scores={cutSceneTimer=1510}] 779.42 88.51 13.63 406.78 43.43
tp @s[scores={cutSceneTimer=1511}] 779.41 88.51 13.63 406.48 43.43
tp @s[scores={cutSceneTimer=1512}] 779.4 88.51 13.63 406.18 43.43
tp @s[scores={cutSceneTimer=1513}] 779.39 88.51 13.63 405.88 43.43
tp @s[scores={cutSceneTimer=1514}] 779.3799 88.51 13.63 405.58 43.43
tp @s[scores={cutSceneTimer=1515}] 779.3699 88.51 13.63 405.2801 43.43
tp @s[scores={cutSceneTimer=1516}] 779.3599 88.51 13.63 404.9801 43.43
tp @s[scores={cutSceneTimer=1517}] 779.3499 88.51 13.63 404.6801 43.43
tp @s[scores={cutSceneTimer=1518}] 779.3399 88.51 13.63 404.3801 43.43
tp @s[scores={cutSceneTimer=1519}] 779.3299 88.51 13.63 404.0801 43.43
tp @s[scores={cutSceneTimer=1520}] 779.3199 88.51 13.63 403.7801 43.43
tp @s[scores={cutSceneTimer=1521}] 779.3099 88.51 13.63 403.4801 43.43
tp @s[scores={cutSceneTimer=1522}] 779.2999 88.51 13.63 403.1801 43.43
tp @s[scores={cutSceneTimer=1523}] 779.2899 88.51 13.63 402.8802 43.43
tp @s[scores={cutSceneTimer=1524}] 779.2798 88.51 13.63 402.5802 43.43
tp @s[scores={cutSceneTimer=1525}] 779.2698 88.51 13.63 402.2802 43.43
tp @s[scores={cutSceneTimer=1526}] 779.2598 88.51 13.63 401.9802 43.43
tp @s[scores={cutSceneTimer=1527}] 779.2498 88.51 13.63 401.6802 43.43
tp @s[scores={cutSceneTimer=1528}] 779.2398 88.51 13.63 401.3802 43.43
tp @s[scores={cutSceneTimer=1529}] 779.2298 88.51 13.63 401.0802 43.43
tp @s[scores={cutSceneTimer=1530}] 779.2198 88.51 13.63 400.7802 43.43
tp @s[scores={cutSceneTimer=1531}] 779.2098 88.51 13.63 400.4803 43.43
tp @s[scores={cutSceneTimer=1532}] 779.1998 88.51 13.63 400.1803 43.43
tp @s[scores={cutSceneTimer=1533}] 779.1898 88.51 13.63 399.8803 43.43
tp @s[scores={cutSceneTimer=1534}] 779.1797 88.51 13.63 399.5803 43.43
tp @s[scores={cutSceneTimer=1535}] 779.1697 88.51 13.63 399.2803 43.43
tp @s[scores={cutSceneTimer=1536}] 779.1597 88.51 13.63 398.9803 43.43
tp @s[scores={cutSceneTimer=1537}] 779.1497 88.51 13.63 398.6803 43.43
tp @s[scores={cutSceneTimer=1538}] 779.1397 88.51 13.63 398.3803 43.43
tp @s[scores={cutSceneTimer=1539}] 779.1297 88.51 13.63 398.0804 43.43
tp @s[scores={cutSceneTimer=1540}] 779.1197 88.51 13.63 397.7804 43.43
tp @s[scores={cutSceneTimer=1541}] 779.1097 88.51 13.63 397.4804 43.43
tp @s[scores={cutSceneTimer=1542}] 779.0997 88.51 13.63 397.1804 43.43
tp @s[scores={cutSceneTimer=1543}] 779.0897 88.51 13.63 396.8804 43.43
tp @s[scores={cutSceneTimer=1544}] 779.0797 88.51 13.63 396.5804 43.43
tp @s[scores={cutSceneTimer=1545}] 779.0696 88.51 13.63 396.2804 43.43
tp @s[scores={cutSceneTimer=1546}] 779.0596 88.51 13.63 395.9804 43.43
tp @s[scores={cutSceneTimer=1547}] 779.0496 88.51 13.63 395.6805 43.43
tp @s[scores={cutSceneTimer=1548}] 779.0396 88.51 13.63 395.3805 43.43
tp @s[scores={cutSceneTimer=1549}] 779.0296 88.51 13.63 395.0805 43.43
tp @s[scores={cutSceneTimer=1550}] 779.0196 88.51 13.63 394.7805 43.43
tp @s[scores={cutSceneTimer=1551}] 779.0096 88.51 13.63 394.4805 43.43
tp @s[scores={cutSceneTimer=1552}] 778.9996 88.51 13.63 394.1805 43.43
tp @s[scores={cutSceneTimer=1553}] 778.9896 88.51 13.63 393.8805 43.43
tp @s[scores={cutSceneTimer=1554}] 778.9796 88.51 13.63 393.5805 43.43
tp @s[scores={cutSceneTimer=1555}] 778.9695 88.51 13.63 393.2805 43.43
tp @s[scores={cutSceneTimer=1556}] 778.9595 88.51 13.63 392.9806 43.43
tp @s[scores={cutSceneTimer=1557}] 778.9495 88.51 13.63 392.6806 43.43
tp @s[scores={cutSceneTimer=1558}] 778.9395 88.51 13.63 392.3806 43.43
tp @s[scores={cutSceneTimer=1559}] 778.9295 88.51 13.63 392.0806 43.43
tp @s[scores={cutSceneTimer=1560}] 778.9195 88.51 13.63 391.7806 43.43
tp @s[scores={cutSceneTimer=1561}] 778.9095 88.51 13.63 391.4806 43.43
tp @s[scores={cutSceneTimer=1562}] 778.8995 88.51 13.63 391.1806 43.43
tp @s[scores={cutSceneTimer=1563}] 778.8895 88.51 13.63 390.8806 43.43
tp @s[scores={cutSceneTimer=1564}] 778.8795 88.51 13.63 390.5807 43.43
tp @s[scores={cutSceneTimer=1565}] 778.8694 88.51 13.63 390.2807 43.43
tp @s[scores={cutSceneTimer=1566}] 778.8594 88.51 13.63 389.9807 43.43
tp @s[scores={cutSceneTimer=1567}] 778.8494 88.51 13.63 389.6807 43.43
tp @s[scores={cutSceneTimer=1568}] 778.8394 88.51 13.63 389.3807 43.43
tp @s[scores={cutSceneTimer=1569}] 778.8294 88.51 13.63 389.0807 43.43
tp @s[scores={cutSceneTimer=1570}] 778.8194 88.51 13.63 388.7807 43.43
tp @s[scores={cutSceneTimer=1571}] 778.8094 88.51 13.63 388.4807 43.43
tp @s[scores={cutSceneTimer=1572}] 778.7994 88.51 13.63 388.1808 43.43
tp @s[scores={cutSceneTimer=1573}] 778.7894 88.51 13.63 387.8808 43.43
tp @s[scores={cutSceneTimer=1574}] 778.7794 88.51 13.63 387.5808 43.43
tp @s[scores={cutSceneTimer=1575}] 778.7693 88.51 13.63 387.2808 43.43
tp @s[scores={cutSceneTimer=1576}] 778.7593 88.51 13.63 386.9808 43.43
tp @s[scores={cutSceneTimer=1577}] 778.7493 88.51 13.63 386.6808 43.43
tp @s[scores={cutSceneTimer=1578}] 778.7393 88.51 13.63 386.3808 43.43
tp @s[scores={cutSceneTimer=1579}] 778.7293 88.51 13.63 386.0808 43.43
tp @s[scores={cutSceneTimer=1580}] 778.7193 88.51 13.63 385.7809 43.43
tp @s[scores={cutSceneTimer=1581}] 778.7093 88.51 13.63 385.4809 43.43
tp @s[scores={cutSceneTimer=1582}] 778.6993 88.51 13.63 385.1809 43.43
tp @s[scores={cutSceneTimer=1583}] 778.6893 88.51 13.63 384.8809 43.43
tp @s[scores={cutSceneTimer=1584}] 778.6793 88.51 13.63 384.5809 43.43
tp @s[scores={cutSceneTimer=1585}] 778.6693 88.51 13.63 384.2809 43.43
tp @s[scores={cutSceneTimer=1586}] 778.6592 88.51 13.63 383.9809 43.43
tp @s[scores={cutSceneTimer=1587}] 778.6492 88.51 13.63 383.6809 43.43
tp @s[scores={cutSceneTimer=1588}] 778.6392 88.51 13.63 383.381 43.43
tp @s[scores={cutSceneTimer=1589}] 778.6292 88.51 13.63 383.081 43.43
tp @s[scores={cutSceneTimer=1590}] 778.6192 88.51 13.63 382.781 43.43
tp @s[scores={cutSceneTimer=1591}] 778.6092 88.51 13.63 382.481 43.43
tp @s[scores={cutSceneTimer=1592}] 778.5992 88.51 13.63 382.181 43.43
tp @s[scores={cutSceneTimer=1593}] 778.5892 88.51 13.63 381.881 43.43
tp @s[scores={cutSceneTimer=1594}] 778.5792 88.51 13.63 381.581 43.43
tp @s[scores={cutSceneTimer=1595}] 778.5692 88.51 13.63 381.281 43.43
tp @s[scores={cutSceneTimer=1596}] 778.5591 88.51 13.63 380.981 43.43
tp @s[scores={cutSceneTimer=1597}] 778.5491 88.51 13.63 380.6811 43.43
tp @s[scores={cutSceneTimer=1598}] 778.5391 88.51 13.63 380.3811 43.43
tp @s[scores={cutSceneTimer=1599}] 778.5291 88.51 13.63 380.0811 43.43
tp @s[scores={cutSceneTimer=1600}] 778.5191 88.51 13.63 379.7811 43.43
tp @s[scores={cutSceneTimer=1601}] 778.5091 88.51 13.63 379.4811 43.43
tp @s[scores={cutSceneTimer=1602}] 778.4991 88.51 13.63 379.1811 43.43
tp @s[scores={cutSceneTimer=1603}] 778.4891 88.51 13.63 378.8811 43.43
tp @s[scores={cutSceneTimer=1604}] 778.4791 88.51 13.63 378.5811 43.43
tp @s[scores={cutSceneTimer=1605}] 778.4691 88.51 13.63 378.2812 43.43
tp @s[scores={cutSceneTimer=1606}] 778.459 88.51 13.63 377.9812 43.43
tp @s[scores={cutSceneTimer=1607}] 778.449 88.51 13.63 377.6812 43.43
tp @s[scores={cutSceneTimer=1608}] 778.439 88.51 13.63 377.3812 43.43
tp @s[scores={cutSceneTimer=1609}] 778.429 88.51 13.63 377.0812 43.43
tp @s[scores={cutSceneTimer=1610}] 778.419 88.51 13.63 376.7812 43.43
tp @s[scores={cutSceneTimer=1611}] 778.409 88.51 13.63 376.4812 43.43
tp @s[scores={cutSceneTimer=1612}] 778.399 88.51 13.63 376.1812 43.43
tp @s[scores={cutSceneTimer=1613}] 778.389 88.51 13.63 375.8813 43.43
tp @s[scores={cutSceneTimer=1614}] 778.379 88.51 13.63 375.5813 43.43
tp @s[scores={cutSceneTimer=1615}] 778.369 88.51 13.63 375.2813 43.43
tp @s[scores={cutSceneTimer=1616}] 778.3589 88.51 13.63 374.9813 43.43
tp @s[scores={cutSceneTimer=1617}] 778.3489 88.51 13.63 374.6813 43.43
tp @s[scores={cutSceneTimer=1618}] 778.3389 88.51 13.63 374.3813 43.43
tp @s[scores={cutSceneTimer=1619}] 778.3289 88.51 13.63 374.0813 43.43
tp @s[scores={cutSceneTimer=1620}] 778.3189 88.51 13.63 373.7813 43.43
tp @s[scores={cutSceneTimer=1621}] 778.3089 88.51 13.63 373.4814 43.43
tp @s[scores={cutSceneTimer=1622}] 778.2989 88.51 13.63 373.1814 43.43
tp @s[scores={cutSceneTimer=1623}] 778.2889 88.51 13.63 372.8814 43.43
tp @s[scores={cutSceneTimer=1624}] 778.2789 88.51 13.63 372.5814 43.43
tp @s[scores={cutSceneTimer=1625}] 778.2689 88.51 13.63 372.2814 43.43
tp @s[scores={cutSceneTimer=1626}] 778.2589 88.51 13.63 371.9814 43.43
tp @s[scores={cutSceneTimer=1627}] 778.2488 88.51 13.63 371.6814 43.43
tp @s[scores={cutSceneTimer=1628}] 778.2388 88.51 13.63 371.3814 43.43
tp @s[scores={cutSceneTimer=1629}] 778.2288 88.51 13.63 371.0815 43.43
tp @s[scores={cutSceneTimer=1630}] 778.2188 88.51 13.63 370.7815 43.43
tp @s[scores={cutSceneTimer=1631}] 778.2088 88.51 13.63 370.4815 43.43
tp @s[scores={cutSceneTimer=1632}] 778.1988 88.51 13.63 370.1815 43.43
tp @s[scores={cutSceneTimer=1633}] 778.1888 88.51 13.63 369.8815 43.43
tp @s[scores={cutSceneTimer=1634}] 778.1788 88.51 13.63 369.5815 43.43
tp @s[scores={cutSceneTimer=1635}] 778.1688 88.51 13.63 369.2815 43.43
tp @s[scores={cutSceneTimer=1636}] 778.1588 88.51 13.63 368.9815 43.43
tp @s[scores={cutSceneTimer=1637}] 778.1487 88.51 13.63 368.6815 43.43
tp @s[scores={cutSceneTimer=1638}] 778.1387 88.51 13.63 368.3816 43.43
tp @s[scores={cutSceneTimer=1639}] 778.1287 88.51 13.63 368.0816 43.43
tp @s[scores={cutSceneTimer=1640}] 778.1187 88.51 13.63 367.7816 43.43
tp @s[scores={cutSceneTimer=1641}] 778.1087 88.51 13.63 367.4816 43.43
tp @s[scores={cutSceneTimer=1642}] 778.0987 88.51 13.63 367.1816 43.43
tp @s[scores={cutSceneTimer=1643}] 778.0887 88.51 13.63 366.8816 43.43
tp @s[scores={cutSceneTimer=1644}] 778.0787 88.51 13.63 366.5816 43.43
tp @s[scores={cutSceneTimer=1645}] 778.0687 88.51 13.63 366.2816 43.43
tp @s[scores={cutSceneTimer=1646}] 778.0587 88.51 13.63 365.9817 43.43
tp @s[scores={cutSceneTimer=1647}] 778.0486 88.51 13.63 365.6817 43.43
tp @s[scores={cutSceneTimer=1648}] 778.0386 88.51 13.63 365.3817 43.43
tp @s[scores={cutSceneTimer=1649}] 778.0286 88.51 13.63 365.0817 43.43
tp @s[scores={cutSceneTimer=1650}] 778.0186 88.51 13.63 364.7817 43.43
tp @s[scores={cutSceneTimer=1651}] 778.0086 88.51 13.63 364.4817 43.43
tp @s[scores={cutSceneTimer=1652}] 777.9986 88.51 13.63 364.1817 43.43
tp @s[scores={cutSceneTimer=1653}] 777.9886 88.51 13.63 363.8817 43.43
tp @s[scores={cutSceneTimer=1654}] 777.9786 88.51 13.63 363.5818 43.43
tp @s[scores={cutSceneTimer=1655}] 777.9686 88.51 13.63 363.2818 43.43
tp @s[scores={cutSceneTimer=1656}] 777.9586 88.51 13.63 362.9818 43.43
tp @s[scores={cutSceneTimer=1657}] 777.9485 88.51 13.63 362.6818 43.43
tp @s[scores={cutSceneTimer=1658}] 777.9385 88.51 13.63 362.3818 43.43
tp @s[scores={cutSceneTimer=1659}] 777.9285 88.51 13.63 362.0818 43.43
tp @s[scores={cutSceneTimer=1660}] 777.9185 88.51 13.63 361.7818 43.43
tp @s[scores={cutSceneTimer=1661}] 777.9085 88.51 13.63 361.4818 43.43
tp @s[scores={cutSceneTimer=1662}] 777.8985 88.51 13.63 361.1819 43.43
tp @s[scores={cutSceneTimer=1663}] 777.8885 88.51 13.63 360.8819 43.43
tp @s[scores={cutSceneTimer=1664}] 777.8785 88.51 13.63 360.5819 43.43
tp @s[scores={cutSceneTimer=1665}] 777.8685 88.51 13.63 360.2819 43.43
tp @s[scores={cutSceneTimer=1666}] 777.8585 88.51 13.63 359.9819 43.43
tp @s[scores={cutSceneTimer=1667}] 777.8484 88.51 13.63 359.6819 43.43
tp @s[scores={cutSceneTimer=1668}] 777.8384 88.51 13.63 359.3819 43.43
tp @s[scores={cutSceneTimer=1669}] 777.8284 88.51 13.63 359.0819 43.43
tp @s[scores={cutSceneTimer=1670}] 777.8184 88.51 13.63 358.782 43.43
tp @s[scores={cutSceneTimer=1671}] 777.8084 88.51 13.63 358.482 43.43
tp @s[scores={cutSceneTimer=1672}] 777.7984 88.51 13.63 358.182 43.43
tp @s[scores={cutSceneTimer=1673}] 777.7884 88.51 13.63 357.882 43.43
tp @s[scores={cutSceneTimer=1674}] 777.7784 88.51 13.63 357.582 43.43
tp @s[scores={cutSceneTimer=1675}] 777.7684 88.51 13.63 357.282 43.43
tp @s[scores={cutSceneTimer=1676}] 777.7584 88.51 13.63 356.982 43.43
tp @s[scores={cutSceneTimer=1677}] 777.7484 88.51 13.63 356.682 43.43
tp @s[scores={cutSceneTimer=1678}] 777.7383 88.51 13.63 356.382 43.43
tp @s[scores={cutSceneTimer=1679}] 777.7283 88.51 13.63 356.0821 43.43
tp @s[scores={cutSceneTimer=1680}] 777.7183 88.51 13.63 355.7821 43.43
tp @s[scores={cutSceneTimer=1681}] 777.7083 88.51 13.63 355.4821 43.43
tp @s[scores={cutSceneTimer=1682}] 777.6983 88.51 13.63 355.1821 43.43
tp @s[scores={cutSceneTimer=1683}] 777.6883 88.51 13.63 354.8821 43.43
tp @s[scores={cutSceneTimer=1684}] 777.6783 88.51 13.63 354.5821 43.43
tp @s[scores={cutSceneTimer=1685}] 777.6683 88.51 13.63 354.2821 43.43
tp @s[scores={cutSceneTimer=1686}] 777.6583 88.51 13.63 353.9821 43.43
tp @s[scores={cutSceneTimer=1687}] 777.6483 88.51 13.63 353.6822 43.43
tp @s[scores={cutSceneTimer=1688}] 777.6382 88.51 13.63 353.3822 43.43
tp @s[scores={cutSceneTimer=1689}] 777.6282 88.51 13.63 353.0822 43.43
tp @s[scores={cutSceneTimer=1690}] 777.6182 88.51 13.63 352.7822 43.43
tp @s[scores={cutSceneTimer=1691}] 777.6082 88.51 13.63 352.4822 43.43
tp @s[scores={cutSceneTimer=1692}] 777.5982 88.51 13.63 352.1822 43.43
tp @s[scores={cutSceneTimer=1693}] 777.5882 88.51 13.63 351.8822 43.43
tp @s[scores={cutSceneTimer=1694}] 777.5782 88.51 13.63 351.5822 43.43
tp @s[scores={cutSceneTimer=1695}] 777.5682 88.51 13.63 351.2823 43.43
tp @s[scores={cutSceneTimer=1696}] 777.5582 88.51 13.63 350.9823 43.43
tp @s[scores={cutSceneTimer=1697}] 777.5482 88.51 13.63 350.6823 43.43
tp @s[scores={cutSceneTimer=1698}] 777.5381 88.51 13.63 350.3823 43.43
tp @s[scores={cutSceneTimer=1699}] 777.5281 88.51 13.63 350.0823 43.43
tp @s[scores={cutSceneTimer=1700}] 777.5181 88.51 13.63 349.7823 43.43
tp @s[scores={cutSceneTimer=1701}] 777.5081 88.51 13.63 349.4823 43.43
tp @s[scores={cutSceneTimer=1702}] 777.4981 88.51 13.63 349.1823 43.43
tp @s[scores={cutSceneTimer=1703}] 777.4881 88.51 13.63 348.8824 43.43
tp @s[scores={cutSceneTimer=1704}] 777.4781 88.51 13.63 348.5824 43.43
tp @s[scores={cutSceneTimer=1705}] 777.4681 88.51 13.63 348.2824 43.43
tp @s[scores={cutSceneTimer=1706}] 777.4581 88.51 13.63 347.9824 43.43
tp @s[scores={cutSceneTimer=1707}] 777.4481 88.51 13.63 347.6824 43.43
tp @s[scores={cutSceneTimer=1708}] 777.438 88.51 13.63 347.3824 43.43
tp @s[scores={cutSceneTimer=1709}] 777.428 88.51 13.63 347.0824 43.43
tp @s[scores={cutSceneTimer=1710}] 777.418 88.51 13.63 346.7824 43.43
tp @s[scores={cutSceneTimer=1711}] 777.408 88.51 13.63 346.4825 43.43
tp @s[scores={cutSceneTimer=1712}] 777.398 88.51 13.63 346.1825 43.43
tp @s[scores={cutSceneTimer=1713}] 777.388 88.51 13.63 345.8825 43.43
tp @s[scores={cutSceneTimer=1714}] 777.378 88.51 13.63 345.5825 43.43
tp @s[scores={cutSceneTimer=1715}] 777.368 88.51 13.63 345.2825 43.43
tp @s[scores={cutSceneTimer=1716}] 777.358 88.51 13.63 344.9825 43.43
tp @s[scores={cutSceneTimer=1717}] 777.348 88.51 13.63 344.6825 43.43
tp @s[scores={cutSceneTimer=1718}] 777.338 88.51 13.63 344.3825 43.43
tp @s[scores={cutSceneTimer=1719}] 777.3279 88.51 13.63 344.0826 43.43
tp @s[scores={cutSceneTimer=1720}] 777.3179 88.51 13.63 343.7826 43.43
tp @s[scores={cutSceneTimer=1721}] 777.3079 88.51 13.63 343.4826 43.43
tp @s[scores={cutSceneTimer=1722}] 777.2979 88.51 13.63 343.1826 43.43
tp @s[scores={cutSceneTimer=1723}] 777.2879 88.51 13.63 342.8826 43.43
tp @s[scores={cutSceneTimer=1724}] 777.2779 88.51 13.63 342.5826 43.43
tp @s[scores={cutSceneTimer=1725}] 777.2679 88.51 13.63 342.2826 43.43
tp @s[scores={cutSceneTimer=1726}] 777.2579 88.51 13.63 341.9826 43.43
tp @s[scores={cutSceneTimer=1727}] 777.2479 88.51 13.63 341.6826 43.43
tp @s[scores={cutSceneTimer=1728}] 777.2379 88.51 13.63 341.3827 43.43
tp @s[scores={cutSceneTimer=1729}] 777.2278 88.51 13.63 341.0827 43.43
tp @s[scores={cutSceneTimer=1730}] 777.2178 88.51 13.63 340.7827 43.43
tp @s[scores={cutSceneTimer=1731}] 777.2078 88.51 13.63 340.4827 43.43
tp @s[scores={cutSceneTimer=1732}] 777.1978 88.51 13.63 340.1827 43.43
tp @s[scores={cutSceneTimer=1733}] 777.1878 88.51 13.63 339.8827 43.43
tp @s[scores={cutSceneTimer=1734}] 777.1778 88.51 13.63 339.5827 43.43
tp @s[scores={cutSceneTimer=1735}] 777.1678 88.51 13.63 339.2827 43.43
tp @s[scores={cutSceneTimer=1736}] 777.1578 88.51 13.63 338.9828 43.43
tp @s[scores={cutSceneTimer=1737}] 777.1478 88.51 13.63 338.6828 43.43
tp @s[scores={cutSceneTimer=1738}] 777.1378 88.51 13.63 338.3828 43.43
tp @s[scores={cutSceneTimer=1739}] 777.1277 88.51 13.63 338.0828 43.43
tp @s[scores={cutSceneTimer=1740}] 777.1177 88.51 13.63 337.7828 43.43
tp @s[scores={cutSceneTimer=1741}] 777.1077 88.51 13.63 337.4828 43.43
tp @s[scores={cutSceneTimer=1742}] 777.0977 88.51 13.63 337.1828 43.43
tp @s[scores={cutSceneTimer=1743}] 777.0877 88.51 13.63 336.8828 43.43
tp @s[scores={cutSceneTimer=1744}] 777.0777 88.51 13.63 336.5829 43.43
tp @s[scores={cutSceneTimer=1745}] 777.0677 88.51 13.63 336.2829 43.43
tp @s[scores={cutSceneTimer=1746}] 777.0577 88.51 13.63 335.9829 43.43
tp @s[scores={cutSceneTimer=1747}] 777.0477 88.51 13.63 335.6829 43.43
tp @s[scores={cutSceneTimer=1748}] 777.0377 88.51 13.63 335.3829 43.43
tp @s[scores={cutSceneTimer=1749}] 777.0276 88.51 13.63 335.0829 43.43
tp @s[scores={cutSceneTimer=1750}] 777.0176 88.51 13.63 334.7829 43.43
tp @s[scores={cutSceneTimer=1751}] 777.0076 88.51 13.63 334.4829 43.43
tp @s[scores={cutSceneTimer=1752}] 776.9976 88.51 13.63 334.183 43.43
tp @s[scores={cutSceneTimer=1753}] 776.9876 88.51 13.63 333.883 43.43
tp @s[scores={cutSceneTimer=1754}] 776.9776 88.51 13.63 333.583 43.43
tp @s[scores={cutSceneTimer=1755}] 776.9676 88.51 13.63 333.283 43.43
tp @s[scores={cutSceneTimer=1756}] 776.9576 88.51 13.63 332.983 43.43
tp @s[scores={cutSceneTimer=1757}] 776.9476 88.51 13.63 332.683 43.43
tp @s[scores={cutSceneTimer=1758}] 776.9376 88.51 13.63 332.383 43.43
tp @s[scores={cutSceneTimer=1759}] 776.9276 88.51 13.63 332.083 43.43
tp @s[scores={cutSceneTimer=1760}] 776.9175 88.51 13.63 331.7831 43.43
tp @s[scores={cutSceneTimer=1761}] 776.9075 88.51 13.63 331.4831 43.43
tp @s[scores={cutSceneTimer=1762}] 776.8975 88.51 13.63 331.1831 43.43
tp @s[scores={cutSceneTimer=1763}] 776.8875 88.51 13.63 330.8831 43.43
tp @s[scores={cutSceneTimer=1764}] 776.8775 88.51 13.63 330.5831 43.43
tp @s[scores={cutSceneTimer=1765}] 776.8675 88.51 13.63 330.2831 43.43
tp @s[scores={cutSceneTimer=1766}] 776.8575 88.51 13.63 329.9831 43.43
tp @s[scores={cutSceneTimer=1767}] 776.8475 88.51 13.63 329.6831 43.43
tp @s[scores={cutSceneTimer=1768}] 776.8375 88.51 13.63 329.3831 43.43
tp @s[scores={cutSceneTimer=1769}] 776.8275 88.51 13.63 329.0832 43.43
tp @s[scores={cutSceneTimer=1770}] 776.8174 88.51 13.63 328.7832 43.43
tp @s[scores={cutSceneTimer=1771}] 776.8074 88.51 13.63 328.4832 43.43
tp @s[scores={cutSceneTimer=1772}] 776.7974 88.51 13.63 328.1832 43.43
tp @s[scores={cutSceneTimer=1773}] 776.7874 88.51 13.63 327.8832 43.43
tp @s[scores={cutSceneTimer=1774}] 776.7774 88.51 13.63 327.5832 43.43
tp @s[scores={cutSceneTimer=1775}] 776.7674 88.51 13.63 327.2832 43.43
tp @s[scores={cutSceneTimer=1776}] 776.7574 88.51 13.63 326.9832 43.43
tp @s[scores={cutSceneTimer=1777}] 776.7474 88.51 13.63 326.6833 43.43
tp @s[scores={cutSceneTimer=1778}] 776.7374 88.51 13.63 326.3833 43.43
tp @s[scores={cutSceneTimer=1779}] 776.7274 88.51 13.63 326.0833 43.43
tp @s[scores={cutSceneTimer=1780}] 776.7173 88.51 13.63 325.7833 43.43
tp @s[scores={cutSceneTimer=1781}] 776.7073 88.51 13.63 325.4833 43.43
tp @s[scores={cutSceneTimer=1782}] 776.6973 88.51 13.63 325.1833 43.43
tp @s[scores={cutSceneTimer=1783}] 776.6873 88.51 13.63 324.8833 43.43
tp @s[scores={cutSceneTimer=1784}] 776.6773 88.51 13.63 324.5833 43.43
tp @s[scores={cutSceneTimer=1785}] 776.6673 88.51 13.63 324.2834 43.43
tp @s[scores={cutSceneTimer=1786}] 776.6573 88.51 13.63 323.9834 43.43
tp @s[scores={cutSceneTimer=1787}] 776.6473 88.51 13.63 323.6834 43.43
tp @s[scores={cutSceneTimer=1788}] 776.6373 88.51 13.63 323.3834 43.43
tp @s[scores={cutSceneTimer=1789}] 776.6273 88.51 13.63 323.0834 43.43
tp @s[scores={cutSceneTimer=1790}] 776.6172 88.51 13.63 322.7834 43.43
tp @s[scores={cutSceneTimer=1791}] 776.6072 88.51 13.63 322.4834 43.43
tp @s[scores={cutSceneTimer=1792}] 776.5972 88.51 13.63 322.1834 43.43
tp @s[scores={cutSceneTimer=1793}] 776.5872 88.51 13.63 321.8835 43.43
tp @s[scores={cutSceneTimer=1794}] 776.5772 88.51 13.63 321.5835 43.43
tp @s[scores={cutSceneTimer=1795}] 776.5672 88.51 13.63 321.2835 43.43
tp @s[scores={cutSceneTimer=1796}] 776.5572 88.51 13.63 320.9835 43.43
tp @s[scores={cutSceneTimer=1797}] 776.5472 88.51 13.63 320.6835 43.43
tp @s[scores={cutSceneTimer=1798}] 776.5372 88.51 13.63 320.3835 43.43
tp @s[scores={cutSceneTimer=1799}] 776.5272 88.51 13.63 320.0835 43.43
tp @s[scores={cutSceneTimer=1800}] 776.5172 88.51 13.63 319.7835 43.43
tp @s[scores={cutSceneTimer=1801}] 776.5071 88.51 13.63 319.4836 43.43
tp @s[scores={cutSceneTimer=1802}] 776.4971 88.51 13.63 319.1836 43.43
tp @s[scores={cutSceneTimer=1803}] 776.4871 88.51 13.63 318.8836 43.43
tp @s[scores={cutSceneTimer=1804}] 776.4771 88.51 13.63 318.5836 43.43
tp @s[scores={cutSceneTimer=1805}] 776.4671 88.51 13.63 318.2836 43.43
tp @s[scores={cutSceneTimer=1806}] 776.4571 88.51 13.63 317.9836 43.43
tp @s[scores={cutSceneTimer=1807}] 776.4471 88.51 13.63 317.6836 43.43
tp @s[scores={cutSceneTimer=1808}] 776.4371 88.51 13.63 317.3836 43.43
tp @s[scores={cutSceneTimer=1809}] 776.4271 88.51 13.63 317.0836 43.43
tp @s[scores={cutSceneTimer=1810}] 776.4171 88.51 13.63 316.7837 43.43
tp @s[scores={cutSceneTimer=1811}] 776.407 88.51 13.63 316.4837 43.43
tp @s[scores={cutSceneTimer=1812}] 776.397 88.51 13.63 316.1837 43.43
tp @s[scores={cutSceneTimer=1813}] 776.387 88.51 13.63 315.8837 43.43
tp @s[scores={cutSceneTimer=1814}] 776.377 88.51 13.63 315.5837 43.43
tp @s[scores={cutSceneTimer=1815}] 776.367 88.51 13.63 315.2837 43.43
tp @s[scores={cutSceneTimer=1816}] 776.357 88.51 13.63 314.9837 43.43
tp @s[scores={cutSceneTimer=1817}] 776.347 88.51 13.63 314.6837 43.43
tp @s[scores={cutSceneTimer=1818}] 776.337 88.51 13.63 314.3838 43.43
tp @s[scores={cutSceneTimer=1819}] 776.327 88.51 13.63 314.0838 43.43
tp @s[scores={cutSceneTimer=1820}] 776.317 88.51 13.63 313.7838 43.43
tp @s[scores={cutSceneTimer=1821}] 776.3069 88.51 13.63 313.4838 43.43
tp @s[scores={cutSceneTimer=1822}] 776.2969 88.51 13.63 313.1838 43.43

# ¤Sprout:¤ Удачи!
execute as @s[scores={cutSceneTimer=1700},tag=cutsceneLeader] as @e[tag=sproutClassroom,limit=1] at @s run playsound minecraft:custom.voices.voice4 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=1700..1800}] run title @s actionbar ["",{"text":""},{"text":"Стебель;","color":"dark_gray"},{"text":" Удачи!"}]

execute as @s[scores={cutSceneTimer=1801..}] run title @s actionbar ["",{"text":" "}]

execute as @s[scores={cutSceneTimer=1801}] as @s run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=1822}] as @s run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=1822}] as @s run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=1822}] as @s run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=1822}] as @s run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=1823,playerID=1}] run tp @s 738.58 53.00 62.99 252.17 4.49
execute as @s[scores={cutSceneTimer=1823,playerID=2}] run tp @s 738.04 53.00 61.09 275.47 1.35
execute as @s[scores={cutSceneTimer=1823,playerID=3}] run tp @s 738.30 53.00 59.39 291.86 2.21
execute as @s[scores={cutSceneTimer=1823,playerID=4}] run tp @s 738.27 53.00 57.94 305.11 2.49
execute as @s[scores={cutSceneTimer=1843}] run tag @s add dontExitCutSceneSilent
execute as @s[scores={cutSceneTimer=1843}] as @s run function hp:cutscenes/exit_cutscene
execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=1}] run function hp:music/music/silence
execute as @s[scores={cutSceneTimer=22}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=22}] run function hp:cutscenes/fade_out

execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tp @e[tag=walkingTwycrossEngine2,limit=1] 9040 70 92
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=walkingTwycrossEngine2,limit=1] remove idle
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=walkingTwycrossEngine2,limit=1] remove stop
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=walkingTwycrossEngine2,limit=1] remove permStop
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=walkingTwycrossEngine2,limit=1] remove cutsceneStop
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=walkingTwycrossEngine2,limit=1] run scoreboard players set @s targetPathPoint 0
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=walkingTwycrossEngine2,limit=1] store result entity @s ArmorItems[3].tag.targetPathPoint int 1 run scoreboard players get @s targetPathPoint

execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tp @e[tag=ministryWorker1Engine,limit=1] 9039 70 91
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=ministryWorker1Engine,limit=1] remove idle
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=ministryWorker1Engine,limit=1] remove stop
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=ministryWorker1Engine,limit=1] remove permStop
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=ministryWorker1Engine,limit=1] remove cutsceneStop
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=ministryWorker1Engine,limit=1] run scoreboard players set @s targetPathPoint 0
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=ministryWorker1Engine,limit=1] store result entity @s ArmorItems[3].tag.targetPathPoint int 1 run scoreboard players get @s targetPathPoint

execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tp @e[tag=ministryWorker2Engine,limit=1] 9038 70 90
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=ministryWorker2Engine,limit=1] remove idle
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=ministryWorker2Engine,limit=1] remove stop
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=ministryWorker2Engine,limit=1] remove permStop
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] run tag @e[tag=ministryWorker2Engine,limit=1] remove cutsceneStop
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=ministryWorker2Engine,limit=1] run scoreboard players set @s targetPathPoint 0
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=ministryWorker2Engine,limit=1] store result entity @s ArmorItems[3].tag.targetPathPoint int 1 run scoreboard players get @s targetPathPoint

execute as @s[scores={cutSceneTimer=..20}] run title @s actionbar ["",{"text":" "}]

tp @s[scores={cutSceneTimer=22}] 9046.699 69.42986 100.8683 150.63 3.94
tp @s[scores={cutSceneTimer=23}] 9046.698 69.42973 100.8665 150.63 3.94
tp @s[scores={cutSceneTimer=24}] 9046.697 69.42959 100.8648 150.63 3.94
tp @s[scores={cutSceneTimer=25}] 9046.696 69.42945 100.863 150.63 3.94
tp @s[scores={cutSceneTimer=26}] 9046.695 69.42931 100.8613 150.63 3.94
tp @s[scores={cutSceneTimer=27}] 9046.694 69.42918 100.8596 150.63 3.94
tp @s[scores={cutSceneTimer=28}] 9046.693 69.42904 100.8578 150.63 3.94
tp @s[scores={cutSceneTimer=29}] 9046.692 69.4289 100.8561 150.63 3.94
tp @s[scores={cutSceneTimer=30}] 9046.691 69.42876 100.8543 150.63 3.94
tp @s[scores={cutSceneTimer=31}] 9046.69 69.42863 100.8526 150.63 3.94
tp @s[scores={cutSceneTimer=32}] 9046.689 69.42849 100.8509 150.63 3.94
tp @s[scores={cutSceneTimer=33}] 9046.688 69.42835 100.8491 150.63 3.94
tp @s[scores={cutSceneTimer=34}] 9046.688 69.42822 100.8474 150.63 3.94
tp @s[scores={cutSceneTimer=35}] 9046.687 69.42808 100.8456 150.63 3.94
tp @s[scores={cutSceneTimer=36}] 9046.686 69.42794 100.8439 150.63 3.94
tp @s[scores={cutSceneTimer=37}] 9046.685 69.4278 100.8422 150.63 3.94
tp @s[scores={cutSceneTimer=38}] 9046.684 69.42767 100.8404 150.63 3.94
tp @s[scores={cutSceneTimer=39}] 9046.683 69.42753 100.8387 150.63 3.94
tp @s[scores={cutSceneTimer=40}] 9046.682 69.42739 100.837 150.63 3.94
tp @s[scores={cutSceneTimer=41}] 9046.681 69.42725 100.8352 150.63 3.94
tp @s[scores={cutSceneTimer=42}] 9046.68 69.42712 100.8335 150.63 3.94
tp @s[scores={cutSceneTimer=43}] 9046.679 69.42698 100.8317 150.63 3.94
tp @s[scores={cutSceneTimer=44}] 9046.678 69.42684 100.83 150.63 3.94
tp @s[scores={cutSceneTimer=45}] 9046.677 69.4267 100.8283 150.63 3.94
tp @s[scores={cutSceneTimer=46}] 9046.676 69.42657 100.8265 150.63 3.94
tp @s[scores={cutSceneTimer=47}] 9046.675 69.42643 100.8248 150.63 3.94
tp @s[scores={cutSceneTimer=48}] 9046.674 69.42629 100.823 150.63 3.94
tp @s[scores={cutSceneTimer=49}] 9046.673 69.42616 100.8213 150.63 3.94
tp @s[scores={cutSceneTimer=50}] 9046.672 69.42602 100.8196 150.63 3.94
tp @s[scores={cutSceneTimer=51}] 9046.671 69.42588 100.8178 150.63 3.94
tp @s[scores={cutSceneTimer=52}] 9046.67 69.42574 100.8161 150.63 3.94
tp @s[scores={cutSceneTimer=53}] 9046.669 69.42561 100.8143 150.63 3.94
tp @s[scores={cutSceneTimer=54}] 9046.668 69.42547 100.8126 150.63 3.94
tp @s[scores={cutSceneTimer=55}] 9046.667 69.42533 100.8109 150.63 3.94
tp @s[scores={cutSceneTimer=56}] 9046.666 69.42519 100.8091 150.63 3.94
tp @s[scores={cutSceneTimer=57}] 9046.665 69.42506 100.8074 150.63 3.94
tp @s[scores={cutSceneTimer=58}] 9046.664 69.42492 100.8056 150.63 3.94
tp @s[scores={cutSceneTimer=59}] 9046.663 69.42478 100.8039 150.63 3.94
tp @s[scores={cutSceneTimer=60}] 9046.662 69.42464 100.8022 150.63 3.94
tp @s[scores={cutSceneTimer=61}] 9046.661 69.42451 100.8004 150.63 3.94
tp @s[scores={cutSceneTimer=62}] 9046.66 69.42437 100.7987 150.63 3.94
tp @s[scores={cutSceneTimer=63}] 9046.659 69.42423 100.7969 150.63 3.94
tp @s[scores={cutSceneTimer=64}] 9046.658 69.4241 100.7952 150.63 3.94
tp @s[scores={cutSceneTimer=65}] 9046.657 69.42396 100.7935 150.63 3.94
tp @s[scores={cutSceneTimer=66}] 9046.656 69.42382 100.7917 150.63 3.94
tp @s[scores={cutSceneTimer=67}] 9046.655 69.42368 100.79 150.63 3.94
tp @s[scores={cutSceneTimer=68}] 9046.654 69.42355 100.7882 150.63 3.94
tp @s[scores={cutSceneTimer=69}] 9046.653 69.42341 100.7865 150.63 3.94
tp @s[scores={cutSceneTimer=70}] 9046.652 69.42327 100.7848 150.63 3.94
tp @s[scores={cutSceneTimer=71}] 9046.651 69.42313 100.783 150.63 3.94
tp @s[scores={cutSceneTimer=72}] 9046.65 69.423 100.7813 150.63 3.94
tp @s[scores={cutSceneTimer=73}] 9046.649 69.42286 100.7795 150.63 3.94
tp @s[scores={cutSceneTimer=74}] 9046.648 69.42272 100.7778 150.63 3.94
tp @s[scores={cutSceneTimer=75}] 9046.647 69.42258 100.7761 150.63 3.94
tp @s[scores={cutSceneTimer=76}] 9046.646 69.42245 100.7743 150.63 3.94
tp @s[scores={cutSceneTimer=77}] 9046.646 69.42231 100.7726 150.63 3.94
tp @s[scores={cutSceneTimer=78}] 9046.645 69.42217 100.7709 150.63 3.94
tp @s[scores={cutSceneTimer=79}] 9046.644 69.42204 100.7691 150.63 3.94
tp @s[scores={cutSceneTimer=80}] 9046.643 69.4219 100.7674 150.63 3.94
tp @s[scores={cutSceneTimer=81}] 9046.642 69.42176 100.7656 150.63 3.94
tp @s[scores={cutSceneTimer=82}] 9046.641 69.42162 100.7639 150.63 3.94
tp @s[scores={cutSceneTimer=83}] 9046.64 69.42149 100.7622 150.63 3.94
tp @s[scores={cutSceneTimer=84}] 9046.639 69.42135 100.7604 150.63 3.94
tp @s[scores={cutSceneTimer=85}] 9046.638 69.42121 100.7587 150.63 3.94
tp @s[scores={cutSceneTimer=86}] 9046.637 69.42107 100.7569 150.63 3.94
tp @s[scores={cutSceneTimer=87}] 9046.636 69.42094 100.7552 150.63 3.94
tp @s[scores={cutSceneTimer=88}] 9046.635 69.4208 100.7535 150.63 3.94
tp @s[scores={cutSceneTimer=89}] 9046.634 69.42066 100.7517 150.63 3.94
tp @s[scores={cutSceneTimer=90}] 9046.633 69.42052 100.75 150.63 3.94
tp @s[scores={cutSceneTimer=91}] 9046.632 69.42039 100.7482 150.63 3.94
tp @s[scores={cutSceneTimer=92}] 9046.631 69.42025 100.7465 150.63 3.94
tp @s[scores={cutSceneTimer=93}] 9046.63 69.42011 100.7448 150.63 3.94
tp @s[scores={cutSceneTimer=94}] 9046.629 69.41998 100.743 150.63 3.94
tp @s[scores={cutSceneTimer=95}] 9046.628 69.41984 100.7413 150.63 3.94
tp @s[scores={cutSceneTimer=96}] 9046.627 69.4197 100.7395 150.63 3.94
tp @s[scores={cutSceneTimer=97}] 9046.626 69.41956 100.7378 150.63 3.94
tp @s[scores={cutSceneTimer=98}] 9046.625 69.41943 100.7361 150.63 3.94
tp @s[scores={cutSceneTimer=99}] 9046.624 69.41929 100.7343 150.63 3.94
tp @s[scores={cutSceneTimer=100}] 9046.623 69.41915 100.7326 150.63 3.94
tp @s[scores={cutSceneTimer=101}] 9046.622 69.41901 100.7308 150.63 3.94
tp @s[scores={cutSceneTimer=102}] 9046.621 69.41888 100.7291 150.63 3.94
tp @s[scores={cutSceneTimer=103}] 9046.62 69.41874 100.7274 150.63 3.94
tp @s[scores={cutSceneTimer=104}] 9046.619 69.4186 100.7256 150.63 3.94
tp @s[scores={cutSceneTimer=105}] 9046.618 69.41846 100.7239 150.63 3.94
tp @s[scores={cutSceneTimer=106}] 9046.617 69.41833 100.7221 150.63 3.94
tp @s[scores={cutSceneTimer=107}] 9046.616 69.41819 100.7204 150.63 3.94
tp @s[scores={cutSceneTimer=108}] 9046.615 69.41805 100.7187 150.63 3.94
tp @s[scores={cutSceneTimer=109}] 9046.614 69.41792 100.7169 150.63 3.94
tp @s[scores={cutSceneTimer=110}] 9046.613 69.41778 100.7152 150.63 3.94
tp @s[scores={cutSceneTimer=111}] 9046.612 69.41764 100.7134 150.63 3.94
tp @s[scores={cutSceneTimer=112}] 9046.611 69.4175 100.7117 150.63 3.94
tp @s[scores={cutSceneTimer=113}] 9046.61 69.41737 100.71 150.63 3.94
tp @s[scores={cutSceneTimer=114}] 9046.609 69.41723 100.7082 150.63 3.94
tp @s[scores={cutSceneTimer=115}] 9046.608 69.41709 100.7065 150.63 3.94
tp @s[scores={cutSceneTimer=116}] 9046.607 69.41695 100.7048 150.63 3.94
tp @s[scores={cutSceneTimer=117}] 9046.606 69.41682 100.703 150.63 3.94
tp @s[scores={cutSceneTimer=118}] 9046.605 69.41668 100.7013 150.63 3.94
tp @s[scores={cutSceneTimer=119}] 9046.604 69.41654 100.6995 150.63 3.94
tp @s[scores={cutSceneTimer=120}] 9046.604 69.4164 100.6978 150.63 3.94
tp @s[scores={cutSceneTimer=121}] 9046.603 69.41627 100.6961 150.63 3.94
tp @s[scores={cutSceneTimer=122}] 9046.602 69.41613 100.6943 150.63 3.94
tp @s[scores={cutSceneTimer=123}] 9046.601 69.41599 100.6926 150.63 3.94
tp @s[scores={cutSceneTimer=124}] 9046.6 69.41586 100.6908 150.63 3.94
tp @s[scores={cutSceneTimer=125}] 9046.599 69.41572 100.6891 150.63 3.94
tp @s[scores={cutSceneTimer=126}] 9046.598 69.41558 100.6874 150.63 3.94
tp @s[scores={cutSceneTimer=127}] 9046.597 69.41544 100.6856 150.63 3.94
tp @s[scores={cutSceneTimer=128}] 9046.596 69.41531 100.6839 150.63 3.94
tp @s[scores={cutSceneTimer=129}] 9046.595 69.41517 100.6821 150.63 3.94
tp @s[scores={cutSceneTimer=130}] 9046.594 69.41503 100.6804 150.63 3.94
tp @s[scores={cutSceneTimer=131}] 9046.593 69.41489 100.6787 150.63 3.94
tp @s[scores={cutSceneTimer=132}] 9046.592 69.41476 100.6769 150.63 3.94
tp @s[scores={cutSceneTimer=133}] 9046.591 69.41462 100.6752 150.63 3.94
tp @s[scores={cutSceneTimer=134}] 9046.59 69.41448 100.6734 150.63 3.94
tp @s[scores={cutSceneTimer=135}] 9046.589 69.41434 100.6717 150.63 3.94
tp @s[scores={cutSceneTimer=136}] 9046.588 69.41421 100.67 150.63 3.94
tp @s[scores={cutSceneTimer=137}] 9046.587 69.41407 100.6682 150.63 3.94
tp @s[scores={cutSceneTimer=138}] 9046.586 69.41393 100.6665 150.63 3.94
tp @s[scores={cutSceneTimer=139}] 9046.585 69.4138 100.6647 150.63 3.94
tp @s[scores={cutSceneTimer=140}] 9046.584 69.41366 100.663 150.63 3.94
tp @s[scores={cutSceneTimer=141}] 9046.583 69.41352 100.6613 150.63 3.94
tp @s[scores={cutSceneTimer=142}] 9046.582 69.41338 100.6595 150.63 3.94
tp @s[scores={cutSceneTimer=143}] 9046.581 69.41325 100.6578 150.63 3.94
tp @s[scores={cutSceneTimer=144}] 9046.58 69.41311 100.656 150.63 3.94
tp @s[scores={cutSceneTimer=145}] 9046.579 69.41297 100.6543 150.63 3.94
tp @s[scores={cutSceneTimer=146}] 9046.578 69.41283 100.6526 150.63 3.94
tp @s[scores={cutSceneTimer=147}] 9046.577 69.4127 100.6508 150.63 3.94
tp @s[scores={cutSceneTimer=148}] 9046.576 69.41256 100.6491 150.63 3.94
tp @s[scores={cutSceneTimer=149}] 9046.575 69.41242 100.6473 150.63 3.94
tp @s[scores={cutSceneTimer=150}] 9046.574 69.41228 100.6456 150.63 3.94
tp @s[scores={cutSceneTimer=151}] 9046.573 69.41215 100.6439 150.63 3.94
tp @s[scores={cutSceneTimer=152}] 9046.572 69.41201 100.6421 150.63 3.94
tp @s[scores={cutSceneTimer=153}] 9046.571 69.41187 100.6404 150.63 3.94
tp @s[scores={cutSceneTimer=154}] 9046.57 69.41174 100.6386 150.63 3.94
tp @s[scores={cutSceneTimer=155}] 9046.569 69.4116 100.6369 150.63 3.94
tp @s[scores={cutSceneTimer=156}] 9046.568 69.41146 100.6352 150.63 3.94
tp @s[scores={cutSceneTimer=157}] 9046.567 69.41132 100.6334 150.63 3.94
tp @s[scores={cutSceneTimer=158}] 9046.566 69.41119 100.6317 150.63 3.94
tp @s[scores={cutSceneTimer=159}] 9046.565 69.41105 100.63 150.63 3.94
tp @s[scores={cutSceneTimer=160}] 9046.564 69.41091 100.6282 150.63 3.94
tp @s[scores={cutSceneTimer=161}] 9046.563 69.41077 100.6265 150.63 3.94
tp @s[scores={cutSceneTimer=162}] 9046.563 69.41064 100.6247 150.63 3.94
tp @s[scores={cutSceneTimer=163}] 9046.562 69.4105 100.623 150.63 3.94
tp @s[scores={cutSceneTimer=164}] 9046.561 69.41036 100.6213 150.63 3.94
tp @s[scores={cutSceneTimer=165}] 9046.56 69.41022 100.6195 150.63 3.94
tp @s[scores={cutSceneTimer=166}] 9046.559 69.41009 100.6178 150.63 3.94
tp @s[scores={cutSceneTimer=167}] 9046.558 69.40995 100.616 150.63 3.94
tp @s[scores={cutSceneTimer=168}] 9046.557 69.40981 100.6143 150.63 3.94
tp @s[scores={cutSceneTimer=169}] 9046.556 69.40968 100.6126 150.63 3.94
tp @s[scores={cutSceneTimer=170}] 9046.555 69.40954 100.6108 150.63 3.94
tp @s[scores={cutSceneTimer=171}] 9046.554 69.4094 100.6091 150.63 3.94
tp @s[scores={cutSceneTimer=172}] 9046.553 69.40926 100.6073 150.63 3.94
tp @s[scores={cutSceneTimer=173}] 9046.552 69.40913 100.6056 150.63 3.94
tp @s[scores={cutSceneTimer=174}] 9046.551 69.40899 100.6039 150.63 3.94
tp @s[scores={cutSceneTimer=175}] 9046.55 69.40885 100.6021 150.63 3.94
tp @s[scores={cutSceneTimer=176}] 9046.549 69.40871 100.6004 150.63 3.94
tp @s[scores={cutSceneTimer=177}] 9046.548 69.40858 100.5986 150.63 3.94
tp @s[scores={cutSceneTimer=178}] 9046.547 69.40844 100.5969 150.63 3.94
tp @s[scores={cutSceneTimer=179}] 9046.546 69.4083 100.5952 150.63 3.94
tp @s[scores={cutSceneTimer=180}] 9046.545 69.40816 100.5934 150.63 3.94
tp @s[scores={cutSceneTimer=181}] 9046.544 69.40803 100.5917 150.63 3.94
tp @s[scores={cutSceneTimer=182}] 9046.543 69.40789 100.5899 150.63 3.94
tp @s[scores={cutSceneTimer=183}] 9046.542 69.40775 100.5882 150.63 3.94
tp @s[scores={cutSceneTimer=184}] 9046.541 69.40762 100.5865 150.63 3.94
tp @s[scores={cutSceneTimer=185}] 9046.54 69.40748 100.5847 150.63 3.94
tp @s[scores={cutSceneTimer=186}] 9046.539 69.40734 100.583 150.63 3.94
tp @s[scores={cutSceneTimer=187}] 9046.538 69.4072 100.5812 150.63 3.94
tp @s[scores={cutSceneTimer=188}] 9046.537 69.40707 100.5795 150.63 3.94
tp @s[scores={cutSceneTimer=189}] 9046.536 69.40693 100.5778 150.63 3.94
tp @s[scores={cutSceneTimer=190}] 9046.535 69.40679 100.576 150.63 3.94
tp @s[scores={cutSceneTimer=191}] 9046.534 69.40665 100.5743 150.63 3.94
tp @s[scores={cutSceneTimer=192}] 9046.533 69.40652 100.5725 150.63 3.94
tp @s[scores={cutSceneTimer=193}] 9046.532 69.40638 100.5708 150.63 3.94
tp @s[scores={cutSceneTimer=194}] 9046.531 69.40624 100.5691 150.63 3.94
tp @s[scores={cutSceneTimer=195}] 9046.53 69.40611 100.5673 150.63 3.94
tp @s[scores={cutSceneTimer=196}] 9046.529 69.40597 100.5656 150.63 3.94
tp @s[scores={cutSceneTimer=197}] 9046.528 69.40583 100.5639 150.63 3.94
tp @s[scores={cutSceneTimer=198}] 9046.527 69.40569 100.5621 150.63 3.94
tp @s[scores={cutSceneTimer=199}] 9046.526 69.40556 100.5604 150.63 3.94
tp @s[scores={cutSceneTimer=200}] 9046.525 69.40542 100.5586 150.63 3.94

execute as @s[scores={cutSceneTimer=190}] run tag @s add fastFade
execute as @s[scores={cutSceneTimer=190}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=200}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=210}] run tag @s remove fastFade

tp @s[scores={cutSceneTimer=201}] 9046.841 69.24001 97.84052 121.62 0.68
tp @s[scores={cutSceneTimer=202}] 9046.842 69.24003 97.84105 121.62 0.68
tp @s[scores={cutSceneTimer=203}] 9046.843 69.24004 97.84158 121.62 0.68
tp @s[scores={cutSceneTimer=204}] 9046.844 69.24006 97.8421 121.62 0.68
tp @s[scores={cutSceneTimer=205}] 9046.845 69.24007 97.84263 121.62 0.68
tp @s[scores={cutSceneTimer=206}] 9046.846 69.24009 97.84315 121.62 0.68
tp @s[scores={cutSceneTimer=207}] 9046.847 69.2401 97.84368 121.62 0.68
tp @s[scores={cutSceneTimer=208}] 9046.848 69.24012 97.84421 121.62 0.68
tp @s[scores={cutSceneTimer=209}] 9046.849 69.24014 97.84473 121.62 0.68
tp @s[scores={cutSceneTimer=210}] 9046.85 69.24015 97.84526 121.62 0.68
tp @s[scores={cutSceneTimer=211}] 9046.851 69.24017 97.84579 121.62 0.68
tp @s[scores={cutSceneTimer=212}] 9046.852 69.24018 97.84631 121.62 0.68
tp @s[scores={cutSceneTimer=213}] 9046.853 69.2402 97.84684 121.62 0.68
tp @s[scores={cutSceneTimer=214}] 9046.854 69.24021 97.84737 121.62 0.68
tp @s[scores={cutSceneTimer=215}] 9046.854 69.24023 97.84789 121.62 0.68
tp @s[scores={cutSceneTimer=216}] 9046.855 69.24024 97.84842 121.62 0.68
tp @s[scores={cutSceneTimer=217}] 9046.856 69.24026 97.84895 121.62 0.68
tp @s[scores={cutSceneTimer=218}] 9046.857 69.24027 97.84947 121.62 0.68
tp @s[scores={cutSceneTimer=219}] 9046.858 69.24029 97.85 121.62 0.68
tp @s[scores={cutSceneTimer=220}] 9046.859 69.2403 97.85052 121.62 0.68
tp @s[scores={cutSceneTimer=221}] 9046.86 69.24032 97.85105 121.62 0.68
tp @s[scores={cutSceneTimer=222}] 9046.861 69.24033 97.85158 121.62 0.68
tp @s[scores={cutSceneTimer=223}] 9046.862 69.24035 97.8521 121.62 0.68
tp @s[scores={cutSceneTimer=224}] 9046.863 69.24036 97.85263 121.62 0.68
tp @s[scores={cutSceneTimer=225}] 9046.864 69.24038 97.85316 121.62 0.68
tp @s[scores={cutSceneTimer=226}] 9046.865 69.24039 97.85368 121.62 0.68
tp @s[scores={cutSceneTimer=227}] 9046.866 69.24041 97.85421 121.62 0.68
tp @s[scores={cutSceneTimer=228}] 9046.867 69.24043 97.85474 121.62 0.68
tp @s[scores={cutSceneTimer=229}] 9046.868 69.24044 97.85526 121.62 0.68
tp @s[scores={cutSceneTimer=230}] 9046.869 69.24046 97.85579 121.62 0.68
tp @s[scores={cutSceneTimer=231}] 9046.87 69.24047 97.85632 121.62 0.68
tp @s[scores={cutSceneTimer=232}] 9046.871 69.24049 97.85684 121.62 0.68
tp @s[scores={cutSceneTimer=233}] 9046.872 69.2405 97.85737 121.62 0.68
tp @s[scores={cutSceneTimer=234}] 9046.873 69.24052 97.85789 121.62 0.68
tp @s[scores={cutSceneTimer=235}] 9046.874 69.24053 97.85842 121.62 0.68
tp @s[scores={cutSceneTimer=236}] 9046.875 69.24055 97.85895 121.62 0.68
tp @s[scores={cutSceneTimer=237}] 9046.876 69.24056 97.85947 121.62 0.68
tp @s[scores={cutSceneTimer=238}] 9046.877 69.24058 97.86 121.62 0.68
tp @s[scores={cutSceneTimer=239}] 9046.878 69.24059 97.86053 121.62 0.68
tp @s[scores={cutSceneTimer=240}] 9046.879 69.24061 97.86105 121.62 0.68
tp @s[scores={cutSceneTimer=241}] 9046.88 69.24062 97.86158 121.62 0.68
tp @s[scores={cutSceneTimer=242}] 9046.881 69.24064 97.86211 121.62 0.68
tp @s[scores={cutSceneTimer=243}] 9046.882 69.24065 97.86263 121.62 0.68
tp @s[scores={cutSceneTimer=244}] 9046.883 69.24067 97.86316 121.62 0.68
tp @s[scores={cutSceneTimer=245}] 9046.884 69.24068 97.86369 121.62 0.68
tp @s[scores={cutSceneTimer=246}] 9046.885 69.2407 97.86421 121.62 0.68
tp @s[scores={cutSceneTimer=247}] 9046.886 69.24072 97.86474 121.62 0.68
tp @s[scores={cutSceneTimer=248}] 9046.887 69.24073 97.86526 121.62 0.68
tp @s[scores={cutSceneTimer=249}] 9046.888 69.24075 97.86579 121.62 0.68
tp @s[scores={cutSceneTimer=250}] 9046.889 69.24076 97.86632 121.62 0.68
tp @s[scores={cutSceneTimer=251}] 9046.89 69.24078 97.86684 121.62 0.68
tp @s[scores={cutSceneTimer=252}] 9046.891 69.24079 97.86737 121.62 0.68
tp @s[scores={cutSceneTimer=253}] 9046.892 69.24081 97.8679 121.62 0.68
tp @s[scores={cutSceneTimer=254}] 9046.893 69.24082 97.86842 121.62 0.68
tp @s[scores={cutSceneTimer=255}] 9046.894 69.24084 97.86895 121.62 0.68
tp @s[scores={cutSceneTimer=256}] 9046.895 69.24085 97.86948 121.62 0.68
tp @s[scores={cutSceneTimer=257}] 9046.896 69.24087 97.87 121.62 0.68
tp @s[scores={cutSceneTimer=258}] 9046.896 69.24088 97.87053 121.62 0.68
tp @s[scores={cutSceneTimer=259}] 9046.897 69.2409 97.87106 121.62 0.68
tp @s[scores={cutSceneTimer=260}] 9046.898 69.24091 97.87158 121.62 0.68
tp @s[scores={cutSceneTimer=261}] 9046.899 69.24093 97.87211 121.62 0.68
tp @s[scores={cutSceneTimer=262}] 9046.9 69.24094 97.87263 121.62 0.68
tp @s[scores={cutSceneTimer=263}] 9046.901 69.24096 97.87316 121.62 0.68
tp @s[scores={cutSceneTimer=264}] 9046.902 69.24097 97.87369 121.62 0.68
tp @s[scores={cutSceneTimer=265}] 9046.903 69.24099 97.87421 121.62 0.68
tp @s[scores={cutSceneTimer=266}] 9046.904 69.241 97.87474 121.62 0.68
tp @s[scores={cutSceneTimer=267}] 9046.905 69.24102 97.87527 121.62 0.68
tp @s[scores={cutSceneTimer=268}] 9046.906 69.24104 97.87579 121.62 0.68
tp @s[scores={cutSceneTimer=269}] 9046.907 69.24105 97.87632 121.62 0.68
tp @s[scores={cutSceneTimer=270}] 9046.908 69.24107 97.87685 121.62 0.68
tp @s[scores={cutSceneTimer=271}] 9046.909 69.24108 97.87737 121.62 0.68
tp @s[scores={cutSceneTimer=272}] 9046.91 69.2411 97.8779 121.62 0.68
tp @s[scores={cutSceneTimer=273}] 9046.911 69.24111 97.87843 121.62 0.68
tp @s[scores={cutSceneTimer=274}] 9046.912 69.24113 97.87895 121.62 0.68
tp @s[scores={cutSceneTimer=275}] 9046.913 69.24114 97.87948 121.62 0.68
tp @s[scores={cutSceneTimer=276}] 9046.914 69.24116 97.88 121.62 0.68
tp @s[scores={cutSceneTimer=277}] 9046.915 69.24117 97.88053 121.62 0.68
tp @s[scores={cutSceneTimer=278}] 9046.916 69.24119 97.88106 121.62 0.68
tp @s[scores={cutSceneTimer=279}] 9046.917 69.2412 97.88158 121.62 0.68
tp @s[scores={cutSceneTimer=280}] 9046.918 69.24122 97.88211 121.62 0.68
tp @s[scores={cutSceneTimer=281}] 9046.919 69.24123 97.88264 121.62 0.68
tp @s[scores={cutSceneTimer=282}] 9046.92 69.24125 97.88316 121.62 0.68
tp @s[scores={cutSceneTimer=283}] 9046.921 69.24126 97.88369 121.62 0.68
tp @s[scores={cutSceneTimer=284}] 9046.922 69.24128 97.88422 121.62 0.68
tp @s[scores={cutSceneTimer=285}] 9046.923 69.24129 97.88474 121.62 0.68
tp @s[scores={cutSceneTimer=286}] 9046.924 69.24131 97.88527 121.62 0.68
tp @s[scores={cutSceneTimer=287}] 9046.925 69.24133 97.8858 121.62 0.68
tp @s[scores={cutSceneTimer=288}] 9046.926 69.24134 97.88632 121.62 0.68
tp @s[scores={cutSceneTimer=289}] 9046.927 69.24136 97.88685 121.62 0.68
tp @s[scores={cutSceneTimer=290}] 9046.928 69.24137 97.88737 121.62 0.68
tp @s[scores={cutSceneTimer=291}] 9046.929 69.24139 97.8879 121.62 0.68
tp @s[scores={cutSceneTimer=292}] 9046.93 69.2414 97.88843 121.62 0.68
tp @s[scores={cutSceneTimer=293}] 9046.931 69.24142 97.88895 121.62 0.68
tp @s[scores={cutSceneTimer=294}] 9046.932 69.24143 97.88948 121.62 0.68
tp @s[scores={cutSceneTimer=295}] 9046.933 69.24145 97.89001 121.62 0.68
tp @s[scores={cutSceneTimer=296}] 9046.934 69.24146 97.89053 121.62 0.68
tp @s[scores={cutSceneTimer=297}] 9046.935 69.24148 97.89106 121.62 0.68
tp @s[scores={cutSceneTimer=298}] 9046.936 69.24149 97.89159 121.62 0.68
tp @s[scores={cutSceneTimer=299}] 9046.937 69.24151 97.89211 121.62 0.68
tp @s[scores={cutSceneTimer=300}] 9046.938 69.24152 97.89264 121.62 0.68
tp @s[scores={cutSceneTimer=301}] 9046.938 69.24154 97.89317 121.62 0.68
tp @s[scores={cutSceneTimer=302}] 9046.939 69.24155 97.89369 121.62 0.68
tp @s[scores={cutSceneTimer=303}] 9046.94 69.24157 97.89422 121.62 0.68
tp @s[scores={cutSceneTimer=304}] 9046.941 69.24158 97.89474 121.62 0.68
tp @s[scores={cutSceneTimer=305}] 9046.942 69.2416 97.89527 121.62 0.68
tp @s[scores={cutSceneTimer=306}] 9046.943 69.24162 97.8958 121.62 0.68
tp @s[scores={cutSceneTimer=307}] 9046.944 69.24163 97.89632 121.62 0.68
tp @s[scores={cutSceneTimer=308}] 9046.945 69.24165 97.89685 121.62 0.68
tp @s[scores={cutSceneTimer=309}] 9046.946 69.24166 97.89738 121.62 0.68
tp @s[scores={cutSceneTimer=310}] 9046.947 69.24168 97.8979 121.62 0.68
tp @s[scores={cutSceneTimer=311}] 9046.948 69.24169 97.89843 121.62 0.68
tp @s[scores={cutSceneTimer=312}] 9046.949 69.24171 97.89896 121.62 0.68
tp @s[scores={cutSceneTimer=313}] 9046.95 69.24172 97.89948 121.62 0.68
tp @s[scores={cutSceneTimer=314}] 9046.951 69.24174 97.90001 121.62 0.68
tp @s[scores={cutSceneTimer=315}] 9046.952 69.24175 97.90054 121.62 0.68
tp @s[scores={cutSceneTimer=316}] 9046.953 69.24177 97.90106 121.62 0.68
tp @s[scores={cutSceneTimer=317}] 9046.954 69.24178 97.90159 121.62 0.68
tp @s[scores={cutSceneTimer=318}] 9046.955 69.2418 97.90211 121.62 0.68
tp @s[scores={cutSceneTimer=319}] 9046.956 69.24181 97.90264 121.62 0.68
tp @s[scores={cutSceneTimer=320}] 9046.957 69.24183 97.90317 121.62 0.68
tp @s[scores={cutSceneTimer=321}] 9046.958 69.24184 97.90369 121.62 0.68
tp @s[scores={cutSceneTimer=322}] 9046.959 69.24186 97.90422 121.62 0.68
tp @s[scores={cutSceneTimer=323}] 9046.96 69.24187 97.90475 121.62 0.68
tp @s[scores={cutSceneTimer=324}] 9046.961 69.24189 97.90527 121.62 0.68
tp @s[scores={cutSceneTimer=325}] 9046.962 69.24191 97.9058 121.62 0.68
tp @s[scores={cutSceneTimer=326}] 9046.963 69.24192 97.90633 121.62 0.68
tp @s[scores={cutSceneTimer=327}] 9046.964 69.24194 97.90685 121.62 0.68
tp @s[scores={cutSceneTimer=328}] 9046.965 69.24195 97.90738 121.62 0.68
tp @s[scores={cutSceneTimer=329}] 9046.966 69.24197 97.90791 121.62 0.68
tp @s[scores={cutSceneTimer=330}] 9046.967 69.24198 97.90843 121.62 0.68
tp @s[scores={cutSceneTimer=331}] 9046.968 69.242 97.90896 121.62 0.68
tp @s[scores={cutSceneTimer=332}] 9046.969 69.24201 97.90948 121.62 0.68
tp @s[scores={cutSceneTimer=333}] 9046.97 69.24203 97.91001 121.62 0.68
tp @s[scores={cutSceneTimer=334}] 9046.971 69.24204 97.91054 121.62 0.68
tp @s[scores={cutSceneTimer=335}] 9046.972 69.24206 97.91106 121.62 0.68
tp @s[scores={cutSceneTimer=336}] 9046.973 69.24207 97.91159 121.62 0.68
tp @s[scores={cutSceneTimer=337}] 9046.974 69.24209 97.91212 121.62 0.68
tp @s[scores={cutSceneTimer=338}] 9046.975 69.2421 97.91264 121.62 0.68
tp @s[scores={cutSceneTimer=339}] 9046.976 69.24212 97.91317 121.62 0.68
tp @s[scores={cutSceneTimer=340}] 9046.977 69.24213 97.9137 121.62 0.68
tp @s[scores={cutSceneTimer=341}] 9046.978 69.24215 97.91422 121.62 0.68
tp @s[scores={cutSceneTimer=342}] 9046.979 69.24216 97.91475 121.62 0.68
tp @s[scores={cutSceneTimer=343}] 9046.979 69.24218 97.91528 121.62 0.68
tp @s[scores={cutSceneTimer=344}] 9046.98 69.2422 97.9158 121.62 0.68
tp @s[scores={cutSceneTimer=345}] 9046.981 69.24221 97.91633 121.62 0.68
tp @s[scores={cutSceneTimer=346}] 9046.982 69.24223 97.91685 121.62 0.68
tp @s[scores={cutSceneTimer=347}] 9046.983 69.24224 97.91738 121.62 0.68
tp @s[scores={cutSceneTimer=348}] 9046.984 69.24226 97.91791 121.62 0.68
tp @s[scores={cutSceneTimer=349}] 9046.985 69.24227 97.91843 121.62 0.68
tp @s[scores={cutSceneTimer=350}] 9046.986 69.24229 97.91896 121.62 0.68
tp @s[scores={cutSceneTimer=351}] 9046.987 69.2423 97.91949 121.62 0.68
tp @s[scores={cutSceneTimer=352}] 9046.988 69.24232 97.92001 121.62 0.68
tp @s[scores={cutSceneTimer=353}] 9046.989 69.24233 97.92054 121.62 0.68
tp @s[scores={cutSceneTimer=354}] 9046.99 69.24235 97.92107 121.62 0.68
tp @s[scores={cutSceneTimer=355}] 9046.991 69.24236 97.92159 121.62 0.68
tp @s[scores={cutSceneTimer=356}] 9046.992 69.24238 97.92212 121.62 0.68
tp @s[scores={cutSceneTimer=357}] 9046.993 69.24239 97.92265 121.62 0.68
tp @s[scores={cutSceneTimer=358}] 9046.994 69.24241 97.92317 121.62 0.68
tp @s[scores={cutSceneTimer=359}] 9046.995 69.24242 97.9237 121.62 0.68
tp @s[scores={cutSceneTimer=360}] 9046.996 69.24244 97.92422 121.62 0.68
tp @s[scores={cutSceneTimer=361}] 9046.997 69.24245 97.92475 121.62 0.68
tp @s[scores={cutSceneTimer=362}] 9046.998 69.24247 97.92528 121.62 0.68
tp @s[scores={cutSceneTimer=363}] 9046.999 69.24249 97.9258 121.62 0.68
tp @s[scores={cutSceneTimer=364}] 9047.000 69.2425 97.92633 121.62 0.68
tp @s[scores={cutSceneTimer=365}] 9047.001 69.24252 97.92686 121.62 0.68
tp @s[scores={cutSceneTimer=366}] 9047.002 69.24253 97.92738 121.62 0.68
tp @s[scores={cutSceneTimer=367}] 9047.003 69.24255 97.92791 121.62 0.68
tp @s[scores={cutSceneTimer=368}] 9047.004 69.24256 97.92844 121.62 0.68
tp @s[scores={cutSceneTimer=369}] 9047.005 69.24258 97.92896 121.62 0.68
tp @s[scores={cutSceneTimer=370}] 9047.006 69.24259 97.92949 121.62 0.68
tp @s[scores={cutSceneTimer=371}] 9047.007 69.24261 97.93002 121.62 0.68
tp @s[scores={cutSceneTimer=372}] 9047.008 69.24262 97.93054 121.62 0.68
tp @s[scores={cutSceneTimer=373}] 9047.009 69.24264 97.93107 121.62 0.68
tp @s[scores={cutSceneTimer=374}] 9047.01 69.24265 97.93159 121.62 0.68
tp @s[scores={cutSceneTimer=375}] 9047.011 69.24267 97.93212 121.62 0.68
tp @s[scores={cutSceneTimer=376}] 9047.012 69.24268 97.93265 121.62 0.68
tp @s[scores={cutSceneTimer=377}] 9047.013 69.2427 97.93317 121.62 0.68
tp @s[scores={cutSceneTimer=378}] 9047.014 69.24271 97.9337 121.62 0.68
tp @s[scores={cutSceneTimer=379}] 9047.015 69.24273 97.93423 121.62 0.68
tp @s[scores={cutSceneTimer=380}] 9047.016 69.24274 97.93475 121.62 0.68
tp @s[scores={cutSceneTimer=381}] 9047.017 69.24276 97.93528 121.62 0.68
tp @s[scores={cutSceneTimer=382}] 9047.018 69.24277 97.93581 121.62 0.68
tp @s[scores={cutSceneTimer=383}] 9047.019 69.24279 97.93633 121.62 0.68
tp @s[scores={cutSceneTimer=384}] 9047.02 69.24281 97.93686 121.62 0.68
tp @s[scores={cutSceneTimer=385}] 9047.021 69.24282 97.93739 121.62 0.68
tp @s[scores={cutSceneTimer=386}] 9047.021 69.24284 97.93791 121.62 0.68
tp @s[scores={cutSceneTimer=387}] 9047.022 69.24285 97.93844 121.62 0.68
tp @s[scores={cutSceneTimer=388}] 9047.023 69.24287 97.93896 121.62 0.68
tp @s[scores={cutSceneTimer=389}] 9047.024 69.24288 97.93949 121.62 0.68
tp @s[scores={cutSceneTimer=390}] 9047.025 69.2429 97.94002 121.62 0.68
tp @s[scores={cutSceneTimer=391}] 9047.026 69.24291 97.94054 121.62 0.68
tp @s[scores={cutSceneTimer=392}] 9047.027 69.24293 97.94107 121.62 0.68
tp @s[scores={cutSceneTimer=393}] 9047.028 69.24294 97.9416 121.62 0.68
tp @s[scores={cutSceneTimer=394}] 9047.029 69.24296 97.94212 121.62 0.68
tp @s[scores={cutSceneTimer=395}] 9047.03 69.24297 97.94265 121.62 0.68
tp @s[scores={cutSceneTimer=396}] 9047.031 69.24299 97.94318 121.62 0.68
tp @s[scores={cutSceneTimer=397}] 9047.032 69.243 97.9437 121.62 0.68
tp @s[scores={cutSceneTimer=398}] 9047.033 69.24302 97.94423 121.62 0.68
tp @s[scores={cutSceneTimer=399}] 9047.034 69.24303 97.94476 121.62 0.68
tp @s[scores={cutSceneTimer=400}] 9047.035 69.24305 97.94528 121.62 0.68
tp @s[scores={cutSceneTimer=401}] 9047.036 69.24306 97.94581 121.62 0.68
tp @s[scores={cutSceneTimer=402}] 9047.037 69.24308 97.94633 121.62 0.68
tp @s[scores={cutSceneTimer=403}] 9047.038 69.2431 97.94686 121.62 0.68
tp @s[scores={cutSceneTimer=404}] 9047.039 69.24311 97.94739 121.62 0.68
tp @s[scores={cutSceneTimer=405}] 9047.04 69.24313 97.94791 121.62 0.68
tp @s[scores={cutSceneTimer=406}] 9047.041 69.24314 97.94844 121.62 0.68
tp @s[scores={cutSceneTimer=407}] 9047.042 69.24316 97.94897 121.62 0.68
tp @s[scores={cutSceneTimer=408}] 9047.043 69.24317 97.94949 121.62 0.68
tp @s[scores={cutSceneTimer=409}] 9047.044 69.24319 97.95002 121.62 0.68
tp @s[scores={cutSceneTimer=410}] 9047.045 69.2432 97.95055 121.62 0.68
tp @s[scores={cutSceneTimer=411}] 9047.046 69.24322 97.95107 121.62 0.68
tp @s[scores={cutSceneTimer=412}] 9047.047 69.24323 97.9516 121.62 0.68
tp @s[scores={cutSceneTimer=413}] 9047.048 69.24325 97.95213 121.62 0.68
tp @s[scores={cutSceneTimer=414}] 9047.049 69.24326 97.95265 121.62 0.68
tp @s[scores={cutSceneTimer=415}] 9047.05 69.24328 97.95318 121.62 0.68
tp @s[scores={cutSceneTimer=416}] 9047.051 69.24329 97.9537 121.62 0.68
tp @s[scores={cutSceneTimer=417}] 9047.052 69.24331 97.95423 121.62 0.68
tp @s[scores={cutSceneTimer=418}] 9047.053 69.24332 97.95476 121.62 0.68
tp @s[scores={cutSceneTimer=419}] 9047.054 69.24334 97.95528 121.62 0.68
tp @s[scores={cutSceneTimer=420}] 9047.055 69.24335 97.95581 121.62 0.68
tp @s[scores={cutSceneTimer=421}] 9047.056 69.24337 97.95634 121.62 0.68
tp @s[scores={cutSceneTimer=422}] 9047.057 69.24339 97.95686 121.62 0.68
tp @s[scores={cutSceneTimer=423}] 9047.058 69.2434 97.95739 121.62 0.68
tp @s[scores={cutSceneTimer=424}] 9047.059 69.24342 97.95792 121.62 0.68
tp @s[scores={cutSceneTimer=425}] 9047.06 69.24343 97.95844 121.62 0.68
tp @s[scores={cutSceneTimer=426}] 9047.061 69.24345 97.95897 121.62 0.68
tp @s[scores={cutSceneTimer=427}] 9047.062 69.24346 97.9595 121.62 0.68
tp @s[scores={cutSceneTimer=428}] 9047.063 69.24348 97.96002 121.62 0.68
tp @s[scores={cutSceneTimer=429}] 9047.063 69.24349 97.96055 121.62 0.68
tp @s[scores={cutSceneTimer=430}] 9047.064 69.24351 97.96107 121.62 0.68
tp @s[scores={cutSceneTimer=431}] 9047.065 69.24352 97.9616 121.62 0.68
tp @s[scores={cutSceneTimer=432}] 9047.066 69.24354 97.96213 121.62 0.68
tp @s[scores={cutSceneTimer=433}] 9047.067 69.24355 97.96265 121.62 0.68
tp @s[scores={cutSceneTimer=434}] 9047.068 69.24357 97.96318 121.62 0.68
tp @s[scores={cutSceneTimer=435}] 9047.069 69.24358 97.96371 121.62 0.68
tp @s[scores={cutSceneTimer=436}] 9047.07 69.2436 97.96423 121.62 0.68
tp @s[scores={cutSceneTimer=437}] 9047.071 69.24361 97.96476 121.62 0.68
tp @s[scores={cutSceneTimer=438}] 9047.072 69.24363 97.96529 121.62 0.68
tp @s[scores={cutSceneTimer=439}] 9047.073 69.24364 97.96581 121.62 0.68
tp @s[scores={cutSceneTimer=440}] 9047.074 69.24366 97.96634 121.62 0.68
tp @s[scores={cutSceneTimer=441}] 9047.075 69.24368 97.96687 121.62 0.68
tp @s[scores={cutSceneTimer=442}] 9047.076 69.24369 97.96739 121.62 0.68
tp @s[scores={cutSceneTimer=443}] 9047.077 69.24371 97.96792 121.62 0.68
tp @s[scores={cutSceneTimer=444}] 9047.078 69.24372 97.96844 121.62 0.68
tp @s[scores={cutSceneTimer=445}] 9047.079 69.24374 97.96897 121.62 0.68
tp @s[scores={cutSceneTimer=446}] 9047.08 69.24375 97.9695 121.62 0.68
tp @s[scores={cutSceneTimer=447}] 9047.081 69.24377 97.97002 121.62 0.68
tp @s[scores={cutSceneTimer=448}] 9047.082 69.24378 97.97055 121.62 0.68
tp @s[scores={cutSceneTimer=449}] 9047.083 69.2438 97.97108 121.62 0.68
tp @s[scores={cutSceneTimer=450}] 9047.084 69.24381 97.9716 121.62 0.68
tp @s[scores={cutSceneTimer=451}] 9047.085 69.24383 97.97213 121.62 0.68
tp @s[scores={cutSceneTimer=452}] 9047.086 69.24384 97.97266 121.62 0.68
tp @s[scores={cutSceneTimer=453}] 9047.087 69.24386 97.97318 121.62 0.68
tp @s[scores={cutSceneTimer=454}] 9047.088 69.24387 97.97371 121.62 0.68
tp @s[scores={cutSceneTimer=455}] 9047.089 69.24389 97.97424 121.62 0.68
tp @s[scores={cutSceneTimer=456}] 9047.09 69.2439 97.97476 121.62 0.68
tp @s[scores={cutSceneTimer=457}] 9047.091 69.24392 97.97529 121.62 0.68
tp @s[scores={cutSceneTimer=458}] 9047.092 69.24393 97.97581 121.62 0.68
tp @s[scores={cutSceneTimer=459}] 9047.093 69.24395 97.97634 121.62 0.68
tp @s[scores={cutSceneTimer=460}] 9047.094 69.24397 97.97687 121.62 0.68
tp @s[scores={cutSceneTimer=461}] 9047.095 69.24398 97.97739 121.62 0.68
tp @s[scores={cutSceneTimer=462}] 9047.096 69.244 97.97792 121.62 0.68
tp @s[scores={cutSceneTimer=463}] 9047.097 69.24401 97.97845 121.62 0.68
tp @s[scores={cutSceneTimer=464}] 9047.098 69.24403 97.97897 121.62 0.68
tp @s[scores={cutSceneTimer=465}] 9047.099 69.24404 97.9795 121.62 0.68
tp @s[scores={cutSceneTimer=466}] 9047.1 69.24406 97.98003 121.62 0.68
tp @s[scores={cutSceneTimer=467}] 9047.101 69.24407 97.98055 121.62 0.68
tp @s[scores={cutSceneTimer=468}] 9047.102 69.24409 97.98108 121.62 0.68
tp @s[scores={cutSceneTimer=469}] 9047.103 69.2441 97.98161 121.62 0.68
tp @s[scores={cutSceneTimer=470}] 9047.104 69.24412 97.98213 121.62 0.68
tp @s[scores={cutSceneTimer=471}] 9047.104 69.24413 97.98266 121.62 0.68
tp @s[scores={cutSceneTimer=472}] 9047.105 69.24415 97.98318 121.62 0.68
tp @s[scores={cutSceneTimer=473}] 9047.106 69.24416 97.98371 121.62 0.68
tp @s[scores={cutSceneTimer=474}] 9047.107 69.24418 97.98424 121.62 0.68
tp @s[scores={cutSceneTimer=475}] 9047.108 69.24419 97.98476 121.62 0.68
tp @s[scores={cutSceneTimer=476}] 9047.109 69.24421 97.98529 121.62 0.68
tp @s[scores={cutSceneTimer=477}] 9047.11 69.24422 97.98582 121.62 0.68
tp @s[scores={cutSceneTimer=478}] 9047.111 69.24424 97.98634 121.62 0.68
tp @s[scores={cutSceneTimer=479}] 9047.112 69.24426 97.98687 121.62 0.68
tp @s[scores={cutSceneTimer=480}] 9047.113 69.24427 97.9874 121.62 0.68
tp @s[scores={cutSceneTimer=481}] 9047.114 69.24429 97.98792 121.62 0.68
tp @s[scores={cutSceneTimer=482}] 9047.115 69.2443 97.98845 121.62 0.68
tp @s[scores={cutSceneTimer=483}] 9047.116 69.24432 97.98898 121.62 0.68
tp @s[scores={cutSceneTimer=484}] 9047.117 69.24433 97.9895 121.62 0.68
tp @s[scores={cutSceneTimer=485}] 9047.118 69.24435 97.99003 121.62 0.68
tp @s[scores={cutSceneTimer=486}] 9047.119 69.24436 97.99055 121.62 0.68
tp @s[scores={cutSceneTimer=487}] 9047.12 69.24438 97.99108 121.62 0.68
tp @s[scores={cutSceneTimer=488}] 9047.121 69.24439 97.99161 121.62 0.68
tp @s[scores={cutSceneTimer=489}] 9047.122 69.24441 97.99213 121.62 0.68
tp @s[scores={cutSceneTimer=490}] 9047.123 69.24442 97.99266 121.62 0.68
tp @s[scores={cutSceneTimer=491}] 9047.124 69.24444 97.99319 121.62 0.68
tp @s[scores={cutSceneTimer=492}] 9047.125 69.24445 97.99371 121.62 0.68
tp @s[scores={cutSceneTimer=493}] 9047.126 69.24447 97.99424 121.62 0.68
tp @s[scores={cutSceneTimer=494}] 9047.127 69.24448 97.99477 121.62 0.68
tp @s[scores={cutSceneTimer=495}] 9047.128 69.2445 97.99529 121.62 0.68
tp @s[scores={cutSceneTimer=496}] 9047.129 69.24451 97.99582 121.62 0.68
tp @s[scores={cutSceneTimer=497}] 9047.13 69.24453 97.99635 121.62 0.68
tp @s[scores={cutSceneTimer=498}] 9047.131 69.24454 97.99687 121.62 0.68
tp @s[scores={cutSceneTimer=499}] 9047.132 69.24456 97.9974 121.62 0.68
tp @s[scores={cutSceneTimer=500}] 9047.133 69.24458 97.99792 121.62 0.68
tp @s[scores={cutSceneTimer=501}] 9047.134 69.24459 97.99845 121.62 0.68
tp @s[scores={cutSceneTimer=502}] 9047.135 69.24461 97.99898 121.62 0.68
tp @s[scores={cutSceneTimer=503}] 9047.136 69.24462 97.9995 121.62 0.68
tp @s[scores={cutSceneTimer=504}] 9047.137 69.24464 98.00003 121.62 0.68
tp @s[scores={cutSceneTimer=505}] 9047.138 69.24465 98.00056 121.62 0.68
tp @s[scores={cutSceneTimer=506}] 9047.139 69.24467 98.00108 121.62 0.68
tp @s[scores={cutSceneTimer=507}] 9047.14 69.24468 98.00161 121.62 0.68
tp @s[scores={cutSceneTimer=508}] 9047.141 69.2447 98.00214 121.62 0.68
tp @s[scores={cutSceneTimer=509}] 9047.142 69.24471 98.00266 121.62 0.68
tp @s[scores={cutSceneTimer=510}] 9047.143 69.24473 98.00319 121.62 0.68
tp @s[scores={cutSceneTimer=511}] 9047.144 69.24474 98.00372 121.62 0.68
tp @s[scores={cutSceneTimer=512}] 9047.145 69.24476 98.00424 121.62 0.68
tp @s[scores={cutSceneTimer=513}] 9047.146 69.24477 98.00477 121.62 0.68
tp @s[scores={cutSceneTimer=514}] 9047.146 69.24479 98.00529 121.62 0.68
tp @s[scores={cutSceneTimer=515}] 9047.147 69.2448 98.00582 121.62 0.68
tp @s[scores={cutSceneTimer=516}] 9047.148 69.24482 98.00635 121.62 0.68
tp @s[scores={cutSceneTimer=517}] 9047.149 69.24483 98.00687 121.62 0.68
tp @s[scores={cutSceneTimer=518}] 9047.15 69.24485 98.0074 121.62 0.68
tp @s[scores={cutSceneTimer=519}] 9047.151 69.24487 98.00793 121.62 0.68
tp @s[scores={cutSceneTimer=520}] 9047.152 69.24488 98.00845 121.62 0.68
tp @s[scores={cutSceneTimer=521}] 9047.153 69.2449 98.00898 121.62 0.68
tp @s[scores={cutSceneTimer=522}] 9047.154 69.24491 98.00951 121.62 0.68
tp @s[scores={cutSceneTimer=523}] 9047.155 69.24493 98.01003 121.62 0.68
tp @s[scores={cutSceneTimer=524}] 9047.156 69.24494 98.01056 121.62 0.68
tp @s[scores={cutSceneTimer=525}] 9047.157 69.24496 98.01109 121.62 0.68
tp @s[scores={cutSceneTimer=526}] 9047.158 69.24497 98.01161 121.62 0.68
tp @s[scores={cutSceneTimer=527}] 9047.159 69.24499 98.01214 121.62 0.68
tp @s[scores={cutSceneTimer=528}] 9047.16 69.245 98.01266 121.62 0.68
tp @s[scores={cutSceneTimer=529}] 9047.161 69.24502 98.01319 121.62 0.68
tp @s[scores={cutSceneTimer=530}] 9047.162 69.24503 98.01372 121.62 0.68
tp @s[scores={cutSceneTimer=531}] 9047.163 69.24505 98.01424 121.62 0.68
tp @s[scores={cutSceneTimer=532}] 9047.164 69.24506 98.01477 121.62 0.68
tp @s[scores={cutSceneTimer=533}] 9047.165 69.24508 98.0153 121.62 0.68
tp @s[scores={cutSceneTimer=534}] 9047.166 69.24509 98.01582 121.62 0.68
tp @s[scores={cutSceneTimer=535}] 9047.167 69.24511 98.01635 121.62 0.68
tp @s[scores={cutSceneTimer=536}] 9047.168 69.24512 98.01688 121.62 0.68
tp @s[scores={cutSceneTimer=537}] 9047.169 69.24514 98.0174 121.62 0.68
tp @s[scores={cutSceneTimer=538}] 9047.17 69.24516 98.01793 121.62 0.68
tp @s[scores={cutSceneTimer=539}] 9047.171 69.24517 98.01846 121.62 0.68
tp @s[scores={cutSceneTimer=540}] 9047.172 69.24519 98.01898 121.62 0.68
tp @s[scores={cutSceneTimer=541}] 9047.173 69.2452 98.01951 121.62 0.68
tp @s[scores={cutSceneTimer=542}] 9047.174 69.24522 98.02003 121.62 0.68
tp @s[scores={cutSceneTimer=543}] 9047.175 69.24523 98.02056 121.62 0.68
tp @s[scores={cutSceneTimer=544}] 9047.176 69.24525 98.02109 121.62 0.68
tp @s[scores={cutSceneTimer=545}] 9047.177 69.24526 98.02161 121.62 0.68
tp @s[scores={cutSceneTimer=546}] 9047.178 69.24528 98.02214 121.62 0.68
tp @s[scores={cutSceneTimer=547}] 9047.179 69.24529 98.02267 121.62 0.68
tp @s[scores={cutSceneTimer=548}] 9047.18 69.24531 98.02319 121.62 0.68
tp @s[scores={cutSceneTimer=549}] 9047.181 69.24532 98.02372 121.62 0.68
tp @s[scores={cutSceneTimer=550}] 9047.182 69.24534 98.02425 121.62 0.68
tp @s[scores={cutSceneTimer=551}] 9047.183 69.24535 98.02477 121.62 0.68
tp @s[scores={cutSceneTimer=552}] 9047.184 69.24537 98.0253 121.62 0.68
tp @s[scores={cutSceneTimer=553}] 9047.185 69.24538 98.02583 121.62 0.68
tp @s[scores={cutSceneTimer=554}] 9047.186 69.2454 98.02635 121.62 0.68
tp @s[scores={cutSceneTimer=555}] 9047.187 69.24541 98.02688 121.62 0.68
tp @s[scores={cutSceneTimer=556}] 9047.188 69.24543 98.0274 121.62 0.68
tp @s[scores={cutSceneTimer=557}] 9047.188 69.24545 98.02793 121.62 0.68
tp @s[scores={cutSceneTimer=558}] 9047.189 69.24546 98.02846 121.62 0.68
tp @s[scores={cutSceneTimer=559}] 9047.19 69.24548 98.02898 121.62 0.68
tp @s[scores={cutSceneTimer=560}] 9047.191 69.24549 98.02951 121.62 0.68
tp @s[scores={cutSceneTimer=561}] 9047.192 69.24551 98.03004 121.62 0.68
tp @s[scores={cutSceneTimer=562}] 9047.193 69.24552 98.03056 121.62 0.68
tp @s[scores={cutSceneTimer=563}] 9047.194 69.24554 98.03109 121.62 0.68
tp @s[scores={cutSceneTimer=564}] 9047.195 69.24555 98.03162 121.62 0.68
tp @s[scores={cutSceneTimer=565}] 9047.196 69.24557 98.03214 121.62 0.68
tp @s[scores={cutSceneTimer=566}] 9047.197 69.24558 98.03267 121.62 0.68
tp @s[scores={cutSceneTimer=567}] 9047.198 69.2456 98.0332 121.62 0.68
tp @s[scores={cutSceneTimer=568}] 9047.199 69.24561 98.03372 121.62 0.68
tp @s[scores={cutSceneTimer=569}] 9047.2 69.24563 98.03425 121.62 0.68
tp @s[scores={cutSceneTimer=570}] 9047.201 69.24564 98.03477 121.62 0.68
tp @s[scores={cutSceneTimer=571}] 9047.202 69.24566 98.0353 121.62 0.68
tp @s[scores={cutSceneTimer=572}] 9047.203 69.24567 98.03583 121.62 0.68
tp @s[scores={cutSceneTimer=573}] 9047.204 69.24569 98.03635 121.62 0.68
tp @s[scores={cutSceneTimer=574}] 9047.205 69.2457 98.03688 121.62 0.68
tp @s[scores={cutSceneTimer=575}] 9047.206 69.24572 98.03741 121.62 0.68
tp @s[scores={cutSceneTimer=576}] 9047.207 69.24574 98.03793 121.62 0.68
tp @s[scores={cutSceneTimer=577}] 9047.208 69.24575 98.03846 121.62 0.68
tp @s[scores={cutSceneTimer=578}] 9047.209 69.24577 98.03899 121.62 0.68
tp @s[scores={cutSceneTimer=579}] 9047.21 69.24578 98.03951 121.62 0.68
tp @s[scores={cutSceneTimer=580}] 9047.211 69.2458 98.04004 121.62 0.68
tp @s[scores={cutSceneTimer=581}] 9047.212 69.24581 98.04057 121.62 0.68
tp @s[scores={cutSceneTimer=582}] 9047.213 69.24583 98.04109 121.62 0.68
tp @s[scores={cutSceneTimer=583}] 9047.214 69.24584 98.04162 121.62 0.68
tp @s[scores={cutSceneTimer=584}] 9047.215 69.24586 98.04214 121.62 0.68
tp @s[scores={cutSceneTimer=585}] 9047.216 69.24587 98.04267 121.62 0.68
tp @s[scores={cutSceneTimer=586}] 9047.217 69.24589 98.0432 121.62 0.68
tp @s[scores={cutSceneTimer=587}] 9047.218 69.2459 98.04372 121.62 0.68
tp @s[scores={cutSceneTimer=588}] 9047.219 69.24592 98.04425 121.62 0.68
tp @s[scores={cutSceneTimer=589}] 9047.22 69.24593 98.04478 121.62 0.68
tp @s[scores={cutSceneTimer=590}] 9047.221 69.24595 98.0453 121.62 0.68
tp @s[scores={cutSceneTimer=591}] 9047.222 69.24596 98.04583 121.62 0.68
tp @s[scores={cutSceneTimer=592}] 9047.223 69.24598 98.04636 121.62 0.68


# ¤Twycross:¤ Don't worry, I'm here! I've brought reinforcements...
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=20..110}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"       "}]
execute as @s[scores={cutSceneTimer=20},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=27},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=31},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=38},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=42},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=49},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=53},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=60},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] run function hp:npc/update_npc_head_neutral


# Look around hack
execute as @s[scores={cutSceneTimer=80},tag=cutsceneLeader] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set @s tmp 350
execute as @s[scores={cutSceneTimer=80}] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] run tag @s add isInterrupted
execute as @s[scores={cutSceneTimer=80}] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] run tag @s add interrupt

execute as @s[scores={cutSceneTimer=100},tag=cutsceneLeader] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set @s tmp 280
execute as @s[scores={cutSceneTimer=100}] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] run tag @s add isInterrupted
execute as @s[scores={cutSceneTimer=100}] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] run tag @s add interrupt

execute as @s[scores={cutSceneTimer=120},tag=cutsceneLeader] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set @s tmp 315
execute as @s[scores={cutSceneTimer=120}] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] run tag @s add isInterrupted
execute as @s[scores={cutSceneTimer=120}] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] run tag @s add interrupt


execute as @s[scores={cutSceneTimer=110},tag=cutsceneLeader] as @e[tag=fpEngine,tag=ministryWorker2Engine,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set @s tmp 355
execute as @s[scores={cutSceneTimer=110}] as @e[tag=fpEngine,tag=ministryWorker2Engine,limit=1] run tag @s add isInterrupted
execute as @s[scores={cutSceneTimer=110}] as @e[tag=fpEngine,tag=ministryWorker2Engine,limit=1] run tag @s add interrupt

execute as @s[scores={cutSceneTimer=127},tag=cutsceneLeader] as @e[tag=fpEngine,tag=ministryWorker2Engine,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set @s tmp 290
execute as @s[scores={cutSceneTimer=127}] as @e[tag=fpEngine,tag=ministryWorker2Engine,limit=1] run tag @s add isInterrupted
execute as @s[scores={cutSceneTimer=127}] as @e[tag=fpEngine,tag=ministryWorker2Engine,limit=1] run tag @s add interrupt

execute as @s[scores={cutSceneTimer=146},tag=cutsceneLeader] as @e[tag=fpEngine,tag=ministryWorker2Engine,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set @s tmp 10
execute as @s[scores={cutSceneTimer=146}] as @e[tag=fpEngine,tag=ministryWorker2Engine,limit=1] run tag @s add isInterrupted
execute as @s[scores={cutSceneTimer=146}] as @e[tag=fpEngine,tag=ministryWorker2Engine,limit=1] run tag @s add interrupt


execute as @s[scores={cutSceneTimer=110},tag=cutsceneLeader] as @e[tag=fpEngine,tag=ministryWorker1Engine,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set @s tmp 350
execute as @s[scores={cutSceneTimer=110}] as @e[tag=fpEngine,tag=ministryWorker1Engine,limit=1] run tag @s add isInterrupted
execute as @s[scores={cutSceneTimer=110}] as @e[tag=fpEngine,tag=ministryWorker1Engine,limit=1] run tag @s add interrupt

execute as @s[scores={cutSceneTimer=130},tag=cutsceneLeader] as @e[tag=fpEngine,tag=ministryWorker1Engine,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set @s tmp 280
execute as @s[scores={cutSceneTimer=130}] as @e[tag=fpEngine,tag=ministryWorker1Engine,limit=1] run tag @s add isInterrupted
execute as @s[scores={cutSceneTimer=130}] as @e[tag=fpEngine,tag=ministryWorker1Engine,limit=1] run tag @s add interrupt

execute as @s[scores={cutSceneTimer=150},tag=cutsceneLeader] as @e[tag=fpEngine,tag=ministryWorker1Engine,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set @s tmp 270
execute as @s[scores={cutSceneTimer=150}] as @e[tag=fpEngine,tag=ministryWorker1Engine,limit=1] run tag @s add isInterrupted
execute as @s[scores={cutSceneTimer=150}] as @e[tag=fpEngine,tag=ministryWorker1Engine,limit=1] run tag @s add interrupt

execute as @s[scores={cutSceneTimer=190},tag=cutsceneLeader] as @e[tag=fpEngine,tag=ministryWorker1Engine,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set @s tmp 240
execute as @s[scores={cutSceneTimer=190}] as @e[tag=fpEngine,tag=ministryWorker1Engine,limit=1] run tag @s add isInterrupted
execute as @s[scores={cutSceneTimer=190}] as @e[tag=fpEngine,tag=ministryWorker1Engine,limit=1] run tag @s add interrupt

execute as @s[scores={cutSceneTimer=210},tag=cutsceneLeader] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set @s tmp 20
execute as @s[scores={cutSceneTimer=210}] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] run tag @s add isInterrupted
execute as @s[scores={cutSceneTimer=210}] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] run tag @s add interrupt

execute as @s[scores={cutSceneTimer=505},tag=cutsceneLeader] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set @s tmp 135
execute as @s[scores={cutSceneTimer=505}] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] run tag @s add isInterrupted
execute as @s[scores={cutSceneTimer=505}] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] run tag @s add interrupt

execute as @s[scores={cutSceneTimer=230},tag=cutsceneLeader] as @e[tag=fpEngine,tag=ministryWorker2Engine,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set @s tmp 40
execute as @s[scores={cutSceneTimer=230}] as @e[tag=fpEngine,tag=ministryWorker2Engine,limit=1] run tag @s add isInterrupted
execute as @s[scores={cutSceneTimer=230}] as @e[tag=fpEngine,tag=ministryWorker2Engine,limit=1] run tag @s add interrupt



execute as @s[scores={cutSceneTimer=590},tag=cutsceneLeader] run tp @e[tag=ministryWorker1Engine,limit=1] 9039 63 91
execute as @s[scores={cutSceneTimer=590},tag=cutsceneLeader] run tag @e[tag=ministryWorker1Engine,limit=1] remove idle
execute as @s[scores={cutSceneTimer=590},tag=cutsceneLeader] run tag @e[tag=ministryWorker1Engine,limit=1] remove stop
execute as @s[scores={cutSceneTimer=590},tag=cutsceneLeader] run tag @e[tag=ministryWorker1Engine,limit=1] remove permStop
execute as @s[scores={cutSceneTimer=590},tag=cutsceneLeader] run tag @e[tag=ministryWorker1Engine,limit=1] add cutsceneStop
execute as @s[scores={cutSceneTimer=590},tag=cutsceneLeader] as @e[tag=ministryWorker1Engine,limit=1] run scoreboard players set @s targetPathPoint 0
execute as @s[scores={cutSceneTimer=590},tag=cutsceneLeader] as @e[tag=ministryWorker1Engine,limit=1] store result entity @s ArmorItems[3].tag.targetPathPoint int 1 run scoreboard players get @s targetPathPoint

execute as @s[scores={cutSceneTimer=590},tag=cutsceneLeader] run tp @e[tag=ministryWorker2Engine,limit=1] 9038 63 90
execute as @s[scores={cutSceneTimer=590},tag=cutsceneLeader] run tag @e[tag=ministryWorker2Engine,limit=1] remove idle
execute as @s[scores={cutSceneTimer=590},tag=cutsceneLeader] run tag @e[tag=ministryWorker2Engine,limit=1] remove stop
execute as @s[scores={cutSceneTimer=590},tag=cutsceneLeader] run tag @e[tag=ministryWorker2Engine,limit=1] remove permStop
execute as @s[scores={cutSceneTimer=590},tag=cutsceneLeader] run tag @e[tag=ministryWorker2Engine,limit=1] add cutsceneStop
execute as @s[scores={cutSceneTimer=590},tag=cutsceneLeader] as @e[tag=ministryWorker2Engine,limit=1] run scoreboard players set @s targetPathPoint 0
execute as @s[scores={cutSceneTimer=590},tag=cutsceneLeader] as @e[tag=ministryWorker2Engine,limit=1] store result entity @s ArmorItems[3].tag.targetPathPoint int 1 run scoreboard players get @s targetPathPoint

execute as @s[scores={cutSceneTimer=590},tag=cutsceneLeader] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set @s tmp 315
execute as @s[scores={cutSceneTimer=590}] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] run tag @s add isInterrupted
execute as @s[scores={cutSceneTimer=590}] as @e[tag=fpEngine,tag=walkingTwycrossEngine2,limit=1] run tag @s add interrupt




# ¤Twycross:¤ Oh. It seems you have this situation under control.
execute as @s[scores={cutSceneTimer=111},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=111..200}] run title @s actionbar ["",{"text":""},{"text":"","color":"dark_gray"},{"text":"         "}]
execute as @s[scores={cutSceneTimer=111},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=118},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=122},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=129},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=133},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=140},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=144},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=151},tag=cutsceneLeader] as @e[tag=walkingTwycross2,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Ministry Worker:¤ What situation? Deatheaters...? Nonsense. These are outrageous claims!
execute as @s[scores={cutSceneTimer=201},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=201..300}] run title @s actionbar ["",{"text":""},{"text":" ","color":"dark_gray"},{"text":"        "}]
execute as @s[scores={cutSceneTimer=201},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=208},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=212},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=219},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=223},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=230},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=234},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=241},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_neutral

execute as @s[scores={cutSceneTimer=201}] as @e[tag=fpEngine,tag=ministryWorker1Engine,limit=1] store result entity @s ArmorItems[3].tag.npcRotY int 1 run scoreboard players set @s tmp 100

# ¤Ministry Worker:¤ Seems plain to me what happened here.
execute as @s[scores={cutSceneTimer=301},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=301..360}] run title @s actionbar ["",{"text":""},{"text":" ","color":"dark_gray"},{"text":"       "}]
execute as @s[scores={cutSceneTimer=301},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=308},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=312},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=319},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=323},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=330},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=334},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=341},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_neutral

# ¤Ministry Worker:¤ One of your students accidentally blew up this wall, and now you're trying to cover it up.
execute as @s[scores={cutSceneTimer=361},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=361..450}] run title @s actionbar ["",{"text":""},{"text":" ","color":"dark_gray"},{"text":"                 "}]
execute as @s[scores={cutSceneTimer=361},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=368},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=372},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=379},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=383},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=390},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=394},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=401},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_neutral


# ¤Ministry Worker:¤ I'm keeping an eye on you, Twycross.
execute as @s[scores={cutSceneTimer=451},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] at @s run playsound minecraft:custom.voices.voice1 master @a ~ ~ ~ 1000 1 1
execute as @s[scores={cutSceneTimer=451..540}] run title @s actionbar ["",{"text":""},{"text":" ","color":"dark_gray"},{"text":"       "}]
execute as @s[scores={cutSceneTimer=451},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=458},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=462},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=469},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=473},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=480},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_neutral
execute as @s[scores={cutSceneTimer=484},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_expression
execute as @s[scores={cutSceneTimer=491},tag=cutsceneLeader] as @e[tag=ministryWorker1,limit=1] run function hp:npc/update_npc_head_neutral

execute as @s[scores={cutSceneTimer=490},tag=cutsceneLeader] run tag @e[tag=ministryWorker1Engine,limit=1] remove cutsceneStop
execute as @s[scores={cutSceneTimer=500},tag=cutsceneLeader] run tag @e[tag=ministryWorker2Engine,limit=1] remove cutsceneStop


# Clear subtitles instantly rather than a slow fade I can't control
execute as @s[scores={cutSceneTimer=541..}] run title @s actionbar ""


execute as @s[scores={cutSceneTimer=570}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=592}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=592}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=592}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=592}] run effect clear @s blindness
execute as @s[scores={cutSceneTimer=592}] run effect clear @s night_vision
execute as @s[scores={cutSceneTimer=592}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=592}] as @p[tag=cutsceneSlave,scores={playerID=1}] run tp @s 9047.03 69.00 98.99 134.87 -0.07
execute as @s[scores={cutSceneTimer=592}] as @p[tag=cutsceneSlave,scores={playerID=2}] run tp @s 9046.08 69.00 99.86 148.66 -0.45
execute as @s[scores={cutSceneTimer=592}] as @p[tag=cutsceneSlave,scores={playerID=3}] run tp @s 9047.88 69.00 98.02 117.11 0.26
execute as @s[scores={cutSceneTimer=592}] as @p[tag=cutsceneSlave,scores={playerID=4}] run tp @s 9048.31 69.00 96.28 96.16 0.64
execute as @s[scores={cutSceneTimer=613}] run function hp:cutscenes/exit_cutscene



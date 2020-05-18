execute as @s[scores={cutSceneTimer=20}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=42}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=42}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=42}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=42}] run function hp:cutscenes/fade_out

title @s actionbar ["",{"text":" "}]


# 1
execute as @s[scores={cutSceneTimer=70},tag=cutsceneLeader] run playsound minecraft:custom.fx.metal_door_open master @a 6470 47 -3 1 1 1
execute as @s[scores={cutSceneTimer=70},tag=cutsceneLeader] run setblock 6470 46 -4 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute as @s[scores={cutSceneTimer=70},tag=cutsceneLeader] run setblock 6470 47 -4 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute as @s[scores={cutSceneTimer=70},tag=cutsceneLeader] run setblock 6470 48 -4 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
# 2 
execute as @s[scores={cutSceneTimer=72},tag=cutsceneLeader] run setblock 6470 46 -4 minecraft:air
execute as @s[scores={cutSceneTimer=72},tag=cutsceneLeader] run setblock 6470 47 -4 minecraft:air
execute as @s[scores={cutSceneTimer=72},tag=cutsceneLeader] run setblock 6470 48 -4 minecraft:air
execute as @s[scores={cutSceneTimer=72},tag=cutsceneLeader] run setblock 6470 46 -3 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute as @s[scores={cutSceneTimer=72},tag=cutsceneLeader] run setblock 6470 47 -3 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute as @s[scores={cutSceneTimer=72},tag=cutsceneLeader] run setblock 6470 48 -3 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
# 3
execute as @s[scores={cutSceneTimer=74},tag=cutsceneLeader] run setblock 6470 46 -3 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute as @s[scores={cutSceneTimer=74},tag=cutsceneLeader] run setblock 6470 47 -3 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute as @s[scores={cutSceneTimer=74},tag=cutsceneLeader] run setblock 6470 48 -3 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
# 4
execute as @s[scores={cutSceneTimer=76},tag=cutsceneLeader] run setblock 6470 46 -3 minecraft:air
execute as @s[scores={cutSceneTimer=76},tag=cutsceneLeader] run setblock 6470 47 -3 minecraft:air
execute as @s[scores={cutSceneTimer=76},tag=cutsceneLeader] run setblock 6470 48 -3 minecraft:air
execute as @s[scores={cutSceneTimer=76},tag=cutsceneLeader] run setblock 6470 46 -2 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute as @s[scores={cutSceneTimer=76},tag=cutsceneLeader] run setblock 6470 47 -2 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute as @s[scores={cutSceneTimer=76},tag=cutsceneLeader] run setblock 6470 48 -2 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
# 5
execute as @s[scores={cutSceneTimer=78},tag=cutsceneLeader] run setblock 6470 46 -2 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute as @s[scores={cutSceneTimer=78},tag=cutsceneLeader] run setblock 6470 47 -2 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute as @s[scores={cutSceneTimer=78},tag=cutsceneLeader] run setblock 6470 48 -2 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
# 6
execute as @s[scores={cutSceneTimer=80},tag=cutsceneLeader] run setblock 6470 46 -2 minecraft:air
execute as @s[scores={cutSceneTimer=80},tag=cutsceneLeader] run setblock 6470 47 -2 minecraft:air
execute as @s[scores={cutSceneTimer=80},tag=cutsceneLeader] run setblock 6470 48 -2 minecraft:air

tp @s[scores={cutSceneTimer=42}] 6478.51 46.48944 -3.939164 2960.8 6.28
tp @s[scores={cutSceneTimer=43}] 6478.509 46.48941 -3.939124 2960.8 6.28
tp @s[scores={cutSceneTimer=44}] 6478.509 46.48939 -3.939084 2960.8 6.28
tp @s[scores={cutSceneTimer=45}] 6478.508 46.48936 -3.939044 2960.8 6.28
tp @s[scores={cutSceneTimer=46}] 6478.508 46.48933 -3.939005 2960.8 6.28
tp @s[scores={cutSceneTimer=47}] 6478.507 46.48931 -3.938965 2960.8 6.28
tp @s[scores={cutSceneTimer=48}] 6478.507 46.48928 -3.938925 2960.8 6.28
tp @s[scores={cutSceneTimer=49}] 6478.506 46.48925 -3.938885 2960.8 6.28
tp @s[scores={cutSceneTimer=50}] 6478.506 46.48923 -3.938845 2960.8 6.28
tp @s[scores={cutSceneTimer=51}] 6478.505 46.4892 -3.938806 2960.8 6.28
tp @s[scores={cutSceneTimer=52}] 6478.505 46.48917 -3.938766 2960.8 6.28
tp @s[scores={cutSceneTimer=53}] 6478.504 46.48915 -3.938726 2960.8 6.28
tp @s[scores={cutSceneTimer=54}] 6478.504 46.48912 -3.938686 2960.8 6.28
tp @s[scores={cutSceneTimer=55}] 6478.503 46.48909 -3.938646 2960.8 6.28
tp @s[scores={cutSceneTimer=56}] 6478.503 46.48907 -3.938607 2960.8 6.28
tp @s[scores={cutSceneTimer=57}] 6478.502 46.48904 -3.938567 2960.8 6.28
tp @s[scores={cutSceneTimer=58}] 6478.502 46.48901 -3.938527 2960.8 6.28
tp @s[scores={cutSceneTimer=59}] 6478.501 46.48899 -3.938487 2960.8 6.28
tp @s[scores={cutSceneTimer=60}] 6478.501 46.48896 -3.938447 2960.8 6.28
tp @s[scores={cutSceneTimer=61}] 6478.5 46.48893 -3.938407 2960.8 6.28
tp @s[scores={cutSceneTimer=62}] 6478.5 46.48891 -3.938368 2960.8 6.28
tp @s[scores={cutSceneTimer=63}] 6478.5 46.48888 -3.938328 2960.8 6.28
tp @s[scores={cutSceneTimer=64}] 6478.499 46.48885 -3.938288 2960.8 6.28
tp @s[scores={cutSceneTimer=65}] 6478.499 46.48883 -3.938248 2960.8 6.28
tp @s[scores={cutSceneTimer=66}] 6478.498 46.4888 -3.938208 2960.8 6.28
tp @s[scores={cutSceneTimer=67}] 6478.498 46.48877 -3.938169 2960.8 6.28
tp @s[scores={cutSceneTimer=68}] 6478.497 46.48875 -3.938129 2960.8 6.28
tp @s[scores={cutSceneTimer=69}] 6478.497 46.48872 -3.938089 2960.8 6.28
tp @s[scores={cutSceneTimer=70}] 6478.496 46.48869 -3.938049 2960.8 6.28
tp @s[scores={cutSceneTimer=71}] 6478.496 46.48867 -3.938009 2960.8 6.28
tp @s[scores={cutSceneTimer=72}] 6478.495 46.48864 -3.937969 2960.8 6.28
tp @s[scores={cutSceneTimer=73}] 6478.495 46.48861 -3.93793 2960.8 6.28
tp @s[scores={cutSceneTimer=74}] 6478.494 46.48859 -3.93789 2960.8 6.28
tp @s[scores={cutSceneTimer=75}] 6478.494 46.48856 -3.93785 2960.8 6.28
tp @s[scores={cutSceneTimer=76}] 6478.493 46.48853 -3.93781 2960.8 6.28
tp @s[scores={cutSceneTimer=77}] 6478.493 46.48851 -3.93777 2960.8 6.28
tp @s[scores={cutSceneTimer=78}] 6478.492 46.48848 -3.937731 2960.8 6.28
tp @s[scores={cutSceneTimer=79}] 6478.492 46.48845 -3.937691 2960.8 6.28
tp @s[scores={cutSceneTimer=80}] 6478.491 46.48843 -3.937651 2960.8 6.28
tp @s[scores={cutSceneTimer=81}] 6478.491 46.4884 -3.937611 2960.8 6.28
tp @s[scores={cutSceneTimer=82}] 6478.49 46.48837 -3.937571 2960.8 6.28
tp @s[scores={cutSceneTimer=83}] 6478.49 46.48835 -3.937531 2960.8 6.28
tp @s[scores={cutSceneTimer=84}] 6478.489 46.48832 -3.937492 2960.8 6.28
tp @s[scores={cutSceneTimer=85}] 6478.489 46.48829 -3.937452 2960.8 6.28
tp @s[scores={cutSceneTimer=86}] 6478.488 46.48827 -3.937412 2960.8 6.28
tp @s[scores={cutSceneTimer=87}] 6478.488 46.48824 -3.937372 2960.8 6.28
tp @s[scores={cutSceneTimer=88}] 6478.487 46.48821 -3.937332 2960.8 6.28
tp @s[scores={cutSceneTimer=89}] 6478.487 46.48819 -3.937293 2960.8 6.28
tp @s[scores={cutSceneTimer=90}] 6478.486 46.48816 -3.937253 2960.8 6.28
tp @s[scores={cutSceneTimer=91}] 6478.486 46.48813 -3.937213 2960.8 6.28
tp @s[scores={cutSceneTimer=92}] 6478.485 46.48811 -3.937173 2960.8 6.28
tp @s[scores={cutSceneTimer=93}] 6478.485 46.48808 -3.937133 2960.8 6.28
tp @s[scores={cutSceneTimer=94}] 6478.484 46.48805 -3.937093 2960.8 6.28
tp @s[scores={cutSceneTimer=95}] 6478.484 46.48803 -3.937054 2960.8 6.28
tp @s[scores={cutSceneTimer=96}] 6478.483 46.488 -3.937014 2960.8 6.28
tp @s[scores={cutSceneTimer=97}] 6478.483 46.48797 -3.936974 2960.8 6.28
tp @s[scores={cutSceneTimer=98}] 6478.482 46.48795 -3.936934 2960.8 6.28
tp @s[scores={cutSceneTimer=99}] 6478.482 46.48792 -3.936894 2960.8 6.28
tp @s[scores={cutSceneTimer=100}] 6478.481 46.48789 -3.936855 2960.8 6.28
tp @s[scores={cutSceneTimer=101}] 6478.481 46.48787 -3.936815 2960.8 6.28
tp @s[scores={cutSceneTimer=102}] 6478.48 46.48784 -3.936775 2960.8 6.28
tp @s[scores={cutSceneTimer=103}] 6478.48 46.48781 -3.936735 2960.8 6.28
tp @s[scores={cutSceneTimer=104}] 6478.479 46.48779 -3.936695 2960.8 6.28
tp @s[scores={cutSceneTimer=105}] 6478.479 46.48776 -3.936656 2960.8 6.28
tp @s[scores={cutSceneTimer=106}] 6478.479 46.48773 -3.936616 2960.8 6.28
tp @s[scores={cutSceneTimer=107}] 6478.478 46.48771 -3.936576 2960.8 6.28
tp @s[scores={cutSceneTimer=108}] 6478.478 46.48768 -3.936536 2960.8 6.28
tp @s[scores={cutSceneTimer=109}] 6478.477 46.48765 -3.936496 2960.8 6.28
tp @s[scores={cutSceneTimer=110}] 6478.477 46.48763 -3.936456 2960.8 6.28
tp @s[scores={cutSceneTimer=111}] 6478.476 46.4876 -3.936417 2960.8 6.28
tp @s[scores={cutSceneTimer=112}] 6478.476 46.48757 -3.936377 2960.8 6.28
tp @s[scores={cutSceneTimer=113}] 6478.475 46.48755 -3.936337 2960.8 6.28
tp @s[scores={cutSceneTimer=114}] 6478.475 46.48752 -3.936297 2960.8 6.28
tp @s[scores={cutSceneTimer=115}] 6478.474 46.48749 -3.936257 2960.8 6.28
tp @s[scores={cutSceneTimer=116}] 6478.474 46.48746 -3.936218 2960.8 6.28
tp @s[scores={cutSceneTimer=117}] 6478.473 46.48744 -3.936178 2960.8 6.28
tp @s[scores={cutSceneTimer=118}] 6478.473 46.48741 -3.936138 2960.8 6.28
tp @s[scores={cutSceneTimer=119}] 6478.472 46.48738 -3.936098 2960.8 6.28
tp @s[scores={cutSceneTimer=120}] 6478.472 46.48736 -3.936058 2960.8 6.28
tp @s[scores={cutSceneTimer=121}] 6478.471 46.48733 -3.936018 2960.8 6.28
tp @s[scores={cutSceneTimer=122}] 6478.471 46.4873 -3.935979 2960.8 6.28
tp @s[scores={cutSceneTimer=123}] 6478.47 46.48728 -3.935939 2960.8 6.28
tp @s[scores={cutSceneTimer=124}] 6478.47 46.48725 -3.935899 2960.8 6.28
tp @s[scores={cutSceneTimer=125}] 6478.469 46.48722 -3.935859 2960.8 6.28
tp @s[scores={cutSceneTimer=126}] 6478.469 46.4872 -3.935819 2960.8 6.28
tp @s[scores={cutSceneTimer=127}] 6478.468 46.48717 -3.93578 2960.8 6.28
tp @s[scores={cutSceneTimer=128}] 6478.468 46.48714 -3.93574 2960.8 6.28
tp @s[scores={cutSceneTimer=129}] 6478.467 46.48712 -3.9357 2960.8 6.28
tp @s[scores={cutSceneTimer=130}] 6478.467 46.48709 -3.93566 2960.8 6.28
tp @s[scores={cutSceneTimer=131}] 6478.466 46.48706 -3.93562 2960.8 6.28
tp @s[scores={cutSceneTimer=132}] 6478.466 46.48704 -3.93558 2960.8 6.28
tp @s[scores={cutSceneTimer=133}] 6478.465 46.48701 -3.935541 2960.8 6.28
tp @s[scores={cutSceneTimer=134}] 6478.465 46.48698 -3.935501 2960.8 6.28
tp @s[scores={cutSceneTimer=135}] 6478.464 46.48696 -3.935461 2960.8 6.28
tp @s[scores={cutSceneTimer=136}] 6478.464 46.48693 -3.935421 2960.8 6.28
tp @s[scores={cutSceneTimer=137}] 6478.463 46.4869 -3.935381 2960.8 6.28
tp @s[scores={cutSceneTimer=138}] 6478.463 46.48688 -3.935342 2960.8 6.28
tp @s[scores={cutSceneTimer=139}] 6478.462 46.48685 -3.935302 2960.8 6.28
tp @s[scores={cutSceneTimer=140}] 6478.462 46.48682 -3.935262 2960.8 6.28
tp @s[scores={cutSceneTimer=141}] 6478.461 46.4868 -3.935222 2960.8 6.28
tp @s[scores={cutSceneTimer=142}] 6478.461 46.48677 -3.935182 2960.8 6.28
tp @s[scores={cutSceneTimer=143}] 6478.46 46.48674 -3.935143 2960.8 6.28
tp @s[scores={cutSceneTimer=144}] 6478.46 46.48672 -3.935103 2960.8 6.28
tp @s[scores={cutSceneTimer=145}] 6478.459 46.48669 -3.935063 2960.8 6.28
tp @s[scores={cutSceneTimer=146}] 6478.459 46.48666 -3.935023 2960.8 6.28
tp @s[scores={cutSceneTimer=147}] 6478.458 46.48664 -3.934983 2960.8 6.28
tp @s[scores={cutSceneTimer=148}] 6478.458 46.48661 -3.934943 2960.8 6.28
tp @s[scores={cutSceneTimer=149}] 6478.458 46.48658 -3.934904 2960.8 6.28
tp @s[scores={cutSceneTimer=150}] 6478.457 46.48656 -3.934864 2960.8 6.28
execute as @s[scores={cutSceneTimer=130}] run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=152}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=152}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=152}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=153}] run function hp:cutscenes/revert_to_start_position
execute as @s[scores={cutSceneTimer=153}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=174}] run function hp:cutscenes/exit_cutscene



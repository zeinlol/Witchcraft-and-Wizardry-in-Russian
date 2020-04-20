# Revert to original position stored in NBT. This is done so there's no wonkiness resetting mid animation, etc.
execute as @s[scores={animTest=1}] store result entity @s Pos[0] double 0.001 run data get entity @s ArmorItems[3].tag.posX 1
execute as @s[scores={animTest=1}] store result entity @s Pos[1] double 0.001 run data get entity @s ArmorItems[3].tag.posY 1
execute as @s[scores={animTest=1}] store result entity @s Pos[2] double 0.001 run data get entity @s ArmorItems[3].tag.posZ 1
# execute as @s[scores={animTest=1}] at @s run tp @s ~.5 ~.75 ~.5

# Sound
execute as @s[scores={animTest=19}] at @s run playsound minecraft:custom.creatures.owl.flap1 master @a
execute as @s[scores={animTest=29}] at @s run playsound minecraft:custom.creatures.owl.flap2 master @a
execute as @s[scores={animTest=43}] at @s run playsound minecraft:custom.creatures.owl.flap1 master @a
execute as @s[scores={animTest=87}] at @s run playsound minecraft:custom.creatures.owl.flap2 master @a
execute as @s[scores={animTest=104}] at @s run playsound minecraft:custom.creatures.owl.flap2 master @a
execute as @s[scores={animTest=122}] at @s run playsound minecraft:custom.creatures.owl.flap1 master @a
execute as @s[scores={animTest=133}] at @s run playsound minecraft:custom.creatures.owl.flap2 master @a
execute as @s[scores={animTest=150}] at @s run playsound minecraft:custom.creatures.owl.flap1 master @a
execute as @s[scores={animTest=163}] at @s run playsound minecraft:custom.creatures.owl.flap2 master @a



# Animation
execute as @s[scores={animTest=1}] store result entity @s ArmorItems[3].tag.Unbreakable int 1 run scoreboard players set @s tmp 1
execute as @s[scores={animTest=1}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 32
execute as @s[scores={animTest=6}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 26
execute as @s[scores={animTest=8}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 25
execute as @s[scores={animTest=10}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 24
execute as @s[scores={animTest=12}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 23
execute as @s[scores={animTest=14}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 22
execute as @s[scores={animTest=16}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 21
execute as @s[scores={animTest=18}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 20
execute as @s[scores={animTest=20}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 19
execute as @s[scores={animTest=21}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 18
execute as @s[scores={animTest=22}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 17
execute as @s[scores={animTest=23}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 16
execute as @s[scores={animTest=25}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 15
execute as @s[scores={animTest=27}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 14
execute as @s[scores={animTest=29}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 13
execute as @s[scores={animTest=31}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 12
execute as @s[scores={animTest=32}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 11
execute as @s[scores={animTest=33}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 10
execute as @s[scores={animTest=34}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 9
execute as @s[scores={animTest=36}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 8
execute as @s[scores={animTest=38}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 7
execute as @s[scores={animTest=40}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 6
execute as @s[scores={animTest=42}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 5
execute as @s[scores={animTest=44}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 3
execute as @s[scores={animTest=46}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 2
execute as @s[scores={animTest=48}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 11
execute as @s[scores={animTest=49}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 0
execute as @s[scores={animTest=52}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 10
execute as @s[scores={animTest=54}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 8
execute as @s[scores={animTest=56}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 7
execute as @s[scores={animTest=58}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 13
execute as @s[scores={animTest=59}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 3


execute as @s[scores={animTest=88}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 7
execute as @s[scores={animTest=90}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 13
execute as @s[scores={animTest=91}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 12
execute as @s[scores={animTest=92}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 11
execute as @s[scores={animTest=93}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 10
execute as @s[scores={animTest=94}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 9
execute as @s[scores={animTest=95}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 8
execute as @s[scores={animTest=96}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 7
execute as @s[scores={animTest=98}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 6
execute as @s[scores={animTest=100}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 5
execute as @s[scores={animTest=102}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 3
execute as @s[scores={animTest=103}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 2
execute as @s[scores={animTest=104}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 11
execute as @s[scores={animTest=105}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 0
execute as @s[scores={animTest=106}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 10
execute as @s[scores={animTest=107}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 8
execute as @s[scores={animTest=109}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 7
execute as @s[scores={animTest=111}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 13
execute as @s[scores={animTest=113}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 3

execute as @s[scores={animTest=118}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 7
execute as @s[scores={animTest=120}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 13
execute as @s[scores={animTest=121}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 12
execute as @s[scores={animTest=122}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 11
execute as @s[scores={animTest=123}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 10
execute as @s[scores={animTest=124}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 9
execute as @s[scores={animTest=125}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 8
execute as @s[scores={animTest=126}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 7
execute as @s[scores={animTest=128}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 6
execute as @s[scores={animTest=130}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 5
execute as @s[scores={animTest=132}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 3
execute as @s[scores={animTest=133}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 2
execute as @s[scores={animTest=134}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 11
execute as @s[scores={animTest=135}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 0
execute as @s[scores={animTest=136}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 10
execute as @s[scores={animTest=137}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 8
execute as @s[scores={animTest=139}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 7
execute as @s[scores={animTest=141}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 13
execute as @s[scores={animTest=143}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 3

execute as @s[scores={animTest=148}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 7
execute as @s[scores={animTest=150}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 13
execute as @s[scores={animTest=151}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 12
execute as @s[scores={animTest=152}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 11
execute as @s[scores={animTest=153}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 10
execute as @s[scores={animTest=154}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 9
execute as @s[scores={animTest=155}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 8
execute as @s[scores={animTest=156}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 7
execute as @s[scores={animTest=158}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 6
execute as @s[scores={animTest=160}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 5
execute as @s[scores={animTest=162}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 3
execute as @s[scores={animTest=163}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 2
execute as @s[scores={animTest=164}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 11
execute as @s[scores={animTest=165}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 0
execute as @s[scores={animTest=166}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 10
execute as @s[scores={animTest=167}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 8
execute as @s[scores={animTest=169}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 7
execute as @s[scores={animTest=171}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 13
execute as @s[scores={animTest=173}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 3
execute as @s[scores={animTest=170}] store result entity @s ArmorItems[3].tag.Unbreakable int 1 run scoreboard players set @s tmp 0
execute as @s[scores={animTest=170}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 2



# Motion
execute as @s[scores={animTest=24}] at @s run tp @s ^ ^0.01574 ^0.035317
execute as @s[scores={animTest=25}] at @s run tp @s ^ ^0.042722 ^0.078685
execute as @s[scores={animTest=26}] at @s run tp @s ^ ^0.062958 ^0.104734
execute as @s[scores={animTest=27}] at @s run tp @s ^ ^0.07645 ^0.124043
execute as @s[scores={animTest=28}] at @s run tp @s ^ ^0.083195 ^0.140047
execute as @s[scores={animTest=29}] at @s run tp @s ^ ^0.083196 ^0.154297
execute as @s[scores={animTest=30}] at @s run tp @s ^ ^0.076449 ^0.167645
execute as @s[scores={animTest=31}] at @s run tp @s ^ ^0.062959 ^0.180647
execute as @s[scores={animTest=32}] at @s run tp @s ^ ^0.0427219999999999 ^0.193715
execute as @s[scores={animTest=33}] at @s run tp @s ^ ^0.0157400000000001 ^0.20723
execute as @s[scores={animTest=34}] at @s run tp @s ^ ^-0.000717000000000079 ^0.22151
execute as @s[scores={animTest=35}] at @s run tp @s ^ ^-0.00212499999999993 ^0.23701
execute as @s[scores={animTest=36}] at @s run tp @s ^ ^-0.003494 ^0.2542
execute as @s[scores={animTest=37}] at @s run tp @s ^ ^-0.00482300000000002 ^0.27376
execute as @s[scores={animTest=38}] at @s run tp @s ^ ^-0.00611400000000006 ^0.29665
execute as @s[scores={animTest=39}] at @s run tp @s ^ ^-0.00736799999999993 ^0.32439
execute as @s[scores={animTest=40}] at @s run tp @s ^ ^-0.00858400000000004 ^0.35944
execute as @s[scores={animTest=41}] at @s run tp @s ^ ^-0.009764 ^0.38858
execute as @s[scores={animTest=42}] at @s run tp @s ^ ^-0.010907 ^0.40331
execute as @s[scores={animTest=43}] at @s run tp @s ^ ^-0.012014 ^0.41601
execute as @s[scores={animTest=44}] at @s run tp @s ^ ^-0.013085 ^0.427040000000001
execute as @s[scores={animTest=45}] at @s run tp @s ^ ^-0.014121 ^0.43671
execute as @s[scores={animTest=46}] at @s run tp @s ^ ^-0.015122 ^0.44524
execute as @s[scores={animTest=47}] at @s run tp @s ^ ^-0.016088 ^0.45278
execute as @s[scores={animTest=48}] at @s run tp @s ^ ^-0.017021 ^0.45951
execute as @s[scores={animTest=49}] at @s run tp @s ^ ^-0.017918 ^0.4655
execute as @s[scores={animTest=50}] at @s run tp @s ^ ^-0.018784 ^0.47088
execute as @s[scores={animTest=51}] at @s run tp @s ^ ^-0.019614 ^0.4757
execute as @s[scores={animTest=52}] at @s run tp @s ^ ^-0.020412 ^0.480029999999999
execute as @s[scores={animTest=53}] at @s run tp @s ^ ^-0.021176 ^0.483930000000001
execute as @s[scores={animTest=54}] at @s run tp @s ^ ^-0.021909 ^0.48742
execute as @s[scores={animTest=55}] at @s run tp @s ^ ^-0.022608 ^0.490539999999999
execute as @s[scores={animTest=56}] at @s run tp @s ^ ^-0.023276 ^0.493399999999999
execute as @s[scores={animTest=57}] at @s run tp @s ^ ^-0.02391 ^0.495900000000001
execute as @s[scores={animTest=58}] at @s run tp @s ^ ^-0.024513 ^0.498200000000001
execute as @s[scores={animTest=59}] at @s run tp @s ^ ^-0.025085 ^0.5002
execute as @s[scores={animTest=60}] at @s run tp @s ^ ^-0.025623 ^0.502000000000001
execute as @s[scores={animTest=61}] at @s run tp @s ^ ^-0.026132 ^0.503499999999999
execute as @s[scores={animTest=62}] at @s run tp @s ^ ^-0.026607 ^0.505000000000001
execute as @s[scores={animTest=63}] at @s run tp @s ^ ^-0.027052 ^0.506
execute as @s[scores={animTest=64}] at @s run tp @s ^ ^-0.027465 ^0.507199999999999
execute as @s[scores={animTest=65}] at @s run tp @s ^ ^-0.027847 ^0.507899999999999
execute as @s[scores={animTest=66}] at @s run tp @s ^ ^-0.028198 ^0.508600000000001
execute as @s[scores={animTest=67}] at @s run tp @s ^ ^-0.028517 ^0.5092
execute as @s[scores={animTest=68}] at @s run tp @s ^ ^-0.028806 ^0.509599999999999
execute as @s[scores={animTest=69}] at @s run tp @s ^ ^-0.029062 ^0.509800000000002
execute as @s[scores={animTest=70}] at @s run tp @s ^ ^-0.029288 ^0.509899999999998
execute as @s[scores={animTest=71}] at @s run tp @s ^ ^-0.029483 ^0.510000000000002
execute as @s[scores={animTest=72}] at @s run tp @s ^ ^-0.029646 ^0.509799999999999
execute as @s[scores={animTest=73}] at @s run tp @s ^ ^-0.029777 ^0.509599999999999
execute as @s[scores={animTest=74}] at @s run tp @s ^ ^-0.029879 ^0.5093
execute as @s[scores={animTest=75}] at @s run tp @s ^ ^-0.029947 ^0.508700000000001
execute as @s[scores={animTest=76}] at @s run tp @s ^ ^-0.029984 ^0.508300000000002
execute as @s[scores={animTest=77}] at @s run tp @s ^ ^-0.02999 ^0.5075
execute as @s[scores={animTest=78}] at @s run tp @s ^ ^-0.029964 ^0.506799999999998
execute as @s[scores={animTest=79}] at @s run tp @s ^ ^-0.029906 ^0.505900000000001
execute as @s[scores={animTest=80}] at @s run tp @s ^ ^-0.029815 ^0.504899999999999
execute as @s[scores={animTest=81}] at @s run tp @s ^ ^-0.029693 ^0.503800000000002
execute as @s[scores={animTest=82}] at @s run tp @s ^ ^-0.029538 ^0.502599999999998
execute as @s[scores={animTest=83}] at @s run tp @s ^ ^-0.029351 ^0.501300000000001
execute as @s[scores={animTest=84}] at @s run tp @s ^ ^-0.02913 ^0.5
execute as @s[scores={animTest=85}] at @s run tp @s ^ ^-0.028876 ^0.4985
execute as @s[scores={animTest=86}] at @s run tp @s ^ ^-0.028589 ^0.4969
execute as @s[scores={animTest=87}] at @s run tp @s ^ ^-0.0282690000000001 ^0.495200000000001
execute as @s[scores={animTest=88}] at @s run tp @s ^ ^-0.027914 ^0.493400000000001
execute as @s[scores={animTest=89}] at @s run tp @s ^ ^-0.0275249999999999 ^0.491499999999999
execute as @s[scores={animTest=90}] at @s run tp @s ^ ^-0.0271020000000001 ^0.4895
execute as @s[scores={animTest=91}] at @s run tp @s ^ ^-0.026643 ^0.487500000000001
execute as @s[scores={animTest=92}] at @s run tp @s ^ ^-0.02615 ^0.485199999999999
execute as @s[scores={animTest=93}] at @s run tp @s ^ ^-0.025621 ^0.482900000000001
execute as @s[scores={animTest=94}] at @s run tp @s ^ ^-0.025056 ^0.480499999999999
execute as @s[scores={animTest=95}] at @s run tp @s ^ ^-0.0244530000000001 ^0.478000000000002
execute as @s[scores={animTest=96}] at @s run tp @s ^ ^-0.023816 ^0.475300000000001
execute as @s[scores={animTest=97}] at @s run tp @s ^ ^-0.023139 ^0.4725
execute as @s[scores={animTest=98}] at @s run tp @s ^ ^-0.022425 ^0.4697
execute as @s[scores={animTest=99}] at @s run tp @s ^ ^-0.021674 ^0.4666
execute as @s[scores={animTest=100}] at @s run tp @s ^ ^-0.020881 ^0.463499999999996
execute as @s[scores={animTest=101}] at @s run tp @s ^ ^-0.020052 ^0.4602
execute as @s[scores={animTest=102}] at @s run tp @s ^ ^-0.01918 ^0.456800000000001
execute as @s[scores={animTest=103}] at @s run tp @s ^ ^-0.0182740000000001 ^0.453200000000003
execute as @s[scores={animTest=104}] at @s run tp @s ^ ^-0.0173099999999999 ^0.449399999999997
execute as @s[scores={animTest=105}] at @s run tp @s ^ ^-0.0163199999999999 ^0.445599999999999
execute as @s[scores={animTest=106}] at @s run tp @s ^ ^-0.0152800000000002 ^0.441600000000001
execute as @s[scores={animTest=107}] at @s run tp @s ^ ^-0.0142099999999998 ^0.437400000000004
execute as @s[scores={animTest=108}] at @s run tp @s ^ ^-0.0130700000000001 ^0.433
execute as @s[scores={animTest=109}] at @s run tp @s ^ ^-0.0119099999999999 ^0.428399999999996
execute as @s[scores={animTest=110}] at @s run tp @s ^ ^-0.0106900000000001 ^0.423700000000004
execute as @s[scores={animTest=111}] at @s run tp @s ^ ^-0.00941999999999998 ^0.418700000000001
execute as @s[scores={animTest=112}] at @s run tp @s ^ ^-0.00811000000000006 ^0.413499999999999
execute as @s[scores={animTest=113}] at @s run tp @s ^ ^-0.00675999999999988 ^0.408099999999997
execute as @s[scores={animTest=114}] at @s run tp @s ^ ^-0.00534000000000012 ^0.4024
execute as @s[scores={animTest=115}] at @s run tp @s ^ ^-0.00387999999999988 ^0.396500000000003
execute as @s[scores={animTest=116}] at @s run tp @s ^ ^-0.00236999999999998 ^0.3904
execute as @s[scores={animTest=117}] at @s run tp @s ^ ^-0.000800000000000134 ^0.383899999999997
execute as @s[scores={animTest=118}] at @s run tp @s ^ ^0.00817000000000001 ^0.3782
execute as @s[scores={animTest=119}] at @s run tp @s ^ ^0.0241800000000001 ^0.3733
execute as @s[scores={animTest=120}] at @s run tp @s ^ ^0.03972 ^0.368400000000001
execute as @s[scores={animTest=121}] at @s run tp @s ^ ^0.05477 ^0.363500000000002
execute as @s[scores={animTest=122}] at @s run tp @s ^ ^0.069345 ^0.358599999999996
execute as @s[scores={animTest=123}] at @s run tp @s ^ ^0.083441 ^0.353700000000003
execute as @s[scores={animTest=124}] at @s run tp @s ^ ^0.097056 ^0.348700000000001
execute as @s[scores={animTest=125}] at @s run tp @s ^ ^0.110191 ^0.343799999999995
execute as @s[scores={animTest=126}] at @s run tp @s ^ ^0.122846 ^0.338700000000003
execute as @s[scores={animTest=127}] at @s run tp @s ^ ^0.135021 ^0.3337
execute as @s[scores={animTest=128}] at @s run tp @s ^ ^0.146715 ^0.328699999999998
execute as @s[scores={animTest=129}] at @s run tp @s ^ ^0.157929 ^0.323599999999999
execute as @s[scores={animTest=130}] at @s run tp @s ^ ^0.168663 ^0.318600000000004
execute as @s[scores={animTest=131}] at @s run tp @s ^ ^0.178915 ^0.313400000000001
execute as @s[scores={animTest=132}] at @s run tp @s ^ ^0.188687 ^0.308299999999996
execute as @s[scores={animTest=133}] at @s run tp @s ^ ^0.197977 ^0.303200000000004
execute as @s[scores={animTest=134}] at @s run tp @s ^ ^0.206787 ^0.297899999999999
execute as @s[scores={animTest=135}] at @s run tp @s ^ ^0.215117 ^0.2928
execute as @s[scores={animTest=136}] at @s run tp @s ^ ^0.22296 ^0.287599999999998
execute as @s[scores={animTest=137}] at @s run tp @s ^ ^0.23033 ^0.282400000000003
execute as @s[scores={animTest=138}] at @s run tp @s ^ ^0.2372 ^0.277000000000001
execute as @s[scores={animTest=139}] at @s run tp @s ^ ^0.24361 ^0.271799999999999
execute as @s[scores={animTest=140}] at @s run tp @s ^ ^0.24953 ^0
execute as @s[scores={animTest=141}] at @s run tp @s ^ ^0.25496 ^0.266599999999997
execute as @s[scores={animTest=142}] at @s run tp @s ^ ^0.2599 ^0.261100000000006
execute as @s[scores={animTest=143}] at @s run tp @s ^ ^0.26438 ^0.255899999999997
execute as @s[scores={animTest=144}] at @s run tp @s ^ ^0.26836 ^0.250399999999999
execute as @s[scores={animTest=145}] at @s run tp @s ^ ^0.27186 ^0.245100000000001
execute as @s[scores={animTest=146}] at @s run tp @s ^ ^0.27487 ^0.239699999999999
execute as @s[scores={animTest=147}] at @s run tp @s ^ ^0.2774 ^0.234200000000001
execute as @s[scores={animTest=148}] at @s run tp @s ^ ^0.27944 ^0.2288
execute as @s[scores={animTest=149}] at @s run tp @s ^ ^0.281 ^0
execute as @s[scores={animTest=150}] at @s run tp @s ^ ^0.28206 ^0.223199999999999
execute as @s[scores={animTest=151}] at @s run tp @s ^ ^0.282649999999999 ^0.217800000000004
execute as @s[scores={animTest=152}] at @s run tp @s ^ ^0.28275 ^0.212299999999999
execute as @s[scores={animTest=153}] at @s run tp @s ^ ^0.28235 ^0.206600000000002
execute as @s[scores={animTest=154}] at @s run tp @s ^ ^0.28148 ^0.2012
execute as @s[scores={animTest=155}] at @s run tp @s ^ ^0.2801 ^0.195499999999996
execute as @s[scores={animTest=156}] at @s run tp @s ^ ^0.27825 ^0.189900000000002
execute as @s[scores={animTest=157}] at @s run tp @s ^ ^0.27589 ^0.184199999999997
execute as @s[scores={animTest=158}] at @s run tp @s ^ ^0.27306 ^0.178600000000003
execute as @s[scores={animTest=159}] at @s run tp @s ^ ^0.26972 ^0.172899999999999
execute as @s[scores={animTest=160}] at @s run tp @s ^ ^0.2659 ^0.167099999999998
execute as @s[scores={animTest=161}] at @s run tp @s ^ ^0.26159 ^0.161500000000004
execute as @s[scores={animTest=162}] at @s run tp @s ^ ^0.256779999999999 ^0.1556
execute as @s[scores={animTest=163}] at @s run tp @s ^ ^0.251470000000001 ^0.149900000000002
execute as @s[scores={animTest=164}] at @s run tp @s ^ ^0.24568 ^0.143999999999998
execute as @s[scores={animTest=165}] at @s run tp @s ^ ^0.239379999999999 ^0.138199999999998
execute as @s[scores={animTest=166}] at @s run tp @s ^ ^0.232600000000001 ^0.132400000000004
execute as @s[scores={animTest=167}] at @s run tp @s ^ ^0.225309999999999 ^0.126399999999997
execute as @s[scores={animTest=168}] at @s run tp @s ^ ^0.217540000000001 ^0.1205
execute as @s[scores={animTest=169}] at @s run tp @s ^ ^0.209249999999999 ^0.114600000000003
execute as @s[scores={animTest=170}] at @s run tp @s ^ ^0.20049 ^0.108699999999999
execute as @s[scores={animTest=171}] at @s run tp @s ^ ^0.1912 ^0.102600000000002
execute as @s[scores={animTest=172}] at @s run tp @s ^ ^0.1814 ^0.187199999999997
execute as @s[scores={animTest=173}] at @s run tp @s ^ ^0.171099999999999 ^0.0844999999999985
execute as @s[scores={animTest=174}] at @s run tp @s ^ ^0.160400000000001 ^0.078400000000002
execute as @s[scores={animTest=175}] at @s run tp @s ^ ^0.149099999999999 ^0.0722999999999985
execute as @s[scores={animTest=176}] at @s run tp @s ^ ^0.1372 ^0.126100000000001
execute as @s[scores={animTest=177}] at @s run tp @s ^ ^0.125 ^0.0538000000000025
execute as @s[scores={animTest=178}] at @s run tp @s ^ ^0.112200000000001 ^0.0474999999999994
execute as @s[scores={animTest=179}] at @s run tp @s ^ ^0.0988999999999987 ^0.0412999999999997
execute as @s[scores={animTest=180}] at @s run tp @s ^ ^0.0851000000000006 ^0.0350999999999999
execute as @s[scores={animTest=181}] at @s run tp @s ^ ^0.0707000000000004 ^0.0287000000000006
execute as @s[scores={animTest=182}] at @s run tp @s ^ ^0.0558999999999994 ^0.0223999999999975
execute as @s[scores={animTest=183}] at @s run tp @s ^ ^0 ^0.0159999999999982
execute as @s[scores={animTest=184}] at @s run tp @s ^ ^0.0653000000000006 ^0.00959999999999894
execute as @s[scores={animTest=185}] at @s run tp @s ^ ^0.00839999999999996 ^0.00319999999999965
execute as @s[scores={animTest=185}] store result entity @s Pos[0] double 0.001 run data get entity @s ArmorItems[3].tag.posX 1
execute as @s[scores={animTest=185}] store result entity @s Pos[1] double 0.001 run data get entity @s ArmorItems[3].tag.posY 1
execute as @s[scores={animTest=185}] store result entity @s Pos[2] double 0.001 run data get entity @s ArmorItems[3].tag.posZ 1
# execute as @s[scores={animTest=185}] at @s run tp @s ~.5 ~.75 ~.5



execute as @s[scores={animTest=24}] run data merge entity @s {Pose:{Head:[-0.10369f,0f,0f]}}
execute as @s[scores={animTest=25}] run data merge entity @s {Pose:{Head:[-0.377054f,0f,0f]}}
execute as @s[scores={animTest=26}] run data merge entity @s {Pose:{Head:[-0.763534f,0f,0f]}}
execute as @s[scores={animTest=27}] run data merge entity @s {Pose:{Head:[-1.20657f,0f,0f]}}
execute as @s[scores={animTest=28}] run data merge entity @s {Pose:{Head:[-1.64961f,0f,0f]}}
execute as @s[scores={animTest=29}] run data merge entity @s {Pose:{Head:[-2.03609f,0f,0f]}}
execute as @s[scores={animTest=30}] run data merge entity @s {Pose:{Head:[-2.30945f,0f,0f]}}
execute as @s[scores={animTest=31}] run data merge entity @s {Pose:{Head:[-2.41314f,0f,0f]}}
execute as @s[scores={animTest=32}] run data merge entity @s {Pose:{Head:[-2.40965f,0f,0f]}}
execute as @s[scores={animTest=33}] run data merge entity @s {Pose:{Head:[-2.39936f,0f,0f]}}
execute as @s[scores={animTest=34}] run data merge entity @s {Pose:{Head:[-2.38253f,0f,0f]}}
execute as @s[scores={animTest=35}] run data merge entity @s {Pose:{Head:[-2.35943f,0f,0f]}}
execute as @s[scores={animTest=36}] run data merge entity @s {Pose:{Head:[-2.33031f,0f,0f]}}
execute as @s[scores={animTest=37}] run data merge entity @s {Pose:{Head:[-2.29542f,0f,0f]}}
execute as @s[scores={animTest=38}] run data merge entity @s {Pose:{Head:[-2.25499f,0f,0f]}}
execute as @s[scores={animTest=39}] run data merge entity @s {Pose:{Head:[-2.20927f,0f,0f]}}
execute as @s[scores={animTest=40}] run data merge entity @s {Pose:{Head:[-2.15846f,0f,0f]}}
execute as @s[scores={animTest=41}] run data merge entity @s {Pose:{Head:[-2.10281f,0f,0f]}}
execute as @s[scores={animTest=42}] run data merge entity @s {Pose:{Head:[-2.04252f,0f,0f]}}
execute as @s[scores={animTest=43}] run data merge entity @s {Pose:{Head:[-1.97781f,0f,0f]}}
execute as @s[scores={animTest=44}] run data merge entity @s {Pose:{Head:[-1.90889f,0f,0f]}}
execute as @s[scores={animTest=45}] run data merge entity @s {Pose:{Head:[-1.83595f,0f,0f]}}
execute as @s[scores={animTest=46}] run data merge entity @s {Pose:{Head:[-1.75921f,0f,0f]}}
execute as @s[scores={animTest=47}] run data merge entity @s {Pose:{Head:[-1.67886f,0f,0f]}}
execute as @s[scores={animTest=48}] run data merge entity @s {Pose:{Head:[-1.5951f,0f,0f]}}
execute as @s[scores={animTest=49}] run data merge entity @s {Pose:{Head:[-1.50811f,0f,0f]}}
execute as @s[scores={animTest=50}] run data merge entity @s {Pose:{Head:[-1.41809f,0f,0f]}}
execute as @s[scores={animTest=51}] run data merge entity @s {Pose:{Head:[-1.32522f,0f,0f]}}
execute as @s[scores={animTest=52}] run data merge entity @s {Pose:{Head:[-1.22969f,0f,0f]}}
execute as @s[scores={animTest=53}] run data merge entity @s {Pose:{Head:[-1.13169f,0f,0f]}}
execute as @s[scores={animTest=54}] run data merge entity @s {Pose:{Head:[-1.03138f,0f,0f]}}
execute as @s[scores={animTest=55}] run data merge entity @s {Pose:{Head:[-0.928965f,0f,0f]}}
execute as @s[scores={animTest=56}] run data merge entity @s {Pose:{Head:[-0.824611f,0f,0f]}}
execute as @s[scores={animTest=57}] run data merge entity @s {Pose:{Head:[-0.718501f,0f,0f]}}
execute as @s[scores={animTest=58}] run data merge entity @s {Pose:{Head:[-0.610813f,0f,0f]}}
execute as @s[scores={animTest=59}] run data merge entity @s {Pose:{Head:[-0.501724f,0f,0f]}}
execute as @s[scores={animTest=60}] run data merge entity @s {Pose:{Head:[-0.391414f,0f,0f]}}
execute as @s[scores={animTest=61}] run data merge entity @s {Pose:{Head:[-0.280059f,0f,0f]}}
execute as @s[scores={animTest=62}] run data merge entity @s {Pose:{Head:[-0.167838f,0f,0f]}}
execute as @s[scores={animTest=63}] run data merge entity @s {Pose:{Head:[-0.054931f,0f,0f]}}
execute as @s[scores={animTest=64}] run data merge entity @s {Pose:{Head:[0.058484f,0f,0f]}}
execute as @s[scores={animTest=65}] run data merge entity @s {Pose:{Head:[0.172224f,0f,0f]}}
execute as @s[scores={animTest=66}] run data merge entity @s {Pose:{Head:[0.286108f,0f,0f]}}
execute as @s[scores={animTest=67}] run data merge entity @s {Pose:{Head:[0.399952f,0f,0f]}}
execute as @s[scores={animTest=68}] run data merge entity @s {Pose:{Head:[0.51357f,0f,0f]}}
execute as @s[scores={animTest=69}] run data merge entity @s {Pose:{Head:[0.626775f,0f,0f]}}
execute as @s[scores={animTest=70}] run data merge entity @s {Pose:{Head:[0.739376f,0f,0f]}}
execute as @s[scores={animTest=71}] run data merge entity @s {Pose:{Head:[0.851179f,0f,0f]}}
execute as @s[scores={animTest=72}] run data merge entity @s {Pose:{Head:[0.961991f,0f,0f]}}
execute as @s[scores={animTest=73}] run data merge entity @s {Pose:{Head:[1.07161f,0f,0f]}}
execute as @s[scores={animTest=74}] run data merge entity @s {Pose:{Head:[1.17983f,0f,0f]}}
execute as @s[scores={animTest=75}] run data merge entity @s {Pose:{Head:[1.28646f,0f,0f]}}
execute as @s[scores={animTest=76}] run data merge entity @s {Pose:{Head:[1.39127f,0f,0f]}}
execute as @s[scores={animTest=77}] run data merge entity @s {Pose:{Head:[1.49404f,0f,0f]}}
execute as @s[scores={animTest=78}] run data merge entity @s {Pose:{Head:[1.59457f,0f,0f]}}
execute as @s[scores={animTest=79}] run data merge entity @s {Pose:{Head:[1.69262f,0f,0f]}}
execute as @s[scores={animTest=80}] run data merge entity @s {Pose:{Head:[1.78796f,0f,0f]}}
execute as @s[scores={animTest=81}] run data merge entity @s {Pose:{Head:[1.88035f,0f,0f]}}
execute as @s[scores={animTest=82}] run data merge entity @s {Pose:{Head:[1.96954f,0f,0f]}}
execute as @s[scores={animTest=83}] run data merge entity @s {Pose:{Head:[2.05527f,0f,0f]}}
execute as @s[scores={animTest=84}] run data merge entity @s {Pose:{Head:[2.13729f,0f,0f]}}
execute as @s[scores={animTest=85}] run data merge entity @s {Pose:{Head:[2.21532f,0f,0f]}}
execute as @s[scores={animTest=86}] run data merge entity @s {Pose:{Head:[2.28907f,0f,0f]}}
execute as @s[scores={animTest=87}] run data merge entity @s {Pose:{Head:[2.35827f,0f,0f]}}
execute as @s[scores={animTest=88}] run data merge entity @s {Pose:{Head:[2.42259f,0f,0f]}}
execute as @s[scores={animTest=89}] run data merge entity @s {Pose:{Head:[2.48172f,0f,0f]}}
execute as @s[scores={animTest=90}] run data merge entity @s {Pose:{Head:[2.53534f,0f,0f]}}
execute as @s[scores={animTest=91}] run data merge entity @s {Pose:{Head:[2.58309f,0f,0f]}}
execute as @s[scores={animTest=92}] run data merge entity @s {Pose:{Head:[2.62462f,0f,0f]}}
execute as @s[scores={animTest=93}] run data merge entity @s {Pose:{Head:[2.65954f,0f,0f]}}
execute as @s[scores={animTest=94}] run data merge entity @s {Pose:{Head:[2.68746f,0f,0f]}}
execute as @s[scores={animTest=95}] run data merge entity @s {Pose:{Head:[2.70797f,0f,0f]}}
execute as @s[scores={animTest=96}] run data merge entity @s {Pose:{Head:[2.72062f,0f,0f]}}
execute as @s[scores={animTest=97}] run data merge entity @s {Pose:{Head:[2.72494f,0f,0f]}}
execute as @s[scores={animTest=98}] run data merge entity @s {Pose:{Head:[2.69896f,0f,0f]}}
execute as @s[scores={animTest=99}] run data merge entity @s {Pose:{Head:[2.62181f,0f,0f]}}
execute as @s[scores={animTest=100}] run data merge entity @s {Pose:{Head:[2.49464f,0f,0f]}}
execute as @s[scores={animTest=101}] run data merge entity @s {Pose:{Head:[2.31861f,0f,0f]}}
execute as @s[scores={animTest=102}] run data merge entity @s {Pose:{Head:[2.0949f,0f,0f]}}
execute as @s[scores={animTest=103}] run data merge entity @s {Pose:{Head:[1.82468f,0f,0f]}}
execute as @s[scores={animTest=104}] run data merge entity @s {Pose:{Head:[1.50909f,0f,0f]}}
execute as @s[scores={animTest=105}] run data merge entity @s {Pose:{Head:[1.14933f,0f,0f]}}
execute as @s[scores={animTest=106}] run data merge entity @s {Pose:{Head:[0.746544f,0f,0f]}}
execute as @s[scores={animTest=107}] run data merge entity @s {Pose:{Head:[0.301912f,0f,0f]}}
execute as @s[scores={animTest=108}] run data merge entity @s {Pose:{Head:[-0.183397f,0f,0f]}}
execute as @s[scores={animTest=109}] run data merge entity @s {Pose:{Head:[-0.708212f,0f,0f]}}
execute as @s[scores={animTest=110}] run data merge entity @s {Pose:{Head:[-1.27136f,0f,0f]}}
execute as @s[scores={animTest=111}] run data merge entity @s {Pose:{Head:[-1.87167f,0f,0f]}}
execute as @s[scores={animTest=112}] run data merge entity @s {Pose:{Head:[-2.50797f,0f,0f]}}
execute as @s[scores={animTest=113}] run data merge entity @s {Pose:{Head:[-3.17909f,0f,0f]}}
execute as @s[scores={animTest=114}] run data merge entity @s {Pose:{Head:[-3.88384f,0f,0f]}}
execute as @s[scores={animTest=115}] run data merge entity @s {Pose:{Head:[-4.62105f,0f,0f]}}
execute as @s[scores={animTest=116}] run data merge entity @s {Pose:{Head:[-5.38955f,0f,0f]}}
execute as @s[scores={animTest=117}] run data merge entity @s {Pose:{Head:[-6.18815f,0f,0f]}}
execute as @s[scores={animTest=118}] run data merge entity @s {Pose:{Head:[-7.01569f,0f,0f]}}
execute as @s[scores={animTest=119}] run data merge entity @s {Pose:{Head:[-7.87097f,0f,0f]}}
execute as @s[scores={animTest=120}] run data merge entity @s {Pose:{Head:[-8.75281f,0f,0f]}}
execute as @s[scores={animTest=121}] run data merge entity @s {Pose:{Head:[-9.66004f,0f,0f]}}
execute as @s[scores={animTest=122}] run data merge entity @s {Pose:{Head:[-10.5915f,0f,0f]}}
execute as @s[scores={animTest=123}] run data merge entity @s {Pose:{Head:[-11.5459f,0f,0f]}}
execute as @s[scores={animTest=124}] run data merge entity @s {Pose:{Head:[-12.5222f,0f,0f]}}
execute as @s[scores={animTest=125}] run data merge entity @s {Pose:{Head:[-13.5191f,0f,0f]}}
execute as @s[scores={animTest=126}] run data merge entity @s {Pose:{Head:[-14.5355f,0f,0f]}}
execute as @s[scores={animTest=127}] run data merge entity @s {Pose:{Head:[-15.5702f,0f,0f]}}
execute as @s[scores={animTest=128}] run data merge entity @s {Pose:{Head:[-16.622f,0f,0f]}}
execute as @s[scores={animTest=129}] run data merge entity @s {Pose:{Head:[-17.6896f,0f,0f]}}
execute as @s[scores={animTest=130}] run data merge entity @s {Pose:{Head:[-18.772f,0f,0f]}}
execute as @s[scores={animTest=131}] run data merge entity @s {Pose:{Head:[-19.8678f,0f,0f]}}
execute as @s[scores={animTest=132}] run data merge entity @s {Pose:{Head:[-20.976f,0f,0f]}}
execute as @s[scores={animTest=133}] run data merge entity @s {Pose:{Head:[-22.0954f,0f,0f]}}
execute as @s[scores={animTest=134}] run data merge entity @s {Pose:{Head:[-23.2246f,0f,0f]}}
execute as @s[scores={animTest=135}] run data merge entity @s {Pose:{Head:[-24.3626f,0f,0f]}}
execute as @s[scores={animTest=136}] run data merge entity @s {Pose:{Head:[-25.5082f,0f,0f]}}
execute as @s[scores={animTest=137}] run data merge entity @s {Pose:{Head:[-26.6601f,0f,0f]}}
execute as @s[scores={animTest=138}] run data merge entity @s {Pose:{Head:[-27.8171f,0f,0f]}}
execute as @s[scores={animTest=139}] run data merge entity @s {Pose:{Head:[-28.9781f,0f,0f]}}
execute as @s[scores={animTest=140}] run data merge entity @s {Pose:{Head:[-30.1418f,0f,0f]}}
execute as @s[scores={animTest=141}] run data merge entity @s {Pose:{Head:[-31.3071f,0f,0f]}}
execute as @s[scores={animTest=142}] run data merge entity @s {Pose:{Head:[-32.4727f,0f,0f]}}
execute as @s[scores={animTest=143}] run data merge entity @s {Pose:{Head:[-33.6374f,0f,0f]}}
execute as @s[scores={animTest=144}] run data merge entity @s {Pose:{Head:[-34.8001f,0f,0f]}}
execute as @s[scores={animTest=145}] run data merge entity @s {Pose:{Head:[-35.9595f,0f,0f]}}
execute as @s[scores={animTest=146}] run data merge entity @s {Pose:{Head:[-37.1145f,0f,0f]}}
execute as @s[scores={animTest=147}] run data merge entity @s {Pose:{Head:[-38.2637f,0f,0f]}}
execute as @s[scores={animTest=148}] run data merge entity @s {Pose:{Head:[-39.4061f,0f,0f]}}
execute as @s[scores={animTest=149}] run data merge entity @s {Pose:{Head:[-40.5403f,0f,0f]}}
execute as @s[scores={animTest=150}] run data merge entity @s {Pose:{Head:[-41.6653f,0f,0f]}}
execute as @s[scores={animTest=151}] run data merge entity @s {Pose:{Head:[-42.7797f,0f,0f]}}
execute as @s[scores={animTest=152}] run data merge entity @s {Pose:{Head:[-43.8823f,0f,0f]}}
execute as @s[scores={animTest=153}] run data merge entity @s {Pose:{Head:[-44.972f,0f,0f]}}
execute as @s[scores={animTest=154}] run data merge entity @s {Pose:{Head:[-46.0476f,0f,0f]}}
execute as @s[scores={animTest=155}] run data merge entity @s {Pose:{Head:[-47.1077f,0f,0f]}}
execute as @s[scores={animTest=156}] run data merge entity @s {Pose:{Head:[-48.1512f,0f,0f]}}
execute as @s[scores={animTest=157}] run data merge entity @s {Pose:{Head:[-49.1769f,0f,0f]}}
execute as @s[scores={animTest=158}] run data merge entity @s {Pose:{Head:[-50.1836f,0f,0f]}}
execute as @s[scores={animTest=159}] run data merge entity @s {Pose:{Head:[-51.17f,0f,0f]}}
execute as @s[scores={animTest=160}] run data merge entity @s {Pose:{Head:[-52.1348f,0f,0f]}}
execute as @s[scores={animTest=161}] run data merge entity @s {Pose:{Head:[-53.077f,0f,0f]}}
execute as @s[scores={animTest=162}] run data merge entity @s {Pose:{Head:[-53.9952f,0f,0f]}}
execute as @s[scores={animTest=163}] run data merge entity @s {Pose:{Head:[-54.8883f,0f,0f]}}
execute as @s[scores={animTest=164}] run data merge entity @s {Pose:{Head:[-55.755f,0f,0f]}}
execute as @s[scores={animTest=165}] run data merge entity @s {Pose:{Head:[-56.594f,0f,0f]}}
execute as @s[scores={animTest=166}] run data merge entity @s {Pose:{Head:[-57.4042f,0f,0f]}}
execute as @s[scores={animTest=167}] run data merge entity @s {Pose:{Head:[-58.1843f,0f,0f]}}
execute as @s[scores={animTest=168}] run data merge entity @s {Pose:{Head:[-58.9331f,0f,0f]}}
execute as @s[scores={animTest=169}] run data merge entity @s {Pose:{Head:[-59.6493f,0f,0f]}}
execute as @s[scores={animTest=170}] run data merge entity @s {Pose:{Head:[-60.3318f,0f,0f]}}
execute as @s[scores={animTest=171}] run data merge entity @s {Pose:{Head:[-60.9792f,0f,0f]}}
execute as @s[scores={animTest=172}] run data merge entity @s {Pose:{Head:[-61.5904f,0f,0f]}}
execute as @s[scores={animTest=173}] run data merge entity @s {Pose:{Head:[-62.1641f,0f,0f]}}
execute as @s[scores={animTest=174}] run data merge entity @s {Pose:{Head:[-62.699f,0f,0f]}}
execute as @s[scores={animTest=175}] run data merge entity @s {Pose:{Head:[-63.194f,0f,0f]}}
execute as @s[scores={animTest=176}] run data merge entity @s {Pose:{Head:[-63.6477f,0f,0f]}}
execute as @s[scores={animTest=177}] run data merge entity @s {Pose:{Head:[-64.059f,0f,0f]}}
execute as @s[scores={animTest=178}] run data merge entity @s {Pose:{Head:[-64.4266f,0f,0f]}}
execute as @s[scores={animTest=179}] run data merge entity @s {Pose:{Head:[-64.7492f,0f,0f]}}
execute as @s[scores={animTest=180}] run data merge entity @s {Pose:{Head:[-65.0256f,0f,0f]}}
execute as @s[scores={animTest=181}] run data merge entity @s {Pose:{Head:[-65.2546f,0f,0f]}}
execute as @s[scores={animTest=182}] run data merge entity @s {Pose:{Head:[-65.4349f,0f,0f]}}
execute as @s[scores={animTest=183}] run data merge entity @s {Pose:{Head:[-65.5652f,0f,0f]}}
execute as @s[scores={animTest=184}] run data merge entity @s {Pose:{Head:[-65.6443f,0f,0f]}}
execute as @s[scores={animTest=185}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}

# Increment animation timer
scoreboard players add @s[scores={animTest=1..}] animTest 1
execute as @s[scores={animTest=186..}] run scoreboard players set @s animTest 0
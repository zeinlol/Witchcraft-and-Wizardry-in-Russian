execute as @s[scores={cutSceneTimer=1}] run function hp:cutscenes/fade_in
execute as @s[scores={cutSceneTimer=22}] run tag @s add letterbox
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneLevitate
execute as @s[scores={cutSceneTimer=22}] run tag @s add cutsceneZoom
execute as @s[scores={cutSceneTimer=22}] run function hp:cutscenes/fade_out

title @s actionbar ["",{"text":" "}]


# 1
execute as @s[scores={cutSceneTimer=70},tag=cutsceneLeader] run playsound minecraft:custom.fx.wood_creak master @a 6470 47 -3 1 1 1
execute as @s[scores={cutSceneTimer=71},tag=cutsceneLeader] run setblock 7496 110 286 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=72},tag=cutsceneLeader] run setblock 7496 111 286 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=73},tag=cutsceneLeader] run setblock 7496 112 286 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=74},tag=cutsceneLeader] run setblock 7496 113 286 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=75},tag=cutsceneLeader] run setblock 7496 114 286 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=76},tag=cutsceneLeader] run setblock 7496 115 286 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=77},tag=cutsceneLeader] run setblock 7496 116 286 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=78},tag=cutsceneLeader] run setblock 7496 117 286 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=79},tag=cutsceneLeader] run setblock 7496 118 286 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=80},tag=cutsceneLeader] run setblock 7496 119 286 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=81},tag=cutsceneLeader] run setblock 7496 120 286 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=82},tag=cutsceneLeader] run setblock 7496 121 286 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=83},tag=cutsceneLeader] run setblock 7496 122 286 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=84},tag=cutsceneLeader] run setblock 7496 123 286 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=85},tag=cutsceneLeader] run setblock 7496 124 286 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=86},tag=cutsceneLeader] run setblock 7496 125 286 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=87},tag=cutsceneLeader] run setblock 7496 126 286 minecraft:ladder[facing=south,waterlogged=false]
execute as @s[scores={cutSceneTimer=88},tag=cutsceneLeader] run setblock 7496 127 286 minecraft:ladder[facing=south,waterlogged=false]

execute as @s[scores={cutSceneTimer=71},tag=cutsceneLeader] run particle minecraft:poof 7496 110 286 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=72},tag=cutsceneLeader] run particle minecraft:poof 7496 111 286 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=73},tag=cutsceneLeader] run particle minecraft:poof 7496 112 286 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=74},tag=cutsceneLeader] run particle minecraft:poof 7496 113 286 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=75},tag=cutsceneLeader] run particle minecraft:poof 7496 114 286 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=76},tag=cutsceneLeader] run particle minecraft:poof 7496 115 286 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=77},tag=cutsceneLeader] run particle minecraft:poof 7496 116 286 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=78},tag=cutsceneLeader] run particle minecraft:poof 7496 117 286 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=79},tag=cutsceneLeader] run particle minecraft:poof 7496 118 286 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=80},tag=cutsceneLeader] run particle minecraft:poof 7496 119 286 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=81},tag=cutsceneLeader] run particle minecraft:poof 7496 120 286 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=82},tag=cutsceneLeader] run particle minecraft:poof 7496 121 286 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=83},tag=cutsceneLeader] run particle minecraft:poof 7496 122 286 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=84},tag=cutsceneLeader] run particle minecraft:poof 7496 123 286 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=85},tag=cutsceneLeader] run particle minecraft:poof 7496 124 286 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=86},tag=cutsceneLeader] run particle minecraft:poof 7496 125 286 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=87},tag=cutsceneLeader] run particle minecraft:poof 7496 126 286 0.1 0.1 0.1 0.05 10 force
execute as @s[scores={cutSceneTimer=88},tag=cutsceneLeader] run particle minecraft:poof 7496 127 286 0.1 0.1 0.1 0.05 10 force

tp @s[scores={cutSceneTimer=22}] 7502.78 125.54 299.6 155.4 36.97
tp @s[scores={cutSceneTimer=23}] 7502.78 125.54 299.6 155.4 36.82
tp @s[scores={cutSceneTimer=24}] 7502.78 125.54 299.6 155.4 36.66999
tp @s[scores={cutSceneTimer=25}] 7502.78 125.54 299.6 155.4 36.51999
tp @s[scores={cutSceneTimer=26}] 7502.78 125.54 299.6 155.4 36.36999
tp @s[scores={cutSceneTimer=27}] 7502.78 125.54 299.6 155.4 36.21999
tp @s[scores={cutSceneTimer=28}] 7502.78 125.54 299.6 155.4 36.06999
tp @s[scores={cutSceneTimer=29}] 7502.78 125.54 299.6 155.4 35.91999
tp @s[scores={cutSceneTimer=30}] 7502.78 125.54 299.6 155.4 35.76999
tp @s[scores={cutSceneTimer=31}] 7502.78 125.54 299.6 155.4 35.61998
tp @s[scores={cutSceneTimer=32}] 7502.78 125.54 299.6 155.4 35.46998
tp @s[scores={cutSceneTimer=33}] 7502.78 125.54 299.6 155.4 35.31998
tp @s[scores={cutSceneTimer=34}] 7502.78 125.54 299.6 155.4 35.16998
tp @s[scores={cutSceneTimer=35}] 7502.78 125.54 299.6 155.4 35.01998
tp @s[scores={cutSceneTimer=36}] 7502.78 125.54 299.6 155.4 34.86998
tp @s[scores={cutSceneTimer=37}] 7502.78 125.54 299.6 155.4 34.71997
tp @s[scores={cutSceneTimer=38}] 7502.78 125.54 299.6 155.4 34.56997
tp @s[scores={cutSceneTimer=39}] 7502.78 125.54 299.6 155.4 34.41997
tp @s[scores={cutSceneTimer=40}] 7502.78 125.54 299.6 155.4 34.26997
tp @s[scores={cutSceneTimer=41}] 7502.78 125.54 299.6 155.4 34.11997
tp @s[scores={cutSceneTimer=42}] 7502.78 125.54 299.6 155.4 33.96997
tp @s[scores={cutSceneTimer=43}] 7502.78 125.54 299.6 155.4 33.81997
tp @s[scores={cutSceneTimer=44}] 7502.78 125.54 299.6 155.4 33.66996
tp @s[scores={cutSceneTimer=45}] 7502.78 125.54 299.6 155.4 33.51996
tp @s[scores={cutSceneTimer=46}] 7502.78 125.54 299.6 155.4 33.36996
tp @s[scores={cutSceneTimer=47}] 7502.78 125.54 299.6 155.4 33.21996
tp @s[scores={cutSceneTimer=48}] 7502.78 125.54 299.6 155.4 33.06996
tp @s[scores={cutSceneTimer=49}] 7502.78 125.54 299.6 155.4 32.91996
tp @s[scores={cutSceneTimer=50}] 7502.78 125.54 299.6 155.4 32.76995
tp @s[scores={cutSceneTimer=51}] 7502.78 125.54 299.6 155.4 32.61995
tp @s[scores={cutSceneTimer=52}] 7502.78 125.54 299.6 155.4 32.46995
tp @s[scores={cutSceneTimer=53}] 7502.78 125.54 299.6 155.4 32.31995
tp @s[scores={cutSceneTimer=54}] 7502.78 125.54 299.6 155.4 32.16995
tp @s[scores={cutSceneTimer=55}] 7502.78 125.54 299.6 155.4 32.01995
tp @s[scores={cutSceneTimer=56}] 7502.78 125.54 299.6 155.4 31.86995
tp @s[scores={cutSceneTimer=57}] 7502.78 125.54 299.6 155.4 31.71995
tp @s[scores={cutSceneTimer=58}] 7502.78 125.54 299.6 155.4 31.56995
tp @s[scores={cutSceneTimer=59}] 7502.78 125.54 299.6 155.4 31.41995
tp @s[scores={cutSceneTimer=60}] 7502.78 125.54 299.6 155.4 31.26995
tp @s[scores={cutSceneTimer=61}] 7502.78 125.54 299.6 155.4 31.11995
tp @s[scores={cutSceneTimer=62}] 7502.78 125.54 299.6 155.4 30.96995
tp @s[scores={cutSceneTimer=63}] 7502.78 125.54 299.6 155.4 30.81995
tp @s[scores={cutSceneTimer=64}] 7502.78 125.54 299.6 155.4 30.66995
tp @s[scores={cutSceneTimer=65}] 7502.78 125.54 299.6 155.4 30.51995
tp @s[scores={cutSceneTimer=66}] 7502.78 125.54 299.6 155.4 30.36995
tp @s[scores={cutSceneTimer=67}] 7502.78 125.54 299.6 155.4 30.21995
tp @s[scores={cutSceneTimer=68}] 7502.78 125.54 299.6 155.4 30.06995
tp @s[scores={cutSceneTimer=69}] 7502.78 125.54 299.6 155.4 29.91995
tp @s[scores={cutSceneTimer=70}] 7502.78 125.54 299.6 155.4 29.76995
tp @s[scores={cutSceneTimer=71}] 7502.78 125.54 299.6 155.4 29.61995
tp @s[scores={cutSceneTimer=72}] 7502.78 125.54 299.6 155.4 29.46995
tp @s[scores={cutSceneTimer=73}] 7502.78 125.54 299.6 155.4 29.31995
tp @s[scores={cutSceneTimer=74}] 7502.78 125.54 299.6 155.4 29.16995
tp @s[scores={cutSceneTimer=75}] 7502.78 125.54 299.6 155.4 29.01995
tp @s[scores={cutSceneTimer=76}] 7502.78 125.54 299.6 155.4 28.86996
tp @s[scores={cutSceneTimer=77}] 7502.78 125.54 299.6 155.4 28.71996
tp @s[scores={cutSceneTimer=78}] 7502.78 125.54 299.6 155.4 28.56996
tp @s[scores={cutSceneTimer=79}] 7502.78 125.54 299.6 155.4 28.41996
tp @s[scores={cutSceneTimer=80}] 7502.78 125.54 299.6 155.4 28.26996
tp @s[scores={cutSceneTimer=81}] 7502.78 125.54 299.6 155.4 28.11996
tp @s[scores={cutSceneTimer=82}] 7502.78 125.54 299.6 155.4 27.96996
tp @s[scores={cutSceneTimer=83}] 7502.78 125.54 299.6 155.4 27.81996
tp @s[scores={cutSceneTimer=84}] 7502.78 125.54 299.6 155.4 27.66996
tp @s[scores={cutSceneTimer=85}] 7502.78 125.54 299.6 155.4 27.51996
tp @s[scores={cutSceneTimer=86}] 7502.78 125.54 299.6 155.4 27.36996
tp @s[scores={cutSceneTimer=87}] 7502.78 125.54 299.6 155.4 27.21996
tp @s[scores={cutSceneTimer=88}] 7502.78 125.54 299.6 155.4 27.06996
tp @s[scores={cutSceneTimer=89}] 7502.78 125.54 299.6 155.4 26.91996
tp @s[scores={cutSceneTimer=90}] 7502.78 125.54 299.6 155.4 26.76996
tp @s[scores={cutSceneTimer=91}] 7502.78 125.54 299.6 155.4 26.61996
tp @s[scores={cutSceneTimer=92}] 7502.78 125.54 299.6 155.4 26.46996
tp @s[scores={cutSceneTimer=93}] 7502.78 125.54 299.6 155.4 26.31996
tp @s[scores={cutSceneTimer=94}] 7502.78 125.54 299.6 155.4 26.16996
tp @s[scores={cutSceneTimer=95}] 7502.78 125.54 299.6 155.4 26.01996
tp @s[scores={cutSceneTimer=96}] 7502.78 125.54 299.6 155.4 25.86996
tp @s[scores={cutSceneTimer=97}] 7502.78 125.54 299.6 155.4 25.71996
tp @s[scores={cutSceneTimer=98}] 7502.78 125.54 299.6 155.4 25.56996
tp @s[scores={cutSceneTimer=99}] 7502.78 125.54 299.6 155.4 25.41996
tp @s[scores={cutSceneTimer=100}] 7502.78 125.54 299.6 155.4 25.26996
tp @s[scores={cutSceneTimer=101}] 7502.78 125.54 299.6 155.4 25.11996
tp @s[scores={cutSceneTimer=102}] 7502.78 125.54 299.6 155.4 24.96996
tp @s[scores={cutSceneTimer=103}] 7502.78 125.54 299.6 155.4 24.81997
tp @s[scores={cutSceneTimer=104}] 7502.78 125.54 299.6 155.4 24.66997
tp @s[scores={cutSceneTimer=105}] 7502.78 125.54 299.6 155.4 24.51997
tp @s[scores={cutSceneTimer=106}] 7502.78 125.54 299.6 155.4 24.36997
tp @s[scores={cutSceneTimer=107}] 7502.78 125.54 299.6 155.4 24.21997
tp @s[scores={cutSceneTimer=108}] 7502.78 125.54 299.6 155.4 24.06997
tp @s[scores={cutSceneTimer=109}] 7502.78 125.54 299.6 155.4 23.91997
tp @s[scores={cutSceneTimer=110}] 7502.78 125.54 299.6 155.4 23.76997
tp @s[scores={cutSceneTimer=111}] 7502.78 125.54 299.6 155.4 23.61997
tp @s[scores={cutSceneTimer=112}] 7502.78 125.54 299.6 155.4 23.46997
tp @s[scores={cutSceneTimer=113}] 7502.78 125.54 299.6 155.4 23.31997
tp @s[scores={cutSceneTimer=114}] 7502.78 125.54 299.6 155.4 23.16997
tp @s[scores={cutSceneTimer=115}] 7502.78 125.54 299.6 155.4 23.01997
tp @s[scores={cutSceneTimer=116}] 7502.78 125.54 299.6 155.4 22.86997
tp @s[scores={cutSceneTimer=117}] 7502.78 125.54 299.6 155.4 22.71997
tp @s[scores={cutSceneTimer=118}] 7502.78 125.54 299.6 155.4 22.56997
tp @s[scores={cutSceneTimer=119}] 7502.78 125.54 299.6 155.4 22.41997
tp @s[scores={cutSceneTimer=120}] 7502.78 125.54 299.6 155.4 22.26997
tp @s[scores={cutSceneTimer=121}] 7502.78 125.54 299.6 155.4 22.11997
tp @s[scores={cutSceneTimer=122}] 7502.78 125.54 299.6 155.4 21.96997
tp @s[scores={cutSceneTimer=123}] 7502.78 125.54 299.6 155.4 21.81997
tp @s[scores={cutSceneTimer=124}] 7502.78 125.54 299.6 155.4 21.66997
tp @s[scores={cutSceneTimer=125}] 7502.78 125.54 299.6 155.4 21.51997
tp @s[scores={cutSceneTimer=126}] 7502.78 125.54 299.6 155.4 21.36997
tp @s[scores={cutSceneTimer=127}] 7502.78 125.54 299.6 155.4 21.21997
tp @s[scores={cutSceneTimer=128}] 7502.78 125.54 299.6 155.4 21.06997
tp @s[scores={cutSceneTimer=129}] 7502.78 125.54 299.6 155.4 20.91998
tp @s[scores={cutSceneTimer=130}] 7502.78 125.54 299.6 155.4 20.76998
tp @s[scores={cutSceneTimer=131}] 7502.78 125.54 299.6 155.4 20.61998
tp @s[scores={cutSceneTimer=132}] 7502.78 125.54 299.6 155.4 20.46998
tp @s[scores={cutSceneTimer=133}] 7502.78 125.54 299.6 155.4 20.31998
tp @s[scores={cutSceneTimer=134}] 7502.78 125.54 299.6 155.4 20.16998
tp @s[scores={cutSceneTimer=135}] 7502.78 125.54 299.6 155.4 20.01998
tp @s[scores={cutSceneTimer=136}] 7502.78 125.54 299.6 155.4 19.86998
tp @s[scores={cutSceneTimer=137}] 7502.78 125.54 299.6 155.4 19.71998
tp @s[scores={cutSceneTimer=138}] 7502.78 125.54 299.6 155.4 19.56998
tp @s[scores={cutSceneTimer=139}] 7502.78 125.54 299.6 155.4 19.41998
tp @s[scores={cutSceneTimer=140}] 7502.78 125.54 299.6 155.4 19.26998
tp @s[scores={cutSceneTimer=141}] 7502.78 125.54 299.6 155.4 19.11998
tp @s[scores={cutSceneTimer=142}] 7502.78 125.54 299.6 155.4 18.96998
tp @s[scores={cutSceneTimer=143}] 7502.78 125.54 299.6 155.4 18.81998
tp @s[scores={cutSceneTimer=144}] 7502.78 125.54 299.6 155.4 18.66998
tp @s[scores={cutSceneTimer=145}] 7502.78 125.54 299.6 155.4 18.51998
tp @s[scores={cutSceneTimer=146}] 7502.78 125.54 299.6 155.4 18.36998
tp @s[scores={cutSceneTimer=147}] 7502.78 125.54 299.6 155.4 18.21998
tp @s[scores={cutSceneTimer=148}] 7502.78 125.54 299.6 155.4 18.06998
tp @s[scores={cutSceneTimer=149}] 7502.78 125.54 299.6 155.4 17.91998
tp @s[scores={cutSceneTimer=150}] 7502.78 125.54 299.6 155.4 17.76998
tp @s[scores={cutSceneTimer=151}] 7502.78 125.54 299.6 155.4 17.61998
tp @s[scores={cutSceneTimer=152}] 7502.78 125.54 299.6 155.4 17.46998
tp @s[scores={cutSceneTimer=153}] 7502.78 125.54 299.6 155.4 17.31998
tp @s[scores={cutSceneTimer=154}] 7502.78 125.54 299.6 155.4 17.16998
tp @s[scores={cutSceneTimer=155}] 7502.78 125.54 299.6 155.4 17.01999
tp @s[scores={cutSceneTimer=156}] 7502.78 125.54 299.6 155.4 16.86999
tp @s[scores={cutSceneTimer=157}] 7502.78 125.54 299.6 155.4 16.71999
tp @s[scores={cutSceneTimer=158}] 7502.78 125.54 299.6 155.4 16.56999
tp @s[scores={cutSceneTimer=159}] 7502.78 125.54 299.6 155.4 16.41999
tp @s[scores={cutSceneTimer=160}] 7502.78 125.54 299.6 155.4 16.26999
tp @s[scores={cutSceneTimer=161}] 7502.78 125.54 299.6 155.4 16.11999
tp @s[scores={cutSceneTimer=162}] 7502.78 125.54 299.6 155.4 15.96999
tp @s[scores={cutSceneTimer=163}] 7502.78 125.54 299.6 155.4 15.81999
tp @s[scores={cutSceneTimer=164}] 7502.78 125.54 299.6 155.4 15.66999
tp @s[scores={cutSceneTimer=165}] 7502.78 125.54 299.6 155.4 15.51999
tp @s[scores={cutSceneTimer=166}] 7502.78 125.54 299.6 155.4 15.36999
tp @s[scores={cutSceneTimer=167}] 7502.78 125.54 299.6 155.4 15.21999
tp @s[scores={cutSceneTimer=168}] 7502.78 125.54 299.6 155.4 15.06999
tp @s[scores={cutSceneTimer=169}] 7502.78 125.54 299.6 155.4 14.91999
tp @s[scores={cutSceneTimer=170}] 7502.78 125.54 299.6 155.4 14.76999
tp @s[scores={cutSceneTimer=171}] 7502.78 125.54 299.6 155.4 14.61999
tp @s[scores={cutSceneTimer=172}] 7502.78 125.54 299.6 155.4 14.46999
tp @s[scores={cutSceneTimer=173}] 7502.78 125.54 299.6 155.4 14.31999
tp @s[scores={cutSceneTimer=174}] 7502.78 125.54 299.6 155.4 14.16999
tp @s[scores={cutSceneTimer=175}] 7502.78 125.54 299.6 155.4 14.01999
tp @s[scores={cutSceneTimer=176}] 7502.78 125.54 299.6 155.4 13.86999
tp @s[scores={cutSceneTimer=177}] 7502.78 125.54 299.6 155.4 13.71999
tp @s[scores={cutSceneTimer=178}] 7502.78 125.54 299.6 155.4 13.56999
tp @s[scores={cutSceneTimer=179}] 7502.78 125.54 299.6 155.4 13.41999
tp @s[scores={cutSceneTimer=180}] 7502.78 125.54 299.6 155.4 13.26999
tp @s[scores={cutSceneTimer=181}] 7502.78 125.54 299.6 155.4 13.12
tp @s[scores={cutSceneTimer=182}] 7502.78 125.54 299.6 155.4 12.97
tp @s[scores={cutSceneTimer=183}] 7502.78 125.54 299.6 155.4 12.82
tp @s[scores={cutSceneTimer=184}] 7502.78 125.54 299.6 155.4 12.67
tp @s[scores={cutSceneTimer=185}] 7502.78 125.54 299.6 155.4 12.52
tp @s[scores={cutSceneTimer=186}] 7502.78 125.54 299.6 155.4 12.37
tp @s[scores={cutSceneTimer=187}] 7502.78 125.54 299.6 155.4 12.22
tp @s[scores={cutSceneTimer=188}] 7502.78 125.54 299.6 155.4 12.07
tp @s[scores={cutSceneTimer=189}] 7502.78 125.54 299.6 155.4 11.92
tp @s[scores={cutSceneTimer=190}] 7502.78 125.54 299.6 155.4 11.77
tp @s[scores={cutSceneTimer=191}] 7502.78 125.54 299.6 155.4 11.62
tp @s[scores={cutSceneTimer=192}] 7502.78 125.54 299.6 155.4 11.47
tp @s[scores={cutSceneTimer=193}] 7502.78 125.54 299.6 155.4 11.32
tp @s[scores={cutSceneTimer=194}] 7502.78 125.54 299.6 155.4 11.17
tp @s[scores={cutSceneTimer=195}] 7502.78 125.54 299.6 155.4 11.02
tp @s[scores={cutSceneTimer=196}] 7502.78 125.54 299.6 155.4 10.87
tp @s[scores={cutSceneTimer=197}] 7502.78 125.54 299.6 155.4 10.72
tp @s[scores={cutSceneTimer=198}] 7502.78 125.54 299.6 155.4 10.57
tp @s[scores={cutSceneTimer=199}] 7502.78 125.54 299.6 155.4 10.42
tp @s[scores={cutSceneTimer=200}] 7502.78 125.54 299.6 155.4 10.27
execute as @s[scores={cutSceneTimer=180}] run function hp:cutscenes/fade_in

execute as @s[scores={cutSceneTimer=202}] run tag @s remove letterbox
execute as @s[scores={cutSceneTimer=202}] run tag @s remove cutsceneLevitate
execute as @s[scores={cutSceneTimer=202}] run tag @s remove cutsceneZoom
execute as @s[scores={cutSceneTimer=203}] run function hp:cutscenes/revert_to_start_position
execute as @s[scores={cutSceneTimer=203}] run function hp:cutscenes/fade_out
execute as @s[scores={cutSceneTimer=224}] run function hp:cutscenes/exit_cutscene



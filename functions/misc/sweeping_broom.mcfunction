scoreboard players add @s animTest 1
scoreboard players set @s[scores={animTest=57..}] animTest 1

# Animation
tp @s[scores={animTest=1}] ^0 ^1.69488 ^-0.153584
tp @s[scores={animTest=2}] ^0.0595476 ^1.68588 ^-0.152179
tp @s[scores={animTest=3}] ^0.115998 ^1.66052 ^-0.147935
tp @s[scores={animTest=4}] ^0.165588 ^1.62797 ^-0.140828
tp @s[scores={animTest=5}] ^0.208899 ^1.60261 ^-0.130867
tp @s[scores={animTest=6}] ^0.246829 ^1.59361 ^-0.118097
tp @s[scores={animTest=7}] ^0.278634 ^1.60038 ^-0.10261
tp @s[scores={animTest=8}] ^0.303275 ^1.62009 ^-0.0845496
tp @s[scores={animTest=9}] ^0.320517 ^1.64843 ^-0.0641196
tp @s[scores={animTest=10}] ^0.331087 ^1.67677 ^-0.0415845
tp @s[scores={animTest=11}] ^0.336348 ^1.69648 ^-0.0172713
tp @s[scores={animTest=12}] ^0.337799 ^1.70325 ^0
tp @s[scores={animTest=13}] ^0.332082 ^1.6995 ^0.0351003
tp @s[scores={animTest=14}] ^0.316099 ^1.6883 ^0.0622545
tp @s[scores={animTest=15}] ^0.291027 ^1.67067 ^0.0894088
tp @s[scores={animTest=16}] ^0.257419 ^1.6492 ^0.116074
tp @s[scores={animTest=17}] ^0.215222 ^1.62773 ^0.14178
tp @s[scores={animTest=18}] ^0.163522 ^1.6101 ^0.166094
tp @s[scores={animTest=19}] ^0.099575 ^1.5989 ^0.188629
tp @s[scores={animTest=20}] ^0.013512 ^1.59515 ^0.209059
tp @s[scores={animTest=21}] ^-0.0806226 ^1.59914 ^0.227119
tp @s[scores={animTest=22}] ^-0.148651 ^1.61092 ^0.242606
tp @s[scores={animTest=23}] ^-0.196293 ^1.62888 ^0.255376
tp @s[scores={animTest=24}] ^-0.228587 ^1.64925 ^0.265337
tp @s[scores={animTest=25}] ^-0.249046 ^1.66721 ^0.272444
tp @s[scores={animTest=26}] ^-0.260101 ^1.679 ^0.276688
tp @s[scores={animTest=27}] ^-0.263483 ^1.68298 ^0.278093
tp @s[scores={animTest=28}] ^-0.260383 ^1.6793 ^0.276964
tp @s[scores={animTest=29}] ^-0.250174 ^1.66842 ^0.273556
tp @s[scores={animTest=30}] ^-0.231107 ^1.65185 ^0.267849
tp @s[scores={animTest=31}] ^-0.200702 ^1.63304 ^0.259842
tp @s[scores={animTest=32}] ^-0.155365 ^1.61647 ^0.249557
tp @s[scores={animTest=33}] ^-0.0900876 ^1.60559 ^0.237045
tp @s[scores={animTest=34}] ^0 ^1.60191 ^0.222386
tp @s[scores={animTest=35}] ^0.0960527 ^1.60461 ^0.205699
tp @s[scores={animTest=36}] ^0.170458 ^1.61266 ^0.187139
tp @s[scores={animTest=37}] ^0.223294 ^1.62534 ^0.166902
tp @s[scores={animTest=38}] ^0.259032 ^1.64079 ^0.145226
tp @s[scores={animTest=39}] ^0.281527 ^1.65623 ^0.122384
tp @s[scores={animTest=40}] ^0.293594 ^1.66891 ^0.0986833
tp @s[scores={animTest=41}] ^0.297263 ^1.67696 ^0.0744565
tp @s[scores={animTest=42}] ^0.295587 ^1.67966 ^0.0500525
tp @s[scores={animTest=43}] ^0.290018 ^1.67673 ^0.0258257
tp @s[scores={animTest=44}] ^0.279522 ^1.66798 ^0.0212502
tp @s[scores={animTest=45}] ^0.262671 ^1.65420 ^-0.020717
tp @s[scores={animTest=46}] ^0.237503 ^1.63741 ^-0.0423933
tp @s[scores={animTest=47}] ^0.201458 ^1.62062 ^-0.0626297
tp @s[scores={animTest=48}] ^0.151838 ^1.60684 ^-0.0811897
tp @s[scores={animTest=49}] ^0.0877563 ^1.59809 ^-0.0978771
tp @s[scores={animTest=50}] ^0.013512 ^1.59515 ^-0.112536
tp @s[scores={animTest=51}] ^-0.0351338 ^1.60131 ^-0.125048
tp @s[scores={animTest=52}] ^-0.0546013 ^1.61924 ^-0.135333
tp @s[scores={animTest=53}] ^-0.0585166 ^1.64502 ^-0.14334
tp @s[scores={animTest=54}] ^-0.0508172 ^1.67079 ^-0.149047
tp @s[scores={animTest=55}] ^-0.152455 ^1.68872 ^-0.152455
tp @s[scores={animTest=56}] ^0 ^1.69488 ^-0.153584

execute as @s[scores={animTest=9}] at @s run particle minecraft:dust 0.8 0.8 0.75 1 ~ ~.25 ~ 0.2 0 0.2 1 5 normal
execute as @s[scores={animTest=22}] at @s run particle minecraft:dust 0.8 0.8 0.75 1 ~ ~.25 ~ 0.2 0 0.2 1 5 normal
execute as @s[scores={animTest=35}] at @s run particle minecraft:dust 0.8 0.8 0.75 1 ~ ~.25 ~ 0.2 0 0.2 1 5 normal
execute as @s[scores={animTest=49}] at @s run particle minecraft:dust 0.8 0.8 0.75 1 ~ ~.25 ~ 0.2 0 0.2 1 5 normal

execute as @s[scores={animTest=5}] at @s run playsound minecraft:custom.misc.broom.sweep master @a
execute as @s[scores={animTest=17}] at @s run playsound minecraft:custom.misc.broom.sweep master @a
execute as @s[scores={animTest=30}] at @s run playsound minecraft:custom.misc.broom.sweep master @a
execute as @s[scores={animTest=44}] at @s run playsound minecraft:custom.misc.broom.sweep master @a


data merge entity @s[scores={animTest=1}] {Pose:{Head:[10.0261f,0f,-2.06111f]}}
data merge entity @s[scores={animTest=2}] {Pose:{Head:[10.0073f,0f,-2.04249f]}}
data merge entity @s[scores={animTest=3}] {Pose:{Head:[9.84459f,0f,-1.98625f]}}
data merge entity @s[scores={animTest=4}] {Pose:{Head:[9.34134f,0f,-1.89209f]}}
data merge entity @s[scores={animTest=5}] {Pose:{Head:[8.37644f,0f,-1.76016f]}}
data merge entity @s[scores={animTest=6}] {Pose:{Head:[6.99269f,0f,-1.59118f]}}
data merge entity @s[scores={animTest=7}] {Pose:{Head:[4.62368f,0f,-1.38654f]}}
data merge entity @s[scores={animTest=8}] {Pose:{Head:[0.767427f,0f,-1.1484f]}}
data merge entity @s[scores={animTest=9}] {Pose:{Head:[-3.91361f,0f,-0.879764f]}}
data merge entity @s[scores={animTest=10}] {Pose:{Head:[-8.2405f,0f,-0.584549f]}}
data merge entity @s[scores={animTest=11}] {Pose:{Head:[-11.1233f,0f,-0.267538f]}}
data merge entity @s[scores={animTest=12}] {Pose:{Head:[-12.0899f,0f,0.065692f]}}
data merge entity @s[scores={animTest=13}] {Pose:{Head:[-12.0508f,0f,0.408928f]}}
data merge entity @s[scores={animTest=14}] {Pose:{Head:[-11.9005f,0f,0.755548f]}}
data merge entity @s[scores={animTest=15}] {Pose:{Head:[-11.5813f,0f,1.09878f]}}
data merge entity @s[scores={animTest=16}] {Pose:{Head:[-11.0366f,0f,1.43201f]}}
data merge entity @s[scores={animTest=17}] {Pose:{Head:[-10.2332f,0f,1.74902f]}}
data merge entity @s[scores={animTest=18}] {Pose:{Head:[-9.17769f,0f,2.04424f]}}
data merge entity @s[scores={animTest=19}] {Pose:{Head:[-7.90865f,0f,2.31287f]}}
data merge entity @s[scores={animTest=20}] {Pose:{Head:[-6.47683f,0f,2.55102f]}}
data merge entity @s[scores={animTest=21}] {Pose:{Head:[-4.55055f,0f,2.75566f]}}
data merge entity @s[scores={animTest=22}] {Pose:{Head:[-1.82957f,0f,2.92464f]}}
data merge entity @s[scores={animTest=23}] {Pose:{Head:[1.41517f,0f,3.05656f]}}
data merge entity @s[scores={animTest=24}] {Pose:{Head:[4.66977f,0f,3.15073f]}}
data merge entity @s[scores={animTest=25}] {Pose:{Head:[7.34095f,0f,3.20697f]}}
data merge entity @s[scores={animTest=26}] {Pose:{Head:[9.01723f,0f,3.22559f]}}
data merge entity @s[scores={animTest=27}] {Pose:{Head:[9.56821f,0f,3.21267f]}}
data merge entity @s[scores={animTest=28}] {Pose:{Head:[9.55944f,0f,3.17368f]}}
data merge entity @s[scores={animTest=29}] {Pose:{Head:[9.48691f,0f,3.10839f]}}
data merge entity @s[scores={animTest=30}] {Pose:{Head:[9.25833f,0f,3.01676f]}}
data merge entity @s[scores={animTest=31}] {Pose:{Head:[8.77257f,0f,2.89902f]}}
data merge entity @s[scores={animTest=32}] {Pose:{Head:[7.96612f,0f,2.75566f]}}
data merge entity @s[scores={animTest=33}] {Pose:{Head:[6.84102f,0f,2.58752f]}}
data merge entity @s[scores={animTest=34}] {Pose:{Head:[5.44659f,0f,2.39581f]}}
data merge entity @s[scores={animTest=35}] {Pose:{Head:[3.32846f,0f,2.18214f]}}
data merge entity @s[scores={animTest=36}] {Pose:{Head:[0.062337f,0f,1.94857f]}}
data merge entity @s[scores={animTest=37}] {Pose:{Head:[-4.00622f,0f,1.69756f]}}
data merge entity @s[scores={animTest=38}] {Pose:{Head:[-8.19203f,0f,1.43201f]}}
data merge entity @s[scores={animTest=39}] {Pose:{Head:[-11.6827f,0f,1.15519f]}}
data merge entity @s[scores={animTest=40}] {Pose:{Head:[-13.8963f,0f,0.870669f]}}
data merge entity @s[scores={animTest=41}] {Pose:{Head:[-14.6287f,0f,0.582238f]}}
data merge entity @s[scores={animTest=42}] {Pose:{Head:[-14.5752f,0f,0.293807f]}}
data merge entity @s[scores={animTest=43}] {Pose:{Head:[-14.3834f,0f,0.009284f]}}
data merge entity @s[scores={animTest=44}] {Pose:{Head:[-14.0009f,0f,-0.267538f]}}
data merge entity @s[scores={animTest=45}] {Pose:{Head:[-13.3764f,0f,-0.533086f]}}
data merge entity @s[scores={animTest=46}] {Pose:{Head:[-12.4759f,0f,-0.784094f]}}
data merge entity @s[scores={animTest=47}] {Pose:{Head:[-11.2973f,0f,-1.01767f]}}
data merge entity @s[scores={animTest=48}] {Pose:{Head:[-9.87136f,0f,-1.23133f]}}
data merge entity @s[scores={animTest=49}] {Pose:{Head:[-8.24731f,0f,-1.42304f]}}
data merge entity @s[scores={animTest=50}] {Pose:{Head:[-6.47683f,0f,-1.59118f]}}
data merge entity @s[scores={animTest=51}] {Pose:{Head:[-4.05716f,0f,-1.73454f]}}
data merge entity @s[scores={animTest=52}] {Pose:{Head:[-0.589586f,0f,-1.85229f]}}
data merge entity @s[scores={animTest=53}] {Pose:{Head:[3.3805f,0f,-1.94391f]}}
data merge entity @s[scores={animTest=54}] {Pose:{Head:[6.93395f,0f,-2.00921f]}}
data merge entity @s[scores={animTest=55}] {Pose:{Head:[9.25635f,0f,-2.00921f]}}
data merge entity @s[scores={animTest=56}] {Pose:{Head:[10.0261f,0f,-2.06111f]}}
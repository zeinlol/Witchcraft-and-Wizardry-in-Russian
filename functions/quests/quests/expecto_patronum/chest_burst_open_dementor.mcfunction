# Particles
execute as @s[scores={animTest=3}] at @s run particle minecraft:smoke ~ ~1.25 ~ 0.2 0.2 0.2 0.03 100 force
execute as @s[scores={animTest=1}] at @s run playsound minecraft:block.chest.open master @a ~ ~ ~ 2 1
execute as @s[scores={animTest=1}] at @s run playsound minecraft:custom.fx.impact master @a ~ ~ ~ 2 1
execute as @s[scores={animTest=10}] at @s run playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 2 1
execute as @s[scores={animTest=20}] at @s run playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 2 1
execute as @s[scores={animTest=15}] at @s run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 2 1
execute as @s[scores={animTest=15}] at @s run playsound minecraft:entity.phantom.hurt master @a ~ ~ ~ 2 1
execute as @s[scores={animTest=50}] at @s run playsound minecraft:entity.phantom.hurt master @a ~ ~ ~ 2 1
execute as @s[scores={animTest=50}] at @s run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 2 1
execute as @s[scores={animTest=51}] at @s run playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 2 1
execute as @s[scores={animTest=90}] at @s run playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 2 1
execute as @s[scores={animTest=109}] at @s run playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 2 1
execute as @s[scores={animTest=107}] at @s run playsound minecraft:block.chest.close master @a ~ ~ ~ 2 1
execute as @s[scores={animTest=119}] at @s run playsound minecraft:custom.fx.impact master @a ~ ~ ~ 2 1

# Unhide dementor
execute as @s[scores={animTest=1}] as @e[tag=patronusCutsceneDementor,limit=1] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 74

execute as @s[scores={animTest=..1}] run data merge entity @s {Pose:{RightArm:[0f,0f,0f],Head:[90f,0f,0f]}}
execute as @s[scores={animTest=2}] run data merge entity @s {Pose:{RightArm:[-0.100918f,-0.139287f,-0.447029f],Head:[87.7024f,-0.92916f,0f]}}
execute as @s[scores={animTest=3}] run data merge entity @s {Pose:{RightArm:[-0.160754f,-0.285833f,-0.917354f],Head:[80.8095f,-3.71664f,0f]}}
execute as @s[scores={animTest=4}] run data merge entity @s {Pose:{RightArm:[-0.219428f,-0.45531f,-1.46127f],Head:[69.3213f,-3.38644f,0f]}}
execute as @s[scores={animTest=5}] run data merge entity @s {Pose:{RightArm:[-0.265589f,-0.621494f,-1.99463f],Head:[53.2378f,-3.80879f,0f]}}
execute as @s[scores={animTest=6}] run data merge entity @s {Pose:{RightArm:[-0.284858f,-0.752236f,-2.41423f],Head:[32.5591f,-4.15434f,0f]}}
execute as @s[scores={animTest=7}] run data merge entity @s {Pose:{RightArm:[-0.255333f,-0.806812f,-2.58939f],Head:[7.28515f,-4.42311f,0f]}}
execute as @s[scores={animTest=8}] run data merge entity @s {Pose:{RightArm:[-0.16676f,-0.701252f,-2.20252f],Head:[-22.5841f,-3.1273f,0f]}}
execute as @s[scores={animTest=9}] run data merge entity @s {Pose:{RightArm:[-0.019138f,-0.38457f,-1.04191f],Head:[-57.0486f,0.760125f,0f]}}
execute as @s[scores={animTest=10}] run data merge entity @s {Pose:{RightArm:[0.070411f,0.143232f,0.892442f],Head:[-79.7022f,2.74132f,0f]}}
execute as @s[scores={animTest=11}] run data merge entity @s {Pose:{RightArm:[0.014047f,0.463403f,2.06584f],Head:[-63.201f,1.91671f,0f]}}
execute as @s[scores={animTest=12}] run data merge entity @s {Pose:{RightArm:[0.016731f,0.261879f,1.32727f],Head:[-51.295f,3.68372f,0f]}}
execute as @s[scores={animTest=13}] run data merge entity @s {Pose:{RightArm:[0.078464f,0.271475f,1.36244f],Head:[-43.9844f,3.54451f,0f]}}
execute as @s[scores={animTest=14}] run data merge entity @s {Pose:{RightArm:[0.082124f,0.492192f,1.17135f],Head:[-41.269f,3.97287f,0f]}}
execute as @s[scores={animTest=15}] run data merge entity @s {Pose:{RightArm:[0.100912f,0.505278f,1.21931f],Head:[-43.1489f,3.72456f,0f]}}
execute as @s[scores={animTest=16}] run data merge entity @s {Pose:{RightArm:[0.105548f,0.572453f,1f],Head:[-49.624f,2.97965f,0f]}}
execute as @s[scores={animTest=17}] run data merge entity @s {Pose:{RightArm:[0.105548f,0.589029f,1.3f],Head:[-60.6945f,1.73811f,0f]}}
execute as @s[scores={animTest=18}] run data merge entity @s {Pose:{RightArm:[0.093076f,0.519427f,1.2f],Head:[-76.3601f,-0.000035f,0f]}}
execute as @s[scores={animTest=19}] run data merge entity @s {Pose:{RightArm:[0.05566f,0.310621f,0.5f],Head:[-80.2149f,0.744885f,0f]}}
execute as @s[scores={animTest=20}] run data merge entity @s {Pose:{RightArm:[0.003195f,0.017832f,0.076478f],Head:[-74.993f,0.993192f,0f]}}
execute as @s[scores={animTest=21}] run data merge entity @s {Pose:{RightArm:[0.024738f,0.138054f,-0.292089f],Head:[-74.3663f,0.744885f,0f]}}
execute as @s[scores={animTest=22}] run data merge entity @s {Pose:{RightArm:[0.021336f,0.119071f,-0.110677f],Head:[-78.335f,-0.000034f,0f]}}
execute as @s[scores={animTest=23}] run data merge entity @s {Pose:{RightArm:[0.002886f,0.016106f,-0.069077f],Head:[-84.1645f,0.248272f,0f]}}
execute as @s[scores={animTest=24}] run data merge entity @s {Pose:{RightArm:[0.00402f,0.022434f,-0.096215f],Head:[-82.2846f,-0.000035f,0f]}}
execute as @s[scores={animTest=25}] run data merge entity @s {Pose:{RightArm:[0f,0f,0f],Head:[-85f,0f,0f]}}

execute as @s[scores={animTest=112}] run data merge entity @s {Pose:{RightArm:[0f,0f,0f],Head:[-85f,0f,0f]}}
execute as @s[scores={animTest=113}] run data merge entity @s {Pose:{RightArm:[0f,0f,0f],Head:[-80.403f,0f,0f]}}
execute as @s[scores={animTest=114}] run data merge entity @s {Pose:{RightArm:[0f,0f,0f],Head:[-67.59f,0f,0f]}}
execute as @s[scores={animTest=115}] run data merge entity @s {Pose:{RightArm:[0f,0f,0f],Head:[-47.6842f,0f,0f]}}
execute as @s[scores={animTest=116}] run data merge entity @s {Pose:{RightArm:[0f,0f,0f],Head:[-21.4531f,0f,0f]}}
execute as @s[scores={animTest=117}] run data merge entity @s {Pose:{RightArm:[0f,0f,0f],Head:[10.6343f,0f,0f]}}
execute as @s[scores={animTest=118}] run data merge entity @s {Pose:{RightArm:[0f,0f,0f],Head:[48.4613f,0f,0f]}}
execute as @s[scores={animTest=119}] run data merge entity @s {Pose:{RightArm:[0f,0f,0f],Head:[92.9282f,0f,0f]}}

# Jump
execute as @s[scores={animTest=..3}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~ ~
execute as @s[scores={animTest=4}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~0.070654 ~
execute as @s[scores={animTest=5}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~0.12829 ~
execute as @s[scores={animTest=6}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~0.27781 ~
execute as @s[scores={animTest=7}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~0.342335 ~
execute as @s[scores={animTest=8}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~0.322541 ~
execute as @s[scores={animTest=9}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~0.26316 ~
execute as @s[scores={animTest=10}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~0.164191 ~
execute as @s[scores={animTest=11}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~0.025634 ~
execute as @s[scores={animTest=12}] at @s align xyz positioned ~0.5 ~0.35 ~0.5 run tp @s ~ ~ ~


# Dementor Rotation out of chest
execute as @s[scores={animTest=..1}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute as @s[scores={animTest=2}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[0.544417f,0f,0f]}}
execute as @s[scores={animTest=3}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[2.08646f,0f,0f]}}
execute as @s[scores={animTest=4}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[4.41594f,0f,0f]}}
execute as @s[scores={animTest=5}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[7.33598f,0f,0f]}}
execute as @s[scores={animTest=6}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[10.6497f,0f,0f]}}
execute as @s[scores={animTest=7}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[14.1603f,0f,0f]}}
execute as @s[scores={animTest=8}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[17.671f,0f,0f]}}
execute as @s[scores={animTest=9}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[20.9847f,0f,0f]}}
execute as @s[scores={animTest=10}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[23.9048f,0f,0f]}}
execute as @s[scores={animTest=11}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[26.2342f,0f,0f]}}
execute as @s[scores={animTest=12}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[27.7763f,0f,0f]}}
execute as @s[scores={animTest=13}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[28.334f,0f,0f]}}
execute as @s[scores={animTest=14}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[28.0731f,0f,0f]}}
execute as @s[scores={animTest=15}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[27.3305f,0f,0f]}}
execute as @s[scores={animTest=16}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[26.1663f,0f,0f]}}
execute as @s[scores={animTest=17}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[24.6409f,0f,0f]}}
execute as @s[scores={animTest=18}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[22.8144f,0f,0f]}}
execute as @s[scores={animTest=19}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[20.7471f,0f,0f]}}
execute as @s[scores={animTest=20}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[18.4991f,0f,0f]}}
execute as @s[scores={animTest=21}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[16.1307f,0f,0f]}}
execute as @s[scores={animTest=22}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[13.7021f,0f,0f]}}
execute as @s[scores={animTest=23}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[11.2734f,0f,0f]}}
execute as @s[scores={animTest=24}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[8.90502f,0f,0f]}}
execute as @s[scores={animTest=25}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[6.65703f,0f,0f]}}
execute as @s[scores={animTest=26}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[4.58969f,0f,0f]}}
execute as @s[scores={animTest=27}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[2.7632f,0f,0f]}}
execute as @s[scores={animTest=28}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[1.23777f,0f,0f]}}
execute as @s[scores={animTest=29}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[0.073636f,0f,0f]}}
execute as @s[scores={animTest=30}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[-0.669003f,0f,0f]}}
execute as @s[scores={animTest=31}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[0f,0f,0f]}}

# Dementor Position out of chest
execute as @s[scores={animTest=..1}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^-1.00684 ^0 ~ ~
execute as @s[scores={animTest=2}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^-0.94938 ^0.004811 ~ ~
execute as @s[scores={animTest=3}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^-0.789929 ^0.020528 ~ ~
execute as @s[scores={animTest=4}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^-0.54788 ^0.049387 ~ ~
execute as @s[scores={animTest=5}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^-0.242624 ^0.093989 ~ ~
execute as @s[scores={animTest=6}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^0.106445 ^0.157051 ~ ~
execute as @s[scores={animTest=7}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^0.479936 ^0.240718 ~ ~
execute as @s[scores={animTest=8}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^0.858457 ^0.34525 ~ ~
execute as @s[scores={animTest=9}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^1.22262 ^0.467558 ~ ~
execute as @s[scores={animTest=10}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^1.55302 ^0.600809 ~ ~
execute as @s[scores={animTest=11}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^1.83027 ^0.736537 ~ ~
execute as @s[scores={animTest=12}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.03499 ^0.867565 ~ ~
execute as @s[scores={animTest=13}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.14777 ^0.989553 ~ ~
execute as @s[scores={animTest=14}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.20483 ^1.10073 ~ ~
execute as @s[scores={animTest=15}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.25556 ^1.2039 ~ ~
execute as @s[scores={animTest=16}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.30033 ^1.30221 ~ ~
execute as @s[scores={animTest=17}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.33951 ^1.39568 ~ ~
execute as @s[scores={animTest=18}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.37347 ^1.48429 ~ ~
execute as @s[scores={animTest=19}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.40259 ^1.56799 ~ ~
execute as @s[scores={animTest=20}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.42724 ^1.64666 ~ ~
execute as @s[scores={animTest=21}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.4478 ^1.72019 ~ ~
execute as @s[scores={animTest=22}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.46462 ^1.78838 ~ ~
execute as @s[scores={animTest=23}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.4781 ^1.85104 ~ ~
execute as @s[scores={animTest=24}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.48859 ^1.90791 ~ ~
execute as @s[scores={animTest=25}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.49648 ^1.95871 ~ ~
execute as @s[scores={animTest=26}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.50213 ^2.00309 ~ ~
execute as @s[scores={animTest=27}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.50591 ^2.04065 ~ ~
execute as @s[scores={animTest=28}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.50821 ^2.07094 ~ ~
execute as @s[scores={animTest=29}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.50939 ^2.09342 ~ ~
execute as @s[scores={animTest=30}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.50983 ^2.10747 ~ ~
execute as @s[scores={animTest=31}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^ ^2.50989 ^2.11233 ~ ~

# Dementor Position back in chest
execute as @s[scores={animTest=50}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0 ^2.50989 ^2.11234 ~-0.869595 ~
execute as @s[scores={animTest=51}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0.028744 ^2.53076 ^2.11233 ~-3.38026 ~
execute as @s[scores={animTest=52}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0.141709 ^2.53076 ^2.11234 ~-7.32378 ~
execute as @s[scores={animTest=53}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0.309417 ^2.67023 ^2.1118 ~-12.5156 ~
execute as @s[scores={animTest=54}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0.518844 ^2.77459 ^2.10925 ~-18.7763 ~
execute as @s[scores={animTest=55}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0.758168 ^2.89422 ^2.10323 ~-25.926 ~
execute as @s[scores={animTest=56}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^1.01479 ^3.02308 ^2.09207 ~-33.7782 ~
execute as @s[scores={animTest=57}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^1.24862 ^3.14482 ^2.07353 ~-42.1309 ~
execute as @s[scores={animTest=58}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^1.44144 ^3.25154 ^2.04428 ~-50.7559 ~
execute as @s[scores={animTest=59}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^1.60466 ^3.34693 ^2.00802 ~-59.2272 ~
execute as @s[scores={animTest=60}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^1.74494 ^3.43321 ^1.96895 ~-67.3098 ~
execute as @s[scores={animTest=61}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^1.86656 ^3.51184 ^1.92159 ~-75.0336 ~
execute as @s[scores={animTest=62}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^1.97244 ^3.58382 ^1.85835 ~-82.4293 ~
execute as @s[scores={animTest=63}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.06467 ^3.64987 ^1.76947 ~-89.5282 ~
execute as @s[scores={animTest=64}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.14479 ^3.71054 ^1.65778 ~-96.3621 ~
execute as @s[scores={animTest=65}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.21396 ^3.7662 ^1.53404 ~-102.964 ~
execute as @s[scores={animTest=66}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.27308 ^3.81716 ^1.39937 ~-109.366 ~
execute as @s[scores={animTest=67}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.32282 ^3.86364 ^1.25518 ~-115.604 ~
execute as @s[scores={animTest=68}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.3637 ^3.9058 ^1.10301 ~-121.71 ~
execute as @s[scores={animTest=69}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.39613 ^3.94375 ^0.944503 ~-127.719 ~
execute as @s[scores={animTest=70}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.42037 ^3.97755 ^0.781285 ~-133.667 ~
execute as @s[scores={animTest=71}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.43663 ^4.00725 ^0.614887 ~-139.588 ~
execute as @s[scores={animTest=72}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.44502 ^4.03283 ^0.398894 ~-145.519 ~
execute as @s[scores={animTest=73}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.44556 ^4.05427 ^0.241051 ~-151.495 ~
execute as @s[scores={animTest=74}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.43823 ^4.0715 ^0.10251 ~-157.553 ~
execute as @s[scores={animTest=75}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.42289 ^4.08442 ^-0.059887 ~-163.728 ~
execute as @s[scores={animTest=76}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.39936 ^4.09292 ^-0.238444 ~-170.056 ~
execute as @s[scores={animTest=77}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.36734 ^4.09681 ^-0.428235 ~-176.575 ~
execute as @s[scores={animTest=78}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.32722 ^4.09761 ^-0.625708 ~-183.319 ~
execute as @s[scores={animTest=79}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.27813 ^4.09685 ^-0.827992 ~-190.325 ~
execute as @s[scores={animTest=80}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.21737 ^4.09436 ^-1.03247 ~-197.629 ~
execute as @s[scores={animTest=81}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.14213 ^4.08996 ^-1.2364 ~-205.266 ~
execute as @s[scores={animTest=82}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^2.05138 ^4.08343 ^-1.43645 ~-213.271 ~
execute as @s[scores={animTest=83}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^1.94909 ^4.07452 ^-1.62784 ~-221.68 ~
execute as @s[scores={animTest=84}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^1.8441 ^4.06296 ^-1.80218 ~-230.526 ~
execute as @s[scores={animTest=85}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^1.7445 ^4.0484 ^-1.93951 ~-239.813 ~
execute as @s[scores={animTest=85}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^1.64514 ^4.03048 ^-2.04765 ~-249.439 ~
execute as @s[scores={animTest=86}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^1.5421 ^4.00875 ^-2.15151 ~-259.289 ~
execute as @s[scores={animTest=87}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^1.43717 ^3.98271 ^-2.2398 ~-269.251 ~
execute as @s[scores={animTest=88}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^1.32852 ^3.9518 ^-2.30832 ~-279.214 ~
execute as @s[scores={animTest=89}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^1.21458 ^3.91538 ^-2.35629 ~-289.071 ~
execute as @s[scores={animTest=90}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^1.09686 ^3.87276 ^-2.38448 ~-298.719 ~
execute as @s[scores={animTest=91}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0.977036 ^3.82324 ^-2.39422 ~-308.053 ~
execute as @s[scores={animTest=92}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0.856899 ^3.76611 ^-2.38698 ~-316.972 ~
execute as @s[scores={animTest=93}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0.738325 ^3.70081 ^-2.36424 ~-325.376 ~
execute as @s[scores={animTest=94}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0.623205 ^3.63078 ^-2.32732 ~-333.164 ~
execute as @s[scores={animTest=95}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0.513386 ^3.55726 ^-2.27745 ~-340.238 ~
execute as @s[scores={animTest=96}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0.410611 ^3.47727 ^-2.21571 ~-346.499 ~
execute as @s[scores={animTest=97}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0.316474 ^3.38849 ^-2.14307 ~-351.847 ~
execute as @s[scores={animTest=98}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0.232372 ^3.28901 ^-2.06037 ~-356.183 ~
execute as @s[scores={animTest=99}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0.159488 ^3.17728 ^-1.96838 ~-359.406 ~
execute as @s[scores={animTest=100}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0.098771 ^3.05193 ^-1.86777 ~-361.416 ~
execute as @s[scores={animTest=101}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0.050943 ^2.91173 ^-1.61282 ~-362.109 ~
execute as @s[scores={animTest=102}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0.016506 ^2.75558 ^-1.22537 ~-361.963 ~
execute as @s[scores={animTest=103}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0 ^2.58245 ^-0.693578 ~-361.556 ~
execute as @s[scores={animTest=104}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0 ^2.39135 ^-0.356873 ~-360.934 ~
execute as @s[scores={animTest=105}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0 ^2.18133 ^-0.208279 ~-360.139 ~
execute as @s[scores={animTest=106}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0 ^1.95144 ^-0.114598 ~-359.216 ~
execute as @s[scores={animTest=107}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0 ^1.70076 ^-0.046838 ~-358.211 ~
execute as @s[scores={animTest=108}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0 ^1.40825 ^0.003916 ~-357.174 ~
execute as @s[scores={animTest=109}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0 ^1.0448 ^0.041598 ~-356.163 ~
execute as @s[scores={animTest=110}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0 ^0.596531 ^0.0681 ~-355.269 ~
execute as @s[scores={animTest=111}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0 ^0.05582 ^0.084176 ~-354.536 ~
execute as @s[scores={animTest=112}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0 ^-0.545068 ^0.08971 ~-353.961 ~
execute as @s[scores={animTest=113}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0 ^-1.05493 ^0.08971 ~-353.536 ~
execute as @s[scores={animTest=114}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0 ^-1.24631 ^0.08971 ~-353.247 ~
execute as @s[scores={animTest=115}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0 ^-2.25 ^0.08971 ~-353.247 ~
execute as @s[scores={animTest=116}] at @s run tp @e[tag=patronusCutsceneDementor,limit=1] ^0 ^-3 ^0.08971 ~-353.247 ~

execute as @s[scores={animTest=70}] as @e[tag=patronusCutsceneDementor,limit=1] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 73
execute as @s[scores={animTest=114}] as @e[tag=patronusCutsceneDementor,limit=1] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 74


# Dementor Rotation out of chest
execute as @s[scores={animTest=50}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[-0.929924f,0f,0f]}}
execute as @s[scores={animTest=51}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[-0.645283f,0f,0f]}}
execute as @s[scores={animTest=52}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[0.1703f,0f,0f]}}
execute as @s[scores={animTest=53}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[1.46314f,0f,0f]}}
execute as @s[scores={animTest=54}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[3.18349f,0f,0f]}}
execute as @s[scores={animTest=55}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[5.28414f,0f,0f]}}
execute as @s[scores={animTest=56}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[7.71908f,0f,0f]}}
execute as @s[scores={animTest=57}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[10.442f,0f,0f]}}
execute as @s[scores={animTest=58}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[13.4044f,0f,0f]}}
execute as @s[scores={animTest=59}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[16.5531f,0f,0f]}}
execute as @s[scores={animTest=60}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[19.6496f,0f,0f]}}
execute as @s[scores={animTest=61}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[22.5017f,0f,0f]}}
execute as @s[scores={animTest=62}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[25.1208f,0f,0f]}}
execute as @s[scores={animTest=63}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[27.5176f,0f,0f]}}
execute as @s[scores={animTest=64}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[29.7028f,0f,0f]}}
execute as @s[scores={animTest=65}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[31.6868f,0f,0f]}}
execute as @s[scores={animTest=66}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[33.4795f,0f,0f]}}
execute as @s[scores={animTest=67}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[35.0908f,0f,0f]}}
execute as @s[scores={animTest=68}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[36.5305f,0f,0f]}}
execute as @s[scores={animTest=69}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[37.8081f,0f,0f]}}
execute as @s[scores={animTest=70}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[38.9331f,0f,0f]}}
execute as @s[scores={animTest=71}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[39.9148f,0f,0f]}}
execute as @s[scores={animTest=72}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[40.7625f,0f,0f]}}
execute as @s[scores={animTest=73}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[41.4855f,0f,0f]}}
execute as @s[scores={animTest=74}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[42.0929f,0f,0f]}}
execute as @s[scores={animTest=75}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[42.5942f,0f,0f]}}
execute as @s[scores={animTest=76}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[42.9987f,0f,0f]}}
execute as @s[scores={animTest=77}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[43.3158f,0f,0f]}}
execute as @s[scores={animTest=78}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[43.5551f,0f,0f]}}
execute as @s[scores={animTest=79}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[43.7263f,0f,0f]}}
execute as @s[scores={animTest=80}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[43.8394f,0f,0f]}}
execute as @s[scores={animTest=81}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[43.9046f,0f,0f]}}
execute as @s[scores={animTest=82}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[43.9325f,0f,0f]}}
execute as @s[scores={animTest=83}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[43.9338f,0f,0f]}}
execute as @s[scores={animTest=84}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[43.9199f,0f,0f]}}
execute as @s[scores={animTest=85}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[43.9024f,0f,0f]}}
execute as @s[scores={animTest=85}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[43.8938f,0f,0f]}}
execute as @s[scores={animTest=86}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[43.7243f,0f,0f]}}
execute as @s[scores={animTest=87}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[43.2655f,0f,0f]}}
execute as @s[scores={animTest=88}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[42.5821f,0f,0f]}}
execute as @s[scores={animTest=89}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[41.7294f,0f,0f]}}
execute as @s[scores={animTest=90}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[40.7564f,0f,0f]}}
execute as @s[scores={animTest=91}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[39.7082f,0f,0f]}}
execute as @s[scores={animTest=92}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[38.6283f,0f,0f]}}
execute as @s[scores={animTest=93}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[37.5603f,0f,0f]}}
execute as @s[scores={animTest=94}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[36.5496f,0f,0f]}}
execute as @s[scores={animTest=95}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[35.646f,0f,0f]}}
execute as @s[scores={animTest=96}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[34.906f,0f,0f]}}
execute as @s[scores={animTest=97}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[34.3976f,0f,0f]}}
execute as @s[scores={animTest=98}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[34.2052f,0f,0f]}}
execute as @s[scores={animTest=99}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[34.4494f,0f,0f]}}
execute as @s[scores={animTest=100}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[35.2618f,0f,0f]}}
execute as @s[scores={animTest=101}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[36.7827f,0f,0f]}}
execute as @s[scores={animTest=102}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[39.1748f,0f,0f]}}
execute as @s[scores={animTest=103}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[42.6021f,0f,0f]}}
execute as @s[scores={animTest=104}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[47.1812f,0f,0f]}}
execute as @s[scores={animTest=105}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[52.9108f,0f,0f]}}
execute as @s[scores={animTest=106}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[59.622f,0f,0f]}}
execute as @s[scores={animTest=107}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[67.0094f,0f,0f]}}
execute as @s[scores={animTest=108}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[74.7338f,0f,0f]}}
execute as @s[scores={animTest=109}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[85.2631f,0f,0f]}}
execute as @s[scores={animTest=110}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[99.7518f,0f,0f]}}
execute as @s[scores={animTest=111}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[116.668f,0f,0f]}}
execute as @s[scores={animTest=112}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[134.999f,0f,0f]}}
execute as @s[scores={animTest=113}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[153.955f,0f,0f]}}
execute as @s[scores={animTest=114}] at @s run data merge entity @e[tag=patronusCutsceneDementor,limit=1] {Pose:{Head:[162.813f,0f,0f]}}
# Hide dementor
execute as @s[scores={animTest=130}] as @e[tag=patronusCutsceneDementor,limit=1] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 0

scoreboard players add @s[scores={animTest=..45}] animTest 1
scoreboard players add @s[scores={animTest=46..149},tag=returnToChest] animTest 1
execute as @s[scores={animTest=150}] run tag @s remove returnToChest
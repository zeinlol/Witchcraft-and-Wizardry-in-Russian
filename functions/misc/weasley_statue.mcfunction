execute as @s[scores={animTest=1}] run data merge entity @s {Pose:{Head:[0f,0f,28f]}}
execute as @s[scores={animTest=2}] run data merge entity @s {Pose:{Head:[0f,0f,28.1488f]}}
execute as @s[scores={animTest=3}] run data merge entity @s {Pose:{Head:[0f,0f,28.3359f]}}
execute as @s[scores={animTest=4}] run data merge entity @s {Pose:{Head:[0f,0f,28.5986f]}}
execute as @s[scores={animTest=5}] run data merge entity @s {Pose:{Head:[0f,0f,28.937f]}}
execute as @s[scores={animTest=6}] run data merge entity @s {Pose:{Head:[0f,0f,29.3506f]}}
execute as @s[scores={animTest=7}] run data merge entity @s {Pose:{Head:[0f,0f,29.8388f]}}
execute as @s[scores={animTest=8}] run data merge entity @s {Pose:{Head:[0f,0f,30.4f]}}
execute as @s[scores={animTest=9}] run data merge entity @s {Pose:{Head:[0f,0f,31.0325f]}}
execute as @s[scores={animTest=10}] run data merge entity @s {Pose:{Head:[0f,0f,31.7337f]}}
execute as @s[scores={animTest=11}] run data merge entity @s {Pose:{Head:[0f,0f,32.5005f]}}
execute as @s[scores={animTest=12}] run data merge entity @s {Pose:{Head:[0f,0f,33.329f]}}
execute as @s[scores={animTest=13}] run data merge entity @s {Pose:{Head:[0f,0f,34.2148f]}}
execute as @s[scores={animTest=14}] run data merge entity @s {Pose:{Head:[0f,0f,35.1526f]}}
execute as @s[scores={animTest=15}] run data merge entity @s {Pose:{Head:[0f,0f,36.1366f]}}
execute as @s[scores={animTest=16}] run data merge entity @s {Pose:{Head:[0f,0f,37.1601f]}}
execute as @s[scores={animTest=17}] run data merge entity @s {Pose:{Head:[0f,0f,38.216f]}}
execute as @s[scores={animTest=18}] run data merge entity @s {Pose:{Head:[0f,0f,39.2967f]}}
execute as @s[scores={animTest=19}] run data merge entity @s {Pose:{Head:[0f,0f,40.3941f]}}
execute as @s[scores={animTest=20}] run data merge entity @s {Pose:{Head:[0f,0f,41.5f]}}
execute as @s[scores={animTest=21}] run data merge entity @s {Pose:{Head:[0f,0f,42.6059f]}}
execute as @s[scores={animTest=22}] run data merge entity @s {Pose:{Head:[0f,0f,43.7033f]}}
execute as @s[scores={animTest=23}] run data merge entity @s {Pose:{Head:[0f,0f,44.784f]}}
execute as @s[scores={animTest=24}] run data merge entity @s {Pose:{Head:[0f,0f,45.8399f]}}
execute as @s[scores={animTest=25}] run data merge entity @s {Pose:{Head:[0f,0f,46.8634f]}}
execute as @s[scores={animTest=26}] run data merge entity @s {Pose:{Head:[0f,0f,47.8473f]}}
execute as @s[scores={animTest=27}] run data merge entity @s {Pose:{Head:[0f,0f,48.7852f]}}
execute as @s[scores={animTest=28}] run data merge entity @s {Pose:{Head:[0f,0f,49.671f]}}
execute as @s[scores={animTest=29}] run data merge entity @s {Pose:{Head:[0f,0f,50.4995f]}}
execute as @s[scores={animTest=30}] run data merge entity @s {Pose:{Head:[0f,0f,51.2663f]}}
execute as @s[scores={animTest=31}] run data merge entity @s {Pose:{Head:[0f,0f,51.9675f]}}
execute as @s[scores={animTest=32}] run data merge entity @s {Pose:{Head:[0f,0f,52.6f]}}
execute as @s[scores={animTest=33}] run data merge entity @s {Pose:{Head:[0f,0f,53.1612f]}}
execute as @s[scores={animTest=34}] run data merge entity @s {Pose:{Head:[0f,0f,53.6494f]}}
execute as @s[scores={animTest=35}] run data merge entity @s {Pose:{Head:[0f,0f,54.063f]}}
execute as @s[scores={animTest=36}] run data merge entity @s {Pose:{Head:[0f,0f,54.4014f]}}
execute as @s[scores={animTest=37}] run data merge entity @s {Pose:{Head:[0f,0f,54.6641f]}}
execute as @s[scores={animTest=38}] run data merge entity @s {Pose:{Head:[0f,0f,54.8512f]}}
execute as @s[scores={animTest=39}] run data merge entity @s {Pose:{Head:[0f,0f,54.9629f]}}
execute as @s[scores={animTest=40}] run data merge entity @s {Pose:{Head:[0f,0f,55f]}}

execute as @s[tag=!goBack,scores={animTest=40..}] run tag @s add goBack
execute as @s[tag=goBack,scores={animTest=..1}] run tag @s remove goBack
scoreboard players remove @s[tag=goBack] animTest 1
scoreboard players add @s[tag=!goBack] animTest 1
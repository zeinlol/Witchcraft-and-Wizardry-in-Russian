scoreboard players remove @s animTest 1
scoreboard players set @s[scores={animTest=..33}] animTest 43

execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get @s animTest

scoreboard players add @s tmp 1

# Make the patronus repel dementors
# execute at @s as @e[type=minecraft:phantom,tag=dementorEngine,distance=..10] run function hp:spells/spell/patronus_blast

scoreboard players set @s[scores={tmp=40..}] tmp 0
execute as @s[scores={tmp=1}] at @s run tp @s ^ ^ ^0.45 ~12.54 ~
execute as @s[scores={tmp=2}] at @s run tp @s ^ ^ ^0.45 ~12.39 ~
execute as @s[scores={tmp=3}] at @s run tp @s ^ ^ ^0.45 ~11.93 ~
execute as @s[scores={tmp=4}] at @s run tp @s ^ ^ ^0.45 ~11.18 ~
execute as @s[scores={tmp=5}] at @s run tp @s ^ ^ ^0.45 ~10.15 ~
execute as @s[scores={tmp=6}] at @s run tp @s ^ ^ ^0.45 ~8.88 ~
execute as @s[scores={tmp=7}] at @s run tp @s ^ ^ ^0.45 ~7.39 ~
execute as @s[scores={tmp=8}] at @s run tp @s ^ ^ ^0.45 ~5.72 ~
execute as @s[scores={tmp=9}] at @s run tp @s ^ ^ ^0.45 ~3.91 ~
execute as @s[scores={tmp=10}] at @s run tp @s ^ ^ ^0.45 ~2 ~
execute as @s[scores={tmp=11}] at @s run tp @s ^ ^ ^0.45 ~0.04 ~
execute as @s[scores={tmp=12}] at @s run tp @s ^ ^ ^0.45 ~-1.92 ~
execute as @s[scores={tmp=13}] at @s run tp @s ^ ^ ^0.45 ~-3.83 ~
execute as @s[scores={tmp=14}] at @s run tp @s ^ ^ ^0.45 ~-5.64 ~
execute as @s[scores={tmp=15}] at @s run tp @s ^ ^ ^0.45 ~-7.32 ~
execute as @s[scores={tmp=16}] at @s run tp @s ^ ^ ^0.45 ~-8.82 ~
execute as @s[scores={tmp=17}] at @s run tp @s ^ ^ ^0.45 ~-10.1 ~
execute as @s[scores={tmp=18}] at @s run tp @s ^ ^ ^0.45 ~-11.14 ~
execute as @s[scores={tmp=19}] at @s run tp @s ^ ^ ^0.45 ~-11.9 ~
execute as @s[scores={tmp=20}] at @s run tp @s ^ ^ ^0.45 ~-12.37 ~
execute as @s[scores={tmp=21}] at @s run tp @s ^ ^ ^0.45 ~-12.54 ~
execute as @s[scores={tmp=22}] at @s run tp @s ^ ^ ^0.45 ~-12.4 ~
execute as @s[scores={tmp=23}] at @s run tp @s ^ ^ ^0.45 ~-11.95 ~
execute as @s[scores={tmp=24}] at @s run tp @s ^ ^ ^0.45 ~-11.22 ~
execute as @s[scores={tmp=25}] at @s run tp @s ^ ^ ^0.45 ~-10.2 ~
execute as @s[scores={tmp=26}] at @s run tp @s ^ ^ ^0.45 ~-8.94 ~
execute as @s[scores={tmp=27}] at @s run tp @s ^ ^ ^0.45 ~-7.46 ~
execute as @s[scores={tmp=28}] at @s run tp @s ^ ^ ^0.45 ~-5.79 ~
execute as @s[scores={tmp=29}] at @s run tp @s ^ ^ ^0.45 ~-3.99 ~
execute as @s[scores={tmp=30}] at @s run tp @s ^ ^ ^0.45 ~-2.08 ~
execute as @s[scores={tmp=31}] at @s run tp @s ^ ^ ^0.45 ~-0.13 ~
execute as @s[scores={tmp=32}] at @s run tp @s ^ ^ ^0.45 ~1.83 ~
execute as @s[scores={tmp=33}] at @s run tp @s ^ ^ ^0.45 ~3.74 ~
execute as @s[scores={tmp=34}] at @s run tp @s ^ ^ ^0.45 ~5.57 ~
execute as @s[scores={tmp=35}] at @s run tp @s ^ ^ ^0.45 ~7.25 ~
execute as @s[scores={tmp=36}] at @s run tp @s ^ ^ ^0.45 ~8.76 ~
execute as @s[scores={tmp=37}] at @s run tp @s ^ ^ ^0.45 ~11.1 ~
execute as @s[scores={tmp=38}] at @s run tp @s ^ ^ ^0.45 ~11.87 ~
execute as @s[scores={tmp=39}] at @s run tp @s ^ ^ ^0.45 ~12.36 ~

scoreboard players add @s idle 1
execute as @s[scores={idle=200}] run kill @s
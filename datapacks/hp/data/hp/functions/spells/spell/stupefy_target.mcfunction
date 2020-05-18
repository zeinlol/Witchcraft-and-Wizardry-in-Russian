# execute as @s[scores={animTest=1..}] at @s run tp @s ~ ~ ~ ~22.5 ~


execute as @s[scores={animTest=24}] at @s run tp @s ~ ~ ~ ~23.1105 ~
execute as @s[scores={animTest=23}] at @s run tp @s ~ ~ ~ ~25.3136 ~
execute as @s[scores={animTest=22}] at @s run tp @s ~ ~ ~ ~26.3599 ~
execute as @s[scores={animTest=21}] at @s run tp @s ~ ~ ~ ~26.5310 ~
execute as @s[scores={animTest=20}] at @s run tp @s ~ ~ ~ ~26.0660 ~
execute as @s[scores={animTest=19}] at @s run tp @s ~ ~ ~ ~25.1580 ~
execute as @s[scores={animTest=18}] at @s run tp @s ~ ~ ~ ~23.9520 ~
execute as @s[scores={animTest=17}] at @s run tp @s ~ ~ ~ ~22.5540 ~
execute as @s[scores={animTest=16}] at @s run tp @s ~ ~ ~ ~21.0430 ~
execute as @s[scores={animTest=15}] at @s run tp @s ~ ~ ~ ~19.4710 ~
execute as @s[scores={animTest=14}] at @s run tp @s ~ ~ ~ ~17.8800 ~
execute as @s[scores={animTest=13}] at @s run tp @s ~ ~ ~ ~16.2940 ~
execute as @s[scores={animTest=12}] at @s run tp @s ~ ~ ~ ~14.7300 ~
execute as @s[scores={animTest=11}] at @s run tp @s ~ ~ ~ ~13.2040 ~
execute as @s[scores={animTest=10}] at @s run tp @s ~ ~ ~ ~11.7180 ~
execute as @s[scores={animTest=9}] at @s run tp @s ~ ~ ~ ~10.2790 ~
execute as @s[scores={animTest=8}] at @s run tp @s ~ ~ ~ ~8.8910 ~
execute as @s[scores={animTest=7}] at @s run tp @s ~ ~ ~ ~7.5530 ~
execute as @s[scores={animTest=6}] at @s run tp @s ~ ~ ~ ~6.2620 ~
execute as @s[scores={animTest=5}] at @s run tp @s ~ ~ ~ ~5.0230 ~
execute as @s[scores={animTest=4}] at @s run tp @s ~ ~ ~ ~3.8290 ~
execute as @s[scores={animTest=3}] at @s run tp @s ~ ~ ~ ~2.6820 ~
execute as @s[scores={animTest=2}] at @s run tp @s ~ ~ ~ ~1.5790 ~
execute as @s[scores={animTest=1}] at @s run tp @s ~ ~ ~ ~0.5170 ~

execute as @s[scores={animTest=24},tag=!manualAudio] at @s run playsound minecraft:custom.gameplay_element.target.hit master @a ~ ~ ~ 4 1
execute as @s[scores={animTest=24}] at @s run setblock ~ 1 ~ minecraft:redstone_block
execute as @s[scores={animTest=23}] at @s run setblock ~ 1 ~ minecraft:quartz_block
execute as @s[scores={animTest=24}] at @s run data merge entity @s {Health:10000f,Attributes:[{Name:generic.maxHealth,Base:10000}]}

execute as @s[scores={animTest=1..}] at @s run scoreboard players remove @s animTest 1
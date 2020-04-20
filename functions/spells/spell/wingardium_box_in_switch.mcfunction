# Box in switch animation
execute as @s[scores={idle=10}] at @s run tp @s ~ ~.1 ~
execute as @s[scores={idle=9}] at @s run tp @s ~ ~0.05 ~
execute as @s[scores={idle=8}] at @s run tp @s ~ ~ ~
execute as @s[scores={idle=7}] at @s run tp @s ~ ~-0.05 ~
execute as @s[scores={idle=6}] at @s run tp @s ~ ~-0.1 ~
execute as @s[scores={idle=5}] at @s run tp @s ~ ~-0.15 ~
execute as @s[scores={idle=4}] at @s run tp @s ~ ~-0.175 ~
execute as @s[scores={idle=3}] at @s run tp @s ~ ~-0.2 ~
execute as @s[scores={idle=2}] at @s run tp @s ~ ~-0.225 ~
execute as @s[scores={idle=1}] at @s run tp @s ~ ~-0.25 ~
execute as @s[scores={idle=1}] at @s run particle cloud ~ ~.25 ~ .25 .25 .25 .015 25
execute as @s[scores={idle=0}] at @s run tp @s ~ ~-0.55 ~
execute as @s[scores={idle=1..}] run scoreboard players remove @s idle 1
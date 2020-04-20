# Reset
execute as @s[tag=reset] unless score @s idle matches 1.. at @s unless entity @p[distance=..60] run function hp:misc/owl/owl_reset
execute as @s[tag=reset] at @s if entity @p[tag=!play,distance=..20] run function hp:misc/owl/owl_reset

# Scare
execute as @s[tag=!reset] at @s if entity @p[distance=..6,tag=play] run function hp:misc/owl/owl_disturbed

execute as @s[scores={animTest=1..}] run function hp:misc/owl/owl_fly_away

execute as @s[tag=reset,scores={idle=1..}] run scoreboard players remove @s idle 1
# Reset
execute as @s[tag=reset] run function hp:misc/pigeons_reset

# Scare
execute as @s[tag=!reset] unless score @s idle matches 1.. at @s if entity @p[distance=..7,tag=play,tag=!playerIsInvisible] run function hp:misc/pigeons_scared
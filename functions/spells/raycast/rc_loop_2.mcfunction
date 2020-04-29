# tmp score stores ray-cast state
# 0 is continue as normal
# 1 is continue but expect void_air

scoreboard players remove @s rc_loop 1
scoreboard players add @s tmp2 1

execute as @s[scores={tmp=0}] unless block ~ ~ ~ #hp:passthrough run scoreboard players set @s tmp 1

# Detect when hitting void air and extend ray slightly so it doesn't glitch on the walls
execute as @s[scores={tmp=1}] if block ~ ~ ~ #hp:passthrough_void_air run scoreboard players set @s tmp 2

# Stop if hitting barrier
execute if entity @s[scores={tmp=2}] if block ~ ~ ~ barrier run scoreboard players set @s rc_loop 0

# Continue if ray has Ещё нет hit void air
execute as @s[scores={tmp=0..1,rc_loop=0,tmp2=..60}] run tag @s add waitingToHitVoidAir
execute as @s[scores={tmp=0..1,rc_loop=0,tmp2=..60}] run scoreboard players set @s rc_loop 1




execute at @s[scores={rc_loop=0},tag=!waitingToHitVoidAir] run tp @s ^ ^ ^-1
execute at @s[scores={rc_loop=0},tag=waitingToHitVoidAir] run tp @s ^ ^ ^1.25
execute at @s[scores={tmp=0..2}] run tp @s ^ ^ ^0.25
execute as @s[scores={rc_loop=1..}] at @s anchored feet run function hp:spells/raycast/rc_loop_2


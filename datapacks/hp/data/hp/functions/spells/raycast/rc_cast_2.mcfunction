# kill @e[type=area_effect_cloud,tag=rc_ray]
# summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:[rc_ray]}
execute at @s run tp @e[tag=rc_ray,limit=1] ~ ~1.25 ~ ~ ~

tag @e[tag=rc_ray,limit=1] remove waitingToHitVoidAir
scoreboard players operation @e[tag=rc_ray,limit=1] rc_loop = @s rc_loop
scoreboard players set @e[tag=rc_ray,limit=1] tmp2 0
scoreboard players set @e[tag=rc_ray,limit=1] tmp 0

execute as @e[tag=rc_ray,limit=1] at @s run function hp:spells/raycast/rc_loop_2
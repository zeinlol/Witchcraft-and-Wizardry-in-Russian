kill @e[type=area_effect_cloud,tag=rc_ray_box]
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[rc_ray_box]}
tp @e[tag=rc_ray_box,limit=1] ~ ~ ~ facing entity @e[tag=rc_ray,limit=1]

scoreboard players set @e[tag=rc_ray_box,limit=1] rc_loop 50

execute as @e[tag=rc_ray_box,limit=1] at @s run function hp:spells/raycast/rc_loop_3
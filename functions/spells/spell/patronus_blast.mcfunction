execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:0,Particle:"block air",Tags:[dementorDirectionCheck]}
execute at @s run tp @e[tag=dementorDirectionCheck,limit=1] ~ ~ ~ facing entity @p[tag=activePlayer] feet
tp @e[tag=dementorDirectionCheck,limit=1,sort=nearest] ^ ^ ^2

# X
execute store result score @s tmp3 run data get entity @e[tag=dementorDirectionCheck,limit=1,sort=nearest] Pos[0] 10
execute store result score @s tmp4 run data get entity @s Pos[0] 10
execute run scoreboard players operation @s tmp3 -= @s tmp4
execute store result entity @s Motion[0] double -0.03 run scoreboard players get @s tmp3

# Y
execute store result score @s tmp3 run data get entity @e[tag=dementorDirectionCheck,limit=1,sort=nearest] Pos[1] 10
execute store result score @s tmp4 run data get entity @s Pos[1] 10
execute run scoreboard players operation @s tmp3 -= @s tmp4
execute store result entity @s Motion[1] double -0.03 run scoreboard players get @s tmp3

# Z
execute store result score @s tmp3 run data get entity @e[tag=dementorDirectionCheck,limit=1,sort=nearest] Pos[2] 10
execute store result score @s tmp4 run data get entity @s Pos[2] 10
execute run scoreboard players operation @s tmp3 -= @s tmp4
execute store result entity @s Motion[2] double -0.03 run scoreboard players get @s tmp3

# Fly back to normal position
scoreboard players set @s idle 1


# Lose player focus
data merge entity @s {HurtTime:6s}

kill @e[tag=dementorDirectionCheck]
execute if score @s tmp matches 1.. run scoreboard players remove @s tmp 1
execute if score @s tmp matches 1.. at @s rotated as @s run tp @s ^ ^0.35 ^.4

execute unless score @s tmp matches 1.. run kill @s
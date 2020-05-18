execute as @s[tag=!doNotDespawn] unless score @s tmp matches 1.. unless score @s tmp2 matches 1.. run kill @s
execute as @s[tag=!doNotDespawn] if score @s tmp matches 1.. run scoreboard players remove @s tmp 1

execute if score @s tmp matches 1.. unless score @s tmp2 matches 1.. at @s run playsound minecraft:custom.inventory.items.cloud_rain master @a ~ ~-4 ~
execute unless score @s tmp2 matches 1.. run scoreboard players set @s tmp2 140
execute if score @s tmp2 matches 1.. run scoreboard players remove @s tmp2 1


execute at @s run particle minecraft:cloud ~ ~1.25 ~ 0.5 0.15 0.5 0.001 8 force
execute at @s run particle minecraft:dripping_water ~ ~1.25 ~ 0.5 0.15 0.5 0.001 1 force
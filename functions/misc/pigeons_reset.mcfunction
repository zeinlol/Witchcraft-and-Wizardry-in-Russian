# Reset
execute at @s if entity @p[sort=nearest,distance=..20] run scoreboard players set @s idle 0
execute if score @s idle matches 1.. run scoreboard players remove @s idle 1

execute unless score @s idle matches 1.. at @s unless entity @p[distance=..70,tag=play] store result score @s tmp3 run data get entity @s HandItems[1].tag.rotation 1
execute unless score @s idle matches 1.. at @s unless entity @p[distance=..70,tag=play] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:101}}],HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:101}},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute unless score @s idle matches 1.. at @s unless entity @p[distance=..70,tag=play] store result entity @s HandItems[1].tag.rotation float 1 store result entity @s Rotation[0] float 10 run scoreboard players get @s tmp3
execute unless score @s idle matches 1.. at @s unless entity @p[distance=..70,tag=play] run tag @s remove reset

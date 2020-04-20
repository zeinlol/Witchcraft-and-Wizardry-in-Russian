# Reset
execute store result entity @s Pos[0] double 0.001 run data get entity @s ArmorItems[3].tag.posX 1
execute store result entity @s Pos[1] double 0.001 run data get entity @s ArmorItems[3].tag.posY 1
execute store result entity @s Pos[2] double 0.001 run data get entity @s ArmorItems[3].tag.posZ 1
# execute at @s run tp @s ~.5 ~.75 ~.5
execute store result entity @s ArmorItems[3].tag.Unbreakable int 1 run scoreboard players set @s tmp 1
execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 32

scoreboard players set @s idle 0
scoreboard players set @s animTest 0

tag @s remove reset
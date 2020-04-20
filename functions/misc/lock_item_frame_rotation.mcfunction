execute store result score @s tmp run data get entity @s ItemRotation 1
execute store result score @s tmp2 run data get entity @s ItemDropChance 1
execute unless score @s tmp = @s tmp2 store result entity @s ItemRotation float 1 run data get entity @s ItemDropChance 1
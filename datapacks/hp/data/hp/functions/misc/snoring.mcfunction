# Snoring NPC

execute unless score @s idle matches 1.. at @s run playsound minecraft:custom.misc.snoring master @a
execute unless score @s idle matches 1.. run scoreboard players set @s idle 100
execute if score @s idle matches 1.. run scoreboard players remove @s idle 1

execute if score @s idle matches 100 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 50
execute if score @s idle matches 99 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 49
execute if score @s idle matches 98 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 48
execute if score @s idle matches 97 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 47
execute if score @s idle matches 96 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 46
execute if score @s idle matches 95 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 45
execute if score @s idle matches 94 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 44
execute if score @s idle matches 92 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 43
execute if score @s idle matches 90 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 42
execute if score @s idle matches 87 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 41
execute if score @s idle matches 84 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 42
execute if score @s idle matches 81 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 43
execute if score @s idle matches 79 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 44
execute if score @s idle matches 77 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 45
execute if score @s idle matches 76 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 46
execute if score @s idle matches 75 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 47
execute if score @s idle matches 74 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 48
execute if score @s idle matches 73 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 49
execute if score @s idle matches 72 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 49
execute if score @s idle matches 71 store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 50
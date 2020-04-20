scoreboard players operation @s tmp2 = @s tmp
scoreboard players set @s tmp 1000
scoreboard players operation @s tmp2 /= @s tmp
scoreboard players set @s tmp 60

scoreboard players operation @s tmp3 = @s tmp2
scoreboard players set @s tmp 60
scoreboard players operation @s tmp3 /= @s tmp

scoreboard players set @s tmp4 60
scoreboard players operation @s tmp4 *= @s tmp3
scoreboard players operation @s tmp2 -= @s tmp4
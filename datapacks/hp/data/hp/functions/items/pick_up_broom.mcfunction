tag @s add activeBroom
execute as @e[type=minecraft:armor_stand,tag=broomElytra] at @s if score @s broomID = @e[tag=activeBroom,limit=1,sort=nearest] broomID run scoreboard players set @s tmp2 2
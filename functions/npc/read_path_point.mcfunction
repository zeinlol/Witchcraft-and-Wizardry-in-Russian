execute store result score @s tmp run data get block ~ 0 ~ Items[0].tag.Enchantments[5].lvl 1
execute if score @s tmp = @s PathID run tag @s add usePathPoint
execute as @s[tag=usePathPoint] store result score @s idle run data get block ~ 0 ~ Items[0].tag.Enchantments[9].lvl 1
execute as @s[tag=usePathPoint] store result entity @s ArmorItems[3].tag.idle int 1 run scoreboard players get @s idle
execute as @s[scores={idle=1..},tag=usePathPoint] run tag @s add stop
execute as @s[scores={idle=1..},tag=usePathPoint] run tag @s add idle
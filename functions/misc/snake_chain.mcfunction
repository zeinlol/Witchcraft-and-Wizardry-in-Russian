execute as @s[scores={animTest=12}] at @s run playsound minecraft:custom.gameplay_element.snake_chain.pull master @a ~ ~ ~ 2 1
execute as @s[scores={animTest=12}] at @s run setblock ~ 1 ~ minecraft:redstone_block
execute as @s[scores={animTest=11}] at @s run setblock ~ 1 ~ minecraft:quartz_block
execute as @s[scores={animTest=11}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 16
execute as @s[scores={animTest=9}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 17
execute as @s[scores={animTest=3}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 16
execute as @s[scores={animTest=1}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 15
execute as @s[scores={animTest=1..}] at @s run scoreboard players remove @s animTest 1
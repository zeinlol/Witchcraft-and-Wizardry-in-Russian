# WHAAAT! I JUST REALIZED THAT >< IS ACTUALLY USEFUL!

# Flip lever state
execute as @s[scores={animTest=7}] run scoreboard players operation @s tmp2 >< @s tmp3
execute store result entity @s ArmorItems[3].tag.tmp2 int 1 run scoreboard players get @s tmp2
execute store result entity @s ArmorItems[3].tag.tmp3 int 1 run scoreboard players get @s tmp3 

# Sound
execute as @s[scores={animTest=7,tmp2=0}] at @s run playsound minecraft:custom.gameplay_element.lever.activate master @a ~ ~ ~ 4 1
execute as @s[scores={animTest=7,tmp2=1}] at @s run playsound minecraft:custom.gameplay_element.lever.deactivate master @a ~ ~ ~ 4 1
execute as @s[scores={animTest=7,tmp2=0}] at @s run setblock ~ 2 ~ minecraft:redstone_block
execute as @s[scores={animTest=6,tmp2=0}] at @s run setblock ~ 1 ~ minecraft:quartz_block
execute as @s[scores={animTest=7,tmp2=1}] at @s run setblock ~ 1 ~ minecraft:redstone_block
execute as @s[scores={animTest=6,tmp2=1}] at @s run setblock ~ 2 ~ minecraft:quartz_block

# Animation
execute as @s[scores={animTest=6,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 14
execute as @s[scores={animTest=5,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 13
execute as @s[scores={animTest=4,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 12
execute as @s[scores={animTest=3,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 11
execute as @s[scores={animTest=2,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 10
execute as @s[scores={animTest=6,tmp2=1}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 10
execute as @s[scores={animTest=5,tmp2=1}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 11
execute as @s[scores={animTest=4,tmp2=1}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 12
execute as @s[scores={animTest=3,tmp2=1}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 13
execute as @s[scores={animTest=2,tmp2=1}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 14
execute as @s[scores={animTest=1..}] at @s run scoreboard players remove @s animTest 1
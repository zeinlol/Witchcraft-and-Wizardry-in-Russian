# WHAAAT! I JUST REALIZED THAT >< IS ACTUALLY USEFUL!

# Flip lever state
execute as @s[scores={animTest=27}] run scoreboard players operation @s tmp2 >< @s tmp3
execute store result entity @s ArmorItems[3].tag.tmp2 int 1 run scoreboard players get @s tmp2
execute store result entity @s ArmorItems[3].tag.tmp3 int 1 run scoreboard players get @s tmp3 

# Sound
execute as @s[scores={animTest=27,tmp2=0}] at @s run playsound minecraft:custom.gameplay_element.lever.activate master @a ~ ~ ~ 1 2
execute as @s[scores={animTest=27,tmp2=0}] at @s run playsound minecraft:custom.spell.vera_verto.vera_verto_1 master @a ~ ~ ~ 1


# Only allow one transfigured object at a time to make designing puzzles easier. This increments a global variable 1 and the active transfigured object if it's ID is older and reset if it is
execute as @s[scores={animTest=27,tmp2=0}] run tag @s add activeVeraVertoObject
execute as @s[scores={animTest=27,tmp2=0}] run scoreboard players add global veraVertoID 1
execute as @s[scores={animTest=27,tmp2=0}] store result entity @s ArmorItems[3].tag.veraVertoID int 1 run scoreboard players operation @s veraVertoID = global veraVertoID
execute as @s[scores={animTest=27,tmp2=1}] run tag @s remove activeVeraVertoObject

execute as @s[scores={animTest=15,tmp2=0}] at @s run function hp:spells/spell/vera_verto_magnet_attract

# Animation
execute as @s[scores={animTest=27,tmp2=0}] at @s positioned ^ ^.2 ^-.3 run particle minecraft:dust 0.4 0.6 1 2 ~ ~ ~ 0.1 0.1 0.1 2 10
execute as @s[scores={animTest=27,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1441
execute as @s[scores={animTest=26,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1440
execute as @s[scores={animTest=25,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1439
execute as @s[scores={animTest=24,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1438
execute as @s[scores={animTest=23,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1437
execute as @s[scores={animTest=22,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1436
execute as @s[scores={animTest=21,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1435
execute as @s[scores={animTest=20,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1434
execute as @s[scores={animTest=19,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1433
execute as @s[scores={animTest=18,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1432
execute as @s[scores={animTest=17,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1431
execute as @s[scores={animTest=16,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1430
execute as @s[scores={animTest=15,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1429

execute as @s[scores={animTest=13,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1429
execute as @s[scores={animTest=12,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1430
execute as @s[scores={animTest=11,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1431
execute as @s[scores={animTest=10,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1432
execute as @s[scores={animTest=9,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1433
execute as @s[scores={animTest=8,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1434
execute as @s[scores={animTest=7,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1435
execute as @s[scores={animTest=6,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1436
execute as @s[scores={animTest=5,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1437
execute as @s[scores={animTest=4,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1438
execute as @s[scores={animTest=3,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1439
execute as @s[scores={animTest=2,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1440
execute as @s[scores={animTest=1,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1443
execute as @s[scores={animTest=1,tmp2=0}] at @s positioned ^ ^.2 ^-.3 run particle minecraft:dust 0.4 0.6 1 2 ~ ~ ~ 0.1 0.1 0.1 2 10
execute as @s[scores={animTest=5,tmp2=0}] at @s run playsound minecraft:custom.gameplay_element.lever.deactivate master @a ~ ~ ~ 1 2
# execute as @s[scores={animTest=5,tmp2=0}] at @s run playsound minecraft:custom.spell.vera_verto.vera_verto_2 master @a ~ ~ ~ 1
execute as @s[scores={animTest=1,tmp2=0}] run scoreboard players operation @s tmp2 >< @s tmp3

execute as @s[scores={animTest=15..}] at @s run scoreboard players remove @s animTest 1
execute if score global magnetPriority matches 0 as @s[scores={animTest=1..14}] at @s run scoreboard players remove @s animTest 1
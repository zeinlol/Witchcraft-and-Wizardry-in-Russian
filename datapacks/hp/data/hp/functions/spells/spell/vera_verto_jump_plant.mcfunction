# WHAAAT! I JUST REALIZED THAT >< IS ACTUALLY USEFUL!

# Flip vera verto state
execute as @s[scores={animTest=9}] run scoreboard players operation @s tmp2 >< @s tmp3
execute store result entity @s ArmorItems[3].tag.tmp2 int 1 run scoreboard players get @s tmp2
execute store result entity @s ArmorItems[3].tag.tmp3 int 1 run scoreboard players get @s tmp3 

# Only allow one transfigured object at a time to make designing puzzles easier. This increments a global variable 1 and the active transfigured object if it's ID is older and reset if it is
execute as @s[scores={animTest=9}] at @s run particle minecraft:dust 0.4 0.6 1 2.3 ~ ~.2 ~ 0.2 0.2 0.2 2 10
execute as @s[scores={animTest=9,tmp2=0}] run tag @s add activeVeraVertoObject
# execute as @s[scores={animTest=9,tmp2=0}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1425
execute as @s[scores={animTest=9,tmp2=0}] run scoreboard players add global veraVertoID 1
execute as @s[scores={animTest=9,tmp2=0}] store result entity @s ArmorItems[3].tag.veraVertoID int 1 run scoreboard players operation @s veraVertoID = global veraVertoID
execute as @s[scores={animTest=9,tmp2=0}] at @s run playsound minecraft:custom.spell.vera_verto.vera_verto_1 master @a
execute as @s[scores={animTest=9,tmp2=1}] run tag @s remove activeVeraVertoObject
# execute as @s[scores={animTest=9,tmp2=1}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1426
execute as @s[scores={animTest=9,tmp2=1}] at @s run playsound minecraft:custom.spell.vera_verto.vera_verto_2 master @a

execute as @s[scores={animTest=9,tmp2=1}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1395
execute as @s[scores={animTest=8,tmp2=1}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1394
execute as @s[scores={animTest=7,tmp2=1}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1393
execute as @s[scores={animTest=6,tmp2=1}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1392
execute as @s[scores={animTest=5,tmp2=1}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1391
execute as @s[scores={animTest=4,tmp2=1}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1390
execute as @s[scores={animTest=3,tmp2=1}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1389
execute as @s[scores={animTest=2,tmp2=1}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1388
execute as @s[scores={animTest=1,tmp2=1}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1426

execute as @s[scores={animTest=9,tmp2=0}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1388
execute as @s[scores={animTest=8,tmp2=0}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1389
execute as @s[scores={animTest=7,tmp2=0}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1390
execute as @s[scores={animTest=6,tmp2=0}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1391
execute as @s[scores={animTest=5,tmp2=0}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1392
execute as @s[scores={animTest=4,tmp2=0}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1393
execute as @s[scores={animTest=3,tmp2=0}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1394
execute as @s[scores={animTest=2,tmp2=0}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1395
execute as @s[scores={animTest=1,tmp2=0}] unless score @s animState matches 1.. store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1425


execute as @s[scores={animTest=1..}] at @s run scoreboard players remove @s animTest 1

# Animation
execute as @s[scores={animState=30}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1424
execute as @s[scores={animState=29}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1423
execute as @s[scores={animState=28}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1422
execute as @s[scores={animState=27}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1421
execute as @s[scores={animState=26}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1420
execute as @s[scores={animState=25}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1419
execute as @s[scores={animState=24}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1418
execute as @s[scores={animState=23}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1417
execute as @s[scores={animState=22}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1416
execute as @s[scores={animState=21}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1415
execute as @s[scores={animState=20}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1414
execute as @s[scores={animState=19}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1413
execute as @s[scores={animState=18}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1412
execute as @s[scores={animState=17}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1411
execute as @s[scores={animState=16}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1410
execute as @s[scores={animState=15}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1409
execute as @s[scores={animState=14}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1408
execute as @s[scores={animState=13}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1407
execute as @s[scores={animState=12}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1406
execute as @s[scores={animState=11}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1405
execute as @s[scores={animState=10}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1404
execute as @s[scores={animState=9}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1403
execute as @s[scores={animState=8}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1402
execute as @s[scores={animState=7}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1401
execute as @s[scores={animState=6}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1400
execute as @s[scores={animState=5}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1399
execute as @s[scores={animState=4}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1398
execute as @s[scores={animState=3}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1397
execute as @s[scores={animState=2}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1396
execute as @s[scores={animState=1}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1425
execute as @s[scores={animState=1..}] at @s run scoreboard players remove @s animState 1
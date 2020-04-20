execute as @s[tag=!init] run scoreboard players set @s idle 150
execute as @s[tag=!init] run tag @s add init
scoreboard players remove @s idle 1
execute as @s unless score @s idle matches 1.. run kill @s

execute as @s[scores={idle=148}] at @s run playsound minecraft:custom.inventory.pickup.metal1 master @a ~ ~ ~ 1
execute as @s[scores={idle=144}] at @s run playsound minecraft:custom.inventory.pickup.metal3 master @a ~ ~ ~ 1
execute as @s[scores={idle=134}] at @s run playsound minecraft:custom.inventory.pickup.metal1 master @a ~ ~ ~ 1
execute as @s[scores={idle=134}] at @s run playsound minecraft:custom.inventory.pickup.metal3 master @a ~ ~ ~ 1
execute as @s[scores={idle=148}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 26
execute as @s[scores={idle=147}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 25
execute as @s[scores={idle=146}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 24
execute as @s[scores={idle=145}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 23
execute as @s[scores={idle=144}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 22
execute as @s[scores={idle=143}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 21
execute as @s[scores={idle=142}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 20
execute as @s[scores={idle=141}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 19
execute as @s[scores={idle=140}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 18
execute as @s[scores={idle=139}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 17
execute as @s[scores={idle=138}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 16
execute as @s[scores={idle=137}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 15
execute as @s[scores={idle=136}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 14
execute as @s[scores={idle=135}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 13
execute as @s[scores={idle=134}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 12
execute as @s[scores={idle=132}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 11
execute as @s[scores={idle=130}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 10
execute as @s[scores={idle=130}] run tag @s add interactable

execute as @s[scores={idle=20}] run tag @s remove interactable

execute as @s[scores={idle=2}] at @s run playsound minecraft:custom.inventory.pickup.metal1 master @a ~ ~ ~ 1
execute as @s[scores={idle=6}] at @s run playsound minecraft:custom.inventory.pickup.metal3 master @a ~ ~ ~ 1
execute as @s[scores={idle=15}] at @s run playsound minecraft:custom.inventory.pickup.metal2 master @a ~ ~ ~ 1
execute as @s[scores={idle=15}] at @s run playsound minecraft:custom.inventory.pickup.metal1 master @a ~ ~ ~ 1 0.4
execute as @s[scores={idle=1}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 26
execute as @s[scores={idle=2}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 25
execute as @s[scores={idle=3}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 24
execute as @s[scores={idle=4}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 23
execute as @s[scores={idle=5}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 22
execute as @s[scores={idle=6}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 21
execute as @s[scores={idle=7}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 20
execute as @s[scores={idle=8}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 19
execute as @s[scores={idle=9}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 18
execute as @s[scores={idle=10}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 17
execute as @s[scores={idle=11}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 16
execute as @s[scores={idle=12}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 15
execute as @s[scores={idle=13}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 14
execute as @s[scores={idle=14}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 13
execute as @s[scores={idle=15}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 12
execute as @s[scores={idle=16}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 11
execute as @s[scores={idle=17}] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 10
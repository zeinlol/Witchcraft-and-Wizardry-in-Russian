execute as @s[tag=!pos1,tag=!pos2,tag=!pos3,tag=!pos4,tag=!visible] unless score demiguiseDodge sharedQuests matches ..0 run tag @s add pos1

execute as @s[tag=pos1] unless score demiguiseDodge sharedQuests matches ..0 run tag @s remove visible
execute as @s[tag=pos2] unless score demiguiseDodge sharedQuests matches 1 run tag @s remove visible
execute as @s[tag=pos3] unless score demiguiseDodge sharedQuests matches 2 run tag @s remove visible
execute as @s[tag=pos4] unless score demiguiseDodge sharedQuests matches 3 run tag @s remove visible
execute as @s[tag=pos5] unless score demiguiseDodge sharedQuests matches 4 run tag @s remove visible

execute as @s[tag=!visible] unless score @s animTest matches ..-5 run scoreboard players remove @s animTest 1
execute as @s[tag=visible] unless score @s animTest matches 6.. run scoreboard players add @s animTest 1
execute if score @s animTest matches 0 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1308
execute if score @s animTest matches 1 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1309
execute if score @s animTest matches 2 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1310
execute if score @s animTest matches 3 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1311
execute if score @s animTest matches 4 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1312
execute if score @s animTest matches 5 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 1313

# Change locations

execute if score @s animTest matches -5 as @s[tag=pos5] run tp @s 320.44 12.00 361.05 364.35 1.71
execute if score @s animTest matches -5 as @s[tag=pos5] run tag @s add visible
execute if score @s animTest matches -5 as @s[tag=pos5] run tag @s remove pos5

execute if score @s animTest matches -5 as @s[tag=pos4] run tp @s 340.47 18.00 327.28 28.42 6.00
execute if score @s animTest matches -5 as @s[tag=pos4] run tag @s add visible
execute if score @s animTest matches -5 as @s[tag=pos4] run tag @s add pos5
execute if score @s animTest matches -5 as @s[tag=pos4] run tag @s remove pos4

execute if score @s animTest matches -5 as @s[tag=pos3] run tp @s 288.09 5.00 436.40 210.42 0.68
execute if score @s animTest matches -5 as @s[tag=pos3] run tag @s add visible
execute if score @s animTest matches -5 as @s[tag=pos3] run tag @s add pos4
execute if score @s animTest matches -5 as @s[tag=pos3] run tag @s remove pos3

execute if score @s animTest matches -5 as @s[tag=pos2] run tp @s 317.48 12.00 379.40 198.42 -2.47
execute if score @s animTest matches -5 as @s[tag=pos2] run tag @s add visible
execute if score @s animTest matches -5 as @s[tag=pos2] run tag @s add pos3
execute if score @s animTest matches -5 as @s[tag=pos2] run tag @s remove pos2

execute if score @s animTest matches -5 as @s[tag=pos1] run tp @s 351.34 17.00 355.48 436.19 4.48
execute if score @s animTest matches -5 as @s[tag=pos1] run tag @s add visible
execute if score @s animTest matches -5 as @s[tag=pos1] run tag @s add pos2
execute if score @s animTest matches -5 as @s[tag=pos1] run tag @s remove pos1

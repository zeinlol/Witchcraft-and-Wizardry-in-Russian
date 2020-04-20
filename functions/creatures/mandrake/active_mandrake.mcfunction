execute as @s[scores={tmp=..0}] at @s run playsound minecraft:custom.creatures.mandrake.mandrake_scream master @a[tag=!earmuffs]
execute as @s[scores={tmp=..0}] at @s run playsound minecraft:custom.creatures.mandrake.mandrake_scream_muffled record @a[tag=earmuffs]
execute as @s[scores={tmp=..0}] run scoreboard players set @s tmp 3000
execute as @s[scores={tmp=1..}] run scoreboard players operation @s tmp -= systick time

execute at @s unless entity @p[tag=play,distance=..5] run stopsound @p master minecraft:custom.creatures.mandrake.mandrake_scream
execute at @s unless entity @p[tag=play,distance=..5] run stopsound @s record minecraft:custom.creatures.mandrake.mandrake_scream_muffled
execute at @s unless entity @p[tag=play,distance=..5] run data merge entity @s[tag=!potted] {HandItems:[{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute at @s unless entity @p[tag=play,distance=..5] run data merge entity @s[tag=potted] {HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:87}},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute at @s unless entity @p[tag=play,distance=..5] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 89
execute at @s unless entity @p[tag=play,distance=..5] run tag @s remove mandrakeIsActive

execute at @s run tp @s ~ ~ ~ facing entity @p

scoreboard players add @s tmp2 1
scoreboard players set @s[scores={tmp2=17..}] tmp2 0
execute as @s[scores={tmp2=1}] store result entity @s Pose.Head[2] float 1 run scoreboard players set @s tmp3 -4
execute as @s[scores={tmp2=2}] store result entity @s Pose.Head[2] float 1 run scoreboard players set @s tmp3 -3
execute as @s[scores={tmp2=3}] store result entity @s Pose.Head[2] float 1 run scoreboard players set @s tmp3 -2
execute as @s[scores={tmp2=4}] store result entity @s Pose.Head[2] float 1 run scoreboard players set @s tmp3 -1
execute as @s[scores={tmp2=5}] store result entity @s Pose.Head[2] float 1 run scoreboard players set @s tmp3 0
execute as @s[scores={tmp2=6}] store result entity @s Pose.Head[2] float 1 run scoreboard players set @s tmp3 1
execute as @s[scores={tmp2=7}] store result entity @s Pose.Head[2] float 1 run scoreboard players set @s tmp3 2
execute as @s[scores={tmp2=8}] store result entity @s Pose.Head[2] float 1 run scoreboard players set @s tmp3 3
execute as @s[scores={tmp2=9}] store result entity @s Pose.Head[2] float 1 run scoreboard players set @s tmp3 4
execute as @s[scores={tmp2=10}] store result entity @s Pose.Head[2] float 1 run scoreboard players set @s tmp3 3
execute as @s[scores={tmp2=11}] store result entity @s Pose.Head[2] float 1 run scoreboard players set @s tmp3 2
execute as @s[scores={tmp2=12}] store result entity @s Pose.Head[2] float 1 run scoreboard players set @s tmp3 1
execute as @s[scores={tmp2=13}] store result entity @s Pose.Head[2] float 1 run scoreboard players set @s tmp3 0
execute as @s[scores={tmp2=14}] store result entity @s Pose.Head[2] float 1 run scoreboard players set @s tmp3 -1
execute as @s[scores={tmp2=15}] store result entity @s Pose.Head[2] float 1 run scoreboard players set @s tmp3 -2
execute as @s[scores={tmp2=16}] store result entity @s Pose.Head[2] float 1 run scoreboard players set @s tmp3 -3

scoreboard players add @s tmp4 1
scoreboard players set @s[scores={tmp4=13..}] tmp4 0
execute as @s[scores={tmp4=1}] store result entity @s Pose.Head[1] float 1 run scoreboard players set @s tmp3 -6
execute as @s[scores={tmp4=2}] store result entity @s Pose.Head[1] float 1 run scoreboard players set @s tmp3 -4
execute as @s[scores={tmp4=3}] store result entity @s Pose.Head[1] float 1 run scoreboard players set @s tmp3 -2
execute as @s[scores={tmp4=4}] store result entity @s Pose.Head[1] float 1 run scoreboard players set @s tmp3 0
execute as @s[scores={tmp4=5}] store result entity @s Pose.Head[1] float 1 run scoreboard players set @s tmp3 2
execute as @s[scores={tmp4=6}] store result entity @s Pose.Head[1] float 1 run scoreboard players set @s tmp3 4
execute as @s[scores={tmp4=7}] store result entity @s Pose.Head[1] float 1 run scoreboard players set @s tmp3 6
execute as @s[scores={tmp4=8}] store result entity @s Pose.Head[1] float 1 run scoreboard players set @s tmp3 4
execute as @s[scores={tmp4=9}] store result entity @s Pose.Head[1] float 1 run scoreboard players set @s tmp3 2
execute as @s[scores={tmp4=10}] store result entity @s Pose.Head[1] float 1 run scoreboard players set @s tmp3 0
execute as @s[scores={tmp4=11}] store result entity @s Pose.Head[1] float 1 run scoreboard players set @s tmp3 -2
execute as @s[scores={tmp4=12}] store result entity @s Pose.Head[1] float 1 run scoreboard players set @s tmp3 -4

execute as @s[tag=mandrakeHiding] run stopsound @p master minecraft:custom.creatures.mandrake.mandrake_scream
execute as @s[tag=mandrakeHiding] run stopsound @p record minecraft:custom.creatures.mandrake.mandrake_scream_muffled
execute as @s[tag=mandrakeHiding] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 88
execute as @s[tag=mandrakeHiding] run data merge entity @s[tag=!potted] {HandItems:[{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[tag=mandrakeHiding] run data merge entity @s[tag=potted] {HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:87}},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute as @s[tag=mandrakeHiding] at @s run function hp:creatures/mandrake/open_mandrake_barrier
execute as @s[tag=mandrakeHiding] run tag @s remove mandrakeIsActive
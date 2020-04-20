execute as @s[scores={idle=1..}] run scoreboard players operation @s idle -= systick time
execute as @s[scores={idle=..0},tag=mandrakeHiding] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 89
execute as @s[scores={idle=..0},tag=mandrakeHiding] at @s run function hp:creatures/mandrake/close_mandrake_barrier
execute as @s[scores={idle=..0},tag=mandrakeHiding] run tag @s remove mandrakeHiding


execute as @s[tag=earmuffHover,tag=!mandrakeHiding,tag=!glowing] run data merge entity @s {Glowing:1b}
execute as @s[tag=earmuffHover,tag=!mandrakeHiding,tag=!glowing] run tag @s add glowing
execute as @s[tag=!earmuffHover,nbt=!{Glowing:0b}] run data merge entity @s {Glowing:0b}
execute as @s[tag=!earmuffHover,tag=glowing] run tag @s remove glowing
tag @s remove earmuffHover



execute at @s[tag=!mandrakeIsActive,tag=!mandrakeHiding] if entity @p[distance=..5,tag=play,tag=!inProperCutScene,tag=!inResetPoint] run tag @s add initActiveMandrake

execute as @s[tag=initActiveMandrake] run scoreboard players set @s tmp 0
execute as @s[tag=initActiveMandrake] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set @s tmp 90
execute as @s[tag=initActiveMandrake] run data merge entity @s[tag=!potted] {HandItems:[{},{id:"minecraft:wooden_axe",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[tag=initActiveMandrake] run data merge entity @s[tag=potted] {HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{Unbreakable:1b,Damage:87}},{id:"minecraft:wooden_axe",Count:1b,tag:{Unbreakable:1b,Damage:10}}]}
execute as @s[tag=initActiveMandrake] run tag @s add mandrakeIsActive
execute as @s[tag=initActiveMandrake] run tag @s remove initActiveMandrake

execute as @s[tag=mandrakeIsActive] run function hp:creatures/mandrake/active_mandrake

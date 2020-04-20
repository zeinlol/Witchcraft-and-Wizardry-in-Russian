execute as @s[tag=affectedByMandrake,tag=!earmuffs] run effect clear @s slowness
tag @s remove affectedByMandrake
execute at @s if entity @e[type=armor_stand,tag=mandrake,tag=!mandrakeHiding,distance=..5] run tag @s add affectedByMandrake
execute at @s[tag=earmuffs] if entity @e[type=armor_stand,tag=mandrake,tag=!mandrakeHiding,distance=..5] run effect give @s minecraft:slowness 1 2 true
execute at @s[tag=!earmuffs] if entity @e[type=armor_stand,tag=mandrake,tag=!mandrakeHiding,distance=4.4..5] run effect give @s minecraft:slowness 1 1 true
execute at @s[tag=!earmuffs] if entity @e[type=armor_stand,tag=mandrake,tag=!mandrakeHiding,distance=3.6..4.4] run effect give @s minecraft:slowness 1 2 true
execute at @s[tag=!earmuffs] if entity @e[type=armor_stand,tag=mandrake,tag=!mandrakeHiding,distance=2.8..3.6] run effect give @s minecraft:slowness 1 3 true
execute at @s[tag=!earmuffs] if entity @e[type=armor_stand,tag=mandrake,tag=!mandrakeHiding,distance=2..2.8] run effect give @s minecraft:slowness 1 4 true
execute at @s[tag=!earmuffs] if entity @e[type=armor_stand,tag=mandrake,tag=!mandrakeHiding,distance=0..2] run effect give @s minecraft:slowness 1 5 true
execute at @s[tag=!stunnedByMandrake,tag=!earmuffs] if entity @e[type=armor_stand,tag=mandrake,tag=!mandrakeHiding,distance=0..3.5] run function hp:creatures/mandrake/init_stunned_by_mandrake
execute as @s[tag=stunnedByMandrake] run function hp:health/mandrake_scream
execute at @s[tag=stunnedByMandrake,tag=!earmuffs] unless entity @e[type=armor_stand,tag=mandrake,tag=!mandrakeHiding,distance=0..3.5] run function hp:creatures/mandrake/exit_stunned_by_mandrake
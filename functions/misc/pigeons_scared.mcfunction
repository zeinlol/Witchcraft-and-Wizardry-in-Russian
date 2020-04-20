execute store result score @s tmp3 run data get entity @s HandItems[1].tag.rotation 1

# Spawn with rotation
execute as @s[scores={tmp3=0}] run function hp:misc/scared_pigeons/scared_pigeons1
execute as @s[scores={tmp3=2}] run function hp:misc/scared_pigeons/scared_pigeons2
execute as @s[scores={tmp3=4}] run function hp:misc/scared_pigeons/scared_pigeons3
execute as @s[scores={tmp3=6}] run function hp:misc/scared_pigeons/scared_pigeons4
execute as @s[scores={tmp3=8}] run function hp:misc/scared_pigeons/scared_pigeons5
execute as @s[scores={tmp3=10}] run function hp:misc/scared_pigeons/scared_pigeons6
execute as @s[scores={tmp3=12}] run function hp:misc/scared_pigeons/scared_pigeons7
execute as @s[scores={tmp3=14}] run function hp:misc/scared_pigeons/scared_pigeons8
execute as @s[scores={tmp3=16}] run function hp:misc/scared_pigeons/scared_pigeons9
execute as @s[scores={tmp3=18}] run function hp:misc/scared_pigeons/scared_pigeons10
execute as @s[scores={tmp3=20}] run function hp:misc/scared_pigeons/scared_pigeons11
execute as @s[scores={tmp3=22}] run function hp:misc/scared_pigeons/scared_pigeons12
execute as @s[scores={tmp3=24}] run function hp:misc/scared_pigeons/scared_pigeons13
execute as @s[scores={tmp3=26}] run function hp:misc/scared_pigeons/scared_pigeons14
execute as @s[scores={tmp3=28}] run function hp:misc/scared_pigeons/scared_pigeons15
execute as @s[scores={tmp3=30}] run function hp:misc/scared_pigeons/scared_pigeons16
execute as @s[scores={tmp3=32}] run function hp:misc/scared_pigeons/scared_pigeons17
execute as @s[scores={tmp3=34}] run function hp:misc/scared_pigeons/scared_pigeons18


# Setup
execute as @e[tag=newPigeon] run scoreboard players set @s tmp 100
execute as @e[tag=newPigeon] run tag @s remove newPigeon

# Sound
execute if score global Random matches 0..33 run playsound minecraft:custom.creatures.pigeon.pigeon_scared master @a ~ ~ ~ 1 0.9
execute if score global Random matches 34..66 run playsound minecraft:custom.creatures.pigeon.pigeon_scared master @a ~ ~ ~ 1 1
execute if score global Random matches 67..100 run playsound minecraft:custom.creatures.pigeon.pigeon_scared master @a ~ ~ ~ 1 1.1

# Reset timer
scoreboard players set @s idle 1000



# Remove pigeons on ground
data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],HandItems:[{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}]}
execute store result entity @s HandItems[1].tag.rotation float 1 store result entity @s Rotation[0] float 10 run scoreboard players get @s tmp3
tag @s add reset
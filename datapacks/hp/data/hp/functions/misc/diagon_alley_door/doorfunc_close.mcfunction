#==========================
# Run to setup scoreboard:
# /scoreboard objectives add doorTpsCount dummy
#==========================

#==========================
# Setup
#==========================

scoreboard players remove @e[type=armor_stand,tag=Brick] doorTpsCount 1

#==========================
# Model Movement Variables
#==========================

execute as @e[tag=pz] at @s run tp @s ~ ~ ~0.012 ~ ~
execute as @e[tag=nz] at @s run tp @s ~ ~ ~-0.012 ~ ~
execute as @e[tag=px] at @s run tp @s ~0.012 ~ ~ ~ ~
execute as @e[tag=nx] at @s run tp @s ~-0.012 ~ ~ ~ ~
execute as @e[tag=py] at @s run tp @s ~ ~-0.0093 ~ ~ ~
execute as @e[tag=ny] at @s run tp @s ~ ~0.0093 ~ ~ ~
execute as @e[tag=cw] at @s run tp @s ~ ~ ~ ~-4.5 ~
execute as @e[tag=ccw] at @s run tp @s ~ ~ ~ ~4.5 ~

execute as @e[tag=snz] at @s run tp @s ~ ~ ~-0.006 ~ ~

#==========================
# Fills
#==========================

# chunk loader
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2840 792 1 1 false @s
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2856 792 1 1 false @s
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run kill @e[tag=chunkLoader]

execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run setblock 2849 59 798 minecraft:barrier
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run setblock 2848 59 798 minecraft:cactus[age=8]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run setblock 2849 58 798 minecraft:barrier
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run setblock 2848 58 798 minecraft:barrier
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run setblock 2849 57 798 minecraft:barrier
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run setblock 2848 57 798 minecraft:cactus[age=8]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run setblock 2849 56 798 minecraft:barrier
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run setblock 2848 56 798 minecraft:barrier
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 210 run fill 2848 59 798 2849 56 798 minecraft:barrier

#==========================
# General Brick Animation
#==========================

execute as @e[type=armor_stand,tag=C02,tag=R01] if score @s doorTpsCount matches 260 positioned 2848 56 800 run playsound minecraft:custom.gameplay_element.diagon_alley.brick_wall_move master @a ~ ~ ~ 2

execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 110 run tag @s remove pz
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 127 run tag @s add pz
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 127 run tag @s remove px
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 157 run tag @s add px
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 157 run tag @s remove ny
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 177 run tag @s add ny
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 177 run tag @s remove ccw
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 197 run tag @s add ccw
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 177 run tag @s remove px
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 197 run tag @s add px
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 177 run tag @s remove nz
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 197 run tag @s add nz
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 197 run tag @s remove nx
execute as @e[type=armor_stand,tag=C00] if score @s doorTpsCount matches 220 run tag @s add nx

execute as @e[type=armor_stand,tag=C01] if score @s doorTpsCount matches 120 run tag @s remove cw
execute as @e[type=armor_stand,tag=C01] if score @s doorTpsCount matches 120 run tag @s remove nx
execute as @e[type=armor_stand,tag=C01] if score @s doorTpsCount matches 140 run tag @s add cw
execute as @e[type=armor_stand,tag=C01] if score @s doorTpsCount matches 190 run tag @s add nx
execute as @e[type=armor_stand,tag=C01] if score @s doorTpsCount matches 160 run tag @s remove nz
execute as @e[type=armor_stand,tag=C01] if score @s doorTpsCount matches 171 run tag @s add nz

execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 100 run tag @s remove cw
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 140 run tag @s add cw
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 120 run tag @s remove py
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 145 run tag @s add py
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 145 run tag @s remove nx
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 150 run tag @s add nx
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 160 run tag @s remove nz
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 230 run tag @s add nz
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 160 run tag @s remove nx
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 167 run tag @s add nx
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 155 run tag @s remove ccw
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 175 run tag @s add ccw
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 230 run tag @s remove nx
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 250 run tag @s add nx
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 250 run tag @s remove ny
execute as @e[type=armor_stand,tag=C02] if score @s doorTpsCount matches 280 run tag @s add ny


execute as @e[type=armor_stand,tag=C03] if score @s doorTpsCount matches 80 run tag @s remove ccw
execute as @e[type=armor_stand,tag=C03] if score @s doorTpsCount matches 80 run tag @s remove px
execute as @e[type=armor_stand,tag=C03] if score @s doorTpsCount matches 100 run tag @s add px
execute as @e[type=armor_stand,tag=C03] if score @s doorTpsCount matches 80 run tag @s remove nz
execute as @e[type=armor_stand,tag=C03] if score @s doorTpsCount matches 81 run tag @s add nz
execute as @e[type=armor_stand,tag=C03] if score @s doorTpsCount matches 100 run tag @s add ccw
execute as @e[type=armor_stand,tag=C03] if score @s doorTpsCount matches 100 run tag @s remove nx
execute as @e[type=armor_stand,tag=C03] if score @s doorTpsCount matches 160 run tag @s add nx

execute as @e[type=armor_stand,tag=C04,tag=!select] if score @s doorTpsCount matches 60 run tag @s remove nz
execute as @e[type=armor_stand,tag=C04,tag=!select] if score @s doorTpsCount matches 80 run tag @s add nz
execute as @e[type=armor_stand,tag=C04] if score @s doorTpsCount matches 90 run tag @s remove nx
execute as @e[type=armor_stand,tag=C04] if score @s doorTpsCount matches 110 run tag @s add nx
execute as @e[type=armor_stand,tag=C04] if score @s doorTpsCount matches 110 run tag @s remove ccw
execute as @e[type=armor_stand,tag=C04] if score @s doorTpsCount matches 150 run tag @s add ccw
execute as @e[type=armor_stand,tag=C04] if score @s doorTpsCount matches 150 run tag @s remove nx
execute as @e[type=armor_stand,tag=C04] if score @s doorTpsCount matches 190 run tag @s add nx
execute as @e[type=armor_stand,tag=C04] if score @s doorTpsCount matches 110 run tag @s remove nz
execute as @e[type=armor_stand,tag=C04] if score @s doorTpsCount matches 140 run tag @s add nz

execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 80 run tag @s remove ccw
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 80 run tag @s remove nz
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 100 run tag @s add nz
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 100 run tag @s remove pz
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 120 run tag @s add pz
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 120 run tag @s add ccw
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 130 run tag @s remove px
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 160 run tag @s remove nz
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 160 run tag @s add px
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 182 run tag @s add nz
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 180 run tag @s remove px
execute as @e[type=armor_stand,tag=C05] if score @s doorTpsCount matches 220 run tag @s add px



execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 80 run tag @s remove pz
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 100 run tag @s add pz
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 100 run tag @s remove cw
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 100 run tag @s remove px
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 100 run tag @s remove nx
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 110 run tag @s add px
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 120 run tag @s add cw
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 120 run tag @s add nx
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 150 run tag @s remove nz
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 180 run tag @s add nz
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 180 run tag @s remove px
execute as @e[type=armor_stand,tag=C06] if score @s doorTpsCount matches 210 run tag @s add px


execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 90 run tag @s remove nx
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 90 run tag @s remove cw
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 110 run tag @s add cw
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 110 run tag @s add nx
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 110 run tag @s remove ny
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 130 run tag @s add ny
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 140 run tag @s remove px
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 170 run tag @s add px
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 140 run tag @s remove nz
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 141 run tag @s add nz
execute as @e[type=armor_stand,tag=C07] if score @s doorTpsCount matches 141 run tag @s add nz

execute as @e[type=armor_stand,tag=C08] if score @s doorTpsCount matches 100 run tag @s remove pz
execute as @e[type=armor_stand,tag=C08] if score @s doorTpsCount matches 120 run tag @s add pz
execute as @e[type=armor_stand,tag=C08] if score @s doorTpsCount matches 120 run tag @s remove nx
execute as @e[type=armor_stand,tag=C08] if score @s doorTpsCount matches 140 run tag @s add nx
execute as @e[type=armor_stand,tag=C08] if score @s doorTpsCount matches 140 run tag @s remove nz
execute as @e[type=armor_stand,tag=C08] if score @s doorTpsCount matches 180 run tag @s add nz
execute as @e[type=armor_stand,tag=C08] if score @s doorTpsCount matches 160 run tag @s remove cw
execute as @e[type=armor_stand,tag=C08] if score @s doorTpsCount matches 180 run tag @s add cw


execute as @e[type=armor_stand,tag=C09] if score @s doorTpsCount matches 100 run tag @s remove nz
execute as @e[type=armor_stand,tag=C09] if score @s doorTpsCount matches 120 run tag @s add nz
execute as @e[type=armor_stand,tag=C09] if score @s doorTpsCount matches 120 run tag @s remove px
execute as @e[type=armor_stand,tag=C09] if score @s doorTpsCount matches 150 run tag @s add px




#==========================
# Make bricks appear one tick later to prevent odd flashes
# =========================
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 328 as @e[type=armor_stand,tag=C00] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 328 as @e[type=armor_stand,tag=C01] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1}}]}
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 328 as @e[type=armor_stand,tag=C02] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4}}]}
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 328 as @e[type=armor_stand,tag=C03] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:6}}]}
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 328 as @e[type=armor_stand,tag=C04] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:7}}]}
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 328 as @e[type=armor_stand,tag=C05] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1}}]}
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 328 as @e[type=armor_stand,tag=C06] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5}}]}
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 328 as @e[type=armor_stand,tag=C07] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2}}]}
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 328 as @e[type=armor_stand,tag=C08] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3}}]}
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 328 as @e[type=armor_stand,tag=C09] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1}}]}


#==========================
# Special Brick Animation
#==========================

# Interaction Brick



execute as @e[type=armor_stand,tag=C04,tag=select,limit=1] if score @s doorTpsCount matches 20 run tag @s remove snz

execute as @e[type=armor_stand,tag=C04,tag=select,limit=1] if score @s doorTpsCount matches 60 run tag @s add snz

# Top 3 hole fillers

execute as @e[type=armor_stand,tag=CX,limit=3] if score @s doorTpsCount matches 60 run tag @s remove nz
execute as @e[type=armor_stand,tag=CX,limit=3] if score @s doorTpsCount matches 60 run tag @s remove ny

execute as @e[type=armor_stand,tag=CX,limit=3] if score @s doorTpsCount matches 80 run tag @s add nz
execute as @e[type=armor_stand,tag=CX,limit=3] if score @s doorTpsCount matches 80 run tag @s add ny

execute as @e[type=armor_stand,tag=CX,limit=3] if score @s doorTpsCount matches 80 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:8}}]}


# execute as @e[type=armor_stand,tag=R01] run data merge entity @s {Glowing:1b}

#==========================
# Kill off Armor Stands
#==========================

execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run kill @e[tag=C00,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run kill @e[tag=C01,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run kill @e[tag=C02,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run kill @e[tag=C03,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run kill @e[tag=C04,tag=!select,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run kill @e[tag=C05,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run kill @e[tag=C06,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run kill @e[tag=C07,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run kill @e[tag=C08,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run kill @e[tag=C09,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run kill @e[tag=CX,type=armor_stand]

execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run tag @e[tag=C04,tag=select,limit=1] add diagonAlleyBrick
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run tag @e[tag=C04,tag=select,limit=1] add glowable
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run tag @e[tag=C04,tag=select,limit=1] add interactable
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run tag @e[tag=C04,tag=select,limit=1] add restorable
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run data merge entity @e[tag=C04,tag=select,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:9}}]}

execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run scoreboard players set diagonAlleyAnimation global 0
execute if score @e[type=armor_stand,name=AlleyPosition,limit=1] doorTpsCount matches 0 run kill @e[name=AlleyPosition,type=minecraft:armor_stand,distance=..5,x=2848,y=56,z=798]

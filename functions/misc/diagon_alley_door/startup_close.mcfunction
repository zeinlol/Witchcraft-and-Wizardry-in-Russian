# Set door state
scoreboard players set diagonAlleyDoorState global 0

# clear for testings
kill @e[type=minecraft:armor_stand,tag=Brick,distance=..10,x=2848,y=56,z=800]

# Summon baseline Armorstand. Used for wall positioning & TPS counter
execute positioned 2848 56 800 run summon minecraft:armor_stand ~ ~ ~ {Marker:1,NoGravity:1,Invisible:1,CustomName:"{\"text\":\"AlleyPosition\"}",Tags:["Brick","Closing"]}


# Summon brick models

execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.55 ^0.2520 ^2.46300 {Rotation:[-90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C00","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.96400 ^-0.187 ^2.36700 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C01","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.75900 ^0.5785 ^1.65900 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C02","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.7295 ^ ^2.48700 {Rotation:[-90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C03","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.59400 ^0.438 ^1.89900 {Rotation:[180F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C04","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.716 ^-0.187 ^2.23500 {Rotation:[180F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C05","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.615 ^0.625 ^2.37900 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C06","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.558 ^-0.1860 ^2.48700 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C07","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.6360 ^0.438 ^2.25900 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C08","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^1.23600 ^-0.187 ^2.25900 {Rotation:[0F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C09","R01"]}

execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.55 ^1.2520 ^2.46300 {Rotation:[-90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C00","R02"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.96400 ^0.813 ^2.36700 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C01","R02"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.75900 ^1.5785 ^1.65900 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C02","R02"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.7295 ^1 ^2.48700 {Rotation:[-90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C03","R02"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.59400 ^1.438 ^1.89900 {Rotation:[180F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C04","R02","select"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.716 ^0.813 ^2.23500 {Rotation:[180F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C05","R02"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.615 ^1.625 ^2.37900 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C06","R02"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.558 ^0.814 ^2.48700 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C07","R02"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.6360 ^1.438 ^2.25900 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C08","R02"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^1.23600 ^0.813 ^2.25900 {Rotation:[0F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C09","R02"]}

execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.55 ^2.2520 ^2.46300 {Rotation:[-90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C00","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.96400 ^1.813 ^2.36700 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C01","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.75900 ^2.5785 ^1.65900 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C02","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.7295 ^2 ^2.48700 {Rotation:[-90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C03","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.59400 ^2.438 ^1.89900 {Rotation:[180F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C04","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.716 ^1.813 ^2.23500 {Rotation:[180F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C05","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.615 ^2.625 ^2.37900 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C06","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.558 ^1.814 ^2.48700 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C07","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.6360 ^2.438 ^2.25900 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C08","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^1.23600 ^1.813 ^2.25900 {Rotation:[0F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C09","R03"]}

execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.55 ^3.2520 ^2.46300 {Rotation:[-90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C00","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.96400 ^2.813 ^2.36700 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C01","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.75900 ^3.5785 ^1.65900 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C02","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.7295 ^3 ^2.48700 {Rotation:[-90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C03","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.59400 ^3.438 ^1.89900 {Rotation:[180F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C04","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.716 ^2.813 ^2.23500 {Rotation:[180F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C05","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.615 ^3.625 ^2.37900 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C06","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.558 ^2.814 ^2.48700 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C07","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.6360 ^3.438 ^2.25900 {Rotation:[90F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C08","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^1.23600 ^2.813 ^2.25900 {Rotation:[0F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","C09","R04"]}

execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.0630 ^3.1890 ^2.25900 {Rotation:[0F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","CX0","CX"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-0.0630 ^3.1890 ^2.25900 {Rotation:[0F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","CX1","CX"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.9370 ^3.1890 ^2.25900 {Rotation:[0F,0F],Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{Unbreakable:1b,Damage:32}}],Tags:["Brick","CX2","CX"]}

# Add slight delay to different rows so animation doesn't play in sync
execute as @e[tag=R04] run scoreboard players set @s doorTpsCount 355
execute as @e[tag=R03] run scoreboard players set @s doorTpsCount 345
execute as @e[tag=R02] run scoreboard players set @s doorTpsCount 330
execute as @e[tag=R01] run scoreboard players set @s doorTpsCount 340
execute as @e[tag=CX] run scoreboard players set @s doorTpsCount 330

execute as @e[name=AlleyPosition] run scoreboard players set @s doorTpsCount 330


scoreboard players set diagonAlleyAnimation global 1
scoreboard players set diagonAlleyDoor global -1




























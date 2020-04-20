# Set door state
scoreboard players set diagonAlleyDoorState global 1

# clear for testings
kill @e[type=minecraft:armor_stand,tag=Brick,tag=!diagonAlleyBrick,distance=..10,x=2848,y=56,z=800]
tag @e[type=minecraft:armor_stand,tag=Brick,tag=diagonAlleyBrick,distance=..10,x=2848,y=56,z=800,limit=1] add oldDiagonAlleyBrick

# Summon baseline Armorstand. Used for wall positioning & TPS counter
execute positioned 2848 56 800 run summon minecraft:armor_stand ~ ~ ~ {Marker:1,NoGravity:1,Invisible:1,CustomName:"{\"text\":\"AlleyPosition\"}",Tags:["Brick","Opening"]}

# Clear wall
fill 2848 59 798 2849 56 798 minecraft:barrier


# Summon brick models
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.87400 ^0.438 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:7}}],Tags:["Brick","C00","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.124 ^-0.187 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1}}],Tags:["Brick","C01","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.375 ^0.625 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4}}],Tags:["Brick","C02","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.2495 ^0 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:6}}],Tags:["Brick","C03","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-0.874 ^0.438 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:7}}],Tags:["Brick","C04","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-0.124 ^-0.187 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1}}],Tags:["Brick","C05","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.375 ^0.625 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5}}],Tags:["Brick","C06","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.438 ^0 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2}}],Tags:["Brick","C07","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.876 ^0.438 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3}}],Tags:["Brick","C08","R01"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.876 ^-0.187 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1}}],Tags:["Brick","C09","R01"]}

execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.87400 ^1.438 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:7}}],Tags:["Brick","C00","R02"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.124 ^0.813 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1}}],Tags:["Brick","C01","R02"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.375 ^1.625 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4}}],Tags:["Brick","C02","R02"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.2495 ^1 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:6}}],Tags:["Brick","C03","R02"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-0.874 ^1.438 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:7}}],Tags:["Brick","C04","R02","select"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-0.124 ^0.813 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1}}],Tags:["Brick","C05","R02"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.375 ^1.625 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5}}],Tags:["Brick","C06","R02"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.438 ^1 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2}}],Tags:["Brick","C07","R02"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.876 ^1.438 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3}}],Tags:["Brick","C08","R02"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.876 ^0.813 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1}}],Tags:["Brick","C09","R02"]}

execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.87400 ^2.438 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:7}}],Tags:["Brick","C00","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.124 ^1.813 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1}}],Tags:["Brick","C01","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.375 ^2.625 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4}}],Tags:["Brick","C02","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.2495 ^2 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:6}}],Tags:["Brick","C03","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-0.874 ^2.438 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:7}}],Tags:["Brick","C04","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-0.124 ^1.813 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1}}],Tags:["Brick","C05","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.375 ^2.625 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5}}],Tags:["Brick","C06","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.438 ^2 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2}}],Tags:["Brick","C07","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.876 ^2.438 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3}}],Tags:["Brick","C08","R03"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.876 ^1.813 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1}}],Tags:["Brick","C09","R03"]}

execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.87400 ^3.438 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:7}}],Tags:["Brick","C00","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.124 ^2.813 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1}}],Tags:["Brick","C01","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.375 ^3.625 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4}}],Tags:["Brick","C02","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.2495 ^3 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:6}}],Tags:["Brick","C03","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-0.874 ^3.438 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:7}}],Tags:["Brick","C04","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-0.124 ^2.813 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1}}],Tags:["Brick","C05","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.375 ^3.625 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5}}],Tags:["Brick","C06","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.438 ^3 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2}}],Tags:["Brick","C07","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.876 ^3.438 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3}}],Tags:["Brick","C08","R04"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.876 ^2.813 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1}}],Tags:["Brick","C09","R04"]}

execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-1.063 ^3.375 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:8}}],Tags:["Brick","CX0","CX"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^-0.063 ^3.375 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:8}}],Tags:["Brick","CX1","CX"]}
execute as @e[name=AlleyPosition] at @s rotated 180 0 run summon minecraft:armor_stand ^0.937 ^3.375 ^2.499 {Marker:1,NoGravity:1,Invisible:1,ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:8}}],Tags:["Brick","CX2","CX"]}

# Add slight delay to different rows so animation doesn't play in sync
execute as @e[tag=R04] run scoreboard players set @s doorTpsCount -25
execute as @e[tag=R03] run scoreboard players set @s doorTpsCount -15
execute as @e[tag=R02] run scoreboard players set @s doorTpsCount 0
execute as @e[tag=R01] run scoreboard players set @s doorTpsCount -10
execute as @e[tag=CX] run scoreboard players set @s doorTpsCount 0


scoreboard players set diagonAlleyAnimation global 1
scoreboard players set diagonAlleyDoor global 1200

























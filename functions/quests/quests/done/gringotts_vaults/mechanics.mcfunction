tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:minecart"}}}] add isRidingMinecart

# Travel point
execute as @a[tag=play,x=2953,y=0,z=1098,dx=200,dy=129,dz=133,tag=!inTravelPoint,tag=!isRidingMinecart] unless entity @s[x=3087,y=17,z=1169,dx=60,dy=28,dz=49] run function hp:travel_point/init_gringotts_track
execute as @a[tag=play,x=2953,y=0,z=1206,dx=200,dy=75,dz=95,tag=!inTravelPoint,tag=!isRidingMinecart] unless entity @s[x=3087,y=17,z=1169,dx=60,dy=28,dz=49] run function hp:travel_point/init_gringotts_track

execute as @e[type=minecart,x=2953,y=0,z=1098,dx=200,dy=129,dz=133] unless entity @s[x=3087,y=17,z=1169,dx=60,dy=28,dz=49] at @s unless entity @p[distance=..1] run kill @s
execute as @e[type=minecart,x=2953,y=0,z=1206,dx=200,dy=75,dz=95] unless entity @s[x=3087,y=17,z=1169,dx=60,dy=28,dz=49] at @s unless entity @p[distance=..1] run kill @s

execute as @e[type=minecart] at @s if entity @p[distance=..1] if block ~ 130 ~ minecraft:jungle_stairs[facing=north,half=bottom,shape=straight,waterlogged=false] run data merge entity @s {Motion:[0.0d,0.0d,-5.0d]}
execute as @e[type=minecart] at @s if entity @p[distance=..1] if block ~ 130 ~ minecraft:jungle_stairs[facing=south,half=bottom,shape=straight,waterlogged=false] run data merge entity @s {Motion:[0.0d,0.0d,5.0d]}
execute as @e[type=minecart] at @s if entity @p[distance=..1] if block ~ 130 ~ minecraft:jungle_stairs[facing=east,half=bottom,shape=straight,waterlogged=false] run data merge entity @s {Motion:[5.0d,0.0d,0.0d]}
execute as @e[type=minecart] at @s if entity @p[distance=..1] if block ~ 130 ~ minecraft:jungle_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] run data merge entity @s {Motion:[-5.0d,0.0d,0.0d]}
execute as @e[type=minecart] at @s if entity @p[distance=..1] if block ~ 130 ~ minecraft:birch_stairs[facing=north,half=bottom,shape=straight,waterlogged=false] run data merge entity @s {Motion:[0.0d,0.0d,-2.0d]}
execute as @e[type=minecart] at @s if entity @p[distance=..1] if block ~ 130 ~ minecraft:birch_stairs[facing=south,half=bottom,shape=straight,waterlogged=false] run data merge entity @s {Motion:[0.0d,0.0d,2.0d]}
execute as @e[type=minecart] at @s if entity @p[distance=..1] if block ~ 130 ~ minecraft:birch_stairs[facing=east,half=bottom,shape=straight,waterlogged=false] run data merge entity @s {Motion:[2.0d,0.0d,0.0d]}
execute as @e[type=minecart] at @s if entity @p[distance=..1] if block ~ 130 ~ minecraft:birch_stairs[facing=west,half=bottom,shape=straight,waterlogged=false] run data merge entity @s {Motion:[-2.0d,0.0d,0.0d]}

execute if score gringottsTrackSwitch3 global matches 1.. as @e[type=minecart] at @s if entity @p[distance=..1] if block ~ 130 ~ minecraft:dark_oak_stairs[facing=north,half=bottom,shape=straight,waterlogged=false] run data merge entity @s {Motion:[0.0d,0.0d,-2.0d]}
execute if score gringottsTrackSwitch3 global matches 0 as @e[type=minecart] at @s if entity @p[distance=..1] if block ~ 130 ~ minecraft:dark_oak_stairs[facing=north,half=bottom,shape=straight,waterlogged=false] run data merge entity @s {Motion:[0.0d,0.0d,2.0d]}
tag @a remove isRidingMinecart


# Switch 1
execute if score gringottsTrackSwitch1 global matches 20 run setblock 3015 76 1144 minecraft:rail[shape=south_east]
execute if score gringottsTrackSwitch1 global matches 20 as 241c1f2a-cbb6-49ec-b47e-244575346d7f store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7
execute if score gringottsTrackSwitch1 global matches 20 as 8366a46c-57b8-4eab-ad02-aaebe5b07d9f store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7
execute if score gringottsTrackSwitch1 global matches 20 as ba41f400-a5d7-46b3-9360-d200c2e55080 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7
execute if score gringottsTrackSwitch1 global matches 20 as d82a5543-8ddb-456b-9dda-c12da46683e9 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7
execute if score gringottsTrackSwitch1 global matches 1 run setblock 3015 76 1144 minecraft:rail[shape=north_south]
execute if score gringottsTrackSwitch1 global matches 1 as 241c1f2a-cbb6-49ec-b47e-244575346d7f store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute if score gringottsTrackSwitch1 global matches 1 as 8366a46c-57b8-4eab-ad02-aaebe5b07d9f store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute if score gringottsTrackSwitch1 global matches 1 as ba41f400-a5d7-46b3-9360-d200c2e55080 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute if score gringottsTrackSwitch1 global matches 1 as d82a5543-8ddb-456b-9dda-c12da46683e9 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute if score gringottsTrackSwitch1 global matches 1.. run scoreboard players remove gringottsTrackSwitch1 global 1

# Switch 2
execute if score gringottsTrackSwitch2 global matches 20 run setblock 3014 38 1221 minecraft:rail[shape=north_east]
execute if score gringottsTrackSwitch2 global matches 20 as a81e82cf-46a0-40b6-a239-3659ba6bc714 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7
execute if score gringottsTrackSwitch2 global matches 20 as fba231ec-95ff-465a-907a-1da8cc326ded store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7
execute if score gringottsTrackSwitch2 global matches 20 as 67b95352-9d6a-4455-819b-675699c323d8 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7
execute if score gringottsTrackSwitch2 global matches 20 as aaead637-68c9-4bb1-9529-bc9464669c4c store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 7
execute if score gringottsTrackSwitch2 global matches 1 run setblock 3014 38 1221 minecraft:rail[shape=south_east]
execute if score gringottsTrackSwitch2 global matches 1 as a81e82cf-46a0-40b6-a239-3659ba6bc714 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute if score gringottsTrackSwitch2 global matches 1 as fba231ec-95ff-465a-907a-1da8cc326ded store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute if score gringottsTrackSwitch2 global matches 1 as 67b95352-9d6a-4455-819b-675699c323d8 store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute if score gringottsTrackSwitch2 global matches 1 as aaead637-68c9-4bb1-9529-bc9464669c4c store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players set tmp tmp 6
execute if score gringottsTrackSwitch2 global matches 1.. run scoreboard players remove gringottsTrackSwitch2 global 1


# Switch 3
execute if score gringottsTrackSwitch3 global matches 0 as @e[type=minecart,x=2987,y=100,z=1254,dx=8,dy=10,dz=9] run data merge entity @s {Motion:[0.0d,0.0d,2.0d]}
execute if score gringottsTrackSwitch3 global matches 1.. run scoreboard players remove gringottsTrackSwitch3 global 1
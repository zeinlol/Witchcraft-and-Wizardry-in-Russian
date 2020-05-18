# Summon armorstand, read and write start location, tp player
summon minecraft:armor_stand 10010 66 12 {Marker:1b,NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["FastTravelTransform"]}

execute store result entity @e[tag=FastTravelTransform,limit=1] Pos[0] double 0.00001 run scoreboard players get @s fastTravel_x
execute store result entity @e[tag=FastTravelTransform,limit=1] Pos[1] double 0.00001 run scoreboard players get @s fastTravel_y
execute store result entity @e[tag=FastTravelTransform,limit=1] Pos[2] double 0.00001 run scoreboard players get @s fastTravel_z
execute store result entity @e[tag=FastTravelTransform,limit=1] Rotation[0] float 1 run scoreboard players get @s fastTravel_ry
execute store result entity @e[tag=FastTravelTransform,limit=1] Rotation[1] float 1 run scoreboard players get @s fastTravel_rx

tp @s @e[tag=FastTravelTransform,limit=1]
kill @e[tag=FastTravelTransform]
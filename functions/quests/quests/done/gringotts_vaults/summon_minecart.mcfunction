execute positioned 2990 106 1262 run kill @e[type=minecraft:minecart,distance=..10,tag=!isBeingRidden]

summon minecraft:minecart 2990 106 1261 {Invulnerable:1b,CustomDisplayTile:0b,Rotation:[90F,0F]}
execute positioned 2990 106 1261 run particle minecraft:poof ~ ~.5 ~ 0.1 0.1 0.1 0.05 100 force
execute positioned 2990 106 1261 run playsound minecraft:custom.fx.metal_door_close master @a ~ ~ ~ 1 2
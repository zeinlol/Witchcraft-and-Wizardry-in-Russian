# This is the block animation for door 1
execute if score apparitionDoor3Direction global matches 1 if score apparitionDoor3 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 8966 73 57 5 1

execute if score apparitionDoor3 global matches 0 run fill 8966 70 55 8966 76 59 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score apparitionDoor3 global matches 2 run fill 8966 70 55 8966 76 59 air
execute if score apparitionDoor3 global matches 2 run fill 8966 71 55 8966 76 59 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score apparitionDoor3 global matches 4 run fill 8966 70 55 8966 76 59 air
execute if score apparitionDoor3 global matches 4 run fill 8966 72 55 8966 76 59 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score apparitionDoor3 global matches 6 run fill 8966 70 55 8966 76 59 air
execute if score apparitionDoor3 global matches 6 run fill 8966 73 55 8966 76 59 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score apparitionDoor3 global matches 8 run fill 8966 70 55 8966 76 59 air
execute if score apparitionDoor3 global matches 8 run fill 8966 74 55 8966 76 59 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score apparitionDoor3 global matches 10 run fill 8966 70 55 8966 76 59 air
execute if score apparitionDoor3 global matches 10 run fill 8966 75 55 8966 76 59 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score apparitionDoor3 global matches 12 run fill 8966 70 55 8966 76 59 air
execute if score apparitionDoor3 global matches 12 run fill 8966 76 55 8966 76 59 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score apparitionDoor3 global matches 14 run fill 8966 70 55 8966 76 59 air

execute if score apparitionDoor3Direction global matches 0 if score apparitionDoor3 global matches 14 run playsound minecraft:custom.fx.metal_door_close master @a 8966 73 57 5 1


# Direction
execute if score apparitionDoor3Direction global matches 1 unless score apparitionDoor3 global matches 19.. run scoreboard players add apparitionDoor3 global 1
execute if score apparitionDoor3Direction global matches 0 unless score apparitionDoor3 global matches ..-5 run scoreboard players remove apparitionDoor3 global 1
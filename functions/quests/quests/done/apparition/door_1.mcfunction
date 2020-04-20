# This is the block animation for door 1
execute if score apparitionDoor1Direction global matches 1 if score apparitionDoor1 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 8952 72 -13 5 1

execute if score apparitionDoor1 global matches 0 run fill 8953 70 -13 8951 79 -13 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score apparitionDoor1 global matches 2 run fill 8953 70 -13 8951 79 -13 air
execute if score apparitionDoor1 global matches 2 run fill 8953 71 -13 8951 79 -13 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score apparitionDoor1 global matches 4 run fill 8953 70 -13 8951 79 -13 air
execute if score apparitionDoor1 global matches 4 run fill 8953 72 -13 8951 79 -13 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score apparitionDoor1 global matches 6 run fill 8953 70 -13 8951 79 -13 air
execute if score apparitionDoor1 global matches 6 run fill 8953 73 -13 8951 79 -13 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score apparitionDoor1 global matches 8 run fill 8953 70 -13 8951 79 -13 air
execute if score apparitionDoor1 global matches 8 run fill 8953 74 -13 8951 79 -13 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score apparitionDoor1 global matches 10 run fill 8953 70 -13 8951 79 -13 air
execute if score apparitionDoor1 global matches 10 run fill 8953 75 -13 8951 79 -13 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score apparitionDoor1 global matches 12 run fill 8953 70 -13 8951 79 -13 air
execute if score apparitionDoor1 global matches 12 run fill 8953 76 -13 8951 79 -13 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score apparitionDoor1 global matches 14 run fill 8953 70 -13 8951 79 -13 air
execute if score apparitionDoor1 global matches 14 run fill 8953 77 -13 8951 79 -13 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score apparitionDoor1 global matches 16 run fill 8953 70 -13 8951 79 -13 air
execute if score apparitionDoor1 global matches 16 run fill 8953 78 -13 8951 79 -13 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score apparitionDoor1 global matches 18 run fill 8953 70 -13 8951 79 -13 air
execute if score apparitionDoor1 global matches 18 run fill 8953 79 -13 8951 79 -13 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score apparitionDoor1 global matches 20 run fill 8953 70 -13 8951 79 -13 air

execute if score apparitionDoor1Direction global matches 0 if score apparitionDoor1 global matches 20 run playsound minecraft:custom.fx.metal_door_close master @a 8952 72 -13 5 1

# Direction
execute if score apparitionDoor1Direction global matches 1 unless score apparitionDoor1 global matches 25.. run scoreboard players add apparitionDoor1 global 1
execute if score apparitionDoor1Direction global matches 0 unless score apparitionDoor1 global matches ..-5 run scoreboard players remove apparitionDoor1 global 1
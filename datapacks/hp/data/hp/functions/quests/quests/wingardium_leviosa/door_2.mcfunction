# This is the block animation for door 2
execute if score wingardiumDoor2Direction global matches 1 if score wingardiumDoor2 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 7099 50 -42 5 1

execute if score wingardiumDoor2 global matches 2 run fill 7099 48 -44 7099 52 -40 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score wingardiumDoor2 global matches 3 run fill 7099 48 -44 7099 52 -40 minecraft:air
execute if score wingardiumDoor2 global matches 3 run fill 7099 48 -43 7099 52 -40 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score wingardiumDoor2 global matches 3 run fill 7099 48 -44 7099 52 -44 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score wingardiumDoor2 global matches 4 run fill 7099 48 -44 7099 52 -40 minecraft:air
execute if score wingardiumDoor2 global matches 4 run fill 7099 48 -43 7099 52 -40 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score wingardiumDoor2 global matches 5 run fill 7099 48 -44 7099 52 -40 minecraft:air
execute if score wingardiumDoor2 global matches 5 run fill 7099 48 -42 7099 52 -40 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score wingardiumDoor2 global matches 5 run fill 7099 48 -43 7099 52 -43 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score wingardiumDoor2 global matches 6 run fill 7099 48 -44 7099 52 -40 minecraft:air
execute if score wingardiumDoor2 global matches 6 run fill 7099 48 -42 7099 52 -40 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score wingardiumDoor2 global matches 7 run fill 7099 48 -44 7099 52 -40 minecraft:air
execute if score wingardiumDoor2 global matches 7 run fill 7099 48 -41 7099 52 -40 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score wingardiumDoor2 global matches 7 run fill 7099 48 -42 7099 52 -42 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score wingardiumDoor2 global matches 8 run fill 7099 48 -44 7099 52 -40 minecraft:air
execute if score wingardiumDoor2 global matches 8 run fill 7099 48 -41 7099 52 -40 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score wingardiumDoor2 global matches 9 run fill 7099 48 -44 7099 52 -40 minecraft:air
execute if score wingardiumDoor2 global matches 9 run fill 7099 48 -40 7099 52 -40 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score wingardiumDoor2 global matches 9 run fill 7099 48 -41 7099 52 -41 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score wingardiumDoor2 global matches 10 run fill 7099 48 -44 7099 52 -40 minecraft:air
execute if score wingardiumDoor2 global matches 10 run fill 7099 48 -40 7099 52 -40 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score wingardiumDoor2 global matches 11 run fill 7099 48 -44 7099 52 -40 minecraft:air
execute if score wingardiumDoor2 global matches 11 run fill 7099 48 -40 7099 52 -40 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score wingardiumDoor2 global matches 12 run fill 7099 48 -44 7099 52 -40 minecraft:air

execute if score wingardiumDoor2Direction global matches 0 if score wingardiumDoor2 global matches 10 run playsound minecraft:custom.fx.metal_door_close master @a 7099 50 -42 5 1

# Direction
execute if score wingardiumDoor2Direction global matches 1 unless score wingardiumDoor2 global matches 15.. run scoreboard players add wingardiumDoor2 global 1
execute if score wingardiumDoor2Direction global matches 0 unless score wingardiumDoor2 global matches ..-10 run scoreboard players remove wingardiumDoor2 global 1
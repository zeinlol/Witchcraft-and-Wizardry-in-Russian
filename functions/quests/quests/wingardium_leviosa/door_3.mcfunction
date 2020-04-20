# This is the block animation for door 3
execute if score wingardiumDoor3Direction global matches 1 if score wingardiumDoor3 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 7088 50 -53 5 1

execute if score wingardiumDoor3 global matches 2 run fill 7086 48 -53 7090 52 -53 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor3 global matches 3 run fill 7086 48 -53 7090 52 -53 minecraft:air
execute if score wingardiumDoor3 global matches 3 run fill 7086 48 -53 7089 52 -53 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor3 global matches 3 run fill 7090 48 -53 7090 52 -53 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor3 global matches 4 run fill 7086 48 -53 7090 52 -53 minecraft:air
execute if score wingardiumDoor3 global matches 4 run fill 7086 48 -53 7089 52 -53 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor3 global matches 5 run fill 7086 48 -53 7090 52 -53 minecraft:air
execute if score wingardiumDoor3 global matches 5 run fill 7086 48 -53 7088 52 -53 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor3 global matches 5 run fill 7089 48 -53 7089 52 -53 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor3 global matches 6 run fill 7086 48 -53 7090 52 -53 minecraft:air
execute if score wingardiumDoor3 global matches 6 run fill 7086 48 -53 7088 52 -53 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor3 global matches 7 run fill 7086 48 -53 7090 52 -53 minecraft:air
execute if score wingardiumDoor3 global matches 7 run fill 7086 48 -53 7087 52 -53 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor3 global matches 7 run fill 7088 48 -53 7088 52 -53 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor3 global matches 8 run fill 7086 48 -53 7090 52 -53 minecraft:air
execute if score wingardiumDoor3 global matches 8 run fill 7086 48 -53 7087 52 -53 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor3 global matches 9 run fill 7086 48 -53 7090 52 -53 minecraft:air
execute if score wingardiumDoor3 global matches 9 run fill 7086 48 -53 7086 52 -53 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor3 global matches 9 run fill 7087 48 -53 7087 52 -53 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor3 global matches 10 run fill 7086 48 -53 7090 52 -53 minecraft:air
execute if score wingardiumDoor3 global matches 10 run fill 7086 48 -53 7086 52 -53 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor3 global matches 11 run fill 7086 48 -53 7090 52 -53 minecraft:air
execute if score wingardiumDoor3 global matches 11 run fill 7086 48 -53 7086 52 -53 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor3 global matches 12 run fill 7086 48 -53 7090 52 -53 minecraft:air

execute if score wingardiumDoor3Direction global matches 0 if score wingardiumDoor3 global matches 10 run playsound minecraft:custom.fx.metal_door_close master @a 7088 50 -53 5 1

# Direction
execute if score wingardiumDoor3Direction global matches 1 unless score wingardiumDoor3 global matches 15.. run scoreboard players add wingardiumDoor3 global 1
execute if score wingardiumDoor3Direction global matches 0 unless score wingardiumDoor3 global matches ..-10 run scoreboard players remove wingardiumDoor3 global 1
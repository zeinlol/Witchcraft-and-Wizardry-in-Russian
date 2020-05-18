# This is the block animation for door 4
execute if score wingardiumDoor4Direction global matches 1 if score wingardiumDoor4 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 7088 50 -31 5 1

execute if score wingardiumDoor4 global matches 2 run fill 7086 48 -31 7090 52 -31 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor4 global matches 3 run fill 7086 48 -31 7090 52 -31 minecraft:air
execute if score wingardiumDoor4 global matches 3 run fill 7086 48 -31 7089 52 -31 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor4 global matches 3 run fill 7090 48 -31 7090 52 -31 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor4 global matches 4 run fill 7086 48 -31 7090 52 -31 minecraft:air
execute if score wingardiumDoor4 global matches 4 run fill 7086 48 -31 7089 52 -31 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor4 global matches 5 run fill 7086 48 -31 7090 52 -31 minecraft:air
execute if score wingardiumDoor4 global matches 5 run fill 7086 48 -31 7088 52 -31 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor4 global matches 5 run fill 7089 48 -31 7089 52 -31 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor4 global matches 6 run fill 7086 48 -31 7090 52 -31 minecraft:air
execute if score wingardiumDoor4 global matches 6 run fill 7086 48 -31 7088 52 -31 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor4 global matches 7 run fill 7086 48 -31 7090 52 -31 minecraft:air
execute if score wingardiumDoor4 global matches 7 run fill 7086 48 -31 7087 52 -31 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor4 global matches 7 run fill 7088 48 -31 7088 52 -31 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor4 global matches 8 run fill 7086 48 -31 7090 52 -31 minecraft:air
execute if score wingardiumDoor4 global matches 8 run fill 7086 48 -31 7087 52 -31 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor4 global matches 9 run fill 7086 48 -31 7090 52 -31 minecraft:air
execute if score wingardiumDoor4 global matches 9 run fill 7086 48 -31 7086 52 -31 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor4 global matches 9 run fill 7087 48 -31 7087 52 -31 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor4 global matches 10 run fill 7086 48 -31 7090 52 -31 minecraft:air
execute if score wingardiumDoor4 global matches 10 run fill 7086 48 -31 7086 52 -31 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor4 global matches 11 run fill 7086 48 -31 7090 52 -31 minecraft:air
execute if score wingardiumDoor4 global matches 11 run fill 7086 48 -31 7086 52 -31 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]
execute if score wingardiumDoor4 global matches 12 run fill 7086 48 -31 7090 52 -31 minecraft:air

execute if score wingardiumDoor4Direction global matches 0 if score wingardiumDoor4 global matches 10 run playsound minecraft:custom.fx.metal_door_close master @a 7088 50 -31 5 1

# Direction
execute if score wingardiumDoor4Direction global matches 1 unless score wingardiumDoor4 global matches 15.. run scoreboard players add wingardiumDoor4 global 1
execute if score wingardiumDoor4Direction global matches 0 unless score wingardiumDoor4 global matches ..-10 run scoreboard players remove wingardiumDoor4 global 1
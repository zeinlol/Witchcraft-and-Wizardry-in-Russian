# This is the block animation for door 1
execute if score challengeChambersDoor1Direction global matches 1 if score challengeChambersDoor1 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 1902 36 737 3 1

execute if score challengeChambersDoor1 global matches 2 run fill 1902 35 737 1901 39 737 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score challengeChambersDoor1 global matches 4 run fill 1902 35 737 1901 39 737 minecraft:air
execute if score challengeChambersDoor1 global matches 4 run fill 1902 36 737 1901 39 737 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score challengeChambersDoor1 global matches 6 run fill 1902 35 737 1901 39 737 minecraft:air
execute if score challengeChambersDoor1 global matches 6 run fill 1902 37 737 1901 39 737 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score challengeChambersDoor1 global matches 8 run fill 1902 35 737 1901 39 737 minecraft:air
execute if score challengeChambersDoor1 global matches 8 run fill 1902 38 737 1901 39 737 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score challengeChambersDoor1 global matches 10 run fill 1902 35 737 1901 39 737 minecraft:air
execute if score challengeChambersDoor1 global matches 10 run fill 1902 39 737 1901 39 737 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score challengeChambersDoor1 global matches 12 run fill 1902 35 737 1901 39 737 minecraft:air

execute if score challengeChambersDoor1Direction global matches 0 if score challengeChambersDoor1 global matches 10 run playsound minecraft:custom.fx.metal_door_close master @a 1902 36 737 3 1

# Direction
execute if score challengeChambersDoor1Direction global matches 1 unless score challengeChambersDoor1 global matches 15.. run scoreboard players add challengeChambersDoor1 global 1
execute if score challengeChambersDoor1Direction global matches 0 unless score challengeChambersDoor1 global matches ..-10 run scoreboard players remove challengeChambersDoor1 global 1
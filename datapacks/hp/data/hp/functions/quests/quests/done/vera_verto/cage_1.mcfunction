# This is the block animation for cage 1
execute if score veraVertoCage1Direction global matches 1 if score veraVertoCage1 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 8662 73 8 5 1

execute if score veraVertoCage1 global matches 2 run fill 8662 72 9 8662 76 7 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score veraVertoCage1 global matches 3 run fill 8662 72 9 8662 76 7 minecraft:air
execute if score veraVertoCage1 global matches 3 run fill 8662 72 7 8662 76 8 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score veraVertoCage1 global matches 3 run fill 8662 72 9 8662 76 9 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]
execute if score veraVertoCage1 global matches 4 run fill 8662 72 9 8662 76 7 minecraft:air
execute if score veraVertoCage1 global matches 4 run fill 8662 72 7 8662 76 8 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score veraVertoCage1 global matches 5 run fill 8662 72 9 8662 76 7 minecraft:air
execute if score veraVertoCage1 global matches 5 run fill 8662 72 7 8662 76 7 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score veraVertoCage1 global matches 5 run fill 8662 72 8 8662 76 8 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]
execute if score veraVertoCage1 global matches 6 run fill 8662 72 9 8662 76 7 minecraft:air
execute if score veraVertoCage1 global matches 6 run fill 8662 72 7 8662 76 7 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score veraVertoCage1 global matches 7 run fill 8662 72 9 8662 76 7 minecraft:air
execute if score veraVertoCage1 global matches 7 run fill 8662 72 7 8662 76 7 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]
execute if score veraVertoCage1 global matches 8 run fill 8662 72 9 8662 76 7 minecraft:air

execute if score veraVertoCage1Direction global matches 0 if score veraVertoCage1 global matches 10 run playsound minecraft:custom.fx.metal_door_close master @a 8662 73 8 5 1

# Direction
execute if score veraVertoCage1Direction global matches 1 unless score veraVertoCage1 global matches 15.. run scoreboard players add veraVertoCage1 global 1
execute if score veraVertoCage1Direction global matches 0 unless score veraVertoCage1 global matches ..-10 run scoreboard players remove veraVertoCage1 global 1
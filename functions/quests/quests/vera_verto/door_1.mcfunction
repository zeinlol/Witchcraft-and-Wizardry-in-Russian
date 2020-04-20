# This is the block animation for door 1
execute if score veraVertoDoor1Direction global matches 1 if score veraVertoDoor1 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 8620 72 -14 5 1

execute if score veraVertoDoor1 global matches 2 run fill 8620 71 -14 8620 73 -14 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score veraVertoDoor1 global matches 4 run fill 8620 71 -14 8620 73 -14 minecraft:air
execute if score veraVertoDoor1 global matches 4 run fill 8620 71 -14 8620 72 -14 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score veraVertoDoor1 global matches 6 run fill 8620 71 -14 8620 73 -14 minecraft:air
execute if score veraVertoDoor1 global matches 6 run fill 8620 71 -14 8620 71 -14 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score veraVertoDoor1 global matches 8 run fill 8620 71 -14 8620 73 -14 minecraft:air

execute if score veraVertoDoor1Direction global matches 0 if score veraVertoDoor1 global matches 10 run playsound minecraft:custom.fx.metal_door_close master @a 8620 72 -14 5 1

# Direction
execute if score veraVertoDoor1Direction global matches 1 unless score veraVertoDoor1 global matches 15.. run scoreboard players add veraVertoDoor1 global 1
execute if score veraVertoDoor1Direction global matches 0 unless score veraVertoDoor1 global matches ..-10 run scoreboard players remove veraVertoDoor1 global 1
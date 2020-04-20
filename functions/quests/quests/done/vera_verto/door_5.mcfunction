# This is the block animation for door 5
execute if score veraVertoDoor5Direction global matches 1 if score veraVertoDoor5 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 8627 72 24 5 1

execute if score veraVertoDoor5 global matches 2 run fill 8627 71 23 8627 74 25 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score veraVertoDoor5 global matches 3 run fill 8627 71 23 8627 74 25 air
execute if score veraVertoDoor5 global matches 3 run fill 8627 71 23 8627 74 24 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score veraVertoDoor5 global matches 3 run fill 8627 71 25 8627 74 25 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]
execute if score veraVertoDoor5 global matches 4 run fill 8627 71 23 8627 74 25 air
execute if score veraVertoDoor5 global matches 4 run fill 8627 71 23 8627 74 24 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score veraVertoDoor5 global matches 5 run fill 8627 71 23 8627 74 25 air
execute if score veraVertoDoor5 global matches 5 run fill 8627 71 23 8627 74 23 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score veraVertoDoor5 global matches 5 run fill 8627 71 24 8627 74 24 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]
execute if score veraVertoDoor5 global matches 6 run fill 8627 71 23 8627 74 25 air
execute if score veraVertoDoor5 global matches 6 run fill 8627 71 23 8627 74 23 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score veraVertoDoor5 global matches 7 run fill 8627 71 23 8627 74 25 air
execute if score veraVertoDoor5 global matches 7 run fill 8627 71 23 8627 74 23 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]
execute if score veraVertoDoor5 global matches 8 run fill 8627 71 23 8627 74 25 air

execute if score veraVertoDoor5Direction global matches 0 if score veraVertoDoor5 global matches 10 run playsound minecraft:custom.fx.metal_door_close master @a 8627 72 24 5 1

# Direction
execute if score veraVertoDoor5Direction global matches 1 unless score veraVertoDoor5 global matches 15.. run scoreboard players add veraVertoDoor5 global 1
execute if score veraVertoDoor5Direction global matches 0 unless score veraVertoDoor5 global matches ..-10 run scoreboard players remove veraVertoDoor5 global 1
# This is the block animation for door 1
execute if score dungeonDelving2Direction global matches 1 if score dungeonDelving2 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 1790 81 885 3 1

execute if score dungeonDelving2 global matches 2 run fill 1790 80 883 1790 84 887 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score dungeonDelving2 global matches 4 run fill 1790 80 883 1790 84 887 minecraft:air
execute if score dungeonDelving2 global matches 4 run fill 1790 81 883 1790 84 887 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score dungeonDelving2 global matches 6 run fill 1790 80 883 1790 84 887 minecraft:air
execute if score dungeonDelving2 global matches 6 run fill 1790 82 883 1790 84 887 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score dungeonDelving2 global matches 8 run fill 1790 80 883 1790 84 887 minecraft:air
execute if score dungeonDelving2 global matches 8 run fill 1790 83 883 1790 84 887 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score dungeonDelving2 global matches 10 run fill 1790 80 883 1790 84 887 minecraft:air
execute if score dungeonDelving2 global matches 10 run fill 1790 84 883 1790 84 887 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score dungeonDelving2 global matches 12 run fill 1790 80 883 1790 84 887 minecraft:air

execute if score dungeonDelving2Direction global matches 0 if score dungeonDelving2 global matches 12 run playsound minecraft:custom.fx.metal_door_close master @a 1790 81 885 3 1

# Direction
execute if score dungeonDelving2Direction global matches 1 unless score dungeonDelving2 global matches 14.. run scoreboard players add dungeonDelving2 global 1
execute if score dungeonDelving2Direction global matches 0 unless score dungeonDelving2 global matches ..-2 run scoreboard players remove dungeonDelving2 global 1
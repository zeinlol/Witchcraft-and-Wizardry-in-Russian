# This is the block animation for door 1
execute if score dungeonDelving3Direction global matches 1 if score dungeonDelving3 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 1724 51 822 3 1

execute if score dungeonDelving3 global matches 2 run fill 1724 51 822 1724 53 823 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score dungeonDelving3 global matches 4 run fill 1724 51 822 1724 53 823 minecraft:air
execute if score dungeonDelving3 global matches 4 run fill 1724 52 822 1724 53 823 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score dungeonDelving3 global matches 6 run fill 1724 51 822 1724 53 823 minecraft:air
execute if score dungeonDelving3 global matches 6 run fill 1724 53 822 1724 53 823 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score dungeonDelving3 global matches 8 run fill 1724 51 822 1724 53 823 minecraft:air

execute if score dungeonDelving3Direction global matches 0 if score dungeonDelving3 global matches 8 run playsound minecraft:custom.fx.metal_door_close master @a 1724 51 822 3 1

# Direction
execute if score dungeonDelving3Direction global matches 1 unless score dungeonDelving3 global matches 10.. run scoreboard players add dungeonDelving3 global 1
execute if score dungeonDelving3Direction global matches 0 unless score dungeonDelving3 global matches ..-2 run scoreboard players remove dungeonDelving3 global 1
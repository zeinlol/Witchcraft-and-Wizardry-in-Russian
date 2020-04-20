# This is the block animation for door 1
execute if score knockturnAlleyDoor2Direction global matches 1 if score knockturnAlleyDoor2 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 2783 34 990 2 1

execute if score knockturnAlleyDoor2 global matches 2 run fill 2781 33 990 2785 34 990 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score knockturnAlleyDoor2 global matches 2 run fill 2782 35 990 2784 35 990 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]

execute if score knockturnAlleyDoor2 global matches 4 run fill 2781 33 990 2785 34 990 minecraft:air
execute if score knockturnAlleyDoor2 global matches 4 run fill 2781 34 990 2785 34 990 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score knockturnAlleyDoor2 global matches 4 run fill 2782 35 990 2784 35 990 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]

execute if score knockturnAlleyDoor2 global matches 6 run fill 2781 33 990 2785 34 990 minecraft:air
execute if score knockturnAlleyDoor2 global matches 6 run fill 2782 35 990 2784 35 990 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]

execute if score knockturnAlleyDoor2 global matches 8 run fill 2781 33 990 2785 34 990 minecraft:air
execute if score knockturnAlleyDoor2 global matches 8 run fill 2782 35 990 2784 35 990 minecraft:air

execute if score knockturnAlleyDoor2Direction global matches 0 if score knockturnAlleyDoor2 global matches 8 run playsound minecraft:custom.fx.metal_door_close master @a 2783 34 990 2 1

# Direction
execute if score knockturnAlleyDoor2Direction global matches 1 unless score knockturnAlleyDoor2 global matches 10.. run scoreboard players add knockturnAlleyDoor2 global 1
execute if score knockturnAlleyDoor2Direction global matches 0 unless score knockturnAlleyDoor2 global matches ..-2 run scoreboard players remove knockturnAlleyDoor2 global 1
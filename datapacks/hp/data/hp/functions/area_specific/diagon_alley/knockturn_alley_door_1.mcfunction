# This is the block animation for door 1
execute if score knockturnAlleyDoor1Direction global matches 1 if score knockturnAlleyDoor1 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 2802 35 1025 2 1

execute if score knockturnAlleyDoor1 global matches 2 run fill 2802 34 1024 2802 37 1026 air
execute if score knockturnAlleyDoor1 global matches 2 run setblock 2802 34 1024 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 2 run setblock 2802 34 1025 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 2 run setblock 2802 34 1026 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 2 run setblock 2802 35 1024 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 2 run setblock 2802 35 1025 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 2 run setblock 2802 35 1026 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 2 run setblock 2802 36 1024 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 2 run setblock 2802 36 1025 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 2 run setblock 2802 36 1026 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 2 run setblock 2802 37 1024 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]

execute if score knockturnAlleyDoor1 global matches 4 run fill 2802 34 1024 2802 37 1026 air
execute if score knockturnAlleyDoor1 global matches 4 run setblock 2802 34 1024 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 4 run setblock 2802 34 1025 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 4 run setblock 2802 34 1026 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 4 run setblock 2802 35 1024 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 4 run setblock 2802 35 1025 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 4 run setblock 2802 35 1026 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 4 run setblock 2802 36 1024 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]

execute if score knockturnAlleyDoor1 global matches 6 run fill 2802 34 1024 2802 37 1026 air
execute if score knockturnAlleyDoor1 global matches 6 run setblock 2802 34 1024 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 6 run setblock 2802 34 1025 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 6 run setblock 2802 34 1026 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score knockturnAlleyDoor1 global matches 6 run setblock 2802 35 1024 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]

execute if score knockturnAlleyDoor1 global matches 8 run fill 2802 34 1024 2802 37 1026 air
execute if score knockturnAlleyDoor1 global matches 8 run setblock 2802 34 1024 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]

execute if score knockturnAlleyDoor1 global matches 10 run fill 2802 34 1024 2802 37 1026 air

execute if score knockturnAlleyDoor1Direction global matches 0 if score knockturnAlleyDoor1 global matches 10 run playsound minecraft:custom.fx.metal_door_close master @a 2802 35 1025 2 1

# Direction
execute if score knockturnAlleyDoor1Direction global matches 1 unless score knockturnAlleyDoor1 global matches 14.. run scoreboard players add knockturnAlleyDoor1 global 1
execute if score knockturnAlleyDoor1Direction global matches 0 unless score knockturnAlleyDoor1 global matches ..-2 run scoreboard players remove knockturnAlleyDoor1 global 1
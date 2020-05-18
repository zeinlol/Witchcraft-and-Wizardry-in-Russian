# This is the block animation for door 1
execute if score brackiumDoor1Direction global matches 1 if score brackiumDoor1 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 6025 36 0 5 1
execute if score brackiumDoor1 global matches 2 run fill 6025 34 -1 6025 40 1 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score brackiumDoor1 global matches 4 run fill 6025 34 -1 6025 40 1 air
execute if score brackiumDoor1 global matches 4 run fill 6025 34 -1 6025 40 -1 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score brackiumDoor1 global matches 4 run fill 6025 34 1 6025 40 1 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score brackiumDoor1 global matches 6 run fill 6025 34 -1 6025 40 -1 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]
execute if score brackiumDoor1 global matches 6 run fill 6025 34 1 6025 40 1 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score brackiumDoor1 global matches 8 run fill 6025 34 -1 6025 40 -1 air
execute if score brackiumDoor1 global matches 8 run fill 6025 34 1 6025 40 1 air
execute if score brackiumDoor1Direction global matches 0 if score brackiumDoor1 global matches 8 run playsound minecraft:custom.fx.metal_door_close master @a 6025 36 0 5 1

# Direction
execute if score brackiumDoor1Direction global matches 1 unless score brackiumDoor1 global matches 10.. run scoreboard players add brackiumDoor1 global 1
execute if score brackiumDoor1Direction global matches 0 unless score brackiumDoor1 global matches ..0 run scoreboard players remove brackiumDoor1 global 1
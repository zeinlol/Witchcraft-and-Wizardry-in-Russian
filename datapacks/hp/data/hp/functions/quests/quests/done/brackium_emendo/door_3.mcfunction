# This is the block animation for door 1
execute if score brackiumDoor3Direction global matches 1 if score brackiumDoor3 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 6000 36 -25 5 1
execute if score brackiumDoor3 global matches 2 run fill 5999 34 -25 6001 40 -25 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score brackiumDoor3 global matches 4 run fill 5999 34 -25 6001 40 -25 air
execute if score brackiumDoor3 global matches 4 run fill 5999 34 -25 5999 40 -25 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score brackiumDoor3 global matches 4 run fill 6001 34 -25 6001 40 -25 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score brackiumDoor3 global matches 6 run fill 5999 34 -25 5999 40 -25 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]
execute if score brackiumDoor3 global matches 6 run fill 6001 34 -25 6001 40 -25 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=false]
execute if score brackiumDoor3 global matches 8 run fill 5999 34 -25 5999 40 -25 air
execute if score brackiumDoor3 global matches 8 run fill 6001 34 -25 6001 40 -25 air
execute if score brackiumDoor3Direction global matches 0 if score brackiumDoor3 global matches 8 run playsound minecraft:custom.fx.metal_door_close master @a 6000 36 -25 5 1

# Direction
execute if score brackiumDoor3Direction global matches 1 unless score brackiumDoor3 global matches 10.. run scoreboard players add brackiumDoor3 global 1
execute if score brackiumDoor3Direction global matches 0 unless score brackiumDoor3 global matches ..0 run scoreboard players remove brackiumDoor3 global 1
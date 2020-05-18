# This is the block animation for door 1
execute if score expectoPatronumDoor1Direction global matches 1 if score expectoPatronumDoor1 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 8007 131 5 5 1

execute if score expectoPatronumDoor1 global matches 2 run fill 8006 130 5 8008 133 5 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score expectoPatronumDoor1 global matches 3 run fill 8006 130 5 8006 133 5 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=false]
execute if score expectoPatronumDoor1 global matches 4 run fill 8006 130 5 8006 133 5 minecraft:air
execute if score expectoPatronumDoor1 global matches 4 run fill 8007 130 5 8008 133 5 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score expectoPatronumDoor1 global matches 5 run fill 8007 130 5 8007 133 5 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=false]
execute if score expectoPatronumDoor1 global matches 6 run fill 8007 130 5 8007 133 5 air
execute if score expectoPatronumDoor1 global matches 6 run fill 8008 130 5 8008 133 5 iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score expectoPatronumDoor1 global matches 7 run fill 8008 130 5 8008 133 5 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=false]
execute if score expectoPatronumDoor1 global matches 8 run fill 8008 130 5 8008 133 5 air

execute if score expectoPatronumDoor1Direction global matches 0 if score expectoPatronumDoor1 global matches 8 run playsound minecraft:custom.fx.metal_door_close master @a 8007 131 5 5 1

# Direction
execute if score expectoPatronumDoor1Direction global matches 1 unless score expectoPatronumDoor1 global matches 10.. run scoreboard players add expectoPatronumDoor1 global 1
execute if score expectoPatronumDoor1Direction global matches 0 unless score expectoPatronumDoor1 global matches ..-10 run scoreboard players remove expectoPatronumDoor1 global 1
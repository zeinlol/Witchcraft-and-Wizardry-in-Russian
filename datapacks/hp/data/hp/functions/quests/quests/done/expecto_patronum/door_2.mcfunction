# This is the block animation for door 1
execute if score expectoPatronumDoor2Direction global matches 1 if score expectoPatronumDoor2 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 8051 136 26 5 1

execute if score expectoPatronumDoor2 global matches 2 run fill 8051 134 25 8051 139 27 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score expectoPatronumDoor2 global matches 3 run fill 8051 134 27 8051 139 27 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]
execute if score expectoPatronumDoor2 global matches 4 run fill 8051 134 27 8051 139 27 minecraft:air
execute if score expectoPatronumDoor2 global matches 4 run fill 8051 134 25 8051 139 26 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score expectoPatronumDoor2 global matches 5 run fill 8051 134 26 8051 139 26 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]
execute if score expectoPatronumDoor2 global matches 6 run fill 8051 134 26 8051 139 26 air
execute if score expectoPatronumDoor2 global matches 6 run fill 8051 134 25 8051 139 25 iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score expectoPatronumDoor2 global matches 7 run fill 8051 134 25 8051 139 25 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]
execute if score expectoPatronumDoor2 global matches 8 run fill 8051 134 25 8051 139 25 air

execute if score expectoPatronumDoor2Direction global matches 0 if score expectoPatronumDoor2 global matches 8 run playsound minecraft:custom.fx.metal_door_close master @a 8051 136 26 5 1

# Direction
execute if score expectoPatronumDoor2Direction global matches 1 unless score expectoPatronumDoor2 global matches 10.. run scoreboard players add expectoPatronumDoor2 global 1
execute if score expectoPatronumDoor2Direction global matches 0 unless score expectoPatronumDoor2 global matches ..-10 run scoreboard players remove expectoPatronumDoor2 global 1
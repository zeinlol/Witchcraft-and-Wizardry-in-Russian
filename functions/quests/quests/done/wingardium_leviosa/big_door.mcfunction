# This is the block animation for the big door
execute if score wingardiumBigDoorDirection global matches 1 if score wingardiumBigDoor global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 7008 40 -19 5 1

execute if score wingardiumBigDoor global matches 2 run fill 7008 37 -21 7008 46 -17 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score wingardiumBigDoor global matches 3 run fill 7008 37 -21 7008 46 -17 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score wingardiumBigDoor global matches 3 run fill 7008 37 -19 7008 46 -19 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score wingardiumBigDoor global matches 4 run fill 7008 37 -21 7008 46 -17 minecraft:air
execute if score wingardiumBigDoor global matches 4 run fill 7008 37 -18 7008 46 -17 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score wingardiumBigDoor global matches 4 run fill 7008 37 -21 7008 46 -20 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

execute if score wingardiumBigDoor global matches 5 run fill 7008 37 -21 7008 46 -17 minecraft:air
execute if score wingardiumBigDoor global matches 5 run fill 7008 37 -17 7008 46 -17 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score wingardiumBigDoor global matches 5 run fill 7008 37 -21 7008 46 -21 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score wingardiumBigDoor global matches 5 run fill 7008 37 -18 7008 46 -18 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score wingardiumBigDoor global matches 5 run fill 7008 37 -20 7008 46 -20 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]

execute if score wingardiumBigDoor global matches 6 run fill 7008 37 -21 7008 46 -17 minecraft:air
execute if score wingardiumBigDoor global matches 6 run fill 7008 37 -17 7008 46 -17 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score wingardiumBigDoor global matches 6 run fill 7008 37 -21 7008 46 -21 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

execute if score wingardiumBigDoor global matches 7 run fill 7008 37 -21 7008 46 -17 minecraft:air
execute if score wingardiumBigDoor global matches 7 run fill 7008 37 -17 7008 46 -17 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score wingardiumBigDoor global matches 7 run fill 7008 37 -21 7008 46 -21 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]

execute if score wingardiumBigDoor global matches 8 run fill 7008 37 -21 7008 46 -17 minecraft:air


execute if score wingardiumBigDoorDirection global matches 0 if score wingardiumBigDoor global matches 10 run playsound minecraft:custom.fx.metal_door_close master @a 7008 40 -19 5 1

# Direction
execute if score wingardiumBigDoorDirection global matches 1 unless score wingardiumBigDoor global matches 15.. run scoreboard players add wingardiumBigDoor global 1
execute if score wingardiumBigDoorDirection global matches 0 unless score wingardiumBigDoor global matches ..-10 run scoreboard players remove wingardiumBigDoor global 1
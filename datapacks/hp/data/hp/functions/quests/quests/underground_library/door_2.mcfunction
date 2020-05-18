# This is the block animation for door 1
execute if score undergroundLibraryDoor2Direction global matches 1 if score undergroundLibraryDoor2 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 7022 57 4999 3 1

execute if score undergroundLibraryDoor2 global matches 2 run fill 7022 56 4999 7022 58 4999 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score undergroundLibraryDoor2 global matches 2 run fill 7021 56 5000 7021 58 5000 air
execute if score undergroundLibraryDoor2 global matches 2 run fill 7021 56 4998 7021 58 4998 air
execute if score undergroundLibraryDoor2 global matches 4 run fill 7022 56 4999 7022 58 4999 minecraft:air
execute if score undergroundLibraryDoor2 global matches 4 run fill 7021 56 5000 7021 58 5000 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=false]
execute if score undergroundLibraryDoor2 global matches 4 run fill 7021 56 4998 7021 58 4998 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=false]

execute if score undergroundLibraryDoor2Direction global matches 0 if score undergroundLibraryDoor2 global matches 4 run playsound minecraft:custom.fx.metal_door_close master @a 7022 57 4999 3 1

# Direction
execute if score undergroundLibraryDoor2Direction global matches 1 unless score undergroundLibraryDoor2 global matches 6.. run scoreboard players add undergroundLibraryDoor2 global 1
execute if score undergroundLibraryDoor2Direction global matches 0 unless score undergroundLibraryDoor2 global matches ..-2 run scoreboard players remove undergroundLibraryDoor2 global 1
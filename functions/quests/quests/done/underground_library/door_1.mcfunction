# This is the block animation for door 1
execute if score undergroundLibraryDoor1Direction global matches 1 if score undergroundLibraryDoor1 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 6962 70 4964 3 1

execute if score undergroundLibraryDoor1 global matches 2 run fill 6960 68 4964 6964 73 4964 minecraft:dark_oak_fence[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score undergroundLibraryDoor1 global matches 3 run fill 6960 68 4964 6964 73 4964 minecraft:air
execute if score undergroundLibraryDoor1 global matches 3 run fill 6960 69 4964 6964 73 4964 minecraft:dark_oak_fence[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score undergroundLibraryDoor1 global matches 4 run fill 6960 68 4964 6964 73 4964 minecraft:air
execute if score undergroundLibraryDoor1 global matches 4 run fill 6960 70 4964 6964 73 4964 minecraft:dark_oak_fence[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score undergroundLibraryDoor1 global matches 5 run fill 6960 68 4964 6964 73 4964 minecraft:air
execute if score undergroundLibraryDoor1 global matches 5 run fill 6960 71 4964 6964 73 4964 minecraft:dark_oak_fence[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score undergroundLibraryDoor1 global matches 6 run fill 6960 68 4964 6964 73 4964 minecraft:air
execute if score undergroundLibraryDoor1 global matches 6 run fill 6960 72 4964 6964 73 4964 minecraft:dark_oak_fence[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score undergroundLibraryDoor1 global matches 7 run fill 6960 68 4964 6964 73 4964 minecraft:air
execute if score undergroundLibraryDoor1 global matches 7 run fill 6960 73 4964 6964 73 4964 minecraft:dark_oak_fence[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score undergroundLibraryDoor1 global matches 8 run fill 6960 68 4964 6964 73 4964 minecraft:air

execute if score undergroundLibraryDoor1Direction global matches 0 if score undergroundLibraryDoor1 global matches 8 run playsound minecraft:custom.fx.metal_door_close master @a 6962 70 4964 3 1

# Direction
execute if score undergroundLibraryDoor1Direction global matches 1 unless score undergroundLibraryDoor1 global matches 10.. run scoreboard players add undergroundLibraryDoor1 global 1
execute if score undergroundLibraryDoor1Direction global matches 0 unless score undergroundLibraryDoor1 global matches ..-2 run scoreboard players remove undergroundLibraryDoor1 global 1
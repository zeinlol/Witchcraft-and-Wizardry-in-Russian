# This is the block animation for door 1
execute if score apparitionDoor2Direction global matches 1 if score apparitionDoor2 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 8952 72 43 5 1

execute if score apparitionDoor2 global matches 0 run fill 8950 70 43 8954 76 43 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score apparitionDoor2 global matches 2 run fill 8950 70 43 8954 76 43 air
execute if score apparitionDoor2 global matches 2 run fill 8950 71 43 8954 76 43 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score apparitionDoor2 global matches 4 run fill 8950 70 43 8954 76 43 air
execute if score apparitionDoor2 global matches 4 run fill 8950 72 43 8954 76 43 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score apparitionDoor2 global matches 6 run fill 8950 70 43 8954 76 43 air
execute if score apparitionDoor2 global matches 6 run fill 8950 73 43 8954 76 43 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score apparitionDoor2 global matches 8 run fill 8950 70 43 8954 76 43 air
execute if score apparitionDoor2 global matches 8 run fill 8950 74 43 8954 76 43 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score apparitionDoor2 global matches 10 run fill 8950 70 43 8954 76 43 air
execute if score apparitionDoor2 global matches 10 run fill 8950 75 43 8954 76 43 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score apparitionDoor2 global matches 12 run fill 8950 70 43 8954 76 43 air
execute if score apparitionDoor2 global matches 12 run fill 8950 76 43 8954 76 43 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score apparitionDoor2 global matches 14 run fill 8950 70 43 8954 76 43 air

execute if score apparitionDoor2Direction global matches 0 if score apparitionDoor2 global matches 14 run playsound minecraft:custom.fx.metal_door_close master @a 8952 72 43 5 1

# Direction
execute if score apparitionDoor2Direction global matches 1 unless score apparitionDoor2 global matches 19.. run scoreboard players add apparitionDoor2 global 1
execute if score apparitionDoor2Direction global matches 0 unless score apparitionDoor2 global matches ..-5 run scoreboard players remove apparitionDoor2 global 1

# Timer to close the door again
execute if score apparitionDoor2Timer global matches 1.. run scoreboard players operation apparitionDoor2Timer global -= systick time
execute if score apparitionDoor2Direction global matches 1 if score apparitionDoor2Timer global matches ..0 run scoreboard players set apparitionDoor2Direction global 0
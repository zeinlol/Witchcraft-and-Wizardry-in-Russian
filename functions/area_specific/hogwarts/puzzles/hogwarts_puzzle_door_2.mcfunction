# This is the block animation for door 1
execute if score hogwartsPuzzleDoor2Direction global matches 1 if score hogwartsPuzzleDoor2 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 778 80 111 2 1

execute if score hogwartsPuzzleDoor2 global matches 2 run fill 778 79 111 778 80 111 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor2 global matches 4 run fill 778 79 111 778 80 111 minecraft:air
execute if score hogwartsPuzzleDoor2 global matches 4 run fill 778 79 111 778 79 111 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor2 global matches 6 run fill 778 79 111 778 80 111 minecraft:air

execute if score hogwartsPuzzleDoor2Direction global matches 0 if score hogwartsPuzzleDoor2 global matches 6 run playsound minecraft:custom.fx.metal_door_close master @a 778 80 111 2 1

# Direction
execute if score hogwartsPuzzleDoor2Direction global matches 1 unless score hogwartsPuzzleDoor2 global matches 8.. run scoreboard players add hogwartsPuzzleDoor2 global 1
execute if score hogwartsPuzzleDoor2Direction global matches 0 unless score hogwartsPuzzleDoor2 global matches ..-2 run scoreboard players remove hogwartsPuzzleDoor2 global 1
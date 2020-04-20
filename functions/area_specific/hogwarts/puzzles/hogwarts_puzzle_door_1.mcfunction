# This is the block animation for door 1
execute if score hogwartsPuzzleDoor1Direction global matches 1 if score hogwartsPuzzleDoor1 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 792 72 141 2 1

execute if score hogwartsPuzzleDoor1 global matches 2 run fill 795 71 141 790 74 141 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor1 global matches 3 run fill 795 71 141 790 74 141 minecraft:air
execute if score hogwartsPuzzleDoor1 global matches 3 run fill 794 71 141 790 74 141 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor1 global matches 3 run fill 795 71 141 795 74 141 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor1 global matches 4 run fill 795 71 141 790 74 141 minecraft:air
execute if score hogwartsPuzzleDoor1 global matches 4 run fill 794 71 141 790 74 141 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor1 global matches 5 run fill 795 71 141 790 74 141 minecraft:air
execute if score hogwartsPuzzleDoor1 global matches 5 run fill 793 71 141 790 74 141 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor1 global matches 5 run fill 794 71 141 794 74 141 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor1 global matches 6 run fill 795 71 141 790 74 141 minecraft:air
execute if score hogwartsPuzzleDoor1 global matches 6 run fill 793 71 141 790 74 141 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor1 global matches 7 run fill 795 71 141 790 74 141 minecraft:air
execute if score hogwartsPuzzleDoor1 global matches 7 run fill 792 71 141 790 74 141 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor1 global matches 7 run fill 793 71 141 793 74 141 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor1 global matches 8 run fill 795 71 141 790 74 141 minecraft:air
execute if score hogwartsPuzzleDoor1 global matches 8 run fill 792 71 141 790 74 141 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor1 global matches 9 run fill 795 71 141 790 74 141 minecraft:air
execute if score hogwartsPuzzleDoor1 global matches 9 run fill 791 71 141 790 74 141 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor1 global matches 9 run fill 792 71 141 792 74 141 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor1 global matches 10 run fill 795 71 141 790 74 141 minecraft:air
execute if score hogwartsPuzzleDoor1 global matches 10 run fill 791 71 141 790 74 141 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor1 global matches 11 run fill 795 71 141 790 74 141 minecraft:air
execute if score hogwartsPuzzleDoor1 global matches 11 run fill 790 71 141 790 74 141 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor1 global matches 11 run fill 791 71 141 791 74 141 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor1 global matches 12 run fill 795 71 141 790 74 141 minecraft:air
execute if score hogwartsPuzzleDoor1 global matches 12 run fill 790 71 141 790 74 141 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor1 global matches 13 run fill 795 71 141 790 74 141 minecraft:air

execute if score hogwartsPuzzleDoor1Direction global matches 0 if score hogwartsPuzzleDoor1 global matches 13 run playsound minecraft:custom.fx.metal_door_close master @a 792 72 141 2 1

# Direction
execute if score hogwartsPuzzleDoor1Direction global matches 1 unless score hogwartsPuzzleDoor1 global matches 15.. run scoreboard players add hogwartsPuzzleDoor1 global 1
execute if score hogwartsPuzzleDoor1Direction global matches 0 unless score hogwartsPuzzleDoor1 global matches ..-2 run scoreboard players remove hogwartsPuzzleDoor1 global 1
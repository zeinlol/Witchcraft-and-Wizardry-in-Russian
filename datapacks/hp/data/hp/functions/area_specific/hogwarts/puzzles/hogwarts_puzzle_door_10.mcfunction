# This is the block animation for door 1
execute if score hogwartsPuzzleDoor10Direction global matches 1 if score hogwartsPuzzleDoor10 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 786 64 132 2 1

execute if score hogwartsPuzzleDoor10 global matches 2 run fill 786 63 131 786 65 133 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor10 global matches 4 run fill 786 63 131 786 65 133 minecraft:air
execute if score hogwartsPuzzleDoor10 global matches 4 run fill 786 63 131 786 65 132 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor10 global matches 4 run fill 786 63 133 786 65 133 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor10 global matches 6 run fill 786 63 131 786 65 133 minecraft:air
execute if score hogwartsPuzzleDoor10 global matches 6 run fill 786 63 131 786 65 132 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor10 global matches 8 run fill 786 63 131 786 65 133 minecraft:air
execute if score hogwartsPuzzleDoor10 global matches 8 run fill 786 63 131 786 65 131 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor10 global matches 8 run fill 786 63 132 786 65 132 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor10 global matches 10 run fill 786 63 131 786 65 133 minecraft:air
execute if score hogwartsPuzzleDoor10 global matches 10 run fill 786 63 131 786 65 131 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor10 global matches 12 run fill 786 63 131 786 65 133 minecraft:air
execute if score hogwartsPuzzleDoor10 global matches 12 run fill 786 63 131 786 65 131 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor10 global matches 14 run fill 786 63 131 786 65 133 minecraft:air

execute if score hogwartsPuzzleDoor10Direction global matches 0 if score hogwartsPuzzleDoor10 global matches 14 run playsound minecraft:custom.fx.metal_door_close master @a 786 64 132 2 1

# Direction
execute if score hogwartsPuzzleDoor10Direction global matches 1 unless score hogwartsPuzzleDoor10 global matches 16.. run scoreboard players add hogwartsPuzzleDoor10 global 1
execute if score hogwartsPuzzleDoor10Direction global matches 0 unless score hogwartsPuzzleDoor10 global matches ..-2 run scoreboard players remove hogwartsPuzzleDoor10 global 1
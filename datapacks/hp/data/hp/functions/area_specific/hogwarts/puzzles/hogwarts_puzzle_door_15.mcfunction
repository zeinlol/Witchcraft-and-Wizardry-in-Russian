# This is the block animation for door 1
execute if score hogwartsPuzzleDoor15Direction global matches 1 if score hogwartsPuzzleDoor15 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 741 5 -39 2 1

execute if score hogwartsPuzzleDoor15 global matches 2 run fill 740 4 -39 742 8 -39 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor15 global matches 4 run fill 740 4 -39 742 8 -39 minecraft:air
execute if score hogwartsPuzzleDoor15 global matches 4 run fill 740 5 -39 742 8 -39 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor15 global matches 6 run fill 740 4 -39 742 8 -39 minecraft:air
execute if score hogwartsPuzzleDoor15 global matches 6 run fill 740 6 -39 742 8 -39 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor15 global matches 8 run fill 740 4 -39 742 8 -39 minecraft:air
execute if score hogwartsPuzzleDoor15 global matches 8 run fill 740 7 -39 742 8 -39 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor15 global matches 10 run fill 740 4 -39 742 8 -39 minecraft:air
execute if score hogwartsPuzzleDoor15 global matches 10 run fill 740 8 -39 742 8 -39 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor15 global matches 12 run fill 740 4 -39 742 8 -39 minecraft:air

execute if score hogwartsPuzzleDoor15Direction global matches 0 if score hogwartsPuzzleDoor15 global matches 12 run playsound minecraft:custom.fx.metal_door_close master @a 741 5 -39 2 1

# Direction
execute if score hogwartsPuzzleDoor15Direction global matches 1 unless score hogwartsPuzzleDoor15 global matches 14.. run scoreboard players add hogwartsPuzzleDoor15 global 1
execute if score hogwartsPuzzleDoor15Direction global matches 0 unless score hogwartsPuzzleDoor15 global matches ..-2 run scoreboard players remove hogwartsPuzzleDoor15 global 1
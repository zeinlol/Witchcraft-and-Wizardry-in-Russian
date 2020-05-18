# This is the block animation for door 1
execute if score hogwartsPuzzleDoor4Direction global matches 1 if score hogwartsPuzzleDoor4 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 665 29 271 2 1

execute if score hogwartsPuzzleDoor4 global matches 2 if score hogwartsPuzzle4HasTriggeredSkeletons global matches 0 run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_4_skeletons
execute if score hogwartsPuzzleDoor4 global matches 2 run fill 665 28 270 665 31 272 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor4 global matches 4 run fill 665 28 270 665 31 272 air
execute if score hogwartsPuzzleDoor4 global matches 4 run fill 665 28 270 665 31 270 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor4 global matches 4 run fill 665 28 271 665 31 272 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor4 global matches 6 run fill 665 28 270 665 31 272 air
execute if score hogwartsPuzzleDoor4 global matches 6 run fill 665 28 271 665 31 271 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor4 global matches 6 run fill 665 28 272 665 31 272 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor4 global matches 8 run fill 665 28 270 665 31 272 minecraft:air
execute if score hogwartsPuzzleDoor4 global matches 8 run fill 665 28 270 665 31 272 minecraft:air
execute if score hogwartsPuzzleDoor4 global matches 8 run fill 665 28 272 665 31 272 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor4 global matches 10 run fill 665 28 270 665 31 272 minecraft:air

execute if score hogwartsPuzzleDoor4Direction global matches 0 if score hogwartsPuzzleDoor4 global matches 6 run playsound minecraft:custom.fx.metal_door_close master @a 665 29 271 2 1

# Direction
execute if score hogwartsPuzzleDoor4Direction global matches 1 unless score hogwartsPuzzleDoor4 global matches 12.. run scoreboard players add hogwartsPuzzleDoor4 global 1
execute if score hogwartsPuzzleDoor4Direction global matches 0 unless score hogwartsPuzzleDoor4 global matches ..-2 run scoreboard players remove hogwartsPuzzleDoor4 global 1
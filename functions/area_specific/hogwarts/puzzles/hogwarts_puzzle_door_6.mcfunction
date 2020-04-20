# This is the block animation for door 1
execute if score hogwartsPuzzleDoor6Direction global matches 1 if score hogwartsPuzzleDoor6 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 701 77 247 2 1

execute if score hogwartsPuzzleDoor6 global matches 2 run fill 701 76 247 701 77 247 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor6 global matches 4 run fill 701 76 247 701 77 247 minecraft:air
execute if score hogwartsPuzzleDoor6 global matches 4 run fill 701 76 247 701 76 247 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor6 global matches 6 run fill 701 76 247 701 77 247 minecraft:air

execute if score hogwartsPuzzleDoor6Direction global matches 0 if score hogwartsPuzzleDoor6 global matches 6 run playsound minecraft:custom.fx.metal_door_close master @a 701 77 247 2 1


# Direction
execute if score hogwartsPuzzleDoor6Direction global matches 1 unless score hogwartsPuzzleDoor6 global matches 8.. run scoreboard players add hogwartsPuzzleDoor6 global 1
execute if score hogwartsPuzzleDoor6Direction global matches 0 unless score hogwartsPuzzleDoor6 global matches ..-2 run scoreboard players remove hogwartsPuzzleDoor6 global 1
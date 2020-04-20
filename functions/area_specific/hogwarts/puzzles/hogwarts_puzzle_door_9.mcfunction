# Wingardium switches


execute if score hogwartsPuzzleDoor9switch1 global matches 0 run scoreboard players set hogwartsPuzzleDoor9Direction global 0
execute if score hogwartsPuzzleDoor9switch2 global matches 0 run scoreboard players set hogwartsPuzzleDoor9Direction global 0
execute if score hogwartsPuzzleDoor9switch3 global matches 0 run scoreboard players set hogwartsPuzzleDoor9Direction global 0
execute if score hogwartsPuzzleDoor9switch1 global matches 1 if score hogwartsPuzzleDoor9switch2 global matches 1 if score hogwartsPuzzleDoor9switch3 global matches 1 run scoreboard players set hogwartsPuzzleDoor9Direction global 1


# This is the block animation for door 1
execute if score hogwartsPuzzleDoor9Direction global matches 1 if score hogwartsPuzzleDoor9 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 767 52 171 2 1

execute if score hogwartsPuzzleDoor9 global matches 2 run fill 766 51 171 768 53 171 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor9 global matches 4 run fill 766 51 171 768 53 171 minecraft:air
execute if score hogwartsPuzzleDoor9 global matches 4 run fill 767 51 171 768 53 171 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor9 global matches 4 run fill 766 51 171 766 53 171 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor9 global matches 6 run fill 766 51 171 768 53 171 minecraft:air
execute if score hogwartsPuzzleDoor9 global matches 6 run fill 767 51 171 768 53 171 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor9 global matches 6 run fill 767 51 171 767 53 171 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor9 global matches 8 run fill 766 51 171 768 53 171 minecraft:air
execute if score hogwartsPuzzleDoor9 global matches 8 run fill 768 51 171 768 53 171 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor9 global matches 10 run fill 768 51 171 768 53 171 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor9 global matches 12 run fill 766 51 171 768 53 171 minecraft:air

execute if score hogwartsPuzzleDoor9Direction global matches 0 if score hogwartsPuzzleDoor9 global matches 12 run playsound minecraft:custom.fx.metal_door_close master @a 767 52 171 2 1

# Direction
execute if score hogwartsPuzzleDoor9Direction global matches 1 unless score hogwartsPuzzleDoor9 global matches 14.. run scoreboard players add hogwartsPuzzleDoor9 global 1
execute if score hogwartsPuzzleDoor9Direction global matches 0 unless score hogwartsPuzzleDoor9 global matches ..-2 run scoreboard players remove hogwartsPuzzleDoor9 global 1
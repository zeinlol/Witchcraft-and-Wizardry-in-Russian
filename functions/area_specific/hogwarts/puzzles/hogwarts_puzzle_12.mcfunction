# This is the block animation for door 1
execute if score hogwartsPuzzleDoor12Direction global matches 1 if score hogwartsPuzzleDoor12 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 596 86 286 2 1

execute if score hogwartsPuzzleDoor12 global matches 2 run fill 599 86 287 599 89 285 minecraft:black_stained_glass_pane[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor12 global matches 2 run fill 598 86 284 594 89 284 minecraft:black_stained_glass_pane[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor12 global matches 2 run fill 593 86 285 593 89 287 minecraft:black_stained_glass_pane[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor12 global matches 2 run fill 594 86 288 598 89 288 minecraft:black_stained_glass_pane[east=true,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor12 global matches 4 run fill 599 86 287 599 89 285 air
execute if score hogwartsPuzzleDoor12 global matches 4 run fill 598 86 284 594 89 284 air
execute if score hogwartsPuzzleDoor12 global matches 4 run fill 593 86 285 593 89 287 air
execute if score hogwartsPuzzleDoor12 global matches 4 run fill 594 86 288 598 89 288 air
execute if score hogwartsPuzzleDoor12 global matches 4 run fill 599 87 287 599 89 285 minecraft:black_stained_glass_pane[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor12 global matches 4 run fill 598 87 284 594 89 284 minecraft:black_stained_glass_pane[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor12 global matches 4 run fill 593 87 285 593 89 287 minecraft:black_stained_glass_pane[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor12 global matches 4 run fill 594 87 288 598 89 288 minecraft:black_stained_glass_pane[east=true,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor12 global matches 6 run fill 599 86 287 599 89 285 air
execute if score hogwartsPuzzleDoor12 global matches 6 run fill 598 86 284 594 89 284 air
execute if score hogwartsPuzzleDoor12 global matches 6 run fill 593 86 285 593 89 287 air
execute if score hogwartsPuzzleDoor12 global matches 6 run fill 594 86 288 598 89 288 air
execute if score hogwartsPuzzleDoor12 global matches 6 run fill 599 88 287 599 89 285 minecraft:black_stained_glass_pane[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor12 global matches 6 run fill 598 88 284 594 89 284 minecraft:black_stained_glass_pane[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor12 global matches 6 run fill 593 88 285 593 89 287 minecraft:black_stained_glass_pane[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor12 global matches 6 run fill 594 88 288 598 89 288 minecraft:black_stained_glass_pane[east=true,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor12 global matches 8 run fill 599 86 287 599 89 285 air
execute if score hogwartsPuzzleDoor12 global matches 8 run fill 598 86 284 594 89 284 air
execute if score hogwartsPuzzleDoor12 global matches 8 run fill 593 86 285 593 89 287 air
execute if score hogwartsPuzzleDoor12 global matches 8 run fill 594 86 288 598 89 288 air
execute if score hogwartsPuzzleDoor12 global matches 8 run fill 599 89 287 599 89 285 minecraft:black_stained_glass_pane[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor12 global matches 8 run fill 598 89 284 594 89 284 minecraft:black_stained_glass_pane[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor12 global matches 8 run fill 593 89 285 593 89 287 minecraft:black_stained_glass_pane[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor12 global matches 8 run fill 594 89 288 598 89 288 minecraft:black_stained_glass_pane[east=true,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor12 global matches 10 run fill 599 86 287 599 89 285 air
execute if score hogwartsPuzzleDoor12 global matches 10 run fill 598 86 284 594 89 284 air
execute if score hogwartsPuzzleDoor12 global matches 10 run fill 593 86 285 593 89 287 air
execute if score hogwartsPuzzleDoor12 global matches 10 run fill 594 86 288 598 89 288 air


execute if score hogwartsPuzzleDoor12Direction global matches 0 if score hogwartsPuzzleDoor12 global matches 8 run playsound minecraft:custom.fx.metal_door_close master @a 596 86 286 2 1

# Direction
execute if score hogwartsPuzzleDoor12Direction global matches 1 unless score hogwartsPuzzleDoor12 global matches 12.. run scoreboard players add hogwartsPuzzleDoor12 global 1
execute if score hogwartsPuzzleDoor12Direction global matches 0 unless score hogwartsPuzzleDoor12 global matches ..-2 run scoreboard players remove hogwartsPuzzleDoor12 global 1
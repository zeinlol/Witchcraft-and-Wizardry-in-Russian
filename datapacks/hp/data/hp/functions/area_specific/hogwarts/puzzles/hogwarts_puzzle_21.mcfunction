# This is the block animation for door 1
execute if score hogwartsPuzzleDoor21Direction global matches 1 if score hogwartsPuzzleDoor21 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 723 170 140 2 1

execute if score hogwartsPuzzleDoor21 global matches 2 run fill 723 170 140 723 171 140 minecraft:iron_bars[east=true,north=true,south=false,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor21 global matches 2 run fill 724 170 140 724 171 140 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor21 global matches 2 run fill 723 170 139 723 171 139 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor21 global matches 2 run fill 724 170 141 724 171 141 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor21 global matches 2 run fill 722 170 139 722 171 139 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor21 global matches 4 run fill 723 170 140 723 171 140 air
execute if score hogwartsPuzzleDoor21 global matches 4 run fill 724 170 140 724 171 140 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor21 global matches 4 run fill 723 170 139 723 171 139 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor21 global matches 4 run fill 724 170 141 724 171 141 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor21 global matches 4 run fill 722 170 139 722 171 139 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor21 global matches 6 run fill 723 170 140 723 171 140 air
execute if score hogwartsPuzzleDoor21 global matches 6 run fill 724 170 140 724 171 140 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor21 global matches 6 run fill 723 170 139 723 171 139 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor21 global matches 6 run fill 724 170 141 724 171 141 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor21 global matches 6 run fill 722 170 139 722 171 139 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor21 global matches 8 run fill 723 170 140 723 171 140 air
execute if score hogwartsPuzzleDoor21 global matches 8 run fill 724 170 140 724 171 140 air
execute if score hogwartsPuzzleDoor21 global matches 8 run fill 723 170 139 723 171 139 air
execute if score hogwartsPuzzleDoor21 global matches 8 run fill 724 170 141 724 171 141 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor21 global matches 8 run fill 722 170 139 722 171 139 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor21 global matches 10 run fill 723 170 140 723 171 140 air
execute if score hogwartsPuzzleDoor21 global matches 10 run fill 724 170 140 724 171 140 air
execute if score hogwartsPuzzleDoor21 global matches 10 run fill 723 170 139 723 171 139 air
execute if score hogwartsPuzzleDoor21 global matches 10 run fill 724 170 141 724 171 141 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score hogwartsPuzzleDoor21 global matches 10 run fill 722 170 139 722 171 139 minecraft:iron_bars[east=false,north=false,south=false,waterlogged=false,west=true]

execute if score hogwartsPuzzleDoor21 global matches 12 run fill 723 170 140 723 171 140 air
execute if score hogwartsPuzzleDoor21 global matches 12 run fill 724 170 140 724 171 140 air
execute if score hogwartsPuzzleDoor21 global matches 12 run fill 723 170 139 723 171 139 air
execute if score hogwartsPuzzleDoor21 global matches 12 run fill 724 170 141 724 171 141 air
execute if score hogwartsPuzzleDoor21 global matches 12 run fill 722 170 139 722 171 139 air

execute if score hogwartsPuzzleDoor21Direction global matches 0 if score hogwartsPuzzleDoor21 global matches 12 run playsound minecraft:custom.fx.metal_door_close master @a 723 170 140 2 1

# Direction
execute if score hogwartsPuzzleDoor21Direction global matches 1 unless score hogwartsPuzzleDoor21 global matches 14.. run scoreboard players add hogwartsPuzzleDoor21 global 1
execute if score hogwartsPuzzleDoor21Direction global matches 0 unless score hogwartsPuzzleDoor21 global matches ..-2 run scoreboard players remove hogwartsPuzzleDoor21 global 1
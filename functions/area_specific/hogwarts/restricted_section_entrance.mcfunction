# This is the block animation for door 1
execute if score restricedSectionDoorDirection global matches 1 if score restricedSectionDoor global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 788 76 90 2 1

execute if score restricedSectionDoor global matches 2 run fill 788 76 90 788 78 90 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score restricedSectionDoor global matches 2 run fill 788 76 89 788 78 89 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

execute if score restricedSectionDoor global matches 4 run fill 788 76 90 788 78 90 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score restricedSectionDoor global matches 4 run fill 788 76 89 788 78 89 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]

execute if score restricedSectionDoor global matches 6 run fill 788 76 89 788 78 89 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]
execute if score restricedSectionDoor global matches 6 run fill 788 76 90 788 78 90 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]
execute if score restricedSectionDoor global matches 6 run fill 788 76 89 788 78 89 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]

execute if score restricedSectionDoor global matches 8 run fill 788 76 90 788 78 90 air
execute if score restricedSectionDoor global matches 8 run fill 788 76 91 788 78 91 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

execute if score restricedSectionDoor global matches 10 run fill 788 76 90 788 78 90 air
execute if score restricedSectionDoor global matches 10 run fill 788 76 91 788 78 91 minecraft:iron_bars[east=false,north=false,south=true,waterlogged=false,west=false]

execute if score restricedSectionDoorDirection global matches 0 if score restricedSectionDoor global matches 5 run playsound minecraft:custom.fx.metal_door_close master @a 788 76 90 2 1

# Direction
execute if score restricedSectionDoorDirection global matches 1 unless score restricedSectionDoor global matches 12.. run scoreboard players add restricedSectionDoor global 1
execute if score restricedSectionDoorDirection global matches 0 unless score restricedSectionDoor global matches ..-2 run scoreboard players remove restricedSectionDoor global 1
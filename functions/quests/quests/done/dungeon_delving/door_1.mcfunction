# This is the block animation for door 1
execute if score dungeonDelving1Direction global matches 1 if score dungeonDelving1 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 1830 93 893 3 1

execute if score dungeonDelving1 global matches 2 run fill 1830 92 892 1830 98 894 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score dungeonDelving1 global matches 4 run fill 1830 92 892 1830 98 894 minecraft:air
execute if score dungeonDelving1 global matches 4 run fill 1830 93 892 1830 98 894 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score dungeonDelving1 global matches 6 run fill 1830 92 892 1830 98 894 minecraft:air
execute if score dungeonDelving1 global matches 6 run fill 1830 94 892 1830 98 894 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score dungeonDelving1 global matches 8 run fill 1830 92 892 1830 98 894 minecraft:air
execute if score dungeonDelving1 global matches 8 run fill 1830 95 892 1830 98 894 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score dungeonDelving1 global matches 10 run fill 1830 92 892 1830 98 894 minecraft:air
execute if score dungeonDelving1 global matches 10 run fill 1830 96 892 1830 98 894 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score dungeonDelving1 global matches 12 run fill 1830 92 892 1830 98 894 minecraft:air
execute if score dungeonDelving1 global matches 12 run fill 1830 97 892 1830 98 894 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score dungeonDelving1 global matches 14 run fill 1830 92 892 1830 98 894 minecraft:air
execute if score dungeonDelving1 global matches 14 run fill 1830 98 892 1830 98 894 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score dungeonDelving1 global matches 16 run fill 1830 92 892 1830 98 894 minecraft:air

execute if score dungeonDelving1Direction global matches 0 if score dungeonDelving1 global matches 16 run playsound minecraft:custom.fx.metal_door_close master @a 1830 93 893 3 1

# Direction
execute if score dungeonDelving1Direction global matches 1 unless score dungeonDelving1 global matches 18.. run scoreboard players add dungeonDelving1 global 1
execute if score dungeonDelving1Direction global matches 0 unless score dungeonDelving1 global matches ..-2 run scoreboard players remove dungeonDelving1 global 1
# This is the block animation for door 1
execute if score greenhouseDoorDirection global matches 1 if score greenhouseDoor global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 738 54 26 5 1

execute if score greenhouseDoor global matches 2 run fill 738 53 26 738 55 26 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score greenhouseDoor global matches 3 run fill 738 53 26 738 55 26 minecraft:air
execute if score greenhouseDoor global matches 3 run fill 738 53 26 738 54 26 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score greenhouseDoor global matches 4 run fill 738 53 26 738 55 26 minecraft:air
execute if score greenhouseDoor global matches 4 run fill 738 53 26 738 53 26 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score greenhouseDoor global matches 5 run fill 738 53 26 738 55 26 minecraft:air

execute if score greenhouseDoorDirection global matches 0 if score greenhouseDoor global matches 5 run playsound minecraft:custom.fx.metal_door_close master @a 738 54 26 5 1

# Direction
execute if score greenhouseDoorDirection global matches 1 unless score greenhouseDoor global matches 10.. run scoreboard players add greenhouseDoor global 1
execute if score greenhouseDoorDirection global matches 0 unless score greenhouseDoor global matches ..-10 run scoreboard players remove greenhouseDoor global 1
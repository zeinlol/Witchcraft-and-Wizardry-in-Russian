# This is the block animation for door 4
execute if score veraVertoDoor4Direction global matches 1 if score veraVertoDoor4 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 8613 71 20 5 1

execute if score veraVertoDoor4 global matches 2 run fill 8613 71 20 8613 73 20 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score veraVertoDoor4 global matches 2 run fill 8612 71 21 8612 73 21 air
execute if score veraVertoDoor4 global matches 2 run fill 8614 71 21 8614 73 21 air
execute if score veraVertoDoor4 global matches 4 run fill 8613 71 20 8613 73 20 air
execute if score veraVertoDoor4 global matches 4 run fill 8612 71 21 8612 73 21 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]
execute if score veraVertoDoor4 global matches 4 run fill 8614 71 21 8614 73 21 minecraft:iron_bars[east=false,north=true,south=false,waterlogged=false,west=false]

execute if score veraVertoDoor4Direction global matches 0 if score veraVertoDoor4 global matches 10 run playsound minecraft:custom.fx.metal_door_close master @a 8613 71 20 5 1

# Direction
execute if score veraVertoDoor4Direction global matches 1 unless score veraVertoDoor4 global matches 15.. run scoreboard players add veraVertoDoor4 global 1
execute if score veraVertoDoor4Direction global matches 0 unless score veraVertoDoor4 global matches ..-10 run scoreboard players remove veraVertoDoor4 global 1
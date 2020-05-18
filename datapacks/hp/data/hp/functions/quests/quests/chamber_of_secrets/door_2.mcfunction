# This is the block animation for door 2
execute if score chamberOfSecretsDoor2Direction global matches 1 if score chamberOfSecretsDoor2 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 6471 43 956 3 1

execute if score chamberOfSecretsDoor2 global matches 2 run fill 6471 42 956 6471 45 957 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score chamberOfSecretsDoor2 global matches 4 run fill 66471 42 956 6471 45 957 air
execute if score chamberOfSecretsDoor2 global matches 4 run fill 6471 43 956 6471 45 957 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score chamberOfSecretsDoor2 global matches 6 run fill 6471 42 956 6471 45 957 air
execute if score chamberOfSecretsDoor2 global matches 6 run fill 6471 44 956 6471 45 957 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score chamberOfSecretsDoor2 global matches 8 run fill 6471 42 956 6471 45 957 air

execute if score chamberOfSecretsDoor2Direction global matches 0 if score chamberOfSecretsDoor2 global matches 10 run playsound minecraft:custom.fx.metal_door_close master @a 6471 43 956 3 1

# Direction
execute if score chamberOfSecretsDoor2Direction global matches 1 unless score chamberOfSecretsDoor2 global matches 12.. run scoreboard players add chamberOfSecretsDoor2 global 1
execute if score chamberOfSecretsDoor2Direction global matches 0 unless score chamberOfSecretsDoor2 global matches ..-2 run scoreboard players remove chamberOfSecretsDoor2 global 1
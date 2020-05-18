# This is the block animation for door 1
execute if score chamberOfSecretsDoor1Direction global matches 1 if score chamberOfSecretsDoor1 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 6471 43 951 3 1

execute if score chamberOfSecretsDoor1 global matches 2 run fill 6471 42 949 6471 47 953 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score chamberOfSecretsDoor1 global matches 4 run fill 6471 42 949 6471 47 953 air
execute if score chamberOfSecretsDoor1 global matches 4 run fill 6471 43 949 6471 47 953 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score chamberOfSecretsDoor1 global matches 6 run fill 6471 42 949 6471 47 953 air
execute if score chamberOfSecretsDoor1 global matches 6 run fill 6471 44 949 6471 47 953 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score chamberOfSecretsDoor1 global matches 8 run fill 6471 42 949 6471 47 953 air
execute if score chamberOfSecretsDoor1 global matches 8 run fill 6471 45 949 6471 47 953 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score chamberOfSecretsDoor1 global matches 10 run fill 6471 42 949 6471 47 953 air
execute if score chamberOfSecretsDoor1 global matches 10 run fill 6471 46 949 6471 47 953 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score chamberOfSecretsDoor1 global matches 12 run fill 6471 42 949 6471 47 953 air

execute if score chamberOfSecretsDoor1Direction global matches 0 if score chamberOfSecretsDoor1 global matches 12 run playsound minecraft:custom.fx.metal_door_close master @a 6471 43 951 3 1

# Direction
execute if score chamberOfSecretsDoor1Direction global matches 1 unless score chamberOfSecretsDoor1 global matches 14.. run scoreboard players add chamberOfSecretsDoor1 global 1
execute if score chamberOfSecretsDoor1Direction global matches 0 unless score chamberOfSecretsDoor1 global matches ..-2 run scoreboard players remove chamberOfSecretsDoor1 global 1
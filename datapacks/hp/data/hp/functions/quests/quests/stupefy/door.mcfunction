# This is the block animation for door 1
execute if score stupefyDoor1Direction global matches 1 if score stupefyDoor1 global matches 2 run playsound minecraft:custom.fx.metal_door_close master @a 5521 50 -69 1 1

execute if score stupefyDoor1 global matches 0 run fill 5521 50 -69 5521 53 -69 minecraft:iron_bars[north=true,south=true]
execute if score stupefyDoor1 global matches 2 run fill 5521 50 -69 5521 53 -69 minecraft:iron_bars[north=true,south=false]
execute if score stupefyDoor1 global matches 4 run fill 5521 50 -69 5521 53 -69 air
execute if score stupefyDoor1 global matches 4 run fill 5521 50 -70 5521 53 -70 minecraft:iron_bars[north=true,south=true]
execute if score stupefyDoor1 global matches 6 run fill 5521 50 -70 5521 53 -70 minecraft:iron_bars[north=true,south=false]
execute if score stupefyDoor1 global matches 8 run fill 5521 50 -70 5521 53 -70 air
execute if score stupefyDoor1 global matches 8 run fill 5521 50 -71 5521 53 -71 minecraft:iron_bars[north=true,south=true]
execute if score stupefyDoor1 global matches 10 run fill 5521 50 -71 5521 53 -71 minecraft:iron_bars[north=true,south=false]
execute if score stupefyDoor1 global matches 12 run fill 5521 50 -71 5521 53 -71 air


# Direction
execute if score stupefyDoor1Direction global matches 1 unless score stupefyDoor1 global matches 15.. run scoreboard players add stupefyDoor1 global 1
execute if score stupefyDoor1Direction global matches 0 unless score stupefyDoor1 global matches ..-60 run scoreboard players remove stupefyDoor1 global 1
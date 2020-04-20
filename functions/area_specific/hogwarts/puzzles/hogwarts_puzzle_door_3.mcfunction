# Rotating Pillars
execute if score hogwartsPuzzleDoor3Direction global matches 1 unless score ce8e8aff-f985-45a7-a436-d53f59356a34 pillarState matches 1 run scoreboard players set hogwartsPuzzleDoor3Direction global 0
execute if score hogwartsPuzzleDoor3Direction global matches 1 unless score 41f216e4-6e99-4f7c-aabe-725ca4abbf92 pillarState matches 1 run scoreboard players set hogwartsPuzzleDoor3Direction global 0
execute if score hogwartsPuzzleDoor3Direction global matches 0 if score ce8e8aff-f985-45a7-a436-d53f59356a34 pillarState matches 1 if score 41f216e4-6e99-4f7c-aabe-725ca4abbf92 pillarState matches 1 run scoreboard players set hogwartsPuzzleDoor3Direction global 1


# This is the block animation for door 1
execute if score hogwartsPuzzleDoor3Direction global matches 1 if score hogwartsPuzzleDoor3 global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 662 58 272 2 1

execute if score hogwartsPuzzleDoor3 global matches 2 run fill 662 57 272 662 58 272 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor3 global matches 4 run fill 662 57 272 662 58 272 minecraft:air
execute if score hogwartsPuzzleDoor3 global matches 4 run fill 662 57 272 662 57 272 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]
execute if score hogwartsPuzzleDoor3 global matches 6 run fill 662 57 272 662 58 272 minecraft:air

execute if score hogwartsPuzzleDoor3Direction global matches 0 if score hogwartsPuzzleDoor3 global matches 6 run playsound minecraft:custom.fx.metal_door_close master @a 662 58 272 2 1

# Direction
execute if score hogwartsPuzzleDoor3Direction global matches 1 unless score hogwartsPuzzleDoor3 global matches 8.. run scoreboard players add hogwartsPuzzleDoor3 global 1
execute if score hogwartsPuzzleDoor3Direction global matches 0 unless score hogwartsPuzzleDoor3 global matches ..-2 run scoreboard players remove hogwartsPuzzleDoor3 global 1
# This is the block animation for stair 1
execute if score hogwartsPuzzle15Pillar2 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 704 4 -19 2 1
execute if score hogwartsPuzzle15Pillar2Direction global matches 1 if score hogwartsPuzzle15Pillar21 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 704 4 -19 2 1

execute if score hogwartsPuzzle15Pillar2 global matches 2 run clone 703 34 -20 705 40 -18 703 0 -20

execute if score hogwartsPuzzle15Pillar2 global matches 4 run clone 703 33 -20 705 39 -18 703 1 -20

execute if score hogwartsPuzzle15Pillar2 global matches 6 run clone 703 33 -20 705 39 -18 703 2 -20

execute if score hogwartsPuzzle15Pillar2 global matches 8 run clone 703 33 -20 705 39 -18 703 3 -20

execute if score hogwartsPuzzle15Pillar2 global matches 10 run clone 703 33 -20 705 39 -18 703 4 -20

execute if score hogwartsPuzzle15Pillar2Direction global matches 0 if score hogwartsPuzzle15Pillar2 global matches 10 run playsound minecraft:custom.fx.stone_slide master @a 704 4 -19 2 1
execute if score hogwartsPuzzle15Pillar2 global matches 10 run playsound minecraft:custom.fx.rocks_move_short master @a 704 4 -19 2 1

# Direction
execute unless entity @p[x=703,y=4,z=-20,dx=2,dy=6,dz=2] if score hogwartsPuzzle15Pillar2Direction global matches 1 unless score hogwartsPuzzle15Pillar2 global matches 12.. run scoreboard players add hogwartsPuzzle15Pillar2 global 1
execute if score hogwartsPuzzle15Pillar2Direction global matches 0 unless score hogwartsPuzzle15Pillar2 global matches ..-10 run scoreboard players remove hogwartsPuzzle15Pillar2 global 1
# This is the block animation for stair 1
execute if score hogwartsPuzzle15Pillar3 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 704 4 -25 3 1
execute if score hogwartsPuzzle15Pillar3Direction global matches 1 if score hogwartsPuzzle15Pillar31 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 704 4 -25 3 1

execute if score hogwartsPuzzle15Pillar3 global matches 18 run clone 703 33 -26 705 46 -24 703 4 -26

execute if score hogwartsPuzzle15Pillar3 global matches 16 run clone 703 33 -26 705 46 -24 703 3 -26

execute if score hogwartsPuzzle15Pillar3 global matches 14 run clone 703 33 -26 705 46 -24 703 2 -26

execute if score hogwartsPuzzle15Pillar3 global matches 12 run clone 703 33 -26 705 46 -24 703 1 -26

execute if score hogwartsPuzzle15Pillar3 global matches 10 run clone 703 33 -26 705 46 -24 703 0 -26

execute if score hogwartsPuzzle15Pillar3 global matches 8 run clone 703 34 -26 705 46 -24 703 0 -26

execute if score hogwartsPuzzle15Pillar3 global matches 6 run clone 703 35 -26 705 46 -24 703 0 -26

execute if score hogwartsPuzzle15Pillar3 global matches 4 run clone 703 36 -26 705 46 -24 703 0 -26

execute if score hogwartsPuzzle15Pillar3 global matches 2 run clone 703 37 -26 705 46 -24 703 0 -26

execute if score hogwartsPuzzle15Pillar3Direction global matches 0 if score hogwartsPuzzle15Pillar3 global matches 20 run playsound minecraft:custom.fx.stone_slide master @a 704 4 -25 3 1
execute if score hogwartsPuzzle15Pillar3 global matches 20 run playsound minecraft:custom.fx.rocks_move_short master @a 704 4 -25 3 1

# Direction
execute unless entity @p[x=703,y=4,z=-26,dx=2,dy=6,dz=2] if score hogwartsPuzzle15Pillar3Direction global matches 1 unless score hogwartsPuzzle15Pillar3 global matches 25.. run scoreboard players add hogwartsPuzzle15Pillar3 global 1
execute if score hogwartsPuzzle15Pillar3Direction global matches 0 unless score hogwartsPuzzle15Pillar3 global matches ..-10 run scoreboard players remove hogwartsPuzzle15Pillar3 global 1
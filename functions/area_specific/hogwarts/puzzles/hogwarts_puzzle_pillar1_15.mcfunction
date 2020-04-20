# This is the block animation for stair 1
execute if score hogwartsPuzzle15Pillar1 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 704 6 -13 2 1
execute if score hogwartsPuzzle15Pillar1Direction global matches 1 if score hogwartsPuzzle15Pillar11 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 704 6 -13 2 1

execute if score hogwartsPuzzle15Pillar1 global matches 2 run clone 703 33 -14 705 40 -12 703 2 -14

execute if score hogwartsPuzzle15Pillar1 global matches 4 run clone 703 33 -14 705 40 -12 703 3 -14

execute if score hogwartsPuzzle15Pillar1 global matches 6 run clone 703 33 -14 705 40 -12 703 4 -14

execute if score hogwartsPuzzle15Pillar1Direction global matches 0 if score hogwartsPuzzle15Pillar1 global matches 6 run playsound minecraft:custom.fx.stone_slide master @a 704 6 -13 2 1
execute if score hogwartsPuzzle15Pillar1 global matches 6 run playsound minecraft:custom.fx.rocks_move_short master @a 704 6 -13 2 1

# Direction
execute unless entity @p[x=703,y=4,z=-14,dx=2,dy=6,dz=2] if score hogwartsPuzzle15Pillar1Direction global matches 1 unless score hogwartsPuzzle15Pillar1 global matches 8.. run scoreboard players add hogwartsPuzzle15Pillar1 global 1
execute if score hogwartsPuzzle15Pillar1Direction global matches 0 unless score hogwartsPuzzle15Pillar1 global matches ..-10 run scoreboard players remove hogwartsPuzzle15Pillar1 global 1
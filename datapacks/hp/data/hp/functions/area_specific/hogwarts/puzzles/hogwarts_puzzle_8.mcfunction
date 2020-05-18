# This is the block animation for the crumbling wall
execute if score hogwartsPuzzle8 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 732 112 313 2 1
execute if score hogwartsPuzzle8Direction global matches 1 if score hogwartsPuzzle81 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 732 112 313 2 1

execute if score hogwartsPuzzle8 global matches 2..14 run function hp:area_specific/hogwarts/puzzles/hogwarts_puzzle_8_opening


execute if score hogwartsPuzzle8Direction global matches 0 if score hogwartsPuzzle8 global matches 14 run playsound minecraft:custom.fx.stone_slide master @a 732 112 313 2 1
execute if score hogwartsPuzzle8 global matches 14 run playsound minecraft:custom.fx.rocks_move_short master @a 732 112 313 2 1

# Direction
execute if score hogwartsPuzzle8Direction global matches 1 unless score hogwartsPuzzle8 global matches 20.. run scoreboard players add hogwartsPuzzle8 global 1
execute if score hogwartsPuzzle8Direction global matches 0 unless score hogwartsPuzzle8 global matches ..-10 run scoreboard players remove hogwartsPuzzle8 global 1
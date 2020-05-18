# This is the block animation for stone slide thingies that pops out of the wall
execute if score stupefyStoneSlide2 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 5491 44 -18 2 1
execute if score stupefyStoneSlide2 global matches 2 run clone 5482 52 -19 5479 52 -20 5491 44 -19
execute if score stupefyStoneSlide2 global matches 4 run playsound minecraft:custom.fx.stone_slide master @a 5491 44 -18 2 1
execute if score stupefyStoneSlide2 global matches 4 run clone 5482 50 -19 5479 50 -20 5491 44 -19
execute if score stupefyStoneSlide2 global matches 6 run clone 5482 48 -19 5479 48 -20 5491 44 -19
execute if score stupefyStoneSlide2 global matches 8 run clone 5482 46 -19 5479 46 -20 5491 44 -19
execute if score stupefyStoneSlide2 global matches 9 run playsound minecraft:custom.fx.rocks master @a 5491 44 -18 2 1

execute if score stupefyStoneSlide2 global matches 154 run clone 5482 48 -19 5479 48 -20 5491 44 -19
execute if score stupefyStoneSlide2 global matches 154 run playsound minecraft:custom.fx.stone_slide master @a 5491 44 -18 2 1
execute if score stupefyStoneSlide2 global matches 156 run clone 5482 50 -19 5479 50 -20 5491 44 -19
execute if score stupefyStoneSlide2 global matches 158 run clone 5482 52 -19 5479 52 -20 5491 44 -19
execute if score stupefyStoneSlide2 global matches 158 run playsound minecraft:custom.fx.rocks_move_short master @a 5491 44 -18 2 1

# Direction
execute unless score stupefyStoneSlide2 global matches 160.. run scoreboard players add stupefyStoneSlide2 global 1
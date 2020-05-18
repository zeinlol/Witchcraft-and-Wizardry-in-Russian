# This is the block animation for stone slide thingies that pops out of the wall
execute if score stupefyStoneSlide3 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 5491 45 -16 2 1
execute if score stupefyStoneSlide3 global matches 2 run clone 5482 52 -14 5479 52 -15 5491 45 -16
execute if score stupefyStoneSlide3 global matches 4 run playsound minecraft:custom.fx.stone_slide master @a 5491 45 -16 2 1
execute if score stupefyStoneSlide3 global matches 4 run clone 5482 50 -14 5479 50 -15 5491 45 -16
execute if score stupefyStoneSlide3 global matches 6 run clone 5482 48 -14 5479 48 -15 5491 45 -16
execute if score stupefyStoneSlide3 global matches 8 run clone 5482 46 -14 5479 46 -15 5491 45 -16
execute if score stupefyStoneSlide3 global matches 9 run playsound minecraft:custom.fx.rocks master @a 5491 45 -16 2 1

execute if score stupefyStoneSlide3 global matches 124 run clone 5482 48 -14 5479 48 -15 5491 45 -16
execute if score stupefyStoneSlide3 global matches 124 run playsound minecraft:custom.fx.stone_slide master @a 5491 45 -16 2 1
execute if score stupefyStoneSlide3 global matches 126 run clone 5482 50 -14 5479 50 -15 5491 45 -16
execute if score stupefyStoneSlide3 global matches 128 run clone 5482 52 -14 5479 52 -15 5491 45 -16
execute if score stupefyStoneSlide3 global matches 128 run playsound minecraft:custom.fx.rocks_move_short master @a 5491 45 -16 2 1

# Direction
execute unless score stupefyStoneSlide3 global matches 130.. run scoreboard players add stupefyStoneSlide3 global 1
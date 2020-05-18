# This is the block animation for stone slide thingies that pops out of the wall
execute if score stupefyStoneSlide1 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 5507 42 -22 2 1
execute if score stupefyStoneSlide1 global matches 2 run clone 5518 52 -27 5521 52 -26 5505 43 -22
execute if score stupefyStoneSlide1 global matches 4 run playsound minecraft:custom.fx.stone_slide master @a 5507 42 -22 2 1
execute if score stupefyStoneSlide1 global matches 4 run clone 5518 50 -27 5521 50 -26 5505 43 -22
execute if score stupefyStoneSlide1 global matches 6 run clone 5518 48 -27 5521 48 -26 5505 43 -22
execute if score stupefyStoneSlide1 global matches 8 run clone 5518 46 -27 5521 46 -26 5505 43 -22
execute if score stupefyStoneSlide1 global matches 9 run playsound minecraft:custom.fx.rocks master @a 5507 42 -22 2 1

execute if score stupefyStoneSlide1 global matches 94 run clone 5518 48 -27 5521 48 -26 5505 43 -22
execute if score stupefyStoneSlide1 global matches 94 run playsound minecraft:custom.fx.stone_slide master @a 5507 42 -22 2 1
execute if score stupefyStoneSlide1 global matches 96 run clone 5518 50 -27 5521 50 -26 5505 43 -22
execute if score stupefyStoneSlide1 global matches 98 run clone 5518 52 -27 5521 52 -26 5505 43 -22
execute if score stupefyStoneSlide1 global matches 98 run playsound minecraft:custom.fx.rocks_move_short master @a 5507 42 -22 2 1

# Direction
execute unless score stupefyStoneSlide1 global matches 100.. run scoreboard players add stupefyStoneSlide1 global 1
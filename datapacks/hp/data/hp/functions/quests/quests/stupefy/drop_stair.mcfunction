# This is for the draw bridge
execute if score stupefyDropStair global matches 2 run playsound minecraft:custom.fx.impact master @a 5553 45 -48 5 1
execute if score stupefyDropStairDirection global matches 1 if score stupefyDropStair global matches 2 run playsound minecraft:custom.fx.wood_creak master @a 5553 45 -48 5 1
execute if score stupefyDropStairDirection global matches 1 if score stupefyDropStair global matches 4 run playsound minecraft:custom.fx.metal_door_open master @a 5553 45 -48 5 1
execute if score stupefyDropStair global matches 2 run clone 5583 47 -60 5588 56 -56 5553 45 -48 replace
execute if score stupefyDropStair global matches 4 run clone 5583 57 -60 5588 66 -56 5553 45 -48 replace
execute if score stupefyDropStair global matches 6 run clone 5583 67 -60 5588 76 -56 5553 45 -48 replace
execute if score stupefyDropStair global matches 8 run clone 5583 77 -60 5588 86 -56 5553 45 -48 replace
execute if score stupefyDropStair global matches 10 run clone 5583 87 -60 5588 96 -56 5553 45 -48 replace
execute if score stupefyDropStair global matches 12 run clone 5583 97 -60 5588 106 -56 5553 45 -48 replace
execute if score stupefyDropStair global matches 12 run playsound minecraft:custom.fx.impact master @a 5553 45 -48 5 1
execute if score stupefyDropStair global matches 12 run playsound minecraft:custom.fx.strike master @a 5553 45 -48 5 1

# Direction
execute if score stupefyDropStairDirection global matches 1 unless score stupefyDropStair global matches 15.. run scoreboard players add stupefyDropStair global 1
execute if score stupefyDropStairDirection global matches 0 unless score stupefyDropStair global matches ..-2 run scoreboard players remove stupefyDropStair global 1
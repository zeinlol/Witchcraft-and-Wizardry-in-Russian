# This is for the draw bridge
execute if score bombardaStair2 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 7448 70 219 5 1
execute if score bombardaStair2Direction global matches 1 if score bombardaStair2 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 7448 70 219 5 1
execute if score bombardaStair2 global matches 2 run clone 7427 93 207 7432 101 213 7447 67 217
execute if score bombardaStair2 global matches 4 run clone 7427 102 207 7432 110 213 7447 67 217
execute if score bombardaStair2 global matches 6 run clone 7427 111 207 7432 119 213 7447 67 217
execute if score bombardaStair2 global matches 8 run clone 7427 120 207 7432 128 213 7447 67 217
execute if score bombardaStair2Direction global matches 0 if score bombardaStair2 global matches 8 run playsound minecraft:custom.fx.stone_slide master @a 7448 70 219 5 1
execute if score bombardaStair2 global matches 8 run playsound minecraft:custom.fx.rocks_move_short master @a 7448 70 219 5 1

# Direction
execute unless entity @p[x=7448,y=68,z=217,dx=3,dy=5,dz=5] if score bombardaStair2Direction global matches 1 unless score bombardaStair2 global matches 10.. run scoreboard players add bombardaStair2 global 1
execute if score bombardaStair2Direction global matches 0 unless score bombardaStair2 global matches ..-10 run scoreboard players remove bombardaStair2 global 1
# This is for the draw bridge
execute if score bombardaStair1 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 7470 98 222 5 1
execute if score bombardaStair1Direction global matches 1 if score bombardaStair1 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 7470 98 222 5 1
execute if score bombardaStair1 global matches 2 run clone 7468 96 220 7470 102 225 7468 74 220
execute if score bombardaStair1 global matches 4 run clone 7468 105 220 7470 111 225 7468 74 220
execute if score bombardaStair1 global matches 6 run clone 7468 114 220 7470 120 225 7468 74 220
execute if score bombardaStair1Direction global matches 0 if score bombardaStair1 global matches 6 run playsound minecraft:custom.fx.stone_slide master @a 7470 98 222 5 1
execute if score bombardaStair1 global matches 6 run playsound minecraft:custom.fx.rocks_move_short master @a 7470 98 222 5 1

# Direction
execute unless entity @p[x=7468,y=74,z=221,dx=2,dy=6,dz=4] if score bombardaStair1Direction global matches 1 unless score bombardaStair1 global matches 10.. run scoreboard players add bombardaStair1 global 1
execute if score bombardaStair1Direction global matches 0 unless score bombardaStair1 global matches ..-10 run scoreboard players remove bombardaStair1 global 1
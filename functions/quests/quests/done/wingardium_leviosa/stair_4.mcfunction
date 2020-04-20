# This is the block animation for stair 4
execute if score wingardiumStair4 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 7098 44 -19 5 1
execute if score wingardiumStair4Direction global matches 1 if score wingardiumStair4 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 7098 44 -19 5 1
execute if score wingardiumStair4 global matches 2 run clone 7096 63 -20 7101 67 -18 7096 42 -20
execute if score wingardiumStair4 global matches 6 run clone 7096 68 -20 7101 72 -18 7096 42 -20
execute if score wingardiumStair4 global matches 8 run clone 7096 73 -20 7101 77 -18 7096 42 -20
execute if score wingardiumStair4 global matches 10 run clone 7096 78 -20 7101 82 -18 7096 42 -20
execute if score wingardiumStair4 global matches 12 run clone 7096 83 -20 7101 87 -18 7096 42 -20
execute if score wingardiumStair4 global matches 14 run clone 7096 88 -20 7101 92 -18 7096 42 -20
execute if score wingardiumStair4 global matches 16 run clone 7096 93 -20 7101 97 -18 7096 42 -20
execute if score wingardiumStair4Direction global matches 0 if score wingardiumStair4 global matches 16 run playsound minecraft:custom.fx.stone_slide master @a 7098 44 -19 5 1
execute if score wingardiumStair4 global matches 16 run playsound minecraft:custom.fx.rocks_move_short master @a 7098 44 -19 5 1

# Direction
execute unless entity @p[x=7096,y=42,z=-20,dx=5,dy=5,dz=2] if score wingardiumStair4Direction global matches 1 unless score wingardiumStair4 global matches 26.. run scoreboard players add wingardiumStair4 global 1
execute if score wingardiumStair4Direction global matches 0 unless score wingardiumStair4 global matches ..-10 run scoreboard players remove wingardiumStair4 global 1
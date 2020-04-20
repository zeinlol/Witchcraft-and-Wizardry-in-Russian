# This is the block animation for stair 2
execute if score wingardiumStair2 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 7075 40 -19 5 1
execute if score wingardiumStair2Direction global matches 1 if score wingardiumStair2 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 7075 40 -19 5 1
execute if score wingardiumStair2 global matches 2 run clone 7072 63 -20 7077 67 -18 7072 38 -20
execute if score wingardiumStair2 global matches 6 run clone 7072 68 -20 7077 72 -18 7072 38 -20
execute if score wingardiumStair2 global matches 8 run clone 7072 73 -20 7077 77 -18 7072 38 -20
execute if score wingardiumStair2 global matches 10 run clone 7072 78 -20 7077 82 -18 7072 38 -20
execute if score wingardiumStair2 global matches 12 run clone 7072 83 -20 7077 87 -18 7072 38 -20
execute if score wingardiumStair2 global matches 14 run clone 7072 88 -20 7077 92 -18 7072 38 -20
execute if score wingardiumStair2 global matches 16 run clone 7072 93 -20 7077 97 -18 7072 38 -20
execute if score wingardiumStair2Direction global matches 0 if score wingardiumStair2 global matches 16 run playsound minecraft:custom.fx.stone_slide master @a 7075 40 -19 5 1
execute if score wingardiumStair2 global matches 16 run playsound minecraft:custom.fx.rocks_move_short master @a 7075 40 -19 5 1

# Direction
execute unless entity @p[x=7072,y=39,z=-20,dx=5,dy=5,dz=2] if score wingardiumStair2Direction global matches 1 unless score wingardiumStair2 global matches 26.. run scoreboard players add wingardiumStair2 global 1
execute if score wingardiumStair2Direction global matches 0 unless score wingardiumStair2 global matches ..-10 run scoreboard players remove wingardiumStair2 global 1
# This is the block animation for stair 1
execute if score wingardiumStair1 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 6931 33 -33 5 1
execute if score wingardiumStair1Direction global matches 1 if score wingardiumStair1 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 6931 33 -33 5 1
execute if score wingardiumStair1 global matches 2 run clone 6927 82 -35 6936 86 -31 6927 32 -35
execute if score wingardiumStair1 global matches 6 run clone 6927 89 -35 6936 95 -31 6927 32 -35
execute if score wingardiumStair1 global matches 8 run clone 6927 96 -35 6936 100 -31 6927 32 -35
execute if score wingardiumStair1 global matches 10 run clone 6927 103 -35 6936 108 -31 6927 32 -35
execute if score wingardiumStair1 global matches 12 run clone 6927 110 -31 6936 115 -35 6927 32 -35
execute if score wingardiumStair1 global matches 14 run clone 6927 117 -31 6936 122 -35 6927 32 -35
execute if score wingardiumStair1Direction global matches 0 if score wingardiumStair1 global matches 14 run playsound minecraft:custom.fx.stone_slide master @a 6931 33 -33 5 1
execute if score wingardiumStair1 global matches 14 run playsound minecraft:custom.fx.rocks_move_short master @a 6931 33 -33 5 1

# Direction
execute unless entity @p[x=6927,y=32,z=-35,dx=9,dy=7,dz=4] if score wingardiumStair1Direction global matches 1 unless score wingardiumStair1 global matches 26.. run scoreboard players add wingardiumStair1 global 1
execute if score wingardiumStair1Direction global matches 0 unless score wingardiumStair1 global matches ..-10 run scoreboard players remove wingardiumStair1 global 1
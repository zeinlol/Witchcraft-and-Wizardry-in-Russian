# This is the block animation for stair 3
execute if score wingardiumStair3 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 7088 44 -26 5 1
execute if score wingardiumStair3Direction global matches 1 if score wingardiumStair3 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 7088 44 -26 5 1
execute if score wingardiumStair3 global matches 2 run clone 7087 63 -28 7089 67 -23 7087 42 -28
execute if score wingardiumStair3 global matches 6 run clone 7087 68 -28 7089 72 -23 7087 42 -28
execute if score wingardiumStair3 global matches 8 run clone 7087 73 -28 7089 77 -23 7087 42 -28
execute if score wingardiumStair3 global matches 10 run clone 7087 78 -28 7089 82 -23 7087 42 -28
execute if score wingardiumStair3 global matches 12 run clone 7087 83 -28 7089 87 -23 7087 42 -28
execute if score wingardiumStair3 global matches 14 run clone 7087 88 -28 7089 92 -23 7087 42 -28
execute if score wingardiumStair3 global matches 16 run clone 7087 93 -28 7089 97 -23 7087 42 -28
execute if score wingardiumStair3Direction global matches 0 if score wingardiumStair3 global matches 16 run playsound minecraft:custom.fx.stone_slide master @a 7088 44 -26 5 1
execute if score wingardiumStair3 global matches 16 run playsound minecraft:custom.fx.rocks_move_short master @a 7088 44 -26 5 1

# Direction
execute unless entity @p[x=7087,y=43,z=-28,dx=2,dy=5,dz=5] if score wingardiumStair3Direction global matches 1 unless score wingardiumStair3 global matches 26.. run scoreboard players add wingardiumStair3 global 1
execute if score wingardiumStair3Direction global matches 0 unless score wingardiumStair3 global matches ..-10 run scoreboard players remove wingardiumStair3 global 1
# This is the block animation for pillar 3
execute if score wingardiumPillar3 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 7133 47 -13 5 1
execute if score wingardiumPillar3Direction global matches 1 if score wingardiumPillar3 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 7133 47 -13 5 1
execute if score wingardiumPillar3 global matches 2 run clone 7132 97 -14 7134 102 -12 7132 47 -14
execute if score wingardiumPillar3 global matches 4 run clone 7132 104 -14 7134 109 -12 7132 47 -14
execute if score wingardiumPillar3 global matches 6 run clone 7132 111 -14 7134 116 -12 7132 47 -14
execute if score wingardiumPillar3 global matches 8 run clone 7132 118 -14 7134 123 -12 7132 47 -14
execute if score wingardiumPillar3Direction global matches 0 if score wingardiumPillar3 global matches 8 run playsound minecraft:custom.fx.stone_slide master @a 7133 47 -13 5 1
execute if score wingardiumPillar3 global matches 8 run playsound minecraft:custom.fx.rocks_move_short master @a 7133 47 -13 5 1

# Direction
execute unless entity @p[x=7132,y=47,z=-14,dx=2,dy=10,dz=2] if score wingardiumPillar3Direction global matches 1 unless score wingardiumPillar3 global matches 10.. run scoreboard players add wingardiumPillar3 global 1
execute if score wingardiumPillar3Direction global matches 0 unless score wingardiumPillar3 global matches ..-10 run scoreboard players remove wingardiumPillar3 global 1
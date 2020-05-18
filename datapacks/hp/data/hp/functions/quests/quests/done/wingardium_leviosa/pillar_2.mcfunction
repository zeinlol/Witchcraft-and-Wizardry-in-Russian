# This is the block animation for pillar 2
execute if score wingardiumPillar2 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 7129 47 -13 5 1
execute if score wingardiumPillar2Direction global matches 1 if score wingardiumPillar2 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 7129 47 -13 5 1
execute if score wingardiumPillar2 global matches 2 run clone 7128 97 -14 7130 102 -12 7128 47 -14
execute if score wingardiumPillar2 global matches 4 run clone 7128 104 -14 7130 109 -12 7128 47 -14
execute if score wingardiumPillar2 global matches 6 run clone 7128 111 -14 7130 116 -12 7128 47 -14
execute if score wingardiumPillar2Direction global matches 0 if score wingardiumPillar2 global matches 6 run playsound minecraft:custom.fx.stone_slide master @a 7129 47 -13 5 1
execute if score wingardiumPillar2 global matches 6 run playsound minecraft:custom.fx.rocks_move_short master @a 7129 47 -13 5 1

# Direction
execute unless entity @p[x=7128,y=47,z=-14,dx=2,dy=10,dz=2] if score wingardiumPillar2Direction global matches 1 unless score wingardiumPillar2 global matches 10.. run scoreboard players add wingardiumPillar2 global 1
execute if score wingardiumPillar2Direction global matches 0 unless score wingardiumPillar2 global matches ..-10 run scoreboard players remove wingardiumPillar2 global 1
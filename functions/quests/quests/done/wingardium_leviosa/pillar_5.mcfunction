# This is the block animation for pillar 5
execute if score wingardiumPillar5 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 7141 47 -13 5 1
execute if score wingardiumPillar5Direction global matches 1 if score wingardiumPillar5 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 7141 47 -13 5 1
execute if score wingardiumPillar5 global matches 2 run clone 7140 97 -14 7142 102 -12 7140 47 -14
execute if score wingardiumPillar5 global matches 4 run clone 7140 104 -14 7142 109 -12 7140 47 -14
execute if score wingardiumPillar5 global matches 6 run clone 7140 111 -14 7142 116 -12 7140 47 -14
execute if score wingardiumPillar5 global matches 8 run clone 7140 118 -14 7142 123 -12 7140 47 -14
execute if score wingardiumPillar5 global matches 10 run clone 7140 125 -14 7142 130 -12 7140 47 -14
execute if score wingardiumPillar5 global matches 12 run clone 7140 132 -14 7142 137 -12 7140 47 -14
execute if score wingardiumPillar5Direction global matches 0 if score wingardiumPillar5 global matches 12 run playsound minecraft:custom.fx.stone_slide master @a 7141 47 -13 5 1
execute if score wingardiumPillar5 global matches 12 run playsound minecraft:custom.fx.rocks_move_short master @a 7141 47 -13 5 1

# Direction
execute unless entity @p[x=7140,y=47,z=-14,dx=2,dy=10,dz=2] if score wingardiumPillar5Direction global matches 1 unless score wingardiumPillar5 global matches 15.. run scoreboard players add wingardiumPillar5 global 1
execute if score wingardiumPillar5Direction global matches 0 unless score wingardiumPillar5 global matches ..-10 run scoreboard players remove wingardiumPillar5 global 1
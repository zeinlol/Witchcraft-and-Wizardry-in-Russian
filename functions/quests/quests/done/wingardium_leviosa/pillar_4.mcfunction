# This is the block animation for pillar 4
execute if score wingardiumPillar4 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 7137 47 -13 5 1
execute if score wingardiumPillar4Direction global matches 1 if score wingardiumPillar4 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 7137 47 -13 5 1
execute if score wingardiumPillar4 global matches 2 run clone 7136 97 -14 7138 102 -12 7136 47 -14
execute if score wingardiumPillar4 global matches 4 run clone 7136 104 -14 7138 109 -12 7136 47 -14
execute if score wingardiumPillar4 global matches 6 run clone 7136 111 -14 7138 116 -12 7136 47 -14
execute if score wingardiumPillar4 global matches 8 run clone 7136 118 -14 7138 123 -12 7136 47 -14
execute if score wingardiumPillar4 global matches 10 run clone 7136 125 -14 7138 130 -12 7136 47 -14
execute if score wingardiumPillar4Direction global matches 0 if score wingardiumPillar4 global matches 10 run playsound minecraft:custom.fx.stone_slide master @a 7137 47 -13 5 1
execute if score wingardiumPillar4 global matches 10 run playsound minecraft:custom.fx.rocks_move_short master @a 7137 47 -13 5 1

# Direction
execute unless entity @p[x=7136,y=47,z=-14,dx=2,dy=10,dz=2] if score wingardiumPillar4Direction global matches 1 unless score wingardiumPillar4 global matches 15.. run scoreboard players add wingardiumPillar4 global 1
execute if score wingardiumPillar4Direction global matches 0 unless score wingardiumPillar4 global matches ..-10 run scoreboard players remove wingardiumPillar4 global 1
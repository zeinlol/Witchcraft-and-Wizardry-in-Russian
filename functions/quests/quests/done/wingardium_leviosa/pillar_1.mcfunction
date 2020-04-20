# This is the block animation for pillar 1
execute if score wingardiumPillar1Direction global matches 1 if score wingardiumPillar1 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 7125 47 -13 5 1
execute if score wingardiumPillar1 global matches 2 run clone 7124 97 -14 7126 102 -12 7124 47 -14
execute if score wingardiumPillar1 global matches 4 run clone 7124 104 -14 7126 109 -12 7124 47 -14
execute if score wingardiumPillar1Direction global matches 0 if score wingardiumPillar1 global matches 4 run playsound minecraft:custom.fx.rocks_move_short master @a 7125 47 -13 5 1

# Direction
execute unless entity @p[x=7124,y=47,z=-14,dx=2,dy=10,dz=2] if score wingardiumPillar1Direction global matches 1 unless score wingardiumPillar1 global matches 10.. run scoreboard players add wingardiumPillar1 global 1
execute if score wingardiumPillar1Direction global matches 0 unless score wingardiumPillar1 global matches ..-10 run scoreboard players remove wingardiumPillar1 global 1
# This is the block animation for statue 1
execute if score stupefyStatue1 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 5570 54 -62 5 1
execute if score stupefyStatue1 global matches 2 run particle minecraft:falling_dust stone 5570 54 -62 0.5 0.5 0.5 10 10 force
execute if score stupefyStatue1 global matches 2 run setblock 5570 54 -62 minecraft:black_glazed_terracotta[facing=north]
execute if score stupefyStatue1 global matches 4 run playsound minecraft:custom.fx.rocks_move_short master @a 5570 54 -62 5 1
execute if score stupefyStatue1 global matches 4 run particle minecraft:falling_dust stone 5570 54 -62 0.5 0.5 0.5 10 10 force
execute if score stupefyStatue1 global matches 4 run setblock 5570 54 -62 minecraft:black_glazed_terracotta[facing=west]

# Direction
execute if score stupefyStatue1Direction global matches 1 unless score stupefyStatue1 global matches 6.. run scoreboard players add stupefyStatue1 global 1
execute if score stupefyStatue1Direction global matches 0 unless score stupefyStatue1 global matches ..0 run scoreboard players remove stupefyStatue1 global 1
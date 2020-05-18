# This is the block animation for statue 2
execute if score stupefyStatue2 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 5570 54 -46 5 1
execute if score stupefyStatue2 global matches 2 run particle minecraft:falling_dust stone 5570 54 -46 0.5 0.5 0.5 10 10 force
execute if score stupefyStatue2 global matches 2 run setblock 5570 54 -46 minecraft:black_glazed_terracotta[facing=north]
execute if score stupefyStatue2 global matches 4 run playsound minecraft:custom.fx.rocks_move_short master @a 5570 54 -46 5 1
execute if score stupefyStatue2 global matches 4 run particle minecraft:falling_dust stone 5570 54 -46 0.5 0.5 0.5 10 10 force
execute if score stupefyStatue2 global matches 4 run setblock 5570 54 -46 minecraft:black_glazed_terracotta[facing=west]

# Direction
execute if score stupefyStatue2Direction global matches 1 unless score stupefyStatue2 global matches 6.. run scoreboard players add stupefyStatue2 global 1
execute if score stupefyStatue2Direction global matches 0 unless score stupefyStatue2 global matches ..0 run scoreboard players remove stupefyStatue2 global 1
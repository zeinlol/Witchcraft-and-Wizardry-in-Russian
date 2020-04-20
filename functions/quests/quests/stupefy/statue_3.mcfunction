# This is the block animation for statue 3
execute if score stupefyStatue3 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 5552 54 -70 5 1
execute if score stupefyStatue3 global matches 2 run particle minecraft:falling_dust stone 5552 54 -70 0.5 0.5 0.5 10 10 force
execute if score stupefyStatue3 global matches 2 run setblock 5552 54 -70 minecraft:black_glazed_terracotta[facing=south]
execute if score stupefyStatue3 global matches 4 run playsound minecraft:custom.fx.rocks_move_short master @a 5552 54 -70 5 1
execute if score stupefyStatue3 global matches 4 run particle minecraft:falling_dust stone 5552 54 -70 0.5 0.5 0.5 10 10 force
execute if score stupefyStatue3 global matches 4 run setblock 5552 54 -70 minecraft:black_glazed_terracotta[facing=east]

# Direction
execute if score stupefyStatue3Direction global matches 1 unless score stupefyStatue3 global matches 6.. run scoreboard players add stupefyStatue3 global 1
execute if score stupefyStatue3Direction global matches 0 unless score stupefyStatue3 global matches ..0 run scoreboard players remove stupefyStatue3 global 1
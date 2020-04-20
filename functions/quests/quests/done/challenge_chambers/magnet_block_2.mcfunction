# This is the block animation for pillar 1
execute if score challengeChambersMagnetBlock2Direction global matches 1 if score challengeChambersMagnetBlock2 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 1889 35 720 5 1
execute if score challengeChambersMagnetBlock2Direction global matches 0 if score challengeChambersMagnetBlock2 global matches 2 run setblock 1891 32 720 smooth_stone
execute if score challengeChambersMagnetBlock2Direction global matches 0 if score challengeChambersMagnetBlock2 global matches 2 run setblock 1889 32 722 smooth_stone
execute if score challengeChambersMagnetBlock2Direction global matches 0 if score challengeChambersMagnetBlock2 global matches 2 run setblock 1887 32 720 smooth_stone
execute if score challengeChambersMagnetBlock2Direction global matches 0 if score challengeChambersMagnetBlock2 global matches 2 run setblock 1889 32 718 smooth_stone
execute if score challengeChambersMagnetBlock2Direction global matches 1 if score challengeChambersMagnetBlock2 global matches 4 run setblock 1891 32 720 redstone_block
execute if score challengeChambersMagnetBlock2Direction global matches 1 if score challengeChambersMagnetBlock2 global matches 4 run setblock 1889 32 722 redstone_block
execute if score challengeChambersMagnetBlock2Direction global matches 1 if score challengeChambersMagnetBlock2 global matches 4 run setblock 1887 32 720 redstone_block
execute if score challengeChambersMagnetBlock2Direction global matches 1 if score challengeChambersMagnetBlock2 global matches 4 run setblock 1889 32 718 redstone_block
execute if score challengeChambersMagnetBlock2Direction global matches 0 if score challengeChambersMagnetBlock2 global matches 4 run playsound minecraft:custom.fx.rocks_move_short master @a 1889 35 720 5 1

# Direction
execute if score challengeChambersMagnetBlock2Direction global matches 1 unless score challengeChambersMagnetBlock2 global matches 6.. run scoreboard players add challengeChambersMagnetBlock2 global 1
execute if score challengeChambersMagnetBlock2Direction global matches 0 unless score challengeChambersMagnetBlock2 global matches ..-5 run scoreboard players remove challengeChambersMagnetBlock2 global 1

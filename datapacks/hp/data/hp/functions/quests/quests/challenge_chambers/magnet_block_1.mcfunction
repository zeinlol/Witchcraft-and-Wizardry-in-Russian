# This is the block animation for pillar 1
execute if score challengeChambersMagnetBlock1Direction global matches 1 if score challengeChambersMagnetBlock1 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 1897 34 720 5 1
execute if score challengeChambersMagnetBlock1Direction global matches 0 if score challengeChambersMagnetBlock1 global matches 2 run fill 1897 32 721 1897 32 719 smooth_stone
execute if score challengeChambersMagnetBlock1Direction global matches 1 if score challengeChambersMagnetBlock1 global matches 4 run fill 1897 32 721 1897 32 719 redstone_block
execute if score challengeChambersMagnetBlock1Direction global matches 0 if score challengeChambersMagnetBlock1 global matches 4 run playsound minecraft:custom.fx.rocks_move_short master @a 1897 34 720 5 1

# Direction
execute if score challengeChambersMagnetBlock1Direction global matches 1 unless score challengeChambersMagnetBlock1 global matches 6.. run scoreboard players add challengeChambersMagnetBlock1 global 1
execute if score challengeChambersMagnetBlock1Direction global matches 0 unless score challengeChambersMagnetBlock1 global matches ..-5 run scoreboard players remove challengeChambersMagnetBlock1 global 1

# This is the block animation for pillar 1
execute if score veraVertoMagnetBlock3Direction global matches 1 if score veraVertoMagnetBlock3 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 8654 71 0 5 1
execute if score veraVertoMagnetBlock3Direction global matches 0 if score veraVertoMagnetBlock3 global matches 2 run fill 8654 68 -1 8654 68 1 smooth_stone
execute if score veraVertoMagnetBlock3Direction global matches 1 if score veraVertoMagnetBlock3 global matches 4 run fill 8654 68 -1 8654 68 1 redstone_block
execute if score veraVertoMagnetBlock3Direction global matches 0 if score veraVertoMagnetBlock3 global matches 4 run playsound minecraft:custom.fx.rocks_move_short master @a 8654 71 0 5 1

# Direction
execute if score veraVertoMagnetBlock3Direction global matches 1 unless score veraVertoMagnetBlock3 global matches 6.. run scoreboard players add veraVertoMagnetBlock3 global 1
execute if score veraVertoMagnetBlock3Direction global matches 0 unless score veraVertoMagnetBlock3 global matches ..-5 run scoreboard players remove veraVertoMagnetBlock3 global 1
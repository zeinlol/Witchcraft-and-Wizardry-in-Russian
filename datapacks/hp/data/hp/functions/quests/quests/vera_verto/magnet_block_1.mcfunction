# This is the block animation for pillar 1
execute if score veraVertoMagnetBlock1Direction global matches 1 if score veraVertoMagnetBlock1 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 8650 71 0 5 1
execute if score veraVertoMagnetBlock1Direction global matches 0 if score veraVertoMagnetBlock1 global matches 2 run fill 8650 68 -1 8650 68 1 smooth_stone
execute if score veraVertoMagnetBlock1Direction global matches 1 if score veraVertoMagnetBlock1 global matches 4 run fill 8650 68 -1 8650 68 1 redstone_block
execute if score veraVertoMagnetBlock1Direction global matches 0 if score veraVertoMagnetBlock1 global matches 4 run playsound minecraft:custom.fx.rocks_move_short master @a 8650 71 0 5 1

# Direction
execute if score veraVertoMagnetBlock1Direction global matches 1 unless score veraVertoMagnetBlock1 global matches 6.. run scoreboard players add veraVertoMagnetBlock1 global 1
execute if score veraVertoMagnetBlock1Direction global matches 0 unless score veraVertoMagnetBlock1 global matches ..-5 run scoreboard players remove veraVertoMagnetBlock1 global 1

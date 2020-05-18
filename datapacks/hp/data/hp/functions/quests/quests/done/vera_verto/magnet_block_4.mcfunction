# This is the block animation for pillar 1
execute if score veraVertoMagnetBlock4Direction global matches 1 if score veraVertoMagnetBlock4 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 8652 71 -2 5 1
execute if score veraVertoMagnetBlock4Direction global matches 0 if score veraVertoMagnetBlock4 global matches 2 run fill 8651 68 -2 8653 68 -2 smooth_stone
execute if score veraVertoMagnetBlock4Direction global matches 1 if score veraVertoMagnetBlock4 global matches 4 run fill 8651 68 -2 8653 68 -2 redstone_block
execute if score veraVertoMagnetBlock4Direction global matches 0 if score veraVertoMagnetBlock4 global matches 4 run playsound minecraft:custom.fx.rocks_move_short master @a 8652 71 -2 5 1

# Direction
execute if score veraVertoMagnetBlock4Direction global matches 1 unless score veraVertoMagnetBlock4 global matches 6.. run scoreboard players add veraVertoMagnetBlock4 global 1
execute if score veraVertoMagnetBlock4Direction global matches 0 unless score veraVertoMagnetBlock4 global matches ..-5 run scoreboard players remove veraVertoMagnetBlock4 global 1
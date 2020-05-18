# This is the block animation for pillar 1
execute if score veraVertoMagnetBlock5Direction global matches 1 if score veraVertoMagnetBlock5 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 8618 68 24 5 1
execute if score veraVertoMagnetBlock5 global matches 2 run setblock 8618 68 24 smooth_stone
execute if score veraVertoMagnetBlock5 global matches 4 run setblock 8618 68 24 redstone_block
execute if score veraVertoMagnetBlock5Direction global matches 0 if score veraVertoMagnetBlock5 global matches 4 run playsound minecraft:custom.fx.rocks_move_short master @a 8618 68 24 5 1

# Direction
execute if score veraVertoMagnetBlock5Direction global matches 1 unless score veraVertoMagnetBlock5 global matches 6.. run scoreboard players add veraVertoMagnetBlock5 global 1
execute if score veraVertoMagnetBlock5Direction global matches 0 unless score veraVertoMagnetBlock5 global matches ..-5 run scoreboard players remove veraVertoMagnetBlock5 global 1
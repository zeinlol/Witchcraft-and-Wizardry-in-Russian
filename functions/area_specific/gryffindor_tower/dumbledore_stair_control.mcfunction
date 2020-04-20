# This is the block animation for the stair to dumbledore's office
execute if score dumbledoreStair global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 736 110 307 2 1
execute if score dumbledoreStairDirection global matches 1 if score dumbledoreStair global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 736 110 307 2 1

# Setblock
execute if score dumbledoreStair global matches 2..28 run function hp:area_specific/gryffindor_tower/dumbledore_stair

execute if score dumbledoreStairDirection global matches 0 if score dumbledoreStair global matches 12 run playsound minecraft:custom.fx.stone_slide master @a 736 110 307 2 1
execute if score dumbledoreStair global matches 28 run playsound minecraft:custom.fx.rocks_move_short master @a 736 110 307 2 1

# Direction
execute if score dumbledoreStairDirection global matches 1 unless score dumbledoreStair global matches 35.. run scoreboard players add dumbledoreStair global 1
execute if score dumbledoreStairDirection global matches 0 unless score dumbledoreStair global matches ..-5 run scoreboard players remove dumbledoreStair global 1
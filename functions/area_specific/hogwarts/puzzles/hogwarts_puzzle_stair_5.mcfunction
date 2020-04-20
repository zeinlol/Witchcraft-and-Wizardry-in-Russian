# This is the block animation for stair 1
execute if score hogwartsPuzzle5Stair global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 673 52 223 5 1
execute if score hogwartsPuzzle5StairDirection global matches 1 if score hogwartsPuzzle5Stair1 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 673 52 223 5 1

execute if score hogwartsPuzzle5Stair global matches 2 run fill 674 51 221 675 54 225 air


execute if score hogwartsPuzzle5Stair global matches 4 run fill 674 51 221 675 54 225 air
execute if score hogwartsPuzzle5Stair global matches 4 run setblock 674 51 225 minecraft:sandstone_slab[type=bottom,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 4 run setblock 675 51 225 minecraft:sandstone_slab[type=bottom,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 4 run setblock 674 51 224 minecraft:sandstone_slab[type=bottom,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 4 run setblock 675 51 224 minecraft:sandstone_slab[type=bottom,waterlogged=false]

execute if score hogwartsPuzzle5Stair global matches 6 run fill 674 51 221 675 54 225 air
execute if score hogwartsPuzzle5Stair global matches 6 run setblock 675 51 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 6 run setblock 674 51 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 6 run setblock 674 51 224 minecraft:sandstone_slab[type=bottom,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 6 run setblock 675 51 224 minecraft:sandstone_slab[type=bottom,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 6 run setblock 674 51 223 minecraft:sandstone_slab[type=bottom,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 6 run setblock 675 51 223 minecraft:sandstone_slab[type=bottom,waterlogged=false]

execute if score hogwartsPuzzle5Stair global matches 8 run fill 674 51 221 675 54 225 air
execute if score hogwartsPuzzle5Stair global matches 8 run setblock 674 51 222 minecraft:sandstone_slab[type=bottom,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 8 run setblock 675 51 222 minecraft:sandstone_slab[type=bottom,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 8 run setblock 674 51 223 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 8 run setblock 675 51 223 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 8 run setblock 674 51 224 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 8 run setblock 675 51 224 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 8 run setblock 674 51 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 8 run setblock 675 51 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 8 run setblock 674 52 225 minecraft:sandstone_slab[type=bottom,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 8 run setblock 675 52 225 minecraft:sandstone_slab[type=bottom,waterlogged=false]


execute if score hogwartsPuzzle5Stair global matches 10 run fill 674 51 221 675 54 225 air
execute if score hogwartsPuzzle5Stair global matches 10 run setblock 674 51 222 minecraft:sandstone_slab[type=bottom,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 10 run setblock 675 51 222 minecraft:sandstone_slab[type=bottom,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 10 run setblock 674 51 223 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 10 run setblock 675 51 223 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 10 run setblock 674 51 224 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 10 run setblock 675 51 224 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 10 run setblock 674 51 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 10 run setblock 675 51 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 10 run setblock 674 52 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 10 run setblock 675 52 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 10 run setblock 675 52 224 minecraft:sandstone_slab[type=bottom,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 10 run setblock 674 52 224 minecraft:sandstone_slab[type=bottom,waterlogged=false]


execute if score hogwartsPuzzle5Stair global matches 12 run fill 674 51 221 675 54 225 air
execute if score hogwartsPuzzle5Stair global matches 12 run setblock 674 51 222 minecraft:sandstone_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 12 run setblock 675 51 222 minecraft:sandstone_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 12 run setblock 675 51 223 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 12 run setblock 674 51 223 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 12 run setblock 675 52 223 minecraft:sandstone_slab[type=bottom,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 12 run setblock 674 52 223 minecraft:sandstone_slab[type=bottom,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 12 run setblock 675 51 224 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 12 run setblock 674 51 224 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 12 run setblock 675 52 224 minecraft:sandstone_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 12 run setblock 674 52 224 minecraft:sandstone_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 12 run setblock 675 51 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 12 run setblock 675 52 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 12 run setblock 674 51 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 12 run setblock 674 52 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 12 run setblock 675 53 225 minecraft:sandstone_slab[type=bottom,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 12 run setblock 674 53 225 minecraft:sandstone_slab[type=bottom,waterlogged=false]


execute if score hogwartsPuzzle5Stair global matches 14 run fill 674 51 221 675 54 225 air
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 675 51 222 minecraft:sandstone_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 674 51 222 minecraft:sandstone_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 675 51 223 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 674 51 223 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 675 52 223 minecraft:sandstone_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 674 52 223 minecraft:sandstone_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 674 51 224 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 674 52 224 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 675 51 224 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 675 52 224 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 675 53 224 minecraft:sandstone_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 674 53 224 minecraft:sandstone_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 674 51 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 674 52 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 674 53 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 675 51 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 675 52 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 675 53 225 minecraft:sandstone_slab[type=double,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 675 54 225 minecraft:sandstone_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle5Stair global matches 14 run setblock 674 54 225 minecraft:sandstone_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]







execute if score hogwartsPuzzle5StairDirection global matches 0 if score hogwartsPuzzle5Stair global matches 14 run playsound minecraft:custom.fx.stone_slide master @a 673 52 223 5 1
execute if score hogwartsPuzzle5Stair global matches 14 run playsound minecraft:custom.fx.rocks_move_short master @a 673 52 223 5 1

# Direction
execute unless entity @p[x=674,y=50,z=221,dx=1,dy=4,dz=4] if score hogwartsPuzzle5StairDirection global matches 1 unless score hogwartsPuzzle5Stair global matches 16.. run scoreboard players add hogwartsPuzzle5Stair global 1
execute if score hogwartsPuzzle5StairDirection global matches 0 unless score hogwartsPuzzle5Stair global matches ..-10 run scoreboard players remove hogwartsPuzzle5Stair global 1
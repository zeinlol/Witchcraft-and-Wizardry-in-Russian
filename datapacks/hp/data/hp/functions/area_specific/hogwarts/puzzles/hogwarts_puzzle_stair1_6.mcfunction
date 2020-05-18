# This is the block animation for stair 1
execute if score hogwartsPuzzle6Stair1 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 706 77 246 2 1
execute if score hogwartsPuzzle6Stair1Direction global matches 1 if score hogwartsPuzzle6Stair11 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 706 77 246 2 1

execute if score hogwartsPuzzle6Stair1 global matches 2 run fill 705 80 246 709 76 246 air

execute if score hogwartsPuzzle6Stair1 global matches 4 run fill 705 80 246 709 76 246 air
execute if score hogwartsPuzzle6Stair1 global matches 4 run setblock 705 76 246 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]

execute if score hogwartsPuzzle6Stair1 global matches 6 run fill 705 80 246 709 76 246 air
execute if score hogwartsPuzzle6Stair1 global matches 6 run setblock 705 76 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 6 run setblock 706 76 246 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle6Stair1 global matches 6 run setblock 705 77 246 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]

execute if score hogwartsPuzzle6Stair1 global matches 8 run fill 705 80 246 709 76 246 air
execute if score hogwartsPuzzle6Stair1 global matches 8 run setblock 705 76 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 8 run setblock 706 76 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 8 run setblock 707 76 246 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle6Stair1 global matches 8 run setblock 705 77 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 8 run setblock 706 77 246 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle6Stair1 global matches 8 run setblock 705 78 246 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]


execute if score hogwartsPuzzle6Stair1 global matches 10 run fill 705 80 246 709 76 246 air
execute if score hogwartsPuzzle6Stair1 global matches 10 run setblock 705 76 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 10 run setblock 706 76 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 10 run setblock 707 76 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 10 run setblock 708 76 246 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle6Stair1 global matches 10 run setblock 705 77 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 10 run setblock 706 77 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 10 run setblock 707 77 246 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle6Stair1 global matches 10 run setblock 705 78 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 10 run setblock 706 78 246 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle6Stair1 global matches 10 run setblock 705 79 246 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]


execute if score hogwartsPuzzle6Stair1 global matches 12 run fill 705 80 246 709 76 246 air
execute if score hogwartsPuzzle6Stair1 global matches 12 run setblock 705 76 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 12 run setblock 706 76 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 12 run setblock 707 76 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 12 run setblock 708 76 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 12 run setblock 709 76 246 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle6Stair1 global matches 12 run setblock 705 77 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 12 run setblock 706 77 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 12 run setblock 707 77 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 12 run setblock 708 77 246 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle6Stair1 global matches 12 run setblock 705 78 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 12 run setblock 706 78 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 12 run setblock 707 78 246 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle6Stair1 global matches 12 run setblock 705 79 246 minecraft:sandstone
execute if score hogwartsPuzzle6Stair1 global matches 12 run setblock 706 79 246 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
execute if score hogwartsPuzzle6Stair1 global matches 12 run setblock 705 80 246 minecraft:sandstone_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]




execute if score hogwartsPuzzle6Stair1Direction global matches 0 if score hogwartsPuzzle6Stair1 global matches 14 run playsound minecraft:custom.fx.stone_slide master @a 706 77 246 2 1
execute if score hogwartsPuzzle6Stair1 global matches 12 run playsound minecraft:custom.fx.rocks_move_short master @a 706 77 246 2 1

# Direction
execute unless entity @p[x=705,y=76,z=246,dx=4,dy=4,dz=0] if score hogwartsPuzzle6Stair1Direction global matches 1 unless score hogwartsPuzzle6Stair1 global matches 14.. run scoreboard players add hogwartsPuzzle6Stair1 global 1
execute if score hogwartsPuzzle6Stair1Direction global matches 0 unless score hogwartsPuzzle6Stair1 global matches ..-10 run scoreboard players remove hogwartsPuzzle6Stair1 global 1
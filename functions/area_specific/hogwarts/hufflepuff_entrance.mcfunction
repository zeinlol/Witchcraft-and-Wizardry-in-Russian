# This is the block animation for door 1
execute if score hufflepuffEntranceDirection global matches 1 if score hufflepuffEntrance global matches 2 run playsound minecraft:custom.fx.wood_creak master @a 811 27 132 5 1

execute if score hufflepuffEntrance global matches 2 run fill 811 25 129 811 30 132 air
execute if score hufflepuffEntrance global matches 2 run setblock 811 25 131 minecraft:oak_fence[east=true,north=false,south=true,waterlogged=false,west=true]
execute if score hufflepuffEntrance global matches 2 run setblock 811 25 132 minecraft:oak_fence[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hufflepuffEntrance global matches 2 run setblock 811 26 131 minecraft:acacia_slab[type=double,waterlogged=false]
execute if score hufflepuffEntrance global matches 2 run setblock 811 26 132 minecraft:acacia_planks
execute if score hufflepuffEntrance global matches 2 run setblock 811 27 132 minecraft:acacia_planks
execute if score hufflepuffEntrance global matches 2 run setblock 811 28 132 minecraft:acacia_planks
execute if score hufflepuffEntrance global matches 2 run setblock 811 29 132 minecraft:acacia_planks
execute if score hufflepuffEntrance global matches 2 run setblock 811 30 132 minecraft:acacia_planks
execute if score hufflepuffEntrance global matches 2 run setblock 811 30 131 minecraft:acacia_slab[type=double,waterlogged=false]

execute if score hufflepuffEntrance global matches 4 run fill 811 25 129 811 30 132 air
execute if score hufflepuffEntrance global matches 4 run setblock 811 25 131 minecraft:oak_fence[east=true,north=false,south=true,waterlogged=false,west=true]
execute if score hufflepuffEntrance global matches 4 run setblock 811 25 132 minecraft:oak_fence[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hufflepuffEntrance global matches 4 run setblock 811 26 131 minecraft:acacia_slab[type=double,waterlogged=false]
execute if score hufflepuffEntrance global matches 4 run setblock 811 26 132 minecraft:acacia_planks
execute if score hufflepuffEntrance global matches 4 run setblock 811 27 132 minecraft:acacia_planks
execute if score hufflepuffEntrance global matches 4 run setblock 811 28 131 minecraft:acacia_stairs[facing=south,half=top,shape=straight,waterlogged=false]
execute if score hufflepuffEntrance global matches 4 run setblock 811 28 132 minecraft:acacia_stairs[facing=north,half=bottom,shape=straight,waterlogged=false]
execute if score hufflepuffEntrance global matches 4 run setblock 811 29 131 minecraft:acacia_planks
execute if score hufflepuffEntrance global matches 4 run setblock 811 30 131 minecraft:acacia_slab[type=double,waterlogged=false]
execute if score hufflepuffEntrance global matches 4 run setblock 811 30 132 minecraft:acacia_planks

execute if score hufflepuffEntrance global matches 6 run fill 811 25 129 811 30 132 air
execute if score hufflepuffEntrance global matches 6 run setblock 811 25 131 minecraft:oak_fence[east=true,north=false,south=true,waterlogged=false,west=true]
execute if score hufflepuffEntrance global matches 6 run setblock 811 25 132 minecraft:oak_fence[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hufflepuffEntrance global matches 6 run setblock 811 26 131 minecraft:acacia_slab[type=double,waterlogged=false]
execute if score hufflepuffEntrance global matches 6 run setblock 811 26 132 minecraft:acacia_planks
execute if score hufflepuffEntrance global matches 6 run setblock 811 27 131 minecraft:acacia_stairs[facing=south,half=top,shape=straight,waterlogged=false]
execute if score hufflepuffEntrance global matches 6 run setblock 811 27 132 minecraft:acacia_stairs[facing=north,half=bottom,shape=straight,waterlogged=false]
execute if score hufflepuffEntrance global matches 6 run setblock 811 28 130 minecraft:acacia_stairs[facing=south,half=top,shape=straight,waterlogged=false]
execute if score hufflepuffEntrance global matches 6 run setblock 811 28 131 minecraft:acacia_stairs[facing=north,half=bottom,shape=straight,waterlogged=false]
execute if score hufflepuffEntrance global matches 6 run setblock 811 29 130 minecraft:acacia_stairs[facing=north,half=bottom,shape=straight,waterlogged=false]
execute if score hufflepuffEntrance global matches 6 run setblock 811 30 131 minecraft:acacia_slab[type=double,waterlogged=false]
execute if score hufflepuffEntrance global matches 6 run setblock 811 30 132 minecraft:acacia_planks

execute if score hufflepuffEntrance global matches 8 run fill 811 25 129 811 30 132 air
execute if score hufflepuffEntrance global matches 8 run setblock 811 25 131 minecraft:oak_fence[east=true,north=false,south=true,waterlogged=false,west=true]
execute if score hufflepuffEntrance global matches 8 run setblock 811 25 132 minecraft:oak_fence[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hufflepuffEntrance global matches 8 run setblock 811 26 131 minecraft:acacia_slab[type=double,waterlogged=false]
execute if score hufflepuffEntrance global matches 8 run setblock 811 26 132 minecraft:acacia_planks
execute if score hufflepuffEntrance global matches 8 run setblock 811 27 129 minecraft:acacia_slab[type=top,waterlogged=false]
execute if score hufflepuffEntrance global matches 8 run setblock 811 27 130 minecraft:acacia_slab[type=double,waterlogged=false]
execute if score hufflepuffEntrance global matches 8 run setblock 811 27 131 minecraft:acacia_slab[type=bottom,waterlogged=false]
execute if score hufflepuffEntrance global matches 8 run setblock 811 28 129 minecraft:acacia_slab[type=bottom,waterlogged=false]
execute if score hufflepuffEntrance global matches 8 run setblock 811 30 131 minecraft:acacia_slab[type=double,waterlogged=false]
execute if score hufflepuffEntrance global matches 8 run setblock 811 30 132 minecraft:acacia_planks

execute if score hufflepuffEntrance global matches 10 run fill 811 25 129 811 30 132 air
execute if score hufflepuffEntrance global matches 10 run setblock 811 25 129 minecraft:acacia_slab[type=top,waterlogged=false]
execute if score hufflepuffEntrance global matches 10 run setblock 811 25 131 minecraft:oak_fence[east=true,north=false,south=true,waterlogged=false,west=true]
execute if score hufflepuffEntrance global matches 10 run setblock 811 25 132 minecraft:oak_fence[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hufflepuffEntrance global matches 10 run setblock 811 26 129 minecraft:acacia_slab[type=bottom,waterlogged=false]
execute if score hufflepuffEntrance global matches 10 run setblock 811 26 130 minecraft:acacia_slab[type=double,waterlogged=false]
execute if score hufflepuffEntrance global matches 10 run setblock 811 26 131 minecraft:acacia_slab[type=double,waterlogged=false]
execute if score hufflepuffEntrance global matches 10 run setblock 811 26 132 minecraft:acacia_planks
execute if score hufflepuffEntrance global matches 10 run setblock 811 30 131 minecraft:acacia_slab[type=double,waterlogged=false]
execute if score hufflepuffEntrance global matches 10 run setblock 811 30 132 minecraft:acacia_planks

execute if score hufflepuffEntrance global matches 12 run fill 811 25 129 811 30 132 air
execute if score hufflepuffEntrance global matches 12 run setblock 811 25 129 minecraft:acacia_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute if score hufflepuffEntrance global matches 12 run setblock 811 25 130 minecraft:acacia_stairs[facing=north,half=top,shape=straight,waterlogged=false]
execute if score hufflepuffEntrance global matches 12 run setblock 811 25 131 minecraft:oak_fence[east=true,north=false,south=true,waterlogged=false,west=true]
execute if score hufflepuffEntrance global matches 12 run setblock 811 25 132 minecraft:oak_fence[east=false,north=true,south=true,waterlogged=false,west=false]
execute if score hufflepuffEntrance global matches 12 run setblock 811 26 130 minecraft:acacia_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
execute if score hufflepuffEntrance global matches 12 run setblock 811 26 131 minecraft:acacia_slab[type=double,waterlogged=false]
execute if score hufflepuffEntrance global matches 12 run setblock 811 26 132 minecraft:acacia_planks
execute if score hufflepuffEntrance global matches 12 run setblock 811 30 131 minecraft:acacia_slab[type=double,waterlogged=false]
execute if score hufflepuffEntrance global matches 12 run setblock 811 30 132 minecraft:acacia_planks

execute if score hufflepuffEntranceDirection global matches 0 if score hufflepuffEntrance global matches 12 run playsound minecraft:custom.fx.wood_creak master @a 811 27 132 1

# Direction
execute if score hufflepuffEntranceDirection global matches 1 unless score hufflepuffEntrance global matches 12.. run scoreboard players add hufflepuffEntrance global 1
execute if score hufflepuffEntranceDirection global matches 0 unless score hufflepuffEntrance global matches ..-5 run scoreboard players remove hufflepuffEntrance global 1
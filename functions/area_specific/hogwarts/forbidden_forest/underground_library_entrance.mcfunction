# This is the block animation
execute if score undergroundLibraryEntranceDirection global matches 1 if score undergroundLibraryEntrance global matches 2 run playsound minecraft:custom.fx.wood_creak master @a 57 16 -11 5 1
execute if score undergroundLibraryEntranceDirection global matches 1 if score undergroundLibraryEntrance global matches 4 run particle minecraft:falling_dust gravel 57 16.5 -11 0.7 0 0.7 0.1 20 force

execute if score undergroundLibraryEntrance global matches 2 run setblock 58 16 -10 minecraft:coarse_dirt
execute if score undergroundLibraryEntrance global matches 2 run setblock 58 16 -11 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 2 run setblock 58 16 -12 minecraft:coarse_dirt
execute if score undergroundLibraryEntrance global matches 2 run setblock 57 16 -12 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 2 run setblock 57 16 -11 minecraft:coarse_dirt
execute if score undergroundLibraryEntrance global matches 2 run setblock 57 16 -10 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 2 run setblock 56 16 -10 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 2 run setblock 56 16 -11 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 2 run setblock 56 16 -12 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 2 run setblock 56 15 -11 minecraft:ladder[facing=east,waterlogged=false]

execute if score undergroundLibraryEntrance global matches 4 run setblock 58 16 -10 minecraft:coarse_dirt
execute if score undergroundLibraryEntrance global matches 4 run setblock 58 16 -11 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 4 run setblock 58 16 -12 minecraft:coarse_dirt
execute if score undergroundLibraryEntrance global matches 4 run setblock 57 16 -12 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 4 run setblock 57 16 -11 minecraft:coarse_dirt
execute if score undergroundLibraryEntrance global matches 4 run setblock 57 16 -10 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 4 run setblock 56 16 -12 minecraft:spruce_slab[type=bottom,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 4 run setblock 56 16 -11 minecraft:spruce_slab[type=bottom,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 4 run setblock 56 16 -10 minecraft:spruce_slab[type=bottom,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 4 run setblock 56 15 -11 minecraft:ladder[facing=east,waterlogged=false]

execute if score undergroundLibraryEntrance global matches 6 run setblock 58 16 -10 minecraft:coarse_dirt
execute if score undergroundLibraryEntrance global matches 6 run setblock 58 16 -11 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 6 run setblock 58 16 -12 minecraft:coarse_dirt
execute if score undergroundLibraryEntrance global matches 6 run setblock 57 16 -12 minecraft:spruce_slab[type=bottom,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 6 run setblock 57 16 -11 minecraft:spruce_slab[type=bottom,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 6 run setblock 57 16 -10 minecraft:spruce_slab[type=bottom,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 6 run setblock 56 16 -12 minecraft:spruce_slab[type=bottom,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 6 run setblock 56 16 -11 minecraft:spruce_slab[type=bottom,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 6 run setblock 56 16 -10 minecraft:spruce_slab[type=bottom,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 6 run setblock 56 15 -10 air
execute if score undergroundLibraryEntrance global matches 6 run setblock 56 15 -11 minecraft:ladder[facing=east,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 6 run setblock 56 15 -12 air

execute if score undergroundLibraryEntrance global matches 8 run setblock 58 16 -10 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 8 run setblock 58 16 -11 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 8 run setblock 58 16 -12 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 8 run setblock 57 16 -10 minecraft:spruce_slab[type=bottom,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 8 run setblock 57 16 -11 minecraft:spruce_slab[type=bottom,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 8 run setblock 57 16 -12 minecraft:spruce_slab[type=bottom,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 8 run setblock 56 16 -12 air
execute if score undergroundLibraryEntrance global matches 8 run setblock 56 16 -11 air
execute if score undergroundLibraryEntrance global matches 8 run setblock 56 16 -10 air
execute if score undergroundLibraryEntrance global matches 8 run setblock 56 15 -10 minecraft:spruce_slab[type=top,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 8 run setblock 56 15 -11 minecraft:spruce_slab[type=top,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 8 run setblock 56 15 -12 minecraft:spruce_slab[type=top,waterlogged=false]


execute if score undergroundLibraryEntrance global matches 10 run setblock 58 16 -12 minecraft:spruce_stairs[facing=east,half=bottom,shape=straight,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 10 run setblock 58 16 -11 minecraft:spruce_stairs[facing=east,half=bottom,shape=straight,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 10 run setblock 58 16 -10 minecraft:spruce_stairs[facing=east,half=bottom,shape=straight,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 10 run setblock 57 16 -10 air
execute if score undergroundLibraryEntrance global matches 10 run setblock 57 16 -11 air
execute if score undergroundLibraryEntrance global matches 10 run setblock 57 16 -12 air
execute if score undergroundLibraryEntrance global matches 10 run setblock 56 16 -12 air
execute if score undergroundLibraryEntrance global matches 10 run setblock 56 16 -11 air
execute if score undergroundLibraryEntrance global matches 10 run setblock 56 16 -10 air
execute if score undergroundLibraryEntrance global matches 10 run setblock 57 15 -12 minecraft:spruce_stairs[facing=east,half=bottom,shape=straight,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 10 run setblock 57 15 -11 minecraft:spruce_stairs[facing=east,half=bottom,shape=straight,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 10 run setblock 57 15 -10 minecraft:spruce_stairs[facing=east,half=bottom,shape=straight,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 12 run setblock 58 14 -12 air
execute if score undergroundLibraryEntrance global matches 12 run setblock 58 14 -11 air
execute if score undergroundLibraryEntrance global matches 12 run setblock 58 14 -10 air
execute if score undergroundLibraryEntrance global matches 12 run setblock 56 15 -10 air
execute if score undergroundLibraryEntrance global matches 12 run setblock 56 15 -11 minecraft:ladder[facing=east,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 12 run setblock 56 15 -12 air

execute if score undergroundLibraryEntrance global matches 12 run setblock 58 16 -12 minecraft:spruce_stairs[facing=east,half=bottom,shape=straight,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 12 run setblock 58 16 -11 minecraft:spruce_stairs[facing=east,half=bottom,shape=straight,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 12 run setblock 58 16 -10 minecraft:spruce_stairs[facing=east,half=bottom,shape=straight,waterlogged=false]
execute if score undergroundLibraryEntrance global matches 12 run setblock 57 16 -10 air
execute if score undergroundLibraryEntrance global matches 12 run setblock 57 16 -11 air
execute if score undergroundLibraryEntrance global matches 12 run setblock 57 16 -12 air
execute if score undergroundLibraryEntrance global matches 12 run setblock 56 16 -12 air
execute if score undergroundLibraryEntrance global matches 12 run setblock 56 16 -11 air
execute if score undergroundLibraryEntrance global matches 12 run setblock 56 16 -10 air
execute if score undergroundLibraryEntrance global matches 12 run setblock 57 15 -12 air
execute if score undergroundLibraryEntrance global matches 12 run setblock 57 15 -11 air
execute if score undergroundLibraryEntrance global matches 12 run setblock 57 15 -10 air
execute if score undergroundLibraryEntrance global matches 12 run setblock 58 15 -12 air
execute if score undergroundLibraryEntrance global matches 12 run setblock 58 15 -11 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 12 run setblock 58 15 -10 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 12 run setblock 58 15 -12 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 12 run setblock 58 14 -12 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 12 run setblock 58 14 -11 minecraft:spruce_planks
execute if score undergroundLibraryEntrance global matches 12 run setblock 58 14 -10 minecraft:spruce_planks
	
execute if score undergroundLibraryEntranceDirection global matches 0 if score undergroundLibraryEntrance global matches 10 run playsound minecraft:custom.fx.wood_creak master @a 57 16 -11 5 1

# Direction
execute if score undergroundLibraryEntranceDirection global matches 1 unless score undergroundLibraryEntrance global matches 14.. run scoreboard players add undergroundLibraryEntrance global 1
execute if score undergroundLibraryEntranceDirection global matches 0 unless score undergroundLibraryEntrance global matches ..-2 run scoreboard players remove undergroundLibraryEntrance global 1
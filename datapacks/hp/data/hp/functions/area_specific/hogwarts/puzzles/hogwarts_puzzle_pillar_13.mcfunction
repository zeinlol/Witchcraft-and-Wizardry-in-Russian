# This is the block animation for stair 1
execute if score hogwartsPuzzle13Pillar global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 666 41 146 2 1
execute if score hogwartsPuzzle13PillarDirection global matches 1 if score hogwartsPuzzle13Pillar1 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 666 41 146 2 1

execute if score hogwartsPuzzle13Pillar global matches 2 run setblock 666 45 146 minecraft:air
execute if score hogwartsPuzzle13Pillar global matches 2 run setblock 666 44 146 minecraft:air
execute if score hogwartsPuzzle13Pillar global matches 2 run setblock 666 43 146 minecraft:air
execute if score hogwartsPuzzle13Pillar global matches 2 run setblock 666 42 146 minecraft:air
execute if score hogwartsPuzzle13Pillar global matches 2 run setblock 666 41 146 minecraft:dark_prismarine

execute if score hogwartsPuzzle13Pillar global matches 4 run setblock 666 45 146 minecraft:air
execute if score hogwartsPuzzle13Pillar global matches 4 run setblock 666 44 146 minecraft:air
execute if score hogwartsPuzzle13Pillar global matches 4 run setblock 666 43 146 minecraft:air
execute if score hogwartsPuzzle13Pillar global matches 4 run setblock 666 42 146 minecraft:dark_prismarine
execute if score hogwartsPuzzle13Pillar global matches 4 run setblock 666 41 146 minecraft:clay

execute if score hogwartsPuzzle13Pillar global matches 6 run setblock 666 45 146 minecraft:air
execute if score hogwartsPuzzle13Pillar global matches 6 run setblock 666 44 146 minecraft:air
execute if score hogwartsPuzzle13Pillar global matches 6 run setblock 666 43 146 minecraft:dark_prismarine
execute if score hogwartsPuzzle13Pillar global matches 6 run setblock 666 42 146 minecraft:clay
execute if score hogwartsPuzzle13Pillar global matches 6 run setblock 666 41 146 minecraft:dark_prismarine

execute if score hogwartsPuzzle13Pillar global matches 8 run setblock 666 45 146 minecraft:air
execute if score hogwartsPuzzle13Pillar global matches 8 run setblock 666 44 146 minecraft:dark_prismarine
execute if score hogwartsPuzzle13Pillar global matches 8 run setblock 666 43 146 minecraft:clay
execute if score hogwartsPuzzle13Pillar global matches 8 run setblock 666 42 146 minecraft:dark_prismarine
execute if score hogwartsPuzzle13Pillar global matches 8 run setblock 666 41 146 minecraft:dark_prismarine

execute if score hogwartsPuzzle13Pillar global matches 10 run setblock 666 45 146 minecraft:dark_prismarine
execute if score hogwartsPuzzle13Pillar global matches 10 run setblock 666 44 146 minecraft:clay
execute if score hogwartsPuzzle13Pillar global matches 10 run setblock 666 43 146 minecraft:dark_prismarine
execute if score hogwartsPuzzle13Pillar global matches 10 run setblock 666 42 146 minecraft:dark_prismarine
execute if score hogwartsPuzzle13Pillar global matches 10 run setblock 666 41 146 minecraft:dark_prismarine


execute if score hogwartsPuzzle13PillarDirection global matches 0 if score hogwartsPuzzle13Pillar global matches 18 run playsound minecraft:custom.fx.stone_slide master @a 666 41 146 2 1
execute if score hogwartsPuzzle13Pillar global matches 10 run playsound minecraft:custom.fx.rocks_move_short master @a 666 41 146 2 1

# Direction
execute unless entity @p[x=666,y=41,z=146,dx=0,dy=5,dz=0] if score hogwartsPuzzle13PillarDirection global matches 1 unless score hogwartsPuzzle13Pillar global matches 12.. run scoreboard players add hogwartsPuzzle13Pillar global 1
execute if score hogwartsPuzzle13PillarDirection global matches 0 unless score hogwartsPuzzle13Pillar global matches ..-10 run scoreboard players remove hogwartsPuzzle13Pillar global 1
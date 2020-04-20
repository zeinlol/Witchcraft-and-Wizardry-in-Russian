# This is the block animation for pillar 5
execute if score veraVertoPillar2 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 8620 70 -29 5 1
execute if score veraVertoPillar2Direction global matches 1 if score veraVertoPillar2 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 8620 70 -29 5 1

execute if score veraVertoPillar2 global matches 2 run fill 8620 67 -29 8620 73 -29 air
execute if score veraVertoPillar2 global matches 2 run fill 8620 67 -29 8620 68 -29 dark_prismarine
execute if score veraVertoPillar2 global matches 2 run setblock 8620 67 -29 minecraft:clay
execute if score veraVertoPillar2 global matches 4 run fill 8620 67 -29 8620 73 -29 air
execute if score veraVertoPillar2 global matches 4 run fill 8620 67 -29 8620 69 -29 dark_prismarine
execute if score veraVertoPillar2 global matches 4 run setblock 8620 68 -29 minecraft:clay
execute if score veraVertoPillar2 global matches 6 run fill 8620 67 -29 8620 73 -29 air
execute if score veraVertoPillar2 global matches 6 run fill 8620 67 -29 8620 70 -29 dark_prismarine
execute if score veraVertoPillar2 global matches 6 run setblock 8620 69 -29 minecraft:clay
execute if score veraVertoPillar2 global matches 8 run fill 8620 67 -29 8620 73 -29 air
execute if score veraVertoPillar2 global matches 8 run fill 8620 67 -29 8620 71 -29 dark_prismarine
execute if score veraVertoPillar2 global matches 8 run setblock 8620 70 -29 minecraft:clay
execute if score veraVertoPillar2 global matches 10 run fill 8620 67 -29 8620 73 -29 air
execute if score veraVertoPillar2 global matches 10 run fill 8620 67 -29 8620 72 -29 dark_prismarine
execute if score veraVertoPillar2 global matches 10 run setblock 8620 71 -29 minecraft:clay
execute if score veraVertoPillar2 global matches 12 run fill 8620 67 -29 8620 73 -29 air
execute if score veraVertoPillar2 global matches 12 run fill 8620 67 -29 8620 73 -29 dark_prismarine
execute if score veraVertoPillar2 global matches 12 run setblock 8620 72 -29 minecraft:clay

execute if score veraVertoPillar2Direction global matches 0 if score veraVertoPillar2 global matches 10 run playsound minecraft:custom.fx.stone_slide master @a 8620 70 -29 5 1
execute if score veraVertoPillar2 global matches 10 run playsound minecraft:custom.fx.rocks_move_short master @a 8620 70 -29 5 1

# Direction
execute if score veraVertoPillar2Direction global matches 1 unless score veraVertoPillar2 global matches 15.. run scoreboard players add veraVertoPillar2 global 1
execute if score veraVertoPillar2Direction global matches 0 unless score veraVertoPillar2 global matches ..-10 run scoreboard players remove veraVertoPillar2 global 1
# This is for the pillars that you can jump on that are moved up and down by levers
execute if score alohomoraPillar2 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 6533 43 24
execute if score alohomoraPillar2Direction global matches 1 if score alohomoraPillar2 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 6533 43 24
execute if score alohomoraPillar2 global matches 2 run clone 6532 35 43 6534 52 45 6538 27 21
execute if score alohomoraPillar2 global matches 6 run clone 6532 35 43 6534 52 45 6538 28 21
execute if score alohomoraPillar2 global matches 8 run clone 6532 35 43 6534 52 45 6538 29 21
execute if score alohomoraPillar2 global matches 10 run clone 6532 35 43 6534 52 45 6538 30 21
execute if score alohomoraPillar2 global matches 12 run clone 6532 35 43 6534 52 45 6538 31 21
execute if score alohomoraPillar2 global matches 14 run clone 6532 35 43 6534 52 45 6538 32 21
execute if score alohomoraPillar2 global matches 16 run clone 6532 35 43 6534 52 45 6538 33 21
execute if score alohomoraPillar2Direction global matches 0 if score alohomoraPillar2 global matches 16 run playsound minecraft:custom.fx.stone_slide master @a 6533 43 24
execute if score alohomoraPillar2 global matches 16 run playsound minecraft:custom.fx.rocks_move_short master @a 6533 43 24

# Direction
execute if score alohomoraPillar2Direction global matches 1 unless score alohomoraPillar2 global matches 26.. run scoreboard players add alohomoraPillar2 global 1
execute if score alohomoraPillar2Direction global matches 0 unless score alohomoraPillar2 global matches ..-10 run scoreboard players remove alohomoraPillar2 global 1
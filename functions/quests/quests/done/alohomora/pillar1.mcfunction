# This is for the pillars that you can jump on that are moved up and down by levers
execute if score alohomoraPillar1 global matches 2 run playsound minecraft:custom.fx.rocks_move_short master @a 6533 43 24
execute if score alohomoraPillar1Direction global matches 1 if score alohomoraPillar1 global matches 2 run playsound minecraft:custom.fx.stone_slide master @a 6533 43 24
execute if score alohomoraPillar1 global matches 2 run clone 6532 35 37 6534 50 39 6532 29 23
execute if score alohomoraPillar1 global matches 6 run clone 6532 35 37 6534 50 39 6532 30 23
execute if score alohomoraPillar1 global matches 8 run clone 6532 35 37 6534 50 39 6532 31 23
execute if score alohomoraPillar1 global matches 10 run clone 6532 35 37 6534 50 39 6532 32 23
execute if score alohomoraPillar1 global matches 12 run clone 6532 35 37 6534 50 39 6532 33 23
execute if score alohomoraPillar1 global matches 14 run clone 6532 35 37 6534 50 39 6532 34 23
execute if score alohomoraPillar1Direction global matches 0 if score alohomoraPillar1 global matches 14 run playsound minecraft:custom.fx.stone_slide master @a 6533 43 24
execute if score alohomoraPillar1 global matches 14 run playsound minecraft:custom.fx.rocks_move_short master @a 6533 43 24

# Direction
execute if score alohomoraPillar1Direction global matches 1 unless score alohomoraPillar1 global matches 26.. run scoreboard players add alohomoraPillar1 global 1
execute if score alohomoraPillar1Direction global matches 0 unless score alohomoraPillar1 global matches ..-10 run scoreboard players remove alohomoraPillar1 global 1
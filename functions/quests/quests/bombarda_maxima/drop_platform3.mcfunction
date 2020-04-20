# This is for the draw bridge
execute if score bombardaDropPlatform3Direction global matches 1 if score bombardaDropPlatform3 global matches 2 run playsound minecraft:custom.fx.wood_creak master @a 7499 128 296 5 1
execute if score bombardaDropPlatform3 global matches 2 run clone 7498 149 295 7500 155 297 7498 122 295
execute if score bombardaDropPlatform3 global matches 4 run clone 7498 149 295 7500 155 297 7498 123 295
execute if score bombardaDropPlatform3 global matches 6 run clone 7498 149 295 7500 155 297 7498 124 295
execute if score bombardaDropPlatform3 global matches 8 run clone 7498 149 295 7500 155 297 7498 125 295
execute if score bombardaDropPlatform3 global matches 10 run clone 7498 149 295 7500 155 297 7498 126 295
execute if score bombardaDropPlatform3Direction global matches 0 if score bombardaDropPlatform3 global matches 10 run playsound minecraft:custom.fx.open_door master @a 7499 128 296 5 1
execute if score bombardaDropPlatform3Direction global matches 0 if score bombardaDropPlatform3 global matches 10 run playsound minecraft:custom.fx.wood_creak master @a 7499 128 296 5 1

# Direction
execute if score bombardaDropPlatform3Direction global matches 1 unless score bombardaDropPlatform3 global matches 12.. run scoreboard players add bombardaDropPlatform3 global 1
execute if score bombardaDropPlatform3Direction global matches 0 unless score bombardaDropPlatform3 global matches 0 run scoreboard players remove bombardaDropPlatform3 global 1

# Timer to raise the platform again
execute if score bombardaDropPlatform3Timer global matches 1.. run scoreboard players operation bombardaDropPlatform3Timer global -= systick time
execute if score bombardaDropPlatform3Direction global matches 0 if score bombardaDropPlatform3Timer global matches ..0 run scoreboard players set bombardaDropPlatform3Direction global 1
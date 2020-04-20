# This is for the draw bridge
execute if score bombardaDropPlatform2Direction global matches 1 if score bombardaDropPlatform2 global matches 2 run playsound minecraft:custom.fx.wood_creak master @a 7499 128 292 5 1
execute if score bombardaDropPlatform2 global matches 2 run clone 7498 149 291 7500 155 293 7498 122 291
execute if score bombardaDropPlatform2 global matches 4 run clone 7498 149 291 7500 155 293 7498 123 291
execute if score bombardaDropPlatform2 global matches 6 run clone 7498 149 291 7500 155 293 7498 124 291
execute if score bombardaDropPlatform2 global matches 8 run clone 7498 149 291 7500 155 293 7498 125 291
execute if score bombardaDropPlatform2 global matches 10 run clone 7498 149 291 7500 155 293 7498 126 291
execute if score bombardaDropPlatform2Direction global matches 0 if score bombardaDropPlatform2 global matches 10 run playsound minecraft:custom.fx.open_door master @a 7499 128 292 5 1
execute if score bombardaDropPlatform2Direction global matches 0 if score bombardaDropPlatform2 global matches 10 run playsound minecraft:custom.fx.wood_creak master @a 7499 128 292 5 1

# Direction
execute if score bombardaDropPlatform2Direction global matches 1 unless score bombardaDropPlatform2 global matches 12.. run scoreboard players add bombardaDropPlatform2 global 1
execute if score bombardaDropPlatform2Direction global matches 0 unless score bombardaDropPlatform2 global matches 0 run scoreboard players remove bombardaDropPlatform2 global 1

# Timer to raise the platform again
execute if score bombardaDropPlatform2Timer global matches 1.. run scoreboard players operation bombardaDropPlatform2Timer global -= systick time
execute if score bombardaDropPlatform2Direction global matches 0 if score bombardaDropPlatform2Timer global matches ..0 run scoreboard players set bombardaDropPlatform2Direction global 1
# This is for the draw bridge
execute if score bombardaDropPlatform1Direction global matches 1 if score bombardaDropPlatform1 global matches 2 run playsound minecraft:custom.fx.wood_creak master @a 7499 128 288 5 1
execute if score bombardaDropPlatform1 global matches 2 run clone 7498 149 287 7500 155 289 7498 122 287
execute if score bombardaDropPlatform1 global matches 4 run clone 7498 149 287 7500 155 289 7498 123 287
execute if score bombardaDropPlatform1 global matches 6 run clone 7498 149 287 7500 155 289 7498 124 287
execute if score bombardaDropPlatform1 global matches 8 run clone 7498 149 287 7500 155 289 7498 125 287
execute if score bombardaDropPlatform1 global matches 10 run clone 7498 149 287 7500 155 289 7498 126 287
execute if score bombardaDropPlatform1Direction global matches 0 if score bombardaDropPlatform1 global matches 10 run playsound minecraft:custom.fx.open_door master @a 7499 128 288 5 1
execute if score bombardaDropPlatform1Direction global matches 0 if score bombardaDropPlatform1 global matches 10 run playsound minecraft:custom.fx.wood_creak master @a 7499 128 288 5 1

# Direction
execute if score bombardaDropPlatform1Direction global matches 1 unless score bombardaDropPlatform1 global matches 12.. run scoreboard players add bombardaDropPlatform1 global 1
execute if score bombardaDropPlatform1Direction global matches 0 unless score bombardaDropPlatform1 global matches 0 run scoreboard players remove bombardaDropPlatform1 global 1

# Timer to raise the platform again
execute if score bombardaDropPlatform1Timer global matches 1.. run scoreboard players operation bombardaDropPlatform1Timer global -= systick time
execute if score bombardaDropPlatform1Direction global matches 0 if score bombardaDropPlatform1Timer global matches ..0 run scoreboard players set bombardaDropPlatform1Direction global 1

# Start is stuck timer
execute if score bombardaDropPlatform1Direction global matches 1 if score bombardaDropPlatform1 global matches 2 if score bombardaStuckTimerIsGoing global matches 0 run scoreboard players set bombardaStuckTimerIsGoing global 1
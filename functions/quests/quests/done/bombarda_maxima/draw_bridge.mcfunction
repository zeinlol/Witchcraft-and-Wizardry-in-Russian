# This is for the draw bridge
execute if score bombardaDrawBridge global matches 2 run playsound minecraft:custom.fx.impact master @a 7453 77 210 5 1
execute if score bombardaDrawBridgeDirection global matches 1 if score bombardaDrawBridge global matches 2 run playsound minecraft:custom.fx.wood_creak master @a 7453 77 210 5 1
execute if score bombardaDrawBridge global matches 2 run clone 7450 113 208 7463 122 215 7450 74 208
execute if score bombardaDrawBridge global matches 4 run clone 7450 124 208 7463 133 215 7450 74 208
execute if score bombardaDrawBridge global matches 6 run clone 7450 135 208 7463 144 215 7450 74 208
execute if score bombardaDrawBridge global matches 8 run clone 7450 146 208 7463 155 215 7450 74 208
execute if score bombardaDrawBridge global matches 10 run clone 7450 157 208 7463 166 215 7450 74 208
execute if score bombardaDrawBridgeDirection global matches 0 if score bombardaDrawBridge global matches 10 run playsound minecraft:custom.fx.wood_creak master @a 7453 77 210 5 1
execute if score bombardaDrawBridge global matches 10 run playsound minecraft:custom.fx.impact master @a 7453 77 210 5 1

# Direction
execute if score bombardaDrawBridgeDirection global matches 1 unless score bombardaDrawBridge global matches 12.. run scoreboard players add bombardaDrawBridge global 1
execute if score bombardaDrawBridgeDirection global matches 0 unless score bombardaDrawBridge global matches ..-10 run scoreboard players remove bombardaDrawBridge global 1
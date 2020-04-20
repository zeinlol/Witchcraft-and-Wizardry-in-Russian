# This is for the draw bridge
execute if score patronusDrawBridge global matches 3 run playsound minecraft:custom.fx.impact master @a 8077 67 99 5 1
execute if score patronusDrawBridgeDirection global matches 1 if score patronusDrawBridge global matches 3 run playsound minecraft:custom.fx.wood_creak master @a 8077 67 99 5 1
execute if score patronusDrawBridge global matches 6 run clone 8051 1 81 8056 14 94 8075 63 98
execute if score patronusDrawBridge global matches 9 run clone 8051 20 81 8056 33 94 8075 63 98
execute if score patronusDrawBridge global matches 12 run clone 8051 39 81 8056 52 94 8075 63 98
execute if score patronusDrawBridge global matches 15 run clone 8051 58 81 8056 71 94 8075 63 98
execute if score patronusDrawBridge global matches 18 run clone 8051 77 81 8056 90 94 8075 63 98
execute if score patronusDrawBridgeDirection global matches 0 if score patronusDrawBridge global matches 18 run playsound minecraft:custom.fx.wood_creak master @a 8077 67 99 5 1
execute if score patronusDrawBridge global matches 18 run playsound minecraft:custom.fx.impact master @a 8077 67 99 5 1

# Direction
execute if score patronusDrawBridgeDirection global matches 1 unless score patronusDrawBridge global matches 30.. run scoreboard players add patronusDrawBridge global 1
execute if score patronusDrawBridgeDirection global matches 0 unless score patronusDrawBridge global matches ..-10 run scoreboard players remove patronusDrawBridge global 1
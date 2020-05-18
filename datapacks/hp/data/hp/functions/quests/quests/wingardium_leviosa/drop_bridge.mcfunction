# This is the block animation for drop bridge
execute if score wingardiumDropBridge global matches 2 run playsound minecraft:custom.fx.wood_creak master @a 7044 44 -19 5 1
execute if score wingardiumDropBridgeDirection global matches 1 if score wingardiumDropBridge global matches 2 run playsound minecraft:custom.fx.metal_door_open master @a 7044 44 -19 5 1
execute if score wingardiumDropBridge global matches 2 run clone 7040 114 -21 7048 121 -17 7040 46 -21 replace force
execute if score wingardiumDropBridge global matches 6 run clone 7040 114 -21 7048 121 -17 7040 45 -21 replace force
execute if score wingardiumDropBridge global matches 8 run clone 7040 114 -21 7048 121 -17 7040 44 -21 replace force
execute if score wingardiumDropBridge global matches 10 run clone 7040 114 -21 7048 121 -17 7040 43 -21 replace force
execute if score wingardiumDropBridge global matches 12 run clone 7040 114 -21 7048 121 -17 7040 42 -21 replace force
execute if score wingardiumDropBridge global matches 14 run clone 7040 114 -21 7048 121 -17 7040 41 -21 replace force
execute if score wingardiumDropBridge global matches 16 run clone 7040 114 -21 7048 121 -17 7040 40 -21 replace force
execute if score wingardiumDropBridge global matches 18 run clone 7040 114 -21 7048 121 -17 7040 39 -21 replace force
execute if score wingardiumDropBridge global matches 20 run clone 7040 114 -21 7048 121 -17 7040 38 -21 replace force
execute if score wingardiumDropBridgeDirection global matches 0 if score wingardiumDropBridge global matches 20 run playsound minecraft:custom.fx.metal_door_open master @a 7044 44 -19 5 1
execute if score wingardiumDropBridge global matches 20 run playsound minecraft:custom.fx.wood_creak master @a 7044 44 -19 5 1

# Direction
execute if score wingardiumDropBridgeDirection global matches 1 unless score wingardiumDropBridge global matches 26.. run scoreboard players add wingardiumDropBridge global 1
execute if score wingardiumDropBridgeDirection global matches 0 unless score wingardiumDropBridge global matches ..-10 run scoreboard players remove wingardiumDropBridge global 1
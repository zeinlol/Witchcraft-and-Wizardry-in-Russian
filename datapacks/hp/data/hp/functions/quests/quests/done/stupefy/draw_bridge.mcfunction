# This is for the draw bridge
execute if score stupefyDrawBridge global matches 2 run playsound minecraft:custom.fx.wood_creak master @a 5503 49 -70 5 1
execute if score stupefyDrawBridge global matches 2 run clone 5512 83 -67 5501 92 -73 5501 48 -73
execute if score stupefyDrawBridge global matches 4 run clone 5512 98 -67 5501 107 -73 5501 48 -73
execute if score stupefyDrawBridge global matches 6 run clone 5512 113 -67 5501 122 -73 5501 48 -73
execute if score stupefyDrawBridge global matches 8 run clone 5512 128 -67 5501 137 -73 5501 48 -73
execute if score stupefyDrawBridge global matches 10 run clone 5512 143 -67 5501 152 -73 5501 48 -73
execute if score stupefyDrawBridge global matches 10 run playsound minecraft:custom.fx.impact master @a 5503 49 -70 5 1
execute if score stupefyDrawBridge global matches 10 run playsound minecraft:custom.fx.strike master @a 5503 49 -70 5 1

execute if score stupefyDrawBridge global matches 344 run playsound minecraft:custom.fx.wood_creak master @a 5503 49 -70 5 1
execute if score stupefyDrawBridge global matches 344 run clone 5512 143 -67 5501 152 -73 5501 48 -73
execute if score stupefyDrawBridge global matches 346 run clone 5512 113 -67 5501 122 -73 5501 48 -73
execute if score stupefyDrawBridge global matches 348 run clone 5512 98 -67 5501 107 -73 5501 48 -73
execute if score stupefyDrawBridge global matches 350 run clone 5512 83 -67 5501 92 -73 5501 48 -73
execute if score stupefyDrawBridge global matches 350 run playsound minecraft:custom.fx.impact master @a 5503 49 -70 5 1

# Direction
execute unless score stupefyDrawBridge global matches 360.. run scoreboard players add stupefyDrawBridge global 1
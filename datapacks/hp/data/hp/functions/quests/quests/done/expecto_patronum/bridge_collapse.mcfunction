# This is for the draw bridge
execute if score patronusBridgeCollapse global matches 2 run playsound minecraft:custom.fx.impact master @a 8033 132 66 5 1
execute if score patronusBridgeCollapseDirection global matches 1 if score patronusBridgeCollapse global matches 2 run playsound minecraft:custom.fx.wood_creak master @a 8033 132 66 5 1
execute if score patronusBridgeCollapse global matches 4 run clone 8048 155 68 8034 162 66 8026 127 65
execute if score patronusBridgeCollapse global matches 6 run clone 8048 164 68 8034 172 66 8026 126 65
execute if score patronusBridgeCollapse global matches 8 run clone 8048 174 68 8034 182 66 8026 126 65
execute if score patronusBridgeCollapse global matches 10 run clone 8048 184 68 8034 192 66 8026 126 65
execute if score patronusBridgeCollapse global matches 12 run clone 8048 194 68 8034 202 66 8026 126 65
execute if score patronusBridgeCollapseDirection global matches 0 if score patronusBridgeCollapse global matches 12 run playsound minecraft:custom.fx.wood_creak master @a 8033 132 66 5 1

# Direction
execute if score patronusBridgeCollapseDirection global matches 1 unless score patronusBridgeCollapse global matches 15.. run scoreboard players add patronusBridgeCollapse global 1
execute if score patronusBridgeCollapseDirection global matches 0 unless score patronusBridgeCollapse global matches ..0 run scoreboard players remove patronusBridgeCollapse global 1
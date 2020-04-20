# Detect exitInventory
execute as @s[tag=!invInspectItem,scores={convState=0}] run tag @s add exitInventory
execute as @s[tag=!invInspectItem,scores={convState=1..}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 .65 0.5
execute as @s[tag=!invInspectItem,scores={convState=1..}] run scoreboard players set @s mapScroll 0
execute as @s[tag=!invInspectItem,scores={convState=1..}] run scoreboard players set @s selectCurrent 1
execute as @s[tag=!invInspectItem,scores={convState=1..}] run scoreboard players set @s convState 0
execute as @s[tag=invInspectItem] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 .65 0.5
execute as @s[tag=invInspectItem] run tag @s add unInspectMapLocation

scoreboard objectives setdisplay sidebar
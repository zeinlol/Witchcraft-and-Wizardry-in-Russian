execute as @s[tag=!invInspectItem,scores={convState=0}] run tag @s add exitSettings
execute unless score @s convState matches 2 as @s[tag=!invInspectItem] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 .65 0.5
execute unless score @s convState matches 2 as @s[tag=!invInspectItem] run scoreboard players set @s settingsScroll 0
execute unless score @s convState matches 2 as @s[tag=!invInspectItem] run scoreboard players set @s selectCurrent 1
execute unless score @s convState matches 2 as @s[tag=!invInspectItem] run scoreboard players set @s convState 0
execute as @s[tag=!invInspectItem,scores={convState=2,selectCurrent=1}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 .65 0.5

execute as @s[tag=!invInspectItem,scores={convState=2,selectCurrent=1}] run scoreboard players set @s settingsScroll 0
execute as @s[tag=!invInspectItem,scores={convState=2,selectCurrent=1}] run scoreboard players set @s selectCurrent 1
execute as @s[tag=!invInspectItem,scores={convState=2,selectCurrent=1}] run scoreboard players set @s convState 0


execute as @s[tag=invInspectItem] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 .65 0.5
execute as @s[tag=invInspectItem] run tag @e[tag=inspectedItem] remove inspectedItem
execute as @s[tag=invInspectItem] run tag @s remove invInspectItem
execute as @s[tag=invInspectItem] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 .65 0.5

execute if score @s convState matches 2 as @s[scores={selectCurrent=2..}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute if score @s convState matches 2 as @s[scores={selectCurrent=2..}] run scoreboard players remove @s selectCurrent 1

scoreboard players set @s selectTest 5
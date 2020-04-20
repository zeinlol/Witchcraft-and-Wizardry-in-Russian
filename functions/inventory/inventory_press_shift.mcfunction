execute as @s[tag=!inventoryIntroduction,tag=!invInspectItem] run tag @s add exitInventory
execute as @s[tag=invInspectItem,tag=!dropItem,tag=!moveToQuickSlot,tag=!buy,tag=!sell] run tag @s add preventDoubleExecution
execute as @s[tag=invInspectItem,tag=!dropItem,tag=!moveToQuickSlot,tag=!buy,tag=!sell] run tag @e[tag=inspectedItem] remove inspectedItem
execute as @s[tag=invInspectItem,tag=!dropItem,tag=!moveToQuickSlot,tag=!buy,tag=!sell] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.7 1
execute as @s[tag=invInspectItem,tag=!dropItem,tag=!moveToQuickSlot,tag=!buy,tag=!sell] store success score @s viewChanged run tag @s remove invInspectItem
execute as @s[tag=invInspectItem,tag=dropItem,tag=!moveToQuickSlot,tag=!buy,tag=!sell] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.7 1
execute as @s[tag=invInspectItem,tag=dropItem,tag=!moveToQuickSlot,tag=!buy,tag=!sell] store success score @s viewChanged run tag @s remove dropItem
execute as @s[tag=invInspectItem,tag=dropItem,tag=!moveToQuickSlot,tag=sell,tag=!preventDoubleExecution] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.7 1
execute as @s[tag=invInspectItem,tag=dropItem,tag=!moveToQuickSlot,tag=sell,tag=!preventDoubleExecution] run tag @e[tag=inspectedItem] remove inspectedItem
execute as @s[tag=invInspectItem,tag=dropItem,tag=!moveToQuickSlot,tag=sell,tag=!preventDoubleExecution] store success score @s viewChanged run tag @s remove invInspectItem
execute as @s[tag=!invInspectItem,tag=dropItem,tag=!moveToQuickSlot,tag=sell,tag=!preventDoubleExecution] run tag @s remove dropItem
execute as @s[tag=!invInspectItem,tag=dropItem,tag=!moveToQuickSlot,tag=sell,tag=!preventDoubleExecution] run tag @s add preventDoubleExecution
execute as @s[tag=invInspectItem,tag=!dropItem,tag=moveToQuickSlot] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.7 1
execute as @s[tag=invInspectItem,tag=!dropItem,tag=moveToQuickSlot] run tag @s remove moveToQuickSlot
execute as @s[tag=invInspectItem,tag=buy,tag=!preventDoubleExecution] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.7 1
execute as @s[tag=invInspectItem,tag=buy,tag=!preventDoubleExecution] run tag @e[tag=inspectedItem] remove inspectedItem
execute as @s[tag=invInspectItem,tag=buy,tag=!preventDoubleExecution] store success score @s viewChanged run tag @s remove invInspectItem
execute as @s[tag=!invInspectItem,tag=buy,tag=!preventDoubleExecution] run tag @s add preventDoubleExecution
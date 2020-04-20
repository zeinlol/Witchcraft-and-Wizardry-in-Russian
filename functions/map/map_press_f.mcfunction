# Inspect item
execute as @s[tag=!softExitMap,tag=invInspectItem,scores={selectSecondary=1}] run function hp:tools/fast_travel_init
execute as @s[tag=!softExitMap,tag=invInspectItem,scores={selectSecondary=2}] run tag @s add unInspectMapLocation

execute as @s[tag=!softExitMap,tag=invInspectItem,scores={selectSecondary=2}] run tag @s remove invInspectItem

execute as @s[tag=!softExitMap,tag=!invInspectItem,tag=!preventDoubleExecution,tag=!selectedDestinationLocked,scores={convState=1..}] run scoreboard players set @s selectSecondary 1
execute as @s[tag=!softExitMap,tag=!invInspectItem,tag=!preventDoubleExecution,tag=!selectedDestinationLocked,scores={convState=1..}] run tag @e[type=armor_stand,tag=inventoryOption,tag=selected,limit=1] add inspectedItem

execute if entity @s[tag=!softExitMap,tag=!invInspectItem,tag=!preventDoubleExecution,tag=!selectedDestinationLocked,scores={convState=1..}] as @e[type=armor_stand,tag=inventoryIcon,limit=6] if score @s InvItemNumber = @e[type=armor_stand,tag=inventoryOption,tag=inspectedItem,limit=1] InvItemNumber run tag @s add inspectedItem
execute as @s[tag=!softExitMap,tag=!invInspectItem,tag=!preventDoubleExecution,tag=!selectedDestinationLocked,scores={convState=1..}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 .75 0.5
execute as @s[tag=!softExitMap,tag=!invInspectItem,tag=!preventDoubleExecution,tag=!selectedDestinationLocked,scores={convState=1..}] run tag @s add delayMapOneTick
execute as @s[tag=!softExitMap,tag=!invInspectItem,tag=!preventDoubleExecution,tag=!selectedDestinationLocked,scores={convState=1..}] run tag @s add invInspectItem
execute as @s[tag=!softExitMap,tag=!invInspectItem,tag=!preventDoubleExecution,tag=selectedDestinationLocked,scores={convState=1..}] run title @s times 5 20 5
execute as @s[tag=!softExitMap,tag=!invInspectItem,tag=!preventDoubleExecution,tag=selectedDestinationLocked,scores={convState=1..}] run title @s title {"text":" "}
execute as @s[tag=!softExitMap,tag=!invInspectItem,tag=!preventDoubleExecution,tag=selectedDestinationLocked,scores={convState=1..}] run title @s subtitle {"text":"Вы ещё не разблокировали это место!","bold":false,"color":"red"}
# Start state
scoreboard players set @s tmp 0
execute as @s[tag=!softExitMap,scores={convState=0,selectCurrent=1,tmp=0}] store success score @s tmp run tag @s add exitInventory
execute as @s[tag=!softExitMap,scores={convState=0,selectCurrent=2,tmp=0}] store success score @s tmp run scoreboard players set @s convState 1
execute as @s[tag=!softExitMap,scores={convState=0,selectCurrent=3,tmp=0}] store success score @s tmp run scoreboard players set @s convState 2
execute as @s[tag=!softExitMap,scores={convState=0,selectCurrent=4,tmp=0}] store success score @s tmp run scoreboard players set @s convState 3
execute as @s[tag=!softExitMap,scores={convState=0,selectCurrent=5,tmp=0}] store success score @s tmp run scoreboard players set @s convState 4
execute as @s[tag=!softExitMap,scores={convState=0,selectCurrent=6,tmp=0}] store success score @s tmp run scoreboard players set @s convState 5
execute as @s[scores={tmp=1..}] run scoreboard players set @s selectCurrent 1
execute as @s[scores={tmp=1..}] run scoreboard players set @s mapScroll 0
execute as @s[scores={tmp=1..}] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 .75 0.5
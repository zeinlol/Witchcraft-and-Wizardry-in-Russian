# place in quickSlot
# Quickslot 1
execute as @s[tag=invInspectItem,tag=moveToQuickSlot,tag=!sell,tag=!buy,scores={quickSlot=1}] store result score @s tmp run scoreboard players get @s quickSlot1ID
execute as @s[tag=invInspectItem,tag=moveToQuickSlot,tag=!sell,tag=!buy,scores={quickSlot=1}] unless score @s tmp = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemID run scoreboard players operation @s quickSlot1ID = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemID
execute as @s[tag=invInspectItem,tag=moveToQuickSlot,tag=!sell,tag=!buy,scores={quickSlot=1}] if score @s tmp = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemID run scoreboard players set @s quickSlot1ID 0
execute as @s[tag=invInspectItem,tag=moveToQuickSlot,tag=!sell,tag=!buy,scores={quickSlot=1}] if score @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemID = @s quickSlot2ID run scoreboard players operation @s quickSlot2ID = @s tmp
# Quickslot 2
execute as @s[tag=invInspectItem,tag=moveToQuickSlot,tag=!sell,tag=!buy,scores={quickSlot=2}] store result score @s tmp run scoreboard players get @s quickSlot2ID
execute as @s[tag=invInspectItem,tag=moveToQuickSlot,tag=!sell,tag=!buy,scores={quickSlot=2}] unless score @s tmp = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemID run scoreboard players operation @s quickSlot2ID = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemID
execute as @s[tag=invInspectItem,tag=moveToQuickSlot,tag=!sell,tag=!buy,scores={quickSlot=2}] if score @s tmp = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemID run scoreboard players set @s quickSlot2ID 0
execute as @s[tag=invInspectItem,tag=moveToQuickSlot,tag=!sell,tag=!buy,scores={quickSlot=2}] if score @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemID = @s quickSlot1ID run scoreboard players operation @s quickSlot1ID = @s tmp
execute as @s[tag=invInspectItem,tag=moveToQuickSlot,tag=!sell,tag=!buy] at @s run playsound minecraft:custom.ui.inventory.interaction.inventory_tab master @s ~ ~ ~ 1 1 1

# Drop item
execute as @s[tag=invInspectItem,tag=dropItem,tag=!sell,tag=!buy] at @s run playsound minecraft:custom.ui.inventory.game_inventory.place_item master @s ~ ~ ~ 1 1 1
execute as @s[tag=invInspectItem,tag=dropItem,tag=!sell,tag=!buy] at @s store success score @s viewChanged run function hp:inventory/drop_item

# Sell item (I use the same function for purchasing and picking up items so naming is kind of akward). Tag "hasSoldAll" is used to correct scroll and selection if the item is no longer visible.
execute as @s[tag=invInspectItem,tag=dropItem,tag=sell,tag=!buy] if score @s amountToDrop = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemCount run tag @s add hasSoldAll
execute as @s[tag=invInspectItem,tag=dropItem,tag=sell,tag=!buy] store success score @s viewChanged run function hp:inventory/obtain_item

# On Inspect item
execute as @s[tag=invInspectItem,scores={selectSecondary=1}] run tag @s add preventDoubleExecution
execute as @s[tag=invInspectItem,scores={selectSecondary=1},tag=!buy,tag=!sell] run tag @e[tag=inspectedItem,limit=1] remove inspectedItem
execute as @s[tag=invInspectItem,scores={selectSecondary=1},tag=!buy,tag=!sell] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.7 1
execute as @s[tag=invInspectItem,scores={selectSecondary=1},tag=!buy,tag=!sell] store success score @s viewChanged run tag @s remove invInspectItem

# What should happen is dependent on item type (inspectType)
execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=2,inspectType=1},tag=!buy,tag=!sell] run function hp:inventory/equipment/equip
execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=2,inspectType=2},tag=!buy,tag=!sell] run function hp:inventory/equipment/unequip
execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=2,inspectType=3..4},tag=!buy,tag=!sell] run tag @s add consumeFromInventory 
execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=2,inspectType=3..4},tag=!buy,tag=!sell] run function hp:inventory/equipment/consume_item
execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=2,inspectType=5},tag=!buy,tag=!sell] store success score @s viewChanged run tag @s add moveToQuickSlot
execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=2,inspectType=6},tag=!buy,tag=!sell] store success score @s viewChanged run tag @s add removeFromQuickSlot
execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=2,inspectType=7},tag=!buy,tag=!sell] run scoreboard players operation @s amountToDrop = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemCount
execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=2,inspectType=7},tag=!buy,tag=!sell] store success score @s viewChanged run tag @s add dropItem
execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=2,inspectType=1..2},tag=!buy,tag=!sell] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.7 1
execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=2,inspectType=5..7},tag=!buy,tag=!sell] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.7 1

execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=3,inspectType=1..2},tag=!buy,tag=!sell] run scoreboard players operation @s amountToDrop = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemCount
execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=3,inspectType=1..2},tag=!buy,tag=!sell] store success score @s viewChanged run tag @s add dropItem
execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=3,inspectType=3..4},tag=!buy,tag=!sell] store success score @s viewChanged run tag @s add moveToQuickSlot
execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=3,inspectType=5..6},tag=!buy,tag=!sell] run scoreboard players operation @s amountToDrop = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemCount
execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=3,inspectType=5..6},tag=!buy,tag=!sell] store success score @s viewChanged run tag @s add dropItem
execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=3},tag=!buy,tag=!sell] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.7 1

execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=4,inspectType=3..4},tag=!buy,tag=!sell] run scoreboard players operation @s amountToDrop = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemCount
execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=4,inspectType=3..4},tag=!buy,tag=!sell] run tag @s add dropItem
execute as @s[tag=play,tag=invInspectItem,scores={selectSecondary=4},tag=!buy,tag=!sell] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.7 1

# Edit add items
execute as @s[tag=invInspectItem,tag=editAddItems,scores={selectSecondary=2}] run scoreboard players set @s amountToDrop 1
execute as @s[tag=invInspectItem,tag=editAddItems,scores={selectSecondary=2}] store success score @s viewChanged run tag @s add dropItem


# Trigger inspect item
execute as @s[tag=!inventoryIntroduction,tag=!invInspectItem,tag=!preventDoubleExecution] run scoreboard players set @s selectSecondary 1
execute as @s[tag=!inventoryIntroduction,tag=!invInspectItem,tag=!preventDoubleExecution] run tag @e[tag=inventoryOption,tag=selected,tag=!cantAffordItem,limit=1] add inspectedItem

# If Player Inventory
execute if entity @e[tag=inventory,tag=!chest,limit=1] if entity @s[tag=!editRemoveItems,tag=!invInspectItem,tag=!preventDoubleExecution,tag=!invEmpty,scores={animTest=0}] as @e[tag=inventoryIcon] if score @s InvItemNumber = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemNumber run tag @s add inspectedItem
execute if entity @e[tag=inventory,tag=!chest,limit=1] as @s[tag=!editRemoveItems,tag=!invInspectItem,tag=!preventDoubleExecution,tag=!buy,tag=!sell,tag=!invEmpty,scores={animTest=0}] run function hp:inventory/inspect_sound
execute if entity @e[tag=inventory,tag=!chest,limit=1] as @s[tag=!editRemoveItems,tag=!invInspectItem,tag=!preventDoubleExecution,tag=!buy,tag=!sell,tag=!invEmpty,scores={animTest=0}] store success score @s viewChanged run tag @s add invInspectItem

# Purchase confirmation
execute as @s[tag=invInspectItem,scores={selectSecondary=1},tag=buy] run function hp:inventory/obtain_item
execute as @s[tag=invInspectItem,scores={selectSecondary=1},tag=buy] run tag @e[tag=inspectedItem,limit=1] remove inspectedItem
execute as @s[tag=invInspectItem,scores={selectSecondary=1},tag=buy] store success score @s viewChanged run tag @s remove invInspectItem
execute as @s[tag=invInspectItem,scores={selectSecondary=1},tag=buy] run tag @s add preventDoubleExecution

execute as @s[tag=invInspectItem,scores={selectSecondary=2},tag=buy] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.7 1
execute as @s[tag=invInspectItem,scores={selectSecondary=2},tag=buy] run tag @e[tag=inspectedItem,limit=1] remove inspectedItem
execute as @s[tag=invInspectItem,scores={selectSecondary=2},tag=buy] store success score @s viewChanged run tag @s remove invInspectItem
execute as @s[tag=!invInspectItem,scores={selectSecondary=2},tag=buy] run tag @s add preventDoubleExecution

# If chest
execute if entity @e[tag=inventory,tag=chest,limit=1] as @s[tag=!invInspectItem,tag=!preventDoubleExecution,tag=!buy,tag=!sell,tag=!invEmpty] run function hp:inventory/inspect_sound
execute if entity @e[tag=inventory,tag=chest,limit=1] as @s[tag=!invInspectItem,tag=!preventDoubleExecution,tag=!buy,tag=!sell,tag=!invEmpty] store success score @s viewChanged run function hp:inventory/obtain_item
execute if entity @e[tag=inventory,tag=NPCStore,limit=1] as @s[tag=editRemoveItems,tag=!invInspectItem,tag=!preventDoubleExecution,tag=!buy,tag=!sell,tag=!invEmpty] store success score @s viewChanged run function hp:inventory/obtain_item

# If store
execute if entity @e[tag=inventory,limit=1] as @s[tag=!invInspectItem,tag=!preventDoubleExecution,tag=buy,tag=!sell,scores={animTest=0}] if entity @e[tag=inventoryOption,tag=selected,tag=!cantAffordItem,limit=1] run scoreboard players set @s selectSecondary 1
execute if entity @e[tag=inventory,limit=1] as @s[tag=!invInspectItem,tag=!preventDoubleExecution,tag=buy,tag=!sell,scores={animTest=0}] if entity @e[tag=inventoryOption,tag=selected,tag=!cantAffordItem,limit=1] run function hp:inventory/inspect_sound
execute if entity @e[tag=inventory,limit=1] as @s[tag=!invInspectItem,tag=!preventDoubleExecution,tag=buy,tag=!sell,scores={animTest=0}] if entity @e[tag=inventoryOption,tag=selected,tag=!cantAffordItem,limit=1] store success score @s viewChanged run tag @s add invInspectItem
execute if entity @e[tag=inventory,limit=1] as @s[tag=!invInspectItem,tag=!preventDoubleExecution,tag=buy,tag=!sell,scores={animTest=0},tag=!hasNotUnlockedTrading] if entity @e[tag=inventoryOption,tag=selected,tag=cantAffordItem,limit=1] run title @s times 5 20 5
execute if entity @e[tag=inventory,limit=1] as @s[tag=!invInspectItem,tag=!preventDoubleExecution,tag=buy,tag=!sell,scores={animTest=0},tag=!hasNotUnlockedTrading] if entity @e[tag=inventoryOption,tag=selected,tag=cantAffordItem,limit=1] run title @s title {"text":" "}
execute if entity @e[tag=inventory,limit=1] as @s[tag=!invInspectItem,tag=!preventDoubleExecution,tag=buy,tag=!sell,scores={animTest=0},tag=!hasNotUnlockedTrading] if entity @e[tag=inventoryOption,tag=selected,tag=cantAffordItem,limit=1] run title @s subtitle {"text":"У вас не хватает денег","bold":false,"color":"red"}
execute if entity @e[tag=inventory,limit=1] as @s[tag=!invInspectItem,tag=!preventDoubleExecution,tag=buy,tag=!sell,scores={animTest=0},tag=hasNotUnlockedTrading] if entity @e[tag=inventoryOption,tag=selected,tag=cantAffordItem,limit=1] run title @s times 5 20 5
execute if entity @e[tag=inventory,limit=1] as @s[tag=!invInspectItem,tag=!preventDoubleExecution,tag=buy,tag=!sell,scores={animTest=0},tag=hasNotUnlockedTrading] if entity @e[tag=inventoryOption,tag=selected,tag=cantAffordItem,limit=1] run title @s title {"text":" "}
execute if entity @e[tag=inventory,limit=1] as @s[tag=!invInspectItem,tag=!preventDoubleExecution,tag=buy,tag=!sell,scores={animTest=0},tag=hasNotUnlockedTrading] if entity @e[tag=inventoryOption,tag=selected,tag=cantAffordItem,limit=1] run title @s subtitle {"text":"Вы пока не можете купить этот предмет","bold":false,"color":"red"}
execute if entity @e[tag=inventory,limit=1] as @s[tag=!invInspectItem,tag=!preventDoubleExecution,tag=buy,tag=!sell,scores={animTest=0},tag=!hasLearnedToFly] if entity @e[tag=inventoryOption,tag=selected,tag=cantAffordItem,limit=1,scores={InvItemID=34..37}] run title @s subtitle {"text":"Вы пока не можете купить этот предмет","bold":false,"color":"red"}

execute if entity @e[tag=inventory,limit=1] as @s[tag=!invInspectItem,tag=!preventDoubleExecution,tag=!buy,tag=sell,scores={animTest=0}] if entity @e[tag=inventoryOption,tag=selected,limit=1] run scoreboard players operation @s amountToDrop = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemCount
execute if entity @e[tag=inventory,limit=1] as @s[tag=!invInspectItem,tag=!preventDoubleExecution,tag=!buy,tag=sell,scores={animTest=0}] if entity @e[tag=inventoryOption,tag=selected,limit=1] run function hp:inventory/inspect_sound
execute if entity @e[tag=inventory,limit=1] as @s[tag=!invInspectItem,tag=!preventDoubleExecution,tag=!buy,tag=sell,scores={animTest=0}] if entity @e[tag=inventoryOption,tag=selected,limit=1] run tag @s add dropItem
execute if entity @e[tag=inventory,limit=1] as @s[tag=!invInspectItem,tag=!preventDoubleExecution,tag=!buy,tag=sell,scores={animTest=0}] if entity @e[tag=inventoryOption,tag=selected,limit=1] store success score @s viewChanged run tag @s add invInspectItem
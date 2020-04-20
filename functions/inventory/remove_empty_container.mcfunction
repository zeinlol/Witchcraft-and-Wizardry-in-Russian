# Exit Inventory
tag @e[tag=inspectedItem] remove inspectedItem
tag @s remove invInspectItem
tag @s remove dropItem
tag @s add exitInventory
kill @e[tag=inventory]
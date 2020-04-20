tag @e[tag=inventory] remove inventory
execute as @e[tag=questSetup,limit=1] run tag @s add inventory
tag @s add editAddItems
tag @e[tag=hover,limit=1] add editAddItemsTarget
tag @s add enterInventory
tag @s remove initAddItems
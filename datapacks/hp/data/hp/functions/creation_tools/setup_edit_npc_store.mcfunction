execute if entity @s[tag=!inInventory] as @e[tag=hover,tag=NPCStore] run tag @e[tag=inventory] remove inventory
execute if entity @s[tag=!inInventory] as @e[tag=hover,tag=NPCStore] run tag @s add inventory
execute if entity @s[tag=!inInventory] if entity @e[tag=hover,tag=NPCStore] run tag @s add isContainer
execute if entity @s[tag=!inInventory] if entity @e[tag=hover,tag=NPCStore] run tag @s add enterInventory
execute if entity @s[tag=!inInventory] run tag @s remove initEditNPCStore
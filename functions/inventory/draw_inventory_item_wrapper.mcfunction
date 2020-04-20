# For performance reasons I avoid triggering certain commands for inventory items that are not visible.

# Increment max view and current item number (another valid item has been found)
scoreboard players add @s InvItemNumber 1
scoreboard players add @s convMaxView 1

# The performance check is to figure out if the item is on or off screen.
scoreboard players operation @s invPerfCheck = @s InvItemNumber
scoreboard players operation @s invPerfCheck -= @s InvScroll

execute if score @s invPerfCheck matches 1..6 run function hp:inventory/draw_inventory_item

# Check equipment availability
# Quickslot
execute if score @s InvItemID = @s quickSlot1ID run tag @s add quickSlot1Available
execute if score @s InvItemID = @s quickSlot2ID run tag @s add quickSlot2Available

# Clothes
execute if score @s InvItemID = @s clothesSlot1ID run tag @s add clothesSlot1Available
execute if score @s InvItemID = @s clothesSlot2ID run tag @s add clothesSlot2Available
execute if score @s InvItemID = @s clothesSlot3ID run tag @s add clothesSlot3Available

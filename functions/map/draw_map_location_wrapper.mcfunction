# For performance reasons I avoid triggering certain commands for map locations that are not visible.

# Increment max view and current item number (another valid item has been found)
scoreboard players add @s InvItemNumber 1
scoreboard players add @s convMaxView 1

# The performance check is to figure out if the item is on or off screen.
scoreboard players operation @s invPerfCheck = @s InvItemNumber
scoreboard players operation @s invPerfCheck -= @s mapScroll

function hp:map/draw_map_location
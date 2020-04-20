scoreboard players set @s InvItemID 91
scoreboard players set @s InvItemCount 50
function hp:inventory/give_player_item
execute as @e[tag=inventory,limit=1] run function hp:inventory/read_inventory
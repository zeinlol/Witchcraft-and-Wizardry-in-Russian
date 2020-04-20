# This is the plan. It's likely it'll end up being done differently because my plans never work :P
##############################################################################################
# All invItems are stored on item on armorstands using custom tags                           # 
# When drawing inventory:                                                                    #
# 1.	invItemListNumber is set to 0                                                        # 
# 2.	System cycles through all invitems                                                   #
# 3.	InvItemCount is set to invitem.count                                                 #
#       InvItemID is set to invitem.id                                                       #
# 4.	If InvItemCount > 0 run draw_inventory_item                                          #
#         a.	InvItemListNumber is incremented                                             #
#         b.	InvItemCount is set to 0                                                     #
#         c.	Inventory drawing armorstand with same InvItemListNumber is setup            #
#                 i.	Name = icon + (InvItemCount) + name + value                          #
#                 ii.	ID score is set so preview will work                                 #
# 5.	When the system is done the rendering system outputs to chat.                        #
# 6.	Separate system handles item preview                                                 #
##############################################################################################
# I just want it to look like Skyrim haha



# Split per player is for performance reasons, so I can use UUIDs instead of @e
execute as @s[tag=enterInventory] run function hp:inventory/init_inventory
execute as @s[tag=inInventory,scores={playerID=1}] run function hp:inventory/in_inventory_player1
execute as @s[tag=inInventory,scores={playerID=2}] run function hp:inventory/in_inventory_player2
execute as @s[tag=inInventory,scores={playerID=3}] run function hp:inventory/in_inventory_player3
execute as @s[tag=inInventory,scores={playerID=4}] run function hp:inventory/in_inventory_player4
execute as @s[tag=exitInventory] run function hp:inventory/exit_inventory

# Debug give item
execute as @s[scores={debugGiveItem=1..}] run scoreboard players operation @s InvItemID = @s debugGiveItem
execute as @s[scores={debugGiveItem=1..}] run scoreboard players set @s InvItemCount 1
execute as @s[scores={debugGiveItem=1..}] run function hp:inventory/give_player_item
execute as @s[scores={debugGiveItem=1..}] run scoreboard players set @s debugGiveItem 0

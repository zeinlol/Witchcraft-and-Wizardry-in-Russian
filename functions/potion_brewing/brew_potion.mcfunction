#######################
#   Murtlap Essence   #
#######################
execute as @s[scores={selectCurrent=1}] run tag @s add active
# Ingredients
# 1
execute as @s[tag=active] run scoreboard players set @s InvItemID 46
execute as @s[tag=active] run scoreboard players set @s InvItemCount -3
execute as @s[tag=active] run function hp:inventory/give_player_item
# 2
execute as @s[tag=active] run scoreboard players set @s InvItemID 152
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# 3
execute as @s[tag=active] run scoreboard players set @s InvItemID 55
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# 4
execute as @s[tag=active] run scoreboard players set @s InvItemID 58
execute as @s[tag=active] run scoreboard players set @s InvItemCount -2
execute as @s[tag=active] run function hp:inventory/give_player_item
# Potion
execute as @s[tag=active] run scoreboard players set @s InvItemID 3
execute as @s[tag=active] run scoreboard players set @s InvItemCount 3
execute as @s[tag=active] run function hp:inventory/give_player_item
tag @s remove active

########################
#   Potion of Magicka   #
########################
execute as @s[scores={selectCurrent=2}] run tag @s add active
# Ingredients
# 1
execute as @s[tag=active] run scoreboard players set @s InvItemID 61
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# 2
execute as @s[tag=active] run scoreboard players set @s InvItemID 60
execute as @s[tag=active] run scoreboard players set @s InvItemCount -2
execute as @s[tag=active] run function hp:inventory/give_player_item
# 3
execute as @s[tag=active] run scoreboard players set @s InvItemID 49
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# 4
execute as @s[tag=active] run scoreboard players set @s InvItemID 149
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# Potion
execute as @s[tag=active] run scoreboard players set @s InvItemID 4
execute as @s[tag=active] run scoreboard players set @s InvItemCount 3
execute as @s[tag=active] run function hp:inventory/give_player_item
tag @s remove active

############################
#      Elixir of life      #
############################
execute as @s[scores={selectCurrent=3}] run tag @s add active
# Ingredients
# 1
execute as @s[tag=active] run scoreboard players set @s InvItemID 46
execute as @s[tag=active] run scoreboard players set @s InvItemCount -3
execute as @s[tag=active] run function hp:inventory/give_player_item
# 2
execute as @s[tag=active] run scoreboard players set @s InvItemID 64
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# 3
execute as @s[tag=active] run scoreboard players set @s InvItemID 151
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# 4
execute as @s[tag=active] run scoreboard players set @s InvItemID 158
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# Potion
execute as @s[tag=active] run scoreboard players set @s InvItemID 5
execute as @s[tag=active] run scoreboard players set @s InvItemCount 2
execute as @s[tag=active] run function hp:inventory/give_player_item
tag @s remove active


############################
#      Strength Potion     #
############################
execute as @s[scores={selectCurrent=4}] run tag @s add active
# Ingredients
# 1
execute as @s[tag=active] run scoreboard players set @s InvItemID 50
execute as @s[tag=active] run scoreboard players set @s InvItemCount -3
execute as @s[tag=active] run function hp:inventory/give_player_item
# 2
execute as @s[tag=active] run scoreboard players set @s InvItemID 54
execute as @s[tag=active] run scoreboard players set @s InvItemCount -2
execute as @s[tag=active] run function hp:inventory/give_player_item
# 3
execute as @s[tag=active] run scoreboard players set @s InvItemID 63
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# 4
execute as @s[tag=active] run scoreboard players set @s InvItemID 59
execute as @s[tag=active] run scoreboard players set @s InvItemCount -2
execute as @s[tag=active] run function hp:inventory/give_player_item
# Potion
execute as @s[tag=active] run scoreboard players set @s InvItemID 6
execute as @s[tag=active] run scoreboard players set @s InvItemCount 2
execute as @s[tag=active] run function hp:inventory/give_player_item
tag @s remove active


############################
#   Invigoration Draught   #
############################
execute as @s[scores={selectCurrent=5}] run tag @s add active
# Ingredients
# 1
execute as @s[tag=active] run scoreboard players set @s InvItemID 57
execute as @s[tag=active] run scoreboard players set @s InvItemCount -2
execute as @s[tag=active] run function hp:inventory/give_player_item
# 2
execute as @s[tag=active] run scoreboard players set @s InvItemID 49
execute as @s[tag=active] run scoreboard players set @s InvItemCount -2
execute as @s[tag=active] run function hp:inventory/give_player_item
# 3
execute as @s[tag=active] run scoreboard players set @s InvItemID 150
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# 4
execute as @s[tag=active] run scoreboard players set @s InvItemID 55
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# Potion
execute as @s[tag=active] run scoreboard players set @s InvItemID 7
execute as @s[tag=active] run scoreboard players set @s InvItemCount 3
execute as @s[tag=active] run function hp:inventory/give_player_item
tag @s remove active

############################
#   Essence of Gillyweed   #
############################
execute as @s[scores={selectCurrent=6}] run tag @s add active
# Ingredients
# 1
execute as @s[tag=active] run scoreboard players set @s InvItemID 47
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# 2
execute as @s[tag=active] run scoreboard players set @s InvItemID 62
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# 3
execute as @s[tag=active] run scoreboard players set @s InvItemID 60
execute as @s[tag=active] run scoreboard players set @s InvItemCount -3
execute as @s[tag=active] run function hp:inventory/give_player_item
# 4
execute as @s[tag=active] run scoreboard players set @s InvItemID 53
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# Potion
execute as @s[tag=active] run scoreboard players set @s InvItemID 9
execute as @s[tag=active] run scoreboard players set @s InvItemCount 1
execute as @s[tag=active] run function hp:inventory/give_player_item
tag @s remove active

############################
#   Antidote to poisions   #
############################
execute as @s[scores={selectCurrent=7}] run tag @s add active
# Ingredients
# 1
execute as @s[tag=active] run scoreboard players set @s InvItemID 46
execute as @s[tag=active] run scoreboard players set @s InvItemCount -3
execute as @s[tag=active] run function hp:inventory/give_player_item
# 2
execute as @s[tag=active] run scoreboard players set @s InvItemID 48
execute as @s[tag=active] run scoreboard players set @s InvItemCount -2
execute as @s[tag=active] run function hp:inventory/give_player_item
# 3
execute as @s[tag=active] run scoreboard players set @s InvItemID 54
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# 4
execute as @s[tag=active] run scoreboard players set @s InvItemID 154
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# Potion
execute as @s[tag=active] run scoreboard players set @s InvItemID 8
execute as @s[tag=active] run scoreboard players set @s InvItemCount 3
execute as @s[tag=active] run function hp:inventory/give_player_item
tag @s remove active

############################
#   Invisibility Potion    #
############################
execute as @s[scores={selectCurrent=8}] run tag @s add active
# Ingredients
# 1
execute as @s[tag=active] run scoreboard players set @s InvItemID 51
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# 2
execute as @s[tag=active] run scoreboard players set @s InvItemID 153
execute as @s[tag=active] run scoreboard players set @s InvItemCount -3
execute as @s[tag=active] run function hp:inventory/give_player_item
# 3
execute as @s[tag=active] run scoreboard players set @s InvItemID 56
execute as @s[tag=active] run scoreboard players set @s InvItemCount -3
execute as @s[tag=active] run function hp:inventory/give_player_item
# 4
execute as @s[tag=active] run scoreboard players set @s InvItemID 52
execute as @s[tag=active] run scoreboard players set @s InvItemCount -1
execute as @s[tag=active] run function hp:inventory/give_player_item
# Potion
execute as @s[tag=active] run scoreboard players set @s InvItemID 10
execute as @s[tag=active] run scoreboard players set @s InvItemCount 1
execute as @s[tag=active] run function hp:inventory/give_player_item
tag @s remove active


# Sound
execute at @s run playsound minecraft:custom.inventory.pickup.liquid master @a

# When brewing a potion for the first time
tag @s[tag=potionBrewingLocked] add hasBrewedFirstPotion
tag @s[tag=potionBrewingLocked] remove potionBrewingLocked



# Reset inv view
tag @s remove invInspectItem
tag @s add preventDoubleExecution
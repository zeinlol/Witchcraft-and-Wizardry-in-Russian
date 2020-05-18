# It gets a bit confusing because this function is used for several things and has some overlap. Should have probably just made functions for each case. - Contains commands for both picking up, buying and selling. 

# Obtain Item

# Remove item from chest / etc. inventory
scoreboard players operation @s InvItemID = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemID
scoreboard players set @s[tag=!buy,tag=!sell] InvItemCount 0
scoreboard players operation @s[tag=!buy,tag=!sell] InvItemCount -= @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemCount
scoreboard players set @s[tag=buy,tag=!sell] InvItemCount 1

scoreboard players set @s[tag=!buy,tag=sell] InvItemCount 0
scoreboard players operation @s[tag=!buy,tag=sell] InvItemCount -= @s amountToDrop
execute as @s[tag=!buy] run function hp:inventory/give_player_item

# Change active inventory quickly to edit players own inventory.
execute as @s[tag=!sell] run tag @e[tag=inventory,limit=1] add tmpDisabledInventory
execute as @s[tag=!sell] run tag @e[tag=inventory] remove inventory
execute as @s[scores={playerID=1},tag=!sell] run tag 0-0-5-0-1 add inventory
execute as @s[scores={playerID=2},tag=!sell] run tag 0-0-5-0-2 add inventory
execute as @s[scores={playerID=3},tag=!sell] run tag 0-0-5-0-3 add inventory
execute as @s[scores={playerID=4},tag=!sell] run tag 0-0-5-0-4 add inventory
execute as @s[tag=!sell,tag=!buy] run scoreboard players operation @s InvItemCount = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemCount
execute as @s[tag=!sell] run function hp:inventory/give_player_item

# Fix scroll in case selection has been nudged below new scroll area
execute if score @s[tag=!buy,tag=!sell] InvItemCount = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemCount if entity @e[tag=inventoryOption,scores={InvItemNumber=2..,convRenderLine=1},limit=1] run scoreboard players remove @s InvScroll 1
execute if score @s[tag=!buy,tag=!sell] InvItemCount = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemCount if entity @s[scores={selectCurrent=2..}] run scoreboard players remove @s selectCurrent 1
# Only fix if player has sold ALL the instances of a specific item they own.

execute as @s[tag=!buy,tag=sell,tag=hasSoldAll] if entity @e[tag=inventoryOption,scores={InvItemNumber=2..,convRenderLine=1},limit=1] run scoreboard players remove @s InvScroll 1
execute as @s[tag=!buy,tag=sell,tag=hasSoldAll] if entity @s[scores={selectCurrent=2..}] run scoreboard players remove @s selectCurrent 1
execute as @s[tag=!buy,tag=sell,tag=hasSoldAll] run tag @s remove hasSoldAll


# Buy
execute as @s[tag=buy] at @s run playsound minecraft:custom.ui.interaction.trading master @s ~ ~ ~ 1 1 1
execute as @s[tag=buy] run scoreboard players operation @s money -= @e[type=armor_stand,tag=inspectedItem,tag=inventoryOption,limit=1] money

# Sell
execute as @s[tag=sell] run scoreboard players operation @s earned = @e[type=armor_stand,tag=inspectedItem,tag=inventoryOption,limit=1] money
execute as @s[tag=sell] run scoreboard players operation @s earned *= @s amountToDrop
execute as @s[tag=sell] run scoreboard players operation @s money += @s earned
execute as @s[tag=sell] run scoreboard players set @s earned 0
execute as @s[tag=sell] at @s run playsound minecraft:custom.ui.interaction.trading master @s ~ ~ ~ 1 1 1

# If the player has picked up a key update the key number so the player doesn't have to open their own inventory for it to update
execute store result score @p[tag=activePlayer] keys run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag."invItem.Key.count"

scoreboard players reset @e[tag=inventoryOption,limit=6] InvItemCount

execute as @s[scores={playerID=1},tag=!sell] run tag 0-0-5-0-1 remove inventory
execute as @s[scores={playerID=2},tag=!sell] run tag 0-0-5-0-2 remove inventory
execute as @s[scores={playerID=3},tag=!sell] run tag 0-0-5-0-3 remove inventory
execute as @s[scores={playerID=4},tag=!sell] run tag 0-0-5-0-4 remove inventory
execute as @s[tag=!sell] run tag @e[tag=tmpDisabledInventory,limit=1] add inventory
execute as @s[tag=!sell] run tag @e[tag=tmpDisabledInventory,tag=!sell,limit=1] remove tmpDisabledInventory

# Reset inv view
tag @e[tag=inspectedItem] remove inspectedItem
tag @s remove invInspectItem
tag @s[tag=sell] remove dropItem
tag @s add preventDoubleExecution
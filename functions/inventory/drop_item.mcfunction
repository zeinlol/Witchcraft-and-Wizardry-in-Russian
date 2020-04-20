# editAddItems are for editor tools used by us to setup stores, chest, etc.

# Drop item
execute as @s[tag=!editAddItems] as @e[tag=isDroppedItem,distance=..1,limit=1] run tag @s add itemBeingDropped
execute as @s[tag=!editAddItems] unless entity @e[tag=isDroppedItem,distance=..1] run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Выброшенный Мешокˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}",Team:"NPC",Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["interactable","glowable","chest","itemBeingDropped","removeContainerIfEmpty","isDroppedItem"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{Unbreakable:1b,Damage:59},qDetect:1b}]}
execute as @s[tag=editAddItems] as @e[tag=editAddItemsTarget,limit=1] run tag @s add itemBeingDropped

execute as @s[tag=editAddItems] unless entity @e[tag=editAddItemsTarget,limit=1] run title @s times 20 100 20
execute as @s[tag=editAddItems] unless entity @e[tag=editAddItemsTarget,limit=1] run title @s subtitle {"text":"Вам нужно находиться рядом с мешком, что бы посмотреть что в нём.","color":"red"}
execute as @s[tag=editAddItems] unless entity @e[tag=editAddItemsTarget,limit=1] run title @s title {"text":""}


# Remove item from player inventory
scoreboard players operation @s InvItemID = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemID
execute as @s[tag=!editAddItems] run scoreboard players set @s InvItemCount 0
execute as @s[tag=!editAddItems] run scoreboard players operation @s InvItemCount -= @s amountToDrop
execute as @s[tag=!editAddItems] run function hp:inventory/give_player_item

# Change active inventory quickly to edit contents of dropped items. Pretty clunky, but if we change it back in the same tick hopefully nobody will notice :P
tag @e[tag=inventory,limit=1] add tmpDisabledInventory
tag @e[tag=inventory] remove inventory
tag @e[tag=itemBeingDropped,limit=1] add inventory

scoreboard players operation @s InvItemCount = @s amountToDrop
function hp:inventory/give_player_item

# Fix scroll incase selection has been nudged below new scroll area
execute if score @s InvItemCount = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemCount if entity @e[tag=inventoryOption,scores={InvItemNumber=2..,convRenderLine=1},limit=1] run scoreboard players remove @s InvScroll 1
execute if score @s InvItemCount = @e[tag=inventoryOption,tag=inspectedItem,limit=1] InvItemCount if entity @s[scores={selectCurrent=2..}] run scoreboard players remove @s selectCurrent 1

scoreboard players reset @e[tag=inventoryOption,limit=6] InvItemCount

tag @e[tag=itemBeingDropped,limit=1] remove inventory
tag @e[tag=itemBeingDropped,limit=1] remove itemBeingDropped

tag @e[tag=tmpDisabledInventory,limit=1] add inventory
tag @e[tag=tmpDisabledInventory,limit=1] remove tmpDisabledInventory

# Reset inv view
tag @e[tag=inspectedItem,limit=1] remove inspectedItem
tag @s remove invInspectItem
tag @s remove dropItem
tag @s add preventDoubleExecution


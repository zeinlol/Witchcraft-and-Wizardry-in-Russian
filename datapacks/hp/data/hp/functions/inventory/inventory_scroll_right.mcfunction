tag @s add hasScrolled

# Drop
execute if score @s amountToDrop < @e[type=armor_stand,tag=inventoryOption,tag=inspectedItem,limit=1] InvItemCount run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute if score @s amountToDrop < @e[type=armor_stand,tag=inventoryOption,tag=inspectedItem,limit=1] InvItemCount run scoreboard players add @s amountToDrop 1

# Quickslot
scoreboard players add @p[tag=activePlayer,tag=moveToQuickSlot] quickSlot 1
playsound minecraft:ui.button.click master @p[tag=activePlayer,tag=invInspectItem,tag=moveToQuickSlot] ~ ~ ~ 0.5 1.3 0.5

# Wrapping for quick slot selection
scoreboard players set @s[scores={quickSlot=3..}] quickSlot 1
scoreboard players set @s[scores={quickSlot=..0}] quickSlot 2
tag @s add hasScrolled

# Drop
execute if score @s amountToDrop matches 2.. run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1 0.5
execute if score @s amountToDrop matches 2.. run scoreboard players remove @s amountToDrop 1

# Quickslot
scoreboard players remove @p[tag=activePlayer,tag=moveToQuickSlot] quickSlot 1
playsound minecraft:ui.button.click master @p[tag=activePlayer,tag=invInspectItem,tag=moveToQuickSlot] ~ ~ ~ 0.5 1.3 0.5

# Wrapping for quick slot selection
scoreboard players set @s[scores={quickSlot=3..}] quickSlot 1
scoreboard players set @s[scores={quickSlot=..0}] quickSlot 2
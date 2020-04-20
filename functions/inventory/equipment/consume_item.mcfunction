# Quickslot 1
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=3}] run effect give @s minecraft:instant_health 1 4 true
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=3}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=3}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=4}] run scoreboard players add @s manaAmount 7000
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=4}] if score @s manaAmount > @s maxManaAmount run scoreboard players operation @s manaAmount = @s maxManaAmount
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=4}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=5}] run effect give @s minecraft:absorption 120 24 false
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=5}] run tag @s add usingAbsorptionPotion
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=5}] run scoreboard players set @s maxHealth 300
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=5,playerID=1}] run bossbar set minecraft:player1health max 300
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=5,playerID=2}] run bossbar set minecraft:player2health max 300
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=5,playerID=3}] run bossbar set minecraft:player3health max 300
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=5,playerID=4}] run bossbar set minecraft:player4health max 300
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=5}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=6}] run effect give @s minecraft:strength 60 1
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=6}] run tag @s add usingStrengthPotion
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=6}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=7}] run effect give @s minecraft:speed 60 2 false
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=7}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=8}] run effect give @s minecraft:luck 120 1 false
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=8}] run tag @s add usingAntidotePotion
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=8}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=9}] run function hp:potions/essence_of_gillyweed
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=9}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=10}] run effect give @s minecraft:invisibility 20 1
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=10}] run tag @s add usingInvisibilityPotion
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=10}] run tag @s add playerIsInvisible
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=10}] run tag @s add invisCape
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=10}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=11}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=11}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=12}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=12}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=13}] run effect give @s minecraft:instant_health 1 2 true
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=13}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=14}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=14}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=15}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=15}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=16}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=16}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=17}] run effect give @s minecraft:instant_health 1 2 true
execute as @s[tag=useQuickSlot1,scores={quickSlot1ID=17}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1


# Quickslot 2
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=3}] run effect give @s minecraft:instant_health 1 4 true
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=3}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=3}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=4}] run scoreboard players add @s manaAmount 7000
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=4}] if score @s manaAmount > @s maxManaAmount run scoreboard players operation @s manaAmount = @s maxManaAmount
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=4}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=5}] run effect give @s minecraft:absorption 120 24 false
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=5}] run tag @s add usingAbsorptionPotion
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=5}] run scoreboard players set @s maxHealth 300
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=5,playerID=1}] run bossbar set minecraft:player1health max 300
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=5,playerID=2}] run bossbar set minecraft:player2health max 300
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=5,playerID=3}] run bossbar set minecraft:player3health max 300
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=5,playerID=4}] run bossbar set minecraft:player4health max 300
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=5}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=6}] run effect give @s minecraft:strength 60 1
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=6}] run tag @s add usingStrengthPotion
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=6}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=7}] run effect give @s minecraft:speed 60 2 false
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=7}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=8}] run effect give @s minecraft:luck 120 1 false
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=8}] run tag @s add usingAntidotePotion
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=8}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=9}] run function hp:potions/essence_of_gillyweed
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=9}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=10}] run effect give @s minecraft:invisibility 20 1
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=10}] run tag @s add usingInvisibilityPotion
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=10}] run tag @s add playerIsInvisible
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=10}] run tag @s add invisCape
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=10}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=11}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=11}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=12}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=12}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=13}] run effect give @s minecraft:instant_health 1 2 true
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=13}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=14}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=14}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=15}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=15}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=16}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=16}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1

execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=17}] run effect give @s minecraft:instant_health 1 2 true
execute as @s[tag=useQuickSlot2,scores={quickSlot2ID=17}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1



# From Inventory
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=3}] run effect give @s minecraft:instant_health 1 4 true
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=3}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=3}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=4}] run scoreboard players add @s manaAmount 7000
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=4}] if score @s manaAmount > @s maxManaAmount run scoreboard players operation @s manaAmount = @s maxManaAmount
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=4}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=5}] run effect give @s minecraft:absorption 120 24 false
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=5}] run tag @s add usingAbsorptionPotion
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=5}] run scoreboard players set @s maxHealth 300
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=5,playerID=1}] run bossbar set minecraft:player1health max 300
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=5,playerID=2}] run bossbar set minecraft:player2health max 300
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=5,playerID=3}] run bossbar set minecraft:player3health max 300
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=5,playerID=4}] run bossbar set minecraft:player4health max 300
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=5}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=6}] run effect give @s minecraft:strength 60 1
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=6}] run tag @s add usingStrengthPotion
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=6}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=7}] run effect give @s minecraft:speed 60 2 false
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=7}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=8}] run effect give @s minecraft:luck 120 1 false
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=8}] run tag @s add usingAntidotePotion
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=8}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=9}] run function hp:potions/essence_of_gillyweed
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=9}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=10}] run effect give @s minecraft:invisibility 20 1
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=10}] run tag @s add usingInvisibilityPotion
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=10}] run tag @s add playerIsInvisible
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=10}] run tag @s add invisCape
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=10}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=11}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=11}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1

execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=12}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=12}] at @s run playsound minecraft:custom.ui.consumable.drink master @a ~ ~ ~ 1 1

execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=13}] run effect give @s minecraft:instant_health 1 2 true
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=13}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1

execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=14}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=14}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1

execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=15}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=15}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1

execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=16}] run effect give @s minecraft:instant_health 1 1 true
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=16}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1

execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=17}] run effect give @s minecraft:instant_health 1 2 true
execute as @s[tag=consumeFromInventory] if entity @e[tag=inventoryOption,tag=selected,scores={InvItemID=17}] at @s run playsound minecraft:custom.ui.consumable.eat master @a ~ ~ ~ 1 1

# Remove from inventory
tag @e[tag=inventory] remove inventory
execute as @s[scores={playerID=1}] run tag 0-0-5-0-1 add inventory
execute as @s[scores={playerID=2}] run tag 0-0-5-0-2 add inventory
execute as @s[scores={playerID=3}] run tag 0-0-5-0-3 add inventory
execute as @s[scores={playerID=4}] run tag 0-0-5-0-4 add inventory

execute as @s[tag=useQuickSlot1] run scoreboard players operation @s InvItemID = @s quickSlot1ID
execute as @s[tag=useQuickSlot2] run scoreboard players operation @s InvItemID = @s quickSlot2ID

# The item should stop being inspected if you consumed the entire stack
execute as @s[tag=consumeFromInventory] if score @e[tag=inspectedItem,tag=inventoryOption,limit=1] InvItemCount matches 1 run tag @s add stopInspectingItem

execute as @s[tag=consumeFromInventory] run scoreboard players operation @s InvItemID = @e[tag=inspectedItem,tag=inventoryOption,limit=1] InvItemID

scoreboard players set @s InvItemCount -1

function hp:inventory/give_player_item
execute as @e[tag=inventory,limit=1] run function hp:inventory/read_inventory
execute as @s[tag=consumeFromInventory] run function hp:draw_hotbar/draw_inventory

execute as @s[tag=consumeFromInventory] run tag @s remove hasPressedF

tag @s[tag=consumeFromInventory] remove consumeFromInventory

# Put at the end so the item gets removed properly
execute as @s[tag=stopInspectingItem] run tag @s add preventDoubleExecution
execute as @s[tag=stopInspectingItem] run tag @e[tag=inspectedItem,limit=1] remove inspectedItem
execute as @s[tag=stopInspectingItem] store success score @s viewChanged run tag @s remove invInspectItem
execute as @s[tag=stopInspectingItem] run tag @s remove stopInspectingItem
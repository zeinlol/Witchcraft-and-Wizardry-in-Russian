# Particles
particle minecraft:large_smoke ~ ~1 ~ 1 0.5 1 0.02 150
particle minecraft:dust 0.1 0.1 0.1 2 ~ ~0.5 ~ 1 0.5 1 0.01 100 force

# Sound
playsound minecraft:custom.inventory.items.dungbomb master @a

# Damage
execute at @s if entity @e[tag=creature,distance=..4] run function hp:items/dungbomb_hit_enemy

# Timer
scoreboard players set @s dungbomb 15

# Remove from inventory
tag @e[tag=inventory] remove inventory
execute as @s[scores={playerID=1}] run tag 0-0-5-0-1 add inventory
execute as @s[scores={playerID=2}] run tag 0-0-5-0-2 add inventory
execute as @s[scores={playerID=3}] run tag 0-0-5-0-3 add inventory
execute as @s[scores={playerID=4}] run tag 0-0-5-0-4 add inventory

execute as @s[tag=useQuickSlot1] run scoreboard players operation @s InvItemID = @s quickSlot1ID
execute as @s[tag=useQuickSlot2] run scoreboard players operation @s InvItemID = @s quickSlot2ID
scoreboard players set @s InvItemCount -1
function hp:inventory/give_player_item
execute as @e[tag=inventory,limit=1] run function hp:inventory/read_inventory
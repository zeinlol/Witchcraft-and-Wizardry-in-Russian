# Set Inventory
tag @e[tag=inventory] remove inventory
execute as @p[tag=activePlayer,scores={playerID=1}] run tag @e[tag=player1Inventory] add inventory
execute as @p[tag=activePlayer,scores={playerID=2}] run tag @e[tag=player2Inventory] add inventory
execute as @p[tag=activePlayer,scores={playerID=3}] run tag @e[tag=player3Inventory] add inventory
execute as @p[tag=activePlayer,scores={playerID=4}] run tag @e[tag=player4Inventory] add inventory

# Set ID to keys
scoreboard players set @p[tag=activePlayer] InvItemID 2
scoreboard players set @p[tag=activePlayer] InvItemCount -1
execute as @p[tag=activePlayer] run function hp:inventory/give_player_item
scoreboard players remove @p[tag=activePlayer] keys 1

function hp:misc/open_door
particle minecraft:block clay ^ ^1.1 ^0.5 0.2 0.2 0.2 1 20
playsound minecraft:custom.spell.alohomora.lock master @a ~ ~ ~
playsound minecraft:custom.ui.inventory.game_inventory.key.picked_up_key master @a ~ ~ ~


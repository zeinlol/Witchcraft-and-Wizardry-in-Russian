# Set Inventory
tag @e[tag=inventory] remove inventory
execute as @s[scores={playerID=1}] run tag 0-0-5-0-1 add inventory
execute as @s[scores={playerID=2}] run tag 0-0-5-0-2 add inventory
execute as @s[scores={playerID=3}] run tag 0-0-5-0-3 add inventory
execute as @s[scores={playerID=4}] run tag 0-0-5-0-4 add inventory

# Determine item picked up
execute if entity @e[tag=hover,limit=1,tag=moneySmall] run scoreboard players set @s InvItemID 1
execute if entity @e[tag=hover,limit=1,tag=moneySmall] run data merge entity @e[tag=specialHeader,limit=1] {CustomName:"{\"text\":\"≈ \"}"}
execute if entity @e[tag=hover,limit=1,tag=moneySmall] if score global Random matches 0..33 run scoreboard players set @s InvItemCount 3
execute if entity @e[tag=hover,limit=1,tag=moneySmall] if score global Random matches 34..66 run scoreboard players set @s InvItemCount 4
execute if entity @e[tag=hover,limit=1,tag=moneySmall] if score global Random matches 67..100 run scoreboard players set @s InvItemCount 5
execute if entity @e[tag=hover,limit=1,tag=moneySmall] run function hp:inventory/give_player_item
execute if entity @e[tag=hover,limit=1,tag=moneySmall] at @s run playsound minecraft:custom.ui.inventory.coin master @a
execute if entity @e[tag=hover,limit=1,tag=moneyMedium] run scoreboard players set @s InvItemID 1
execute if entity @e[tag=hover,limit=1,tag=moneyMedium] run data merge entity @e[tag=specialHeader,limit=1] {CustomName:"{\"text\":\"≈ \"}"}
execute if entity @e[tag=hover,limit=1,tag=moneyMedium] if score global Random matches 0..33 run scoreboard players set @s InvItemCount 7
execute if entity @e[tag=hover,limit=1,tag=moneyMedium] if score global Random matches 34..66 run scoreboard players set @s InvItemCount 8
execute if entity @e[tag=hover,limit=1,tag=moneyMedium] if score global Random matches 67..100 run scoreboard players set @s InvItemCount 10
execute if entity @e[tag=hover,limit=1,tag=moneyMedium] run function hp:inventory/give_player_item
execute if entity @e[tag=hover,limit=1,tag=moneyMedium] at @s run playsound minecraft:custom.ui.inventory.coin master @a
execute if entity @e[tag=hover,limit=1,tag=moneyLarge] run scoreboard players set @s InvItemID 1
execute if entity @e[tag=hover,limit=1,tag=moneyLarge] run data merge entity @e[tag=specialHeader,limit=1] {CustomName:"{\"text\":\"≈ \"}"}
execute if entity @e[tag=hover,limit=1,tag=moneyLarge] if score global Random matches 0..40 run scoreboard players set @s InvItemCount 15
execute if entity @e[tag=hover,limit=1,tag=moneyLarge] if score global Random matches 41..80 run scoreboard players set @s InvItemCount 17
execute if entity @e[tag=hover,limit=1,tag=moneyLarge] if score global Random matches 81..100 run scoreboard players set @s InvItemCount 20
execute if entity @e[tag=hover,limit=1,tag=moneyLarge] run function hp:inventory/give_player_item
execute if entity @e[tag=hover,limit=1,tag=moneyLarge] at @s run playsound minecraft:custom.ui.inventory.coin master @a
execute if entity @e[tag=hover,limit=1,tag=moneyLarge] run scoreboard players set @s InvItemID 1
execute if entity @e[tag=hover,limit=1,tag=goldenSnitch] run data merge entity @e[tag=specialHeader,limit=1] {CustomName:"{\"text\":\" \"}"}
execute if entity @e[tag=hover,limit=1,tag=goldenSnitch] run scoreboard players set @s InvItemCount 1
execute if entity @e[tag=hover,limit=1,tag=goldenSnitch] run scoreboard players add global snitches 1
execute if entity @e[tag=hover,limit=1,tag=goldenSnitch] at @s run playsound minecraft:custom.ui.learn.spell_learned master @a
execute if entity @e[tag=hover,limit=1,tag=goldenSnitch] at @s run playsound minecraft:custom.gameplay_element.snitch master @a
execute if entity @e[tag=hover,limit=1,tag=diadem] run scoreboard players set @s InvItemID 108
execute if entity @e[tag=hover,limit=1,tag=diadem] run scoreboard players set @s InvItemCount 1
execute if entity @e[tag=hover,limit=1,tag=diadem] run function hp:inventory/give_player_item
execute if entity @e[tag=hover,limit=1,tag=diadem] run data merge entity @e[tag=specialHeader,limit=1] {CustomName:"{\"text\":\" \"}"}
execute if entity @e[tag=hover,limit=1,tag=diadem] at @s run playsound minecraft:custom.ui.event11 master @a
execute if entity @e[tag=hover,limit=1,tag=diadem] at @s run playsound minecraft:custom.inventory.pickup.ring master @a
execute if entity @e[tag=hover,limit=1,tag=axe] run scoreboard players set @s InvItemID 115
execute if entity @e[tag=hover,limit=1,tag=axe] run scoreboard players set @s InvItemCount 1
execute if entity @e[tag=hover,limit=1,tag=axe] run function hp:inventory/give_player_item
execute if entity @e[tag=hover,limit=1,tag=axe] run data merge entity @e[tag=specialHeader,limit=1] {CustomName:"{\"text\":\" \"}"}
execute if entity @e[tag=hover,limit=1,tag=axe] at @s run playsound minecraft:custom.inventory.pickup.wood master @a
execute if entity @e[tag=hover,limit=1,tag=fancySword] run scoreboard players set @s InvItemID 117
execute if entity @e[tag=hover,limit=1,tag=fancySword] run scoreboard players set @s InvItemCount 1
execute if entity @e[tag=hover,limit=1,tag=fancySword] run function hp:inventory/give_player_item
execute if entity @e[tag=hover,limit=1,tag=fancySword] run data merge entity @e[tag=specialHeader,limit=1] {CustomName:"{\"text\":\" \"}"}
execute if entity @e[tag=hover,limit=1,tag=fancySword] at @s run playsound minecraft:custom.inventory.pickup.sword master @a
execute if entity @e[tag=hover,limit=1,tag=flyingKey1] run scoreboard players set @s InvItemID 2
execute if entity @e[tag=hover,limit=1,tag=flyingKey1] run scoreboard players add @s keys 1
execute if entity @e[tag=hover,limit=1,tag=flyingKey1] run scoreboard players set @s InvItemCount 1
execute if entity @e[tag=hover,limit=1,tag=flyingKey1] run scoreboard players set hasCollectedFlyingKey sharedQuests 1
execute if entity @e[tag=hover,limit=1,tag=flyingKey1] run function hp:inventory/give_player_item
execute if entity @e[tag=hover,limit=1,tag=flyingKey1] run data merge entity @e[tag=specialHeader,limit=1] {CustomName:"{\"text\":\" \"}"}
execute if entity @e[tag=hover,limit=1,tag=flyingKey1] at @s run playsound minecraft:custom.ui.inventory.game_inventory.key.picked_up_key master @a
execute if entity @e[tag=hover,limit=1,tag=fluxweed] run scoreboard players set @s InvItemID 46
execute if entity @e[tag=hover,limit=1,tag=fluxweed] run scoreboard players set @s InvItemCount 1
execute if entity @e[tag=hover,limit=1,tag=fluxweed] run function hp:inventory/give_player_item
execute if entity @e[tag=hover,limit=1,tag=fluxweed] run data merge entity @e[tag=specialHeader,limit=1] {CustomName:"{\"text\":\" \"}"}
execute if entity @e[tag=hover,limit=1,tag=fluxweed] at @s run playsound minecraft:custom.inventory.pickup.herb master @a

# Destroy
execute as @e[tag=hover,limit=1] run tag @s remove interactable
execute as @e[tag=hover,limit=1,tag=!fluxweed] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{}]}
execute as @e[tag=hover,limit=1,tag=fluxweed] run data merge entity @s {Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b,tag:{Unbreakable:1b,Damage:1276}}]}
execute as @e[tag=hover,limit=1] store result entity @s ArmorItems[3].tag.sessionID int 1 run scoreboard players operation @s sessionID = global sessionID

# Set up title
scoreboard players operation @s pickUpAmount = @s InvItemCount
scoreboard players set @s pickUpTimer 30


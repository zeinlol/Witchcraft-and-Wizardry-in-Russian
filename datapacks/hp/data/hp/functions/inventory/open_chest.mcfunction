execute if entity @s[tag=!inInventory] run tag @e[tag=inventory] remove inventory
execute if entity @s[tag=!inInventory] as @e[tag=hover,tag=chest,limit=1] run tag @s add inventory
execute if entity @s[tag=!inInventory] if entity @e[tag=hover,tag=chest] run tag @s add isContainer
execute if entity @s[tag=!inInventory] as @e[tag=hover,tag=chest,limit=1] run tag @s remove closeChest
execute if entity @s[tag=!inInventory] as @e[tag=hover,tag=chest,limit=1] run tag @s add openedChest
execute if entity @s[tag=!inInventory] as @e[tag=hover,tag=largeChest,limit=1] at @s run playsound minecraft:block.chest.open master @a ~ ~ ~ 0.35 1
execute if entity @s[tag=!inInventory] as @e[tag=hover,tag=smallChest,limit=1] at @s run playsound minecraft:block.chest.locked master @a ~ ~ ~ 0.55 1
execute if entity @s[tag=!inInventory] as @e[tag=hover,tag=chest,limit=1] run scoreboard players operation @s playerID = @p[tag=activePlayer] playerID
execute if entity @s[tag=!inInventory] if entity @e[tag=hover,tag=chest,limit=1] run tag @s add enterInventory
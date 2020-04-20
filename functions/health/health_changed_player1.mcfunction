execute if score @s tmp < @s currentHealth run scoreboard players set @s playHealthAnim 20
execute if score @s tmp < @s currentHealth run scoreboard players set @s timeSinceDamage 1
execute at @s unless entity @e[tag=BrackiumArea,distance=..1.5] if score @s tmp < @s currentHealth run effect clear @s minecraft:regeneration
execute at @s unless entity @e[tag=BrackiumArea,distance=..1.5] if score @s tmp < @s currentHealth run tag @s remove healing

execute as @s[scores={relogTimer=0}] store result bossbar minecraft:player1health value run scoreboard players operation @s currentHealth = @s tmp
execute as @s[scores={relogTimer=1..}] run bossbar set minecraft:player1health value 200
execute as @s[scores={relogTimer=1..}] run scoreboard players set @s currentHealth 200

bossbar set minecraft:player1health name [{"score":{"name":"@s","objective":"currentHealth"},"bold":true,"color":"white"},{"text":" / ","bold":false,"color":"white"},{"score":{"name":"@s","objective":"maxHealth"},"bold":true,"color":"white"}]
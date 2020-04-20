# Brackium
execute at @s run tp @s ~ ~ ~ ~3 ~ 

execute at @s run particle minecraft:dust 0 1 0.05 2 ^ ^ ^2.5 0 0 0 0 1 force
execute at @s run particle minecraft:dust 0 1 0.05 2 ^2.03545243 ^ ^-1.45152796 0 0 0 0 1 force
execute at @s run particle minecraft:dust 0 1 0.05 2 ^-2.03545243 ^ ^-1.45152796 0 0 0 0 1 force

execute as @s[scores={tmp=0}] at @s run particle minecraft:note ~ ~.2 ~ 0.5 0 0.5 0 1 normal
execute as @s[scores={tmp=0}] run scoreboard players set @s tmp 7
execute as @s[scores={tmp=1..}] run scoreboard players remove @s tmp 1

execute at @s run scoreboard players set @p[distance=..4.75] timeSinceDamage 199
execute at @s run tag @p[distance=..4.75] add brackiumEmendoHealing
scoreboard players remove @s idle 1
# execute as @s[scores={idle=1}] at @s run stopsound @a master minecraft:custom.spell.brackium.brackium_emendo_loop 
execute as @s[scores={idle=1}] at @s run playsound minecraft:custom.spell.brackium.brackium_emendo_cast master @a ~ ~ ~
kill @s[scores={idle=0}]
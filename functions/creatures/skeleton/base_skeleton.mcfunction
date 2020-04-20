# Despawn if nest skeleton
execute as @s[tag=belongingToNest] at @s unless entity @p[distance=..60] run function hp:creatures/remove_creature

# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100
execute if score @s creatureHealth < @s oldHealth run function hp:creatures/skeleton/skeleton_take_damage
scoreboard players operation @s oldHealth = @s creatureHealth

# Kill skeleton
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/skeleton/skeleton_death
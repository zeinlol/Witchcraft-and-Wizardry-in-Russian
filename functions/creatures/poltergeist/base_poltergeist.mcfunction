# Despawn if nest toad
execute as @s[tag=belongingToNest] at @s unless entity @p[distance=..40] run function hp:creatures/remove_creature

# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100
scoreboard players operation @s oldHealth = @s creatureHealth

# Kill poltergeist
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/poltergeist/poltergeist_death
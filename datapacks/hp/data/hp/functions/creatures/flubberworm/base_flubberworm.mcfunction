# Despawn if nest flubberworm
execute as @s[tag=belongingToNest] at @s unless entity @p[distance=..40] run function hp:creatures/remove_creature

# Health management
execute store result score @s creatureHealth run data get entity @s Health
scoreboard players remove @s creatureHealth 100
execute if score @s creatureHealth < @s oldHealth at @s run playsound minecraft:custom.creatures.rat.wound master @a ~ ~ ~ 1
scoreboard players operation @s oldHealth = @s creatureHealth

# Kill flubberworm
execute as @s[scores={creatureHealth=..0}] run function hp:creatures/flubberworm/flubberworm_death

execute store result entity @s Rotation[1] float 1 run scoreboard players set @s tmp 0

# Idle sounds
scoreboard players add @s tmp3 1
execute as @s[scores={tmp3=50..}] if score global Random matches ..5 run tag @s add playIdle 
execute as @s[tag=playIdle] at @s run playsound minecraft:custom.creatures.rat.squeek master @a ~ ~ ~ 1
execute as @s[tag=playIdle] run scoreboard players set @s tmp3 0
execute as @s[tag=playIdle] run function hp:misc/random_number
execute as @s[tag=playIdle] run tag @s remove playIdle
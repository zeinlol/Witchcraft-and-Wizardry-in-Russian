# Idle sounds
scoreboard players add @s tmp3 1
execute as @s[scores={tmp3=50..}] if score global Random matches ..5 run tag @s add playIdle 
execute as @s[tag=playIdle] at @s run playsound minecraft:custom.creatures.toad.idle master @a ~ ~ ~ 1
execute as @s[tag=playIdle] run scoreboard players set @s tmp3 0
execute as @s[tag=playIdle] run function hp:misc/random_number
execute as @s[tag=playIdle] run tag @s remove playIdle
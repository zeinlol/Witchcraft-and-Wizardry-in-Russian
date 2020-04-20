# Mandrakes
execute as @e[type=armor_stand,tag=mandrake] run function hp:creatures/mandrake/base_mandrake

# Targetting entities for shulker bullets
execute if entity 0-0-0-0-1 at @p[scores={playerID=1}] run tp 0-0-0-0-1 ~ ~1.5 ~
execute if entity 0-0-0-0-2 at @p[scores={playerID=2}] run tp 0-0-0-0-2 ~ ~1.5 ~
execute if entity 0-0-0-0-3 at @p[scores={playerID=3}] run tp 0-0-0-0-3 ~ ~1.5 ~
execute if entity 0-0-0-0-4 at @p[scores={playerID=4}] run tp 0-0-0-0-4 ~ ~1.5 ~
execute if entity 0-0-0-0-1 unless entity @e[tag=darkWizardProjectile] run kill 0-0-0-0-1
execute if entity 0-0-0-0-2 unless entity @e[tag=darkWizardProjectile] run kill 0-0-0-0-2
execute if entity 0-0-0-0-3 unless entity @e[tag=darkWizardProjectile] run kill 0-0-0-0-3
execute if entity 0-0-0-0-4 unless entity @e[tag=darkWizardProjectile] run kill 0-0-0-0-4

execute as 0-0-0-0-5 unless entity 0-0-0-0-a run kill @s
execute as 0-0-0-0-6 unless entity 0-0-0-0-b run kill @s
execute as 0-0-0-0-7 unless entity 0-0-0-0-c run kill @s
execute as 0-0-0-0-8 unless entity 0-0-0-0-d run kill @s
execute as 0-0-0-0-9 unless entity 0-0-0-0-e run kill @s


# Normal creatures
execute as @e[type=armor_stand,tag=creaturePointSpawn,tag=!disable] at @s run function hp:creatures/nest_controller
execute as @e[type=!item_frame,tag=creature] at @s run function hp:creatures/creature_controller
execute as @e[type=wither_skeleton,tag=hagridLayer1] at @s run function hp:misc/hagrid

# execute as @e[tag=belongingToNest,tag=!hasExecuted] run function hp:creatures/despawn_creature_belonging_to_unloaded_nest
# execute as @e[tag=hasExecuted] run tag @s remove hasExecuted

# Death eater spell
execute as @e[type=armor_stand,tag=deathEaterSpellDirection] at @s run function hp:creatures/death_eater/death_eater_spell

# In case some animal visuals get left behind clean them up every few seconds
scoreboard players add clearCreatureVisual global 1
execute if score clearCreatureVisual global matches 40.. as @e[tag=creatureVisual] run function hp:creatures/remove_creature_visuals

# Clear creature drops
execute as @e[type=armor_stand,tag=creatureDrop,scores={idle=1..},tag=!inventory,tag=!disabledPlayer1Inventory,tag=!disabledPlayer2Inventory,tag=!disabledPlayer3Inventory,tag=!disabledPlayer4Inventory] store result entity @s ArmorItems[3].tag.idle int 1 run scoreboard players remove @s idle 1
execute as @e[type=armor_stand,tag=creatureDrop] unless score @s idle matches 1.. run kill @s

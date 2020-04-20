# Animation
tag @s add anim_alohomora

# Particles
particle minecraft:nautilus ^ ^2 ^1 0.1 0.1 0.1 2 30 force

# Sound
execute unless entity @e[tag=hover,limit=1,tag=stunnedArmorSuit] unless entity @e[tag=hover,limit=1,tag=jumpPlant] unless entity @e[tag=hover,limit=1,tag=magnet] run playsound minecraft:custom.spell.vera_verto.vera_verto_3 master @a ~ ~ ~ 1

# Activate magnet
execute as @e[tag=hover,limit=1,tag=magnet] unless score global magnetPriority matches 1.. unless score @s animTest matches 1.. run scoreboard players set @s animTest 27

# Activate jump spring
execute as @e[tag=hover,limit=1,tag=jumpPlant] unless score @s animTest matches 1.. run scoreboard players set @s animTest 9

# Transfigure armour suit
execute as @e[tag=hover,limit=1,tag=stunnedArmorSuit] at @s run function hp:creatures/armor_suit/transfigure_armor_suit

# Clear creature visuals if they are not riding a controller entity
execute at @s[tag=ratVisual] unless entity @e[tag=ratCreature,distance=..1] run kill @s
execute at @s[tag=monsterBookVisual] unless entity @e[tag=monsterBookCreature,distance=..1] run kill @s
execute at @s[tag=pixieVisual] unless entity @e[tag=pixieCreature,distance=..1] run kill @s

execute at @s[tag=pixieVisual] unless entity @e[tag=pixieCreature,distance=..1] run kill @s

execute at @s[tag=skeletonArmVisual] unless entity @e[tag=skeletonArm,distance=..1] run kill @s
execute at @s[tag=skeletonFallenBodyVisual] unless entity @e[tag=skeletonFallenBody,distance=..1] run kill @s

# Reset test score
scoreboard players set clearCreatureVisual global 0
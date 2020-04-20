execute at @s positioned ~ ~1 ~ run kill @e[tag=skeletonFallenBodyVisual,limit=1,sort=nearest]
execute at @s run playsound minecraft:entity.skeleton.death master @a ~ ~ ~
execute at @s run particle minecraft:block minecraft:white_wool ~ ~ ~ 0.4 0.2 0.4 5 20
execute at @s run particle minecraft:cloud ~ ~ ~ 0.3 0.2 0.3 0.035 20

# Grant mana on kill
execute as @s[scores={damagedByID=1}] run scoreboard players add @p[scores={playerID=1}] manaAmount 300
execute as @s[scores={damagedByID=2}] run scoreboard players add @p[scores={playerID=2}] manaAmount 300
execute as @s[scores={damagedByID=3}] run scoreboard players add @p[scores={playerID=3}] manaAmount 300
execute as @s[scores={damagedByID=4}] run scoreboard players add @p[scores={playerID=4}] manaAmount 300

kill @s
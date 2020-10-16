execute at @s positioned ~ ~1 ~ run kill @e[tag=skeletonArmVisual,limit=1,sort=nearest]
execute at @s run playsound minecraft:entity.skeleton.hurt master @a ~ ~ ~
execute at @s run particle minecraft:block minecraft:white_wool ~ ~ ~ 0.2 0.2 0.2 5 10
execute at @s run particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.035 3

# Grant mana on kill
execute as @s[scores={damagedByID=1}] run scoreboard players add @p[scores={playerID=1}] manaAmount 100
execute as @s[scores={damagedByID=2}] run scoreboard players add @p[scores={playerID=2}] manaAmount 100
execute as @s[scores={damagedByID=3}] run scoreboard players add @p[scores={playerID=3}] manaAmount 100
execute as @s[scores={damagedByID=4}] run scoreboard players add @p[scores={playerID=4}] manaAmount 100

kill @s
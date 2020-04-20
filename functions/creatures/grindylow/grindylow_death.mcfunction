# Sound
execute at @s run playsound minecraft:entity.silverfish.death master @a ~ ~ ~ 1

# Grant mana on kill
execute as @s[scores={damagedByID=1}] run scoreboard players add @p[scores={playerID=1}] manaAmount 300
execute as @s[scores={damagedByID=2}] run scoreboard players add @p[scores={playerID=2}] manaAmount 300
execute as @s[scores={damagedByID=3}] run scoreboard players add @p[scores={playerID=3}] manaAmount 300
execute as @s[scores={damagedByID=4}] run scoreboard players add @p[scores={playerID=4}] manaAmount 300

# Quest Hook
execute as @s[scores={damagedByID=1}] run scoreboard players add @p[scores={playerID=1}] grindylowsK 1
execute as @s[scores={damagedByID=2}] run scoreboard players add @p[scores={playerID=2}] grindylowsK 1
execute as @s[scores={damagedByID=3}] run scoreboard players add @p[scores={playerID=3}] grindylowsK 1
execute as @s[scores={damagedByID=4}] run scoreboard players add @p[scores={playerID=4}] grindylowsK 1

kill @s

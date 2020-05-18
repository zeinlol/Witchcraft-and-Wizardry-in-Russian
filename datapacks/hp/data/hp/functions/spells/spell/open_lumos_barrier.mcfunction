tag @s add openLumosEnterArea
execute store result score @s blockadeID run data get entity @s ArmorItems[3].tag.blockadeID
# Ollivander Cellar
execute as @s[scores={blockadeID=1}] run fill 2817 41 991 2817 43 988 minecraft:cave_air replace minecraft:barrier
execute as @s[scores={blockadeID=2}] run fill 2813 41 1002 2816 43 1002 minecraft:cave_air replace minecraft:barrier
# Lumos Spell Challenge
execute as @s[scores={blockadeID=3}] run fill 5084 94 19 5084 98 23 minecraft:cave_air replace minecraft:barrier
# Alohomora Spell Challenge
execute as @s[scores={blockadeID=4}] run fill 6474 43 18 6474 46 15 minecraft:cave_air replace minecraft:barrier
execute as @s[scores={blockadeID=4}] run fill 6470 43 18 6470 46 15 minecraft:cave_air replace minecraft:barrier
execute as @s[scores={blockadeID=5}] run fill 6498 42 13 6498 46 15 minecraft:cave_air replace minecraft:barrier

# Shrieking Shack Passage
execute as @s[scores={blockadeID=6}] run fill 5422 56 2787 5425 59 2787 minecraft:cave_air replace minecraft:barrier
execute as @s[scores={blockadeID=7}] run fill 739 44 354 735 46 354 minecraft:cave_air replace minecraft:barrier

# The Тайная Комната
execute as @s[scores={blockadeID=8}] run fill 6501 46 954 6499 50 954 minecraft:cave_air replace minecraft:barrier
execute as @s[scores={blockadeID=9}] run fill 6492 46 920 6490 50 920 minecraft:cave_air replace minecraft:barrier

# Honeydukes cellar
execute as @s[scores={blockadeID=10}] run fill 5432 92 2488 5436 95 2488 minecraft:cave_air replace minecraft:barrier
# Подземелья Сладкого Королевства hogwarts
execute as @s[scores={blockadeID=11}] run fill 739 44 354 735 47 354 minecraft:cave_air replace minecraft:barrier
# Whomping willow
execute as @s[scores={blockadeID=12}] run fill 491 38 399 491 40 404 minecraft:cave_air replace minecraft:barrier
# Shrieking Shack
execute as @s[scores={blockadeID=13}] run fill 5422 56 2787 5425 59 2787 minecraft:cave_air replace minecraft:barrier
# Hogwarts puzzle
execute as @s[scores={blockadeID=14}] run fill 670 47 268 670 50 268 minecraft:cave_air replace minecraft:barrier
tag @s remove openMandrakeBarrier
execute store result score @s blockadeID run data get entity @s ArmorItems[3].tag.blockadeID
# Greenhouse 1
execute as @s[scores={blockadeID=1}] run fill 745 52 45 745 57 43 minecraft:barrier replace minecraft:air
# Greenhouse 2
execute as @s[scores={blockadeID=2}] run fill 744 58 28 744 61 28 minecraft:barrier replace minecraft:air
# Greenhouse 3
execute as @s[scores={blockadeID=3}] run fill 809 56 40 809 59 44 minecraft:barrier replace minecraft:air
execute as @s[scores={blockadeID=4}] run fill 816 58 40 816 60 44 minecraft:barrier replace minecraft:air
# Greenouse 4
execute as @s[scores={blockadeID=5}] run fill 796 53 25 796 56 25 minecraft:barrier replace minecraft:air
execute as @s[scores={blockadeID=6}] run fill 807 53 25 807 56 25 minecraft:barrier replace minecraft:air
execute as @s[scores={blockadeID=7}] run fill 812 53 31 812 56 31 minecraft:barrier replace minecraft:air
execute as @s[scores={blockadeID=8}] run fill 823 53 31 823 56 31 minecraft:barrier replace minecraft:air
execute as @s[scores={blockadeID=9}] run fill 828 53 25 828 56 25 minecraft:barrier replace minecraft:air

# Vera Verto
execute as @s[scores={blockadeID=10}] run fill 8602 71 3 8602 76 -4 minecraft:barrier replace minecraft:air
execute as @s[scores={blockadeID=11}] run fill 8674 71 -7 8674 76 -9 minecraft:barrier replace minecraft:air

# Hogwarts Puzzles
execute as @s[scores={blockadeID=12}] run fill 787 52 125 787 56 125 minecraft:barrier replace minecraft:air
execute as @s[scores={blockadeID=13}] run fill 745 8 -27 745 11 -27 minecraft:barrier replace minecraft:air
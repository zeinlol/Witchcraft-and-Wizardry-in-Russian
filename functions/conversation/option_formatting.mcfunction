# Formatting. Team prefixes and suffixes don't work since team formatting only appears in tellraw if the selector targets more than one entity. Nice job Mojang :P


# Cleanup
tag 0-0-6-0-5 remove 1selected
tag 0-0-6-0-6 remove 1selected
tag 0-0-6-0-7 remove 1selected
tag 0-0-6-0-8 remove 1selected
tag 0-0-6-0-5 remove 2selected
tag 0-0-6-0-6 remove 2selected
tag 0-0-6-0-7 remove 2selected
tag 0-0-6-0-8 remove 2selected
tag 0-0-6-0-5 remove 3selected
tag 0-0-6-0-6 remove 3selected
tag 0-0-6-0-7 remove 3selected
tag 0-0-6-0-8 remove 3selected
tag 0-0-6-0-5 remove 4selected
tag 0-0-6-0-6 remove 4selected
tag 0-0-6-0-7 remove 4selected
tag 0-0-6-0-8 remove 4selected

tag 0-0-6-0-5 remove 1unselected
tag 0-0-6-0-6 remove 1unselected
tag 0-0-6-0-7 remove 1unselected
tag 0-0-6-0-8 remove 1unselected
tag 0-0-6-0-5 remove 2unselected
tag 0-0-6-0-6 remove 2unselected
tag 0-0-6-0-7 remove 2unselected
tag 0-0-6-0-8 remove 2unselected
tag 0-0-6-0-5 remove 3unselected
tag 0-0-6-0-6 remove 3unselected
tag 0-0-6-0-7 remove 3unselected
tag 0-0-6-0-8 remove 3unselected
tag 0-0-6-0-5 remove 4unselected
tag 0-0-6-0-6 remove 4unselected
tag 0-0-6-0-7 remove 4unselected
tag 0-0-6-0-8 remove 4unselected

# Selected
execute as 0-0-6-0-1 if entity @s[tag=convSelected] run tag @e[type=armor_stand,tag=convFormatting,limit=4] add 1selected
execute as 0-0-6-0-2 if entity @s[tag=convSelected] run tag @e[type=armor_stand,tag=convFormatting,limit=4] add 2selected
execute as 0-0-6-0-3 if entity @s[tag=convSelected] run tag @e[type=armor_stand,tag=convFormatting,limit=4] add 3selected
execute as 0-0-6-0-4 if entity @s[tag=convSelected] run tag @e[type=armor_stand,tag=convFormatting,limit=4] add 4selected


# Not selected
execute as 0-0-6-0-1 if entity @s[tag=!convSelected] run tag @e[type=armor_stand,tag=convFormatting,limit=4] add 1unselected
execute as 0-0-6-0-2 if entity @s[tag=!convSelected] run tag @e[type=armor_stand,tag=convFormatting,limit=4] add 2unselected
execute as 0-0-6-0-3 if entity @s[tag=!convSelected] run tag @e[type=armor_stand,tag=convFormatting,limit=4] add 3unselected
execute as 0-0-6-0-4 if entity @s[tag=!convSelected] run tag @e[type=armor_stand,tag=convFormatting,limit=4] add 4unselected
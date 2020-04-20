# Moves enemies out of the hole so you dont have to go looking for them because that's hella awkward

execute at @s[tag=deathEaterCreature] run tag @s add deathEaterApparate

execute at @s[tag=!deathEaterCreature] run particle minecraft:poof ~ ~.2 ~ 0.2 0.4 0.1 0.01 20 normal
execute at @s[tag=!deathEaterCreature] if score global Random matches 1..24 run tp @s 4972 121 10013
execute at @s[tag=!deathEaterCreature] if score global Random matches 25..49 run tp @s 4980 121 10006
execute at @s[tag=!deathEaterCreature] if score global Random matches 50..74 run tp @s 5001 121 10012
execute at @s[tag=!deathEaterCreature] if score global Random matches 75..100 run tp @s 5003 121 10019
execute at @s[tag=!deathEaterCreature] run particle minecraft:poof ~ ~.2 ~ 0.2 0.4 0.1 0.01 20 normal
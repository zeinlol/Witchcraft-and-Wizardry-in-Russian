# Split into small functions for performance
execute unless score noGlowEffect global matches 1 run data merge entity @s {Glowing:1b}
tag @s add glowing
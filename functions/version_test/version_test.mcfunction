# Data version should be unique to each version, so it's a way to test if the map has been opened in 1.14 or later
execute store result score @s tmp run data get entity @s DataVersion

execute if score @s tmp matches 1632.. run tag @s add wrongVersion
execute if score @s tmp matches 1632.. run tag @s add inWrongVersion
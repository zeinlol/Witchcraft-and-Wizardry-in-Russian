execute unless score @s veraVertoID = global veraVertoID run tag @s remove activeVeraVertoObject
execute unless score @s veraVertoID = global veraVertoID run scoreboard players set @s animTest 9

# Make player jump by giving them levitation for a short amount of time
execute as @s[tag=jumpPlant] at @s if entity @p[distance=..1] unless score @p[distance=..1] jumpPlant matches 2.. run scoreboard players set @s animState 30
execute as @s[tag=jumpPlant] at @s if entity @p[distance=..1] unless score @p[distance=..1] jumpPlant matches 2.. run playsound minecraft:custom.gameplay_element.spring_pad master @a ~ ~ ~ 2
execute as @s[tag=jumpPlant] at @s as @p[distance=..1] unless score @s jumpPlant matches 2.. run scoreboard players set @s jumpPlant 10
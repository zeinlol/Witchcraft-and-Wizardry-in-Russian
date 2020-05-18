execute at @s run particle minecraft:bubble_pop ~ ~ ~ 0.3 1 0.3 0.05 100
effect give @s minecraft:water_breathing 120 1
tag @s add usingRespiratioPotion
execute at @s run playsound minecraft:entity.player.swim master @a
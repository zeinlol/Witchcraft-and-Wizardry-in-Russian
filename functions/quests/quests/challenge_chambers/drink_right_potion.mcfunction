scoreboard players set @s fireResistance 50000
effect give @s minecraft:fire_resistance 50 1 false
execute at @s run playsound minecraft:custom.ui.consumable.drink master @a
execute at @s run playsound minecraft:custom.ui.learn.spell_temporarily_unlocked master @a ~ ~ ~ 1 0.7
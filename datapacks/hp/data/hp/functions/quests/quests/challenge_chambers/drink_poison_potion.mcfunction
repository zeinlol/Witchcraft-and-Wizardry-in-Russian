effect give @s minecraft:instant_damage 1 4 true
execute at @s run playsound minecraft:custom.ui.consumable.drink master @a
execute at @s run playsound minecraft:custom.ui.error master @a
execute at @s run function hp:health/poison
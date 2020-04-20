execute store result score cardTest snitchesInWorld run data get entity @s ArmorItems[3].tag."storedItem.WizardCard.count"

execute if score cardTest snitchesInWorld matches 1.. run scoreboard players add wizardCards snitchesInWorld 1
execute if score cardTest snitchesInWorld matches 1.. run tag @s add counted
tag @s add hasScrolled

# Primary
execute if score @s selectCurrent < @s convMaxView run playsound minecraft:ui.button.click master @s[tag=!confirmConvOption] ~ ~ ~ 0.5 1 0.5
execute if score @s selectCurrent < @s convMaxView run scoreboard players add @s[tag=!confirmConvOption] selectCurrent 1
execute if score @s selectCurrent < @s convMaxView as 0-0-6-0-3 if entity @s[tag=convSelected] run scoreboard players add @p[tag=activePlayer,tag=!confirmConvOption] convScroll 1

# Secondary
playsound minecraft:ui.button.click master @s[tag=confirmConvOption,scores={selectSecondary=1}] ~ ~ ~ 0.5 1 0.5
scoreboard players add @s[tag=confirmConvOption,scores={selectSecondary=1}] selectSecondary 1
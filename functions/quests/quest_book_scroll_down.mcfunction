tag @s add hasScrolled

# Primary
execute if score @s selectCurrent < @s convMaxView run playsound minecraft:ui.button.click master @s[scores={questMenu=1..}] ~ ~ ~ 0.5 1 0.5
execute if score @s selectCurrent < @s convMaxView store success score @s viewChanged run scoreboard players add @s[scores={questMenu=1..}] selectCurrent 1
execute if score @s selectCurrent < @s convMaxView as 0-0-1-0-5 if entity @s[tag=selected] run scoreboard players add @p[tag=activePlayer,scores={questMenu=1..}] InvScroll 1

# Secondary
playsound minecraft:ui.button.click master @s[scores={selectSecondary=..2,questMenu=0}] ~ ~ ~ 0.5 1 0.5
scoreboard players add @s[scores={selectSecondary=..2,questMenu=0}] selectSecondary 1
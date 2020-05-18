tag @s add hasScrolled

# Primary
execute if score @s selectCurrent < @s convMaxView run playsound minecraft:ui.button.click master @s[tag=!invInspectItem] ~ ~ ~ 0.5 1 0.5
execute if score @s selectCurrent < @s convMaxView run scoreboard players add @s[tag=!invInspectItem] selectCurrent 1
execute if score @s selectCurrent < @s convMaxView as 0-0-1-0-5 if entity @s[tag=selected] run scoreboard players add @p[tag=activePlayer,tag=!invInspectItem] mapScroll 1

# Secondary
playsound minecraft:ui.button.click master @s[tag=invInspectItem,scores={selectSecondary=1}] ~ ~ ~ 0.5 1 0.5
scoreboard players add @s[tag=invInspectItem,scores={selectSecondary=1}] selectSecondary 1
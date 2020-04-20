tag @s add hasScrolled

# Primary
execute if score @s selectCurrent matches 2.. run playsound minecraft:ui.button.click master @s[tag=!invInspectItem] ~ ~ ~ 0.5 1 0.5
execute if score @s selectCurrent matches 2.. run scoreboard players remove @s[tag=!invInspectItem] selectCurrent 1
execute if score @s selectCurrent matches 2.. as 0-0-1-0-2 if entity @s[tag=selected] run scoreboard players remove @p[tag=activePlayer,tag=!invInspectItem] mapScroll 1

# Secondary
playsound minecraft:ui.button.click master @s[tag=invInspectItem,scores={selectSecondary=2}] ~ ~ ~ 0.5 1 0.5
scoreboard players remove @s[tag=invInspectItem,scores={selectSecondary=2}] selectSecondary 1
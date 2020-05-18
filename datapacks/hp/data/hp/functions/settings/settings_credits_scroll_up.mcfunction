tag @s add hasScrolled

# Primary
execute if score @s settingsScroll matches 1.. run playsound minecraft:ui.button.click master @s[tag=!invInspectItem] ~ ~ ~ 0.5 1 0.5
execute if score @s settingsScroll matches 1.. as 0-0-1-0-2 run scoreboard players remove @p[tag=activePlayer,tag=!invInspectItem] settingsScroll 1
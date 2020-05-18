tag @s add hasScrolled

scoreboard players operation @s tmp4 = @s convMaxView
scoreboard players remove @s tmp4 6

# Primary
execute if score @s settingsScroll < @s tmp4 run playsound minecraft:ui.button.click master @s[tag=!invInspectItem] ~ ~ ~ 0.5 1 0.5
execute if score @s settingsScroll < @s tmp4 run scoreboard players add @p[tag=activePlayer,tag=!invInspectItem] settingsScroll 1
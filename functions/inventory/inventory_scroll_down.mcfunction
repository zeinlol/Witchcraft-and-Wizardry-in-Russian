tag @s add hasScrolled

# Primary
execute if score @s selectCurrent < @s convMaxView run playsound minecraft:ui.button.click master @s[tag=!invInspectItem] ~ ~ ~ 0.5 1 0.5
execute if score @s selectCurrent < @s convMaxView run scoreboard players add @s[tag=!invInspectItem] selectCurrent 1
execute if score @s selectCurrent < @s convMaxView as 0-0-1-0-5 if entity @s[tag=selected] run scoreboard players add @p[tag=activePlayer,tag=!invInspectItem] InvScroll 1

# Secondary

scoreboard players set @s[tag=!buy,scores={inspectType=1..2}] tmp2 2
scoreboard players set @s[tag=!buy,scores={inspectType=3..4}] tmp2 3
scoreboard players set @s[tag=!buy,scores={inspectType=5..6}] tmp2 2
scoreboard players set @s[tag=!buy,scores={inspectType=7}] tmp2 1
scoreboard players set @s[tag=buy] tmp2 1

execute if score @s selectSecondary <= @s tmp2 run playsound minecraft:ui.button.click master @s[tag=invInspectItem] ~ ~ ~ 0.5 1 0.5
execute if score @s selectSecondary <= @s tmp2 run scoreboard players add @s[tag=invInspectItem] selectSecondary 1
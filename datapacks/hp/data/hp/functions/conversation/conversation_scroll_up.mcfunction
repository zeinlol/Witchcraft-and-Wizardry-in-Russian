tag @s add hasScrolled

# take into account questConvOffset, which might mean that the player can scroll higher than selectCurrent = 2
scoreboard players set @s tmp2 1
scoreboard players operation @s tmp2 -= @s questConvOffset
scoreboard players operation @s tmp = @s selectCurrent
scoreboard players operation @s tmp += @s tmp2

# Primary
execute if score @s tmp matches 2.. run playsound minecraft:ui.button.click master @s[tag=!confirmConvOption] ~ ~ ~ 0.5 1 0.5
execute if score @s tmp matches 2.. run scoreboard players remove @s[tag=!confirmConvOption] selectCurrent 1
execute if score @s tmp matches 3.. as 0-0-6-0-2 if entity @s[tag=convSelected] run scoreboard players remove @p[tag=activePlayer,tag=!confirmConvOption] convScroll 1

# Secondary
playsound minecraft:ui.button.click master @s[tag=confirmConvOption,scores={selectSecondary=2}] ~ ~ ~ 0.5 1 0.5
scoreboard players remove @s[tag=confirmConvOption,scores={selectSecondary=2}] selectSecondary 1
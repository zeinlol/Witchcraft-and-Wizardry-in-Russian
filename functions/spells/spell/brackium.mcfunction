# Mana
scoreboard players remove @s manaAmount 2000
tag @s add anim_alohomora
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["spellEntity","BrackiumArea","BrackiumInit"],CustomName:"{\"text\":\"BrackiumArea\"}"}
scoreboard players set @e[tag=BrackiumInit] idle 300
scoreboard players set @s spellCooldown2 328
scoreboard players set @e[tag=BrackiumInit] tmp 0
tag @e[tag=BrackiumInit] remove BrackiumInit
particle minecraft:dust 0 1 0.05 3 ~ ~0.1 ~ 0.5 0 0.5 1 40 force
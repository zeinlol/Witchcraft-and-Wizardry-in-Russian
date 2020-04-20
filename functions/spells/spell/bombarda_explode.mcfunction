# Bombarda explosion

particle minecraft:explosion ~ ~ ~ .7 .7 .7 0.65 10 force
particle minecraft:smoke ~ ~ ~ 0.25 0.25 0.25 0.1 50 normal
particle minecraft:poof ~ ~ ~ .7 .7 .7 0.2 100 normal
particle minecraft:large_smoke ~ ~ ~ 0.5 0.5 0.5 0.15 75 force
particle minecraft:lava ~ ~ ~ 1.2 1.2 1.2 10 30 force
playsound minecraft:custom.spell.immobulus.explosion master @a ~ ~ ~ 10 1 1
particle minecraft:dust 1 0.65 0 1.5 ~ ~ ~ 0.75 0.75 0.75 20 15 normal @a
execute at @s if entity @e[tag=creature,distance=..3.5] run function hp:spells/spell/bombarda_hit_enemy
execute as @s[tag=!strengthAmplified] as @e[tag=creature,tag=!undead,distance=..3.5] run effect give @s minecraft:instant_damage 1 2
execute as @s[tag=strengthAmplified] as @e[tag=creature,tag=!undead,distance=..3.5] run effect give @s minecraft:instant_damage 1 3
execute as @s[tag=!strengthAmplified] as @e[tag=creature,tag=undead,distance=..3.5] run effect give @s minecraft:instant_health 1 2
execute at @s[tag=strengthAmplified] as @e[tag=creature,tag=undead,distance=..3.5] run effect give @s minecraft:instant_health 1 3
execute as @e[tag=creature,distance=..3.5] at @s run function hp:spells/spell/bombarda_knockback
execute as @e[tag=bombarda_blockade,distance=..3.5] at @s run function hp:misc/bombarda_blockade
execute positioned 7466 57 -22 if entity @s[distance=..2.5] run scoreboard players set bombardaFirstPipeDestroyed global 1
execute positioned 7453 67 180 if entity @s[distance=..2.5] run scoreboard players set bombardaSecondPipeDestroyed global 1
execute positioned 7473 84 220 if entity @s[distance=..2.5] run scoreboard players set bombardaThirdPipeDestroyed global 1
kill @s


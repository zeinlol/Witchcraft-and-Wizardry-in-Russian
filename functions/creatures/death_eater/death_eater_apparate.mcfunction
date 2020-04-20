execute as @s[scores={deathEaterA=150}] run scoreboard players set @s deathEaterA 0



execute as @s[scores={deathEaterA=1}] at @s run data merge entity @s {NoGravity:1b,Invulnerable:1b}
execute as @s[scores={deathEaterA=1}] run effect give @s minecraft:invisibility 10 1 true
# execute as @s[scores={deathEaterA=0}] run particle minecraft:smoke ~ ~0.1 ~ 0.75 0 0.75 0.025 50 force
execute as @s[scores={deathEaterA=0}] run particle minecraft:large_smoke ~ ~ ~ 0.15 1 0.15 0.025 80 force
execute as @s[scores={deathEaterA=0}] run playsound minecraft:custom.spell.apparate.depart master @a ~ ~ ~ 3 1 1
execute as @s[scores={deathEaterA=1}] run particle minecraft:large_smoke ~ ~2.5 ~ 0 1.25 0 0.025 20 force
execute as @s[scores={deathEaterA=1}] run particle minecraft:smoke ~ ~2.5 ~ 0 1 0 0.025 35 force
execute as @s[scores={deathEaterA=2}] run particle minecraft:large_smoke ~ ~-95 ~ 0 1.25 0 0.025 15 force
execute as @s[scores={deathEaterA=2}] run particle minecraft:smoke ~ ~-95 ~ 0 1 0 0.025 30 force
execute as @s[scores={deathEaterA=3}] run particle minecraft:large_smoke ~ ~92.5 ~ 0 1.25 0 0.025 10 force
execute as @s[scores={deathEaterA=3}] run particle minecraft:smoke ~ ~-92.5 ~ 0 1 0 0.025 25 force
execute as @s[scores={deathEaterA=4}] run particle minecraft:large_smoke ~ ~-90 ~ 0 1.25 0 0.025 10 force
execute as @s[scores={deathEaterA=4}] run particle minecraft:smoke ~ ~-90 ~ 0 1 0 0.025 20 force
execute as @s[scores={deathEaterA=5}] run particle minecraft:large_smoke ~ ~-87.5 ~ 0 1.25 0 0.025 10 force
execute as @s[scores={deathEaterA=5}] run particle minecraft:smoke ~ ~87.5 ~ 0 1 0 0.025 20 force
execute as @s[scores={deathEaterA=6}] run particle minecraft:large_smoke ~ ~-85 ~ 0 1.25 0 0.025 10 force
execute as @s[scores={deathEaterA=6}] run particle minecraft:smoke ~ ~-85 ~ 0 1 0 0.025 20 force
execute as @s[scores={deathEaterA=7}] run particle minecraft:large_smoke ~ ~-82.5 ~ 0 1.25 0 0.025 10 force
execute as @s[scores={deathEaterA=7}] run particle minecraft:smoke ~ ~-82.5 ~ 0 1 0 0.025 20 force
execute as @s[scores={deathEaterA=7}] run particle minecraft:large_smoke ~ ~-80 ~ 0.15 1.25 0.15 0.025 10 force
execute as @s[scores={deathEaterA=7}] run particle minecraft:smoke ~ ~-80 ~ 0.15 1 0.15 0.025 20 force
execute as @s[scores={deathEaterA=1}] at @s run tp @s ~ ~100 ~

execute as @s[scores={deathEaterA=100},tag=!isSpawningDeathEater] run tag @s add focusDeathEater
execute as @s[scores={deathEaterA=100},tag=!isSpawningDeathEater] as @e[tag=creaturePoint] if score @s nestID = @e[tag=focusDeathEater,limit=1] nestID at @s unless entity @e[tag=deathEaterCreature,distance=..1] run tag @s add potentialSpawnPoint
execute as @s[scores={deathEaterA=100},tag=!isSpawningDeathEater] unless entity @e[tag=potentialSpawnPoint] as @e[tag=creaturePoint] if score @s nestID = @e[tag=focusDeathEater,limit=1] nestID at @s run tag @s add potentialSpawnPoint
execute as @s[scores={deathEaterA=100},tag=!isSpawningDeathEater] run tp @s @e[tag=potentialSpawnPoint,limit=1,sort=random]
execute as @s[scores={deathEaterA=100},tag=!isSpawningDeathEater] run tag @e[tag=potentialSpawnPoint] remove potentialSpawnPoint
execute as @s[scores={deathEaterA=100},tag=!isSpawningDeathEater] run tag @e[tag=focusDeathEater] remove focusDeathEater
execute as @s[scores={deathEaterA=100},tag=!isSpawningDeathEater] at @s run tp @s ~ ~20 ~

execute as @s[scores={deathEaterA=101}] run particle minecraft:large_smoke ~ ~ ~ 0 1.25 0 0.025 10 force
execute as @s[scores={deathEaterA=101}] run particle minecraft:smoke ~ ~ ~ 0 1 0 0.025 20 force
execute as @s[scores={deathEaterA=101}] run particle minecraft:large_smoke ~ ~2.5 ~ 0.15 1.25 0.15 0.025 10 force
execute as @s[scores={deathEaterA=101}] run particle minecraft:smoke ~ ~-2.5 ~ 0.15 1 0.15 0.025 20 force
execute as @s[scores={deathEaterA=101}] run particle minecraft:large_smoke ~ ~-5 ~ 0 1.25 0 0.025 10 force
execute as @s[scores={deathEaterA=101}] run particle minecraft:smoke ~ ~-5 ~ 0 1 0 0.025 20 force
execute as @s[scores={deathEaterA=102}] run particle minecraft:large_smoke ~ ~-7.5 ~ 0 1.25 0 0.025 10 force
execute as @s[scores={deathEaterA=102}] run particle minecraft:smoke ~ ~-7.5 ~ 0 1 0 0.025 20 force
execute as @s[scores={deathEaterA=103}] run particle minecraft:large_smoke ~ ~-10 ~ 0 1.25 0 0.025 10 force
execute as @s[scores={deathEaterA=103}] run particle minecraft:smoke ~ ~-10 ~ 0 1 0 0.025 20 force
execute as @s[scores={deathEaterA=104}] run particle minecraft:large_smoke ~ ~-12.5 ~ 0 1.25 0 0.025 10 force
execute as @s[scores={deathEaterA=104}] run particle minecraft:smoke ~ ~-12.5 ~ 0 1 0 0.025 25 force
execute as @s[scores={deathEaterA=105}] run particle minecraft:large_smoke ~ ~-15 ~ 0 1.25 0 0.025 15 force
execute as @s[scores={deathEaterA=105}] run particle minecraft:smoke ~ ~-15 ~ 0 1 0 0.025 30 force
execute as @s[scores={deathEaterA=105}] at @s run playsound minecraft:custom.spell.apparate.arrive master @a ~ ~-30 ~ 2
execute as @s[scores={deathEaterA=106}] run particle minecraft:large_smoke ~ ~-17.5 ~ 0 1.25 0 0.025 20 force
execute as @s[scores={deathEaterA=106}] run particle minecraft:smoke ~ ~-17.5 ~ 0 1 0 0.025 35 force
execute as @s[scores={deathEaterA=107}] run particle minecraft:large_smoke ~ ~-20 ~ 0.15 1 0.15 0.025 80 force
execute as @s[scores={deathEaterA=105}] at @s run tp @s ~ ~-20 ~
execute as @s[scores={deathEaterA=107}] at @s run data merge entity @s {NoGravity:0b,Invulnerable:0b}
execute as @s[scores={deathEaterA=107}] run effect clear @s minecraft:invisibility
execute as @s[scores={deathEaterA=107}] run particle minecraft:large_smoke ~ ~ ~ 0.15 1 0.15 0.025 80 force






execute unless score @s deathEaterA matches 150.. run scoreboard players add @s deathEaterA 1
execute as @s[scores={deathEaterA=150}] run tag @s remove isSpawningDeathEater
execute as @s[scores={deathEaterA=150}] run tag @s remove deathEaterApparate
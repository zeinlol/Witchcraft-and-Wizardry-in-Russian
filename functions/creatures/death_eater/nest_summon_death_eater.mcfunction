# Executed as each death eater spawnpoint
execute as @e[tag=creaturePoint] if score @s nestID = @e[tag=focusNest,limit=1] nestID at @s unless entity @e[tag=deathEaterCreature,distance=..2] run tag @s add potentialSpawnPoint

execute at @e[tag=potentialSpawnPoint,limit=1,sort=random] run function hp:creatures/death_eater/summon_death_eater
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.nestID int 1 run scoreboard players operation @s nestID = @e[tag=focusNest,limit=1] nestID
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=nearest] run scoreboard players set @s dSinceAppiration 3
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=nearest] run scoreboard players set @s deathEaterA 101
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=nearest] run tag @s add deathEaterApparate
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=nearest] run data merge entity @s {NoGravity:1b,Invulnerable:1b}
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=nearest] run effect give @s minecraft:invisibility 10 1 true
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=nearest] at @s run tp @s ~ ~20 ~
execute as @e[tag=deathEaterCreatureIsBeingSummoned,limit=1,sort=nearest] run tag @s remove deathEaterCreatureIsBeingSummoned

tag @e[tag=potentialSpawnPoint] remove potentialSpawnPoint

scoreboard players remove @s[scores={spawnCount=1..}] spawnCount 1

# Executed as creature spawnpoint
execute as @e[tag=creaturePoint] if score @s nestID = @e[tag=focusNest,limit=1] nestID at @s unless entity @e[tag=toadCreature,distance=..2] run tag @s add potentialSpawnPoint

execute at @e[tag=potentialSpawnPoint,limit=1,sort=random] run function hp:creatures/toad/summon_toad

execute as @e[tag=toadCreatureIsBeingSummoned,limit=1,sort=nearest] run tag @s add belongingToNest

execute if score global Random matches 0..15 as @e[tag=toadCreatureIsBeingSummoned,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.toadType int 1 run scoreboard players set @s toadType 1
execute if score global Random matches 16..30 as @e[tag=toadCreatureIsBeingSummoned,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.toadType int 1 run scoreboard players set @s toadType 2
execute if score global Random matches 31..45 as @e[tag=toadCreatureIsBeingSummoned,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.toadType int 1 run scoreboard players set @s toadType 3
execute if score global Random matches 46..65 as @e[tag=toadCreatureIsBeingSummoned,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.toadType int 1 run scoreboard players set @s toadType 4
execute if score global Random matches 66..74 as @e[tag=toadCreatureIsBeingSummoned,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.toadType int 1 run scoreboard players set @s toadType 5
execute if score global Random matches 75..83 as @e[tag=toadCreatureIsBeingSummoned,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.toadType int 1 run scoreboard players set @s toadType 6
execute if score global Random matches 84..92 as @e[tag=toadCreatureIsBeingSummoned,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.toadType int 1 run scoreboard players set @s toadType 7
execute if score global Random matches 93..100 as @e[tag=toadCreatureIsBeingSummoned,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.toadType int 1 run scoreboard players set @s toadType 8

execute as @e[tag=toadCreatureIsBeingSummoned,limit=1,sort=nearest] store result entity @s ArmorItems[3].tag.nestID int 1 run scoreboard players operation @s nestID = @e[tag=focusNest,limit=1] nestID
execute as @e[tag=toadCreatureIsBeingSummoned,limit=1,sort=nearest] run tag @s remove toadCreatureIsBeingSummoned

tag @e[tag=potentialSpawnPoint] remove potentialSpawnPoint

scoreboard players remove @s[scores={spawnCount=1..}] spawnCount 1
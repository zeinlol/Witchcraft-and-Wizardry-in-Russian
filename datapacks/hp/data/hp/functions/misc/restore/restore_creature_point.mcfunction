# Creature point
execute store result score @s nestID run data get entity @s ArmorItems[3].tag.nestID 1
execute store result score @s spawnDelay run data get entity @s ArmorItems[3].tag.spawnDelay 1
execute store result score @s spawnCount run data get entity @s ArmorItems[3].tag.spawnCount 1
execute store result score @s nestType run data get entity @s ArmorItems[3].tag.nestType 1
execute store result score @s maxCreatureCount run data get entity @s ArmorItems[3].tag.maxCreatureCount 1
execute store result score @s timeSinceSpawn run data get entity @s ArmorItems[3].tag.timeSinceSpawn 1

tag @s add focusNest

# Spawn managing
execute as @s[scores={timeSinceSpawn=1..}] unless score @s spawnCount matches 0 if score @s maxCreatureCount > @s creatureCount run scoreboard players remove @s timeSinceSpawn 1
execute at @s if entity @p[distance=..60] as @s[scores={timeSinceSpawn=0}] unless score @s spawnCount matches 0 unless score @s spawnCount matches 0 if score @s maxCreatureCount > @s creatureCount at @s run function hp:creatures/skeleton/nest_summon_skeleton
execute at @s if entity @p[distance=..60] as @s[scores={timeSinceSpawn=0}] unless score @s spawnCount matches 0 if score @s maxCreatureCount > @s creatureCount run scoreboard players operation @s timeSinceSpawn = @s spawnDelay

# Count each skeleton belonging to this nest.
scoreboard players set @s creatureCount 0
execute as @e[tag=creature,tag=!skeletonArm,tag=!skeletonHead] if score @s nestID = @e[tag=focusNest,limit=1,sort=nearest] nestID run scoreboard players add @s creatureCount 1

tag @s remove focusNest
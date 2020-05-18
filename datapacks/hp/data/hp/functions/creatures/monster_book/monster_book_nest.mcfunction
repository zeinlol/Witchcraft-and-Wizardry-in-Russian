tag @s add focusNest

# Spawn managing
execute as @s[scores={timeSinceSpawn=1..}] unless score @s spawnCount matches 0 if score @s maxCreatureCount > @s creatureCount run scoreboard players remove @s timeSinceSpawn 1
execute as @s[scores={timeSinceSpawn=0}] unless score @s spawnCount matches 0 at @s if entity @p[distance=..50] unless score @s spawnCount matches 0 if score @s maxCreatureCount > @s creatureCount at @s run function hp:creatures/monster_book/nest_summon_monster_book
execute as @s[scores={timeSinceSpawn=0}] unless score @s spawnCount matches 0 at @s if entity @p[distance=..50] if score @s maxCreatureCount > @s creatureCount run scoreboard players operation @s timeSinceSpawn = @s spawnDelay

# Count each monster book belonging to this nest.
scoreboard players set @s creatureCount 0
execute as @e[tag=creature] if score @s nestID = @e[tag=focusNest,limit=1,sort=nearest] nestID run scoreboard players add @e[tag=focusNest,limit=1,sort=nearest] creatureCount 1



tag @s remove focusNest

tag @s add focusNest

# Spawn managing
execute as @s[scores={timeSinceSpawn=1..}] unless score @s spawnCount matches 0 if score @s maxCreatureCount > @s creatureCount run scoreboard players remove @s timeSinceSpawn 1
execute as @s[scores={timeSinceSpawn=0}] unless score @s spawnCount matches 0 unless score @s spawnCount matches 0 if score @s maxCreatureCount > @s creatureCount at @s run function hp:creatures/armor_suit/summon_armor_suit
execute as @s[scores={timeSinceSpawn=0}] unless score @s spawnCount matches 0 if score @s maxCreatureCount > @s creatureCount run scoreboard players operation @s timeSinceSpawn = @s spawnDelay

# Execute for each suit of armor belonging to this nest. Also counts number of trolls.
scoreboard players set @s creatureCount 0
execute at @s as @e[tag=armorSuitCreature] if score @s nestID = @e[tag=focusNest,limit=1,sort=nearest] nestID at @s run function hp:creatures/armor_suit/base_armor_suit


# Death
# execute as @e[tag=armorSuitLoot] at @s unless entity @e[tag=armorSuitCreature,distance=..3] if score global Random matches 0..32 run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Тролльˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}",Team:"NPC",Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["interactable","glowable","restorable","chest","removeContainerIfEmpty","isDroppedItem"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{invItem.ToadBrain.count:1,Unbreakable:1b,Damage:59}}]}
# execute as @e[tag=armorSuitLoot] at @s unless entity @e[tag=armorSuitCreature,distance=..3] if score global Random matches 33..65 run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Тролльˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}",Team:"NPC",Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["interactable","glowable","restorable","chest","removeContainerIfEmpty","isDroppedItem"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{invItem.BlackPowder.count:1,invItem.Eyeball.count:1,Unbreakable:1b,Damage:59}}]}
# execute as @e[tag=armorSuitLoot] at @s unless entity @e[tag=armorSuitCreature,distance=..3] if score global Random matches 66..100 run summon armor_stand ~ ~ ~ {CustomName:"{\"text\":\"Тролльˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈˈ\",\"color\":\"dark_gray\"}",Team:"NPC",Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["interactable","glowable","restorable","chest","removeContainerIfEmpty","isDroppedItem"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{invItem.BlackPowder.count:2,Unbreakable:1b,Damage:59}}]}
# execute as @e[tag=armorSuitLoot] at @s unless entity @e[tag=armorSuitCreature,distance=..3] run function hp:misc/random_number
execute as @e[tag=armorSuitLoot] at @s unless entity @e[tag=armorSuitCreature,distance=..3] run kill @s


tag @s remove focusNest

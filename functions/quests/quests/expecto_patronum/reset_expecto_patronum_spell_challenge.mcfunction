# Increment spell challenge sessionID
scoreboard players add expectoPatronumSpellChallengeID global 1

# This resets the Expecto Patronum spell challenge
summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

# Lupin in first room
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8008 -24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 7992 -24 1 1 false @s
tp @e[tag=lupinPatronusClassroom,limit=1] 7999.9 133 -26.00011 330.8551 0

# First metal gate door
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8008 8 1 1 false @s
fill 8006 130 5 8008 133 5 minecraft:iron_bars[east=true,north=false,south=false,waterlogged=false,west=true]

# Second metal gate door
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8056 24 1 1 false @s
fill 8051 134 27 8051 139 25 minecraft:iron_bars[east=false,north=true,south=true,waterlogged=false,west=false]

# Collapsing bridge
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8040 72 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8024 72 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8056 72 1 1 false @s
tp @e[tag=lupinPatronusBridgeFpEngine,limit=1] 8043 134 64
tp @e[tag=lupinPatronusBridge,limit=1] 8043 134 64
fill 8040 135 64 8040 138 68 barrier
fill 8030 134 68 8030 136 64 barrier
clone 8048 155 68 8034 162 66 8026 127 65

# Rotating pillars
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8072 120 1 1 false @s
execute as 2b9fbf8d-25eb-4dc0-8283-195150edefcb run function hp:misc/reset_rotating_pillar
execute as 1dec3c20-5c6c-48ca-bf80-b4cdf9773fa1 run function hp:misc/reset_rotating_pillar
execute as 7c5e2b9c-a206-41be-a4ef-9b6fc415ba12 run function hp:misc/reset_rotating_pillar

# Draw Bridge
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8072 104 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8056 72 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 8053 83 1 1 false @s
clone 8051 1 81 8056 14 94 8075 63 98

# Reset scores for each movable object
scoreboard players set patronusDrawBridge global -10
scoreboard players set patronusDrawBridgeDirection global 0

scoreboard players set wingardiumDoor1 global -10
scoreboard players set wingardiumDoor1Direction global 0

scoreboard players set patronusBridgeCollapse global 0
scoreboard players set patronusBridgeCollapseDirection global 0

scoreboard players set wingardiumDoor3 global -10
scoreboard players set wingardiumDoor3Direction global 0

scoreboard players set expectoPatronumDoor1 global -10
scoreboard players set expectoPatronumDoor1Direction global 0

scoreboard players set expectoPatronumDoor2 global -10
scoreboard players set expectoPatronumDoor2Direction global 0

kill @e[tag=chunkLoader]
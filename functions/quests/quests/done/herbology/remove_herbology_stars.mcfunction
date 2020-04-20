# Set stars
summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 840 39 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 840 24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 760 24 1 1 false @s
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 760 40 1 1 false @s
kill @e[tag=herbologyStar]

# Fix door also
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 824 40 1 1 false @s
fill 820 59 44 820 61 44 minecraft:blue_stained_glass_pane[east=false,north=true,south=true,waterlogged=false,west=false]
fill 821 59 45 821 61 43 air

kill @e[tag=chunkLoader]


scoreboard players set herbologyHasTriggeredToads global 0

scoreboard players set herbologyStarsSetup global 0
# By beSnow

### Chunkloader ###
summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

### Place Barrier ###

#First Segment
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2814 558 1 1 false @s
fill 2815 54 559 2815 56 559 minecraft:iron_bars[east=true,west=true]
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2816 558 1 1 false @s
fill 2816 54 559 2828 56 559 minecraft:iron_bars[east=true,west=true]

#Second Segment
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2837 558 1 1 false @s
fill 2837 56 559 2841 54 559 minecraft:iron_bars[west=true]
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2841 561 1 1 false @s
fill 2841 56 560 2845 54 560 minecraft:iron_bars
fill 2845 56 561 2845 54 561 minecraft:iron_bars[east=true]
fill 2846 56 561 2847 54 561 minecraft:iron_bars[east=true,west=true]
execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 2848 561 1 1 false @s
fill 2848 56 561 2849 54 561 minecraft:iron_bars[east=true,west=true]

kill @e[tag=chunkLoader]
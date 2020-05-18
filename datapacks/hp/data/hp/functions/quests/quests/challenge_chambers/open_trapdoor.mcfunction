summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:1000,Particle:"block air",Tags:[chunkLoader]}

execute as @e[tag=chunkLoader,limit=1,sort=nearest] at @s run spreadplayers 712 312 1 1 false @s
setblock 704 92 308 minecraft:spruce_stairs[facing=south,half=top,shape=straight,waterlogged=false]
setblock 705 92 308 minecraft:spruce_stairs[facing=south,half=top,shape=straight,waterlogged=false]
setblock 705 93 308 minecraft:spruce_planks
setblock 704 93 308 minecraft:spruce_planks
setblock 704 94 308 minecraft:spruce_planks
setblock 705 94 308 minecraft:spruce_planks
setblock 704 92 307 air
setblock 704 92 306 air
setblock 705 92 307 air
setblock 705 92 306 air

kill @e[tag=chunkLoader]
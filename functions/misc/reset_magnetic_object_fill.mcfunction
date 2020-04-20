# I need to wait until all the magnetic objects are reset before filling blocks so I don't remove new blocks if another magnetic object is at this magnetic object's starting position

# Normal
execute at @s[scores={height=1,type=1}] run fill ~1 ~0 ~1 ~-1 ~0 ~-1 clay
execute at @s[scores={height=2,type=1}] run fill ~1 ~0 ~1 ~-1 ~1 ~-1 clay
execute at @s[scores={height=3,type=1}] run fill ~1 ~0 ~1 ~-1 ~2 ~-1 clay
execute at @s[scores={height=4,type=1}] run fill ~1 ~0 ~1 ~-1 ~3 ~-1 clay
execute at @s[scores={height=5,type=1}] run fill ~1 ~0 ~1 ~-1 ~4 ~-1 clay
execute at @s[scores={height=6,type=1}] run fill ~1 ~0 ~1 ~-1 ~5 ~-1 clay

# Mirror
execute at @s[scores={height=1,type=2}] run fill ~1 ~-1 ~1 ~-1 ~0 ~-1 clay
execute at @s[scores={height=2,type=2}] run fill ~1 ~-2 ~1 ~-1 ~1 ~-1 clay
execute at @s[scores={height=3,type=2}] run fill ~1 ~-3 ~1 ~-1 ~2 ~-1 clay
execute at @s[scores={height=4,type=2}] run fill ~1 ~-4 ~1 ~-1 ~3 ~-1 clay

# Ladder
execute at @s[scores={height=1,type=3}] run fill ~1 ~0 ~1 ~-1 ~0 ~-1 clay
execute at @s[scores={height=2,type=3}] run fill ~1 ~0 ~1 ~-1 ~1 ~-1 clay
execute at @s[scores={height=2,type=3}] run fill ~-2 ~1 ~0 ~-2 ~1 ~0 minecraft:ladder[facing=west,waterlogged=false]
execute at @s[scores={height=3,type=3}] run fill ~1 ~0 ~1 ~-1 ~2 ~-1 clay
execute at @s[scores={height=3,type=3}] run fill ~-2 ~1 ~0 ~-2 ~2 ~0 minecraft:ladder[facing=west,waterlogged=false]
execute at @s[scores={height=4,type=3}] run fill ~1 ~0 ~1 ~-1 ~3 ~-1 clay
execute at @s[scores={height=4,type=3}] run fill ~-2 ~1 ~0 ~-2 ~3 ~0 minecraft:ladder[facing=west,waterlogged=false]
execute at @s[scores={height=5,type=3}] run fill ~1 ~0 ~1 ~-1 ~4 ~-1 clay
execute at @s[scores={height=5,type=3}] run fill ~-2 ~1 ~0 ~-2 ~4 ~0 minecraft:ladder[facing=west,waterlogged=false]
execute at @s[scores={height=6,type=3}] run fill ~1 ~0 ~1 ~-1 ~5 ~-1 clay
execute at @s[scores={height=6,type=3}] run fill ~-2 ~1 ~0 ~-2 ~5 ~0 minecraft:ladder[facing=west,waterlogged=false]

# Chess
execute at @s[tag=pawn] run setblock ~1 ~2 ~ minecraft:mushroom_stem[down=false,east=false,north=false,south=false,up=false,west=false]
execute at @s[tag=pawn] run setblock ~-1 ~2 ~ minecraft:mushroom_stem[down=false,east=false,north=false,south=false,up=false,west=false]
execute at @s[tag=pawn] run setblock ~ ~2 ~1 minecraft:mushroom_stem[down=false,east=false,north=false,south=false,up=false,west=false]
execute at @s[tag=pawn] run setblock ~ ~2 ~-1 minecraft:mushroom_stem[down=false,east=false,north=false,south=false,up=false,west=false]

execute at @s[tag=bishop] run setblock ~1 ~2 ~ minecraft:mushroom_stem[down=false,east=false,north=false,south=false,up=false,west=true]
execute at @s[tag=bishop] run setblock ~-1 ~2 ~ minecraft:mushroom_stem[down=false,east=false,north=false,south=false,up=false,west=true]
execute at @s[tag=bishop] run setblock ~ ~2 ~1 minecraft:mushroom_stem[down=false,east=false,north=false,south=false,up=false,west=true]
execute at @s[tag=bishop] run setblock ~ ~2 ~-1 minecraft:mushroom_stem[down=false,east=false,north=false,south=false,up=false,west=true]

execute at @s[tag=rook] run setblock ~1 ~2 ~ minecraft:mushroom_stem[down=true,east=true,north=true,south=true,up=true,west=true]
execute at @s[tag=rook] run setblock ~-1 ~2 ~ minecraft:mushroom_stem[down=true,east=true,north=true,south=true,up=true,west=true]
execute at @s[tag=rook] run setblock ~ ~2 ~1 minecraft:mushroom_stem[down=true,east=true,north=true,south=true,up=true,west=true]
execute at @s[tag=rook] run setblock ~ ~2 ~-1 minecraft:mushroom_stem[down=true,east=true,north=true,south=true,up=true,west=true]

execute at @s[tag=knight] run setblock ~1 ~2 ~ minecraft:mushroom_stem[down=false,east=true,north=true,south=true,up=false,west=true]
execute at @s[tag=knight] run setblock ~-1 ~2 ~ minecraft:mushroom_stem[down=false,east=true,north=true,south=true,up=false,west=true]
execute at @s[tag=knight] run setblock ~ ~2 ~1 minecraft:mushroom_stem[down=false,east=true,north=true,south=true,up=false,west=true]
execute at @s[tag=knight] run setblock ~ ~2 ~-1 minecraft:mushroom_stem[down=false,east=true,north=true,south=true,up=false,west=true]



tag @s remove magneticObjectHasBeenReset
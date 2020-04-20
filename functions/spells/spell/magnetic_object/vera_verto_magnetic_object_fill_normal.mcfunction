# fill normal
execute as @s[scores={height=1},tag=moveSouth] at @s run fill ~1 ~0 ~2 ~-1 ~0 ~-2 air replace clay
execute as @s[scores={height=1},tag=moveNorth] at @s run fill ~1 ~0 ~2 ~-1 ~0 ~-2 air replace clay
execute as @s[scores={height=1},tag=moveEast] at @s run fill ~2 ~0 ~1 ~-2 ~0 ~-1 air replace clay
execute as @s[scores={height=1},tag=moveWest] at @s run fill ~2 ~0 ~1 ~-2 ~0 ~-1 air replace clay
execute at @s[scores={height=1}] run fill ~1 ~0 ~1 ~-1 ~0 ~-1 clay

execute as @s[scores={height=2},tag=moveSouth] at @s run fill ~1 ~1 ~2 ~-1 ~0 ~-2 air replace clay
execute as @s[scores={height=2},tag=moveNorth] at @s run fill ~1 ~1 ~2 ~-1 ~0 ~-2 air replace clay
execute as @s[scores={height=2},tag=moveEast] at @s run fill ~2 ~1 ~1 ~-2 ~0 ~-1 air replace clay
execute as @s[scores={height=2},tag=moveWest] at @s run fill ~2 ~1 ~1 ~-2 ~0 ~-1 air replace clay
execute at @s[scores={height=2}] run fill ~1 ~0 ~1 ~-1 ~1 ~-1 clay

execute as @s[scores={height=3},tag=moveSouth] at @s run fill ~1 ~2 ~2 ~-1 ~0 ~-2 air replace clay
execute as @s[scores={height=3},tag=moveNorth] at @s run fill ~1 ~2 ~2 ~-1 ~0 ~-2 air replace clay
execute as @s[scores={height=3},tag=moveEast] at @s run fill ~2 ~2 ~1 ~-2 ~0 ~-1 air replace clay
execute as @s[scores={height=3},tag=moveWest] at @s run fill ~2 ~2 ~1 ~-2 ~0 ~-1 air replace clay
execute at @s[scores={height=3}] run fill ~1 ~0 ~1 ~-1 ~2 ~-1 clay

execute as @s[scores={height=4},tag=moveSouth] at @s run fill ~1 ~3 ~2 ~-1 ~0 ~-2 air replace clay
execute as @s[scores={height=4},tag=moveNorth] at @s run fill ~1 ~3 ~2 ~-1 ~0 ~-2 air replace clay
execute as @s[scores={height=4},tag=moveEast] at @s run fill ~2 ~3 ~1 ~-2 ~0 ~-1 air replace clay
execute as @s[scores={height=4},tag=moveWest] at @s run fill ~2 ~3 ~1 ~-2 ~0 ~-1 air replace clay
execute at @s[scores={height=4}] run fill ~1 ~0 ~1 ~-1 ~3 ~-1 clay

execute as @s[scores={height=5},tag=moveSouth] at @s run fill ~1 ~4 ~2 ~-1 ~0 ~-2 air replace clay
execute as @s[scores={height=5},tag=moveNorth] at @s run fill ~1 ~4 ~2 ~-1 ~0 ~-2 air replace clay
execute as @s[scores={height=5},tag=moveEast] at @s run fill ~2 ~4 ~1 ~-2 ~0 ~-1 air replace clay
execute as @s[scores={height=5},tag=moveWest] at @s run fill ~2 ~4 ~1 ~-2 ~0 ~-1 air replace clay
execute as @s[scores={height=5},tag=moveSouth] at @s run fill ~1 ~4 ~2 ~-1 ~0 ~-2 air replace mushroom_stem
execute as @s[scores={height=5},tag=moveNorth] at @s run fill ~1 ~4 ~2 ~-1 ~0 ~-2 air replace mushroom_stem
execute as @s[scores={height=5},tag=moveEast] at @s run fill ~2 ~4 ~1 ~-2 ~0 ~-1 air replace mushroom_stem
execute as @s[scores={height=5},tag=moveWest] at @s run fill ~2 ~4 ~1 ~-2 ~0 ~-1 air replace mushroom_stem
execute at @s[scores={height=5}] run fill ~1 ~0 ~1 ~-1 ~4 ~-1 clay

execute as @s[scores={height=6},tag=moveSouth] at @s run fill ~1 ~5 ~2 ~-1 ~0 ~-2 air replace clay
execute as @s[scores={height=6},tag=moveNorth] at @s run fill ~1 ~5 ~2 ~-1 ~0 ~-2 air replace clay
execute as @s[scores={height=6},tag=moveEast] at @s run fill ~2 ~5 ~1 ~-2 ~0 ~-1 air replace clay
execute as @s[scores={height=6},tag=moveWest] at @s run fill ~2 ~5 ~1 ~-2 ~0 ~-1 air replace clay
execute at @s[scores={height=6}] run fill ~1 ~0 ~1 ~-1 ~5 ~-1 clay

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